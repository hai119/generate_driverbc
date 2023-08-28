; ModuleID = '../bcout/drivers/media/tuners/tda18271-common.llvm.bc'
source_filename = "drivers/media/tuners/tda18271-common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, {}*, {}*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, {}*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, {}*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, {}*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, {}*, {}*, {}*, {}*, {}*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.47, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.24, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.25, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.26, %union.anon.30, %struct.key_restriction* }
%union.anon.24 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.27, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.27 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.30 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.33, %union.anon.34, i32 }
%struct.request_queue = type opaque
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.35 }
%struct.anon.35 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.46, i32, [12 x i8] }
%union.anon.46 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.47 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.48, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.51 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i64, i64 }
%union.anon.51 = type { [12 x i32] }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.6 }
%union.anon.6 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.32 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.module = type opaque
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda18271_priv = type { [39 x i8], %struct.list_head, %struct.tuner_i2c_props, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.tda18271_map_layout*, %struct.tda18271_std_map, [8 x %struct.tda18271_rf_tracking_filter_cal], %struct.mutex, i16, i32, i32 }
%struct.tuner_i2c_props = type { i8, %struct.i2c_adapter*, i32, i8* }
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
%struct.tda18271_map_layout = type opaque
%struct.tda18271_std_map = type { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.tda18271_rf_tracking_filter_cal = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.va_format = type { i8*, [1 x %struct.__va_list_tag]* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@__func__.tda18271_read_regs = private unnamed_addr constant [19 x i8] c"tda18271_read_regs\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR: i2c_transfer returned: %d\0A\00", align 1
@tda18271_debug = external dso_local global i32, align 4
@__func__.tda18271_read_extended = private unnamed_addr constant [23 x i8] c"tda18271_read_extended\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@__func__.tda18271_init_regs = private unnamed_addr constant [19 x i8] c"tda18271_init_regs\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"initializing registers for device @ %d-%04x\0A\00", align 1
@__func__.tda18271_set_standby_mode = private unnamed_addr constant [26 x i8] c"tda18271_set_standby_mode\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"sm = %d, sm_lt = %d, sm_xt = %d\0A\00", align 1
@__func__.tda18271_calc_main_pll = private unnamed_addr constant [23 x i8] c"tda18271_calc_main_pll\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"error %d on line %d\0A\00", align 1
@__func__.tda18271_calc_cal_pll = private unnamed_addr constant [22 x i8] c"tda18271_calc_cal_pll\00", align 1
@__func__.tda18271_calc_bp_filter = private unnamed_addr constant [24 x i8] c"tda18271_calc_bp_filter\00", align 1
@__func__.tda18271_calc_km = private unnamed_addr constant [17 x i8] c"tda18271_calc_km\00", align 1
@__func__.tda18271_calc_rf_band = private unnamed_addr constant [22 x i8] c"tda18271_calc_rf_band\00", align 1
@__func__.tda18271_calc_gain_taper = private unnamed_addr constant [25 x i8] c"tda18271_calc_gain_taper\00", align 1
@__func__.tda18271_calc_ir_measure = private unnamed_addr constant [25 x i8] c"tda18271_calc_ir_measure\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s%s: [%d-%04x|%c] %pV\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s%s: %pV\00", align 1
@__func__.tda18271_dump_regs = private unnamed_addr constant [19 x i8] c"tda18271_dump_regs\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"=== TDA18271 REG DUMP ===\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"ID_BYTE            = 0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"THERMO_BYTE        = 0x%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"POWER_LEVEL_BYTE   = 0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_1   = 0x%02x\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_2   = 0x%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_3   = 0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_4   = 0x%02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"EASY_PROG_BYTE_5   = 0x%02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"CAL_POST_DIV_BYTE  = 0x%02x\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_1     = 0x%02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_2     = 0x%02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"CAL_DIV_BYTE_3     = 0x%02x\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"MAIN_POST_DIV_BYTE = 0x%02x\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_1    = 0x%02x\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_2    = 0x%02x\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"MAIN_DIV_BYTE_3    = 0x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_1    = 0x%02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_2    = 0x%02x\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_3    = 0x%02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_4    = 0x%02x\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_5    = 0x%02x\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_6    = 0x%02x\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_7    = 0x%02x\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_8    = 0x%02x\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_9  W = 0x%02x\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_10   = 0x%02x\0A\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_11   = 0x%02x\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_12   = 0x%02x\0A\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_13   = 0x%02x\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_14   = 0x%02x\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_15   = 0x%02x\0A\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_16 W = 0x%02x\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_17 W = 0x%02x\0A\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_18   = 0x%02x\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_19 W = 0x%02x\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_20 W = 0x%02x\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_21   = 0x%02x\0A\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_22   = 0x%02x\0A\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"EXTENDED_BYTE_23   = 0x%02x\0A\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"drivers/media/tuners/tda18271-common.c\00", align 1
@__func__.__tda18271_write_regs = private unnamed_addr constant [22 x i8] c"__tda18271_write_regs\00", align 1
@.str.49 = private unnamed_addr constant [56 x i8] c"ERROR: idx = 0x%x, len = %d, i2c_transfer returned: %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_read_regs(%struct.dvb_frontend* %fe) #0 !dbg !336 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %buf = alloca i8, align 1
  %ret = alloca i32, align 4
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !4257, metadata !DIExpression()), !dbg !4454
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4455
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4456
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4456
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !4455
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !4454
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !4457, metadata !DIExpression()), !dbg !4459
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4460
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !4461
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !4460
  store i8* %arraydecay, i8** %regs, align 8, !dbg !4459
  call void @llvm.dbg.declare(metadata i8* %buf, metadata !4462, metadata !DIExpression()), !dbg !4463
  store i8 0, i8* %buf, align 1, !dbg !4463
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4464, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4466, metadata !DIExpression()), !dbg !4468
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4469
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !4470
  %4 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4471
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %4, i32 0, i32 2, !dbg !4472
  %addr1 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 0, !dbg !4473
  %5 = load i8, i8* %addr1, align 8, !dbg !4473
  %conv = zext i8 %5 to i16, !dbg !4471
  store i16 %conv, i16* %addr, align 16, !dbg !4470
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !4470
  store i16 0, i16* %flags, align 2, !dbg !4470
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !4470
  store i16 1, i16* %len, align 4, !dbg !4470
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !4470
  store i8* %buf, i8** %buf2, align 8, !dbg !4470
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !4469
  %addr3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4474
  %6 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4475
  %i2c_props4 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %6, i32 0, i32 2, !dbg !4476
  %addr5 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props4, i32 0, i32 0, !dbg !4477
  %7 = load i8, i8* %addr5, align 8, !dbg !4477
  %conv6 = zext i8 %7 to i16, !dbg !4475
  store i16 %conv6, i16* %addr3, align 16, !dbg !4474
  %flags7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4474
  store i16 1, i16* %flags7, align 2, !dbg !4474
  %len8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4474
  store i16 16, i16* %len8, align 4, !dbg !4474
  %buf9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4474
  %8 = load i8*, i8** %regs, align 8, !dbg !4478
  store i8* %8, i8** %buf9, align 8, !dbg !4474
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4479
  %call = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %9, i32 1) #5, !dbg !4480
  %10 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4481
  %i2c_props10 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %10, i32 0, i32 2, !dbg !4482
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props10, i32 0, i32 1, !dbg !4483
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4483
  %arraydecay11 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4484
  %call12 = call i32 @i2c_transfer(%struct.i2c_adapter* %11, %struct.i2c_msg* %arraydecay11, i32 2) #5, !dbg !4485
  store i32 %call12, i32* %ret, align 4, !dbg !4486
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4487
  %call13 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %12, i32 0) #5, !dbg !4488
  %13 = load i32, i32* %ret, align 4, !dbg !4489
  %cmp = icmp ne i32 %13, 2, !dbg !4491
  br i1 %cmp, label %if.then, label %if.end, !dbg !4492

if.then:                                          ; preds = %entry
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4493
  %15 = load i32, i32* %ret, align 4, !dbg !4493
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_read_regs, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %15) #5, !dbg !4493
  br label %if.end, !dbg !4493

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* @tda18271_debug, align 4, !dbg !4494
  %and = and i32 %16, 4, !dbg !4496
  %tobool = icmp ne i32 %and, 0, !dbg !4496
  br i1 %tobool, label %if.then15, label %if.end16, !dbg !4497

if.then15:                                        ; preds = %if.end
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4498
  call void @tda18271_dump_regs(%struct.dvb_frontend* %17, i32 0) #5, !dbg !4499
  br label %if.end16, !dbg !4499

if.end16:                                         ; preds = %if.then15, %if.end
  %18 = load i32, i32* %ret, align 4, !dbg !4500
  %cmp17 = icmp eq i32 %18, 2, !dbg !4501
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !4500

cond.true:                                        ; preds = %if.end16
  br label %cond.end, !dbg !4500

cond.false:                                       ; preds = %if.end16
  %19 = load i32, i32* %ret, align 4, !dbg !4502
  br label %cond.end, !dbg !4500

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %19, %cond.false ], !dbg !4500
  ret i32 %cond, !dbg !4503
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !4504 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %priv = alloca %struct.tda18271_priv*, align 8
  %gate = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !4509, metadata !DIExpression()), !dbg !4510
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4511
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4512
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4512
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !4511
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !4510
  call void @llvm.dbg.declare(metadata i32* %gate, metadata !4513, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4515, metadata !DIExpression()), !dbg !4516
  store i32 0, i32* %ret, align 4, !dbg !4516
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4517
  %gate1 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 5, !dbg !4518
  %4 = load i32, i32* %gate1, align 8, !dbg !4518
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
  ], !dbg !4519

sw.bb:                                            ; preds = %entry, %entry
  %5 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4520
  %gate2 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %5, i32 0, i32 5, !dbg !4522
  %6 = load i32, i32* %gate2, align 8, !dbg !4522
  store i32 %6, i32* %gate, align 4, !dbg !4523
  br label %sw.epilog7, !dbg !4524

sw.bb3:                                           ; preds = %entry
  br label %sw.default, !dbg !4524

sw.default:                                       ; preds = %entry, %sw.bb3
  %7 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4525
  %mode = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %7, i32 0, i32 3, !dbg !4526
  %8 = load i32, i32* %mode, align 8, !dbg !4526
  switch i32 %8, label %sw.default6 [
    i32 1, label %sw.bb4
    i32 0, label %sw.bb5
  ], !dbg !4527

sw.bb4:                                           ; preds = %sw.default
  store i32 2, i32* %gate, align 4, !dbg !4528
  br label %sw.epilog, !dbg !4530

sw.bb5:                                           ; preds = %sw.default
  br label %sw.default6, !dbg !4530

sw.default6:                                      ; preds = %sw.default, %sw.bb5
  store i32 1, i32* %gate, align 4, !dbg !4531
  br label %sw.epilog, !dbg !4532

sw.epilog:                                        ; preds = %sw.default6, %sw.bb4
  br label %sw.epilog7, !dbg !4533

sw.epilog7:                                       ; preds = %sw.epilog, %sw.bb
  %9 = load i32, i32* %gate, align 4, !dbg !4534
  switch i32 %9, label %sw.default21 [
    i32 1, label %sw.bb8
    i32 2, label %sw.bb12
  ], !dbg !4535

sw.bb8:                                           ; preds = %sw.epilog7
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4536
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1, !dbg !4539
  %analog_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 31, !dbg !4540
  %i2c_gate_ctrl = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %analog_ops, i32 0, i32 7, !dbg !4541
  %11 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !4541
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %11, null, !dbg !4536
  br i1 %tobool, label %if.then, label %if.end, !dbg !4542

if.then:                                          ; preds = %sw.bb8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4543
  %ops9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1, !dbg !4544
  %analog_ops10 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops9, i32 0, i32 31, !dbg !4545
  %i2c_gate_ctrl11 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %analog_ops10, i32 0, i32 7, !dbg !4546
  %13 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl11, align 8, !dbg !4546
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4547
  %15 = load i32, i32* %enable.addr, align 4, !dbg !4548
  %call = call i32 %13(%struct.dvb_frontend* %14, i32 %15) #5, !dbg !4543
  store i32 %call, i32* %ret, align 4, !dbg !4549
  br label %if.end, !dbg !4550

if.end:                                           ; preds = %if.then, %sw.bb8
  br label %sw.epilog22, !dbg !4551

sw.bb12:                                          ; preds = %sw.epilog7
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4552
  %ops13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1, !dbg !4554
  %i2c_gate_ctrl14 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops13, i32 0, i32 26, !dbg !4555
  %17 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl14, align 8, !dbg !4555
  %tobool15 = icmp ne i32 (%struct.dvb_frontend*, i32)* %17, null, !dbg !4552
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !4556

if.then16:                                        ; preds = %sw.bb12
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4557
  %ops17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1, !dbg !4558
  %i2c_gate_ctrl18 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops17, i32 0, i32 26, !dbg !4559
  %19 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl18, align 8, !dbg !4559
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4560
  %21 = load i32, i32* %enable.addr, align 4, !dbg !4561
  %call19 = call i32 %19(%struct.dvb_frontend* %20, i32 %21) #5, !dbg !4557
  store i32 %call19, i32* %ret, align 4, !dbg !4562
  br label %if.end20, !dbg !4563

if.end20:                                         ; preds = %if.then16, %sw.bb12
  br label %sw.epilog22, !dbg !4564

sw.default21:                                     ; preds = %sw.epilog7
  store i32 -22, i32* %ret, align 4, !dbg !4565
  br label %sw.epilog22, !dbg !4566

sw.epilog22:                                      ; preds = %sw.default21, %if.end20, %if.end
  %22 = load i32, i32* %ret, align 4, !dbg !4567
  ret i32 %22, !dbg !4568
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @_tda_printk(%struct.tda18271_priv* %state, i8* %level, i8* %func, i8* %fmt, ...) #0 !dbg !4569 {
entry:
  %state.addr = alloca %struct.tda18271_priv*, align 8
  %level.addr = alloca i8*, align 8
  %func.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.tda18271_priv* %state, %struct.tda18271_priv** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %state.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !4574, metadata !DIExpression()), !dbg !4575
  store i8* %func, i8** %func.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %func.addr, metadata !4576, metadata !DIExpression()), !dbg !4577
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4578, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.declare(metadata %struct.va_format* %vaf, metadata !4580, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !4599, metadata !DIExpression()), !dbg !4600
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !4601
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4601
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4601
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !4602
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i32 0, i32 0, !dbg !4603
  store i8* %0, i8** %fmt2, align 8, !dbg !4604
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i32 0, i32 1, !dbg !4605
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %va, align 8, !dbg !4606
  %1 = load %struct.tda18271_priv*, %struct.tda18271_priv** %state.addr, align 8, !dbg !4607
  %tobool = icmp ne %struct.tda18271_priv* %1, null, !dbg !4607
  br i1 %tobool, label %if.then, label %if.else, !dbg !4609

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %level.addr, align 8, !dbg !4610
  %3 = load i8*, i8** %func.addr, align 8, !dbg !4611
  %4 = load %struct.tda18271_priv*, %struct.tda18271_priv** %state.addr, align 8, !dbg !4612
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %4, i32 0, i32 2, !dbg !4613
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 1, !dbg !4614
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4614
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %5) #5, !dbg !4615
  %6 = load %struct.tda18271_priv*, %struct.tda18271_priv** %state.addr, align 8, !dbg !4616
  %i2c_props3 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %6, i32 0, i32 2, !dbg !4617
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 0, !dbg !4618
  %7 = load i8, i8* %addr, align 8, !dbg !4618
  %conv = zext i8 %7 to i32, !dbg !4616
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %state.addr, align 8, !dbg !4619
  %role = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %8, i32 0, i32 4, !dbg !4620
  %9 = load i32, i32* %role, align 4, !dbg !4620
  %cmp = icmp eq i32 %9, 0, !dbg !4621
  %10 = zext i1 %cmp to i64, !dbg !4622
  %cond = select i1 %cmp, i32 77, i32 83, !dbg !4622
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %2, i8* %3, i32 %call, i32 %conv, i32 %cond, %struct.va_format* %vaf) #6, !dbg !4623
  br label %if.end, !dbg !4623

if.else:                                          ; preds = %entry
  %11 = load i8*, i8** %level.addr, align 8, !dbg !4624
  %12 = load i8*, i8** %func.addr, align 8, !dbg !4625
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %11, i8* %12, %struct.va_format* %vaf) #6, !dbg !4626
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !4627
  %arraydecay78 = bitcast %struct.__va_list_tag* %arraydecay7 to i8*, !dbg !4627
  call void @llvm.va_end(i8* %arraydecay78), !dbg !4627
  ret void, !dbg !4628
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda18271_dump_regs(%struct.dvb_frontend* %fe, i32 %extended) #0 !dbg !4629 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %extended.addr = alloca i32, align 4
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  store i32 %extended, i32* %extended.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %extended.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !4636, metadata !DIExpression()), !dbg !4637
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4638
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4639
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4639
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !4638
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !4637
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !4640, metadata !DIExpression()), !dbg !4641
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4642
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !4643
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !4642
  store i8* %arraydecay, i8** %regs, align 8, !dbg !4641
  br label %do.body, !dbg !4644

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @tda18271_debug, align 4, !dbg !4645
  %and = and i32 %4, 4, !dbg !4645
  %tobool = icmp ne i32 %and, 0, !dbg !4645
  br i1 %tobool, label %if.then, label %if.end, !dbg !4648

if.then:                                          ; preds = %do.body
  %5 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4645
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !4645
  br label %if.end, !dbg !4645

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4648

do.end:                                           ; preds = %if.end
  br label %do.body1, !dbg !4649

do.body1:                                         ; preds = %do.end
  %6 = load i32, i32* @tda18271_debug, align 4, !dbg !4650
  %and2 = and i32 %6, 4, !dbg !4650
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4650
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4653

if.then4:                                         ; preds = %do.body1
  %7 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4650
  %8 = load i8*, i8** %regs, align 8, !dbg !4650
  %arrayidx = getelementptr i8, i8* %8, i64 0, !dbg !4650
  %9 = load i8, i8* %arrayidx, align 1, !dbg !4650
  %conv = zext i8 %9 to i32, !dbg !4650
  %and5 = and i32 255, %conv, !dbg !4650
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %and5) #5, !dbg !4650
  br label %if.end6, !dbg !4650

if.end6:                                          ; preds = %if.then4, %do.body1
  br label %do.end7, !dbg !4653

do.end7:                                          ; preds = %if.end6
  br label %do.body8, !dbg !4654

do.body8:                                         ; preds = %do.end7
  %10 = load i32, i32* @tda18271_debug, align 4, !dbg !4655
  %and9 = and i32 %10, 4, !dbg !4655
  %tobool10 = icmp ne i32 %and9, 0, !dbg !4655
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !4658

if.then11:                                        ; preds = %do.body8
  %11 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4655
  %12 = load i8*, i8** %regs, align 8, !dbg !4655
  %arrayidx12 = getelementptr i8, i8* %12, i64 1, !dbg !4655
  %13 = load i8, i8* %arrayidx12, align 1, !dbg !4655
  %conv13 = zext i8 %13 to i32, !dbg !4655
  %and14 = and i32 255, %conv13, !dbg !4655
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %and14) #5, !dbg !4655
  br label %if.end15, !dbg !4655

if.end15:                                         ; preds = %if.then11, %do.body8
  br label %do.end16, !dbg !4658

do.end16:                                         ; preds = %if.end15
  br label %do.body17, !dbg !4659

do.body17:                                        ; preds = %do.end16
  %14 = load i32, i32* @tda18271_debug, align 4, !dbg !4660
  %and18 = and i32 %14, 4, !dbg !4660
  %tobool19 = icmp ne i32 %and18, 0, !dbg !4660
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !4663

if.then20:                                        ; preds = %do.body17
  %15 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4660
  %16 = load i8*, i8** %regs, align 8, !dbg !4660
  %arrayidx21 = getelementptr i8, i8* %16, i64 2, !dbg !4660
  %17 = load i8, i8* %arrayidx21, align 1, !dbg !4660
  %conv22 = zext i8 %17 to i32, !dbg !4660
  %and23 = and i32 255, %conv22, !dbg !4660
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %and23) #5, !dbg !4660
  br label %if.end24, !dbg !4660

if.end24:                                         ; preds = %if.then20, %do.body17
  br label %do.end25, !dbg !4663

do.end25:                                         ; preds = %if.end24
  br label %do.body26, !dbg !4664

do.body26:                                        ; preds = %do.end25
  %18 = load i32, i32* @tda18271_debug, align 4, !dbg !4665
  %and27 = and i32 %18, 4, !dbg !4665
  %tobool28 = icmp ne i32 %and27, 0, !dbg !4665
  br i1 %tobool28, label %if.then29, label %if.end33, !dbg !4668

if.then29:                                        ; preds = %do.body26
  %19 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4665
  %20 = load i8*, i8** %regs, align 8, !dbg !4665
  %arrayidx30 = getelementptr i8, i8* %20, i64 3, !dbg !4665
  %21 = load i8, i8* %arrayidx30, align 1, !dbg !4665
  %conv31 = zext i8 %21 to i32, !dbg !4665
  %and32 = and i32 255, %conv31, !dbg !4665
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %and32) #5, !dbg !4665
  br label %if.end33, !dbg !4665

if.end33:                                         ; preds = %if.then29, %do.body26
  br label %do.end34, !dbg !4668

do.end34:                                         ; preds = %if.end33
  br label %do.body35, !dbg !4669

do.body35:                                        ; preds = %do.end34
  %22 = load i32, i32* @tda18271_debug, align 4, !dbg !4670
  %and36 = and i32 %22, 4, !dbg !4670
  %tobool37 = icmp ne i32 %and36, 0, !dbg !4670
  br i1 %tobool37, label %if.then38, label %if.end42, !dbg !4673

if.then38:                                        ; preds = %do.body35
  %23 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4670
  %24 = load i8*, i8** %regs, align 8, !dbg !4670
  %arrayidx39 = getelementptr i8, i8* %24, i64 4, !dbg !4670
  %25 = load i8, i8* %arrayidx39, align 1, !dbg !4670
  %conv40 = zext i8 %25 to i32, !dbg !4670
  %and41 = and i32 255, %conv40, !dbg !4670
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %and41) #5, !dbg !4670
  br label %if.end42, !dbg !4670

if.end42:                                         ; preds = %if.then38, %do.body35
  br label %do.end43, !dbg !4673

do.end43:                                         ; preds = %if.end42
  br label %do.body44, !dbg !4674

do.body44:                                        ; preds = %do.end43
  %26 = load i32, i32* @tda18271_debug, align 4, !dbg !4675
  %and45 = and i32 %26, 4, !dbg !4675
  %tobool46 = icmp ne i32 %and45, 0, !dbg !4675
  br i1 %tobool46, label %if.then47, label %if.end51, !dbg !4678

if.then47:                                        ; preds = %do.body44
  %27 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4675
  %28 = load i8*, i8** %regs, align 8, !dbg !4675
  %arrayidx48 = getelementptr i8, i8* %28, i64 5, !dbg !4675
  %29 = load i8, i8* %arrayidx48, align 1, !dbg !4675
  %conv49 = zext i8 %29 to i32, !dbg !4675
  %and50 = and i32 255, %conv49, !dbg !4675
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %and50) #5, !dbg !4675
  br label %if.end51, !dbg !4675

if.end51:                                         ; preds = %if.then47, %do.body44
  br label %do.end52, !dbg !4678

do.end52:                                         ; preds = %if.end51
  br label %do.body53, !dbg !4679

do.body53:                                        ; preds = %do.end52
  %30 = load i32, i32* @tda18271_debug, align 4, !dbg !4680
  %and54 = and i32 %30, 4, !dbg !4680
  %tobool55 = icmp ne i32 %and54, 0, !dbg !4680
  br i1 %tobool55, label %if.then56, label %if.end60, !dbg !4683

if.then56:                                        ; preds = %do.body53
  %31 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4680
  %32 = load i8*, i8** %regs, align 8, !dbg !4680
  %arrayidx57 = getelementptr i8, i8* %32, i64 6, !dbg !4680
  %33 = load i8, i8* %arrayidx57, align 1, !dbg !4680
  %conv58 = zext i8 %33 to i32, !dbg !4680
  %and59 = and i32 255, %conv58, !dbg !4680
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %and59) #5, !dbg !4680
  br label %if.end60, !dbg !4680

if.end60:                                         ; preds = %if.then56, %do.body53
  br label %do.end61, !dbg !4683

do.end61:                                         ; preds = %if.end60
  br label %do.body62, !dbg !4684

do.body62:                                        ; preds = %do.end61
  %34 = load i32, i32* @tda18271_debug, align 4, !dbg !4685
  %and63 = and i32 %34, 4, !dbg !4685
  %tobool64 = icmp ne i32 %and63, 0, !dbg !4685
  br i1 %tobool64, label %if.then65, label %if.end69, !dbg !4688

if.then65:                                        ; preds = %do.body62
  %35 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4685
  %36 = load i8*, i8** %regs, align 8, !dbg !4685
  %arrayidx66 = getelementptr i8, i8* %36, i64 7, !dbg !4685
  %37 = load i8, i8* %arrayidx66, align 1, !dbg !4685
  %conv67 = zext i8 %37 to i32, !dbg !4685
  %and68 = and i32 255, %conv67, !dbg !4685
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %and68) #5, !dbg !4685
  br label %if.end69, !dbg !4685

if.end69:                                         ; preds = %if.then65, %do.body62
  br label %do.end70, !dbg !4688

do.end70:                                         ; preds = %if.end69
  br label %do.body71, !dbg !4689

do.body71:                                        ; preds = %do.end70
  %38 = load i32, i32* @tda18271_debug, align 4, !dbg !4690
  %and72 = and i32 %38, 4, !dbg !4690
  %tobool73 = icmp ne i32 %and72, 0, !dbg !4690
  br i1 %tobool73, label %if.then74, label %if.end78, !dbg !4693

if.then74:                                        ; preds = %do.body71
  %39 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4690
  %40 = load i8*, i8** %regs, align 8, !dbg !4690
  %arrayidx75 = getelementptr i8, i8* %40, i64 8, !dbg !4690
  %41 = load i8, i8* %arrayidx75, align 1, !dbg !4690
  %conv76 = zext i8 %41 to i32, !dbg !4690
  %and77 = and i32 255, %conv76, !dbg !4690
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %and77) #5, !dbg !4690
  br label %if.end78, !dbg !4690

if.end78:                                         ; preds = %if.then74, %do.body71
  br label %do.end79, !dbg !4693

do.end79:                                         ; preds = %if.end78
  br label %do.body80, !dbg !4694

do.body80:                                        ; preds = %do.end79
  %42 = load i32, i32* @tda18271_debug, align 4, !dbg !4695
  %and81 = and i32 %42, 4, !dbg !4695
  %tobool82 = icmp ne i32 %and81, 0, !dbg !4695
  br i1 %tobool82, label %if.then83, label %if.end87, !dbg !4698

if.then83:                                        ; preds = %do.body80
  %43 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4695
  %44 = load i8*, i8** %regs, align 8, !dbg !4695
  %arrayidx84 = getelementptr i8, i8* %44, i64 9, !dbg !4695
  %45 = load i8, i8* %arrayidx84, align 1, !dbg !4695
  %conv85 = zext i8 %45 to i32, !dbg !4695
  %and86 = and i32 255, %conv85, !dbg !4695
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %and86) #5, !dbg !4695
  br label %if.end87, !dbg !4695

if.end87:                                         ; preds = %if.then83, %do.body80
  br label %do.end88, !dbg !4698

do.end88:                                         ; preds = %if.end87
  br label %do.body89, !dbg !4699

do.body89:                                        ; preds = %do.end88
  %46 = load i32, i32* @tda18271_debug, align 4, !dbg !4700
  %and90 = and i32 %46, 4, !dbg !4700
  %tobool91 = icmp ne i32 %and90, 0, !dbg !4700
  br i1 %tobool91, label %if.then92, label %if.end96, !dbg !4703

if.then92:                                        ; preds = %do.body89
  %47 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4700
  %48 = load i8*, i8** %regs, align 8, !dbg !4700
  %arrayidx93 = getelementptr i8, i8* %48, i64 10, !dbg !4700
  %49 = load i8, i8* %arrayidx93, align 1, !dbg !4700
  %conv94 = zext i8 %49 to i32, !dbg !4700
  %and95 = and i32 255, %conv94, !dbg !4700
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %and95) #5, !dbg !4700
  br label %if.end96, !dbg !4700

if.end96:                                         ; preds = %if.then92, %do.body89
  br label %do.end97, !dbg !4703

do.end97:                                         ; preds = %if.end96
  br label %do.body98, !dbg !4704

do.body98:                                        ; preds = %do.end97
  %50 = load i32, i32* @tda18271_debug, align 4, !dbg !4705
  %and99 = and i32 %50, 4, !dbg !4705
  %tobool100 = icmp ne i32 %and99, 0, !dbg !4705
  br i1 %tobool100, label %if.then101, label %if.end105, !dbg !4708

if.then101:                                       ; preds = %do.body98
  %51 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4705
  %52 = load i8*, i8** %regs, align 8, !dbg !4705
  %arrayidx102 = getelementptr i8, i8* %52, i64 11, !dbg !4705
  %53 = load i8, i8* %arrayidx102, align 1, !dbg !4705
  %conv103 = zext i8 %53 to i32, !dbg !4705
  %and104 = and i32 255, %conv103, !dbg !4705
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %and104) #5, !dbg !4705
  br label %if.end105, !dbg !4705

if.end105:                                        ; preds = %if.then101, %do.body98
  br label %do.end106, !dbg !4708

do.end106:                                        ; preds = %if.end105
  br label %do.body107, !dbg !4709

do.body107:                                       ; preds = %do.end106
  %54 = load i32, i32* @tda18271_debug, align 4, !dbg !4710
  %and108 = and i32 %54, 4, !dbg !4710
  %tobool109 = icmp ne i32 %and108, 0, !dbg !4710
  br i1 %tobool109, label %if.then110, label %if.end114, !dbg !4713

if.then110:                                       ; preds = %do.body107
  %55 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4710
  %56 = load i8*, i8** %regs, align 8, !dbg !4710
  %arrayidx111 = getelementptr i8, i8* %56, i64 12, !dbg !4710
  %57 = load i8, i8* %arrayidx111, align 1, !dbg !4710
  %conv112 = zext i8 %57 to i32, !dbg !4710
  %and113 = and i32 255, %conv112, !dbg !4710
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %and113) #5, !dbg !4710
  br label %if.end114, !dbg !4710

if.end114:                                        ; preds = %if.then110, %do.body107
  br label %do.end115, !dbg !4713

do.end115:                                        ; preds = %if.end114
  br label %do.body116, !dbg !4714

do.body116:                                       ; preds = %do.end115
  %58 = load i32, i32* @tda18271_debug, align 4, !dbg !4715
  %and117 = and i32 %58, 4, !dbg !4715
  %tobool118 = icmp ne i32 %and117, 0, !dbg !4715
  br i1 %tobool118, label %if.then119, label %if.end123, !dbg !4718

if.then119:                                       ; preds = %do.body116
  %59 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4715
  %60 = load i8*, i8** %regs, align 8, !dbg !4715
  %arrayidx120 = getelementptr i8, i8* %60, i64 13, !dbg !4715
  %61 = load i8, i8* %arrayidx120, align 1, !dbg !4715
  %conv121 = zext i8 %61 to i32, !dbg !4715
  %and122 = and i32 255, %conv121, !dbg !4715
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %and122) #5, !dbg !4715
  br label %if.end123, !dbg !4715

if.end123:                                        ; preds = %if.then119, %do.body116
  br label %do.end124, !dbg !4718

do.end124:                                        ; preds = %if.end123
  br label %do.body125, !dbg !4719

do.body125:                                       ; preds = %do.end124
  %62 = load i32, i32* @tda18271_debug, align 4, !dbg !4720
  %and126 = and i32 %62, 4, !dbg !4720
  %tobool127 = icmp ne i32 %and126, 0, !dbg !4720
  br i1 %tobool127, label %if.then128, label %if.end132, !dbg !4723

if.then128:                                       ; preds = %do.body125
  %63 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4720
  %64 = load i8*, i8** %regs, align 8, !dbg !4720
  %arrayidx129 = getelementptr i8, i8* %64, i64 14, !dbg !4720
  %65 = load i8, i8* %arrayidx129, align 1, !dbg !4720
  %conv130 = zext i8 %65 to i32, !dbg !4720
  %and131 = and i32 255, %conv130, !dbg !4720
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %and131) #5, !dbg !4720
  br label %if.end132, !dbg !4720

if.end132:                                        ; preds = %if.then128, %do.body125
  br label %do.end133, !dbg !4723

do.end133:                                        ; preds = %if.end132
  br label %do.body134, !dbg !4724

do.body134:                                       ; preds = %do.end133
  %66 = load i32, i32* @tda18271_debug, align 4, !dbg !4725
  %and135 = and i32 %66, 4, !dbg !4725
  %tobool136 = icmp ne i32 %and135, 0, !dbg !4725
  br i1 %tobool136, label %if.then137, label %if.end141, !dbg !4728

if.then137:                                       ; preds = %do.body134
  %67 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4725
  %68 = load i8*, i8** %regs, align 8, !dbg !4725
  %arrayidx138 = getelementptr i8, i8* %68, i64 15, !dbg !4725
  %69 = load i8, i8* %arrayidx138, align 1, !dbg !4725
  %conv139 = zext i8 %69 to i32, !dbg !4725
  %and140 = and i32 255, %conv139, !dbg !4725
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %and140) #5, !dbg !4725
  br label %if.end141, !dbg !4725

if.end141:                                        ; preds = %if.then137, %do.body134
  br label %do.end142, !dbg !4728

do.end142:                                        ; preds = %if.end141
  %70 = load i32, i32* @tda18271_debug, align 4, !dbg !4729
  %and143 = and i32 %70, 8, !dbg !4731
  %tobool144 = icmp ne i32 %and143, 0, !dbg !4731
  br i1 %tobool144, label %if.end146, label %if.then145, !dbg !4732

if.then145:                                       ; preds = %do.end142
  br label %do.end353, !dbg !4733

if.end146:                                        ; preds = %do.end142
  br label %do.body147, !dbg !4734

do.body147:                                       ; preds = %if.end146
  %71 = load i32, i32* @tda18271_debug, align 4, !dbg !4735
  %and148 = and i32 %71, 4, !dbg !4735
  %tobool149 = icmp ne i32 %and148, 0, !dbg !4735
  br i1 %tobool149, label %if.then150, label %if.end154, !dbg !4738

if.then150:                                       ; preds = %do.body147
  %72 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4735
  %73 = load i8*, i8** %regs, align 8, !dbg !4735
  %arrayidx151 = getelementptr i8, i8* %73, i64 16, !dbg !4735
  %74 = load i8, i8* %arrayidx151, align 1, !dbg !4735
  %conv152 = zext i8 %74 to i32, !dbg !4735
  %and153 = and i32 255, %conv152, !dbg !4735
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 %and153) #5, !dbg !4735
  br label %if.end154, !dbg !4735

if.end154:                                        ; preds = %if.then150, %do.body147
  br label %do.end155, !dbg !4738

do.end155:                                        ; preds = %if.end154
  br label %do.body156, !dbg !4739

do.body156:                                       ; preds = %do.end155
  %75 = load i32, i32* @tda18271_debug, align 4, !dbg !4740
  %and157 = and i32 %75, 4, !dbg !4740
  %tobool158 = icmp ne i32 %and157, 0, !dbg !4740
  br i1 %tobool158, label %if.then159, label %if.end163, !dbg !4743

if.then159:                                       ; preds = %do.body156
  %76 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4740
  %77 = load i8*, i8** %regs, align 8, !dbg !4740
  %arrayidx160 = getelementptr i8, i8* %77, i64 17, !dbg !4740
  %78 = load i8, i8* %arrayidx160, align 1, !dbg !4740
  %conv161 = zext i8 %78 to i32, !dbg !4740
  %and162 = and i32 255, %conv161, !dbg !4740
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %and162) #5, !dbg !4740
  br label %if.end163, !dbg !4740

if.end163:                                        ; preds = %if.then159, %do.body156
  br label %do.end164, !dbg !4743

do.end164:                                        ; preds = %if.end163
  br label %do.body165, !dbg !4744

do.body165:                                       ; preds = %do.end164
  %79 = load i32, i32* @tda18271_debug, align 4, !dbg !4745
  %and166 = and i32 %79, 4, !dbg !4745
  %tobool167 = icmp ne i32 %and166, 0, !dbg !4745
  br i1 %tobool167, label %if.then168, label %if.end172, !dbg !4748

if.then168:                                       ; preds = %do.body165
  %80 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4745
  %81 = load i8*, i8** %regs, align 8, !dbg !4745
  %arrayidx169 = getelementptr i8, i8* %81, i64 18, !dbg !4745
  %82 = load i8, i8* %arrayidx169, align 1, !dbg !4745
  %conv170 = zext i8 %82 to i32, !dbg !4745
  %and171 = and i32 255, %conv170, !dbg !4745
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32 %and171) #5, !dbg !4745
  br label %if.end172, !dbg !4745

if.end172:                                        ; preds = %if.then168, %do.body165
  br label %do.end173, !dbg !4748

do.end173:                                        ; preds = %if.end172
  br label %do.body174, !dbg !4749

do.body174:                                       ; preds = %do.end173
  %83 = load i32, i32* @tda18271_debug, align 4, !dbg !4750
  %and175 = and i32 %83, 4, !dbg !4750
  %tobool176 = icmp ne i32 %and175, 0, !dbg !4750
  br i1 %tobool176, label %if.then177, label %if.end181, !dbg !4753

if.then177:                                       ; preds = %do.body174
  %84 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4750
  %85 = load i8*, i8** %regs, align 8, !dbg !4750
  %arrayidx178 = getelementptr i8, i8* %85, i64 19, !dbg !4750
  %86 = load i8, i8* %arrayidx178, align 1, !dbg !4750
  %conv179 = zext i8 %86 to i32, !dbg !4750
  %and180 = and i32 255, %conv179, !dbg !4750
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i32 %and180) #5, !dbg !4750
  br label %if.end181, !dbg !4750

if.end181:                                        ; preds = %if.then177, %do.body174
  br label %do.end182, !dbg !4753

do.end182:                                        ; preds = %if.end181
  br label %do.body183, !dbg !4754

do.body183:                                       ; preds = %do.end182
  %87 = load i32, i32* @tda18271_debug, align 4, !dbg !4755
  %and184 = and i32 %87, 4, !dbg !4755
  %tobool185 = icmp ne i32 %and184, 0, !dbg !4755
  br i1 %tobool185, label %if.then186, label %if.end190, !dbg !4758

if.then186:                                       ; preds = %do.body183
  %88 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4755
  %89 = load i8*, i8** %regs, align 8, !dbg !4755
  %arrayidx187 = getelementptr i8, i8* %89, i64 20, !dbg !4755
  %90 = load i8, i8* %arrayidx187, align 1, !dbg !4755
  %conv188 = zext i8 %90 to i32, !dbg !4755
  %and189 = and i32 255, %conv188, !dbg !4755
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i32 %and189) #5, !dbg !4755
  br label %if.end190, !dbg !4755

if.end190:                                        ; preds = %if.then186, %do.body183
  br label %do.end191, !dbg !4758

do.end191:                                        ; preds = %if.end190
  br label %do.body192, !dbg !4759

do.body192:                                       ; preds = %do.end191
  %91 = load i32, i32* @tda18271_debug, align 4, !dbg !4760
  %and193 = and i32 %91, 4, !dbg !4760
  %tobool194 = icmp ne i32 %and193, 0, !dbg !4760
  br i1 %tobool194, label %if.then195, label %if.end199, !dbg !4763

if.then195:                                       ; preds = %do.body192
  %92 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4760
  %93 = load i8*, i8** %regs, align 8, !dbg !4760
  %arrayidx196 = getelementptr i8, i8* %93, i64 21, !dbg !4760
  %94 = load i8, i8* %arrayidx196, align 1, !dbg !4760
  %conv197 = zext i8 %94 to i32, !dbg !4760
  %and198 = and i32 255, %conv197, !dbg !4760
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 %and198) #5, !dbg !4760
  br label %if.end199, !dbg !4760

if.end199:                                        ; preds = %if.then195, %do.body192
  br label %do.end200, !dbg !4763

do.end200:                                        ; preds = %if.end199
  br label %do.body201, !dbg !4764

do.body201:                                       ; preds = %do.end200
  %95 = load i32, i32* @tda18271_debug, align 4, !dbg !4765
  %and202 = and i32 %95, 4, !dbg !4765
  %tobool203 = icmp ne i32 %and202, 0, !dbg !4765
  br i1 %tobool203, label %if.then204, label %if.end208, !dbg !4768

if.then204:                                       ; preds = %do.body201
  %96 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4765
  %97 = load i8*, i8** %regs, align 8, !dbg !4765
  %arrayidx205 = getelementptr i8, i8* %97, i64 22, !dbg !4765
  %98 = load i8, i8* %arrayidx205, align 1, !dbg !4765
  %conv206 = zext i8 %98 to i32, !dbg !4765
  %and207 = and i32 255, %conv206, !dbg !4765
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 %and207) #5, !dbg !4765
  br label %if.end208, !dbg !4765

if.end208:                                        ; preds = %if.then204, %do.body201
  br label %do.end209, !dbg !4768

do.end209:                                        ; preds = %if.end208
  br label %do.body210, !dbg !4769

do.body210:                                       ; preds = %do.end209
  %99 = load i32, i32* @tda18271_debug, align 4, !dbg !4770
  %and211 = and i32 %99, 4, !dbg !4770
  %tobool212 = icmp ne i32 %and211, 0, !dbg !4770
  br i1 %tobool212, label %if.then213, label %if.end217, !dbg !4773

if.then213:                                       ; preds = %do.body210
  %100 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4770
  %101 = load i8*, i8** %regs, align 8, !dbg !4770
  %arrayidx214 = getelementptr i8, i8* %101, i64 23, !dbg !4770
  %102 = load i8, i8* %arrayidx214, align 1, !dbg !4770
  %conv215 = zext i8 %102 to i32, !dbg !4770
  %and216 = and i32 255, %conv215, !dbg !4770
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 %and216) #5, !dbg !4770
  br label %if.end217, !dbg !4770

if.end217:                                        ; preds = %if.then213, %do.body210
  br label %do.end218, !dbg !4773

do.end218:                                        ; preds = %if.end217
  br label %do.body219, !dbg !4774

do.body219:                                       ; preds = %do.end218
  %103 = load i32, i32* @tda18271_debug, align 4, !dbg !4775
  %and220 = and i32 %103, 4, !dbg !4775
  %tobool221 = icmp ne i32 %and220, 0, !dbg !4775
  br i1 %tobool221, label %if.then222, label %if.end226, !dbg !4778

if.then222:                                       ; preds = %do.body219
  %104 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4775
  %105 = load i8*, i8** %regs, align 8, !dbg !4775
  %arrayidx223 = getelementptr i8, i8* %105, i64 24, !dbg !4775
  %106 = load i8, i8* %arrayidx223, align 1, !dbg !4775
  %conv224 = zext i8 %106 to i32, !dbg !4775
  %and225 = and i32 255, %conv224, !dbg !4775
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0), i32 %and225) #5, !dbg !4775
  br label %if.end226, !dbg !4775

if.end226:                                        ; preds = %if.then222, %do.body219
  br label %do.end227, !dbg !4778

do.end227:                                        ; preds = %if.end226
  br label %do.body228, !dbg !4779

do.body228:                                       ; preds = %do.end227
  %107 = load i32, i32* @tda18271_debug, align 4, !dbg !4780
  %and229 = and i32 %107, 4, !dbg !4780
  %tobool230 = icmp ne i32 %and229, 0, !dbg !4780
  br i1 %tobool230, label %if.then231, label %if.end235, !dbg !4783

if.then231:                                       ; preds = %do.body228
  %108 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4780
  %109 = load i8*, i8** %regs, align 8, !dbg !4780
  %arrayidx232 = getelementptr i8, i8* %109, i64 25, !dbg !4780
  %110 = load i8, i8* %arrayidx232, align 1, !dbg !4780
  %conv233 = zext i8 %110 to i32, !dbg !4780
  %and234 = and i32 255, %conv233, !dbg !4780
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i32 %and234) #5, !dbg !4780
  br label %if.end235, !dbg !4780

if.end235:                                        ; preds = %if.then231, %do.body228
  br label %do.end236, !dbg !4783

do.end236:                                        ; preds = %if.end235
  br label %do.body237, !dbg !4784

do.body237:                                       ; preds = %do.end236
  %111 = load i32, i32* @tda18271_debug, align 4, !dbg !4785
  %and238 = and i32 %111, 4, !dbg !4785
  %tobool239 = icmp ne i32 %and238, 0, !dbg !4785
  br i1 %tobool239, label %if.then240, label %if.end244, !dbg !4788

if.then240:                                       ; preds = %do.body237
  %112 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4785
  %113 = load i8*, i8** %regs, align 8, !dbg !4785
  %arrayidx241 = getelementptr i8, i8* %113, i64 26, !dbg !4785
  %114 = load i8, i8* %arrayidx241, align 1, !dbg !4785
  %conv242 = zext i8 %114 to i32, !dbg !4785
  %and243 = and i32 255, %conv242, !dbg !4785
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i32 %and243) #5, !dbg !4785
  br label %if.end244, !dbg !4785

if.end244:                                        ; preds = %if.then240, %do.body237
  br label %do.end245, !dbg !4788

do.end245:                                        ; preds = %if.end244
  br label %do.body246, !dbg !4789

do.body246:                                       ; preds = %do.end245
  %115 = load i32, i32* @tda18271_debug, align 4, !dbg !4790
  %and247 = and i32 %115, 4, !dbg !4790
  %tobool248 = icmp ne i32 %and247, 0, !dbg !4790
  br i1 %tobool248, label %if.then249, label %if.end253, !dbg !4793

if.then249:                                       ; preds = %do.body246
  %116 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4790
  %117 = load i8*, i8** %regs, align 8, !dbg !4790
  %arrayidx250 = getelementptr i8, i8* %117, i64 27, !dbg !4790
  %118 = load i8, i8* %arrayidx250, align 1, !dbg !4790
  %conv251 = zext i8 %118 to i32, !dbg !4790
  %and252 = and i32 255, %conv251, !dbg !4790
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %and252) #5, !dbg !4790
  br label %if.end253, !dbg !4790

if.end253:                                        ; preds = %if.then249, %do.body246
  br label %do.end254, !dbg !4793

do.end254:                                        ; preds = %if.end253
  br label %do.body255, !dbg !4794

do.body255:                                       ; preds = %do.end254
  %119 = load i32, i32* @tda18271_debug, align 4, !dbg !4795
  %and256 = and i32 %119, 4, !dbg !4795
  %tobool257 = icmp ne i32 %and256, 0, !dbg !4795
  br i1 %tobool257, label %if.then258, label %if.end262, !dbg !4798

if.then258:                                       ; preds = %do.body255
  %120 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4795
  %121 = load i8*, i8** %regs, align 8, !dbg !4795
  %arrayidx259 = getelementptr i8, i8* %121, i64 28, !dbg !4795
  %122 = load i8, i8* %arrayidx259, align 1, !dbg !4795
  %conv260 = zext i8 %122 to i32, !dbg !4795
  %and261 = and i32 255, %conv260, !dbg !4795
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0), i32 %and261) #5, !dbg !4795
  br label %if.end262, !dbg !4795

if.end262:                                        ; preds = %if.then258, %do.body255
  br label %do.end263, !dbg !4798

do.end263:                                        ; preds = %if.end262
  br label %do.body264, !dbg !4799

do.body264:                                       ; preds = %do.end263
  %123 = load i32, i32* @tda18271_debug, align 4, !dbg !4800
  %and265 = and i32 %123, 4, !dbg !4800
  %tobool266 = icmp ne i32 %and265, 0, !dbg !4800
  br i1 %tobool266, label %if.then267, label %if.end271, !dbg !4803

if.then267:                                       ; preds = %do.body264
  %124 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4800
  %125 = load i8*, i8** %regs, align 8, !dbg !4800
  %arrayidx268 = getelementptr i8, i8* %125, i64 29, !dbg !4800
  %126 = load i8, i8* %arrayidx268, align 1, !dbg !4800
  %conv269 = zext i8 %126 to i32, !dbg !4800
  %and270 = and i32 255, %conv269, !dbg !4800
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i32 %and270) #5, !dbg !4800
  br label %if.end271, !dbg !4800

if.end271:                                        ; preds = %if.then267, %do.body264
  br label %do.end272, !dbg !4803

do.end272:                                        ; preds = %if.end271
  br label %do.body273, !dbg !4804

do.body273:                                       ; preds = %do.end272
  %127 = load i32, i32* @tda18271_debug, align 4, !dbg !4805
  %and274 = and i32 %127, 4, !dbg !4805
  %tobool275 = icmp ne i32 %and274, 0, !dbg !4805
  br i1 %tobool275, label %if.then276, label %if.end280, !dbg !4808

if.then276:                                       ; preds = %do.body273
  %128 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4805
  %129 = load i8*, i8** %regs, align 8, !dbg !4805
  %arrayidx277 = getelementptr i8, i8* %129, i64 30, !dbg !4805
  %130 = load i8, i8* %arrayidx277, align 1, !dbg !4805
  %conv278 = zext i8 %130 to i32, !dbg !4805
  %and279 = and i32 255, %conv278, !dbg !4805
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0), i32 %and279) #5, !dbg !4805
  br label %if.end280, !dbg !4805

if.end280:                                        ; preds = %if.then276, %do.body273
  br label %do.end281, !dbg !4808

do.end281:                                        ; preds = %if.end280
  br label %do.body282, !dbg !4809

do.body282:                                       ; preds = %do.end281
  %131 = load i32, i32* @tda18271_debug, align 4, !dbg !4810
  %and283 = and i32 %131, 4, !dbg !4810
  %tobool284 = icmp ne i32 %and283, 0, !dbg !4810
  br i1 %tobool284, label %if.then285, label %if.end289, !dbg !4813

if.then285:                                       ; preds = %do.body282
  %132 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4810
  %133 = load i8*, i8** %regs, align 8, !dbg !4810
  %arrayidx286 = getelementptr i8, i8* %133, i64 31, !dbg !4810
  %134 = load i8, i8* %arrayidx286, align 1, !dbg !4810
  %conv287 = zext i8 %134 to i32, !dbg !4810
  %and288 = and i32 255, %conv287, !dbg !4810
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i32 %and288) #5, !dbg !4810
  br label %if.end289, !dbg !4810

if.end289:                                        ; preds = %if.then285, %do.body282
  br label %do.end290, !dbg !4813

do.end290:                                        ; preds = %if.end289
  br label %do.body291, !dbg !4814

do.body291:                                       ; preds = %do.end290
  %135 = load i32, i32* @tda18271_debug, align 4, !dbg !4815
  %and292 = and i32 %135, 4, !dbg !4815
  %tobool293 = icmp ne i32 %and292, 0, !dbg !4815
  br i1 %tobool293, label %if.then294, label %if.end298, !dbg !4818

if.then294:                                       ; preds = %do.body291
  %136 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4815
  %137 = load i8*, i8** %regs, align 8, !dbg !4815
  %arrayidx295 = getelementptr i8, i8* %137, i64 32, !dbg !4815
  %138 = load i8, i8* %arrayidx295, align 1, !dbg !4815
  %conv296 = zext i8 %138 to i32, !dbg !4815
  %and297 = and i32 255, %conv296, !dbg !4815
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i64 0, i64 0), i32 %and297) #5, !dbg !4815
  br label %if.end298, !dbg !4815

if.end298:                                        ; preds = %if.then294, %do.body291
  br label %do.end299, !dbg !4818

do.end299:                                        ; preds = %if.end298
  br label %do.body300, !dbg !4819

do.body300:                                       ; preds = %do.end299
  %139 = load i32, i32* @tda18271_debug, align 4, !dbg !4820
  %and301 = and i32 %139, 4, !dbg !4820
  %tobool302 = icmp ne i32 %and301, 0, !dbg !4820
  br i1 %tobool302, label %if.then303, label %if.end307, !dbg !4823

if.then303:                                       ; preds = %do.body300
  %140 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4820
  %141 = load i8*, i8** %regs, align 8, !dbg !4820
  %arrayidx304 = getelementptr i8, i8* %141, i64 33, !dbg !4820
  %142 = load i8, i8* %arrayidx304, align 1, !dbg !4820
  %conv305 = zext i8 %142 to i32, !dbg !4820
  %and306 = and i32 255, %conv305, !dbg !4820
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i32 %and306) #5, !dbg !4820
  br label %if.end307, !dbg !4820

if.end307:                                        ; preds = %if.then303, %do.body300
  br label %do.end308, !dbg !4823

do.end308:                                        ; preds = %if.end307
  br label %do.body309, !dbg !4824

do.body309:                                       ; preds = %do.end308
  %143 = load i32, i32* @tda18271_debug, align 4, !dbg !4825
  %and310 = and i32 %143, 4, !dbg !4825
  %tobool311 = icmp ne i32 %and310, 0, !dbg !4825
  br i1 %tobool311, label %if.then312, label %if.end316, !dbg !4828

if.then312:                                       ; preds = %do.body309
  %144 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4825
  %145 = load i8*, i8** %regs, align 8, !dbg !4825
  %arrayidx313 = getelementptr i8, i8* %145, i64 34, !dbg !4825
  %146 = load i8, i8* %arrayidx313, align 1, !dbg !4825
  %conv314 = zext i8 %146 to i32, !dbg !4825
  %and315 = and i32 255, %conv314, !dbg !4825
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i64 0, i64 0), i32 %and315) #5, !dbg !4825
  br label %if.end316, !dbg !4825

if.end316:                                        ; preds = %if.then312, %do.body309
  br label %do.end317, !dbg !4828

do.end317:                                        ; preds = %if.end316
  br label %do.body318, !dbg !4829

do.body318:                                       ; preds = %do.end317
  %147 = load i32, i32* @tda18271_debug, align 4, !dbg !4830
  %and319 = and i32 %147, 4, !dbg !4830
  %tobool320 = icmp ne i32 %and319, 0, !dbg !4830
  br i1 %tobool320, label %if.then321, label %if.end325, !dbg !4833

if.then321:                                       ; preds = %do.body318
  %148 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4830
  %149 = load i8*, i8** %regs, align 8, !dbg !4830
  %arrayidx322 = getelementptr i8, i8* %149, i64 35, !dbg !4830
  %150 = load i8, i8* %arrayidx322, align 1, !dbg !4830
  %conv323 = zext i8 %150 to i32, !dbg !4830
  %and324 = and i32 255, %conv323, !dbg !4830
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i32 %and324) #5, !dbg !4830
  br label %if.end325, !dbg !4830

if.end325:                                        ; preds = %if.then321, %do.body318
  br label %do.end326, !dbg !4833

do.end326:                                        ; preds = %if.end325
  br label %do.body327, !dbg !4834

do.body327:                                       ; preds = %do.end326
  %151 = load i32, i32* @tda18271_debug, align 4, !dbg !4835
  %and328 = and i32 %151, 4, !dbg !4835
  %tobool329 = icmp ne i32 %and328, 0, !dbg !4835
  br i1 %tobool329, label %if.then330, label %if.end334, !dbg !4838

if.then330:                                       ; preds = %do.body327
  %152 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4835
  %153 = load i8*, i8** %regs, align 8, !dbg !4835
  %arrayidx331 = getelementptr i8, i8* %153, i64 36, !dbg !4835
  %154 = load i8, i8* %arrayidx331, align 1, !dbg !4835
  %conv332 = zext i8 %154 to i32, !dbg !4835
  %and333 = and i32 255, %conv332, !dbg !4835
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i64 0, i64 0), i32 %and333) #5, !dbg !4835
  br label %if.end334, !dbg !4835

if.end334:                                        ; preds = %if.then330, %do.body327
  br label %do.end335, !dbg !4838

do.end335:                                        ; preds = %if.end334
  br label %do.body336, !dbg !4839

do.body336:                                       ; preds = %do.end335
  %155 = load i32, i32* @tda18271_debug, align 4, !dbg !4840
  %and337 = and i32 %155, 4, !dbg !4840
  %tobool338 = icmp ne i32 %and337, 0, !dbg !4840
  br i1 %tobool338, label %if.then339, label %if.end343, !dbg !4843

if.then339:                                       ; preds = %do.body336
  %156 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4840
  %157 = load i8*, i8** %regs, align 8, !dbg !4840
  %arrayidx340 = getelementptr i8, i8* %157, i64 37, !dbg !4840
  %158 = load i8, i8* %arrayidx340, align 1, !dbg !4840
  %conv341 = zext i8 %158 to i32, !dbg !4840
  %and342 = and i32 255, %conv341, !dbg !4840
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0), i32 %and342) #5, !dbg !4840
  br label %if.end343, !dbg !4840

if.end343:                                        ; preds = %if.then339, %do.body336
  br label %do.end344, !dbg !4843

do.end344:                                        ; preds = %if.end343
  br label %do.body345, !dbg !4844

do.body345:                                       ; preds = %do.end344
  %159 = load i32, i32* @tda18271_debug, align 4, !dbg !4845
  %and346 = and i32 %159, 4, !dbg !4845
  %tobool347 = icmp ne i32 %and346, 0, !dbg !4845
  br i1 %tobool347, label %if.then348, label %if.end352, !dbg !4848

if.then348:                                       ; preds = %do.body345
  %160 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4845
  %161 = load i8*, i8** %regs, align 8, !dbg !4845
  %arrayidx349 = getelementptr i8, i8* %161, i64 38, !dbg !4845
  %162 = load i8, i8* %arrayidx349, align 1, !dbg !4845
  %conv350 = zext i8 %162 to i32, !dbg !4845
  %and351 = and i32 255, %conv350, !dbg !4845
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_dump_regs, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0), i32 %and351) #5, !dbg !4845
  br label %if.end352, !dbg !4845

if.end352:                                        ; preds = %if.then348, %do.body345
  br label %do.end353, !dbg !4848

do.end353:                                        ; preds = %if.then145, %if.end352
  ret void, !dbg !4849
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_read_extended(%struct.dvb_frontend* %fe) #0 !dbg !4850 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %regdump = alloca [39 x i8], align 16
  %buf = alloca i8, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !4853, metadata !DIExpression()), !dbg !4854
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4855
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4856
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4856
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !4855
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !4854
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !4857, metadata !DIExpression()), !dbg !4858
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4859
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !4860
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !4859
  store i8* %arraydecay, i8** %regs, align 8, !dbg !4858
  call void @llvm.dbg.declare(metadata [39 x i8]* %regdump, metadata !4861, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.declare(metadata i8* %buf, metadata !4863, metadata !DIExpression()), !dbg !4864
  store i8 0, i8* %buf, align 1, !dbg !4864
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4865, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4867, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4869, metadata !DIExpression()), !dbg !4870
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4871
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !4872
  %4 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4873
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %4, i32 0, i32 2, !dbg !4874
  %addr1 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 0, !dbg !4875
  %5 = load i8, i8* %addr1, align 8, !dbg !4875
  %conv = zext i8 %5 to i16, !dbg !4873
  store i16 %conv, i16* %addr, align 16, !dbg !4872
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !4872
  store i16 0, i16* %flags, align 2, !dbg !4872
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !4872
  store i16 1, i16* %len, align 4, !dbg !4872
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !4872
  store i8* %buf, i8** %buf2, align 8, !dbg !4872
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !4871
  %addr3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4876
  %6 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4877
  %i2c_props4 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %6, i32 0, i32 2, !dbg !4878
  %addr5 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props4, i32 0, i32 0, !dbg !4879
  %7 = load i8, i8* %addr5, align 8, !dbg !4879
  %conv6 = zext i8 %7 to i16, !dbg !4877
  store i16 %conv6, i16* %addr3, align 16, !dbg !4876
  %flags7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4876
  store i16 1, i16* %flags7, align 2, !dbg !4876
  %len8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4876
  store i16 39, i16* %len8, align 4, !dbg !4876
  %buf9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4876
  %arraydecay10 = getelementptr inbounds [39 x i8], [39 x i8]* %regdump, i64 0, i64 0, !dbg !4880
  store i8* %arraydecay10, i8** %buf9, align 8, !dbg !4876
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4881
  %call = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %8, i32 1) #5, !dbg !4882
  %9 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4883
  %i2c_props11 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %9, i32 0, i32 2, !dbg !4884
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props11, i32 0, i32 1, !dbg !4885
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4885
  %arraydecay12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4886
  %call13 = call i32 @i2c_transfer(%struct.i2c_adapter* %10, %struct.i2c_msg* %arraydecay12, i32 2) #5, !dbg !4887
  store i32 %call13, i32* %ret, align 4, !dbg !4888
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4889
  %call14 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %11, i32 0) #5, !dbg !4890
  %12 = load i32, i32* %ret, align 4, !dbg !4891
  %cmp = icmp ne i32 %12, 2, !dbg !4893
  br i1 %cmp, label %if.then, label %if.end, !dbg !4894

if.then:                                          ; preds = %entry
  %13 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4895
  %14 = load i32, i32* %ret, align 4, !dbg !4895
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda18271_read_extended, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %14) #5, !dbg !4895
  br label %if.end, !dbg !4895

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !dbg !4896
  br label %for.cond, !dbg !4898

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4, !dbg !4899
  %cmp16 = icmp slt i32 %15, 39, !dbg !4901
  br i1 %cmp16, label %for.body, label %for.end, !dbg !4902

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !4903
  %cmp18 = icmp ne i32 %16, 24, !dbg !4906
  br i1 %cmp18, label %land.lhs.true, label %if.end34, !dbg !4907

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !4908
  %cmp20 = icmp ne i32 %17, 31, !dbg !4909
  br i1 %cmp20, label %land.lhs.true22, label %if.end34, !dbg !4910

land.lhs.true22:                                  ; preds = %land.lhs.true
  %18 = load i32, i32* %i, align 4, !dbg !4911
  %cmp23 = icmp ne i32 %18, 32, !dbg !4912
  br i1 %cmp23, label %land.lhs.true25, label %if.end34, !dbg !4913

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %19 = load i32, i32* %i, align 4, !dbg !4914
  %cmp26 = icmp ne i32 %19, 34, !dbg !4915
  br i1 %cmp26, label %land.lhs.true28, label %if.end34, !dbg !4916

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %20 = load i32, i32* %i, align 4, !dbg !4917
  %cmp29 = icmp ne i32 %20, 35, !dbg !4918
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !4919

if.then31:                                        ; preds = %land.lhs.true28
  %21 = load i32, i32* %i, align 4, !dbg !4920
  %idxprom = sext i32 %21 to i64, !dbg !4921
  %arrayidx = getelementptr [39 x i8], [39 x i8]* %regdump, i64 0, i64 %idxprom, !dbg !4921
  %22 = load i8, i8* %arrayidx, align 1, !dbg !4921
  %23 = load i8*, i8** %regs, align 8, !dbg !4922
  %24 = load i32, i32* %i, align 4, !dbg !4923
  %idxprom32 = sext i32 %24 to i64, !dbg !4922
  %arrayidx33 = getelementptr i8, i8* %23, i64 %idxprom32, !dbg !4922
  store i8 %22, i8* %arrayidx33, align 1, !dbg !4924
  br label %if.end34, !dbg !4922

if.end34:                                         ; preds = %if.then31, %land.lhs.true28, %land.lhs.true25, %land.lhs.true22, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4925

for.inc:                                          ; preds = %if.end34
  %25 = load i32, i32* %i, align 4, !dbg !4926
  %inc = add i32 %25, 1, !dbg !4926
  store i32 %inc, i32* %i, align 4, !dbg !4926
  br label %for.cond, !dbg !4927, !llvm.loop !4928

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* @tda18271_debug, align 4, !dbg !4930
  %and = and i32 %26, 4, !dbg !4932
  %tobool = icmp ne i32 %and, 0, !dbg !4932
  br i1 %tobool, label %if.then35, label %if.end36, !dbg !4933

if.then35:                                        ; preds = %for.end
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4934
  call void @tda18271_dump_regs(%struct.dvb_frontend* %27, i32 1) #5, !dbg !4935
  br label %if.end36, !dbg !4935

if.end36:                                         ; preds = %if.then35, %for.end
  %28 = load i32, i32* %ret, align 4, !dbg !4936
  %cmp37 = icmp eq i32 %28, 2, !dbg !4937
  br i1 %cmp37, label %cond.true, label %cond.false, !dbg !4936

cond.true:                                        ; preds = %if.end36
  br label %cond.end, !dbg !4936

cond.false:                                       ; preds = %if.end36
  %29 = load i32, i32* %ret, align 4, !dbg !4938
  br label %cond.end, !dbg !4936

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %29, %cond.false ], !dbg !4936
  ret i32 %cond, !dbg !4939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_write_regs(%struct.dvb_frontend* %fe, i32 %idx, i32 %len) #0 !dbg !4940 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %idx.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4943, metadata !DIExpression()), !dbg !4944
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !4945, metadata !DIExpression()), !dbg !4946
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4949
  %1 = load i32, i32* %idx.addr, align 4, !dbg !4950
  %2 = load i32, i32* %len.addr, align 4, !dbg !4951
  %call = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %0, i32 %1, i32 %2, i1 zeroext true) #5, !dbg !4952
  ret i32 %call, !dbg !4953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__tda18271_write_regs(%struct.dvb_frontend* %fe, i32 %idx, i32 %len, i1 zeroext %lock_i2c) #0 !dbg !4954 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %idx.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %lock_i2c.addr = alloca i8, align 1
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %buf = alloca [40 x i8], align 16
  %msg = alloca %struct.i2c_msg, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %max = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  %frombool = zext i1 %lock_i2c to i8
  store i8 %frombool, i8* %lock_i2c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %lock_i2c.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4967
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4968
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4968
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !4967
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !4966
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !4969, metadata !DIExpression()), !dbg !4970
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4971
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !4972
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !4971
  store i8* %arraydecay, i8** %regs, align 8, !dbg !4970
  call void @llvm.dbg.declare(metadata [40 x i8]* %buf, metadata !4973, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !4978, metadata !DIExpression()), !dbg !4979
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !4980
  %4 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !4981
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %4, i32 0, i32 2, !dbg !4982
  %addr1 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 0, !dbg !4983
  %5 = load i8, i8* %addr1, align 8, !dbg !4983
  %conv = zext i8 %5 to i16, !dbg !4981
  store i16 %conv, i16* %addr, align 8, !dbg !4980
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !4980
  store i16 0, i16* %flags, align 2, !dbg !4980
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !4980
  store i16 0, i16* %len2, align 4, !dbg !4980
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !4980
  %arraydecay4 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i64 0, i64 0, !dbg !4984
  store i8* %arraydecay4, i8** %buf3, align 8, !dbg !4980
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4985, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i32 1, i32* %ret, align 4, !dbg !4988
  call void @llvm.dbg.declare(metadata i32* %max, metadata !4989, metadata !DIExpression()), !dbg !4990
  br label %do.body, !dbg !4991

do.body:                                          ; preds = %entry
  %6 = load i32, i32* %len.addr, align 4, !dbg !4992
  %cmp = icmp eq i32 %6, 0, !dbg !4992
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4992

lor.rhs:                                          ; preds = %do.body
  %7 = load i32, i32* %idx.addr, align 4, !dbg !4992
  %8 = load i32, i32* %len.addr, align 4, !dbg !4992
  %add = add i32 %7, %8, !dbg !4992
  %conv6 = sext i32 %add to i64, !dbg !4992
  %cmp7 = icmp ugt i64 %conv6, 40, !dbg !4992
  br label %lor.end, !dbg !4992

lor.end:                                          ; preds = %lor.rhs, %do.body
  %9 = phi i1 [ true, %do.body ], [ %cmp7, %lor.rhs ]
  %lnot = xor i1 %9, true, !dbg !4992
  %lnot9 = xor i1 %lnot, true, !dbg !4992
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !4992
  %conv10 = sext i32 %lnot.ext to i64, !dbg !4992
  %tobool = icmp ne i64 %conv10, 0, !dbg !4992
  br i1 %tobool, label %if.then, label %if.end, !dbg !4995

if.then:                                          ; preds = %lor.end
  br label %do.body11, !dbg !4992

do.body11:                                        ; preds = %if.then
  br label %do.body12, !dbg !4996

do.body12:                                        ; preds = %do.body11
  br label %do.end, !dbg !4998

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !4996

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i32 188, i32 0, i64 12) #3, !dbg !5000, !srcloc !5002
  br label %do.end14, !dbg !5000

do.end14:                                         ; preds = %do.body13
  br label %do.body15, !dbg !4996

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 220) #3, !dbg !5003, !srcloc !5006
  unreachable, !dbg !5007

do.end16:                                         ; No predecessors!
  br label %do.end17, !dbg !4996

do.end17:                                         ; preds = %do.end16
  br label %if.end, !dbg !4996

if.end:                                           ; preds = %do.end17, %lor.end
  br label %do.end18, !dbg !4995

do.end18:                                         ; preds = %if.end
  %10 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5008
  %small_i2c = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %10, i32 0, i32 8, !dbg !5009
  %11 = load i32, i32* %small_i2c, align 4, !dbg !5009
  switch i32 %11, label %sw.default [
    i32 3, label %sw.bb
    i32 8, label %sw.bb19
    i32 16, label %sw.bb20
    i32 0, label %sw.bb21
  ], !dbg !5010

sw.bb:                                            ; preds = %do.end18
  store i32 3, i32* %max, align 4, !dbg !5011
  br label %sw.epilog, !dbg !5013

sw.bb19:                                          ; preds = %do.end18
  store i32 8, i32* %max, align 4, !dbg !5014
  br label %sw.epilog, !dbg !5015

sw.bb20:                                          ; preds = %do.end18
  store i32 16, i32* %max, align 4, !dbg !5016
  br label %sw.epilog, !dbg !5017

sw.bb21:                                          ; preds = %do.end18
  br label %sw.default, !dbg !5017

sw.default:                                       ; preds = %do.end18, %sw.bb21
  store i32 39, i32* %max, align 4, !dbg !5018
  br label %sw.epilog, !dbg !5019

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb19, %sw.bb
  %12 = load i8, i8* %lock_i2c.addr, align 1, !dbg !5020
  %tobool22 = trunc i8 %12 to i1, !dbg !5020
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5022

if.then23:                                        ; preds = %sw.epilog
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5023
  %call = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %13, i32 1) #5, !dbg !5025
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5026
  %i2c_props24 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %14, i32 0, i32 2, !dbg !5027
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props24, i32 0, i32 1, !dbg !5028
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5028
  call void @i2c_lock_bus(%struct.i2c_adapter* %15, i32 2) #5, !dbg !5029
  br label %if.end25, !dbg !5030

if.end25:                                         ; preds = %if.then23, %sw.epilog
  br label %while.cond, !dbg !5031

while.cond:                                       ; preds = %if.end47, %if.end25
  %16 = load i32, i32* %len.addr, align 4, !dbg !5032
  %tobool26 = icmp ne i32 %16, 0, !dbg !5031
  br i1 %tobool26, label %while.body, label %while.end, !dbg !5031

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %max, align 4, !dbg !5033
  %18 = load i32, i32* %len.addr, align 4, !dbg !5036
  %cmp27 = icmp sgt i32 %17, %18, !dbg !5037
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5038

if.then29:                                        ; preds = %while.body
  %19 = load i32, i32* %len.addr, align 4, !dbg !5039
  store i32 %19, i32* %max, align 4, !dbg !5040
  br label %if.end30, !dbg !5041

if.end30:                                         ; preds = %if.then29, %while.body
  %20 = load i32, i32* %idx.addr, align 4, !dbg !5042
  %conv31 = trunc i32 %20 to i8, !dbg !5042
  %arrayidx = getelementptr [40 x i8], [40 x i8]* %buf, i64 0, i64 0, !dbg !5043
  store i8 %conv31, i8* %arrayidx, align 16, !dbg !5044
  store i32 1, i32* %i, align 4, !dbg !5045
  br label %for.cond, !dbg !5047

for.cond:                                         ; preds = %for.inc, %if.end30
  %21 = load i32, i32* %i, align 4, !dbg !5048
  %22 = load i32, i32* %max, align 4, !dbg !5050
  %cmp32 = icmp sle i32 %21, %22, !dbg !5051
  br i1 %cmp32, label %for.body, label %for.end, !dbg !5052

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %regs, align 8, !dbg !5053
  %24 = load i32, i32* %idx.addr, align 4, !dbg !5054
  %sub = sub i32 %24, 1, !dbg !5055
  %25 = load i32, i32* %i, align 4, !dbg !5056
  %add34 = add i32 %sub, %25, !dbg !5057
  %idxprom = sext i32 %add34 to i64, !dbg !5053
  %arrayidx35 = getelementptr i8, i8* %23, i64 %idxprom, !dbg !5053
  %26 = load i8, i8* %arrayidx35, align 1, !dbg !5053
  %27 = load i32, i32* %i, align 4, !dbg !5058
  %idxprom36 = sext i32 %27 to i64, !dbg !5059
  %arrayidx37 = getelementptr [40 x i8], [40 x i8]* %buf, i64 0, i64 %idxprom36, !dbg !5059
  store i8 %26, i8* %arrayidx37, align 1, !dbg !5060
  br label %for.inc, !dbg !5059

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !dbg !5061
  %inc = add i32 %28, 1, !dbg !5061
  store i32 %inc, i32* %i, align 4, !dbg !5061
  br label %for.cond, !dbg !5062, !llvm.loop !5063

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %max, align 4, !dbg !5065
  %add38 = add i32 %29, 1, !dbg !5066
  %conv39 = trunc i32 %add38 to i16, !dbg !5065
  %len40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5067
  store i16 %conv39, i16* %len40, align 4, !dbg !5068
  %30 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5069
  %i2c_props41 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %30, i32 0, i32 2, !dbg !5070
  %adap42 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props41, i32 0, i32 1, !dbg !5071
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap42, align 8, !dbg !5071
  %call43 = call i32 @__i2c_transfer(%struct.i2c_adapter* %31, %struct.i2c_msg* %msg, i32 1) #5, !dbg !5072
  store i32 %call43, i32* %ret, align 4, !dbg !5073
  %32 = load i32, i32* %ret, align 4, !dbg !5074
  %cmp44 = icmp ne i32 %32, 1, !dbg !5076
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !5077

if.then46:                                        ; preds = %for.end
  br label %while.end, !dbg !5078

if.end47:                                         ; preds = %for.end
  %33 = load i32, i32* %max, align 4, !dbg !5079
  %34 = load i32, i32* %idx.addr, align 4, !dbg !5080
  %add48 = add i32 %34, %33, !dbg !5080
  store i32 %add48, i32* %idx.addr, align 4, !dbg !5080
  %35 = load i32, i32* %max, align 4, !dbg !5081
  %36 = load i32, i32* %len.addr, align 4, !dbg !5082
  %sub49 = sub i32 %36, %35, !dbg !5082
  store i32 %sub49, i32* %len.addr, align 4, !dbg !5082
  br label %while.cond, !dbg !5031, !llvm.loop !5083

while.end:                                        ; preds = %if.then46, %while.cond
  %37 = load i8, i8* %lock_i2c.addr, align 1, !dbg !5085
  %tobool50 = trunc i8 %37 to i1, !dbg !5085
  br i1 %tobool50, label %if.then51, label %if.end55, !dbg !5087

if.then51:                                        ; preds = %while.end
  %38 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5088
  %i2c_props52 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %38, i32 0, i32 2, !dbg !5090
  %adap53 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props52, i32 0, i32 1, !dbg !5091
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap53, align 8, !dbg !5091
  call void @i2c_unlock_bus(%struct.i2c_adapter* %39, i32 2) #5, !dbg !5092
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5093
  %call54 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %40, i32 0) #5, !dbg !5094
  br label %if.end55, !dbg !5095

if.end55:                                         ; preds = %if.then51, %while.end
  %41 = load i32, i32* %ret, align 4, !dbg !5096
  %cmp56 = icmp ne i32 %41, 1, !dbg !5098
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !5099

if.then58:                                        ; preds = %if.end55
  %42 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5100
  %43 = load i32, i32* %idx.addr, align 4, !dbg !5100
  %44 = load i32, i32* %max, align 4, !dbg !5100
  %45 = load i32, i32* %ret, align 4, !dbg !5100
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.__tda18271_write_regs, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i32 %43, i32 %44, i32 %45) #5, !dbg !5100
  br label %if.end59, !dbg !5100

if.end59:                                         ; preds = %if.then58, %if.end55
  %46 = load i32, i32* %ret, align 4, !dbg !5101
  %cmp60 = icmp eq i32 %46, 1, !dbg !5102
  br i1 %cmp60, label %cond.true, label %cond.false, !dbg !5101

cond.true:                                        ; preds = %if.end59
  br label %cond.end, !dbg !5101

cond.false:                                       ; preds = %if.end59
  %47 = load i32, i32* %ret, align 4, !dbg !5103
  br label %cond.end, !dbg !5101

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %47, %cond.false ], !dbg !5101
  ret i32 %cond, !dbg !5104
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_charge_pump_source(%struct.dvb_frontend* %fe, i32 %pll, i32 %force) #0 !dbg !5105 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %pll.addr = alloca i32, align 4
  %force.addr = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  store i32 %pll, i32* %pll.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pll.addr, metadata !5110, metadata !DIExpression()), !dbg !5111
  store i32 %force, i32* %force.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %force.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5114
  %1 = load i32, i32* %pll.addr, align 4, !dbg !5115
  %2 = load i32, i32* %force.addr, align 4, !dbg !5116
  %call = call i32 @__tda18271_charge_pump_source(%struct.dvb_frontend* %0, i32 %1, i32 %2, i1 zeroext true) #5, !dbg !5117
  ret i32 %call, !dbg !5118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__tda18271_charge_pump_source(%struct.dvb_frontend* %fe, i32 %pll, i32 %force, i1 zeroext %lock_i2c) #0 !dbg !5119 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %pll.addr = alloca i32, align 4
  %force.addr = alloca i32, align 4
  %lock_i2c.addr = alloca i8, align 1
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %r_cp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  store i32 %pll, i32* %pll.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pll.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  store i32 %force, i32* %force.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %force.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  %frombool = zext i1 %lock_i2c to i8
  store i8 %frombool, i8* %lock_i2c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %lock_i2c.addr, metadata !5128, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5130, metadata !DIExpression()), !dbg !5131
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5132
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5133
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5133
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5132
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5131
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5134, metadata !DIExpression()), !dbg !5135
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5136
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5137
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5136
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5135
  call void @llvm.dbg.declare(metadata i32* %r_cp, metadata !5138, metadata !DIExpression()), !dbg !5139
  %4 = load i32, i32* %pll.addr, align 4, !dbg !5140
  %cmp = icmp eq i32 %4, 1, !dbg !5141
  %5 = zext i1 %cmp to i64, !dbg !5142
  %cond = select i1 %cmp, i32 22, i32 19, !dbg !5142
  store i32 %cond, i32* %r_cp, align 4, !dbg !5139
  %6 = load i8*, i8** %regs, align 8, !dbg !5143
  %7 = load i32, i32* %r_cp, align 4, !dbg !5144
  %idxprom = sext i32 %7 to i64, !dbg !5143
  %arrayidx = getelementptr i8, i8* %6, i64 %idxprom, !dbg !5143
  %8 = load i8, i8* %arrayidx, align 1, !dbg !5145
  %conv = zext i8 %8 to i32, !dbg !5145
  %and = and i32 %conv, -33, !dbg !5145
  %conv1 = trunc i32 %and to i8, !dbg !5145
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !5145
  %9 = load i32, i32* %force.addr, align 4, !dbg !5146
  %and2 = and i32 %9, 1, !dbg !5147
  %shl = shl i32 %and2, 5, !dbg !5148
  %10 = load i8*, i8** %regs, align 8, !dbg !5149
  %11 = load i32, i32* %r_cp, align 4, !dbg !5150
  %idxprom3 = sext i32 %11 to i64, !dbg !5149
  %arrayidx4 = getelementptr i8, i8* %10, i64 %idxprom3, !dbg !5149
  %12 = load i8, i8* %arrayidx4, align 1, !dbg !5151
  %conv5 = zext i8 %12 to i32, !dbg !5151
  %or = or i32 %conv5, %shl, !dbg !5151
  %conv6 = trunc i32 %or to i8, !dbg !5151
  store i8 %conv6, i8* %arrayidx4, align 1, !dbg !5151
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5152
  %14 = load i32, i32* %r_cp, align 4, !dbg !5153
  %15 = load i8, i8* %lock_i2c.addr, align 1, !dbg !5154
  %tobool = trunc i8 %15 to i1, !dbg !5154
  %call = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %13, i32 %14, i32 1, i1 zeroext %tobool) #5, !dbg !5155
  ret i32 %call, !dbg !5156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_init_regs(%struct.dvb_frontend* %fe) #0 !dbg !5157 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5160, metadata !DIExpression()), !dbg !5161
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5162
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5163
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5163
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5162
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5161
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5164, metadata !DIExpression()), !dbg !5165
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5166
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5167
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5166
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5165
  br label %do.body, !dbg !5168

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @tda18271_debug, align 4, !dbg !5169
  %and = and i32 %4, 1, !dbg !5169
  %tobool = icmp ne i32 %and, 0, !dbg !5169
  br i1 %tobool, label %if.then, label %if.end, !dbg !5172

if.then:                                          ; preds = %do.body
  %5 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5169
  %6 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5169
  %i2c_props = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %6, i32 0, i32 2, !dbg !5169
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 1, !dbg !5169
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5169
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %7) #5, !dbg !5169
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5169
  %i2c_props1 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %8, i32 0, i32 2, !dbg !5169
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props1, i32 0, i32 0, !dbg !5169
  %9 = load i8, i8* %addr, align 8, !dbg !5169
  %conv = zext i8 %9 to i32, !dbg !5169
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda18271_init_regs, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %call, i32 %conv) #5, !dbg !5169
  br label %if.end, !dbg !5169

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5172

do.end:                                           ; preds = %if.end
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5173
  %call2 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %10, i32 1) #5, !dbg !5174
  %11 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5175
  %i2c_props3 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %11, i32 0, i32 2, !dbg !5176
  %adap4 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 1, !dbg !5177
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap4, align 8, !dbg !5177
  call void @i2c_lock_bus(%struct.i2c_adapter* %12, i32 2) #5, !dbg !5178
  %13 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5179
  %id = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %13, i32 0, i32 6, !dbg !5180
  %14 = load i32, i32* %id, align 4, !dbg !5180
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ], !dbg !5181

sw.bb:                                            ; preds = %do.end
  %15 = load i8*, i8** %regs, align 8, !dbg !5182
  %arrayidx = getelementptr i8, i8* %15, i64 0, !dbg !5182
  store i8 -125, i8* %arrayidx, align 1, !dbg !5184
  br label %sw.epilog, !dbg !5185

sw.bb5:                                           ; preds = %do.end
  %16 = load i8*, i8** %regs, align 8, !dbg !5186
  %arrayidx6 = getelementptr i8, i8* %16, i64 0, !dbg !5186
  store i8 -124, i8* %arrayidx6, align 1, !dbg !5187
  br label %sw.epilog, !dbg !5188

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %sw.bb
  %17 = load i8*, i8** %regs, align 8, !dbg !5189
  %arrayidx7 = getelementptr i8, i8* %17, i64 1, !dbg !5189
  store i8 8, i8* %arrayidx7, align 1, !dbg !5190
  %18 = load i8*, i8** %regs, align 8, !dbg !5191
  %arrayidx8 = getelementptr i8, i8* %18, i64 2, !dbg !5191
  store i8 -128, i8* %arrayidx8, align 1, !dbg !5192
  %19 = load i8*, i8** %regs, align 8, !dbg !5193
  %arrayidx9 = getelementptr i8, i8* %19, i64 3, !dbg !5193
  store i8 -58, i8* %arrayidx9, align 1, !dbg !5194
  %20 = load i8*, i8** %regs, align 8, !dbg !5195
  %arrayidx10 = getelementptr i8, i8* %20, i64 4, !dbg !5195
  store i8 -33, i8* %arrayidx10, align 1, !dbg !5196
  %21 = load i8*, i8** %regs, align 8, !dbg !5197
  %arrayidx11 = getelementptr i8, i8* %21, i64 5, !dbg !5197
  store i8 22, i8* %arrayidx11, align 1, !dbg !5198
  %22 = load i8*, i8** %regs, align 8, !dbg !5199
  %arrayidx12 = getelementptr i8, i8* %22, i64 6, !dbg !5199
  store i8 96, i8* %arrayidx12, align 1, !dbg !5200
  %23 = load i8*, i8** %regs, align 8, !dbg !5201
  %arrayidx13 = getelementptr i8, i8* %23, i64 7, !dbg !5201
  store i8 -128, i8* %arrayidx13, align 1, !dbg !5202
  %24 = load i8*, i8** %regs, align 8, !dbg !5203
  %arrayidx14 = getelementptr i8, i8* %24, i64 8, !dbg !5203
  store i8 -128, i8* %arrayidx14, align 1, !dbg !5204
  %25 = load i8*, i8** %regs, align 8, !dbg !5205
  %arrayidx15 = getelementptr i8, i8* %25, i64 9, !dbg !5205
  store i8 0, i8* %arrayidx15, align 1, !dbg !5206
  %26 = load i8*, i8** %regs, align 8, !dbg !5207
  %arrayidx16 = getelementptr i8, i8* %26, i64 10, !dbg !5207
  store i8 0, i8* %arrayidx16, align 1, !dbg !5208
  %27 = load i8*, i8** %regs, align 8, !dbg !5209
  %arrayidx17 = getelementptr i8, i8* %27, i64 11, !dbg !5209
  store i8 0, i8* %arrayidx17, align 1, !dbg !5210
  %28 = load i8*, i8** %regs, align 8, !dbg !5211
  %arrayidx18 = getelementptr i8, i8* %28, i64 12, !dbg !5211
  store i8 0, i8* %arrayidx18, align 1, !dbg !5212
  %29 = load i8*, i8** %regs, align 8, !dbg !5213
  %arrayidx19 = getelementptr i8, i8* %29, i64 13, !dbg !5213
  store i8 0, i8* %arrayidx19, align 1, !dbg !5214
  %30 = load i8*, i8** %regs, align 8, !dbg !5215
  %arrayidx20 = getelementptr i8, i8* %30, i64 14, !dbg !5215
  store i8 0, i8* %arrayidx20, align 1, !dbg !5216
  %31 = load i8*, i8** %regs, align 8, !dbg !5217
  %arrayidx21 = getelementptr i8, i8* %31, i64 15, !dbg !5217
  store i8 0, i8* %arrayidx21, align 1, !dbg !5218
  %32 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5219
  %id22 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %32, i32 0, i32 6, !dbg !5220
  %33 = load i32, i32* %id22, align 4, !dbg !5220
  switch i32 %33, label %sw.epilog27 [
    i32 0, label %sw.bb23
    i32 1, label %sw.bb25
  ], !dbg !5221

sw.bb23:                                          ; preds = %sw.epilog
  %34 = load i8*, i8** %regs, align 8, !dbg !5222
  %arrayidx24 = getelementptr i8, i8* %34, i64 16, !dbg !5222
  store i8 -1, i8* %arrayidx24, align 1, !dbg !5224
  br label %sw.epilog27, !dbg !5225

sw.bb25:                                          ; preds = %sw.epilog
  %35 = load i8*, i8** %regs, align 8, !dbg !5226
  %arrayidx26 = getelementptr i8, i8* %35, i64 16, !dbg !5226
  store i8 -4, i8* %arrayidx26, align 1, !dbg !5227
  br label %sw.epilog27, !dbg !5228

sw.epilog27:                                      ; preds = %sw.epilog, %sw.bb25, %sw.bb23
  %36 = load i8*, i8** %regs, align 8, !dbg !5229
  %arrayidx28 = getelementptr i8, i8* %36, i64 17, !dbg !5229
  store i8 1, i8* %arrayidx28, align 1, !dbg !5230
  %37 = load i8*, i8** %regs, align 8, !dbg !5231
  %arrayidx29 = getelementptr i8, i8* %37, i64 18, !dbg !5231
  store i8 -124, i8* %arrayidx29, align 1, !dbg !5232
  %38 = load i8*, i8** %regs, align 8, !dbg !5233
  %arrayidx30 = getelementptr i8, i8* %38, i64 19, !dbg !5233
  store i8 65, i8* %arrayidx30, align 1, !dbg !5234
  %39 = load i8*, i8** %regs, align 8, !dbg !5235
  %arrayidx31 = getelementptr i8, i8* %39, i64 20, !dbg !5235
  store i8 1, i8* %arrayidx31, align 1, !dbg !5236
  %40 = load i8*, i8** %regs, align 8, !dbg !5237
  %arrayidx32 = getelementptr i8, i8* %40, i64 21, !dbg !5237
  store i8 -124, i8* %arrayidx32, align 1, !dbg !5238
  %41 = load i8*, i8** %regs, align 8, !dbg !5239
  %arrayidx33 = getelementptr i8, i8* %41, i64 22, !dbg !5239
  store i8 64, i8* %arrayidx33, align 1, !dbg !5240
  %42 = load i8*, i8** %regs, align 8, !dbg !5241
  %arrayidx34 = getelementptr i8, i8* %42, i64 23, !dbg !5241
  store i8 7, i8* %arrayidx34, align 1, !dbg !5242
  %43 = load i8*, i8** %regs, align 8, !dbg !5243
  %arrayidx35 = getelementptr i8, i8* %43, i64 24, !dbg !5243
  store i8 0, i8* %arrayidx35, align 1, !dbg !5244
  %44 = load i8*, i8** %regs, align 8, !dbg !5245
  %arrayidx36 = getelementptr i8, i8* %44, i64 25, !dbg !5245
  store i8 0, i8* %arrayidx36, align 1, !dbg !5246
  %45 = load i8*, i8** %regs, align 8, !dbg !5247
  %arrayidx37 = getelementptr i8, i8* %45, i64 26, !dbg !5247
  store i8 -106, i8* %arrayidx37, align 1, !dbg !5248
  %46 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5249
  %id38 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %46, i32 0, i32 6, !dbg !5250
  %47 = load i32, i32* %id38, align 4, !dbg !5250
  switch i32 %47, label %sw.epilog43 [
    i32 0, label %sw.bb39
    i32 1, label %sw.bb41
  ], !dbg !5251

sw.bb39:                                          ; preds = %sw.epilog27
  %48 = load i8*, i8** %regs, align 8, !dbg !5252
  %arrayidx40 = getelementptr i8, i8* %48, i64 27, !dbg !5252
  store i8 15, i8* %arrayidx40, align 1, !dbg !5254
  br label %sw.epilog43, !dbg !5255

sw.bb41:                                          ; preds = %sw.epilog27
  %49 = load i8*, i8** %regs, align 8, !dbg !5256
  %arrayidx42 = getelementptr i8, i8* %49, i64 27, !dbg !5256
  store i8 51, i8* %arrayidx42, align 1, !dbg !5257
  br label %sw.epilog43, !dbg !5258

sw.epilog43:                                      ; preds = %sw.epilog27, %sw.bb41, %sw.bb39
  %50 = load i8*, i8** %regs, align 8, !dbg !5259
  %arrayidx44 = getelementptr i8, i8* %50, i64 28, !dbg !5259
  store i8 -63, i8* %arrayidx44, align 1, !dbg !5260
  %51 = load i8*, i8** %regs, align 8, !dbg !5261
  %arrayidx45 = getelementptr i8, i8* %51, i64 29, !dbg !5261
  store i8 0, i8* %arrayidx45, align 1, !dbg !5262
  %52 = load i8*, i8** %regs, align 8, !dbg !5263
  %arrayidx46 = getelementptr i8, i8* %52, i64 30, !dbg !5263
  store i8 -113, i8* %arrayidx46, align 1, !dbg !5264
  %53 = load i8*, i8** %regs, align 8, !dbg !5265
  %arrayidx47 = getelementptr i8, i8* %53, i64 31, !dbg !5265
  store i8 0, i8* %arrayidx47, align 1, !dbg !5266
  %54 = load i8*, i8** %regs, align 8, !dbg !5267
  %arrayidx48 = getelementptr i8, i8* %54, i64 32, !dbg !5267
  store i8 0, i8* %arrayidx48, align 1, !dbg !5268
  %55 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5269
  %id49 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %55, i32 0, i32 6, !dbg !5270
  %56 = load i32, i32* %id49, align 4, !dbg !5270
  switch i32 %56, label %sw.epilog54 [
    i32 0, label %sw.bb50
    i32 1, label %sw.bb52
  ], !dbg !5271

sw.bb50:                                          ; preds = %sw.epilog43
  %57 = load i8*, i8** %regs, align 8, !dbg !5272
  %arrayidx51 = getelementptr i8, i8* %57, i64 33, !dbg !5272
  store i8 0, i8* %arrayidx51, align 1, !dbg !5274
  br label %sw.epilog54, !dbg !5275

sw.bb52:                                          ; preds = %sw.epilog43
  %58 = load i8*, i8** %regs, align 8, !dbg !5276
  %arrayidx53 = getelementptr i8, i8* %58, i64 33, !dbg !5276
  store i8 -116, i8* %arrayidx53, align 1, !dbg !5277
  br label %sw.epilog54, !dbg !5278

sw.epilog54:                                      ; preds = %sw.epilog43, %sw.bb52, %sw.bb50
  %59 = load i8*, i8** %regs, align 8, !dbg !5279
  %arrayidx55 = getelementptr i8, i8* %59, i64 34, !dbg !5279
  store i8 0, i8* %arrayidx55, align 1, !dbg !5280
  %60 = load i8*, i8** %regs, align 8, !dbg !5281
  %arrayidx56 = getelementptr i8, i8* %60, i64 35, !dbg !5281
  store i8 32, i8* %arrayidx56, align 1, !dbg !5282
  %61 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5283
  %id57 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %61, i32 0, i32 6, !dbg !5284
  %62 = load i32, i32* %id57, align 4, !dbg !5284
  switch i32 %62, label %sw.epilog62 [
    i32 0, label %sw.bb58
    i32 1, label %sw.bb60
  ], !dbg !5285

sw.bb58:                                          ; preds = %sw.epilog54
  %63 = load i8*, i8** %regs, align 8, !dbg !5286
  %arrayidx59 = getelementptr i8, i8* %63, i64 36, !dbg !5286
  store i8 51, i8* %arrayidx59, align 1, !dbg !5288
  br label %sw.epilog62, !dbg !5289

sw.bb60:                                          ; preds = %sw.epilog54
  %64 = load i8*, i8** %regs, align 8, !dbg !5290
  %arrayidx61 = getelementptr i8, i8* %64, i64 36, !dbg !5290
  store i8 -77, i8* %arrayidx61, align 1, !dbg !5291
  br label %sw.epilog62, !dbg !5292

sw.epilog62:                                      ; preds = %sw.epilog54, %sw.bb60, %sw.bb58
  %65 = load i8*, i8** %regs, align 8, !dbg !5293
  %arrayidx63 = getelementptr i8, i8* %65, i64 37, !dbg !5293
  store i8 72, i8* %arrayidx63, align 1, !dbg !5294
  %66 = load i8*, i8** %regs, align 8, !dbg !5295
  %arrayidx64 = getelementptr i8, i8* %66, i64 38, !dbg !5295
  store i8 -80, i8* %arrayidx64, align 1, !dbg !5296
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5297
  %call65 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %67, i32 0, i32 39, i1 zeroext false) #5, !dbg !5298
  %68 = load i8*, i8** %regs, align 8, !dbg !5299
  %arrayidx66 = getelementptr i8, i8* %68, i64 32, !dbg !5299
  store i8 0, i8* %arrayidx66, align 1, !dbg !5300
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5301
  %call67 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %69, i32 32, i32 1, i1 zeroext false) #5, !dbg !5302
  %70 = load i8*, i8** %regs, align 8, !dbg !5303
  %arrayidx68 = getelementptr i8, i8* %70, i64 32, !dbg !5303
  store i8 3, i8* %arrayidx68, align 1, !dbg !5304
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5305
  %call69 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %71, i32 32, i32 1, i1 zeroext false) #5, !dbg !5306
  %72 = load i8*, i8** %regs, align 8, !dbg !5307
  %arrayidx70 = getelementptr i8, i8* %72, i64 32, !dbg !5307
  store i8 67, i8* %arrayidx70, align 1, !dbg !5308
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5309
  %call71 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %73, i32 32, i32 1, i1 zeroext false) #5, !dbg !5310
  %74 = load i8*, i8** %regs, align 8, !dbg !5311
  %arrayidx72 = getelementptr i8, i8* %74, i64 32, !dbg !5311
  store i8 76, i8* %arrayidx72, align 1, !dbg !5312
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5313
  %call73 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %75, i32 32, i32 1, i1 zeroext false) #5, !dbg !5314
  %76 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5315
  %id74 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %76, i32 0, i32 6, !dbg !5317
  %77 = load i32, i32* %id74, align 4, !dbg !5317
  %cmp = icmp eq i32 %77, 0, !dbg !5318
  br i1 %cmp, label %if.then76, label %if.end85, !dbg !5319

if.then76:                                        ; preds = %sw.epilog62
  %78 = load i8*, i8** %regs, align 8, !dbg !5320
  %arrayidx77 = getelementptr i8, i8* %78, i64 35, !dbg !5320
  store i8 -96, i8* %arrayidx77, align 1, !dbg !5322
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5323
  %call78 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %79, i32 35, i32 1, i1 zeroext false) #5, !dbg !5324
  %80 = load i8*, i8** %regs, align 8, !dbg !5325
  %arrayidx79 = getelementptr i8, i8* %80, i64 35, !dbg !5325
  store i8 -89, i8* %arrayidx79, align 1, !dbg !5326
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5327
  %call80 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %81, i32 35, i32 1, i1 zeroext false) #5, !dbg !5328
  %82 = load i8*, i8** %regs, align 8, !dbg !5329
  %arrayidx81 = getelementptr i8, i8* %82, i64 35, !dbg !5329
  store i8 -25, i8* %arrayidx81, align 1, !dbg !5330
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5331
  %call82 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %83, i32 35, i32 1, i1 zeroext false) #5, !dbg !5332
  %84 = load i8*, i8** %regs, align 8, !dbg !5333
  %arrayidx83 = getelementptr i8, i8* %84, i64 35, !dbg !5333
  store i8 -20, i8* %arrayidx83, align 1, !dbg !5334
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5335
  %call84 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %85, i32 35, i32 1, i1 zeroext false) #5, !dbg !5336
  br label %if.end85, !dbg !5337

if.end85:                                         ; preds = %if.then76, %sw.epilog62
  %86 = load i8*, i8** %regs, align 8, !dbg !5338
  %arrayidx86 = getelementptr i8, i8* %86, i64 5, !dbg !5338
  store i8 31, i8* %arrayidx86, align 1, !dbg !5339
  %87 = load i8*, i8** %regs, align 8, !dbg !5340
  %arrayidx87 = getelementptr i8, i8* %87, i64 6, !dbg !5340
  store i8 102, i8* %arrayidx87, align 1, !dbg !5341
  %88 = load i8*, i8** %regs, align 8, !dbg !5342
  %arrayidx88 = getelementptr i8, i8* %88, i64 7, !dbg !5342
  store i8 -127, i8* %arrayidx88, align 1, !dbg !5343
  %89 = load i8*, i8** %regs, align 8, !dbg !5344
  %arrayidx89 = getelementptr i8, i8* %89, i64 8, !dbg !5344
  store i8 -52, i8* %arrayidx89, align 1, !dbg !5345
  %90 = load i8*, i8** %regs, align 8, !dbg !5346
  %arrayidx90 = getelementptr i8, i8* %90, i64 9, !dbg !5346
  store i8 108, i8* %arrayidx90, align 1, !dbg !5347
  %91 = load i8*, i8** %regs, align 8, !dbg !5348
  %arrayidx91 = getelementptr i8, i8* %91, i64 10, !dbg !5348
  store i8 0, i8* %arrayidx91, align 1, !dbg !5349
  %92 = load i8*, i8** %regs, align 8, !dbg !5350
  %arrayidx92 = getelementptr i8, i8* %92, i64 11, !dbg !5350
  store i8 0, i8* %arrayidx92, align 1, !dbg !5351
  %93 = load i8*, i8** %regs, align 8, !dbg !5352
  %arrayidx93 = getelementptr i8, i8* %93, i64 12, !dbg !5352
  store i8 -51, i8* %arrayidx93, align 1, !dbg !5353
  %94 = load i8*, i8** %regs, align 8, !dbg !5354
  %arrayidx94 = getelementptr i8, i8* %94, i64 13, !dbg !5354
  store i8 119, i8* %arrayidx94, align 1, !dbg !5355
  %95 = load i8*, i8** %regs, align 8, !dbg !5356
  %arrayidx95 = getelementptr i8, i8* %95, i64 14, !dbg !5356
  store i8 8, i8* %arrayidx95, align 1, !dbg !5357
  %96 = load i8*, i8** %regs, align 8, !dbg !5358
  %arrayidx96 = getelementptr i8, i8* %96, i64 15, !dbg !5358
  store i8 0, i8* %arrayidx96, align 1, !dbg !5359
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5360
  %call97 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %97, i32 5, i32 11, i1 zeroext false) #5, !dbg !5361
  %98 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5362
  %id98 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %98, i32 0, i32 6, !dbg !5364
  %99 = load i32, i32* %id98, align 4, !dbg !5364
  %cmp99 = icmp eq i32 %99, 1, !dbg !5365
  br i1 %cmp99, label %if.then101, label %if.end104, !dbg !5366

if.then101:                                       ; preds = %if.end85
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5367
  %call102 = call i32 @__tda18271_charge_pump_source(%struct.dvb_frontend* %100, i32 0, i32 1, i1 zeroext false) #5, !dbg !5369
  call void @msleep(i32 1) #5, !dbg !5370
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5371
  %call103 = call i32 @__tda18271_charge_pump_source(%struct.dvb_frontend* %101, i32 0, i32 0, i1 zeroext false) #5, !dbg !5372
  br label %if.end104, !dbg !5373

if.end104:                                        ; preds = %if.then101, %if.end85
  call void @msleep(i32 5) #5, !dbg !5374
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5375
  %call105 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %102, i32 3, i32 1, i1 zeroext false) #5, !dbg !5376
  call void @msleep(i32 5) #5, !dbg !5377
  %103 = load i8*, i8** %regs, align 8, !dbg !5378
  %arrayidx106 = getelementptr i8, i8* %103, i64 7, !dbg !5378
  store i8 -123, i8* %arrayidx106, align 1, !dbg !5379
  %104 = load i8*, i8** %regs, align 8, !dbg !5380
  %arrayidx107 = getelementptr i8, i8* %104, i64 8, !dbg !5380
  store i8 -53, i8* %arrayidx107, align 1, !dbg !5381
  %105 = load i8*, i8** %regs, align 8, !dbg !5382
  %arrayidx108 = getelementptr i8, i8* %105, i64 9, !dbg !5382
  store i8 102, i8* %arrayidx108, align 1, !dbg !5383
  %106 = load i8*, i8** %regs, align 8, !dbg !5384
  %arrayidx109 = getelementptr i8, i8* %106, i64 10, !dbg !5384
  store i8 112, i8* %arrayidx109, align 1, !dbg !5385
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5386
  %call110 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %107, i32 5, i32 7, i1 zeroext false) #5, !dbg !5387
  call void @msleep(i32 5) #5, !dbg !5388
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5389
  %call111 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %108, i32 4, i32 1, i1 zeroext false) #5, !dbg !5390
  call void @msleep(i32 30) #5, !dbg !5391
  %109 = load i8*, i8** %regs, align 8, !dbg !5392
  %arrayidx112 = getelementptr i8, i8* %109, i64 7, !dbg !5392
  store i8 -126, i8* %arrayidx112, align 1, !dbg !5393
  %110 = load i8*, i8** %regs, align 8, !dbg !5394
  %arrayidx113 = getelementptr i8, i8* %110, i64 8, !dbg !5394
  store i8 -88, i8* %arrayidx113, align 1, !dbg !5395
  %111 = load i8*, i8** %regs, align 8, !dbg !5396
  %arrayidx114 = getelementptr i8, i8* %111, i64 10, !dbg !5396
  store i8 0, i8* %arrayidx114, align 1, !dbg !5397
  %112 = load i8*, i8** %regs, align 8, !dbg !5398
  %arrayidx115 = getelementptr i8, i8* %112, i64 12, !dbg !5398
  store i8 -87, i8* %arrayidx115, align 1, !dbg !5399
  %113 = load i8*, i8** %regs, align 8, !dbg !5400
  %arrayidx116 = getelementptr i8, i8* %113, i64 13, !dbg !5400
  store i8 115, i8* %arrayidx116, align 1, !dbg !5401
  %114 = load i8*, i8** %regs, align 8, !dbg !5402
  %arrayidx117 = getelementptr i8, i8* %114, i64 14, !dbg !5402
  store i8 26, i8* %arrayidx117, align 1, !dbg !5403
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5404
  %call118 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %115, i32 5, i32 11, i1 zeroext false) #5, !dbg !5405
  call void @msleep(i32 5) #5, !dbg !5406
  %116 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5407
  %call119 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %116, i32 3, i32 1, i1 zeroext false) #5, !dbg !5408
  call void @msleep(i32 5) #5, !dbg !5409
  %117 = load i8*, i8** %regs, align 8, !dbg !5410
  %arrayidx120 = getelementptr i8, i8* %117, i64 7, !dbg !5410
  store i8 -122, i8* %arrayidx120, align 1, !dbg !5411
  %118 = load i8*, i8** %regs, align 8, !dbg !5412
  %arrayidx121 = getelementptr i8, i8* %118, i64 8, !dbg !5412
  store i8 -88, i8* %arrayidx121, align 1, !dbg !5413
  %119 = load i8*, i8** %regs, align 8, !dbg !5414
  %arrayidx122 = getelementptr i8, i8* %119, i64 9, !dbg !5414
  store i8 102, i8* %arrayidx122, align 1, !dbg !5415
  %120 = load i8*, i8** %regs, align 8, !dbg !5416
  %arrayidx123 = getelementptr i8, i8* %120, i64 10, !dbg !5416
  store i8 -96, i8* %arrayidx123, align 1, !dbg !5417
  %121 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5418
  %call124 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %121, i32 5, i32 7, i1 zeroext false) #5, !dbg !5419
  call void @msleep(i32 5) #5, !dbg !5420
  %122 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5421
  %call125 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %122, i32 4, i32 1, i1 zeroext false) #5, !dbg !5422
  call void @msleep(i32 30) #5, !dbg !5423
  %123 = load i8*, i8** %regs, align 8, !dbg !5424
  %arrayidx126 = getelementptr i8, i8* %123, i64 7, !dbg !5424
  store i8 -125, i8* %arrayidx126, align 1, !dbg !5425
  %124 = load i8*, i8** %regs, align 8, !dbg !5426
  %arrayidx127 = getelementptr i8, i8* %124, i64 8, !dbg !5426
  store i8 -104, i8* %arrayidx127, align 1, !dbg !5427
  %125 = load i8*, i8** %regs, align 8, !dbg !5428
  %arrayidx128 = getelementptr i8, i8* %125, i64 9, !dbg !5428
  store i8 101, i8* %arrayidx128, align 1, !dbg !5429
  %126 = load i8*, i8** %regs, align 8, !dbg !5430
  %arrayidx129 = getelementptr i8, i8* %126, i64 10, !dbg !5430
  store i8 0, i8* %arrayidx129, align 1, !dbg !5431
  %127 = load i8*, i8** %regs, align 8, !dbg !5432
  %arrayidx130 = getelementptr i8, i8* %127, i64 12, !dbg !5432
  store i8 -103, i8* %arrayidx130, align 1, !dbg !5433
  %128 = load i8*, i8** %regs, align 8, !dbg !5434
  %arrayidx131 = getelementptr i8, i8* %128, i64 13, !dbg !5434
  store i8 113, i8* %arrayidx131, align 1, !dbg !5435
  %129 = load i8*, i8** %regs, align 8, !dbg !5436
  %arrayidx132 = getelementptr i8, i8* %129, i64 14, !dbg !5436
  store i8 -51, i8* %arrayidx132, align 1, !dbg !5437
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5438
  %call133 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %130, i32 5, i32 11, i1 zeroext false) #5, !dbg !5439
  call void @msleep(i32 5) #5, !dbg !5440
  %131 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5441
  %call134 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %131, i32 3, i32 1, i1 zeroext false) #5, !dbg !5442
  call void @msleep(i32 5) #5, !dbg !5443
  %132 = load i8*, i8** %regs, align 8, !dbg !5444
  %arrayidx135 = getelementptr i8, i8* %132, i64 7, !dbg !5444
  store i8 -121, i8* %arrayidx135, align 1, !dbg !5445
  %133 = load i8*, i8** %regs, align 8, !dbg !5446
  %arrayidx136 = getelementptr i8, i8* %133, i64 9, !dbg !5446
  store i8 101, i8* %arrayidx136, align 1, !dbg !5447
  %134 = load i8*, i8** %regs, align 8, !dbg !5448
  %arrayidx137 = getelementptr i8, i8* %134, i64 10, !dbg !5448
  store i8 80, i8* %arrayidx137, align 1, !dbg !5449
  %135 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5450
  %call138 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %135, i32 5, i32 7, i1 zeroext false) #5, !dbg !5451
  call void @msleep(i32 5) #5, !dbg !5452
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5453
  %call139 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %136, i32 4, i32 1, i1 zeroext false) #5, !dbg !5454
  call void @msleep(i32 30) #5, !dbg !5455
  %137 = load i8*, i8** %regs, align 8, !dbg !5456
  %arrayidx140 = getelementptr i8, i8* %137, i64 6, !dbg !5456
  store i8 100, i8* %arrayidx140, align 1, !dbg !5457
  %138 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5458
  %call141 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %138, i32 6, i32 1, i1 zeroext false) #5, !dbg !5459
  %139 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5460
  %call142 = call i32 @__tda18271_write_regs(%struct.dvb_frontend* %139, i32 3, i32 1, i1 zeroext false) #5, !dbg !5461
  %140 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5462
  %i2c_props143 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %140, i32 0, i32 2, !dbg !5463
  %adap144 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props143, i32 0, i32 1, !dbg !5464
  %141 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap144, align 8, !dbg !5464
  call void @i2c_unlock_bus(%struct.i2c_adapter* %141, i32 2) #5, !dbg !5465
  %142 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5466
  %call145 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %142, i32 0) #5, !dbg !5467
  ret i32 0, !dbg !5468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_adapter_id(%struct.i2c_adapter* %adap) #0 !dbg !5469 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5470, metadata !DIExpression()), !dbg !5471
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5472
  %nr = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 11, !dbg !5473
  %1 = load i32, i32* %nr, align 8, !dbg !5473
  ret i32 %1, !dbg !5474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !5475 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5480
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !5481
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !5481
  %lock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 0, !dbg !5482
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %lock_bus, align 8, !dbg !5482
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5483
  %4 = load i32, i32* %flags.addr, align 4, !dbg !5484
  call void %2(%struct.i2c_adapter* %3, i32 %4) #5, !dbg !5480
  ret void, !dbg !5485
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !5486 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5489, metadata !DIExpression()), !dbg !5490
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5491
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !5492
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !5492
  %unlock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 2, !dbg !5493
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %unlock_bus, align 8, !dbg !5493
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !5494
  %4 = load i32, i32* %flags.addr, align 4, !dbg !5495
  call void %2(%struct.i2c_adapter* %3, i32 %4) #5, !dbg !5491
  ret void, !dbg !5496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_set_standby_mode(%struct.dvb_frontend* %fe, i32 %sm, i32 %sm_lt, i32 %sm_xt) #0 !dbg !5497 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %sm.addr = alloca i32, align 4
  %sm_lt.addr = alloca i32, align 4
  %sm_xt.addr = alloca i32, align 4
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  store i32 %sm, i32* %sm.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sm.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  store i32 %sm_lt, i32* %sm_lt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sm_lt.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  store i32 %sm_xt, i32* %sm_xt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sm_xt.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5508, metadata !DIExpression()), !dbg !5509
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5510
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5511
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5511
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5510
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5509
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5512, metadata !DIExpression()), !dbg !5513
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5514
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5515
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5514
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5513
  %4 = load i32, i32* @tda18271_debug, align 4, !dbg !5516
  %and = and i32 %4, 8, !dbg !5518
  %tobool = icmp ne i32 %and, 0, !dbg !5518
  br i1 %tobool, label %if.then, label %if.end4, !dbg !5519

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5520

do.body:                                          ; preds = %if.then
  %5 = load i32, i32* @tda18271_debug, align 4, !dbg !5521
  %and1 = and i32 %5, 1, !dbg !5521
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5521
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5524

if.then3:                                         ; preds = %do.body
  %6 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5521
  %7 = load i32, i32* %sm.addr, align 4, !dbg !5521
  %8 = load i32, i32* %sm_lt.addr, align 4, !dbg !5521
  %9 = load i32, i32* %sm_xt.addr, align 4, !dbg !5521
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tda18271_set_standby_mode, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %7, i32 %8, i32 %9) #5, !dbg !5521
  br label %if.end, !dbg !5521

if.end:                                           ; preds = %if.then3, %do.body
  br label %do.end, !dbg !5524

do.end:                                           ; preds = %if.end
  br label %if.end4, !dbg !5524

if.end4:                                          ; preds = %do.end, %entry
  %10 = load i8*, i8** %regs, align 8, !dbg !5525
  %arrayidx = getelementptr i8, i8* %10, i64 5, !dbg !5525
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5526
  %conv = zext i8 %11 to i32, !dbg !5526
  %and5 = and i32 %conv, -225, !dbg !5526
  %conv6 = trunc i32 %and5 to i8, !dbg !5526
  store i8 %conv6, i8* %arrayidx, align 1, !dbg !5526
  %12 = load i32, i32* %sm.addr, align 4, !dbg !5527
  %tobool7 = icmp ne i32 %12, 0, !dbg !5527
  %13 = zext i1 %tobool7 to i64, !dbg !5527
  %cond = select i1 %tobool7, i32 128, i32 0, !dbg !5527
  %14 = load i32, i32* %sm_lt.addr, align 4, !dbg !5528
  %tobool8 = icmp ne i32 %14, 0, !dbg !5528
  %15 = zext i1 %tobool8 to i64, !dbg !5528
  %cond9 = select i1 %tobool8, i32 64, i32 0, !dbg !5528
  %or = or i32 %cond, %cond9, !dbg !5529
  %16 = load i32, i32* %sm_xt.addr, align 4, !dbg !5530
  %tobool10 = icmp ne i32 %16, 0, !dbg !5530
  %17 = zext i1 %tobool10 to i64, !dbg !5530
  %cond11 = select i1 %tobool10, i32 32, i32 0, !dbg !5530
  %or12 = or i32 %or, %cond11, !dbg !5531
  %18 = load i8*, i8** %regs, align 8, !dbg !5532
  %arrayidx13 = getelementptr i8, i8* %18, i64 5, !dbg !5532
  %19 = load i8, i8* %arrayidx13, align 1, !dbg !5533
  %conv14 = zext i8 %19 to i32, !dbg !5533
  %or15 = or i32 %conv14, %or12, !dbg !5533
  %conv16 = trunc i32 %or15 to i8, !dbg !5533
  store i8 %conv16, i8* %arrayidx13, align 1, !dbg !5533
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5534
  %call = call i32 @tda18271_write_regs(%struct.dvb_frontend* %20, i32 5, i32 1) #5, !dbg !5535
  ret i32 %call, !dbg !5536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_calc_main_pll(%struct.dvb_frontend* %fe, i32 %freq) #0 !dbg !5537 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %freq.addr = alloca i32, align 4
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %d = alloca i8, align 1
  %pd = alloca i8, align 1
  %div = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5542, metadata !DIExpression()), !dbg !5543
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5544
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5545
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5545
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5544
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5543
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5546, metadata !DIExpression()), !dbg !5547
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5548
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5549
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5548
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5547
  call void @llvm.dbg.declare(metadata i8* %d, metadata !5550, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.declare(metadata i8* %pd, metadata !5552, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.declare(metadata i32* %div, metadata !5554, metadata !DIExpression()), !dbg !5555
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5556, metadata !DIExpression()), !dbg !5557
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5558
  %call = call i32 @tda18271_lookup_pll_map(%struct.dvb_frontend* %4, i32 0, i32* %freq.addr, i8* %pd, i8* %d) #5, !dbg !5559
  store i32 %call, i32* %ret, align 4, !dbg !5557
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5560, metadata !DIExpression()), !dbg !5563
  %5 = load i32, i32* %ret, align 4, !dbg !5563
  %cmp = icmp slt i32 %5, 0, !dbg !5563
  %conv = zext i1 %cmp to i32, !dbg !5563
  store i32 %conv, i32* %__ret, align 4, !dbg !5563
  %6 = load i32, i32* %__ret, align 4, !dbg !5564
  %tobool = icmp ne i32 %6, 0, !dbg !5564
  br i1 %tobool, label %if.then, label %if.end, !dbg !5563

if.then:                                          ; preds = %entry
  %7 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5564
  %8 = load i32, i32* %ret, align 4, !dbg !5564
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda18271_calc_main_pll, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %8, i32 559) #5, !dbg !5564
  br label %if.end, !dbg !5564

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %__ret, align 4, !dbg !5563
  store i32 %9, i32* %tmp, align 4, !dbg !5564
  %10 = load i32, i32* %tmp, align 4, !dbg !5563
  %tobool1 = icmp ne i32 %10, 0, !dbg !5566
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5567

if.then2:                                         ; preds = %if.end
  br label %fail, !dbg !5568

if.end3:                                          ; preds = %if.end
  %11 = load i8, i8* %pd, align 1, !dbg !5569
  %conv4 = zext i8 %11 to i32, !dbg !5569
  %and = and i32 127, %conv4, !dbg !5570
  %conv5 = trunc i32 %and to i8, !dbg !5571
  %12 = load i8*, i8** %regs, align 8, !dbg !5572
  %arrayidx = getelementptr i8, i8* %12, i64 12, !dbg !5572
  store i8 %conv5, i8* %arrayidx, align 1, !dbg !5573
  %13 = load i8, i8* %d, align 1, !dbg !5574
  %conv6 = zext i8 %13 to i32, !dbg !5574
  %14 = load i32, i32* %freq.addr, align 4, !dbg !5575
  %div7 = udiv i32 %14, 1000, !dbg !5576
  %mul = mul i32 %conv6, %div7, !dbg !5577
  %shl = shl i32 %mul, 7, !dbg !5578
  %div8 = udiv i32 %shl, 125, !dbg !5579
  store i32 %div8, i32* %div, align 4, !dbg !5580
  %15 = load i32, i32* %div, align 4, !dbg !5581
  %shr = lshr i32 %15, 16, !dbg !5582
  %and9 = and i32 127, %shr, !dbg !5583
  %conv10 = trunc i32 %and9 to i8, !dbg !5584
  %16 = load i8*, i8** %regs, align 8, !dbg !5585
  %arrayidx11 = getelementptr i8, i8* %16, i64 13, !dbg !5585
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !5586
  %17 = load i32, i32* %div, align 4, !dbg !5587
  %shr12 = lshr i32 %17, 8, !dbg !5588
  %and13 = and i32 255, %shr12, !dbg !5589
  %conv14 = trunc i32 %and13 to i8, !dbg !5590
  %18 = load i8*, i8** %regs, align 8, !dbg !5591
  %arrayidx15 = getelementptr i8, i8* %18, i64 14, !dbg !5591
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !5592
  %19 = load i32, i32* %div, align 4, !dbg !5593
  %and16 = and i32 255, %19, !dbg !5594
  %conv17 = trunc i32 %and16 to i8, !dbg !5595
  %20 = load i8*, i8** %regs, align 8, !dbg !5596
  %arrayidx18 = getelementptr i8, i8* %20, i64 15, !dbg !5596
  store i8 %conv17, i8* %arrayidx18, align 1, !dbg !5597
  br label %fail, !dbg !5596

fail:                                             ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !5598), !dbg !5599
  %21 = load i32, i32* %ret, align 4, !dbg !5600
  ret i32 %21, !dbg !5601
}

; Function Attrs: noredzone
declare dso_local i32 @tda18271_lookup_pll_map(%struct.dvb_frontend*, i32, i32*, i8*, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_calc_cal_pll(%struct.dvb_frontend* %fe, i32 %freq) #0 !dbg !5602 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %freq.addr = alloca i32, align 4
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %d = alloca i8, align 1
  %pd = alloca i8, align 1
  %div = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5603, metadata !DIExpression()), !dbg !5604
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5607, metadata !DIExpression()), !dbg !5608
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5609
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5610
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5610
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5609
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5608
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5611, metadata !DIExpression()), !dbg !5612
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5613
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5614
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5613
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5612
  call void @llvm.dbg.declare(metadata i8* %d, metadata !5615, metadata !DIExpression()), !dbg !5616
  call void @llvm.dbg.declare(metadata i8* %pd, metadata !5617, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata i32* %div, metadata !5619, metadata !DIExpression()), !dbg !5620
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5621, metadata !DIExpression()), !dbg !5622
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5623
  %call = call i32 @tda18271_lookup_pll_map(%struct.dvb_frontend* %4, i32 1, i32* %freq.addr, i8* %pd, i8* %d) #5, !dbg !5624
  store i32 %call, i32* %ret, align 4, !dbg !5622
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5625, metadata !DIExpression()), !dbg !5628
  %5 = load i32, i32* %ret, align 4, !dbg !5628
  %cmp = icmp slt i32 %5, 0, !dbg !5628
  %conv = zext i1 %cmp to i32, !dbg !5628
  store i32 %conv, i32* %__ret, align 4, !dbg !5628
  %6 = load i32, i32* %__ret, align 4, !dbg !5629
  %tobool = icmp ne i32 %6, 0, !dbg !5629
  br i1 %tobool, label %if.then, label %if.end, !dbg !5628

if.then:                                          ; preds = %entry
  %7 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5629
  %8 = load i32, i32* %ret, align 4, !dbg !5629
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda18271_calc_cal_pll, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %8, i32 582) #5, !dbg !5629
  br label %if.end, !dbg !5629

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %__ret, align 4, !dbg !5628
  store i32 %9, i32* %tmp, align 4, !dbg !5629
  %10 = load i32, i32* %tmp, align 4, !dbg !5628
  %tobool1 = icmp ne i32 %10, 0, !dbg !5631
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5632

if.then2:                                         ; preds = %if.end
  br label %fail, !dbg !5633

if.end3:                                          ; preds = %if.end
  %11 = load i8, i8* %pd, align 1, !dbg !5634
  %12 = load i8*, i8** %regs, align 8, !dbg !5635
  %arrayidx = getelementptr i8, i8* %12, i64 8, !dbg !5635
  store i8 %11, i8* %arrayidx, align 1, !dbg !5636
  %13 = load i8, i8* %d, align 1, !dbg !5637
  %conv4 = zext i8 %13 to i32, !dbg !5637
  %14 = load i32, i32* %freq.addr, align 4, !dbg !5638
  %div5 = udiv i32 %14, 1000, !dbg !5639
  %mul = mul i32 %conv4, %div5, !dbg !5640
  %shl = shl i32 %mul, 7, !dbg !5641
  %div6 = udiv i32 %shl, 125, !dbg !5642
  store i32 %div6, i32* %div, align 4, !dbg !5643
  %15 = load i32, i32* %div, align 4, !dbg !5644
  %shr = lshr i32 %15, 16, !dbg !5645
  %and = and i32 127, %shr, !dbg !5646
  %conv7 = trunc i32 %and to i8, !dbg !5647
  %16 = load i8*, i8** %regs, align 8, !dbg !5648
  %arrayidx8 = getelementptr i8, i8* %16, i64 9, !dbg !5648
  store i8 %conv7, i8* %arrayidx8, align 1, !dbg !5649
  %17 = load i32, i32* %div, align 4, !dbg !5650
  %shr9 = lshr i32 %17, 8, !dbg !5651
  %and10 = and i32 255, %shr9, !dbg !5652
  %conv11 = trunc i32 %and10 to i8, !dbg !5653
  %18 = load i8*, i8** %regs, align 8, !dbg !5654
  %arrayidx12 = getelementptr i8, i8* %18, i64 10, !dbg !5654
  store i8 %conv11, i8* %arrayidx12, align 1, !dbg !5655
  %19 = load i32, i32* %div, align 4, !dbg !5656
  %and13 = and i32 255, %19, !dbg !5657
  %conv14 = trunc i32 %and13 to i8, !dbg !5658
  %20 = load i8*, i8** %regs, align 8, !dbg !5659
  %arrayidx15 = getelementptr i8, i8* %20, i64 11, !dbg !5659
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !5660
  br label %fail, !dbg !5659

fail:                                             ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !5661), !dbg !5662
  %21 = load i32, i32* %ret, align 4, !dbg !5663
  ret i32 %21, !dbg !5664
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_calc_bp_filter(%struct.dvb_frontend* %fe, i32* %freq) #0 !dbg !5665 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %freq.addr = alloca i32*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  store i32* %freq, i32** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %freq.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5670, metadata !DIExpression()), !dbg !5671
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5672
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5673
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5673
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5672
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5671
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5674, metadata !DIExpression()), !dbg !5675
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5676
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5677
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5676
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5675
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5678, metadata !DIExpression()), !dbg !5679
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5680, metadata !DIExpression()), !dbg !5681
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5682
  %5 = load i32*, i32** %freq.addr, align 8, !dbg !5683
  %call = call i32 @tda18271_lookup_map(%struct.dvb_frontend* %4, i32 5, i32* %5, i8* %val) #5, !dbg !5684
  store i32 %call, i32* %ret, align 4, !dbg !5681
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5685, metadata !DIExpression()), !dbg !5688
  %6 = load i32, i32* %ret, align 4, !dbg !5688
  %cmp = icmp slt i32 %6, 0, !dbg !5688
  %conv = zext i1 %cmp to i32, !dbg !5688
  store i32 %conv, i32* %__ret, align 4, !dbg !5688
  %7 = load i32, i32* %__ret, align 4, !dbg !5689
  %tobool = icmp ne i32 %7, 0, !dbg !5689
  br i1 %tobool, label %if.then, label %if.end, !dbg !5688

if.then:                                          ; preds = %entry
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5689
  %9 = load i32, i32* %ret, align 4, !dbg !5689
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.tda18271_calc_bp_filter, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %9, i32 606) #5, !dbg !5689
  br label %if.end, !dbg !5689

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %__ret, align 4, !dbg !5688
  store i32 %10, i32* %tmp, align 4, !dbg !5689
  %11 = load i32, i32* %tmp, align 4, !dbg !5688
  %tobool1 = icmp ne i32 %11, 0, !dbg !5691
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5692

if.then2:                                         ; preds = %if.end
  br label %fail, !dbg !5693

if.end3:                                          ; preds = %if.end
  %12 = load i8*, i8** %regs, align 8, !dbg !5694
  %arrayidx = getelementptr i8, i8* %12, i64 3, !dbg !5694
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5695
  %conv4 = zext i8 %13 to i32, !dbg !5695
  %and = and i32 %conv4, -8, !dbg !5695
  %conv5 = trunc i32 %and to i8, !dbg !5695
  store i8 %conv5, i8* %arrayidx, align 1, !dbg !5695
  %14 = load i8, i8* %val, align 1, !dbg !5696
  %conv6 = zext i8 %14 to i32, !dbg !5696
  %and7 = and i32 7, %conv6, !dbg !5697
  %15 = load i8*, i8** %regs, align 8, !dbg !5698
  %arrayidx8 = getelementptr i8, i8* %15, i64 3, !dbg !5698
  %16 = load i8, i8* %arrayidx8, align 1, !dbg !5699
  %conv9 = zext i8 %16 to i32, !dbg !5699
  %or = or i32 %conv9, %and7, !dbg !5699
  %conv10 = trunc i32 %or to i8, !dbg !5699
  store i8 %conv10, i8* %arrayidx8, align 1, !dbg !5699
  br label %fail, !dbg !5698

fail:                                             ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !5700), !dbg !5701
  %17 = load i32, i32* %ret, align 4, !dbg !5702
  ret i32 %17, !dbg !5703
}

; Function Attrs: noredzone
declare dso_local i32 @tda18271_lookup_map(%struct.dvb_frontend*, i32, i32*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_calc_km(%struct.dvb_frontend* %fe, i32* %freq) #0 !dbg !5704 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %freq.addr = alloca i32*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  store i32* %freq, i32** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %freq.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5711
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5712
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5712
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5711
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5710
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5713, metadata !DIExpression()), !dbg !5714
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5715
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5716
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5715
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5714
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5717, metadata !DIExpression()), !dbg !5718
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5719, metadata !DIExpression()), !dbg !5720
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5721
  %5 = load i32*, i32** %freq.addr, align 8, !dbg !5722
  %call = call i32 @tda18271_lookup_map(%struct.dvb_frontend* %4, i32 3, i32* %5, i8* %val) #5, !dbg !5723
  store i32 %call, i32* %ret, align 4, !dbg !5720
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5724, metadata !DIExpression()), !dbg !5727
  %6 = load i32, i32* %ret, align 4, !dbg !5727
  %cmp = icmp slt i32 %6, 0, !dbg !5727
  %conv = zext i1 %cmp to i32, !dbg !5727
  store i32 %conv, i32* %__ret, align 4, !dbg !5727
  %7 = load i32, i32* %__ret, align 4, !dbg !5728
  %tobool = icmp ne i32 %7, 0, !dbg !5728
  br i1 %tobool, label %if.then, label %if.end, !dbg !5727

if.then:                                          ; preds = %entry
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5728
  %9 = load i32, i32* %ret, align 4, !dbg !5728
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tda18271_calc_km, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %9, i32 623) #5, !dbg !5728
  br label %if.end, !dbg !5728

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %__ret, align 4, !dbg !5727
  store i32 %10, i32* %tmp, align 4, !dbg !5728
  %11 = load i32, i32* %tmp, align 4, !dbg !5727
  %tobool1 = icmp ne i32 %11, 0, !dbg !5730
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5731

if.then2:                                         ; preds = %if.end
  br label %fail, !dbg !5732

if.end3:                                          ; preds = %if.end
  %12 = load i8*, i8** %regs, align 8, !dbg !5733
  %arrayidx = getelementptr i8, i8* %12, i64 28, !dbg !5733
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5734
  %conv4 = zext i8 %13 to i32, !dbg !5734
  %and = and i32 %conv4, -125, !dbg !5734
  %conv5 = trunc i32 %and to i8, !dbg !5734
  store i8 %conv5, i8* %arrayidx, align 1, !dbg !5734
  %14 = load i8, i8* %val, align 1, !dbg !5735
  %conv6 = zext i8 %14 to i32, !dbg !5735
  %and7 = and i32 124, %conv6, !dbg !5736
  %15 = load i8*, i8** %regs, align 8, !dbg !5737
  %arrayidx8 = getelementptr i8, i8* %15, i64 28, !dbg !5737
  %16 = load i8, i8* %arrayidx8, align 1, !dbg !5738
  %conv9 = zext i8 %16 to i32, !dbg !5738
  %or = or i32 %conv9, %and7, !dbg !5738
  %conv10 = trunc i32 %or to i8, !dbg !5738
  store i8 %conv10, i8* %arrayidx8, align 1, !dbg !5738
  br label %fail, !dbg !5737

fail:                                             ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !5739), !dbg !5740
  %17 = load i32, i32* %ret, align 4, !dbg !5741
  ret i32 %17, !dbg !5742
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_calc_rf_band(%struct.dvb_frontend* %fe, i32* %freq) #0 !dbg !5743 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %freq.addr = alloca i32*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5744, metadata !DIExpression()), !dbg !5745
  store i32* %freq, i32** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %freq.addr, metadata !5746, metadata !DIExpression()), !dbg !5747
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5748, metadata !DIExpression()), !dbg !5749
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5750
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5751
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5751
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5750
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5749
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5752, metadata !DIExpression()), !dbg !5753
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5754
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5755
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5754
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5753
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5756, metadata !DIExpression()), !dbg !5757
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5758, metadata !DIExpression()), !dbg !5759
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5760
  %5 = load i32*, i32** %freq.addr, align 8, !dbg !5761
  %call = call i32 @tda18271_lookup_map(%struct.dvb_frontend* %4, i32 6, i32* %5, i8* %val) #5, !dbg !5762
  store i32 %call, i32* %ret, align 4, !dbg !5759
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5763, metadata !DIExpression()), !dbg !5766
  %6 = load i32, i32* %ret, align 4, !dbg !5766
  %cmp = icmp slt i32 %6, 0, !dbg !5766
  %conv = zext i1 %cmp to i32, !dbg !5766
  store i32 %conv, i32* %__ret, align 4, !dbg !5766
  %7 = load i32, i32* %__ret, align 4, !dbg !5767
  %tobool = icmp ne i32 %7, 0, !dbg !5767
  br i1 %tobool, label %if.then, label %if.end, !dbg !5766

if.then:                                          ; preds = %entry
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5767
  %9 = load i32, i32* %ret, align 4, !dbg !5767
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda18271_calc_rf_band, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %9, i32 640) #5, !dbg !5767
  br label %if.end, !dbg !5767

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %__ret, align 4, !dbg !5766
  store i32 %10, i32* %tmp, align 4, !dbg !5767
  %11 = load i32, i32* %tmp, align 4, !dbg !5766
  %tobool1 = icmp ne i32 %11, 0, !dbg !5769
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5770

if.then2:                                         ; preds = %if.end
  br label %fail, !dbg !5771

if.end3:                                          ; preds = %if.end
  %12 = load i8*, i8** %regs, align 8, !dbg !5772
  %arrayidx = getelementptr i8, i8* %12, i64 4, !dbg !5772
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5773
  %conv4 = zext i8 %13 to i32, !dbg !5773
  %and = and i32 %conv4, -225, !dbg !5773
  %conv5 = trunc i32 %and to i8, !dbg !5773
  store i8 %conv5, i8* %arrayidx, align 1, !dbg !5773
  %14 = load i8, i8* %val, align 1, !dbg !5774
  %conv6 = zext i8 %14 to i32, !dbg !5774
  %shl = shl i32 %conv6, 5, !dbg !5775
  %and7 = and i32 224, %shl, !dbg !5776
  %15 = load i8*, i8** %regs, align 8, !dbg !5777
  %arrayidx8 = getelementptr i8, i8* %15, i64 4, !dbg !5777
  %16 = load i8, i8* %arrayidx8, align 1, !dbg !5778
  %conv9 = zext i8 %16 to i32, !dbg !5778
  %or = or i32 %conv9, %and7, !dbg !5778
  %conv10 = trunc i32 %or to i8, !dbg !5778
  store i8 %conv10, i8* %arrayidx8, align 1, !dbg !5778
  br label %fail, !dbg !5777

fail:                                             ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !5779), !dbg !5780
  %17 = load i32, i32* %ret, align 4, !dbg !5781
  ret i32 %17, !dbg !5782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_calc_gain_taper(%struct.dvb_frontend* %fe, i32* %freq) #0 !dbg !5783 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %freq.addr = alloca i32*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  store i32* %freq, i32** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %freq.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5788, metadata !DIExpression()), !dbg !5789
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5790
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5791
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5791
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5790
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5789
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5792, metadata !DIExpression()), !dbg !5793
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5794
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5795
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5794
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5793
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5796, metadata !DIExpression()), !dbg !5797
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5798, metadata !DIExpression()), !dbg !5799
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5800
  %5 = load i32*, i32** %freq.addr, align 8, !dbg !5801
  %call = call i32 @tda18271_lookup_map(%struct.dvb_frontend* %4, i32 7, i32* %5, i8* %val) #5, !dbg !5802
  store i32 %call, i32* %ret, align 4, !dbg !5799
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5803, metadata !DIExpression()), !dbg !5806
  %6 = load i32, i32* %ret, align 4, !dbg !5806
  %cmp = icmp slt i32 %6, 0, !dbg !5806
  %conv = zext i1 %cmp to i32, !dbg !5806
  store i32 %conv, i32* %__ret, align 4, !dbg !5806
  %7 = load i32, i32* %__ret, align 4, !dbg !5807
  %tobool = icmp ne i32 %7, 0, !dbg !5807
  br i1 %tobool, label %if.then, label %if.end, !dbg !5806

if.then:                                          ; preds = %entry
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5807
  %9 = load i32, i32* %ret, align 4, !dbg !5807
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda18271_calc_gain_taper, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %9, i32 657) #5, !dbg !5807
  br label %if.end, !dbg !5807

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %__ret, align 4, !dbg !5806
  store i32 %10, i32* %tmp, align 4, !dbg !5807
  %11 = load i32, i32* %tmp, align 4, !dbg !5806
  %tobool1 = icmp ne i32 %11, 0, !dbg !5809
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5810

if.then2:                                         ; preds = %if.end
  br label %fail, !dbg !5811

if.end3:                                          ; preds = %if.end
  %12 = load i8*, i8** %regs, align 8, !dbg !5812
  %arrayidx = getelementptr i8, i8* %12, i64 4, !dbg !5812
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5813
  %conv4 = zext i8 %13 to i32, !dbg !5813
  %and = and i32 %conv4, -32, !dbg !5813
  %conv5 = trunc i32 %and to i8, !dbg !5813
  store i8 %conv5, i8* %arrayidx, align 1, !dbg !5813
  %14 = load i8, i8* %val, align 1, !dbg !5814
  %conv6 = zext i8 %14 to i32, !dbg !5814
  %and7 = and i32 31, %conv6, !dbg !5815
  %15 = load i8*, i8** %regs, align 8, !dbg !5816
  %arrayidx8 = getelementptr i8, i8* %15, i64 4, !dbg !5816
  %16 = load i8, i8* %arrayidx8, align 1, !dbg !5817
  %conv9 = zext i8 %16 to i32, !dbg !5817
  %or = or i32 %conv9, %and7, !dbg !5817
  %conv10 = trunc i32 %or to i8, !dbg !5817
  store i8 %conv10, i8* %arrayidx8, align 1, !dbg !5817
  br label %fail, !dbg !5816

fail:                                             ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !5818), !dbg !5819
  %17 = load i32, i32* %ret, align 4, !dbg !5820
  ret i32 %17, !dbg !5821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_calc_ir_measure(%struct.dvb_frontend* %fe, i32* %freq) #0 !dbg !5822 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %freq.addr = alloca i32*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store i32* %freq, i32** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %freq.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5827, metadata !DIExpression()), !dbg !5828
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5829
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5830
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5830
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5829
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5828
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5831, metadata !DIExpression()), !dbg !5832
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5833
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5834
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5833
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5832
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5835, metadata !DIExpression()), !dbg !5836
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5837, metadata !DIExpression()), !dbg !5838
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5839
  %5 = load i32*, i32** %freq.addr, align 8, !dbg !5840
  %call = call i32 @tda18271_lookup_map(%struct.dvb_frontend* %4, i32 8, i32* %5, i8* %val) #5, !dbg !5841
  store i32 %call, i32* %ret, align 4, !dbg !5838
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5842, metadata !DIExpression()), !dbg !5845
  %6 = load i32, i32* %ret, align 4, !dbg !5845
  %cmp = icmp slt i32 %6, 0, !dbg !5845
  %conv = zext i1 %cmp to i32, !dbg !5845
  store i32 %conv, i32* %__ret, align 4, !dbg !5845
  %7 = load i32, i32* %__ret, align 4, !dbg !5846
  %tobool = icmp ne i32 %7, 0, !dbg !5846
  br i1 %tobool, label %if.then, label %if.end, !dbg !5845

if.then:                                          ; preds = %entry
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5846
  %9 = load i32, i32* %ret, align 4, !dbg !5846
  call void (%struct.tda18271_priv*, i8*, i8*, i8*, ...) @_tda_printk(%struct.tda18271_priv* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda18271_calc_ir_measure, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %9, i32 674) #5, !dbg !5846
  br label %if.end, !dbg !5846

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %__ret, align 4, !dbg !5845
  store i32 %10, i32* %tmp, align 4, !dbg !5846
  %11 = load i32, i32* %tmp, align 4, !dbg !5845
  %tobool1 = icmp ne i32 %11, 0, !dbg !5848
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5849

if.then2:                                         ; preds = %if.end
  br label %fail, !dbg !5850

if.end3:                                          ; preds = %if.end
  %12 = load i8*, i8** %regs, align 8, !dbg !5851
  %arrayidx = getelementptr i8, i8* %12, i64 7, !dbg !5851
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5852
  %conv4 = zext i8 %13 to i32, !dbg !5852
  %and = and i32 %conv4, -8, !dbg !5852
  %conv5 = trunc i32 %and to i8, !dbg !5852
  store i8 %conv5, i8* %arrayidx, align 1, !dbg !5852
  %14 = load i8, i8* %val, align 1, !dbg !5853
  %conv6 = zext i8 %14 to i32, !dbg !5853
  %and7 = and i32 7, %conv6, !dbg !5854
  %15 = load i8*, i8** %regs, align 8, !dbg !5855
  %arrayidx8 = getelementptr i8, i8* %15, i64 7, !dbg !5855
  %16 = load i8, i8* %arrayidx8, align 1, !dbg !5856
  %conv9 = zext i8 %16 to i32, !dbg !5856
  %or = or i32 %conv9, %and7, !dbg !5856
  %conv10 = trunc i32 %or to i8, !dbg !5856
  store i8 %conv10, i8* %arrayidx8, align 1, !dbg !5856
  br label %fail, !dbg !5855

fail:                                             ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !5857), !dbg !5858
  %17 = load i32, i32* %ret, align 4, !dbg !5859
  ret i32 %17, !dbg !5860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tda18271_calc_rf_cal(%struct.dvb_frontend* %fe, i32* %freq) #0 !dbg !5861 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %freq.addr = alloca i32*, align 8
  %priv = alloca %struct.tda18271_priv*, align 8
  %regs = alloca i8*, align 8
  %val = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5862, metadata !DIExpression()), !dbg !5863
  store i32* %freq, i32** %freq.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %freq.addr, metadata !5864, metadata !DIExpression()), !dbg !5865
  call void @llvm.dbg.declare(metadata %struct.tda18271_priv** %priv, metadata !5866, metadata !DIExpression()), !dbg !5867
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5868
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5869
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5869
  %2 = bitcast i8* %1 to %struct.tda18271_priv*, !dbg !5868
  store %struct.tda18271_priv* %2, %struct.tda18271_priv** %priv, align 8, !dbg !5867
  call void @llvm.dbg.declare(metadata i8** %regs, metadata !5870, metadata !DIExpression()), !dbg !5871
  %3 = load %struct.tda18271_priv*, %struct.tda18271_priv** %priv, align 8, !dbg !5872
  %tda18271_regs = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %3, i32 0, i32 0, !dbg !5873
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %tda18271_regs, i64 0, i64 0, !dbg !5872
  store i8* %arraydecay, i8** %regs, align 8, !dbg !5871
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5874, metadata !DIExpression()), !dbg !5875
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5876, metadata !DIExpression()), !dbg !5877
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5878
  %5 = load i32*, i32** %freq.addr, align 8, !dbg !5879
  %call = call i32 @tda18271_lookup_map(%struct.dvb_frontend* %4, i32 2, i32* %5, i8* %val) #5, !dbg !5880
  store i32 %call, i32* %ret, align 4, !dbg !5877
  %6 = load i32, i32* %ret, align 4, !dbg !5881
  %cmp = icmp slt i32 %6, 0, !dbg !5883
  br i1 %cmp, label %if.then, label %if.end, !dbg !5884

if.then:                                          ; preds = %entry
  br label %fail, !dbg !5885

if.end:                                           ; preds = %entry
  %7 = load i8, i8* %val, align 1, !dbg !5886
  %8 = load i8*, i8** %regs, align 8, !dbg !5887
  %arrayidx = getelementptr i8, i8* %8, i64 29, !dbg !5887
  store i8 %7, i8* %arrayidx, align 1, !dbg !5888
  br label %fail, !dbg !5887

fail:                                             ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !5889), !dbg !5890
  %9 = load i32, i32* %ret, align 4, !dbg !5891
  ret i32 %9, !dbg !5892
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @__i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!331, !332, !333, !334}
!llvm.ident = !{!335}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/media/tuners/tda18271-common.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !38, !48, !55, !71, !76, !80, !85, !100, !111, !124, !131, !136, !142, !163, !169, !173, !181, !188, !193, !199, !205, !214, !222, !228, !234, !241, !249, !255, !269, !281, !286, !290, !295, !300, !305, !311, !316, !320}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_caps", file: !4, line: 72, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/uapi/linux/dvb/frontend.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!7 = !DIEnumerator(name: "FE_IS_STUPID", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "FE_CAN_INVERSION_AUTO", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "FE_CAN_FEC_1_2", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "FE_CAN_FEC_2_3", value: 4, isUnsigned: true)
!11 = !DIEnumerator(name: "FE_CAN_FEC_3_4", value: 8, isUnsigned: true)
!12 = !DIEnumerator(name: "FE_CAN_FEC_4_5", value: 16, isUnsigned: true)
!13 = !DIEnumerator(name: "FE_CAN_FEC_5_6", value: 32, isUnsigned: true)
!14 = !DIEnumerator(name: "FE_CAN_FEC_6_7", value: 64, isUnsigned: true)
!15 = !DIEnumerator(name: "FE_CAN_FEC_7_8", value: 128, isUnsigned: true)
!16 = !DIEnumerator(name: "FE_CAN_FEC_8_9", value: 256, isUnsigned: true)
!17 = !DIEnumerator(name: "FE_CAN_FEC_AUTO", value: 512, isUnsigned: true)
!18 = !DIEnumerator(name: "FE_CAN_QPSK", value: 1024, isUnsigned: true)
!19 = !DIEnumerator(name: "FE_CAN_QAM_16", value: 2048, isUnsigned: true)
!20 = !DIEnumerator(name: "FE_CAN_QAM_32", value: 4096, isUnsigned: true)
!21 = !DIEnumerator(name: "FE_CAN_QAM_64", value: 8192, isUnsigned: true)
!22 = !DIEnumerator(name: "FE_CAN_QAM_128", value: 16384, isUnsigned: true)
!23 = !DIEnumerator(name: "FE_CAN_QAM_256", value: 32768, isUnsigned: true)
!24 = !DIEnumerator(name: "FE_CAN_QAM_AUTO", value: 65536, isUnsigned: true)
!25 = !DIEnumerator(name: "FE_CAN_TRANSMISSION_MODE_AUTO", value: 131072, isUnsigned: true)
!26 = !DIEnumerator(name: "FE_CAN_BANDWIDTH_AUTO", value: 262144, isUnsigned: true)
!27 = !DIEnumerator(name: "FE_CAN_GUARD_INTERVAL_AUTO", value: 524288, isUnsigned: true)
!28 = !DIEnumerator(name: "FE_CAN_HIERARCHY_AUTO", value: 1048576, isUnsigned: true)
!29 = !DIEnumerator(name: "FE_CAN_8VSB", value: 2097152, isUnsigned: true)
!30 = !DIEnumerator(name: "FE_CAN_16VSB", value: 4194304, isUnsigned: true)
!31 = !DIEnumerator(name: "FE_HAS_EXTENDED_CAPS", value: 8388608, isUnsigned: true)
!32 = !DIEnumerator(name: "FE_CAN_MULTISTREAM", value: 67108864, isUnsigned: true)
!33 = !DIEnumerator(name: "FE_CAN_TURBO_FEC", value: 134217728, isUnsigned: true)
!34 = !DIEnumerator(name: "FE_CAN_2G_MODULATION", value: 268435456, isUnsigned: true)
!35 = !DIEnumerator(name: "FE_NEEDS_BENDING", value: 536870912, isUnsigned: true)
!36 = !DIEnumerator(name: "FE_CAN_RECOVER", value: 1073741824, isUnsigned: true)
!37 = !DIEnumerator(name: "FE_CAN_MUTE_TS", value: 2147483648, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_status", file: !4, line: 252, baseType: !5, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47}
!40 = !DIEnumerator(name: "FE_NONE", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "FE_HAS_SIGNAL", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "FE_HAS_CARRIER", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "FE_HAS_VITERBI", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "FE_HAS_SYNC", value: 8, isUnsigned: true)
!45 = !DIEnumerator(name: "FE_HAS_LOCK", value: 16, isUnsigned: true)
!46 = !DIEnumerator(name: "FE_TIMEDOUT", value: 32, isUnsigned: true)
!47 = !DIEnumerator(name: "FE_REINIT", value: 64, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_algo", file: !49, line: 144, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/media/dvb_frontend.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "DVBFE_ALGO_HW", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "DVBFE_ALGO_SW", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "DVBFE_ALGO_CUSTOM", value: 4, isUnsigned: true)
!54 = !DIEnumerator(name: "DVBFE_ALGO_RECOVERY", value: 2147483648, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_modulation", file: !4, line: 338, baseType: !5, size: 32, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!57 = !DIEnumerator(name: "QPSK", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "QAM_16", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "QAM_32", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "QAM_64", value: 3, isUnsigned: true)
!61 = !DIEnumerator(name: "QAM_128", value: 4, isUnsigned: true)
!62 = !DIEnumerator(name: "QAM_256", value: 5, isUnsigned: true)
!63 = !DIEnumerator(name: "QAM_AUTO", value: 6, isUnsigned: true)
!64 = !DIEnumerator(name: "VSB_8", value: 7, isUnsigned: true)
!65 = !DIEnumerator(name: "VSB_16", value: 8, isUnsigned: true)
!66 = !DIEnumerator(name: "PSK_8", value: 9, isUnsigned: true)
!67 = !DIEnumerator(name: "APSK_16", value: 10, isUnsigned: true)
!68 = !DIEnumerator(name: "APSK_32", value: 11, isUnsigned: true)
!69 = !DIEnumerator(name: "DQPSK", value: 12, isUnsigned: true)
!70 = !DIEnumerator(name: "QAM_4_NR", value: 13, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_voltage", file: !4, line: 208, baseType: !5, size: 32, elements: !72)
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "SEC_VOLTAGE_13", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "SEC_VOLTAGE_18", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "SEC_VOLTAGE_OFF", value: 2, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_tone_mode", file: !4, line: 220, baseType: !5, size: 32, elements: !77)
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "SEC_TONE_ON", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "SEC_TONE_OFF", value: 1, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_spectral_inversion", file: !4, line: 276, baseType: !5, size: 32, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "INVERSION_OFF", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "INVERSION_ON", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "INVERSION_AUTO", value: 2, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_code_rate", file: !4, line: 302, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!87 = !DIEnumerator(name: "FEC_NONE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "FEC_1_2", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "FEC_2_3", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "FEC_3_4", value: 3, isUnsigned: true)
!91 = !DIEnumerator(name: "FEC_4_5", value: 4, isUnsigned: true)
!92 = !DIEnumerator(name: "FEC_5_6", value: 5, isUnsigned: true)
!93 = !DIEnumerator(name: "FEC_6_7", value: 6, isUnsigned: true)
!94 = !DIEnumerator(name: "FEC_7_8", value: 7, isUnsigned: true)
!95 = !DIEnumerator(name: "FEC_8_9", value: 8, isUnsigned: true)
!96 = !DIEnumerator(name: "FEC_AUTO", value: 9, isUnsigned: true)
!97 = !DIEnumerator(name: "FEC_3_5", value: 10, isUnsigned: true)
!98 = !DIEnumerator(name: "FEC_9_10", value: 11, isUnsigned: true)
!99 = !DIEnumerator(name: "FEC_2_5", value: 12, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_transmit_mode", file: !4, line: 381, baseType: !5, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110}
!102 = !DIEnumerator(name: "TRANSMISSION_MODE_2K", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "TRANSMISSION_MODE_8K", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "TRANSMISSION_MODE_AUTO", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "TRANSMISSION_MODE_4K", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "TRANSMISSION_MODE_1K", value: 4, isUnsigned: true)
!107 = !DIEnumerator(name: "TRANSMISSION_MODE_16K", value: 5, isUnsigned: true)
!108 = !DIEnumerator(name: "TRANSMISSION_MODE_32K", value: 6, isUnsigned: true)
!109 = !DIEnumerator(name: "TRANSMISSION_MODE_C1", value: 7, isUnsigned: true)
!110 = !DIEnumerator(name: "TRANSMISSION_MODE_C3780", value: 8, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_guard_interval", file: !4, line: 410, baseType: !5, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!113 = !DIEnumerator(name: "GUARD_INTERVAL_1_32", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "GUARD_INTERVAL_1_16", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "GUARD_INTERVAL_1_8", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "GUARD_INTERVAL_1_4", value: 3, isUnsigned: true)
!117 = !DIEnumerator(name: "GUARD_INTERVAL_AUTO", value: 4, isUnsigned: true)
!118 = !DIEnumerator(name: "GUARD_INTERVAL_1_128", value: 5, isUnsigned: true)
!119 = !DIEnumerator(name: "GUARD_INTERVAL_19_128", value: 6, isUnsigned: true)
!120 = !DIEnumerator(name: "GUARD_INTERVAL_19_256", value: 7, isUnsigned: true)
!121 = !DIEnumerator(name: "GUARD_INTERVAL_PN420", value: 8, isUnsigned: true)
!122 = !DIEnumerator(name: "GUARD_INTERVAL_PN595", value: 9, isUnsigned: true)
!123 = !DIEnumerator(name: "GUARD_INTERVAL_PN945", value: 10, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_hierarchy", file: !4, line: 434, baseType: !5, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129, !130}
!126 = !DIEnumerator(name: "HIERARCHY_NONE", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "HIERARCHY_1", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "HIERARCHY_2", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "HIERARCHY_4", value: 3, isUnsigned: true)
!130 = !DIEnumerator(name: "HIERARCHY_AUTO", value: 4, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_pilot", file: !4, line: 562, baseType: !5, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "PILOT_ON", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "PILOT_OFF", value: 1, isUnsigned: true)
!135 = !DIEnumerator(name: "PILOT_AUTO", value: 2, isUnsigned: true)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_rolloff", file: !4, line: 579, baseType: !5, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141}
!138 = !DIEnumerator(name: "ROLLOFF_35", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "ROLLOFF_20", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "ROLLOFF_25", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "ROLLOFF_AUTO", value: 3, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_delivery_system", file: !4, line: 628, baseType: !5, size: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!144 = !DIEnumerator(name: "SYS_UNDEFINED", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "SYS_DVBC_ANNEX_A", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "SYS_DVBC_ANNEX_B", value: 2, isUnsigned: true)
!147 = !DIEnumerator(name: "SYS_DVBT", value: 3, isUnsigned: true)
!148 = !DIEnumerator(name: "SYS_DSS", value: 4, isUnsigned: true)
!149 = !DIEnumerator(name: "SYS_DVBS", value: 5, isUnsigned: true)
!150 = !DIEnumerator(name: "SYS_DVBS2", value: 6, isUnsigned: true)
!151 = !DIEnumerator(name: "SYS_DVBH", value: 7, isUnsigned: true)
!152 = !DIEnumerator(name: "SYS_ISDBT", value: 8, isUnsigned: true)
!153 = !DIEnumerator(name: "SYS_ISDBS", value: 9, isUnsigned: true)
!154 = !DIEnumerator(name: "SYS_ISDBC", value: 10, isUnsigned: true)
!155 = !DIEnumerator(name: "SYS_ATSC", value: 11, isUnsigned: true)
!156 = !DIEnumerator(name: "SYS_ATSCMH", value: 12, isUnsigned: true)
!157 = !DIEnumerator(name: "SYS_DTMB", value: 13, isUnsigned: true)
!158 = !DIEnumerator(name: "SYS_CMMB", value: 14, isUnsigned: true)
!159 = !DIEnumerator(name: "SYS_DAB", value: 15, isUnsigned: true)
!160 = !DIEnumerator(name: "SYS_DVBT2", value: 16, isUnsigned: true)
!161 = !DIEnumerator(name: "SYS_TURBO", value: 17, isUnsigned: true)
!162 = !DIEnumerator(name: "SYS_DVBC_ANNEX_C", value: 18, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_interleaving", file: !4, line: 451, baseType: !5, size: 32, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIEnumerator(name: "INTERLEAVING_NONE", value: 0, isUnsigned: true)
!166 = !DIEnumerator(name: "INTERLEAVING_AUTO", value: 1, isUnsigned: true)
!167 = !DIEnumerator(name: "INTERLEAVING_240", value: 2, isUnsigned: true)
!168 = !DIEnumerator(name: "INTERLEAVING_720", value: 3, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_mini_cmd", file: !4, line: 233, baseType: !5, size: 32, elements: !170)
!170 = !{!171, !172}
!171 = !DIEnumerator(name: "SEC_MINI_A", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "SEC_MINI_B", value: 1, isUnsigned: true)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_search", file: !49, line: 173, baseType: !5, size: 32, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_SUCCESS", value: 1, isUnsigned: true)
!176 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ASLEEP", value: 2, isUnsigned: true)
!177 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_FAILED", value: 4, isUnsigned: true)
!178 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_INVALID", value: 8, isUnsigned: true)
!179 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_AGAIN", value: 16, isUnsigned: true)
!180 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ERROR", value: 2147483648, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !182, line: 15, baseType: !5, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !185, !186, !187}
!184 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !189, line: 65, baseType: !5, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!190 = !{!191, !192}
!191 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !194, line: 16, baseType: !5, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!198 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !200, line: 54, baseType: !5, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !203, !204}
!202 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!203 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!204 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !206, line: 296, baseType: !5, size: 32, elements: !207)
!206 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!209 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!210 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!211 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!212 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!213 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !215, line: 9, baseType: !5, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218, !219, !220, !221}
!217 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!218 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!219 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!220 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!221 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !223, line: 26, baseType: !5, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !226, !227}
!225 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!226 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!227 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !229, line: 44, baseType: !5, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!232 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!233 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !235, line: 343, baseType: !5, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!236 = !{!237, !238, !239, !240}
!237 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !242, line: 524, baseType: !5, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!248 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !242, line: 502, baseType: !5, size: 32, elements: !250)
!250 = !{!251, !252, !253, !254}
!251 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!252 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!253 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!254 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !256, line: 76, baseType: !5, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!258 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!259 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!260 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!261 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!262 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!263 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!264 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!265 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!266 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!267 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!268 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvb_device_type", file: !270, line: 57, baseType: !5, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/media/dvbdev.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280}
!272 = !DIEnumerator(name: "DVB_DEVICE_SEC", value: 0, isUnsigned: true)
!273 = !DIEnumerator(name: "DVB_DEVICE_FRONTEND", value: 1, isUnsigned: true)
!274 = !DIEnumerator(name: "DVB_DEVICE_DEMUX", value: 2, isUnsigned: true)
!275 = !DIEnumerator(name: "DVB_DEVICE_DVR", value: 3, isUnsigned: true)
!276 = !DIEnumerator(name: "DVB_DEVICE_CA", value: 4, isUnsigned: true)
!277 = !DIEnumerator(name: "DVB_DEVICE_NET", value: 5, isUnsigned: true)
!278 = !DIEnumerator(name: "DVB_DEVICE_VIDEO", value: 6, isUnsigned: true)
!279 = !DIEnumerator(name: "DVB_DEVICE_AUDIO", value: 7, isUnsigned: true)
!280 = !DIEnumerator(name: "DVB_DEVICE_OSD", value: 8, isUnsigned: true)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda18271_mode", file: !282, line: 107, baseType: !5, size: 32, elements: !283)
!282 = !DIFile(filename: "drivers/media/tuners/tda18271.h", directory: "/home/lizy2001/genbc/linux")
!283 = !{!284, !285}
!284 = !DIEnumerator(name: "TDA18271_ANALOG", value: 0, isUnsigned: true)
!285 = !DIEnumerator(name: "TDA18271_DIGITAL", value: 1, isUnsigned: true)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda18271_role", file: !282, line: 48, baseType: !5, size: 32, elements: !287)
!287 = !{!288, !289}
!288 = !DIEnumerator(name: "TDA18271_MASTER", value: 0, isUnsigned: true)
!289 = !DIEnumerator(name: "TDA18271_SLAVE", value: 1, isUnsigned: true)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda18271_i2c_gate", file: !282, line: 53, baseType: !5, size: 32, elements: !291)
!291 = !{!292, !293, !294}
!292 = !DIEnumerator(name: "TDA18271_GATE_AUTO", value: 0, isUnsigned: true)
!293 = !DIEnumerator(name: "TDA18271_GATE_ANALOG", value: 1, isUnsigned: true)
!294 = !DIEnumerator(name: "TDA18271_GATE_DIGITAL", value: 2, isUnsigned: true)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda18271_ver", file: !296, line: 86, baseType: !5, size: 32, elements: !297)
!296 = !DIFile(filename: "drivers/media/tuners/tda18271-priv.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !299}
!298 = !DIEnumerator(name: "TDA18271HDC1", value: 0, isUnsigned: true)
!299 = !DIEnumerator(name: "TDA18271HDC2", value: 1, isUnsigned: true)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda18271_output_options", file: !282, line: 59, baseType: !5, size: 32, elements: !301)
!301 = !{!302, !303, !304}
!302 = !DIEnumerator(name: "TDA18271_OUTPUT_LT_XT_ON", value: 0, isUnsigned: true)
!303 = !DIEnumerator(name: "TDA18271_OUTPUT_LT_OFF", value: 1, isUnsigned: true)
!304 = !DIEnumerator(name: "TDA18271_OUTPUT_XT_OFF", value: 2, isUnsigned: true)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda18271_small_i2c", file: !282, line: 70, baseType: !5, size: 32, elements: !306)
!306 = !{!307, !308, !309, !310}
!307 = !DIEnumerator(name: "TDA18271_39_BYTE_CHUNK_INIT", value: 0, isUnsigned: true)
!308 = !DIEnumerator(name: "TDA18271_16_BYTE_CHUNK_INIT", value: 16, isUnsigned: true)
!309 = !DIEnumerator(name: "TDA18271_08_BYTE_CHUNK_INIT", value: 8, isUnsigned: true)
!310 = !DIEnumerator(name: "TDA18271_03_BYTE_CHUNK_INIT", value: 3, isUnsigned: true)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !312, line: 10, baseType: !5, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314, !315}
!314 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!315 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda18271_pll", file: !296, line: 79, baseType: !5, size: 32, elements: !317)
!317 = !{!318, !319}
!318 = !DIEnumerator(name: "TDA18271_MAIN_PLL", value: 0, isUnsigned: true)
!319 = !DIEnumerator(name: "TDA18271_CAL_PLL", value: 1, isUnsigned: true)
!320 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda18271_map_type", file: !296, line: 164, baseType: !5, size: 32, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330}
!322 = !DIEnumerator(name: "MAIN_PLL", value: 0, isUnsigned: true)
!323 = !DIEnumerator(name: "CAL_PLL", value: 1, isUnsigned: true)
!324 = !DIEnumerator(name: "RF_CAL", value: 2, isUnsigned: true)
!325 = !DIEnumerator(name: "RF_CAL_KMCO", value: 3, isUnsigned: true)
!326 = !DIEnumerator(name: "RF_CAL_DC_OVER_DT", value: 4, isUnsigned: true)
!327 = !DIEnumerator(name: "BP_FILTER", value: 5, isUnsigned: true)
!328 = !DIEnumerator(name: "RF_BAND", value: 6, isUnsigned: true)
!329 = !DIEnumerator(name: "GAIN_TAPER", value: 7, isUnsigned: true)
!330 = !DIEnumerator(name: "IR_MEASURE", value: 8, isUnsigned: true)
!331 = !{i32 7, !"Dwarf Version", i32 4}
!332 = !{i32 2, !"Debug Info Version", i32 3}
!333 = !{i32 1, !"wchar_size", i32 2}
!334 = !{i32 1, !"Code Model", i32 2}
!335 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!336 = distinct !DISubprogram(name: "tda18271_read_regs", scope: !1, file: !1, line: 109, type: !337, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !340}
!339 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !49, line: 686, size: 10240, elements: !342)
!342 = !{!343, !358, !663, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4253, !4254}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !341, file: !49, line: 687, baseType: !344, size: 32)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !345, line: 19, size: 32, elements: !346)
!345 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !344, file: !345, line: 20, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !349, line: 113, baseType: !350)
!349 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !349, line: 111, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !350, file: !349, line: 112, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !354, line: 168, baseType: !355)
!354 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 166, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !355, file: !354, line: 167, baseType: !339, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !341, file: !49, line: 688, baseType: !359, size: 6016, offset: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !49, line: 435, size: 6016, elements: !360)
!360 = !{!361, !381, !388, !392, !393, !394, !396, !397, !403, !411, !415, !416, !426, !511, !515, !520, !528, !529, !530, !531, !543, !554, !558, !562, !566, !571, !576, !580, !581, !582, !586, !644}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !359, file: !49, line: 436, baseType: !362, size: 1280)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !49, line: 338, size: 1280, elements: !363)
!363 = !{!364, !369, !374, !375, !376, !377, !378, !379, !380}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !49, line: 339, baseType: !365, size: 1024)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 1024, elements: !367)
!366 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!367 = !{!368}
!368 = !DISubrange(count: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !362, file: !49, line: 340, baseType: !370, size: 32, offset: 1024)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !371, line: 21, baseType: !372)
!371 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !373, line: 27, baseType: !5)
!373 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!374 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !362, file: !49, line: 341, baseType: !370, size: 32, offset: 1056)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !362, file: !49, line: 342, baseType: !370, size: 32, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !362, file: !49, line: 343, baseType: !370, size: 32, offset: 1120)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !362, file: !49, line: 344, baseType: !370, size: 32, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !362, file: !49, line: 345, baseType: !370, size: 32, offset: 1184)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !362, file: !49, line: 346, baseType: !370, size: 32, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !362, file: !49, line: 347, baseType: !3, size: 32, offset: 1248)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !359, file: !49, line: 438, baseType: !382, size: 64, offset: 1280)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 64, elements: !386)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !371, line: 17, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !373, line: 21, baseType: !385)
!385 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !{!387}
!387 = !DISubrange(count: 8)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !359, file: !49, line: 440, baseType: !389, size: 64, offset: 1344)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !340}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !359, file: !49, line: 441, baseType: !389, size: 64, offset: 1408)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !359, file: !49, line: 442, baseType: !389, size: 64, offset: 1472)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !359, file: !49, line: 444, baseType: !395, size: 64, offset: 1536)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !359, file: !49, line: 445, baseType: !395, size: 64, offset: 1600)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !49, line: 447, baseType: !398, size: 64, offset: 1664)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!339, !340, !401, !339}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !359, file: !49, line: 450, baseType: !404, size: 64, offset: 1728)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!339, !340, !407, !5, !409, !410}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !354, line: 30, baseType: !408)
!408 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !359, file: !49, line: 457, baseType: !412, size: 64, offset: 1792)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!48, !340}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !359, file: !49, line: 460, baseType: !395, size: 64, offset: 1856)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !359, file: !49, line: 461, baseType: !417, size: 64, offset: 1920)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!339, !340, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !49, line: 69, size: 96, elements: !422)
!422 = !{!423, !424, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !421, file: !49, line: 70, baseType: !339, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !421, file: !49, line: 71, baseType: !339, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !421, file: !49, line: 72, baseType: !339, size: 32, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !359, file: !49, line: 463, baseType: !427, size: 64, offset: 1984)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!339, !340, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !49, line: 586, size: 3648, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !504, !505, !506, !507, !508, !509, !510}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !431, file: !49, line: 587, baseType: !370, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !431, file: !49, line: 588, baseType: !55, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !431, file: !49, line: 590, baseType: !71, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !431, file: !49, line: 591, baseType: !76, size: 32, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !431, file: !49, line: 592, baseType: !80, size: 32, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !431, file: !49, line: 593, baseType: !85, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !431, file: !49, line: 594, baseType: !100, size: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !431, file: !49, line: 595, baseType: !370, size: 32, offset: 224)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !431, file: !49, line: 596, baseType: !111, size: 32, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !431, file: !49, line: 597, baseType: !124, size: 32, offset: 288)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !431, file: !49, line: 598, baseType: !370, size: 32, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !431, file: !49, line: 599, baseType: !85, size: 32, offset: 352)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !431, file: !49, line: 600, baseType: !85, size: 32, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !431, file: !49, line: 602, baseType: !131, size: 32, offset: 416)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !431, file: !49, line: 603, baseType: !136, size: 32, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !431, file: !49, line: 605, baseType: !142, size: 32, offset: 480)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !431, file: !49, line: 607, baseType: !163, size: 32, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !431, file: !49, line: 610, baseType: !383, size: 8, offset: 544)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !431, file: !49, line: 611, baseType: !383, size: 8, offset: 552)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !431, file: !49, line: 612, baseType: !383, size: 8, offset: 560)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !431, file: !49, line: 613, baseType: !370, size: 32, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !431, file: !49, line: 614, baseType: !370, size: 32, offset: 608)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !431, file: !49, line: 615, baseType: !383, size: 8, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !431, file: !49, line: 621, baseType: !457, size: 384, offset: 672)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 384, elements: !464)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !49, line: 616, size: 128, elements: !459)
!459 = !{!460, !461, !462, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !458, file: !49, line: 617, baseType: !383, size: 8)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !458, file: !49, line: 618, baseType: !85, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !458, file: !49, line: 619, baseType: !55, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !458, file: !49, line: 620, baseType: !383, size: 8, offset: 96)
!464 = !{!465}
!465 = !DISubrange(count: 3)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !431, file: !49, line: 624, baseType: !370, size: 32, offset: 1056)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !431, file: !49, line: 627, baseType: !370, size: 32, offset: 1088)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !431, file: !49, line: 630, baseType: !383, size: 8, offset: 1120)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !431, file: !49, line: 631, baseType: !383, size: 8, offset: 1128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !431, file: !49, line: 632, baseType: !383, size: 8, offset: 1136)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !431, file: !49, line: 633, baseType: !383, size: 8, offset: 1144)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !431, file: !49, line: 634, baseType: !383, size: 8, offset: 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !431, file: !49, line: 635, baseType: !383, size: 8, offset: 1160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !431, file: !49, line: 637, baseType: !383, size: 8, offset: 1168)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !431, file: !49, line: 638, baseType: !383, size: 8, offset: 1176)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !431, file: !49, line: 639, baseType: !383, size: 8, offset: 1184)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !431, file: !49, line: 640, baseType: !383, size: 8, offset: 1192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !431, file: !49, line: 641, baseType: !383, size: 8, offset: 1200)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !431, file: !49, line: 642, baseType: !383, size: 8, offset: 1208)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !431, file: !49, line: 643, baseType: !383, size: 8, offset: 1216)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !431, file: !49, line: 644, baseType: !383, size: 8, offset: 1224)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !431, file: !49, line: 645, baseType: !383, size: 8, offset: 1232)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !431, file: !49, line: 647, baseType: !370, size: 32, offset: 1248)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !431, file: !49, line: 650, baseType: !485, size: 296, offset: 1280)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !4, line: 825, size: 296, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !485, file: !4, line: 826, baseType: !384, size: 8)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !485, file: !4, line: 827, baseType: !489, size: 288, offset: 8)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 288, elements: !502)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !4, line: 803, size: 72, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !490, file: !4, line: 804, baseType: !384, size: 8)
!493 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !4, line: 805, baseType: !494, size: 64, offset: 8)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !4, line: 805, size: 64, elements: !495)
!495 = !{!496, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !494, file: !4, line: 806, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !373, line: 31, baseType: !498)
!498 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !494, file: !4, line: 807, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !373, line: 30, baseType: !501)
!501 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!502 = !{!503}
!503 = !DISubrange(count: 4)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !431, file: !49, line: 651, baseType: !485, size: 296, offset: 1576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !431, file: !49, line: 652, baseType: !485, size: 296, offset: 1872)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !431, file: !49, line: 653, baseType: !485, size: 296, offset: 2168)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !431, file: !49, line: 654, baseType: !485, size: 296, offset: 2464)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !431, file: !49, line: 655, baseType: !485, size: 296, offset: 2760)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !431, file: !49, line: 656, baseType: !485, size: 296, offset: 3056)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !431, file: !49, line: 657, baseType: !485, size: 296, offset: 3352)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !359, file: !49, line: 466, baseType: !512, size: 64, offset: 2048)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!339, !340, !410}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !359, file: !49, line: 467, baseType: !516, size: 64, offset: 2112)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!339, !340, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !359, file: !49, line: 468, baseType: !521, size: 64, offset: 2176)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!339, !340, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !371, line: 19, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !373, line: 24, baseType: !527)
!527 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !359, file: !49, line: 469, baseType: !521, size: 64, offset: 2240)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !359, file: !49, line: 470, baseType: !516, size: 64, offset: 2304)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !359, file: !49, line: 472, baseType: !395, size: 64, offset: 2368)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !359, file: !49, line: 473, baseType: !532, size: 64, offset: 2432)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!339, !340, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !4, line: 173, size: 56, elements: !537)
!537 = !{!538, !542}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !536, file: !4, line: 174, baseType: !539, size: 48)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 48, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 6)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !536, file: !4, line: 175, baseType: !384, size: 8, offset: 48)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !359, file: !49, line: 474, baseType: !544, size: 64, offset: 2496)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!339, !340, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !4, line: 195, size: 96, elements: !549)
!549 = !{!550, !552, !553}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !548, file: !4, line: 196, baseType: !551, size: 32)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 32, elements: !502)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !548, file: !4, line: 197, baseType: !384, size: 8, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !548, file: !4, line: 198, baseType: !339, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !359, file: !49, line: 475, baseType: !555, size: 64, offset: 2560)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!339, !340, !169}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !359, file: !49, line: 477, baseType: !559, size: 64, offset: 2624)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!339, !340, !76}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !359, file: !49, line: 478, baseType: !563, size: 64, offset: 2688)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!339, !340, !71}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !359, file: !49, line: 480, baseType: !567, size: 64, offset: 2752)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!339, !340, !570}
!570 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !359, file: !49, line: 481, baseType: !572, size: 64, offset: 2816)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!339, !340, !575}
!575 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !359, file: !49, line: 482, baseType: !577, size: 64, offset: 2880)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!339, !340, !339}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !359, file: !49, line: 483, baseType: !577, size: 64, offset: 2944)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !359, file: !49, line: 484, baseType: !395, size: 64, offset: 3008)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !359, file: !49, line: 490, baseType: !583, size: 64, offset: 3072)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!173, !340}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !359, file: !49, line: 492, baseType: !587, size: 2304, offset: 3136)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !49, line: 226, size: 2304, elements: !588)
!588 = !{!589, !599, !600, !601, !602, !603, !604, !605, !617, !622, !623, !624, !625, !626, !627, !634, !639, !643}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !587, file: !49, line: 228, baseType: !590, size: 1216)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !49, line: 88, size: 1216, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !590, file: !49, line: 89, baseType: !365, size: 1024)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !590, file: !49, line: 91, baseType: !370, size: 32, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !590, file: !49, line: 92, baseType: !370, size: 32, offset: 1056)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !590, file: !49, line: 93, baseType: !370, size: 32, offset: 1088)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !590, file: !49, line: 95, baseType: !370, size: 32, offset: 1120)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !590, file: !49, line: 96, baseType: !370, size: 32, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !590, file: !49, line: 97, baseType: !370, size: 32, offset: 1184)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !587, file: !49, line: 230, baseType: !389, size: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !587, file: !49, line: 231, baseType: !395, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !587, file: !49, line: 232, baseType: !395, size: 64, offset: 1344)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !587, file: !49, line: 233, baseType: !395, size: 64, offset: 1408)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !587, file: !49, line: 234, baseType: !395, size: 64, offset: 1472)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !587, file: !49, line: 237, baseType: !395, size: 64, offset: 1536)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !587, file: !49, line: 238, baseType: !606, size: 64, offset: 1600)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!339, !340, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !49, line: 114, size: 192, elements: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !610, file: !49, line: 115, baseType: !5, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !610, file: !49, line: 116, baseType: !5, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !610, file: !49, line: 117, baseType: !5, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !610, file: !49, line: 118, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !371, line: 23, baseType: !497)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !587, file: !49, line: 240, baseType: !618, size: 64, offset: 1664)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!339, !340, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !587, file: !49, line: 242, baseType: !516, size: 64, offset: 1728)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !587, file: !49, line: 243, baseType: !516, size: 64, offset: 1792)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !587, file: !49, line: 244, baseType: !516, size: 64, offset: 1856)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !587, file: !49, line: 248, baseType: !516, size: 64, offset: 1920)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !587, file: !49, line: 249, baseType: !521, size: 64, offset: 1984)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !587, file: !49, line: 250, baseType: !628, size: 64, offset: 2048)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!339, !340, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !371, line: 20, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !373, line: 26, baseType: !339)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !587, file: !49, line: 258, baseType: !635, size: 64, offset: 2112)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!339, !340, !638, !339}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !587, file: !49, line: 267, baseType: !640, size: 64, offset: 2176)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!339, !340, !370}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !587, file: !49, line: 268, baseType: !640, size: 64, offset: 2240)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !359, file: !49, line: 493, baseType: !645, size: 576, offset: 5440)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !49, line: 302, size: 576, elements: !646)
!646 = !{!647, !652, !656, !657, !658, !659, !660, !661, !662}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !645, file: !49, line: 304, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !49, line: 276, size: 64, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !648, file: !49, line: 277, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !645, file: !49, line: 306, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !340, !609}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !645, file: !49, line: 308, baseType: !521, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !645, file: !49, line: 309, baseType: !628, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !645, file: !49, line: 310, baseType: !389, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !645, file: !49, line: 311, baseType: !389, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !645, file: !49, line: 312, baseType: !389, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !645, file: !49, line: 313, baseType: !577, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !645, file: !49, line: 316, baseType: !618, size: 64, offset: 512)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !341, file: !49, line: 689, baseType: !664, size: 64, offset: 6080)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !270, line: 101, size: 960, elements: !666)
!666 = !{!667, !668, !674, !675, !678, !680, !681, !4221, !4222, !4223, !4242}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !665, file: !270, line: 102, baseType: !339, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !665, file: !270, line: 103, baseType: !669, size: 128, offset: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !354, line: 178, size: 128, elements: !670)
!670 = !{!671, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !354, line: 179, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !669, file: !354, line: 179, baseType: !672, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !665, file: !270, line: 104, baseType: !669, size: 128, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !665, file: !270, line: 105, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !665, file: !270, line: 106, baseType: !679, size: 48, offset: 384)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 48, elements: !540)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !665, file: !270, line: 107, baseType: !621, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !665, file: !270, line: 109, baseType: !682, size: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !235, line: 461, size: 5568, elements: !684)
!684 = !{!685, !3678, !3679, !3682, !3683, !3734, !3822, !3823, !3824, !3825, !3826, !3835, !3940, !3953, !4148, !4149, !4153, !4155, !4156, !4157, !4161, !4167, !4168, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4209, !4210, !4211, !4214, !4217, !4218, !4219, !4220}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !683, file: !235, line: 462, baseType: !686, size: 512)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !687, line: 64, size: 512, elements: !688)
!687 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690, !691, !693, !750, !3533, !3672, !3673, !3674, !3675, !3676, !3677}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !686, file: !687, line: 65, baseType: !676, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !686, file: !687, line: 66, baseType: !669, size: 128, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !686, file: !687, line: 67, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !686, file: !687, line: 68, baseType: !694, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !687, line: 192, size: 704, elements: !696)
!696 = !{!697, !698, !714, !715}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !695, file: !687, line: 193, baseType: !669, size: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !695, file: !687, line: 194, baseType: !699, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !700, line: 83, baseType: !701)
!700 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !700, line: 71, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !700, line: 72, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !700, line: 72, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !704, file: !700, line: 73, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !700, line: 20, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !707, file: !700, line: 21, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !711, line: 25, baseType: !712)
!711 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 25, elements: !713)
!713 = !{}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !695, file: !687, line: 195, baseType: !686, size: 512, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !695, file: !687, line: 196, baseType: !716, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !687, line: 156, size: 192, elements: !719)
!719 = !{!720, !725, !730}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !718, file: !687, line: 157, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!339, !694, !692}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !718, file: !687, line: 158, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!676, !694, !692}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !718, file: !687, line: 159, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!339, !694, !692, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !687, line: 148, size: 20736, elements: !737)
!737 = !{!738, !740, !744, !745, !749}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !736, file: !687, line: 149, baseType: !739, size: 192)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 192, elements: !464)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !736, file: !687, line: 150, baseType: !741, size: 4096, offset: 192)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 4096, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !736, file: !687, line: 151, baseType: !339, size: 32, offset: 4288)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !736, file: !687, line: 152, baseType: !746, size: 16384, offset: 4320)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 16384, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 2048)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !736, file: !687, line: 153, baseType: !339, size: 32, offset: 20704)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !686, file: !687, line: 69, baseType: !751, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !687, line: 138, size: 448, elements: !753)
!753 = !{!754, !758, !785, !787, !3495, !3523, !3527}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !752, file: !687, line: 139, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !692}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !752, file: !687, line: 140, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !762, line: 230, size: 128, elements: !763)
!762 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!763 = !{!764, !778}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !761, file: !762, line: 231, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!768, !692, !772, !651}
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !354, line: 60, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !770, line: 73, baseType: !771)
!770 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !770, line: 15, baseType: !570)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !762, line: 30, size: 128, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !773, file: !762, line: 31, baseType: !676, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !773, file: !762, line: 32, baseType: !777, size: 16, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !354, line: 19, baseType: !527)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !761, file: !762, line: 232, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!768, !692, !772, !676, !782}
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !354, line: 55, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !770, line: 72, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !770, line: 16, baseType: !575)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !752, file: !687, line: 141, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !752, file: !687, line: 142, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !762, line: 84, size: 320, elements: !792)
!792 = !{!793, !794, !798, !3492, !3493}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !791, file: !762, line: 85, baseType: !676, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !791, file: !762, line: 86, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!777, !692, !772, !339}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !791, file: !762, line: 88, baseType: !799, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!777, !692, !802, !339}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !762, line: 168, size: 448, elements: !804)
!804 = !{!805, !806, !807, !808, !3487, !3488}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !803, file: !762, line: 169, baseType: !773, size: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !803, file: !762, line: 170, baseType: !782, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !803, file: !762, line: 171, baseType: !621, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !803, file: !762, line: 172, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!768, !812, !692, !802, !651, !981, !782}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !206, line: 916, size: 1856, align: 32, elements: !814)
!814 = !{!815, !833, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3470, !3471, !3480, !3481, !3482, !3483, !3484, !3485, !3486}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !813, file: !206, line: 920, baseType: !816, size: 128)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !206, line: 917, size: 128, elements: !817)
!817 = !{!818, !824}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !816, file: !206, line: 918, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !820, line: 58, size: 64, elements: !821)
!820 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!821 = !{!822}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !819, file: !820, line: 59, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !816, file: !206, line: 919, baseType: !825, size: 128, align: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !354, line: 216, size: 128, align: 64, elements: !826)
!826 = !{!827, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !354, line: 217, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !825, file: !354, line: 218, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !828}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !813, file: !206, line: 921, baseType: !834, size: 128, offset: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !835, line: 8, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!836 = !{!837, !841}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !834, file: !835, line: 9, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !840, line: 18, flags: DIFlagFwdDecl)
!840 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!841 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !834, file: !835, line: 10, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !840, line: 89, size: 1536, elements: !844)
!844 = !{!845, !846, !856, !864, !865, !880, !3421, !3423, !3435, !3436, !3437, !3438, !3439, !3444, !3445, !3446}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !843, file: !840, line: 91, baseType: !5, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !843, file: !840, line: 92, baseType: !847, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !848, line: 277, baseType: !849)
!848 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !848, line: 277, size: 32, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !849, file: !848, line: 277, baseType: !852, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !848, line: 70, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !848, line: 65, size: 32, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !853, file: !848, line: 66, baseType: !5, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !843, file: !840, line: 93, baseType: !857, size: 128, offset: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !858, line: 38, size: 128, elements: !859)
!858 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!859 = !{!860, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !858, line: 39, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !857, file: !858, line: 39, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !843, file: !840, line: 94, baseType: !842, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !843, file: !840, line: 95, baseType: !866, size: 128, offset: 256)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !840, line: 47, size: 128, elements: !867)
!867 = !{!868, !877}
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !840, line: 48, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !840, line: 48, size: 64, elements: !870)
!870 = !{!871, !876}
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !840, line: 49, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !840, line: 49, size: 64, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !872, file: !840, line: 50, baseType: !370, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !872, file: !840, line: 50, baseType: !370, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !869, file: !840, line: 52, baseType: !616, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !866, file: !840, line: 54, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !843, file: !840, line: 96, baseType: !881, size: 64, offset: 384)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !206, line: 610, size: 4224, elements: !883)
!883 = !{!884, !885, !886, !894, !901, !902, !1046, !3115, !3116, !3117, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3389, !3397, !3398, !3399, !3417, !3418, !3419, !3420}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !882, file: !206, line: 611, baseType: !777, size: 16)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !882, file: !206, line: 612, baseType: !527, size: 16, offset: 16)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !882, file: !206, line: 613, baseType: !887, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !888, line: 23, baseType: !889)
!888 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !888, line: 21, size: 32, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !889, file: !888, line: 22, baseType: !892, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !354, line: 32, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !770, line: 49, baseType: !5)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !882, file: !206, line: 614, baseType: !895, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !888, line: 28, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !888, line: 26, size: 32, elements: !897)
!897 = !{!898}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !896, file: !888, line: 27, baseType: !899, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !354, line: 33, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !770, line: 50, baseType: !5)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !882, file: !206, line: 615, baseType: !5, size: 32, offset: 96)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !882, file: !206, line: 622, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !206, line: 1864, size: 1536, align: 512, elements: !906)
!906 = !{!907, !911, !924, !928, !934, !938, !942, !946, !950, !954, !958, !959, !965, !969, !993, !1022, !1026, !1032, !1037, !1041, !1042}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !905, file: !206, line: 1865, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!842, !881, !842, !5}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !905, file: !206, line: 1866, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!676, !842, !881, !915}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !917, line: 10, size: 128, elements: !918)
!917 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!918 = !{!919, !923}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !916, file: !917, line: 11, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !621}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !916, file: !917, line: 12, baseType: !621, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !905, file: !206, line: 1867, baseType: !925, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!339, !881, !339}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !905, file: !206, line: 1868, baseType: !929, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!932, !881, !339}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !206, line: 581, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !905, file: !206, line: 1870, baseType: !935, size: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!339, !842, !651, !339}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !905, file: !206, line: 1872, baseType: !939, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!339, !881, !842, !777, !407}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !905, file: !206, line: 1873, baseType: !943, size: 64, offset: 384)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!339, !842, !881, !842}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !905, file: !206, line: 1874, baseType: !947, size: 64, offset: 448)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!339, !881, !842}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !905, file: !206, line: 1875, baseType: !951, size: 64, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!339, !881, !842, !676}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !905, file: !206, line: 1876, baseType: !955, size: 64, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!339, !881, !842, !777}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !905, file: !206, line: 1877, baseType: !947, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !905, file: !206, line: 1878, baseType: !960, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!339, !881, !842, !777, !963}
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !354, line: 16, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !354, line: 13, baseType: !370)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !905, file: !206, line: 1879, baseType: !966, size: 64, offset: 768)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!339, !881, !842, !881, !842, !5}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !905, file: !206, line: 1881, baseType: !970, size: 64, offset: 832)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!339, !842, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !206, line: 219, size: 640, elements: !975)
!975 = !{!976, !977, !978, !979, !980, !983, !990, !991, !992}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !974, file: !206, line: 220, baseType: !5, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !974, file: !206, line: 221, baseType: !777, size: 16, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !974, file: !206, line: 222, baseType: !887, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !974, file: !206, line: 223, baseType: !895, size: 32, offset: 96)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !974, file: !206, line: 224, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !354, line: 46, baseType: !982)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !770, line: 88, baseType: !501)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !974, file: !206, line: 225, baseType: !984, size: 128, offset: 192)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !985, line: 13, size: 128, elements: !986)
!985 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !984, file: !985, line: 14, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !985, line: 8, baseType: !500)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !984, file: !985, line: 15, baseType: !570, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !974, file: !206, line: 226, baseType: !984, size: 128, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !974, file: !206, line: 227, baseType: !984, size: 128, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !974, file: !206, line: 234, baseType: !812, size: 64, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !905, file: !206, line: 1882, baseType: !994, size: 64, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!339, !997, !999, !370, !5}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1001, line: 22, size: 1152, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1002 = !{!1003, !1004, !1005, !1006, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1000, file: !1001, line: 23, baseType: !370, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1000, file: !1001, line: 24, baseType: !777, size: 16, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1000, file: !1001, line: 25, baseType: !5, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1000, file: !1001, line: 26, baseType: !1007, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !354, line: 104, baseType: !370)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1000, file: !1001, line: 27, baseType: !616, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1000, file: !1001, line: 28, baseType: !616, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1000, file: !1001, line: 37, baseType: !616, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1000, file: !1001, line: 38, baseType: !963, size: 32, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1000, file: !1001, line: 39, baseType: !963, size: 32, offset: 352)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1000, file: !1001, line: 40, baseType: !887, size: 32, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1000, file: !1001, line: 41, baseType: !895, size: 32, offset: 416)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1000, file: !1001, line: 42, baseType: !981, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1000, file: !1001, line: 43, baseType: !984, size: 128, offset: 512)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1000, file: !1001, line: 44, baseType: !984, size: 128, offset: 640)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1000, file: !1001, line: 45, baseType: !984, size: 128, offset: 768)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1000, file: !1001, line: 46, baseType: !984, size: 128, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1000, file: !1001, line: 47, baseType: !616, size: 64, offset: 1024)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1000, file: !1001, line: 48, baseType: !616, size: 64, offset: 1088)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !905, file: !206, line: 1883, baseType: !1023, size: 64, offset: 960)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!768, !842, !651, !782}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !905, file: !206, line: 1884, baseType: !1027, size: 64, offset: 1024)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!339, !881, !1030, !616, !616}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !206, line: 50, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !905, file: !206, line: 1886, baseType: !1033, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!339, !881, !1036, !339}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !905, file: !206, line: 1887, baseType: !1038, size: 64, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!339, !881, !842, !812, !5, !777}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !905, file: !206, line: 1890, baseType: !955, size: 64, offset: 1216)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !905, file: !206, line: 1891, baseType: !1043, size: 64, offset: 1280)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!339, !881, !932, !339}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !882, file: !206, line: 623, baseType: !1047, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !206, line: 1416, size: 9472, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1105, !2723, !2805, !2888, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2904, !2908, !2909, !2912, !2913, !2916, !2917, !2918, !2959, !2985, !2986, !2987, !2988, !2989, !2990, !2993, !2995, !3002, !3003, !3005, !3006, !3007, !3066, !3067, !3082, !3083, !3084, !3085, !3086, !3089, !3090, !3091, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1048, file: !206, line: 1417, baseType: !669, size: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1048, file: !206, line: 1418, baseType: !963, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1048, file: !206, line: 1419, baseType: !385, size: 8, offset: 160)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1048, file: !206, line: 1420, baseType: !575, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1048, file: !206, line: 1421, baseType: !981, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1048, file: !206, line: 1422, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !206, line: 2228, size: 576, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1068, !1072, !1076, !1080, !1084, !1085, !1095, !1098, !1099, !1100, !1102, !1103, !1104}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1057, file: !206, line: 2229, baseType: !676, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1057, file: !206, line: 2230, baseType: !339, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1057, file: !206, line: 2238, baseType: !1062, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!339, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1067, line: 28, flags: DIFlagFwdDecl)
!1067 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1057, file: !206, line: 2239, baseType: !1069, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !206, line: 70, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1057, file: !206, line: 2240, baseType: !1073, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!842, !1056, !339, !676, !621}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1057, file: !206, line: 2242, baseType: !1077, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !1047}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1057, file: !206, line: 2243, baseType: !1081, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1083, line: 76, flags: DIFlagFwdDecl)
!1083 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1057, file: !206, line: 2244, baseType: !1056, size: 64, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1057, file: !206, line: 2245, baseType: !1086, size: 64, offset: 512)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !354, line: 182, size: 64, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1086, file: !354, line: 183, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !354, line: 186, size: 128, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1090, file: !354, line: 187, baseType: !1089, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1090, file: !354, line: 187, baseType: !1094, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1057, file: !206, line: 2247, baseType: !1096, offset: 576)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1097, line: 187, elements: !713)
!1097 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1057, file: !206, line: 2248, baseType: !1096, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1057, file: !206, line: 2249, baseType: !1096, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1057, file: !206, line: 2250, baseType: !1101, offset: 576)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1096, elements: !464)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1057, file: !206, line: 2252, baseType: !1096, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1057, file: !206, line: 2253, baseType: !1096, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1057, file: !206, line: 2254, baseType: !1096, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1048, file: !206, line: 1423, baseType: !1106, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !206, line: 1935, size: 1472, elements: !1109)
!1109 = !{!1110, !1114, !1118, !1119, !1123, !1129, !1133, !1134, !1135, !1139, !1143, !1144, !1145, !1146, !1152, !1157, !1158, !1165, !1166, !1167, !1168, !2707, !2722}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1108, file: !206, line: 1936, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!881, !1047}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1108, file: !206, line: 1937, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !881}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1108, file: !206, line: 1938, baseType: !1115, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1108, file: !206, line: 1940, baseType: !1120, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !881, !339}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1108, file: !206, line: 1941, baseType: !1124, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!339, !881, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !206, line: 289, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1108, file: !206, line: 1942, baseType: !1130, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!339, !881}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1108, file: !206, line: 1943, baseType: !1115, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1108, file: !206, line: 1944, baseType: !1077, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1108, file: !206, line: 1945, baseType: !1136, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!339, !1047, !339}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1108, file: !206, line: 1946, baseType: !1140, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!339, !1047}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1108, file: !206, line: 1947, baseType: !1140, size: 64, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1108, file: !206, line: 1948, baseType: !1140, size: 64, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1108, file: !206, line: 1949, baseType: !1140, size: 64, offset: 768)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1108, file: !206, line: 1950, baseType: !1147, size: 64, offset: 832)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!339, !842, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !206, line: 57, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1108, file: !206, line: 1951, baseType: !1153, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!339, !1047, !1156, !651}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1108, file: !206, line: 1952, baseType: !1077, size: 64, offset: 960)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1108, file: !206, line: 1954, baseType: !1159, size: 64, offset: 1024)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!339, !1162, !842}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1164, line: 539, flags: DIFlagFwdDecl)
!1164 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1108, file: !206, line: 1955, baseType: !1159, size: 64, offset: 1088)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1108, file: !206, line: 1956, baseType: !1159, size: 64, offset: 1152)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1108, file: !206, line: 1957, baseType: !1159, size: 64, offset: 1216)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1108, file: !206, line: 1963, baseType: !1169, size: 64, offset: 1280)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!339, !1047, !1172, !1195}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1174, line: 68, size: 512, align: 128, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1175 = !{!1176, !1177, !2699, !2706}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1173, file: !1174, line: 69, baseType: !575, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1174, line: 77, baseType: !1178, size: 320, offset: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1174, line: 77, size: 320, elements: !1179)
!1179 = !{!1180, !1362, !1367, !1395, !1403, !1409, !2691, !2698}
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1174, line: 78, baseType: !1181, size: 320)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1174, line: 78, size: 320, elements: !1182)
!1182 = !{!1183, !1184, !1360, !1361}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1181, file: !1174, line: 84, baseType: !669, size: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1181, file: !1174, line: 86, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !206, line: 451, size: 1216, align: 64, elements: !1187)
!1187 = !{!1188, !1189, !1197, !1198, !1199, !1214, !1230, !1231, !1232, !1233, !1353, !1354, !1357, !1358, !1359}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1186, file: !206, line: 452, baseType: !881, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1186, file: !206, line: 453, baseType: !1190, size: 128, offset: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1191, line: 292, size: 128, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1190, file: !1191, line: 293, baseType: !699)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1190, file: !1191, line: 295, baseType: !1195, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !354, line: 148, baseType: !5)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1190, file: !1191, line: 296, baseType: !621, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1186, file: !206, line: 454, baseType: !1195, size: 32, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1186, file: !206, line: 455, baseType: !353, size: 32, offset: 224)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1186, file: !206, line: 460, baseType: !1200, size: 128, offset: 256)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1201, line: 125, size: 128, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203, !1213}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1200, file: !1201, line: 126, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1201, line: 31, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1204, file: !1201, line: 32, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1201, line: 24, size: 192, align: 64, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1208, file: !1201, line: 25, baseType: !575, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1208, file: !1201, line: 26, baseType: !1207, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1208, file: !1201, line: 27, baseType: !1207, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1200, file: !1201, line: 127, baseType: !1207, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1186, file: !206, line: 461, baseType: !1215, size: 256, offset: 384)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1216, line: 35, size: 256, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1226, !1227, !1229}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1215, file: !1216, line: 36, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1220, line: 13, baseType: !1221)
!1220 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !354, line: 175, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 173, size: 64, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1222, file: !354, line: 174, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !371, line: 22, baseType: !500)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1215, file: !1216, line: 42, baseType: !1219, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1215, file: !1216, line: 46, baseType: !1228, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !700, line: 29, baseType: !707)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1215, file: !1216, line: 47, baseType: !669, size: 128, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1186, file: !206, line: 462, baseType: !575, size: 64, offset: 640)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1186, file: !206, line: 463, baseType: !575, size: 64, offset: 704)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1186, file: !206, line: 464, baseType: !575, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1186, file: !206, line: 465, baseType: !1234, size: 64, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !206, line: 367, size: 1408, elements: !1237)
!1237 = !{!1238, !1242, !1246, !1250, !1254, !1258, !1264, !1270, !1274, !1279, !1283, !1287, !1291, !1317, !1321, !1327, !1328, !1329, !1333, !1338, !1342, !1349}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1236, file: !206, line: 368, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!339, !1172, !1127}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1236, file: !206, line: 369, baseType: !1243, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!339, !812, !1172}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1236, file: !206, line: 372, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!339, !1185, !1127}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1236, file: !206, line: 375, baseType: !1251, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!339, !1172}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1236, file: !206, line: 381, baseType: !1255, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!339, !812, !1185, !672, !5}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1236, file: !206, line: 383, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !206, line: 290, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1236, file: !206, line: 385, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!339, !812, !1185, !981, !5, !5, !1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1236, file: !206, line: 388, baseType: !1271, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!339, !812, !1185, !981, !5, !5, !1172, !621}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1236, file: !206, line: 393, baseType: !1275, size: 64, offset: 512)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1278, !1185, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !354, line: 125, baseType: !616)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1236, file: !206, line: 394, baseType: !1280, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !1172, !5, !5}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1236, file: !206, line: 395, baseType: !1284, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!339, !1172, !1195}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1236, file: !206, line: 396, baseType: !1288, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1172}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1236, file: !206, line: 397, baseType: !1292, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!768, !1295, !1315}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !206, line: 320, size: 384, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1304, !1305, !1306, !1307, !1308}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1296, file: !206, line: 321, baseType: !812, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1296, file: !206, line: 326, baseType: !981, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1296, file: !206, line: 327, baseType: !1301, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !1295, !570, !570}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1296, file: !206, line: 328, baseType: !621, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1296, file: !206, line: 329, baseType: !339, size: 32, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1296, file: !206, line: 330, baseType: !525, size: 16, offset: 288)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1296, file: !206, line: 331, baseType: !525, size: 16, offset: 304)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !206, line: 332, baseType: !1309, size: 64, offset: 320)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !206, line: 332, size: 64, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1309, file: !206, line: 333, baseType: !5, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1309, file: !206, line: 334, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !206, line: 334, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !206, line: 64, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1236, file: !206, line: 402, baseType: !1318, size: 64, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!339, !1185, !1172, !1172, !181}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1236, file: !206, line: 404, baseType: !1322, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!407, !1172, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1326, line: 305, baseType: !5)
!1326 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1236, file: !206, line: 405, baseType: !1288, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1236, file: !206, line: 406, baseType: !1251, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1236, file: !206, line: 407, baseType: !1330, size: 64, offset: 1088)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!339, !1172, !575, !575}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1236, file: !206, line: 409, baseType: !1334, size: 64, offset: 1152)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !1172, !1337, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1236, file: !206, line: 410, baseType: !1339, size: 64, offset: 1216)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!339, !1185, !1172}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1236, file: !206, line: 413, baseType: !1343, size: 64, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!339, !1346, !812, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !206, line: 61, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1236, file: !206, line: 415, baseType: !1350, size: 64, offset: 1344)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !812}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !206, line: 466, baseType: !575, size: 64, offset: 896)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1186, file: !206, line: 467, baseType: !1355, size: 32, offset: 960)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1356, line: 8, baseType: !370)
!1356 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1186, file: !206, line: 468, baseType: !699, offset: 992)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1186, file: !206, line: 469, baseType: !669, size: 128, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1186, file: !206, line: 470, baseType: !621, size: 64, offset: 1152)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1181, file: !1174, line: 87, baseType: !575, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1181, file: !1174, line: 94, baseType: !575, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1174, line: 96, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1174, line: 96, size: 64, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1363, file: !1174, line: 101, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !354, line: 143, baseType: !616)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1174, line: 103, baseType: !1368, size: 320)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1174, line: 103, size: 320, elements: !1369)
!1369 = !{!1370, !1380, !1383, !1384}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1174, line: 104, baseType: !1371, size: 128)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !1174, line: 104, size: 128, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1371, file: !1174, line: 105, baseType: !669, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !1174, line: 106, baseType: !1375, size: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1174, line: 106, size: 128, elements: !1376)
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1375, file: !1174, line: 107, baseType: !1172, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1375, file: !1174, line: 109, baseType: !339, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1375, file: !1174, line: 110, baseType: !339, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1368, file: !1174, line: 117, baseType: !1381, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1174, line: 117, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1368, file: !1174, line: 119, baseType: !621, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1174, line: 120, baseType: !1385, size: 64, offset: 256)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !1174, line: 120, size: 64, elements: !1386)
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1385, file: !1174, line: 121, baseType: !621, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1385, file: !1174, line: 122, baseType: !575, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !1174, line: 123, baseType: !1390, size: 32)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1174, line: 123, size: 32, elements: !1391)
!1391 = !{!1392, !1393, !1394}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1390, file: !1174, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1390, file: !1174, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1390, file: !1174, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1174, line: 130, baseType: !1396, size: 192)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1174, line: 130, size: 192, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1396, file: !1174, line: 131, baseType: !575, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1396, file: !1174, line: 134, baseType: !385, size: 8, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1396, file: !1174, line: 135, baseType: !385, size: 8, offset: 72)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1396, file: !1174, line: 136, baseType: !353, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1396, file: !1174, line: 137, baseType: !5, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1174, line: 139, baseType: !1404, size: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1174, line: 139, size: 256, elements: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1404, file: !1174, line: 140, baseType: !575, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1404, file: !1174, line: 141, baseType: !353, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1404, file: !1174, line: 143, baseType: !669, size: 128, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1174, line: 145, baseType: !1410, size: 256)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1174, line: 145, size: 256, elements: !1411)
!1411 = !{!1412, !1413, !1415, !1416, !2690}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1410, file: !1174, line: 146, baseType: !575, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1410, file: !1174, line: 147, baseType: !1414, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1164, line: 509, baseType: !1172)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1410, file: !1174, line: 148, baseType: !575, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1174, line: 149, baseType: !1417, size: 64, offset: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1174, line: 149, size: 64, elements: !1418)
!1418 = !{!1419, !2689}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1417, file: !1174, line: 150, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1174, line: 388, size: 7296, elements: !1422)
!1422 = !{!1423, !2685}
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !1174, line: 389, baseType: !1424, size: 7296)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1421, file: !1174, line: 389, size: 7296, elements: !1425)
!1425 = !{!1426, !1464, !1465, !1466, !1470, !1471, !1472, !1473, !1474, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1515, !1521, !1524, !1570, !1571, !2669, !2670, !2673, !2674, !2675, !2678, !2679, !2680, !2683, !2684}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1424, file: !1174, line: 390, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1174, line: 305, size: 1472, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1444, !1445, !1450, !1451, !1454, !1458, !1459, !1460, !1461, !1462}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1428, file: !1174, line: 308, baseType: !575, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1428, file: !1174, line: 309, baseType: !575, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1428, file: !1174, line: 313, baseType: !1427, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1428, file: !1174, line: 313, baseType: !1427, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1428, file: !1174, line: 315, baseType: !1208, size: 192, align: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1428, file: !1174, line: 323, baseType: !575, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1428, file: !1174, line: 327, baseType: !1420, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1428, file: !1174, line: 333, baseType: !1438, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1164, line: 284, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1164, line: 284, size: 64, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1439, file: !1164, line: 284, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1443, line: 19, baseType: !575)
!1443 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1428, file: !1174, line: 334, baseType: !575, size: 64, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1428, file: !1174, line: 343, baseType: !1446, size: 256, offset: 704)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1428, file: !1174, line: 340, size: 256, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1446, file: !1174, line: 341, baseType: !1208, size: 192, align: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1446, file: !1174, line: 342, baseType: !575, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1428, file: !1174, line: 351, baseType: !669, size: 128, offset: 960)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1428, file: !1174, line: 353, baseType: !1452, size: 64, offset: 1088)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1174, line: 353, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1428, file: !1174, line: 356, baseType: !1455, size: 64, offset: 1152)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1174, line: 356, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1428, file: !1174, line: 359, baseType: !575, size: 64, offset: 1216)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1428, file: !1174, line: 361, baseType: !812, size: 64, offset: 1280)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1428, file: !1174, line: 362, baseType: !621, size: 64, offset: 1344)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1428, file: !1174, line: 365, baseType: !1219, size: 64, offset: 1408)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1428, file: !1174, line: 373, baseType: !1463, offset: 1472)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1174, line: 296, elements: !713)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1424, file: !1174, line: 391, baseType: !1204, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1424, file: !1174, line: 392, baseType: !616, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1424, file: !1174, line: 394, baseType: !1467, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!575, !812, !575, !575, !575, !575}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1424, file: !1174, line: 398, baseType: !575, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1424, file: !1174, line: 399, baseType: !575, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1424, file: !1174, line: 405, baseType: !575, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1424, file: !1174, line: 406, baseType: !575, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1424, file: !1174, line: 407, baseType: !1475, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1164, line: 286, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1164, line: 286, size: 64, elements: !1478)
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1477, file: !1164, line: 286, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1443, line: 18, baseType: !575)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1424, file: !1174, line: 416, baseType: !353, size: 32, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1424, file: !1174, line: 428, baseType: !353, size: 32, offset: 608)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1424, file: !1174, line: 437, baseType: !353, size: 32, offset: 640)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1424, file: !1174, line: 447, baseType: !353, size: 32, offset: 672)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1424, file: !1174, line: 450, baseType: !1219, size: 64, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1424, file: !1174, line: 452, baseType: !339, size: 32, offset: 768)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1424, file: !1174, line: 454, baseType: !699, offset: 800)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1424, file: !1174, line: 457, baseType: !1215, size: 256, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1424, file: !1174, line: 459, baseType: !669, size: 128, offset: 1088)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1424, file: !1174, line: 466, baseType: !575, size: 64, offset: 1216)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1424, file: !1174, line: 467, baseType: !575, size: 64, offset: 1280)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1424, file: !1174, line: 469, baseType: !575, size: 64, offset: 1344)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1424, file: !1174, line: 470, baseType: !575, size: 64, offset: 1408)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1424, file: !1174, line: 471, baseType: !1221, size: 64, offset: 1472)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1424, file: !1174, line: 472, baseType: !575, size: 64, offset: 1536)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1424, file: !1174, line: 473, baseType: !575, size: 64, offset: 1600)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1424, file: !1174, line: 474, baseType: !575, size: 64, offset: 1664)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1424, file: !1174, line: 475, baseType: !575, size: 64, offset: 1728)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1424, file: !1174, line: 477, baseType: !699, offset: 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1424, file: !1174, line: 478, baseType: !575, size: 64, offset: 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1424, file: !1174, line: 478, baseType: !575, size: 64, offset: 1856)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1424, file: !1174, line: 478, baseType: !575, size: 64, offset: 1920)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1424, file: !1174, line: 478, baseType: !575, size: 64, offset: 1984)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1424, file: !1174, line: 479, baseType: !575, size: 64, offset: 2048)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1424, file: !1174, line: 479, baseType: !575, size: 64, offset: 2112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1424, file: !1174, line: 479, baseType: !575, size: 64, offset: 2176)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1424, file: !1174, line: 480, baseType: !575, size: 64, offset: 2240)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1424, file: !1174, line: 480, baseType: !575, size: 64, offset: 2304)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1424, file: !1174, line: 480, baseType: !575, size: 64, offset: 2368)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1424, file: !1174, line: 480, baseType: !575, size: 64, offset: 2432)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1424, file: !1174, line: 482, baseType: !1512, size: 2816, offset: 2496)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 2816, elements: !1513)
!1513 = !{!1514}
!1514 = !DISubrange(count: 44)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1424, file: !1174, line: 488, baseType: !1516, size: 256, offset: 5312)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1517, line: 60, size: 256, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1516, file: !1517, line: 61, baseType: !1520, size: 256)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 256, elements: !502)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1424, file: !1174, line: 490, baseType: !1522, size: 64, offset: 5568)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1174, line: 490, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1424, file: !1174, line: 493, baseType: !1525, size: 896, offset: 5632)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1526, line: 53, baseType: !1527)
!1526 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1526, line: 13, size: 896, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1535, !1536, !1543, !1544, !1564, !1565, !1566}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1527, file: !1526, line: 18, baseType: !616, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1527, file: !1526, line: 28, baseType: !1221, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1527, file: !1526, line: 31, baseType: !1215, size: 256, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1527, file: !1526, line: 32, baseType: !1533, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1526, line: 32, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1527, file: !1526, line: 37, baseType: !527, size: 16, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1527, file: !1526, line: 40, baseType: !1537, size: 192, offset: 512)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1538, line: 53, size: 192, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1537, file: !1538, line: 54, baseType: !1219, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1537, file: !1538, line: 55, baseType: !699, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1537, file: !1538, line: 59, baseType: !669, size: 128, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1527, file: !1526, line: 41, baseType: !621, size: 64, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1527, file: !1526, line: 42, baseType: !1545, size: 64, offset: 768)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1548, line: 13, size: 896, elements: !1549)
!1548 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1547, file: !1548, line: 14, baseType: !621, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1547, file: !1548, line: 15, baseType: !575, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1547, file: !1548, line: 17, baseType: !575, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1547, file: !1548, line: 17, baseType: !575, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1547, file: !1548, line: 19, baseType: !570, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1547, file: !1548, line: 21, baseType: !570, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1547, file: !1548, line: 22, baseType: !570, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1547, file: !1548, line: 23, baseType: !570, size: 64, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1547, file: !1548, line: 24, baseType: !570, size: 64, offset: 512)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1547, file: !1548, line: 25, baseType: !570, size: 64, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1547, file: !1548, line: 26, baseType: !570, size: 64, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1547, file: !1548, line: 27, baseType: !570, size: 64, offset: 704)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1547, file: !1548, line: 28, baseType: !570, size: 64, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1547, file: !1548, line: 29, baseType: !570, size: 64, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1527, file: !1526, line: 44, baseType: !353, size: 32, offset: 832)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1527, file: !1526, line: 50, baseType: !525, size: 16, offset: 864)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1527, file: !1526, line: 51, baseType: !1567, size: 16, offset: 880)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !371, line: 18, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !373, line: 23, baseType: !1569)
!1569 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1174, line: 495, baseType: !575, size: 64, offset: 6528)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1424, file: !1174, line: 497, baseType: !1572, size: 64, offset: 6592)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1174, line: 381, size: 384, elements: !1574)
!1574 = !{!1575, !1576, !2668}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1573, file: !1174, line: 382, baseType: !353, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1573, file: !1174, line: 383, baseType: !1577, size: 128, offset: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1174, line: 376, size: 128, elements: !1578)
!1578 = !{!1579, !2666}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1577, file: !1174, line: 377, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1582, line: 640, size: 48640, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1590, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1605, !1623, !1634, !1715, !1716, !1717, !1728, !1729, !1731, !1732, !1733, !1734, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1815, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1853, !1855, !1856, !1857, !1869, !1870, !1871, !1872, !1873, !1874, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1898, !1903, !2085, !2086, !2087, !2088, !2092, !2095, !2098, !2101, !2104, !2107, !2208, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2254, !2255, !2256, !2257, !2258, !2263, !2264, !2265, !2268, !2269, !2272, !2275, !2278, !2281, !2324, !2327, !2328, !2407, !2408, !2411, !2412, !2415, !2416, !2417, !2421, !2422, !2423, !2436, !2437, !2438, !2448, !2453, !2456, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1581, file: !1582, line: 646, baseType: !1585, size: 128)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1586, line: 56, size: 128, elements: !1587)
!1586 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !1586, line: 57, baseType: !575, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1585, file: !1586, line: 58, baseType: !370, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1581, file: !1582, line: 649, baseType: !1591, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !570)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1581, file: !1582, line: 657, baseType: !621, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1581, file: !1582, line: 658, baseType: !348, size: 32, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1581, file: !1582, line: 660, baseType: !5, size: 32, offset: 288)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1581, file: !1582, line: 661, baseType: !5, size: 32, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1581, file: !1582, line: 684, baseType: !339, size: 32, offset: 352)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1581, file: !1582, line: 686, baseType: !339, size: 32, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1581, file: !1582, line: 687, baseType: !339, size: 32, offset: 416)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1581, file: !1582, line: 688, baseType: !339, size: 32, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1581, file: !1582, line: 689, baseType: !5, size: 32, offset: 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1581, file: !1582, line: 691, baseType: !1602, size: 64, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1582, line: 691, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1581, file: !1582, line: 692, baseType: !1606, size: 832, offset: 576)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1582, line: 451, size: 832, elements: !1607)
!1607 = !{!1608, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1606, file: !1582, line: 453, baseType: !1609, size: 128)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1582, line: 325, size: 128, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1609, file: !1582, line: 326, baseType: !575, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1609, file: !1582, line: 327, baseType: !370, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1606, file: !1582, line: 454, baseType: !1208, size: 192, align: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1606, file: !1582, line: 455, baseType: !669, size: 128, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1606, file: !1582, line: 456, baseType: !5, size: 32, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1606, file: !1582, line: 458, baseType: !616, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1606, file: !1582, line: 459, baseType: !616, size: 64, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1606, file: !1582, line: 460, baseType: !616, size: 64, offset: 640)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1606, file: !1582, line: 461, baseType: !616, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1606, file: !1582, line: 463, baseType: !616, size: 64, offset: 768)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1606, file: !1582, line: 465, baseType: !1622, offset: 832)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1582, line: 415, elements: !713)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1581, file: !1582, line: 693, baseType: !1624, size: 384, offset: 1408)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1582, line: 489, size: 384, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1624, file: !1582, line: 490, baseType: !669, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1624, file: !1582, line: 491, baseType: !575, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1624, file: !1582, line: 492, baseType: !575, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1624, file: !1582, line: 493, baseType: !5, size: 32, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1624, file: !1582, line: 494, baseType: !527, size: 16, offset: 288)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1624, file: !1582, line: 495, baseType: !527, size: 16, offset: 304)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1624, file: !1582, line: 497, baseType: !1633, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1581, file: !1582, line: 697, baseType: !1635, size: 1792, offset: 1792)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1582, line: 507, size: 1792, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1712, !1713}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1635, file: !1582, line: 508, baseType: !1208, size: 192, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1635, file: !1582, line: 515, baseType: !616, size: 64, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1635, file: !1582, line: 516, baseType: !616, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1635, file: !1582, line: 517, baseType: !616, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1635, file: !1582, line: 518, baseType: !616, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1635, file: !1582, line: 519, baseType: !616, size: 64, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1635, file: !1582, line: 526, baseType: !1225, size: 64, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1635, file: !1582, line: 527, baseType: !616, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !1582, line: 528, baseType: !5, size: 32, offset: 640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1635, file: !1582, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1635, file: !1582, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1635, file: !1582, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1635, file: !1582, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1635, file: !1582, line: 563, baseType: !1651, size: 512, offset: 704)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !189, line: 118, size: 512, elements: !1652)
!1652 = !{!1653, !1661, !1662, !1667, !1708, !1709, !1710, !1711}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1651, file: !189, line: 119, baseType: !1654, size: 256)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1655, line: 9, size: 256, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1654, file: !1655, line: 10, baseType: !1208, size: 192, align: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1654, file: !1655, line: 11, baseType: !1659, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1660, line: 29, baseType: !1225)
!1660 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1651, file: !189, line: 120, baseType: !1659, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1651, file: !189, line: 121, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!188, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1651, file: !189, line: 122, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !189, line: 159, size: 512, align: 512, elements: !1670)
!1670 = !{!1671, !1689, !1690, !1693, !1698, !1699, !1703, !1707}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1669, file: !189, line: 160, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !189, line: 214, size: 4608, align: 512, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !189, line: 215, baseType: !1228)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1673, file: !189, line: 216, baseType: !5, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1673, file: !189, line: 217, baseType: !5, size: 32, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1673, file: !189, line: 218, baseType: !5, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1673, file: !189, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1673, file: !189, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1673, file: !189, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1673, file: !189, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1673, file: !189, line: 233, baseType: !1659, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1673, file: !189, line: 234, baseType: !1666, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1673, file: !189, line: 235, baseType: !1659, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1673, file: !189, line: 236, baseType: !1666, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1673, file: !189, line: 237, baseType: !1688, size: 4096, offset: 512)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1669, size: 4096, elements: !386)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1669, file: !189, line: 161, baseType: !5, size: 32, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1669, file: !189, line: 162, baseType: !1691, size: 32, offset: 96)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !354, line: 27, baseType: !1692)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !770, line: 96, baseType: !339)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1669, file: !189, line: 163, baseType: !1694, size: 32, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !848, line: 276, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !848, line: 276, size: 32, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1695, file: !848, line: 276, baseType: !852, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1669, file: !189, line: 164, baseType: !1666, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1669, file: !189, line: 165, baseType: !1700, size: 128, offset: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1655, line: 14, size: 128, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1700, file: !1655, line: 15, baseType: !1200, size: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1669, file: !189, line: 166, baseType: !1704, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1659}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1669, file: !189, line: 167, baseType: !1659, size: 64, offset: 448)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1651, file: !189, line: 123, baseType: !383, size: 8, offset: 448)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1651, file: !189, line: 124, baseType: !383, size: 8, offset: 456)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1651, file: !189, line: 125, baseType: !383, size: 8, offset: 464)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1651, file: !189, line: 126, baseType: !383, size: 8, offset: 472)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1635, file: !1582, line: 572, baseType: !1651, size: 512, offset: 1216)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1635, file: !1582, line: 580, baseType: !1714, size: 64, offset: 1728)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1581, file: !1582, line: 721, baseType: !5, size: 32, offset: 3584)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1581, file: !1582, line: 722, baseType: !339, size: 32, offset: 3616)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1581, file: !1582, line: 723, baseType: !1718, size: 64, offset: 3648)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1721, line: 17, baseType: !1722)
!1721 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1721, line: 17, size: 64, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1722, file: !1721, line: 17, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 64, elements: !1726)
!1726 = !{!1727}
!1727 = !DISubrange(count: 1)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1581, file: !1582, line: 724, baseType: !1720, size: 64, offset: 3712)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1581, file: !1582, line: 749, baseType: !1730, offset: 3776)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1582, line: 290, elements: !713)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1581, file: !1582, line: 751, baseType: !669, size: 128, offset: 3776)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1581, file: !1582, line: 757, baseType: !1420, size: 64, offset: 3904)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1581, file: !1582, line: 758, baseType: !1420, size: 64, offset: 3968)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1581, file: !1582, line: 761, baseType: !1735, size: 320, offset: 4032)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1517, line: 34, size: 320, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1735, file: !1517, line: 35, baseType: !616, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1735, file: !1517, line: 36, baseType: !1739, size: 256, offset: 64)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1427, size: 256, elements: !502)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1581, file: !1582, line: 766, baseType: !339, size: 32, offset: 4352)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1581, file: !1582, line: 767, baseType: !339, size: 32, offset: 4384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1581, file: !1582, line: 768, baseType: !339, size: 32, offset: 4416)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1581, file: !1582, line: 770, baseType: !339, size: 32, offset: 4448)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1581, file: !1582, line: 772, baseType: !575, size: 64, offset: 4480)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1581, file: !1582, line: 775, baseType: !5, size: 32, offset: 4544)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1581, file: !1582, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1581, file: !1582, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1581, file: !1582, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1581, file: !1582, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1581, file: !1582, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1581, file: !1582, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1581, file: !1582, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1581, file: !1582, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1581, file: !1582, line: 831, baseType: !575, size: 64, offset: 4672)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1581, file: !1582, line: 833, baseType: !1756, size: 384, offset: 4736)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !194, line: 25, size: 384, elements: !1757)
!1757 = !{!1758, !1763}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1756, file: !194, line: 26, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!570, !1762}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !194, line: 27, baseType: !1764, size: 320, offset: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1756, file: !194, line: 27, size: 320, elements: !1765)
!1765 = !{!1766, !1775, !1800}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1764, file: !194, line: 36, baseType: !1767, size: 320)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !194, line: 29, size: 320, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1767, file: !194, line: 30, baseType: !519, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1767, file: !194, line: 31, baseType: !370, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !194, line: 32, baseType: !370, size: 32, offset: 96)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1767, file: !194, line: 33, baseType: !370, size: 32, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1767, file: !194, line: 34, baseType: !616, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1767, file: !194, line: 35, baseType: !519, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1764, file: !194, line: 46, baseType: !1776, size: 192)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !194, line: 38, size: 192, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1799}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1776, file: !194, line: 39, baseType: !1691, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1776, file: !194, line: 40, baseType: !193, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !194, line: 41, baseType: !1781, size: 64, offset: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !194, line: 41, size: 64, elements: !1782)
!1782 = !{!1783, !1791}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1781, file: !194, line: 42, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1786, line: 7, size: 128, elements: !1787)
!1786 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1785, file: !1786, line: 8, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !770, line: 93, baseType: !501)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1785, file: !1786, line: 9, baseType: !501, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1781, file: !194, line: 43, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1794, line: 7, size: 64, elements: !1795)
!1794 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1795 = !{!1796, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1793, file: !1794, line: 8, baseType: !1797, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1794, line: 5, baseType: !632)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1793, file: !1794, line: 9, baseType: !632, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1776, file: !194, line: 45, baseType: !616, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1764, file: !194, line: 54, baseType: !1801, size: 256)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !194, line: 48, size: 256, elements: !1802)
!1802 = !{!1803, !1811, !1812, !1813, !1814}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1801, file: !194, line: 49, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1806, line: 36, size: 64, elements: !1807)
!1806 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1805, file: !1806, line: 37, baseType: !339, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1805, file: !1806, line: 38, baseType: !1569, size: 16, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1805, file: !1806, line: 39, baseType: !1569, size: 16, offset: 48)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1801, file: !194, line: 50, baseType: !339, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1801, file: !194, line: 51, baseType: !339, size: 32, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1801, file: !194, line: 52, baseType: !575, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1801, file: !194, line: 53, baseType: !575, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1581, file: !1582, line: 835, baseType: !1816, size: 32, offset: 5120)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !354, line: 22, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !770, line: 28, baseType: !339)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1581, file: !1582, line: 836, baseType: !1816, size: 32, offset: 5152)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1581, file: !1582, line: 840, baseType: !575, size: 64, offset: 5184)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1581, file: !1582, line: 849, baseType: !1580, size: 64, offset: 5248)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1581, file: !1582, line: 852, baseType: !1580, size: 64, offset: 5312)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1581, file: !1582, line: 857, baseType: !669, size: 128, offset: 5376)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1581, file: !1582, line: 858, baseType: !669, size: 128, offset: 5504)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1581, file: !1582, line: 859, baseType: !1580, size: 64, offset: 5632)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1581, file: !1582, line: 867, baseType: !669, size: 128, offset: 5696)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1581, file: !1582, line: 868, baseType: !669, size: 128, offset: 5824)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1581, file: !1582, line: 871, baseType: !1828, size: 64, offset: 5952)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !215, line: 59, size: 768, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1836, !1837, !1844, !1845}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1829, file: !215, line: 61, baseType: !348, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1829, file: !215, line: 62, baseType: !5, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !215, line: 63, baseType: !699, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1829, file: !215, line: 65, baseType: !1835, size: 256, offset: 64)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 256, elements: !502)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1829, file: !215, line: 66, baseType: !1086, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1829, file: !215, line: 68, baseType: !1838, size: 128, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1839, line: 40, baseType: !1840)
!1839 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1839, line: 36, size: 128, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1840, file: !1839, line: 37, baseType: !699)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1840, file: !1839, line: 38, baseType: !669, size: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1829, file: !215, line: 69, baseType: !825, size: 128, align: 64, offset: 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1829, file: !215, line: 70, baseType: !1846, size: 128, offset: 640)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1847, size: 128, elements: !1726)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !215, line: 54, size: 128, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1847, file: !215, line: 55, baseType: !339, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1847, file: !215, line: 56, baseType: !1851, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !215, line: 56, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1581, file: !1582, line: 872, baseType: !1854, size: 512, offset: 6016)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 512, elements: !502)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1581, file: !1582, line: 873, baseType: !669, size: 128, offset: 6528)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1581, file: !1582, line: 874, baseType: !669, size: 128, offset: 6656)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1581, file: !1582, line: 876, baseType: !1858, size: 64, offset: 6784)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1860, line: 26, size: 192, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1859, file: !1860, line: 27, baseType: !5, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1859, file: !1860, line: 28, baseType: !1864, size: 128, offset: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1865, line: 43, size: 128, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1864, file: !1865, line: 44, baseType: !1228)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1864, file: !1865, line: 45, baseType: !669, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1581, file: !1582, line: 879, baseType: !1156, size: 64, offset: 6848)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1581, file: !1582, line: 882, baseType: !1156, size: 64, offset: 6912)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1581, file: !1582, line: 884, baseType: !616, size: 64, offset: 6976)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1581, file: !1582, line: 885, baseType: !616, size: 64, offset: 7040)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1581, file: !1582, line: 890, baseType: !616, size: 64, offset: 7104)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1581, file: !1582, line: 891, baseType: !1875, size: 128, offset: 7168)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1582, line: 242, size: 128, elements: !1876)
!1876 = !{!1877, !1878, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1875, file: !1582, line: 244, baseType: !616, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1875, file: !1582, line: 245, baseType: !616, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1875, file: !1582, line: 246, baseType: !1228, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1581, file: !1582, line: 900, baseType: !575, size: 64, offset: 7296)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1581, file: !1582, line: 901, baseType: !575, size: 64, offset: 7360)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1581, file: !1582, line: 904, baseType: !616, size: 64, offset: 7424)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1581, file: !1582, line: 907, baseType: !616, size: 64, offset: 7488)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1581, file: !1582, line: 910, baseType: !575, size: 64, offset: 7552)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1581, file: !1582, line: 911, baseType: !575, size: 64, offset: 7616)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1581, file: !1582, line: 914, baseType: !1887, size: 640, offset: 7680)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1888, line: 123, size: 640, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1896, !1897}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1887, file: !1888, line: 124, baseType: !1891, size: 576)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1892, size: 576, elements: !464)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1888, line: 108, size: 192, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1892, file: !1888, line: 109, baseType: !616, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1892, file: !1888, line: 110, baseType: !1700, size: 128, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1887, file: !1888, line: 125, baseType: !5, size: 32, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1887, file: !1888, line: 126, baseType: !5, size: 32, offset: 608)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1581, file: !1582, line: 917, baseType: !1899, size: 192, offset: 8320)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1888, line: 134, size: 192, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1899, file: !1888, line: 135, baseType: !825, size: 128, align: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1899, file: !1888, line: 136, baseType: !5, size: 32, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1581, file: !1582, line: 923, baseType: !1904, size: 64, offset: 8512)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1907, line: 111, size: 1280, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1928, !1929, !1930, !1931, !1932, !1933, !2038, !2039, !2040, !2041, !2067, !2070, !2080}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1906, file: !1907, line: 112, baseType: !353, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1906, file: !1907, line: 120, baseType: !887, size: 32, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1906, file: !1907, line: 121, baseType: !895, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1906, file: !1907, line: 122, baseType: !887, size: 32, offset: 96)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1906, file: !1907, line: 123, baseType: !895, size: 32, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1906, file: !1907, line: 124, baseType: !887, size: 32, offset: 160)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1906, file: !1907, line: 125, baseType: !895, size: 32, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1906, file: !1907, line: 126, baseType: !887, size: 32, offset: 224)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1906, file: !1907, line: 127, baseType: !895, size: 32, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1906, file: !1907, line: 128, baseType: !5, size: 32, offset: 288)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1906, file: !1907, line: 129, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1921, line: 26, baseType: !1922)
!1921 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1921, line: 24, size: 64, elements: !1923)
!1923 = !{!1924}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1922, file: !1921, line: 25, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 64, elements: !1926)
!1926 = !{!1927}
!1927 = !DISubrange(count: 2)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1906, file: !1907, line: 130, baseType: !1920, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1906, file: !1907, line: 131, baseType: !1920, size: 64, offset: 448)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1906, file: !1907, line: 132, baseType: !1920, size: 64, offset: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1906, file: !1907, line: 133, baseType: !1920, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1906, file: !1907, line: 135, baseType: !385, size: 8, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1906, file: !1907, line: 137, baseType: !1934, size: 64, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1936, line: 189, size: 1664, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1942, !1947, !1948, !1951, !1952, !1957, !1958, !1959, !1960, !1962, !1963, !1964, !1965, !1966, !2002, !2023}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1935, file: !1936, line: 190, baseType: !348, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1935, file: !1936, line: 191, baseType: !1940, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1936, line: 28, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !354, line: 98, baseType: !632)
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1936, line: 192, baseType: !1943, size: 192, offset: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1936, line: 192, size: 192, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1943, file: !1936, line: 193, baseType: !669, size: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1943, file: !1936, line: 194, baseType: !1208, size: 192, align: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1935, file: !1936, line: 199, baseType: !1215, size: 256, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1935, file: !1936, line: 200, baseType: !1949, size: 64, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1936, line: 200, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1935, file: !1936, line: 201, baseType: !621, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1936, line: 202, baseType: !1953, size: 64, offset: 640)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1936, line: 202, size: 64, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1953, file: !1936, line: 203, baseType: !988, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1953, file: !1936, line: 204, baseType: !988, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1935, file: !1936, line: 206, baseType: !988, size: 64, offset: 704)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1935, file: !1936, line: 207, baseType: !887, size: 32, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1935, file: !1936, line: 208, baseType: !895, size: 32, offset: 800)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1935, file: !1936, line: 209, baseType: !1961, size: 32, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1936, line: 31, baseType: !1007)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1935, file: !1936, line: 210, baseType: !527, size: 16, offset: 864)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1935, file: !1936, line: 211, baseType: !527, size: 16, offset: 880)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1935, file: !1936, line: 215, baseType: !1569, size: 16, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !1936, line: 222, baseType: !575, size: 64, offset: 960)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1936, line: 239, baseType: !1967, size: 320, offset: 1024)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1936, line: 239, size: 320, elements: !1968)
!1968 = !{!1969, !1994}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1967, file: !1936, line: 240, baseType: !1970, size: 320)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1936, line: 108, size: 320, elements: !1971)
!1971 = !{!1972, !1973, !1983, !1986, !1993}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1970, file: !1936, line: 110, baseType: !575, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1936, line: 111, baseType: !1974, size: 64, offset: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1970, file: !1936, line: 111, size: 64, elements: !1975)
!1975 = !{!1976, !1982}
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !1936, line: 112, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1974, file: !1936, line: 112, size: 64, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1977, file: !1936, line: 114, baseType: !525, size: 16)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1977, file: !1936, line: 115, baseType: !1981, size: 48, offset: 16)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 48, elements: !540)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1974, file: !1936, line: 121, baseType: !575, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1970, file: !1936, line: 123, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1936, line: 96, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1970, file: !1936, line: 124, baseType: !1987, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1936, line: 102, size: 192, elements: !1989)
!1989 = !{!1990, !1991, !1992}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1988, file: !1936, line: 103, baseType: !825, size: 128, align: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1988, file: !1936, line: 104, baseType: !348, size: 32, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1988, file: !1936, line: 105, baseType: !407, size: 8, offset: 160)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1970, file: !1936, line: 125, baseType: !676, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1967, file: !1936, line: 241, baseType: !1995, size: 320)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1936, line: 241, size: 320, elements: !1996)
!1996 = !{!1997, !1998, !1999, !2000, !2001}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1995, file: !1936, line: 242, baseType: !575, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1995, file: !1936, line: 243, baseType: !575, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1995, file: !1936, line: 244, baseType: !1984, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1995, file: !1936, line: 245, baseType: !1987, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1995, file: !1936, line: 246, baseType: !651, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1936, line: 254, baseType: !2003, size: 256, offset: 1344)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1936, line: 254, size: 256, elements: !2004)
!2004 = !{!2005, !2011}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2003, file: !1936, line: 255, baseType: !2006, size: 256)
!2006 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1936, line: 128, size: 256, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2006, file: !1936, line: 129, baseType: !621, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2006, file: !1936, line: 130, baseType: !2010, size: 256)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 256, elements: !502)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !1936, line: 256, baseType: !2012, size: 256)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2003, file: !1936, line: 256, size: 256, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2012, file: !1936, line: 258, baseType: !669, size: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2012, file: !1936, line: 259, baseType: !2016, size: 128, offset: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2017, line: 22, size: 128, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2022}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2016, file: !2017, line: 23, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2017, line: 23, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2016, file: !2017, line: 24, baseType: !575, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1935, file: !1936, line: 274, baseType: !2024, size: 64, offset: 1600)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1936, line: 170, size: 192, elements: !2026)
!2026 = !{!2027, !2036, !2037}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2025, file: !1936, line: 171, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1936, line: 165, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!339, !1934, !2032, !2034, !1934}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1985)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2006)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2025, file: !1936, line: 172, baseType: !1934, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2025, file: !1936, line: 173, baseType: !1984, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1906, file: !1907, line: 138, baseType: !1934, size: 64, offset: 768)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1906, file: !1907, line: 139, baseType: !1934, size: 64, offset: 832)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1906, file: !1907, line: 140, baseType: !1934, size: 64, offset: 896)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1906, file: !1907, line: 145, baseType: !2042, size: 64, offset: 960)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2044, line: 13, size: 896, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2043, file: !2044, line: 14, baseType: !348, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2043, file: !2044, line: 15, baseType: !353, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2043, file: !2044, line: 16, baseType: !353, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2043, file: !2044, line: 21, baseType: !1219, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2043, file: !2044, line: 27, baseType: !575, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2043, file: !2044, line: 28, baseType: !575, size: 64, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2043, file: !2044, line: 29, baseType: !1219, size: 64, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2043, file: !2044, line: 32, baseType: !1090, size: 128, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2043, file: !2044, line: 33, baseType: !887, size: 32, offset: 512)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2043, file: !2044, line: 37, baseType: !1219, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2043, file: !2044, line: 44, baseType: !2057, size: 256, offset: 640)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2058, line: 15, size: 256, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2057, file: !2058, line: 16, baseType: !1228)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2057, file: !2058, line: 18, baseType: !339, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2057, file: !2058, line: 19, baseType: !339, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2057, file: !2058, line: 20, baseType: !339, size: 32, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2057, file: !2058, line: 21, baseType: !339, size: 32, offset: 96)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2057, file: !2058, line: 22, baseType: !575, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !2058, line: 23, baseType: !575, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1906, file: !1907, line: 146, baseType: !2068, size: 64, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1174, line: 516, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1906, file: !1907, line: 147, baseType: !2071, size: 64, offset: 1088)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1907, line: 25, size: 64, elements: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2072, file: !1907, line: 26, baseType: !353, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2072, file: !1907, line: 27, baseType: !339, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2072, file: !1907, line: 28, baseType: !2077, offset: 64)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 0)
!2080 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1907, line: 149, baseType: !2081, size: 128, offset: 1152)
!2081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1907, line: 149, size: 128, elements: !2082)
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2081, file: !1907, line: 150, baseType: !339, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2081, file: !1907, line: 151, baseType: !825, size: 128, align: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1581, file: !1582, line: 926, baseType: !1904, size: 64, offset: 8576)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1581, file: !1582, line: 929, baseType: !1904, size: 64, offset: 8640)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1581, file: !1582, line: 933, baseType: !1934, size: 64, offset: 8704)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1581, file: !1582, line: 943, baseType: !2089, size: 128, offset: 8768)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 128, elements: !2090)
!2090 = !{!2091}
!2091 = !DISubrange(count: 16)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1581, file: !1582, line: 945, baseType: !2093, size: 64, offset: 8896)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1582, line: 49, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1581, file: !1582, line: 956, baseType: !2096, size: 64, offset: 8960)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1582, line: 45, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1581, file: !1582, line: 959, baseType: !2099, size: 64, offset: 9024)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1582, line: 959, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1581, file: !1582, line: 962, baseType: !2102, size: 64, offset: 9088)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1582, line: 66, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1581, file: !1582, line: 966, baseType: !2105, size: 64, offset: 9152)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1582, line: 50, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1581, file: !1582, line: 969, baseType: !2108, size: 64, offset: 9216)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2110, line: 82, size: 7296, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2118, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2147, !2156, !2157, !2159, !2160, !2161, !2164, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2194, !2195, !2202, !2203, !2204, !2205, !2206, !2207}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2109, file: !2110, line: 83, baseType: !348, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2109, file: !2110, line: 84, baseType: !353, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2109, file: !2110, line: 85, baseType: !339, size: 32, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2109, file: !2110, line: 86, baseType: !669, size: 128, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2109, file: !2110, line: 88, baseType: !1838, size: 128, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2109, file: !2110, line: 91, baseType: !1580, size: 64, offset: 384)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2109, file: !2110, line: 94, baseType: !2119, size: 192, offset: 448)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2120, line: 30, size: 192, elements: !2121)
!2120 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2119, file: !2120, line: 31, baseType: !669, size: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2119, file: !2120, line: 32, baseType: !2124, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2125, line: 25, baseType: !2126)
!2125 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2125, line: 23, size: 64, elements: !2127)
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2126, file: !2125, line: 24, baseType: !1725, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2109, file: !2110, line: 97, baseType: !1086, size: 64, offset: 640)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2109, file: !2110, line: 100, baseType: !339, size: 32, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2109, file: !2110, line: 106, baseType: !339, size: 32, offset: 736)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2109, file: !2110, line: 107, baseType: !1580, size: 64, offset: 768)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2109, file: !2110, line: 110, baseType: !339, size: 32, offset: 832)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2109, file: !2110, line: 111, baseType: !5, size: 32, offset: 864)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2109, file: !2110, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2109, file: !2110, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2109, file: !2110, line: 128, baseType: !339, size: 32, offset: 928)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2109, file: !2110, line: 129, baseType: !669, size: 128, offset: 960)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2109, file: !2110, line: 132, baseType: !1651, size: 512, offset: 1088)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2109, file: !2110, line: 133, baseType: !1659, size: 64, offset: 1600)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2109, file: !2110, line: 140, baseType: !2142, size: 256, offset: 1664)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2143, size: 256, elements: !1926)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2110, line: 38, size: 128, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2143, file: !2110, line: 39, baseType: !616, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2143, file: !2110, line: 40, baseType: !616, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2109, file: !2110, line: 146, baseType: !2148, size: 192, offset: 1920)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2110, line: 66, size: 192, elements: !2149)
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2148, file: !2110, line: 67, baseType: !2151, size: 192)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2110, line: 47, size: 192, elements: !2152)
!2152 = !{!2153, !2154, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2151, file: !2110, line: 48, baseType: !1221, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2151, file: !2110, line: 49, baseType: !1221, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2151, file: !2110, line: 50, baseType: !1221, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2109, file: !2110, line: 150, baseType: !1887, size: 640, offset: 2112)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2109, file: !2110, line: 153, baseType: !2158, size: 256, offset: 2752)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1828, size: 256, elements: !502)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2109, file: !2110, line: 159, baseType: !1828, size: 64, offset: 3008)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2109, file: !2110, line: 162, baseType: !339, size: 32, offset: 3072)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2109, file: !2110, line: 164, baseType: !2162, size: 64, offset: 3136)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2110, line: 164, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2109, file: !2110, line: 175, baseType: !2165, size: 32, offset: 3200)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !848, line: 805, baseType: !2166)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 798, size: 32, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2166, file: !848, line: 803, baseType: !847, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2166, file: !848, line: 804, baseType: !699, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2109, file: !2110, line: 176, baseType: !616, size: 64, offset: 3264)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2109, file: !2110, line: 176, baseType: !616, size: 64, offset: 3328)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2109, file: !2110, line: 176, baseType: !616, size: 64, offset: 3392)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2109, file: !2110, line: 176, baseType: !616, size: 64, offset: 3456)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2109, file: !2110, line: 177, baseType: !616, size: 64, offset: 3520)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2109, file: !2110, line: 178, baseType: !616, size: 64, offset: 3584)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2109, file: !2110, line: 179, baseType: !1875, size: 128, offset: 3648)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2109, file: !2110, line: 180, baseType: !575, size: 64, offset: 3776)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2109, file: !2110, line: 180, baseType: !575, size: 64, offset: 3840)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2109, file: !2110, line: 180, baseType: !575, size: 64, offset: 3904)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2109, file: !2110, line: 180, baseType: !575, size: 64, offset: 3968)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2109, file: !2110, line: 181, baseType: !575, size: 64, offset: 4032)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2109, file: !2110, line: 181, baseType: !575, size: 64, offset: 4096)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2109, file: !2110, line: 181, baseType: !575, size: 64, offset: 4160)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2109, file: !2110, line: 181, baseType: !575, size: 64, offset: 4224)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2109, file: !2110, line: 182, baseType: !575, size: 64, offset: 4288)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2109, file: !2110, line: 182, baseType: !575, size: 64, offset: 4352)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2109, file: !2110, line: 182, baseType: !575, size: 64, offset: 4416)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2109, file: !2110, line: 182, baseType: !575, size: 64, offset: 4480)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2109, file: !2110, line: 183, baseType: !575, size: 64, offset: 4544)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2109, file: !2110, line: 183, baseType: !575, size: 64, offset: 4608)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2109, file: !2110, line: 184, baseType: !2192, offset: 4672)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2193, line: 12, elements: !713)
!2193 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2109, file: !2110, line: 192, baseType: !498, size: 64, offset: 4672)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2109, file: !2110, line: 203, baseType: !2196, size: 2048, offset: 4736)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2197, size: 2048, elements: !2090)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2198, line: 43, size: 128, elements: !2199)
!2198 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2197, file: !2198, line: 44, baseType: !784, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2197, file: !2198, line: 45, baseType: !784, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2109, file: !2110, line: 220, baseType: !407, size: 8, offset: 6784)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2109, file: !2110, line: 221, baseType: !1569, size: 16, offset: 6800)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2109, file: !2110, line: 222, baseType: !1569, size: 16, offset: 6816)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2109, file: !2110, line: 224, baseType: !1420, size: 64, offset: 6848)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2109, file: !2110, line: 227, baseType: !1537, size: 192, offset: 6912)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2109, file: !2110, line: 233, baseType: !1537, size: 192, offset: 7104)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1581, file: !1582, line: 970, baseType: !2209, size: 64, offset: 9280)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2110, line: 20, size: 16576, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2210, file: !2110, line: 21, baseType: !699)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2210, file: !2110, line: 22, baseType: !348, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2210, file: !2110, line: 23, baseType: !1838, size: 128, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2210, file: !2110, line: 24, baseType: !2216, size: 16384, offset: 192)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2217, size: 16384, elements: !742)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2120, line: 49, size: 256, elements: !2218)
!2218 = !{!2219}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2217, file: !2120, line: 50, baseType: !2220, size: 256)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2120, line: 35, size: 256, elements: !2221)
!2221 = !{!2222, !2229, !2230, !2236}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2220, file: !2120, line: 37, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2224, line: 19, baseType: !2225)
!2224 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2224, line: 18, baseType: !2227)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !339}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2220, file: !2120, line: 38, baseType: !575, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2220, file: !2120, line: 44, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2224, line: 22, baseType: !2232)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2224, line: 21, baseType: !2234)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2220, file: !2120, line: 46, baseType: !2124, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1581, file: !1582, line: 971, baseType: !2124, size: 64, offset: 9344)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1581, file: !1582, line: 972, baseType: !2124, size: 64, offset: 9408)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1581, file: !1582, line: 974, baseType: !2124, size: 64, offset: 9472)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1581, file: !1582, line: 975, baseType: !2119, size: 192, offset: 9536)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1581, file: !1582, line: 976, baseType: !575, size: 64, offset: 9728)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1581, file: !1582, line: 977, baseType: !782, size: 64, offset: 9792)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1581, file: !1582, line: 978, baseType: !5, size: 32, offset: 9856)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1581, file: !1582, line: 980, baseType: !828, size: 64, offset: 9920)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1581, file: !1582, line: 989, baseType: !2246, size: 128, offset: 9984)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2247, line: 35, size: 128, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !{!2249, !2250, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2246, file: !2247, line: 36, baseType: !339, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2246, file: !2247, line: 37, baseType: !353, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2246, file: !2247, line: 38, baseType: !2252, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2247, line: 23, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1581, file: !1582, line: 992, baseType: !616, size: 64, offset: 10112)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1581, file: !1582, line: 993, baseType: !616, size: 64, offset: 10176)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1581, file: !1582, line: 996, baseType: !699, offset: 10240)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1581, file: !1582, line: 999, baseType: !1228, offset: 10240)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1581, file: !1582, line: 1001, baseType: !2259, size: 64, offset: 10240)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1582, line: 636, size: 64, elements: !2260)
!2260 = !{!2261}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2259, file: !1582, line: 637, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1581, file: !1582, line: 1005, baseType: !1200, size: 128, offset: 10304)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1581, file: !1582, line: 1007, baseType: !1580, size: 64, offset: 10432)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1581, file: !1582, line: 1009, baseType: !2266, size: 64, offset: 10496)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1582, line: 1009, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1581, file: !1582, line: 1043, baseType: !621, size: 64, offset: 10560)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1581, file: !1582, line: 1046, baseType: !2270, size: 64, offset: 10624)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1582, line: 41, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1581, file: !1582, line: 1050, baseType: !2273, size: 64, offset: 10688)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1582, line: 42, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1581, file: !1582, line: 1054, baseType: !2276, size: 64, offset: 10752)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1582, line: 55, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1581, file: !1582, line: 1056, baseType: !2279, size: 64, offset: 10816)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1582, line: 40, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1581, file: !1582, line: 1058, baseType: !2282, size: 64, offset: 10880)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2284, line: 99, size: 704, elements: !2285)
!2284 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292, !2311, !2312}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2283, file: !2284, line: 100, baseType: !1219, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2283, file: !2284, line: 101, baseType: !353, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2283, file: !2284, line: 102, baseType: !353, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2283, file: !2284, line: 105, baseType: !699, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2283, file: !2284, line: 107, baseType: !527, size: 16, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2283, file: !2284, line: 109, baseType: !1190, size: 128, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2283, file: !2284, line: 110, baseType: !2293, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2284, line: 73, size: 448, elements: !2295)
!2295 = !{!2296, !2299, !2300, !2305, !2310}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2294, file: !2284, line: 74, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2284, line: 74, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2294, file: !2284, line: 75, baseType: !2282, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2294, file: !2284, line: 83, baseType: !2301, size: 128, offset: 128)
!2301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2294, file: !2284, line: 83, size: 128, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2301, file: !2284, line: 84, baseType: !669, size: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2301, file: !2284, line: 85, baseType: !1381, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2294, file: !2284, line: 87, baseType: !2306, size: 128, offset: 256)
!2306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2294, file: !2284, line: 87, size: 128, elements: !2307)
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2306, file: !2284, line: 88, baseType: !1090, size: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2306, file: !2284, line: 89, baseType: !825, size: 128, align: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !2284, line: 92, baseType: !5, size: 32, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2283, file: !2284, line: 111, baseType: !1086, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2283, file: !2284, line: 113, baseType: !2313, size: 256, offset: 448)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2314, line: 102, size: 256, elements: !2315)
!2314 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2313, file: !2314, line: 103, baseType: !1219, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2313, file: !2314, line: 104, baseType: !669, size: 128, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2313, file: !2314, line: 105, baseType: !2319, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2314, line: 21, baseType: !2320)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1581, file: !1582, line: 1061, baseType: !2325, size: 64, offset: 10944)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1582, line: 43, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1581, file: !1582, line: 1064, baseType: !575, size: 64, offset: 11008)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1581, file: !1582, line: 1065, baseType: !2329, size: 64, offset: 11072)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2120, line: 14, baseType: !2331)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2120, line: 12, size: 384, elements: !2332)
!2332 = !{!2333}
!2333 = !DIDerivedType(tag: DW_TAG_member, scope: !2331, file: !2120, line: 13, baseType: !2334, size: 384)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2331, file: !2120, line: 13, size: 384, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2339}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2334, file: !2120, line: 13, baseType: !339, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2334, file: !2120, line: 13, baseType: !339, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2334, file: !2120, line: 13, baseType: !339, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2334, file: !2120, line: 13, baseType: !2340, size: 256, offset: 128)
!2340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2341, line: 32, size: 256, elements: !2342)
!2341 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2342 = !{!2343, !2348, !2361, !2367, !2376, !2396, !2401}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2340, file: !2341, line: 37, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2340, file: !2341, line: 34, size: 64, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2344, file: !2341, line: 35, baseType: !1817, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2344, file: !2341, line: 36, baseType: !893, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2340, file: !2341, line: 45, baseType: !2349, size: 192)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2340, file: !2341, line: 40, size: 192, elements: !2350)
!2350 = !{!2351, !2353, !2354, !2360}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2349, file: !2341, line: 41, baseType: !2352, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !770, line: 95, baseType: !339)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2349, file: !2341, line: 42, baseType: !339, size: 32, offset: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2349, file: !2341, line: 43, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2341, line: 11, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2341, line: 8, size: 64, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2356, file: !2341, line: 9, baseType: !339, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2356, file: !2341, line: 10, baseType: !621, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2349, file: !2341, line: 44, baseType: !339, size: 32, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2340, file: !2341, line: 52, baseType: !2362, size: 128)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2340, file: !2341, line: 48, size: 128, elements: !2363)
!2363 = !{!2364, !2365, !2366}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2362, file: !2341, line: 49, baseType: !1817, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2362, file: !2341, line: 50, baseType: !893, size: 32, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2362, file: !2341, line: 51, baseType: !2355, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2340, file: !2341, line: 61, baseType: !2368, size: 256)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2340, file: !2341, line: 55, size: 256, elements: !2369)
!2369 = !{!2370, !2371, !2372, !2373, !2375}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2368, file: !2341, line: 56, baseType: !1817, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2368, file: !2341, line: 57, baseType: !893, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2368, file: !2341, line: 58, baseType: !339, size: 32, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2368, file: !2341, line: 59, baseType: !2374, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !770, line: 94, baseType: !771)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2368, file: !2341, line: 60, baseType: !2374, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2340, file: !2341, line: 95, baseType: !2377, size: 256)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2340, file: !2341, line: 64, size: 256, elements: !2378)
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2377, file: !2341, line: 65, baseType: !621, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !2377, file: !2341, line: 77, baseType: !2381, size: 192, offset: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2377, file: !2341, line: 77, size: 192, elements: !2382)
!2382 = !{!2383, !2384, !2391}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2381, file: !2341, line: 82, baseType: !1569, size: 16)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2381, file: !2341, line: 88, baseType: !2385, size: 192)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2381, file: !2341, line: 84, size: 192, elements: !2386)
!2386 = !{!2387, !2389, !2390}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2385, file: !2341, line: 85, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 64, elements: !386)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2385, file: !2341, line: 86, baseType: !621, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2385, file: !2341, line: 87, baseType: !621, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2381, file: !2341, line: 93, baseType: !2392, size: 96)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2381, file: !2341, line: 90, size: 96, elements: !2393)
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2392, file: !2341, line: 91, baseType: !2388, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2392, file: !2341, line: 92, baseType: !372, size: 32, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2340, file: !2341, line: 101, baseType: !2397, size: 128)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2340, file: !2341, line: 98, size: 128, elements: !2398)
!2398 = !{!2399, !2400}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2397, file: !2341, line: 99, baseType: !570, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2397, file: !2341, line: 100, baseType: !339, size: 32, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2340, file: !2341, line: 108, baseType: !2402, size: 128)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2340, file: !2341, line: 104, size: 128, elements: !2403)
!2403 = !{!2404, !2405, !2406}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2402, file: !2341, line: 105, baseType: !621, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2402, file: !2341, line: 106, baseType: !339, size: 32, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2402, file: !2341, line: 107, baseType: !5, size: 32, offset: 96)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1581, file: !1582, line: 1067, baseType: !2192, offset: 11136)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1581, file: !1582, line: 1099, baseType: !2409, size: 64, offset: 11136)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1582, line: 56, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1581, file: !1582, line: 1103, baseType: !669, size: 128, offset: 11200)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1581, file: !1582, line: 1104, baseType: !2413, size: 64, offset: 11328)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1582, line: 46, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1581, file: !1582, line: 1105, baseType: !1537, size: 192, offset: 11392)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1581, file: !1582, line: 1106, baseType: !5, size: 32, offset: 11584)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1581, file: !1582, line: 1109, baseType: !2418, size: 128, offset: 11648)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2419, size: 128, elements: !1926)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1582, line: 51, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1581, file: !1582, line: 1110, baseType: !1537, size: 192, offset: 11776)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1581, file: !1582, line: 1111, baseType: !669, size: 128, offset: 11968)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1581, file: !1582, line: 1173, baseType: !2424, size: 64, offset: 12096)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2426, line: 62, size: 256, align: 256, elements: !2427)
!2426 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2427 = !{!2428, !2429, !2430, !2435}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2425, file: !2426, line: 75, baseType: !372, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2425, file: !2426, line: 90, baseType: !372, size: 32, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2425, file: !2426, line: 124, baseType: !2431, size: 64, offset: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2425, file: !2426, line: 109, size: 64, elements: !2432)
!2432 = !{!2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2431, file: !2426, line: 110, baseType: !497, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2431, file: !2426, line: 112, baseType: !497, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2425, file: !2426, line: 144, baseType: !372, size: 32, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1581, file: !1582, line: 1174, baseType: !370, size: 32, offset: 12160)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1581, file: !1582, line: 1179, baseType: !575, size: 64, offset: 12224)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1581, file: !1582, line: 1182, baseType: !2439, size: 128, offset: 12288)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1517, line: 76, size: 128, elements: !2440)
!2440 = !{!2441, !2446, !2447}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2439, file: !1517, line: 85, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2443, line: 7, size: 64, elements: !2444)
!2443 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2444 = !{!2445}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2442, file: !2443, line: 12, baseType: !1722, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2439, file: !1517, line: 88, baseType: !407, size: 8, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2439, file: !1517, line: 95, baseType: !407, size: 8, offset: 72)
!2448 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1582, line: 1184, baseType: !2449, size: 128, offset: 12416)
!2449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !1582, line: 1184, size: 128, elements: !2450)
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2449, file: !1582, line: 1185, baseType: !348, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2449, file: !1582, line: 1186, baseType: !825, size: 128, align: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1581, file: !1582, line: 1190, baseType: !2454, size: 64, offset: 12544)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1582, line: 53, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1581, file: !1582, line: 1192, baseType: !2457, size: 128, offset: 12608)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1517, line: 64, size: 128, elements: !2458)
!2458 = !{!2459, !2460, !2461}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2457, file: !1517, line: 65, baseType: !1172, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2457, file: !1517, line: 67, baseType: !372, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2457, file: !1517, line: 68, baseType: !372, size: 32, offset: 96)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1581, file: !1582, line: 1206, baseType: !339, size: 32, offset: 12736)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1581, file: !1582, line: 1207, baseType: !339, size: 32, offset: 12768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1581, file: !1582, line: 1209, baseType: !575, size: 64, offset: 12800)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1581, file: !1582, line: 1219, baseType: !616, size: 64, offset: 12864)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1581, file: !1582, line: 1220, baseType: !616, size: 64, offset: 12928)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1581, file: !1582, line: 1317, baseType: !339, size: 32, offset: 12992)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1581, file: !1582, line: 1319, baseType: !1580, size: 64, offset: 13056)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1581, file: !1582, line: 1322, baseType: !2470, size: 64, offset: 13120)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2472, line: 56, size: 512, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2482}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2471, file: !2472, line: 57, baseType: !2470, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2471, file: !2472, line: 58, baseType: !621, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2471, file: !2472, line: 59, baseType: !575, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2471, file: !2472, line: 60, baseType: !575, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2471, file: !2472, line: 61, baseType: !1268, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2471, file: !2472, line: 62, baseType: !5, size: 32, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2471, file: !2472, line: 63, baseType: !2481, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !354, line: 153, baseType: !616)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2471, file: !2472, line: 64, baseType: !2483, size: 64, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1581, file: !1582, line: 1326, baseType: !348, size: 32, offset: 13184)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1581, file: !1582, line: 1342, baseType: !621, size: 64, offset: 13248)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1581, file: !1582, line: 1343, baseType: !497, size: 64, offset: 13312)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1581, file: !1582, line: 1344, baseType: !616, size: 64, offset: 13376)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1581, file: !1582, line: 1345, baseType: !497, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1581, file: !1582, line: 1346, baseType: !497, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1581, file: !1582, line: 1347, baseType: !497, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1581, file: !1582, line: 1348, baseType: !825, size: 128, align: 64, offset: 13504)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1581, file: !1582, line: 1358, baseType: !2494, size: 34816, offset: 13824)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2495, line: 485, size: 34816, elements: !2496)
!2495 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2496 = !{!2497, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2526, !2527, !2528, !2529, !2530, !2531, !2534, !2535, !2536}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2494, file: !2495, line: 487, baseType: !2498, size: 192)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2499, size: 192, elements: !464)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2500, line: 16, size: 64, elements: !2501)
!2500 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2499, file: !2500, line: 17, baseType: !525, size: 16)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2499, file: !2500, line: 18, baseType: !525, size: 16, offset: 16)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2499, file: !2500, line: 19, baseType: !525, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2499, file: !2500, line: 19, baseType: !525, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2499, file: !2500, line: 19, baseType: !525, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2499, file: !2500, line: 19, baseType: !525, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2499, file: !2500, line: 19, baseType: !525, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2499, file: !2500, line: 20, baseType: !525, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2499, file: !2500, line: 20, baseType: !525, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2499, file: !2500, line: 20, baseType: !525, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2499, file: !2500, line: 20, baseType: !525, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2499, file: !2500, line: 20, baseType: !525, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2499, file: !2500, line: 20, baseType: !525, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2494, file: !2495, line: 491, baseType: !575, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2494, file: !2495, line: 495, baseType: !527, size: 16, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2494, file: !2495, line: 496, baseType: !527, size: 16, offset: 272)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2494, file: !2495, line: 497, baseType: !527, size: 16, offset: 288)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2494, file: !2495, line: 498, baseType: !527, size: 16, offset: 304)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2494, file: !2495, line: 502, baseType: !575, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2494, file: !2495, line: 503, baseType: !575, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2494, file: !2495, line: 514, baseType: !2523, size: 256, offset: 448)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2524, size: 256, elements: !502)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2495, line: 483, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2494, file: !2495, line: 516, baseType: !575, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2494, file: !2495, line: 518, baseType: !575, size: 64, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2494, file: !2495, line: 520, baseType: !575, size: 64, offset: 832)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2494, file: !2495, line: 521, baseType: !575, size: 64, offset: 896)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2494, file: !2495, line: 522, baseType: !575, size: 64, offset: 960)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2494, file: !2495, line: 528, baseType: !2532, size: 64, offset: 1024)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2495, line: 10, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2494, file: !2495, line: 535, baseType: !575, size: 64, offset: 1088)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2494, file: !2495, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2494, file: !2495, line: 540, baseType: !2537, size: 33280, offset: 1536)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2538, line: 317, size: 33280, elements: !2539)
!2538 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2537, file: !2538, line: 330, baseType: !5, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2537, file: !2538, line: 337, baseType: !575, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2537, file: !2538, line: 348, baseType: !2543, size: 32768, offset: 512)
!2543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2538, line: 304, size: 32768, elements: !2544)
!2544 = !{!2545, !2560, !2599, !2649, !2662}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2543, file: !2538, line: 305, baseType: !2546, size: 896)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2538, line: 12, size: 896, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2559}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2546, file: !2538, line: 13, baseType: !370, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2546, file: !2538, line: 14, baseType: !370, size: 32, offset: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2546, file: !2538, line: 15, baseType: !370, size: 32, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2546, file: !2538, line: 16, baseType: !370, size: 32, offset: 96)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2546, file: !2538, line: 17, baseType: !370, size: 32, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2546, file: !2538, line: 18, baseType: !370, size: 32, offset: 160)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2546, file: !2538, line: 19, baseType: !370, size: 32, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2546, file: !2538, line: 22, baseType: !2556, size: 640, offset: 224)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 640, elements: !2557)
!2557 = !{!2558}
!2558 = !DISubrange(count: 20)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2546, file: !2538, line: 25, baseType: !370, size: 32, offset: 864)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2543, file: !2538, line: 306, baseType: !2561, size: 4096, align: 128)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2538, line: 34, size: 4096, align: 128, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2582, !2583, !2584, !2588, !2590, !2594}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2561, file: !2538, line: 35, baseType: !525, size: 16)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2561, file: !2538, line: 36, baseType: !525, size: 16, offset: 16)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2561, file: !2538, line: 37, baseType: !525, size: 16, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2561, file: !2538, line: 38, baseType: !525, size: 16, offset: 48)
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !2538, line: 39, baseType: !2568, size: 128, offset: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2561, file: !2538, line: 39, size: 128, elements: !2569)
!2569 = !{!2570, !2575}
!2570 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !2538, line: 40, baseType: !2571, size: 128)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !2538, line: 40, size: 128, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2571, file: !2538, line: 41, baseType: !616, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2571, file: !2538, line: 42, baseType: !616, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !2538, line: 44, baseType: !2576, size: 128)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !2538, line: 44, size: 128, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2576, file: !2538, line: 45, baseType: !370, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2576, file: !2538, line: 46, baseType: !370, size: 32, offset: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2576, file: !2538, line: 47, baseType: !370, size: 32, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2576, file: !2538, line: 48, baseType: !370, size: 32, offset: 96)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2561, file: !2538, line: 51, baseType: !370, size: 32, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2561, file: !2538, line: 52, baseType: !370, size: 32, offset: 224)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2561, file: !2538, line: 55, baseType: !2585, size: 1024, offset: 256)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 1024, elements: !2586)
!2586 = !{!2587}
!2587 = !DISubrange(count: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2561, file: !2538, line: 58, baseType: !2589, size: 2048, offset: 1280)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 2048, elements: !742)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2561, file: !2538, line: 60, baseType: !2591, size: 384, offset: 3328)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 384, elements: !2592)
!2592 = !{!2593}
!2593 = !DISubrange(count: 12)
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !2538, line: 62, baseType: !2595, size: 384, offset: 3712)
!2595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2561, file: !2538, line: 62, size: 384, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2595, file: !2538, line: 63, baseType: !2591, size: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2595, file: !2538, line: 64, baseType: !2591, size: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2543, file: !2538, line: 307, baseType: !2600, size: 1088)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2538, line: 79, size: 1088, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2648}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2600, file: !2538, line: 80, baseType: !370, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2600, file: !2538, line: 81, baseType: !370, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2600, file: !2538, line: 82, baseType: !370, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2600, file: !2538, line: 83, baseType: !370, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2600, file: !2538, line: 84, baseType: !370, size: 32, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2600, file: !2538, line: 85, baseType: !370, size: 32, offset: 160)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2600, file: !2538, line: 86, baseType: !370, size: 32, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2600, file: !2538, line: 88, baseType: !2556, size: 640, offset: 224)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2600, file: !2538, line: 89, baseType: !383, size: 8, offset: 864)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2600, file: !2538, line: 90, baseType: !383, size: 8, offset: 872)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2600, file: !2538, line: 91, baseType: !383, size: 8, offset: 880)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2600, file: !2538, line: 92, baseType: !383, size: 8, offset: 888)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2600, file: !2538, line: 93, baseType: !383, size: 8, offset: 896)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2600, file: !2538, line: 94, baseType: !383, size: 8, offset: 904)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2600, file: !2538, line: 95, baseType: !2617, size: 64, offset: 960)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2619, line: 11, size: 128, elements: !2620)
!2619 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2618, file: !2619, line: 12, baseType: !570, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2618, file: !2619, line: 13, baseType: !2623, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2625, line: 56, size: 1344, elements: !2626)
!2625 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2624, file: !2625, line: 61, baseType: !575, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2624, file: !2625, line: 62, baseType: !575, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2624, file: !2625, line: 63, baseType: !575, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2624, file: !2625, line: 64, baseType: !575, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2624, file: !2625, line: 65, baseType: !575, size: 64, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2624, file: !2625, line: 66, baseType: !575, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2624, file: !2625, line: 68, baseType: !575, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2624, file: !2625, line: 69, baseType: !575, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2624, file: !2625, line: 70, baseType: !575, size: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2624, file: !2625, line: 71, baseType: !575, size: 64, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2624, file: !2625, line: 72, baseType: !575, size: 64, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2624, file: !2625, line: 73, baseType: !575, size: 64, offset: 704)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2624, file: !2625, line: 74, baseType: !575, size: 64, offset: 768)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2624, file: !2625, line: 75, baseType: !575, size: 64, offset: 832)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2624, file: !2625, line: 76, baseType: !575, size: 64, offset: 896)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2624, file: !2625, line: 81, baseType: !575, size: 64, offset: 960)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2624, file: !2625, line: 83, baseType: !575, size: 64, offset: 1024)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2624, file: !2625, line: 84, baseType: !575, size: 64, offset: 1088)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2624, file: !2625, line: 85, baseType: !575, size: 64, offset: 1152)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2624, file: !2625, line: 86, baseType: !575, size: 64, offset: 1216)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2624, file: !2625, line: 87, baseType: !575, size: 64, offset: 1280)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2600, file: !2538, line: 96, baseType: !370, size: 32, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2543, file: !2538, line: 308, baseType: !2650, size: 4608, align: 512)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2538, line: 289, size: 4608, align: 512, elements: !2651)
!2651 = !{!2652, !2653, !2660}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2650, file: !2538, line: 290, baseType: !2561, size: 4096, align: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2650, file: !2538, line: 291, baseType: !2654, size: 512, offset: 4096)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2538, line: 268, size: 512, elements: !2655)
!2655 = !{!2656, !2657, !2658}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2654, file: !2538, line: 269, baseType: !616, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2654, file: !2538, line: 270, baseType: !616, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2654, file: !2538, line: 271, baseType: !2659, size: 384, offset: 128)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 384, elements: !540)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2650, file: !2538, line: 292, baseType: !2661, offset: 4608)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, elements: !2078)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2543, file: !2538, line: 309, baseType: !2663, size: 32768)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 32768, elements: !2664)
!2664 = !{!2665}
!2665 = !DISubrange(count: 4096)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1577, file: !1174, line: 378, baseType: !2667, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1573, file: !1174, line: 384, baseType: !1859, size: 192, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1424, file: !1174, line: 500, baseType: !699, offset: 6656)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1424, file: !1174, line: 501, baseType: !2671, size: 64, offset: 6656)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1174, line: 387, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1424, file: !1174, line: 516, baseType: !2068, size: 64, offset: 6720)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1424, file: !1174, line: 519, baseType: !812, size: 64, offset: 6784)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1424, file: !1174, line: 521, baseType: !2676, size: 64, offset: 6848)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1174, line: 521, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1424, file: !1174, line: 545, baseType: !353, size: 32, offset: 6912)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1424, file: !1174, line: 548, baseType: !407, size: 8, offset: 6944)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1424, file: !1174, line: 550, baseType: !2681, offset: 6952)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2682, line: 142, elements: !713)
!2682 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1424, file: !1174, line: 554, baseType: !2313, size: 256, offset: 6976)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1424, file: !1174, line: 557, baseType: !370, size: 32, offset: 7232)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1421, file: !1174, line: 565, baseType: !2686, offset: 7296)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, elements: !2687)
!2687 = !{!2688}
!2688 = !DISubrange(count: -1)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1417, file: !1174, line: 151, baseType: !353, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1410, file: !1174, line: 156, baseType: !699, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1174, line: 159, baseType: !2692, size: 128)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !1174, line: 159, size: 128, elements: !2693)
!2693 = !{!2694, !2697}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2692, file: !1174, line: 161, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1174, line: 161, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2692, file: !1174, line: 162, baseType: !621, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1178, file: !1174, line: 176, baseType: !825, size: 128, align: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1174, line: 179, baseType: !2700, size: 32, offset: 384)
!2700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1174, line: 179, size: 32, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2705}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2700, file: !1174, line: 184, baseType: !353, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2700, file: !1174, line: 192, baseType: !5, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2700, file: !1174, line: 194, baseType: !5, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2700, file: !1174, line: 195, baseType: !339, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1173, file: !1174, line: 199, baseType: !353, size: 32, offset: 416)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1108, file: !206, line: 1964, baseType: !2708, size: 64, offset: 1344)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!570, !1047, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2713, line: 12, size: 256, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2714 = !{!2715, !2716, !2717, !2718, !2719}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2712, file: !2713, line: 13, baseType: !1195, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2712, file: !2713, line: 16, baseType: !339, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2712, file: !2713, line: 23, baseType: !575, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2712, file: !2713, line: 30, baseType: !575, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2712, file: !2713, line: 33, baseType: !2720, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1174, line: 27, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1108, file: !206, line: 1966, baseType: !2708, size: 64, offset: 1408)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1048, file: !206, line: 1424, baseType: !2724, size: 64, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2726)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !200, line: 322, size: 704, elements: !2727)
!2727 = !{!2728, !2774, !2778, !2782, !2783, !2784, !2785, !2786, !2791, !2796, !2800}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2726, file: !200, line: 323, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!339, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !200, line: 294, size: 1600, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2759, !2760, !2761}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2733, file: !200, line: 295, baseType: !1090, size: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2733, file: !200, line: 296, baseType: !669, size: 128, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2733, file: !200, line: 297, baseType: !669, size: 128, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2733, file: !200, line: 298, baseType: !669, size: 128, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2733, file: !200, line: 299, baseType: !1537, size: 192, offset: 512)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2733, file: !200, line: 300, baseType: !699, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2733, file: !200, line: 301, baseType: !353, size: 32, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2733, file: !200, line: 302, baseType: !1047, size: 64, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2733, file: !200, line: 303, baseType: !2744, size: 64, offset: 832)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !200, line: 68, size: 64, elements: !2745)
!2745 = !{!2746, !2758}
!2746 = !DIDerivedType(tag: DW_TAG_member, scope: !2744, file: !200, line: 69, baseType: !2747, size: 32)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2744, file: !200, line: 69, size: 32, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2747, file: !200, line: 70, baseType: !887, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2747, file: !200, line: 71, baseType: !895, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2747, file: !200, line: 72, baseType: !2752, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2753, line: 24, baseType: !2754)
!2753 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2753, line: 22, size: 32, elements: !2755)
!2755 = !{!2756}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2754, file: !2753, line: 23, baseType: !2757, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2753, line: 20, baseType: !893)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2744, file: !200, line: 74, baseType: !199, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2733, file: !200, line: 304, baseType: !981, size: 64, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2733, file: !200, line: 305, baseType: !575, size: 64, offset: 960)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2733, file: !200, line: 306, baseType: !2762, size: 576, offset: 1024)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !200, line: 205, size: 576, elements: !2763)
!2763 = !{!2764, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2762, file: !200, line: 206, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !200, line: 66, baseType: !501)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2762, file: !200, line: 207, baseType: !2765, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2762, file: !200, line: 208, baseType: !2765, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2762, file: !200, line: 209, baseType: !2765, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2762, file: !200, line: 210, baseType: !2765, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2762, file: !200, line: 211, baseType: !2765, size: 64, offset: 320)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2762, file: !200, line: 212, baseType: !2765, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2762, file: !200, line: 213, baseType: !988, size: 64, offset: 448)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2762, file: !200, line: 214, baseType: !988, size: 64, offset: 512)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2726, file: !200, line: 324, baseType: !2775, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!2732, !1047, !339}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2726, file: !200, line: 325, baseType: !2779, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2732}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2726, file: !200, line: 326, baseType: !2729, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2726, file: !200, line: 327, baseType: !2729, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2726, file: !200, line: 328, baseType: !2729, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2726, file: !200, line: 329, baseType: !1136, size: 64, offset: 384)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2726, file: !200, line: 332, baseType: !2787, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!2790, !881}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2726, file: !200, line: 333, baseType: !2792, size: 64, offset: 512)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!339, !881, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2726, file: !200, line: 335, baseType: !2797, size: 64, offset: 576)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!339, !881, !2790}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2726, file: !200, line: 337, baseType: !2801, size: 64, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!339, !1047, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1048, file: !206, line: 1425, baseType: !2806, size: 64, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !200, line: 428, size: 704, elements: !2809)
!2809 = !{!2810, !2814, !2815, !2819, !2820, !2821, !2836, !2859, !2863, !2864, !2887}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2808, file: !200, line: 429, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!339, !1047, !339, !339, !997}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2808, file: !200, line: 430, baseType: !1136, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2808, file: !200, line: 431, baseType: !2816, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!339, !1047, !5}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2808, file: !200, line: 432, baseType: !2816, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2808, file: !200, line: 433, baseType: !1136, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2808, file: !200, line: 434, baseType: !2822, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!339, !1047, !339, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !200, line: 415, size: 256, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2826, file: !200, line: 416, baseType: !339, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2826, file: !200, line: 417, baseType: !5, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2826, file: !200, line: 418, baseType: !5, size: 32, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2826, file: !200, line: 420, baseType: !5, size: 32, offset: 96)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2826, file: !200, line: 421, baseType: !5, size: 32, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2826, file: !200, line: 422, baseType: !5, size: 32, offset: 160)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2826, file: !200, line: 423, baseType: !5, size: 32, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2826, file: !200, line: 424, baseType: !5, size: 32, offset: 224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2808, file: !200, line: 435, baseType: !2837, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!339, !1047, !2744, !2840}
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !200, line: 343, size: 960, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2841, file: !200, line: 344, baseType: !339, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2841, file: !200, line: 345, baseType: !616, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2841, file: !200, line: 346, baseType: !616, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2841, file: !200, line: 347, baseType: !616, size: 64, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2841, file: !200, line: 348, baseType: !616, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2841, file: !200, line: 349, baseType: !616, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2841, file: !200, line: 350, baseType: !616, size: 64, offset: 384)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2841, file: !200, line: 351, baseType: !1225, size: 64, offset: 448)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2841, file: !200, line: 353, baseType: !1225, size: 64, offset: 512)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2841, file: !200, line: 354, baseType: !339, size: 32, offset: 576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2841, file: !200, line: 355, baseType: !339, size: 32, offset: 608)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2841, file: !200, line: 356, baseType: !616, size: 64, offset: 640)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2841, file: !200, line: 357, baseType: !616, size: 64, offset: 704)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2841, file: !200, line: 358, baseType: !616, size: 64, offset: 768)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2841, file: !200, line: 359, baseType: !1225, size: 64, offset: 832)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2841, file: !200, line: 360, baseType: !339, size: 32, offset: 896)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2808, file: !200, line: 436, baseType: !2860, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!339, !1047, !2804, !2840}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2808, file: !200, line: 438, baseType: !2837, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2808, file: !200, line: 439, baseType: !2865, size: 64, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!339, !1047, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !200, line: 409, size: 1408, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2869, file: !200, line: 410, baseType: !5, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2869, file: !200, line: 411, baseType: !2873, size: 1344, offset: 64)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 1344, elements: !464)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !200, line: 395, size: 448, elements: !2875)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2886}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2874, file: !200, line: 396, baseType: !5, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2874, file: !200, line: 397, baseType: !5, size: 32, offset: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2874, file: !200, line: 399, baseType: !5, size: 32, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2874, file: !200, line: 400, baseType: !5, size: 32, offset: 96)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2874, file: !200, line: 401, baseType: !5, size: 32, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2874, file: !200, line: 402, baseType: !5, size: 32, offset: 160)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2874, file: !200, line: 403, baseType: !5, size: 32, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2874, file: !200, line: 404, baseType: !498, size: 64, offset: 256)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2874, file: !200, line: 405, baseType: !2885, size: 64, offset: 320)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !354, line: 126, baseType: !616)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2874, file: !200, line: 406, baseType: !2885, size: 64, offset: 384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2808, file: !200, line: 440, baseType: !2816, size: 64, offset: 640)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1048, file: !206, line: 1426, baseType: !2889, size: 64, offset: 576)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !206, line: 49, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1048, file: !206, line: 1427, baseType: !575, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1048, file: !206, line: 1428, baseType: !575, size: 64, offset: 704)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1048, file: !206, line: 1429, baseType: !575, size: 64, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1048, file: !206, line: 1430, baseType: !842, size: 64, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1048, file: !206, line: 1431, baseType: !1215, size: 256, offset: 896)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1048, file: !206, line: 1432, baseType: !339, size: 32, offset: 1152)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1048, file: !206, line: 1433, baseType: !353, size: 32, offset: 1184)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1048, file: !206, line: 1437, baseType: !2900, size: 64, offset: 1216)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !206, line: 1437, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1048, file: !206, line: 1449, baseType: !2905, size: 64, offset: 1280)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !858, line: 34, size: 64, elements: !2906)
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2905, file: !858, line: 35, baseType: !861, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1048, file: !206, line: 1450, baseType: !669, size: 128, offset: 1344)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1048, file: !206, line: 1451, baseType: !2910, size: 64, offset: 1472)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !206, line: 699, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1048, file: !206, line: 1452, baseType: !2279, size: 64, offset: 1536)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1048, file: !206, line: 1453, baseType: !2914, size: 64, offset: 1600)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !206, line: 1453, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1048, file: !206, line: 1454, baseType: !1090, size: 128, offset: 1664)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1048, file: !206, line: 1455, baseType: !5, size: 32, offset: 1792)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1048, file: !206, line: 1456, baseType: !2919, size: 2432, offset: 1856)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !200, line: 518, size: 2432, elements: !2920)
!2920 = !{!2921, !2922, !2923, !2925, !2957}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2919, file: !200, line: 519, baseType: !5, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2919, file: !200, line: 520, baseType: !1215, size: 256, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2919, file: !200, line: 521, baseType: !2924, size: 192, offset: 320)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, size: 192, elements: !464)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2919, file: !200, line: 522, baseType: !2926, size: 1728, offset: 512)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2927, size: 1728, elements: !464)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !200, line: 222, size: 576, elements: !2928)
!2928 = !{!2929, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2927, file: !200, line: 223, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !200, line: 443, size: 256, elements: !2932)
!2932 = !{!2933, !2934, !2947, !2948}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2931, file: !200, line: 444, baseType: !339, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2931, file: !200, line: 445, baseType: !2935, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !200, line: 310, size: 512, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2937, file: !200, line: 311, baseType: !1136, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2937, file: !200, line: 312, baseType: !1136, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2937, file: !200, line: 313, baseType: !1136, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2937, file: !200, line: 314, baseType: !1136, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2937, file: !200, line: 315, baseType: !2729, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2937, file: !200, line: 316, baseType: !2729, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2937, file: !200, line: 317, baseType: !2729, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2937, file: !200, line: 318, baseType: !2801, size: 64, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2931, file: !200, line: 446, baseType: !1081, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2931, file: !200, line: 447, baseType: !2930, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2927, file: !200, line: 224, baseType: !339, size: 32, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2927, file: !200, line: 226, baseType: !669, size: 128, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2927, file: !200, line: 227, baseType: !575, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2927, file: !200, line: 228, baseType: !5, size: 32, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2927, file: !200, line: 229, baseType: !5, size: 32, offset: 352)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2927, file: !200, line: 230, baseType: !2765, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2927, file: !200, line: 231, baseType: !2765, size: 64, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2927, file: !200, line: 232, baseType: !621, size: 64, offset: 512)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2919, file: !200, line: 523, baseType: !2958, size: 192, offset: 2240)
!2958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2935, size: 192, elements: !464)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1048, file: !206, line: 1458, baseType: !2960, size: 2112, offset: 4288)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !206, line: 1410, size: 2112, elements: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2960, file: !206, line: 1411, baseType: !339, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2960, file: !206, line: 1412, baseType: !1838, size: 128, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2960, file: !206, line: 1413, baseType: !2965, size: 1920, offset: 192)
!2965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2966, size: 1920, elements: !464)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2967, line: 12, size: 640, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2968 = !{!2969, !2977, !2978, !2983, !2984}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2966, file: !2967, line: 13, baseType: !2970, size: 320)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2971, line: 17, size: 320, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2972 = !{!2973, !2974, !2975, !2976}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2970, file: !2971, line: 18, baseType: !339, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2970, file: !2971, line: 19, baseType: !339, size: 32, offset: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2970, file: !2971, line: 20, baseType: !1838, size: 128, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2970, file: !2971, line: 22, baseType: !825, size: 128, align: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2966, file: !2967, line: 14, baseType: !409, size: 64, offset: 320)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2966, file: !2967, line: 15, baseType: !2979, size: 64, offset: 384)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2980, line: 16, size: 64, elements: !2981)
!2980 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2981 = !{!2982}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2979, file: !2980, line: 17, baseType: !1580, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2966, file: !2967, line: 16, baseType: !1838, size: 128, offset: 448)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2966, file: !2967, line: 17, baseType: !353, size: 32, offset: 576)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1048, file: !206, line: 1465, baseType: !621, size: 64, offset: 6400)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1048, file: !206, line: 1468, baseType: !370, size: 32, offset: 6464)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1048, file: !206, line: 1470, baseType: !988, size: 64, offset: 6528)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1048, file: !206, line: 1471, baseType: !988, size: 64, offset: 6592)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1048, file: !206, line: 1473, baseType: !372, size: 32, offset: 6656)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1048, file: !206, line: 1474, baseType: !2991, size: 64, offset: 6720)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !206, line: 603, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1048, file: !206, line: 1477, baseType: !2994, size: 256, offset: 6784)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !2586)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1048, file: !206, line: 1478, baseType: !2996, size: 128, offset: 7040)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2997, line: 18, baseType: !2998)
!2997 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2997, line: 16, size: 128, elements: !2999)
!2999 = !{!3000}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2998, file: !2997, line: 17, baseType: !3001, size: 128)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 128, elements: !2090)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1048, file: !206, line: 1480, baseType: !5, size: 32, offset: 7168)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1048, file: !206, line: 1481, baseType: !3004, size: 32, offset: 7200)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !354, line: 150, baseType: !5)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1048, file: !206, line: 1487, baseType: !1537, size: 192, offset: 7232)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1048, file: !206, line: 1493, baseType: !676, size: 64, offset: 7424)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1048, file: !206, line: 1495, baseType: !3008, size: 64, offset: 7488)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3010)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !840, line: 135, size: 1024, align: 512, elements: !3011)
!3011 = !{!3012, !3016, !3017, !3024, !3030, !3034, !3038, !3042, !3043, !3047, !3051, !3056, !3060}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3010, file: !840, line: 136, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!339, !842, !5}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3010, file: !840, line: 137, baseType: !3013, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3010, file: !840, line: 138, baseType: !3018, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!339, !3021, !3023}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3010, file: !840, line: 139, baseType: !3025, size: 64, offset: 192)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!339, !3021, !5, !676, !3028}
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3010, file: !840, line: 141, baseType: !3031, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!339, !3021}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3010, file: !840, line: 142, baseType: !3035, size: 64, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!339, !842}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3010, file: !840, line: 143, baseType: !3039, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !842}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3010, file: !840, line: 144, baseType: !3039, size: 64, offset: 448)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3010, file: !840, line: 145, baseType: !3044, size: 64, offset: 512)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !842, !881}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3010, file: !840, line: 146, baseType: !3048, size: 64, offset: 576)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!651, !842, !651, !339}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3010, file: !840, line: 147, baseType: !3052, size: 64, offset: 640)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!838, !3055}
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3010, file: !840, line: 148, baseType: !3057, size: 64, offset: 704)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!339, !997, !407}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3010, file: !840, line: 149, baseType: !3061, size: 64, offset: 768)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!842, !842, !3064}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1048, file: !206, line: 1500, baseType: !339, size: 32, offset: 7552)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1048, file: !206, line: 1502, baseType: !3068, size: 448, offset: 7616)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2713, line: 60, size: 448, elements: !3069)
!3069 = !{!3070, !3075, !3076, !3077, !3078, !3079, !3080}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3068, file: !2713, line: 61, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!575, !3074, !2711}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3068, file: !2713, line: 63, baseType: !3071, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3068, file: !2713, line: 66, baseType: !570, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3068, file: !2713, line: 67, baseType: !339, size: 32, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3068, file: !2713, line: 68, baseType: !5, size: 32, offset: 224)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3068, file: !2713, line: 71, baseType: !669, size: 128, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3068, file: !2713, line: 77, baseType: !3081, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1048, file: !206, line: 1505, baseType: !1219, size: 64, offset: 8064)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1048, file: !206, line: 1508, baseType: !1219, size: 64, offset: 8128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1048, file: !206, line: 1511, baseType: !339, size: 32, offset: 8192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1048, file: !206, line: 1514, baseType: !1355, size: 32, offset: 8224)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1048, file: !206, line: 1517, baseType: !3087, size: 64, offset: 8256)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2314, line: 18, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1048, file: !206, line: 1518, baseType: !1086, size: 64, offset: 8320)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1048, file: !206, line: 1525, baseType: !2068, size: 64, offset: 8384)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1048, file: !206, line: 1532, baseType: !3092, size: 64, offset: 8448)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3093, line: 52, size: 64, elements: !3094)
!3093 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3092, file: !3093, line: 53, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3093, line: 40, size: 256, elements: !3098)
!3098 = !{!3099, !3100, !3105}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3097, file: !3093, line: 42, baseType: !699)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3097, file: !3093, line: 44, baseType: !3101, size: 192)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3093, line: 28, size: 192, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3101, file: !3093, line: 29, baseType: !669, size: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3101, file: !3093, line: 31, baseType: !570, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3097, file: !3093, line: 49, baseType: !570, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1048, file: !206, line: 1533, baseType: !3092, size: 64, offset: 8512)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1048, file: !206, line: 1534, baseType: !825, size: 128, align: 64, offset: 8576)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1048, file: !206, line: 1535, baseType: !2313, size: 256, offset: 8704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1048, file: !206, line: 1537, baseType: !1537, size: 192, offset: 8960)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1048, file: !206, line: 1542, baseType: !339, size: 32, offset: 9152)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1048, file: !206, line: 1545, baseType: !699, offset: 9184)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1048, file: !206, line: 1546, baseType: !669, size: 128, offset: 9216)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1048, file: !206, line: 1548, baseType: !699, offset: 9344)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1048, file: !206, line: 1549, baseType: !669, size: 128, offset: 9344)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !882, file: !206, line: 624, baseType: !1185, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !882, file: !206, line: 631, baseType: !575, size: 64, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !206, line: 639, baseType: !3118, size: 32, offset: 384)
!3118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !206, line: 639, size: 32, elements: !3119)
!3119 = !{!3120, !3122}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3118, file: !206, line: 640, baseType: !3121, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3118, file: !206, line: 641, baseType: !5, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !882, file: !206, line: 643, baseType: !963, size: 32, offset: 416)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !882, file: !206, line: 644, baseType: !981, size: 64, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !882, file: !206, line: 645, baseType: !984, size: 128, offset: 512)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !882, file: !206, line: 646, baseType: !984, size: 128, offset: 640)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !882, file: !206, line: 647, baseType: !984, size: 128, offset: 768)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !882, file: !206, line: 648, baseType: !699, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !882, file: !206, line: 649, baseType: !527, size: 16, offset: 896)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !882, file: !206, line: 650, baseType: !383, size: 8, offset: 912)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !882, file: !206, line: 651, baseType: !383, size: 8, offset: 920)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !882, file: !206, line: 652, baseType: !2885, size: 64, offset: 960)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !882, file: !206, line: 659, baseType: !575, size: 64, offset: 1024)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !882, file: !206, line: 660, baseType: !1215, size: 256, offset: 1088)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !882, file: !206, line: 662, baseType: !575, size: 64, offset: 1344)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !882, file: !206, line: 663, baseType: !575, size: 64, offset: 1408)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !882, file: !206, line: 665, baseType: !1090, size: 128, offset: 1472)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !882, file: !206, line: 666, baseType: !669, size: 128, offset: 1600)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !882, file: !206, line: 675, baseType: !669, size: 128, offset: 1728)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !882, file: !206, line: 676, baseType: !669, size: 128, offset: 1856)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !882, file: !206, line: 677, baseType: !669, size: 128, offset: 1984)
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !206, line: 678, baseType: !3143, size: 128, offset: 2112)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !206, line: 678, size: 128, elements: !3144)
!3144 = !{!3145, !3146}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3143, file: !206, line: 679, baseType: !1086, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3143, file: !206, line: 680, baseType: !825, size: 128, align: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !882, file: !206, line: 682, baseType: !1221, size: 64, offset: 2240)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !882, file: !206, line: 683, baseType: !1221, size: 64, offset: 2304)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !882, file: !206, line: 684, baseType: !353, size: 32, offset: 2368)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !882, file: !206, line: 685, baseType: !353, size: 32, offset: 2400)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !882, file: !206, line: 686, baseType: !353, size: 32, offset: 2432)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !882, file: !206, line: 688, baseType: !353, size: 32, offset: 2464)
!3153 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !206, line: 690, baseType: !3154, size: 64, offset: 2496)
!3154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !206, line: 690, size: 64, elements: !3155)
!3155 = !{!3156, !3388}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3154, file: !206, line: 691, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !206, line: 1822, size: 2048, elements: !3160)
!3160 = !{!3161, !3162, !3166, !3171, !3175, !3176, !3177, !3181, !3194, !3195, !3212, !3216, !3217, !3221, !3222, !3226, !3231, !3232, !3236, !3240, !3348, !3352, !3353, !3357, !3358, !3362, !3366, !3371, !3375, !3379, !3383, !3387}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3159, file: !206, line: 1823, baseType: !1081, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3159, file: !206, line: 1824, baseType: !3163, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!981, !812, !981, !339}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3159, file: !206, line: 1825, baseType: !3167, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!768, !812, !651, !782, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3159, file: !206, line: 1826, baseType: !3172, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!768, !812, !676, !782, !3170}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3159, file: !206, line: 1827, baseType: !1292, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3159, file: !206, line: 1828, baseType: !1292, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3159, file: !206, line: 1829, baseType: !3178, size: 64, offset: 384)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!339, !1295, !407}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3159, file: !206, line: 1830, baseType: !3182, size: 64, offset: 448)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!339, !812, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !206, line: 1776, size: 128, elements: !3187)
!3187 = !{!3188, !3193}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3186, file: !206, line: 1777, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !206, line: 1773, baseType: !3190)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!339, !3185, !676, !339, !981, !616, !5}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3186, file: !206, line: 1778, baseType: !981, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3159, file: !206, line: 1831, baseType: !3182, size: 64, offset: 512)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3159, file: !206, line: 1832, baseType: !3196, size: 64, offset: 576)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!3199, !812, !3201}
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3200, line: 52, baseType: !5)
!3200 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3203, line: 43, size: 128, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3204 = !{!3205, !3211}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3202, file: !3203, line: 44, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3203, line: 37, baseType: !3207)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !812, !3210, !3201}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3202, file: !3203, line: 45, baseType: !3199, size: 32, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3159, file: !206, line: 1833, baseType: !3213, size: 64, offset: 640)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!570, !812, !5, !575}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3159, file: !206, line: 1834, baseType: !3213, size: 64, offset: 704)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3159, file: !206, line: 1835, baseType: !3218, size: 64, offset: 768)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!339, !812, !1427}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3159, file: !206, line: 1836, baseType: !575, size: 64, offset: 832)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3159, file: !206, line: 1837, baseType: !3223, size: 64, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!339, !881, !812}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3159, file: !206, line: 1838, baseType: !3227, size: 64, offset: 960)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!339, !812, !3230}
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !206, line: 1007, baseType: !621)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3159, file: !206, line: 1839, baseType: !3223, size: 64, offset: 1024)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3159, file: !206, line: 1840, baseType: !3233, size: 64, offset: 1088)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!339, !812, !981, !981, !339}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3159, file: !206, line: 1841, baseType: !3237, size: 64, offset: 1152)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!339, !339, !812, !339}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3159, file: !206, line: 1842, baseType: !3241, size: 64, offset: 1216)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!339, !812, !339, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !206, line: 1062, size: 1664, elements: !3246)
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3278, !3279, !3280, !3293, !3324}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3245, file: !206, line: 1063, baseType: !3244, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3245, file: !206, line: 1064, baseType: !669, size: 128, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3245, file: !206, line: 1065, baseType: !1090, size: 128, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3245, file: !206, line: 1066, baseType: !669, size: 128, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3245, file: !206, line: 1069, baseType: !669, size: 128, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3245, file: !206, line: 1072, baseType: !3230, size: 64, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3245, file: !206, line: 1073, baseType: !5, size: 32, offset: 640)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3245, file: !206, line: 1074, baseType: !385, size: 8, offset: 672)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3245, file: !206, line: 1075, baseType: !5, size: 32, offset: 704)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3245, file: !206, line: 1076, baseType: !339, size: 32, offset: 736)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3245, file: !206, line: 1077, baseType: !1838, size: 128, offset: 768)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3245, file: !206, line: 1078, baseType: !812, size: 64, offset: 896)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3245, file: !206, line: 1079, baseType: !981, size: 64, offset: 960)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3245, file: !206, line: 1080, baseType: !981, size: 64, offset: 1024)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3245, file: !206, line: 1082, baseType: !3262, size: 64, offset: 1088)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !206, line: 1314, size: 320, elements: !3264)
!3264 = !{!3265, !3273, !3274, !3275, !3276, !3277}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3263, file: !206, line: 1315, baseType: !3266)
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3267, line: 20, baseType: !3268)
!3267 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3267, line: 11, elements: !3269)
!3269 = !{!3270}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3268, file: !3267, line: 12, baseType: !3271)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !711, line: 33, baseType: !3272)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 31, elements: !713)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3263, file: !206, line: 1316, baseType: !339, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3263, file: !206, line: 1317, baseType: !339, size: 32, offset: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3263, file: !206, line: 1318, baseType: !3262, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3263, file: !206, line: 1319, baseType: !812, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3263, file: !206, line: 1320, baseType: !825, size: 128, align: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3245, file: !206, line: 1084, baseType: !575, size: 64, offset: 1152)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3245, file: !206, line: 1085, baseType: !575, size: 64, offset: 1216)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3245, file: !206, line: 1087, baseType: !3281, size: 64, offset: 1280)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3283)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !206, line: 1011, size: 128, elements: !3284)
!3284 = !{!3285, !3289}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3283, file: !206, line: 1012, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !3244, !3244}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3283, file: !206, line: 1013, baseType: !3290, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !3244}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3245, file: !206, line: 1088, baseType: !3294, size: 64, offset: 1344)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3296)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !206, line: 1016, size: 512, elements: !3297)
!3297 = !{!3298, !3302, !3306, !3307, !3311, !3315, !3319, !3323}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3296, file: !206, line: 1017, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!3230, !3230}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3296, file: !206, line: 1018, baseType: !3303, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !3230}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3296, file: !206, line: 1019, baseType: !3290, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3296, file: !206, line: 1020, baseType: !3308, size: 64, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!339, !3244, !339}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3296, file: !206, line: 1021, baseType: !3312, size: 64, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!407, !3244}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3296, file: !206, line: 1022, baseType: !3316, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!339, !3244, !339, !672}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3296, file: !206, line: 1023, baseType: !3320, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !3244, !1269}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3296, file: !206, line: 1024, baseType: !3312, size: 64, offset: 448)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3245, file: !206, line: 1097, baseType: !3325, size: 256, offset: 1408)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3245, file: !206, line: 1089, size: 256, elements: !3326)
!3326 = !{!3327, !3336, !3342}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3325, file: !206, line: 1090, baseType: !3328, size: 256)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3329, line: 10, size: 256, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3330 = !{!3331, !3332, !3335}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3328, file: !3329, line: 11, baseType: !370, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3328, file: !3329, line: 12, baseType: !3333, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3329, line: 5, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3328, file: !3329, line: 13, baseType: !669, size: 128, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3325, file: !206, line: 1091, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3329, line: 17, size: 64, elements: !3338)
!3338 = !{!3339}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3337, file: !3329, line: 18, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3329, line: 16, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3325, file: !206, line: 1096, baseType: !3343, size: 192)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3325, file: !206, line: 1092, size: 192, elements: !3344)
!3344 = !{!3345, !3346, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3343, file: !206, line: 1093, baseType: !669, size: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3343, file: !206, line: 1094, baseType: !339, size: 32, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3343, file: !206, line: 1095, baseType: !5, size: 32, offset: 160)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3159, file: !206, line: 1843, baseType: !3349, size: 64, offset: 1280)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!768, !812, !1172, !339, !782, !3170, !339}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3159, file: !206, line: 1844, baseType: !1467, size: 64, offset: 1344)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3159, file: !206, line: 1845, baseType: !3354, size: 64, offset: 1408)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!339, !339}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3159, file: !206, line: 1846, baseType: !3241, size: 64, offset: 1472)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3159, file: !206, line: 1847, baseType: !3359, size: 64, offset: 1536)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!768, !2454, !812, !3170, !782, !5}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3159, file: !206, line: 1848, baseType: !3363, size: 64, offset: 1600)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!768, !812, !3170, !2454, !782, !5}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3159, file: !206, line: 1849, baseType: !3367, size: 64, offset: 1664)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!339, !812, !570, !3370, !1269}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3159, file: !206, line: 1850, baseType: !3372, size: 64, offset: 1728)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!570, !812, !339, !981, !981}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3159, file: !206, line: 1852, baseType: !3376, size: 64, offset: 1792)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !1162, !812}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3159, file: !206, line: 1856, baseType: !3380, size: 64, offset: 1856)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!768, !812, !981, !812, !981, !782, !5}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3159, file: !206, line: 1858, baseType: !3384, size: 64, offset: 1920)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!981, !812, !981, !812, !981, !981, !5}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3159, file: !206, line: 1861, baseType: !3233, size: 64, offset: 1984)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3154, file: !206, line: 692, baseType: !1115, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !882, file: !206, line: 694, baseType: !3390, size: 64, offset: 2560)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !206, line: 1100, size: 384, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3391, file: !206, line: 1101, baseType: !699)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3391, file: !206, line: 1102, baseType: !669, size: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3391, file: !206, line: 1103, baseType: !669, size: 128, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3391, file: !206, line: 1104, baseType: !669, size: 128, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !882, file: !206, line: 695, baseType: !1186, size: 1216, align: 64, offset: 2624)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !882, file: !206, line: 696, baseType: !669, size: 128, offset: 3840)
!3399 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !206, line: 697, baseType: !3400, size: 64, offset: 3968)
!3400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !206, line: 697, size: 64, elements: !3401)
!3401 = !{!3402, !3403, !3404, !3415, !3416}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3400, file: !206, line: 698, baseType: !2454, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3400, file: !206, line: 699, baseType: !2910, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3400, file: !206, line: 700, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3407, line: 14, size: 832, elements: !3408)
!3407 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3406, file: !3407, line: 15, baseType: !686, size: 512)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3406, file: !3407, line: 16, baseType: !1081, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3406, file: !3407, line: 17, baseType: !3157, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3406, file: !3407, line: 18, baseType: !669, size: 128, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3406, file: !3407, line: 19, baseType: !963, size: 32, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3406, file: !3407, line: 20, baseType: !5, size: 32, offset: 800)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3400, file: !206, line: 701, baseType: !651, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3400, file: !206, line: 702, baseType: !5, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !882, file: !206, line: 705, baseType: !372, size: 32, offset: 4032)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !882, file: !206, line: 708, baseType: !372, size: 32, offset: 4064)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !882, file: !206, line: 709, baseType: !2991, size: 64, offset: 4096)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !882, file: !206, line: 720, baseType: !621, size: 64, offset: 4160)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !843, file: !840, line: 98, baseType: !3422, size: 256, offset: 448)
!3422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !2586)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !843, file: !840, line: 101, baseType: !3424, size: 32, offset: 704)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3425, line: 25, size: 32, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3426 = !{!3427}
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !3424, file: !3425, line: 26, baseType: !3428, size: 32)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3424, file: !3425, line: 26, size: 32, elements: !3429)
!3429 = !{!3430}
!3430 = !DIDerivedType(tag: DW_TAG_member, scope: !3428, file: !3425, line: 30, baseType: !3431, size: 32)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3428, file: !3425, line: 30, size: 32, elements: !3432)
!3432 = !{!3433, !3434}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3431, file: !3425, line: 31, baseType: !699)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3431, file: !3425, line: 32, baseType: !339, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !843, file: !840, line: 102, baseType: !3008, size: 64, offset: 768)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !843, file: !840, line: 103, baseType: !1047, size: 64, offset: 832)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !843, file: !840, line: 104, baseType: !575, size: 64, offset: 896)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !843, file: !840, line: 105, baseType: !621, size: 64, offset: 960)
!3439 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !840, line: 107, baseType: !3440, size: 128, offset: 1024)
!3440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !840, line: 107, size: 128, elements: !3441)
!3441 = !{!3442, !3443}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3440, file: !840, line: 108, baseType: !669, size: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3440, file: !840, line: 109, baseType: !3210, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !843, file: !840, line: 111, baseType: !669, size: 128, offset: 1152)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !843, file: !840, line: 112, baseType: !669, size: 128, offset: 1280)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !843, file: !840, line: 120, baseType: !3447, size: 128, offset: 1408)
!3447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !840, line: 116, size: 128, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3447, file: !840, line: 117, baseType: !1090, size: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3447, file: !840, line: 118, baseType: !857, size: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3447, file: !840, line: 119, baseType: !825, size: 128, align: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !813, file: !206, line: 922, baseType: !881, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !813, file: !206, line: 923, baseType: !3157, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !813, file: !206, line: 929, baseType: !699, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !813, file: !206, line: 930, baseType: !205, size: 32, offset: 384)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !813, file: !206, line: 931, baseType: !1219, size: 64, offset: 448)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !813, file: !206, line: 932, baseType: !5, size: 32, offset: 512)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !813, file: !206, line: 933, baseType: !3004, size: 32, offset: 544)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !813, file: !206, line: 934, baseType: !1537, size: 192, offset: 576)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !813, file: !206, line: 935, baseType: !981, size: 64, offset: 768)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !813, file: !206, line: 936, baseType: !3462, size: 192, offset: 832)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !206, line: 885, size: 192, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3462, file: !206, line: 886, baseType: !3266)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3462, file: !206, line: 887, baseType: !1828, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3462, file: !206, line: 888, baseType: !214, size: 32, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3462, file: !206, line: 889, baseType: !887, size: 32, offset: 96)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3462, file: !206, line: 889, baseType: !887, size: 32, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3462, file: !206, line: 890, baseType: !339, size: 32, offset: 160)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !813, file: !206, line: 937, baseType: !1904, size: 64, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !813, file: !206, line: 938, baseType: !3472, size: 256, offset: 1088)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !206, line: 896, size: 256, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3472, file: !206, line: 897, baseType: !575, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3472, file: !206, line: 898, baseType: !5, size: 32, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3472, file: !206, line: 899, baseType: !5, size: 32, offset: 96)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3472, file: !206, line: 902, baseType: !5, size: 32, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3472, file: !206, line: 903, baseType: !5, size: 32, offset: 160)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3472, file: !206, line: 904, baseType: !981, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !813, file: !206, line: 940, baseType: !616, size: 64, offset: 1344)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !813, file: !206, line: 945, baseType: !621, size: 64, offset: 1408)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !813, file: !206, line: 949, baseType: !669, size: 128, offset: 1472)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !813, file: !206, line: 950, baseType: !669, size: 128, offset: 1600)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !813, file: !206, line: 952, baseType: !1185, size: 64, offset: 1728)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !813, file: !206, line: 953, baseType: !1355, size: 32, offset: 1792)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !813, file: !206, line: 954, baseType: !1355, size: 32, offset: 1824)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !803, file: !762, line: 174, baseType: !809, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !803, file: !762, line: 176, baseType: !3489, size: 64, offset: 384)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!339, !812, !692, !802, !1427}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !791, file: !762, line: 90, baseType: !786, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !791, file: !762, line: 91, baseType: !3494, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !752, file: !687, line: 143, baseType: !3496, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!3499, !692}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !223, line: 39, size: 384, elements: !3502)
!3502 = !{!3503, !3504, !3508, !3512, !3518, !3522}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3501, file: !223, line: 40, baseType: !222, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3501, file: !223, line: 41, baseType: !3505, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!407}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3501, file: !223, line: 42, baseType: !3509, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!621}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3501, file: !223, line: 43, baseType: !3513, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!2483, !3516}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !223, line: 19, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3501, file: !223, line: 44, baseType: !3519, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!2483}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3501, file: !223, line: 45, baseType: !920, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !752, file: !687, line: 144, baseType: !3524, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!2483, !692}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !752, file: !687, line: 145, baseType: !3528, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !692, !3531, !3532}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !686, file: !687, line: 70, baseType: !3534, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1067, line: 123, size: 1024, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3665, !3666, !3667, !3668, !3669}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3535, file: !1067, line: 124, baseType: !353, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3535, file: !1067, line: 125, baseType: !353, size: 32, offset: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3535, file: !1067, line: 135, baseType: !3534, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3535, file: !1067, line: 136, baseType: !676, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3535, file: !1067, line: 138, baseType: !1208, size: 192, align: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3535, file: !1067, line: 140, baseType: !2483, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3535, file: !1067, line: 141, baseType: !5, size: 32, offset: 448)
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !3535, file: !1067, line: 142, baseType: !3545, size: 256, offset: 512)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3535, file: !1067, line: 142, size: 256, elements: !3546)
!3546 = !{!3547, !3593, !3597}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3545, file: !1067, line: 143, baseType: !3548, size: 192)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1067, line: 91, size: 192, elements: !3549)
!3549 = !{!3550, !3551, !3552}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3548, file: !1067, line: 92, baseType: !575, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3548, file: !1067, line: 94, baseType: !1204, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3548, file: !1067, line: 100, baseType: !3553, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1067, line: 180, size: 704, elements: !3555)
!3555 = !{!3556, !3557, !3558, !3565, !3566, !3567, !3591, !3592}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3554, file: !1067, line: 182, baseType: !3534, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3554, file: !1067, line: 183, baseType: !5, size: 32, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3554, file: !1067, line: 186, baseType: !3559, size: 192, offset: 128)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3560, line: 19, size: 192, elements: !3561)
!3560 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3561 = !{!3562, !3563, !3564}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3559, file: !3560, line: 20, baseType: !1190, size: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3559, file: !3560, line: 21, baseType: !5, size: 32, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3559, file: !3560, line: 22, baseType: !5, size: 32, offset: 160)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3554, file: !1067, line: 187, baseType: !370, size: 32, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3554, file: !1067, line: 188, baseType: !370, size: 32, offset: 352)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3554, file: !1067, line: 189, baseType: !3568, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1067, line: 168, size: 320, elements: !3570)
!3570 = !{!3571, !3575, !3579, !3583, !3587}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3569, file: !1067, line: 169, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!339, !1162, !3553}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3569, file: !1067, line: 171, baseType: !3576, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!339, !3534, !676, !777}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3569, file: !1067, line: 173, baseType: !3580, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!339, !3534}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3569, file: !1067, line: 174, baseType: !3584, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!339, !3534, !3534, !676}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3569, file: !1067, line: 176, baseType: !3588, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!339, !1162, !3534, !3553}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3554, file: !1067, line: 192, baseType: !669, size: 128, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3554, file: !1067, line: 194, baseType: !1838, size: 128, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3545, file: !1067, line: 144, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1067, line: 103, size: 64, elements: !3595)
!3595 = !{!3596}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3594, file: !1067, line: 104, baseType: !3534, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3545, file: !1067, line: 145, baseType: !3598, size: 256)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1067, line: 107, size: 256, elements: !3599)
!3599 = !{!3600, !3660, !3663, !3664}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3598, file: !1067, line: 108, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3603)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1067, line: 217, size: 768, elements: !3604)
!3604 = !{!3605, !3625, !3629, !3633, !3637, !3641, !3645, !3649, !3650, !3651, !3652, !3656}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3603, file: !1067, line: 222, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!339, !3609}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1067, line: 197, size: 1088, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3610, file: !1067, line: 199, baseType: !3534, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3610, file: !1067, line: 200, baseType: !812, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3610, file: !1067, line: 201, baseType: !1162, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3610, file: !1067, line: 202, baseType: !621, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3610, file: !1067, line: 205, baseType: !1537, size: 192, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3610, file: !1067, line: 206, baseType: !1537, size: 192, offset: 448)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3610, file: !1067, line: 207, baseType: !339, size: 32, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3610, file: !1067, line: 208, baseType: !669, size: 128, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3610, file: !1067, line: 209, baseType: !651, size: 64, offset: 832)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3610, file: !1067, line: 211, baseType: !782, size: 64, offset: 896)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3610, file: !1067, line: 212, baseType: !407, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3610, file: !1067, line: 213, baseType: !407, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3610, file: !1067, line: 214, baseType: !1455, size: 64, offset: 1024)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3603, file: !1067, line: 223, baseType: !3626, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !3609}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3603, file: !1067, line: 236, baseType: !3630, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!339, !1162, !621}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3603, file: !1067, line: 238, baseType: !3634, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!621, !1162, !3170}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3603, file: !1067, line: 239, baseType: !3638, size: 64, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!621, !1162, !621, !3170}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3603, file: !1067, line: 240, baseType: !3642, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !1162, !621}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3603, file: !1067, line: 242, baseType: !3646, size: 64, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!768, !3609, !651, !782, !981}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3603, file: !1067, line: 252, baseType: !782, size: 64, offset: 448)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3603, file: !1067, line: 259, baseType: !407, size: 8, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3603, file: !1067, line: 260, baseType: !3646, size: 64, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3603, file: !1067, line: 263, baseType: !3653, size: 64, offset: 640)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!3199, !3609, !3201}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3603, file: !1067, line: 266, baseType: !3657, size: 64, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!339, !3609, !1427}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3598, file: !1067, line: 109, baseType: !3661, size: 64, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1067, line: 31, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3598, file: !1067, line: 110, baseType: !981, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3598, file: !1067, line: 111, baseType: !3534, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3535, file: !1067, line: 148, baseType: !621, size: 64, offset: 768)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3535, file: !1067, line: 154, baseType: !616, size: 64, offset: 832)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3535, file: !1067, line: 156, baseType: !527, size: 16, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3535, file: !1067, line: 157, baseType: !777, size: 16, offset: 912)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3535, file: !1067, line: 158, baseType: !3670, size: 64, offset: 960)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1067, line: 32, flags: DIFlagFwdDecl)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !686, file: !687, line: 71, baseType: !344, size: 32, offset: 448)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !686, file: !687, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !686, file: !687, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !686, file: !687, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !686, file: !687, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !686, file: !687, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !683, file: !235, line: 463, baseType: !682, size: 64, offset: 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !683, file: !235, line: 465, baseType: !3680, size: 64, offset: 576)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !235, line: 36, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !683, file: !235, line: 467, baseType: !676, size: 64, offset: 640)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !235, line: 468, baseType: !3684, size: 64, offset: 704)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !235, line: 87, size: 384, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3694, !3699, !3703}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3686, file: !235, line: 88, baseType: !676, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3686, file: !235, line: 89, baseType: !788, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3686, file: !235, line: 90, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!339, !682, !735}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3686, file: !235, line: 91, baseType: !3695, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!651, !682, !3698, !3531, !3532}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3686, file: !235, line: 93, baseType: !3700, size: 64, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{null, !682}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3686, file: !235, line: 95, baseType: !3704, size: 64, offset: 320)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !242, line: 278, size: 1472, elements: !3707)
!3707 = !{!3708, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3706, file: !242, line: 279, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!339, !682}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3706, file: !242, line: 280, baseType: !3700, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3706, file: !242, line: 281, baseType: !3709, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3706, file: !242, line: 282, baseType: !3709, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3706, file: !242, line: 283, baseType: !3709, size: 64, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3706, file: !242, line: 284, baseType: !3709, size: 64, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3706, file: !242, line: 285, baseType: !3709, size: 64, offset: 384)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3706, file: !242, line: 286, baseType: !3709, size: 64, offset: 448)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3706, file: !242, line: 287, baseType: !3709, size: 64, offset: 512)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3706, file: !242, line: 288, baseType: !3709, size: 64, offset: 576)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3706, file: !242, line: 289, baseType: !3709, size: 64, offset: 640)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3706, file: !242, line: 290, baseType: !3709, size: 64, offset: 704)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3706, file: !242, line: 291, baseType: !3709, size: 64, offset: 768)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3706, file: !242, line: 292, baseType: !3709, size: 64, offset: 832)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3706, file: !242, line: 293, baseType: !3709, size: 64, offset: 896)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3706, file: !242, line: 294, baseType: !3709, size: 64, offset: 960)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3706, file: !242, line: 295, baseType: !3709, size: 64, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3706, file: !242, line: 296, baseType: !3709, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3706, file: !242, line: 297, baseType: !3709, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3706, file: !242, line: 298, baseType: !3709, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3706, file: !242, line: 299, baseType: !3709, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3706, file: !242, line: 300, baseType: !3709, size: 64, offset: 1344)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3706, file: !242, line: 301, baseType: !3709, size: 64, offset: 1408)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !683, file: !235, line: 470, baseType: !3735, size: 64, offset: 768)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3737, line: 82, size: 1408, elements: !3738)
!3737 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3817, !3820, !3821}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3736, file: !3737, line: 83, baseType: !676, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3736, file: !3737, line: 84, baseType: !676, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3736, file: !3737, line: 85, baseType: !682, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3736, file: !3737, line: 86, baseType: !788, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3736, file: !3737, line: 87, baseType: !788, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3736, file: !3737, line: 88, baseType: !788, size: 64, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3736, file: !3737, line: 90, baseType: !3746, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!339, !682, !3749}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !229, line: 95, size: 1152, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755, !3756, !3757, !3758, !3768, !3781, !3782, !3783, !3784, !3785, !3793, !3794, !3795, !3796, !3797, !3798}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3750, file: !229, line: 96, baseType: !676, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3750, file: !229, line: 97, baseType: !3735, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3750, file: !229, line: 99, baseType: !1081, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3750, file: !229, line: 100, baseType: !676, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3750, file: !229, line: 102, baseType: !407, size: 8, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3750, file: !229, line: 103, baseType: !228, size: 32, offset: 288)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3750, file: !229, line: 105, baseType: !3759, size: 64, offset: 320)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3762, line: 262, size: 1600, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3763 = !{!3764, !3765, !3766, !3767}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3761, file: !3762, line: 263, baseType: !2994, size: 256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3761, file: !3762, line: 264, baseType: !2994, size: 256, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3761, file: !3762, line: 265, baseType: !365, size: 1024, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3761, file: !3762, line: 266, baseType: !2483, size: 64, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3750, file: !229, line: 106, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3771)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3762, line: 210, size: 256, elements: !3772)
!3772 = !{!3773, !3777, !3779, !3780}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3771, file: !3762, line: 211, baseType: !3774, size: 72)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 72, elements: !3775)
!3775 = !{!3776}
!3776 = !DISubrange(count: 9)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3771, file: !3762, line: 212, baseType: !3778, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3762, line: 14, baseType: !575)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3771, file: !3762, line: 213, baseType: !372, size: 32, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3771, file: !3762, line: 214, baseType: !372, size: 32, offset: 224)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3750, file: !229, line: 108, baseType: !3709, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3750, file: !229, line: 109, baseType: !3700, size: 64, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3750, file: !229, line: 110, baseType: !3709, size: 64, offset: 576)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3750, file: !229, line: 111, baseType: !3700, size: 64, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3750, file: !229, line: 112, baseType: !3786, size: 64, offset: 704)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!339, !682, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !242, line: 52, baseType: !3790)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !242, line: 50, size: 32, elements: !3791)
!3791 = !{!3792}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3790, file: !242, line: 51, baseType: !339, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3750, file: !229, line: 113, baseType: !3709, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3750, file: !229, line: 114, baseType: !788, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3750, file: !229, line: 115, baseType: !788, size: 64, offset: 896)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3750, file: !229, line: 117, baseType: !3704, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3750, file: !229, line: 118, baseType: !3700, size: 64, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3750, file: !229, line: 120, baseType: !3799, size: 64, offset: 1088)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !229, line: 120, flags: DIFlagFwdDecl)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3736, file: !3737, line: 91, baseType: !3691, size: 64, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3736, file: !3737, line: 92, baseType: !3709, size: 64, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3736, file: !3737, line: 93, baseType: !3700, size: 64, offset: 576)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3736, file: !3737, line: 94, baseType: !3709, size: 64, offset: 640)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3736, file: !3737, line: 95, baseType: !3700, size: 64, offset: 704)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3736, file: !3737, line: 97, baseType: !3709, size: 64, offset: 768)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3736, file: !3737, line: 98, baseType: !3709, size: 64, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3736, file: !3737, line: 100, baseType: !3786, size: 64, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3736, file: !3737, line: 101, baseType: !3709, size: 64, offset: 960)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3736, file: !3737, line: 103, baseType: !3709, size: 64, offset: 1024)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3736, file: !3737, line: 105, baseType: !3709, size: 64, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3736, file: !3737, line: 107, baseType: !3704, size: 64, offset: 1152)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3736, file: !3737, line: 109, baseType: !3814, size: 64, offset: 1216)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3737, line: 109, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3736, file: !3737, line: 111, baseType: !3818, size: 64, offset: 1280)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3737, line: 111, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3736, file: !3737, line: 112, baseType: !1096, offset: 1344)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3736, file: !3737, line: 114, baseType: !407, size: 8, offset: 1344)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !683, file: !235, line: 471, baseType: !3749, size: 64, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !683, file: !235, line: 473, baseType: !621, size: 64, offset: 896)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !683, file: !235, line: 475, baseType: !621, size: 64, offset: 960)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !683, file: !235, line: 480, baseType: !1537, size: 192, offset: 1024)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !683, file: !235, line: 484, baseType: !3827, size: 576, offset: 1216)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !235, line: 361, size: 576, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3827, file: !235, line: 362, baseType: !669, size: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3827, file: !235, line: 363, baseType: !669, size: 128, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3827, file: !235, line: 364, baseType: !669, size: 128, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3827, file: !235, line: 365, baseType: !669, size: 128, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3827, file: !235, line: 366, baseType: !407, size: 8, offset: 512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3827, file: !235, line: 367, baseType: !234, size: 32, offset: 544)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !683, file: !235, line: 485, baseType: !3836, size: 2304, offset: 1792)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !242, line: 565, size: 2304, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3933, !3937}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3836, file: !242, line: 566, baseType: !3789, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3836, file: !242, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3836, file: !242, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3836, file: !242, line: 569, baseType: !407, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3836, file: !242, line: 570, baseType: !407, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3836, file: !242, line: 571, baseType: !407, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3836, file: !242, line: 572, baseType: !407, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3836, file: !242, line: 573, baseType: !407, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3836, file: !242, line: 574, baseType: !407, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3836, file: !242, line: 575, baseType: !407, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3836, file: !242, line: 576, baseType: !407, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3836, file: !242, line: 577, baseType: !370, size: 32, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3836, file: !242, line: 578, baseType: !699, offset: 96)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3836, file: !242, line: 580, baseType: !669, size: 128, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3836, file: !242, line: 581, baseType: !1859, size: 192, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3836, file: !242, line: 582, baseType: !3854, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3856, line: 43, size: 1472, elements: !3857)
!3856 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3865, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3855, file: !3856, line: 44, baseType: !676, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3855, file: !3856, line: 45, baseType: !339, size: 32, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3855, file: !3856, line: 46, baseType: !669, size: 128, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3855, file: !3856, line: 47, baseType: !699, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3855, file: !3856, line: 48, baseType: !3863, size: 64, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !242, line: 533, flags: DIFlagFwdDecl)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3855, file: !3856, line: 49, baseType: !3866, size: 320, offset: 320)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3867, line: 11, size: 320, elements: !3868)
!3867 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3868 = !{!3869, !3870, !3871, !3876}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3866, file: !3867, line: 16, baseType: !1090, size: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3866, file: !3867, line: 17, baseType: !575, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3866, file: !3867, line: 18, baseType: !3872, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !3875}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3866, file: !3867, line: 19, baseType: !370, size: 32, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3855, file: !3856, line: 50, baseType: !575, size: 64, offset: 640)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3855, file: !3856, line: 51, baseType: !1659, size: 64, offset: 704)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3855, file: !3856, line: 52, baseType: !1659, size: 64, offset: 768)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3855, file: !3856, line: 53, baseType: !1659, size: 64, offset: 832)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3855, file: !3856, line: 54, baseType: !1659, size: 64, offset: 896)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3855, file: !3856, line: 55, baseType: !1659, size: 64, offset: 960)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3855, file: !3856, line: 56, baseType: !575, size: 64, offset: 1024)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3855, file: !3856, line: 57, baseType: !575, size: 64, offset: 1088)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3855, file: !3856, line: 58, baseType: !575, size: 64, offset: 1152)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3855, file: !3856, line: 59, baseType: !575, size: 64, offset: 1216)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3855, file: !3856, line: 60, baseType: !575, size: 64, offset: 1280)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3855, file: !3856, line: 61, baseType: !682, size: 64, offset: 1344)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3855, file: !3856, line: 62, baseType: !407, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3855, file: !3856, line: 63, baseType: !407, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3836, file: !242, line: 583, baseType: !407, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3836, file: !242, line: 584, baseType: !407, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3836, file: !242, line: 585, baseType: !407, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3836, file: !242, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3836, file: !242, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3836, file: !242, line: 592, baseType: !1651, size: 512, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3836, file: !242, line: 593, baseType: !616, size: 64, offset: 1088)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3836, file: !242, line: 594, baseType: !2313, size: 256, offset: 1152)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3836, file: !242, line: 595, baseType: !1838, size: 128, offset: 1408)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3836, file: !242, line: 596, baseType: !3863, size: 64, offset: 1536)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3836, file: !242, line: 597, baseType: !353, size: 32, offset: 1600)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3836, file: !242, line: 598, baseType: !353, size: 32, offset: 1632)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3836, file: !242, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3836, file: !242, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3836, file: !242, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3836, file: !242, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3836, file: !242, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3836, file: !242, line: 604, baseType: !407, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3836, file: !242, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3836, file: !242, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3836, file: !242, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3836, file: !242, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3836, file: !242, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3836, file: !242, line: 610, baseType: !5, size: 32, offset: 1696)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3836, file: !242, line: 611, baseType: !241, size: 32, offset: 1728)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3836, file: !242, line: 612, baseType: !249, size: 32, offset: 1760)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3836, file: !242, line: 613, baseType: !339, size: 32, offset: 1792)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3836, file: !242, line: 614, baseType: !339, size: 32, offset: 1824)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3836, file: !242, line: 615, baseType: !616, size: 64, offset: 1856)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3836, file: !242, line: 616, baseType: !616, size: 64, offset: 1920)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3836, file: !242, line: 617, baseType: !616, size: 64, offset: 1984)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3836, file: !242, line: 618, baseType: !616, size: 64, offset: 2048)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3836, file: !242, line: 620, baseType: !3924, size: 64, offset: 2112)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !242, line: 536, size: 256, elements: !3926)
!3926 = !{!3927, !3928, !3929, !3930}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3925, file: !242, line: 537, baseType: !699)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3925, file: !242, line: 538, baseType: !5, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3925, file: !242, line: 540, baseType: !669, size: 128, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3925, file: !242, line: 543, baseType: !3931, size: 64, offset: 192)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !242, line: 534, flags: DIFlagFwdDecl)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3836, file: !242, line: 621, baseType: !3934, size: 64, offset: 2176)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !682, !632}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3836, file: !242, line: 622, baseType: !3938, size: 64, offset: 2240)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !242, line: 622, flags: DIFlagFwdDecl)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !683, file: !235, line: 486, baseType: !3941, size: 64, offset: 4096)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !242, line: 642, size: 1792, elements: !3943)
!3943 = !{!3944, !3945, !3946, !3950, !3951, !3952}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3942, file: !242, line: 643, baseType: !3706, size: 1472)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3942, file: !242, line: 644, baseType: !3709, size: 64, offset: 1472)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3942, file: !242, line: 645, baseType: !3947, size: 64, offset: 1536)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !682, !407}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3942, file: !242, line: 646, baseType: !3709, size: 64, offset: 1600)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3942, file: !242, line: 647, baseType: !3700, size: 64, offset: 1664)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3942, file: !242, line: 648, baseType: !3700, size: 64, offset: 1728)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !683, file: !235, line: 493, baseType: !3954, size: 64, offset: 4160)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !256, line: 162, size: 1088, elements: !3956)
!3956 = !{!3957, !3958, !3959, !4132, !4133, !4134, !4135, !4136, !4137, !4140, !4141, !4142, !4143, !4144, !4145, !4146}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3955, file: !256, line: 163, baseType: !669, size: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3955, file: !256, line: 164, baseType: !676, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3955, file: !256, line: 165, baseType: !3960, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !256, line: 105, size: 640, elements: !3963)
!3963 = !{!3964, !4082, !4093, !4098, !4102, !4109, !4113, !4117, !4124, !4128}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3962, file: !256, line: 106, baseType: !3965, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!339, !3954, !3968, !255}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3970, line: 51, size: 1344, elements: !3971)
!3970 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3971 = !{!3972, !3973, !3975, !3976, !4066, !4075, !4076, !4077, !4078, !4079, !4080, !4081}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3969, file: !3970, line: 52, baseType: !676, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3969, file: !3970, line: 53, baseType: !3974, size: 32, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3970, line: 28, baseType: !370)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3969, file: !3970, line: 54, baseType: !676, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3969, file: !3970, line: 55, baseType: !3977, size: 192, offset: 192)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3978, line: 17, size: 192, elements: !3979)
!3978 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3979 = !{!3980, !3982, !4065}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3977, file: !3978, line: 18, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3977, file: !3978, line: 19, baseType: !3983, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3985)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3978, line: 110, size: 1152, elements: !3986)
!3986 = !{!3987, !3991, !3995, !4001, !4007, !4011, !4015, !4020, !4024, !4025, !4029, !4033, !4037, !4048, !4049, !4050, !4051, !4061}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3985, file: !3978, line: 111, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!3981, !3981}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3985, file: !3978, line: 112, baseType: !3992, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3981}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3985, file: !3978, line: 113, baseType: !3996, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!407, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3985, file: !3978, line: 114, baseType: !4002, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!2483, !3999, !4005}
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3985, file: !3978, line: 116, baseType: !4008, size: 64, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!407, !3999, !676}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3985, file: !3978, line: 118, baseType: !4012, size: 64, offset: 320)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!339, !3999, !676, !5, !621, !782}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3985, file: !3978, line: 123, baseType: !4016, size: 64, offset: 384)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!339, !3999, !676, !4019, !782}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3985, file: !3978, line: 126, baseType: !4021, size: 64, offset: 448)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!676, !3999}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3985, file: !3978, line: 127, baseType: !4021, size: 64, offset: 512)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3985, file: !3978, line: 128, baseType: !4026, size: 64, offset: 576)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!3981, !3999}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3985, file: !3978, line: 130, baseType: !4030, size: 64, offset: 640)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!3981, !3999, !3981}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3985, file: !3978, line: 133, baseType: !4034, size: 64, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!3981, !3999, !676}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3985, file: !3978, line: 135, baseType: !4038, size: 64, offset: 768)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!339, !3999, !676, !676, !5, !5, !4041}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3978, line: 43, size: 640, elements: !4043)
!4043 = !{!4044, !4045, !4046}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4042, file: !3978, line: 44, baseType: !3981, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4042, file: !3978, line: 45, baseType: !5, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4042, file: !3978, line: 46, baseType: !4047, size: 512, offset: 128)
!4047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 512, elements: !386)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3985, file: !3978, line: 140, baseType: !4030, size: 64, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3985, file: !3978, line: 143, baseType: !4026, size: 64, offset: 896)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3985, file: !3978, line: 145, baseType: !3988, size: 64, offset: 960)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3985, file: !3978, line: 146, baseType: !4052, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!339, !3999, !4055}
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3978, line: 29, size: 128, elements: !4057)
!4057 = !{!4058, !4059, !4060}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4056, file: !3978, line: 30, baseType: !5, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4056, file: !3978, line: 31, baseType: !5, size: 32, offset: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4056, file: !3978, line: 32, baseType: !3999, size: 64, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3985, file: !3978, line: 148, baseType: !4062, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!339, !3999, !682}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3977, file: !3978, line: 20, baseType: !682, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3969, file: !3970, line: 57, baseType: !4067, size: 64, offset: 384)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3970, line: 31, size: 704, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073, !4074}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4068, file: !3970, line: 32, baseType: !651, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4068, file: !3970, line: 33, baseType: !339, size: 32, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4068, file: !3970, line: 34, baseType: !621, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4068, file: !3970, line: 35, baseType: !4067, size: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4068, file: !3970, line: 43, baseType: !803, size: 448, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3969, file: !3970, line: 58, baseType: !4067, size: 64, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3969, file: !3970, line: 59, baseType: !3968, size: 64, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3969, file: !3970, line: 60, baseType: !3968, size: 64, offset: 576)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3969, file: !3970, line: 61, baseType: !3968, size: 64, offset: 640)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3969, file: !3970, line: 63, baseType: !686, size: 512, offset: 704)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3969, file: !3970, line: 65, baseType: !575, size: 64, offset: 1216)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3969, file: !3970, line: 66, baseType: !621, size: 64, offset: 1280)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3962, file: !256, line: 108, baseType: !4083, size: 64, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!339, !3954, !4086, !255}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !256, line: 63, size: 640, elements: !4088)
!4088 = !{!4089, !4090, !4091}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4087, file: !256, line: 64, baseType: !3981, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4087, file: !256, line: 65, baseType: !339, size: 32, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4087, file: !256, line: 66, baseType: !4092, size: 512, offset: 96)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 512, elements: !2090)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3962, file: !256, line: 110, baseType: !4094, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!339, !3954, !5, !4097}
!4097 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !354, line: 164, baseType: !575)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3962, file: !256, line: 111, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !3954, !5}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3962, file: !256, line: 112, baseType: !4103, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!339, !3954, !3968, !4106, !5, !4108, !409}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3962, file: !256, line: 117, baseType: !4110, size: 64, offset: 320)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!339, !3954, !5, !5, !621}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3962, file: !256, line: 119, baseType: !4114, size: 64, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !3954, !5, !5}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3962, file: !256, line: 121, baseType: !4118, size: 64, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!339, !3954, !4121, !407}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4123, line: 11, flags: DIFlagFwdDecl)
!4123 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3962, file: !256, line: 122, baseType: !4125, size: 64, offset: 512)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{null, !3954, !4121}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3962, file: !256, line: 123, baseType: !4129, size: 64, offset: 576)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!339, !3954, !4086, !4108, !409}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3955, file: !256, line: 166, baseType: !621, size: 64, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3955, file: !256, line: 167, baseType: !5, size: 32, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3955, file: !256, line: 168, baseType: !5, size: 32, offset: 352)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3955, file: !256, line: 171, baseType: !3981, size: 64, offset: 384)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3955, file: !256, line: 172, baseType: !255, size: 32, offset: 448)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3955, file: !256, line: 173, baseType: !4138, size: 64, offset: 512)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !256, line: 134, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3955, file: !256, line: 175, baseType: !3954, size: 64, offset: 576)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3955, file: !256, line: 182, baseType: !4097, size: 64, offset: 640)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3955, file: !256, line: 183, baseType: !5, size: 32, offset: 704)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3955, file: !256, line: 184, baseType: !5, size: 32, offset: 736)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3955, file: !256, line: 185, baseType: !1190, size: 128, offset: 768)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3955, file: !256, line: 186, baseType: !1537, size: 192, offset: 896)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3955, file: !256, line: 187, baseType: !4147, offset: 1088)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !2687)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !683, file: !235, line: 499, baseType: !669, size: 128, offset: 4224)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !683, file: !235, line: 502, baseType: !4150, size: 64, offset: 4352)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4152)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !235, line: 502, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !683, file: !235, line: 504, baseType: !4154, size: 64, offset: 4416)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !683, file: !235, line: 505, baseType: !616, size: 64, offset: 4480)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !683, file: !235, line: 510, baseType: !616, size: 64, offset: 4544)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !683, file: !235, line: 511, baseType: !4158, size: 64, offset: 4608)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4160)
!4160 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !235, line: 511, flags: DIFlagFwdDecl)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !683, file: !235, line: 513, baseType: !4162, size: 64, offset: 4672)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !235, line: 288, size: 128, elements: !4164)
!4164 = !{!4165, !4166}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4163, file: !235, line: 293, baseType: !5, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4163, file: !235, line: 294, baseType: !575, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !683, file: !235, line: 515, baseType: !669, size: 128, offset: 4736)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !683, file: !235, line: 526, baseType: !4169, offset: 4864)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4170, line: 5, elements: !713)
!4170 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !683, file: !235, line: 528, baseType: !3968, size: 64, offset: 4864)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !683, file: !235, line: 529, baseType: !3981, size: 64, offset: 4928)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !683, file: !235, line: 534, baseType: !963, size: 32, offset: 4992)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !683, file: !235, line: 535, baseType: !370, size: 32, offset: 5024)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !683, file: !235, line: 537, baseType: !699, offset: 5056)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !683, file: !235, line: 538, baseType: !669, size: 128, offset: 5056)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !683, file: !235, line: 540, baseType: !4178, size: 64, offset: 5184)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4180, line: 54, size: 960, elements: !4181)
!4180 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4181 = !{!4182, !4183, !4184, !4185, !4186, !4187, !4188, !4192, !4196, !4197, !4198, !4199, !4203, !4207, !4208}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4179, file: !4180, line: 55, baseType: !676, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4179, file: !4180, line: 56, baseType: !1081, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4179, file: !4180, line: 58, baseType: !788, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4179, file: !4180, line: 59, baseType: !788, size: 64, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4179, file: !4180, line: 60, baseType: !692, size: 64, offset: 256)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4179, file: !4180, line: 62, baseType: !3691, size: 64, offset: 320)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4179, file: !4180, line: 63, baseType: !4189, size: 64, offset: 384)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!651, !682, !3698}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4179, file: !4180, line: 65, baseType: !4193, size: 64, offset: 448)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !4178}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4179, file: !4180, line: 66, baseType: !3700, size: 64, offset: 512)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4179, file: !4180, line: 68, baseType: !3709, size: 64, offset: 576)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4179, file: !4180, line: 70, baseType: !3499, size: 64, offset: 640)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4179, file: !4180, line: 71, baseType: !4200, size: 64, offset: 704)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!2483, !682}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4179, file: !4180, line: 73, baseType: !4204, size: 64, offset: 768)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{null, !682, !3531, !3532}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4179, file: !4180, line: 75, baseType: !3704, size: 64, offset: 832)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4179, file: !4180, line: 77, baseType: !3818, size: 64, offset: 896)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !683, file: !235, line: 541, baseType: !788, size: 64, offset: 5248)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !683, file: !235, line: 543, baseType: !3700, size: 64, offset: 5312)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !683, file: !235, line: 544, baseType: !4212, size: 64, offset: 5376)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !235, line: 45, flags: DIFlagFwdDecl)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !683, file: !235, line: 545, baseType: !4215, size: 64, offset: 5440)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !235, line: 47, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !683, file: !235, line: 547, baseType: !407, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !683, file: !235, line: 548, baseType: !407, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !683, file: !235, line: 549, baseType: !407, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !683, file: !235, line: 550, baseType: !407, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !665, file: !270, line: 111, baseType: !1081, size: 64, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !665, file: !270, line: 113, baseType: !339, size: 32, offset: 640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !665, file: !270, line: 114, baseType: !4224, size: 64, offset: 704)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !270, line: 157, size: 704, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4241}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4225, file: !270, line: 158, baseType: !669, size: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4225, file: !270, line: 159, baseType: !3157, size: 64, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4225, file: !270, line: 160, baseType: !664, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4225, file: !270, line: 161, baseType: !269, size: 32, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4225, file: !270, line: 162, baseType: !339, size: 32, offset: 288)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4225, file: !270, line: 163, baseType: !370, size: 32, offset: 320)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4225, file: !270, line: 167, baseType: !339, size: 32, offset: 352)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4225, file: !270, line: 168, baseType: !339, size: 32, offset: 384)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4225, file: !270, line: 169, baseType: !339, size: 32, offset: 416)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4225, file: !270, line: 171, baseType: !1838, size: 128, offset: 448)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4225, file: !270, line: 173, baseType: !4238, size: 64, offset: 576)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!339, !812, !5, !621}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4225, file: !270, line: 187, baseType: !621, size: 64, offset: 640)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !665, file: !270, line: 115, baseType: !1537, size: 192, offset: 768)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !341, file: !49, line: 690, baseType: !621, size: 64, offset: 6144)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !341, file: !49, line: 691, baseType: !621, size: 64, offset: 6208)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !341, file: !49, line: 692, baseType: !621, size: 64, offset: 6272)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !341, file: !49, line: 693, baseType: !621, size: 64, offset: 6336)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !341, file: !49, line: 694, baseType: !621, size: 64, offset: 6400)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !341, file: !49, line: 695, baseType: !431, size: 3648, offset: 6464)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !341, file: !49, line: 698, baseType: !4250, size: 64, offset: 10112)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!339, !621, !339, !339, !339}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !341, file: !49, line: 699, baseType: !339, size: 32, offset: 10176)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !341, file: !49, line: 700, baseType: !5, size: 32, offset: 10208)
!4255 = !DILocalVariable(name: "fe", arg: 1, scope: !336, file: !1, line: 109, type: !340)
!4256 = !DILocation(line: 109, column: 45, scope: !336)
!4257 = !DILocalVariable(name: "priv", scope: !336, file: !1, line: 111, type: !4258)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda18271_priv", file: !296, line: 91, size: 4928, elements: !4260)
!4260 = !{!4261, !4265, !4266, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4408, !4434, !4450, !4451, !4452, !4453}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "tda18271_regs", scope: !4259, file: !296, line: 92, baseType: !4262, size: 312)
!4262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 312, elements: !4263)
!4263 = !{!4264}
!4264 = !DISubrange(count: 39)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "hybrid_tuner_instance_list", scope: !4259, file: !296, line: 94, baseType: !669, size: 128, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_props", scope: !4259, file: !296, line: 95, baseType: !4267, size: 256, offset: 448)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuner_i2c_props", file: !4268, line: 15, size: 256, elements: !4269)
!4268 = !DIFile(filename: "drivers/media/tuners/tuner-i2c.h", directory: "/home/lizy2001/genbc/linux")
!4269 = !{!4270, !4271, !4394, !4395}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4267, file: !4268, line: 16, baseType: !383, size: 8)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "adap", scope: !4267, file: !4268, line: 17, baseType: !4272, size: 64, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4274, line: 695, size: 7552, elements: !4275)
!4274 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4275 = !{!4276, !4277, !4278, !4315, !4316, !4330, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4347, !4348, !4349, !4350, !4382, !4393}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4273, file: !4274, line: 696, baseType: !1081, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4273, file: !4274, line: 697, baseType: !5, size: 32, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4273, file: !4274, line: 698, baseType: !4279, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4281)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4274, line: 519, size: 320, elements: !4282)
!4282 = !{!4283, !4296, !4297, !4310, !4311}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4281, file: !4274, line: 529, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!339, !4272, !4287, !339}
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4289, line: 69, size: 128, elements: !4290)
!4289 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4290 = !{!4291, !4292, !4293, !4294}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4288, file: !4289, line: 70, baseType: !526, size: 16)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4288, file: !4289, line: 71, baseType: !526, size: 16, offset: 16)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4288, file: !4289, line: 84, baseType: !526, size: 16, offset: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4288, file: !4289, line: 85, baseType: !4295, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4281, file: !4274, line: 531, baseType: !4284, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4281, file: !4274, line: 533, baseType: !4298, size: 64, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!339, !4272, !525, !527, !366, !383, !339, !4301}
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4289, line: 135, size: 272, elements: !4303)
!4303 = !{!4304, !4305, !4306}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4302, file: !4289, line: 136, baseType: !384, size: 8)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4302, file: !4289, line: 137, baseType: !526, size: 16)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4302, file: !4289, line: 138, baseType: !4307, size: 272)
!4307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 272, elements: !4308)
!4308 = !{!4309}
!4309 = !DISubrange(count: 34)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4281, file: !4274, line: 536, baseType: !4298, size: 64, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4281, file: !4274, line: 541, baseType: !4312, size: 64, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!370, !4272}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4273, file: !4274, line: 699, baseType: !621, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4273, file: !4274, line: 702, baseType: !4317, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4319)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4274, line: 557, size: 192, elements: !4320)
!4320 = !{!4321, !4325, !4329}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4319, file: !4274, line: 558, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{null, !4272, !5}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4319, file: !4274, line: 559, baseType: !4326, size: 64, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!339, !4272, !5}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4319, file: !4274, line: 560, baseType: !4322, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4273, file: !4274, line: 703, baseType: !4331, size: 192, offset: 320)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4332, line: 30, size: 192, elements: !4333)
!4332 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4333 = !{!4334, !4335, !4336}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4331, file: !4332, line: 31, baseType: !1228)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4331, file: !4332, line: 32, baseType: !1200, size: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4331, file: !4332, line: 33, baseType: !1580, size: 64, offset: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4273, file: !4274, line: 704, baseType: !4331, size: 192, offset: 512)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4273, file: !4274, line: 706, baseType: !339, size: 32, offset: 704)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4273, file: !4274, line: 707, baseType: !339, size: 32, offset: 736)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4273, file: !4274, line: 708, baseType: !683, size: 5568, offset: 768)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4273, file: !4274, line: 709, baseType: !575, size: 64, offset: 6336)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4273, file: !4274, line: 713, baseType: !339, size: 32, offset: 6400)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4273, file: !4274, line: 714, baseType: !4344, size: 384, offset: 6432)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 384, elements: !4345)
!4345 = !{!4346}
!4346 = !DISubrange(count: 48)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4273, file: !4274, line: 715, baseType: !1859, size: 192, offset: 6848)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4273, file: !4274, line: 717, baseType: !1537, size: 192, offset: 7040)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4273, file: !4274, line: 718, baseType: !669, size: 128, offset: 7232)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4273, file: !4274, line: 720, baseType: !4351, size: 64, offset: 7360)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4274, line: 618, size: 832, elements: !4353)
!4353 = !{!4354, !4358, !4359, !4363, !4364, !4365, !4366, !4370, !4371, !4374, !4375, !4378, !4381}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4352, file: !4274, line: 619, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!339, !4272}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4352, file: !4274, line: 621, baseType: !4355, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4352, file: !4274, line: 622, baseType: !4360, size: 64, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{null, !4272, !339}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4352, file: !4274, line: 623, baseType: !4355, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4352, file: !4274, line: 624, baseType: !4360, size: 64, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4352, file: !4274, line: 625, baseType: !4355, size: 64, offset: 320)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4352, file: !4274, line: 627, baseType: !4367, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4272}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4352, file: !4274, line: 628, baseType: !4367, size: 64, offset: 448)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4352, file: !4274, line: 631, baseType: !4372, size: 64, offset: 512)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4274, line: 631, flags: DIFlagFwdDecl)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4352, file: !4274, line: 632, baseType: !4372, size: 64, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4352, file: !4274, line: 633, baseType: !4376, size: 64, offset: 640)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4274, line: 633, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4352, file: !4274, line: 634, baseType: !4379, size: 64, offset: 704)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4274, line: 634, flags: DIFlagFwdDecl)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4352, file: !4274, line: 635, baseType: !4379, size: 64, offset: 768)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4273, file: !4274, line: 721, baseType: !4383, size: 64, offset: 7424)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4274, line: 664, size: 192, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4390, !4391, !4392}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4385, file: !4274, line: 665, baseType: !616, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4385, file: !4274, line: 666, baseType: !339, size: 32, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4385, file: !4274, line: 667, baseType: !525, size: 16, offset: 96)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4385, file: !4274, line: 668, baseType: !525, size: 16, offset: 112)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4385, file: !4274, line: 669, baseType: !525, size: 16, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4385, file: !4274, line: 670, baseType: !525, size: 16, offset: 144)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4273, file: !4274, line: 723, baseType: !3954, size: 64, offset: 7488)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4267, file: !4268, line: 20, baseType: !339, size: 32, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4267, file: !4268, line: 21, baseType: !651, size: 64, offset: 192)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4259, file: !296, line: 97, baseType: !281, size: 32, offset: 704)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !4259, file: !296, line: 98, baseType: !286, size: 32, offset: 736)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !4259, file: !296, line: 99, baseType: !290, size: 32, offset: 768)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4259, file: !296, line: 100, baseType: !295, size: 32, offset: 800)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "output_opt", scope: !4259, file: !296, line: 101, baseType: !300, size: 32, offset: 832)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "small_i2c", scope: !4259, file: !296, line: 102, baseType: !305, size: 32, offset: 864)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4259, file: !296, line: 104, baseType: !5, size: 32, offset: 896)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "cal_initialized", scope: !4259, file: !296, line: 105, baseType: !5, size: 1, offset: 928, flags: DIFlagBitField, extraData: i64 928)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "tm_rfcal", scope: !4259, file: !296, line: 107, baseType: !383, size: 8, offset: 936)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !4259, file: !296, line: 109, baseType: !4406, size: 64, offset: 960)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DICompositeType(tag: DW_TAG_structure_type, name: "tda18271_map_layout", file: !296, line: 84, flags: DIFlagFwdDecl)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4259, file: !296, line: 110, baseType: !4409, size: 480, offset: 1024)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda18271_std_map", file: !282, line: 30, size: 480, elements: !4410)
!4410 = !{!4411, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fm_radio", scope: !4409, file: !282, line: 31, baseType: !4412, size: 32)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda18271_std_map_item", file: !282, line: 15, size: 32, elements: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "if_freq", scope: !4412, file: !282, line: 16, baseType: !525, size: 16)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "agc_mode", scope: !4412, file: !282, line: 19, baseType: !5, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4412, file: !282, line: 21, baseType: !5, size: 3, offset: 18, flags: DIFlagBitField, extraData: i64 16)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "fm_rfn", scope: !4412, file: !282, line: 23, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 16)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "if_lvl", scope: !4412, file: !282, line: 25, baseType: !5, size: 3, offset: 22, flags: DIFlagBitField, extraData: i64 16)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "rfagc_top", scope: !4412, file: !282, line: 27, baseType: !5, size: 7, offset: 25, flags: DIFlagBitField, extraData: i64 16)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "atv_b", scope: !4409, file: !282, line: 32, baseType: !4412, size: 32, offset: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "atv_dk", scope: !4409, file: !282, line: 33, baseType: !4412, size: 32, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "atv_gh", scope: !4409, file: !282, line: 34, baseType: !4412, size: 32, offset: 96)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "atv_i", scope: !4409, file: !282, line: 35, baseType: !4412, size: 32, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "atv_l", scope: !4409, file: !282, line: 36, baseType: !4412, size: 32, offset: 160)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "atv_lc", scope: !4409, file: !282, line: 37, baseType: !4412, size: 32, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "atv_mn", scope: !4409, file: !282, line: 38, baseType: !4412, size: 32, offset: 224)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "atsc_6", scope: !4409, file: !282, line: 39, baseType: !4412, size: 32, offset: 256)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dvbt_6", scope: !4409, file: !282, line: 40, baseType: !4412, size: 32, offset: 288)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dvbt_7", scope: !4409, file: !282, line: 41, baseType: !4412, size: 32, offset: 320)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dvbt_8", scope: !4409, file: !282, line: 42, baseType: !4412, size: 32, offset: 352)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "qam_6", scope: !4409, file: !282, line: 43, baseType: !4412, size: 32, offset: 384)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "qam_7", scope: !4409, file: !282, line: 44, baseType: !4412, size: 32, offset: 416)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "qam_8", scope: !4409, file: !282, line: 45, baseType: !4412, size: 32, offset: 448)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "rf_cal_state", scope: !4259, file: !296, line: 111, baseType: !4435, size: 3072, offset: 1504)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4436, size: 3072, elements: !386)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda18271_rf_tracking_filter_cal", file: !296, line: 64, size: 384, elements: !4437)
!4437 = !{!4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "rfmax", scope: !4436, file: !296, line: 65, baseType: !370, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "rfband", scope: !4436, file: !296, line: 66, baseType: !383, size: 8, offset: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "rf1_def", scope: !4436, file: !296, line: 67, baseType: !370, size: 32, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "rf2_def", scope: !4436, file: !296, line: 68, baseType: !370, size: 32, offset: 96)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "rf3_def", scope: !4436, file: !296, line: 69, baseType: !370, size: 32, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "rf1", scope: !4436, file: !296, line: 70, baseType: !370, size: 32, offset: 160)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "rf2", scope: !4436, file: !296, line: 71, baseType: !370, size: 32, offset: 192)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "rf3", scope: !4436, file: !296, line: 72, baseType: !370, size: 32, offset: 224)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "rf_a1", scope: !4436, file: !296, line: 73, baseType: !632, size: 32, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "rf_b1", scope: !4436, file: !296, line: 74, baseType: !632, size: 32, offset: 288)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "rf_a2", scope: !4436, file: !296, line: 75, baseType: !632, size: 32, offset: 320)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "rf_b2", scope: !4436, file: !296, line: 76, baseType: !632, size: 32, offset: 352)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4259, file: !296, line: 113, baseType: !1537, size: 192, offset: 4608)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "if_freq", scope: !4259, file: !296, line: 115, baseType: !525, size: 16, offset: 4800)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4259, file: !296, line: 117, baseType: !370, size: 32, offset: 4832)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth", scope: !4259, file: !296, line: 118, baseType: !370, size: 32, offset: 4864)
!4454 = !DILocation(line: 111, column: 24, scope: !336)
!4455 = !DILocation(line: 111, column: 31, scope: !336)
!4456 = !DILocation(line: 111, column: 35, scope: !336)
!4457 = !DILocalVariable(name: "regs", scope: !336, file: !1, line: 112, type: !4458)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!4459 = !DILocation(line: 112, column: 17, scope: !336)
!4460 = !DILocation(line: 112, column: 24, scope: !336)
!4461 = !DILocation(line: 112, column: 30, scope: !336)
!4462 = !DILocalVariable(name: "buf", scope: !336, file: !1, line: 113, type: !385)
!4463 = !DILocation(line: 113, column: 16, scope: !336)
!4464 = !DILocalVariable(name: "ret", scope: !336, file: !1, line: 114, type: !339)
!4465 = !DILocation(line: 114, column: 6, scope: !336)
!4466 = !DILocalVariable(name: "msg", scope: !336, file: !1, line: 115, type: !4467)
!4467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4288, size: 256, elements: !1926)
!4468 = !DILocation(line: 115, column: 17, scope: !336)
!4469 = !DILocation(line: 115, column: 25, scope: !336)
!4470 = !DILocation(line: 116, column: 3, scope: !336)
!4471 = !DILocation(line: 116, column: 13, scope: !336)
!4472 = !DILocation(line: 116, column: 19, scope: !336)
!4473 = !DILocation(line: 116, column: 29, scope: !336)
!4474 = !DILocation(line: 118, column: 3, scope: !336)
!4475 = !DILocation(line: 118, column: 13, scope: !336)
!4476 = !DILocation(line: 118, column: 19, scope: !336)
!4477 = !DILocation(line: 118, column: 29, scope: !336)
!4478 = !DILocation(line: 119, column: 12, scope: !336)
!4479 = !DILocation(line: 122, column: 25, scope: !336)
!4480 = !DILocation(line: 122, column: 2, scope: !336)
!4481 = !DILocation(line: 125, column: 21, scope: !336)
!4482 = !DILocation(line: 125, column: 27, scope: !336)
!4483 = !DILocation(line: 125, column: 37, scope: !336)
!4484 = !DILocation(line: 125, column: 43, scope: !336)
!4485 = !DILocation(line: 125, column: 8, scope: !336)
!4486 = !DILocation(line: 125, column: 6, scope: !336)
!4487 = !DILocation(line: 127, column: 25, scope: !336)
!4488 = !DILocation(line: 127, column: 2, scope: !336)
!4489 = !DILocation(line: 129, column: 6, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !336, file: !1, line: 129, column: 6)
!4491 = !DILocation(line: 129, column: 10, scope: !4490)
!4492 = !DILocation(line: 129, column: 6, scope: !336)
!4493 = !DILocation(line: 130, column: 3, scope: !4490)
!4494 = !DILocation(line: 132, column: 6, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !336, file: !1, line: 132, column: 6)
!4496 = !DILocation(line: 132, column: 21, scope: !4495)
!4497 = !DILocation(line: 132, column: 6, scope: !336)
!4498 = !DILocation(line: 133, column: 22, scope: !4495)
!4499 = !DILocation(line: 133, column: 3, scope: !4495)
!4500 = !DILocation(line: 135, column: 10, scope: !336)
!4501 = !DILocation(line: 135, column: 14, scope: !336)
!4502 = !DILocation(line: 135, column: 25, scope: !336)
!4503 = !DILocation(line: 135, column: 2, scope: !336)
!4504 = distinct !DISubprogram(name: "tda18271_i2c_gate_ctrl", scope: !1, file: !1, line: 11, type: !578, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !713)
!4505 = !DILocalVariable(name: "fe", arg: 1, scope: !4504, file: !1, line: 11, type: !340)
!4506 = !DILocation(line: 11, column: 56, scope: !4504)
!4507 = !DILocalVariable(name: "enable", arg: 2, scope: !4504, file: !1, line: 11, type: !339)
!4508 = !DILocation(line: 11, column: 64, scope: !4504)
!4509 = !DILocalVariable(name: "priv", scope: !4504, file: !1, line: 13, type: !4258)
!4510 = !DILocation(line: 13, column: 24, scope: !4504)
!4511 = !DILocation(line: 13, column: 31, scope: !4504)
!4512 = !DILocation(line: 13, column: 35, scope: !4504)
!4513 = !DILocalVariable(name: "gate", scope: !4504, file: !1, line: 14, type: !290)
!4514 = !DILocation(line: 14, column: 25, scope: !4504)
!4515 = !DILocalVariable(name: "ret", scope: !4504, file: !1, line: 15, type: !339)
!4516 = !DILocation(line: 15, column: 6, scope: !4504)
!4517 = !DILocation(line: 17, column: 10, scope: !4504)
!4518 = !DILocation(line: 17, column: 16, scope: !4504)
!4519 = !DILocation(line: 17, column: 2, scope: !4504)
!4520 = !DILocation(line: 20, column: 10, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4504, file: !1, line: 17, column: 22)
!4522 = !DILocation(line: 20, column: 16, scope: !4521)
!4523 = !DILocation(line: 20, column: 8, scope: !4521)
!4524 = !DILocation(line: 21, column: 3, scope: !4521)
!4525 = !DILocation(line: 24, column: 11, scope: !4521)
!4526 = !DILocation(line: 24, column: 17, scope: !4521)
!4527 = !DILocation(line: 24, column: 3, scope: !4521)
!4528 = !DILocation(line: 26, column: 9, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4521, file: !1, line: 24, column: 23)
!4530 = !DILocation(line: 27, column: 4, scope: !4529)
!4531 = !DILocation(line: 30, column: 9, scope: !4529)
!4532 = !DILocation(line: 31, column: 4, scope: !4529)
!4533 = !DILocation(line: 33, column: 2, scope: !4521)
!4534 = !DILocation(line: 35, column: 10, scope: !4504)
!4535 = !DILocation(line: 35, column: 2, scope: !4504)
!4536 = !DILocation(line: 37, column: 7, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !1, line: 37, column: 7)
!4538 = distinct !DILexicalBlock(scope: !4504, file: !1, line: 35, column: 16)
!4539 = !DILocation(line: 37, column: 11, scope: !4537)
!4540 = !DILocation(line: 37, column: 15, scope: !4537)
!4541 = !DILocation(line: 37, column: 26, scope: !4537)
!4542 = !DILocation(line: 37, column: 7, scope: !4538)
!4543 = !DILocation(line: 38, column: 10, scope: !4537)
!4544 = !DILocation(line: 38, column: 14, scope: !4537)
!4545 = !DILocation(line: 38, column: 18, scope: !4537)
!4546 = !DILocation(line: 38, column: 29, scope: !4537)
!4547 = !DILocation(line: 38, column: 43, scope: !4537)
!4548 = !DILocation(line: 38, column: 47, scope: !4537)
!4549 = !DILocation(line: 38, column: 8, scope: !4537)
!4550 = !DILocation(line: 38, column: 4, scope: !4537)
!4551 = !DILocation(line: 39, column: 3, scope: !4538)
!4552 = !DILocation(line: 41, column: 7, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4538, file: !1, line: 41, column: 7)
!4554 = !DILocation(line: 41, column: 11, scope: !4553)
!4555 = !DILocation(line: 41, column: 15, scope: !4553)
!4556 = !DILocation(line: 41, column: 7, scope: !4538)
!4557 = !DILocation(line: 42, column: 10, scope: !4553)
!4558 = !DILocation(line: 42, column: 14, scope: !4553)
!4559 = !DILocation(line: 42, column: 18, scope: !4553)
!4560 = !DILocation(line: 42, column: 32, scope: !4553)
!4561 = !DILocation(line: 42, column: 36, scope: !4553)
!4562 = !DILocation(line: 42, column: 8, scope: !4553)
!4563 = !DILocation(line: 42, column: 4, scope: !4553)
!4564 = !DILocation(line: 43, column: 3, scope: !4538)
!4565 = !DILocation(line: 45, column: 7, scope: !4538)
!4566 = !DILocation(line: 46, column: 3, scope: !4538)
!4567 = !DILocation(line: 49, column: 9, scope: !4504)
!4568 = !DILocation(line: 49, column: 2, scope: !4504)
!4569 = distinct !DISubprogram(name: "_tda_printk", scope: !1, file: !1, line: 705, type: !4570, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{null, !4258, !676, !676, !676, null}
!4572 = !DILocalVariable(name: "state", arg: 1, scope: !4569, file: !1, line: 705, type: !4258)
!4573 = !DILocation(line: 705, column: 40, scope: !4569)
!4574 = !DILocalVariable(name: "level", arg: 2, scope: !4569, file: !1, line: 705, type: !676)
!4575 = !DILocation(line: 705, column: 59, scope: !4569)
!4576 = !DILocalVariable(name: "func", arg: 3, scope: !4569, file: !1, line: 706, type: !676)
!4577 = !DILocation(line: 706, column: 16, scope: !4569)
!4578 = !DILocalVariable(name: "fmt", arg: 4, scope: !4569, file: !1, line: 706, type: !676)
!4579 = !DILocation(line: 706, column: 34, scope: !4569)
!4580 = !DILocalVariable(name: "vaf", scope: !4569, file: !1, line: 708, type: !4581)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4582, line: 90, size: 128, elements: !4583)
!4582 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!4583 = !{!4584, !4585}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4581, file: !4582, line: 91, baseType: !676, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4581, file: !4582, line: 92, baseType: !4586, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4588, line: 99, baseType: !4589)
!4588 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4588, line: 40, baseType: !4590)
!4590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 708, baseType: !4591)
!4591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4592, size: 192, elements: !1726)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 708, size: 192, elements: !4593)
!4593 = !{!4594, !4595, !4596, !4597}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4592, file: !1, line: 708, baseType: !5, size: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4592, file: !1, line: 708, baseType: !5, size: 32, offset: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4592, file: !1, line: 708, baseType: !621, size: 64, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4592, file: !1, line: 708, baseType: !621, size: 64, offset: 128)
!4598 = !DILocation(line: 708, column: 19, scope: !4569)
!4599 = !DILocalVariable(name: "args", scope: !4569, file: !1, line: 709, type: !4587)
!4600 = !DILocation(line: 709, column: 10, scope: !4569)
!4601 = !DILocation(line: 711, column: 2, scope: !4569)
!4602 = !DILocation(line: 713, column: 12, scope: !4569)
!4603 = !DILocation(line: 713, column: 6, scope: !4569)
!4604 = !DILocation(line: 713, column: 10, scope: !4569)
!4605 = !DILocation(line: 714, column: 6, scope: !4569)
!4606 = !DILocation(line: 714, column: 9, scope: !4569)
!4607 = !DILocation(line: 716, column: 6, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4569, file: !1, line: 716, column: 6)
!4609 = !DILocation(line: 716, column: 6, scope: !4569)
!4610 = !DILocation(line: 718, column: 10, scope: !4608)
!4611 = !DILocation(line: 718, column: 17, scope: !4608)
!4612 = !DILocation(line: 718, column: 38, scope: !4608)
!4613 = !DILocation(line: 718, column: 45, scope: !4608)
!4614 = !DILocation(line: 718, column: 55, scope: !4608)
!4615 = !DILocation(line: 718, column: 23, scope: !4608)
!4616 = !DILocation(line: 719, column: 10, scope: !4608)
!4617 = !DILocation(line: 719, column: 17, scope: !4608)
!4618 = !DILocation(line: 719, column: 27, scope: !4608)
!4619 = !DILocation(line: 720, column: 11, scope: !4608)
!4620 = !DILocation(line: 720, column: 18, scope: !4608)
!4621 = !DILocation(line: 720, column: 23, scope: !4608)
!4622 = !DILocation(line: 720, column: 10, scope: !4608)
!4623 = !DILocation(line: 717, column: 3, scope: !4608)
!4624 = !DILocation(line: 723, column: 23, scope: !4608)
!4625 = !DILocation(line: 723, column: 30, scope: !4608)
!4626 = !DILocation(line: 723, column: 3, scope: !4608)
!4627 = !DILocation(line: 725, column: 2, scope: !4569)
!4628 = !DILocation(line: 726, column: 1, scope: !4569)
!4629 = distinct !DISubprogram(name: "tda18271_dump_regs", scope: !1, file: !1, line: 54, type: !4630, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !713)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !340, !339}
!4632 = !DILocalVariable(name: "fe", arg: 1, scope: !4629, file: !1, line: 54, type: !340)
!4633 = !DILocation(line: 54, column: 53, scope: !4629)
!4634 = !DILocalVariable(name: "extended", arg: 2, scope: !4629, file: !1, line: 54, type: !339)
!4635 = !DILocation(line: 54, column: 61, scope: !4629)
!4636 = !DILocalVariable(name: "priv", scope: !4629, file: !1, line: 56, type: !4258)
!4637 = !DILocation(line: 56, column: 24, scope: !4629)
!4638 = !DILocation(line: 56, column: 31, scope: !4629)
!4639 = !DILocation(line: 56, column: 35, scope: !4629)
!4640 = !DILocalVariable(name: "regs", scope: !4629, file: !1, line: 57, type: !4458)
!4641 = !DILocation(line: 57, column: 17, scope: !4629)
!4642 = !DILocation(line: 57, column: 24, scope: !4629)
!4643 = !DILocation(line: 57, column: 30, scope: !4629)
!4644 = !DILocation(line: 59, column: 2, scope: !4629)
!4645 = !DILocation(line: 59, column: 2, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4647, file: !1, line: 59, column: 2)
!4647 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 59, column: 2)
!4648 = !DILocation(line: 59, column: 2, scope: !4647)
!4649 = !DILocation(line: 60, column: 2, scope: !4629)
!4650 = !DILocation(line: 60, column: 2, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4652, file: !1, line: 60, column: 2)
!4652 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 60, column: 2)
!4653 = !DILocation(line: 60, column: 2, scope: !4652)
!4654 = !DILocation(line: 61, column: 2, scope: !4629)
!4655 = !DILocation(line: 61, column: 2, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !1, line: 61, column: 2)
!4657 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 61, column: 2)
!4658 = !DILocation(line: 61, column: 2, scope: !4657)
!4659 = !DILocation(line: 62, column: 2, scope: !4629)
!4660 = !DILocation(line: 62, column: 2, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !1, line: 62, column: 2)
!4662 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 62, column: 2)
!4663 = !DILocation(line: 62, column: 2, scope: !4662)
!4664 = !DILocation(line: 63, column: 2, scope: !4629)
!4665 = !DILocation(line: 63, column: 2, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !1, line: 63, column: 2)
!4667 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 63, column: 2)
!4668 = !DILocation(line: 63, column: 2, scope: !4667)
!4669 = !DILocation(line: 64, column: 2, scope: !4629)
!4670 = !DILocation(line: 64, column: 2, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !1, line: 64, column: 2)
!4672 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 64, column: 2)
!4673 = !DILocation(line: 64, column: 2, scope: !4672)
!4674 = !DILocation(line: 65, column: 2, scope: !4629)
!4675 = !DILocation(line: 65, column: 2, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !1, line: 65, column: 2)
!4677 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 65, column: 2)
!4678 = !DILocation(line: 65, column: 2, scope: !4677)
!4679 = !DILocation(line: 66, column: 2, scope: !4629)
!4680 = !DILocation(line: 66, column: 2, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !1, line: 66, column: 2)
!4682 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 66, column: 2)
!4683 = !DILocation(line: 66, column: 2, scope: !4682)
!4684 = !DILocation(line: 67, column: 2, scope: !4629)
!4685 = !DILocation(line: 67, column: 2, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !1, line: 67, column: 2)
!4687 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 67, column: 2)
!4688 = !DILocation(line: 67, column: 2, scope: !4687)
!4689 = !DILocation(line: 68, column: 2, scope: !4629)
!4690 = !DILocation(line: 68, column: 2, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !1, line: 68, column: 2)
!4692 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 68, column: 2)
!4693 = !DILocation(line: 68, column: 2, scope: !4692)
!4694 = !DILocation(line: 69, column: 2, scope: !4629)
!4695 = !DILocation(line: 69, column: 2, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !1, line: 69, column: 2)
!4697 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 69, column: 2)
!4698 = !DILocation(line: 69, column: 2, scope: !4697)
!4699 = !DILocation(line: 70, column: 2, scope: !4629)
!4700 = !DILocation(line: 70, column: 2, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !1, line: 70, column: 2)
!4702 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 70, column: 2)
!4703 = !DILocation(line: 70, column: 2, scope: !4702)
!4704 = !DILocation(line: 71, column: 2, scope: !4629)
!4705 = !DILocation(line: 71, column: 2, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4707, file: !1, line: 71, column: 2)
!4707 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 71, column: 2)
!4708 = !DILocation(line: 71, column: 2, scope: !4707)
!4709 = !DILocation(line: 72, column: 2, scope: !4629)
!4710 = !DILocation(line: 72, column: 2, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !1, line: 72, column: 2)
!4712 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 72, column: 2)
!4713 = !DILocation(line: 72, column: 2, scope: !4712)
!4714 = !DILocation(line: 73, column: 2, scope: !4629)
!4715 = !DILocation(line: 73, column: 2, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !1, line: 73, column: 2)
!4717 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 73, column: 2)
!4718 = !DILocation(line: 73, column: 2, scope: !4717)
!4719 = !DILocation(line: 74, column: 2, scope: !4629)
!4720 = !DILocation(line: 74, column: 2, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !1, line: 74, column: 2)
!4722 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 74, column: 2)
!4723 = !DILocation(line: 74, column: 2, scope: !4722)
!4724 = !DILocation(line: 75, column: 2, scope: !4629)
!4725 = !DILocation(line: 75, column: 2, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !1, line: 75, column: 2)
!4727 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 75, column: 2)
!4728 = !DILocation(line: 75, column: 2, scope: !4727)
!4729 = !DILocation(line: 78, column: 8, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 78, column: 6)
!4731 = !DILocation(line: 78, column: 23, scope: !4730)
!4732 = !DILocation(line: 78, column: 6, scope: !4629)
!4733 = !DILocation(line: 79, column: 3, scope: !4730)
!4734 = !DILocation(line: 84, column: 2, scope: !4629)
!4735 = !DILocation(line: 84, column: 2, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !1, line: 84, column: 2)
!4737 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 84, column: 2)
!4738 = !DILocation(line: 84, column: 2, scope: !4737)
!4739 = !DILocation(line: 85, column: 2, scope: !4629)
!4740 = !DILocation(line: 85, column: 2, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !1, line: 85, column: 2)
!4742 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 85, column: 2)
!4743 = !DILocation(line: 85, column: 2, scope: !4742)
!4744 = !DILocation(line: 86, column: 2, scope: !4629)
!4745 = !DILocation(line: 86, column: 2, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !1, line: 86, column: 2)
!4747 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 86, column: 2)
!4748 = !DILocation(line: 86, column: 2, scope: !4747)
!4749 = !DILocation(line: 87, column: 2, scope: !4629)
!4750 = !DILocation(line: 87, column: 2, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !1, line: 87, column: 2)
!4752 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 87, column: 2)
!4753 = !DILocation(line: 87, column: 2, scope: !4752)
!4754 = !DILocation(line: 88, column: 2, scope: !4629)
!4755 = !DILocation(line: 88, column: 2, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !1, line: 88, column: 2)
!4757 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 88, column: 2)
!4758 = !DILocation(line: 88, column: 2, scope: !4757)
!4759 = !DILocation(line: 89, column: 2, scope: !4629)
!4760 = !DILocation(line: 89, column: 2, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !1, line: 89, column: 2)
!4762 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 89, column: 2)
!4763 = !DILocation(line: 89, column: 2, scope: !4762)
!4764 = !DILocation(line: 90, column: 2, scope: !4629)
!4765 = !DILocation(line: 90, column: 2, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !1, line: 90, column: 2)
!4767 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 90, column: 2)
!4768 = !DILocation(line: 90, column: 2, scope: !4767)
!4769 = !DILocation(line: 91, column: 2, scope: !4629)
!4770 = !DILocation(line: 91, column: 2, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !1, line: 91, column: 2)
!4772 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 91, column: 2)
!4773 = !DILocation(line: 91, column: 2, scope: !4772)
!4774 = !DILocation(line: 92, column: 2, scope: !4629)
!4775 = !DILocation(line: 92, column: 2, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4777, file: !1, line: 92, column: 2)
!4777 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 92, column: 2)
!4778 = !DILocation(line: 92, column: 2, scope: !4777)
!4779 = !DILocation(line: 93, column: 2, scope: !4629)
!4780 = !DILocation(line: 93, column: 2, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4782, file: !1, line: 93, column: 2)
!4782 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 93, column: 2)
!4783 = !DILocation(line: 93, column: 2, scope: !4782)
!4784 = !DILocation(line: 94, column: 2, scope: !4629)
!4785 = !DILocation(line: 94, column: 2, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4787, file: !1, line: 94, column: 2)
!4787 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 94, column: 2)
!4788 = !DILocation(line: 94, column: 2, scope: !4787)
!4789 = !DILocation(line: 95, column: 2, scope: !4629)
!4790 = !DILocation(line: 95, column: 2, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !1, line: 95, column: 2)
!4792 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 95, column: 2)
!4793 = !DILocation(line: 95, column: 2, scope: !4792)
!4794 = !DILocation(line: 96, column: 2, scope: !4629)
!4795 = !DILocation(line: 96, column: 2, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !1, line: 96, column: 2)
!4797 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 96, column: 2)
!4798 = !DILocation(line: 96, column: 2, scope: !4797)
!4799 = !DILocation(line: 97, column: 2, scope: !4629)
!4800 = !DILocation(line: 97, column: 2, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !1, line: 97, column: 2)
!4802 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 97, column: 2)
!4803 = !DILocation(line: 97, column: 2, scope: !4802)
!4804 = !DILocation(line: 98, column: 2, scope: !4629)
!4805 = !DILocation(line: 98, column: 2, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !1, line: 98, column: 2)
!4807 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 98, column: 2)
!4808 = !DILocation(line: 98, column: 2, scope: !4807)
!4809 = !DILocation(line: 99, column: 2, scope: !4629)
!4810 = !DILocation(line: 99, column: 2, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4812, file: !1, line: 99, column: 2)
!4812 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 99, column: 2)
!4813 = !DILocation(line: 99, column: 2, scope: !4812)
!4814 = !DILocation(line: 100, column: 2, scope: !4629)
!4815 = !DILocation(line: 100, column: 2, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !1, line: 100, column: 2)
!4817 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 100, column: 2)
!4818 = !DILocation(line: 100, column: 2, scope: !4817)
!4819 = !DILocation(line: 101, column: 2, scope: !4629)
!4820 = !DILocation(line: 101, column: 2, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !1, line: 101, column: 2)
!4822 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 101, column: 2)
!4823 = !DILocation(line: 101, column: 2, scope: !4822)
!4824 = !DILocation(line: 102, column: 2, scope: !4629)
!4825 = !DILocation(line: 102, column: 2, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !1, line: 102, column: 2)
!4827 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 102, column: 2)
!4828 = !DILocation(line: 102, column: 2, scope: !4827)
!4829 = !DILocation(line: 103, column: 2, scope: !4629)
!4830 = !DILocation(line: 103, column: 2, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !1, line: 103, column: 2)
!4832 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 103, column: 2)
!4833 = !DILocation(line: 103, column: 2, scope: !4832)
!4834 = !DILocation(line: 104, column: 2, scope: !4629)
!4835 = !DILocation(line: 104, column: 2, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !1, line: 104, column: 2)
!4837 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 104, column: 2)
!4838 = !DILocation(line: 104, column: 2, scope: !4837)
!4839 = !DILocation(line: 105, column: 2, scope: !4629)
!4840 = !DILocation(line: 105, column: 2, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4842, file: !1, line: 105, column: 2)
!4842 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 105, column: 2)
!4843 = !DILocation(line: 105, column: 2, scope: !4842)
!4844 = !DILocation(line: 106, column: 2, scope: !4629)
!4845 = !DILocation(line: 106, column: 2, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !1, line: 106, column: 2)
!4847 = distinct !DILexicalBlock(scope: !4629, file: !1, line: 106, column: 2)
!4848 = !DILocation(line: 106, column: 2, scope: !4847)
!4849 = !DILocation(line: 107, column: 1, scope: !4629)
!4850 = distinct !DISubprogram(name: "tda18271_read_extended", scope: !1, file: !1, line: 138, type: !337, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!4851 = !DILocalVariable(name: "fe", arg: 1, scope: !4850, file: !1, line: 138, type: !340)
!4852 = !DILocation(line: 138, column: 49, scope: !4850)
!4853 = !DILocalVariable(name: "priv", scope: !4850, file: !1, line: 140, type: !4258)
!4854 = !DILocation(line: 140, column: 24, scope: !4850)
!4855 = !DILocation(line: 140, column: 31, scope: !4850)
!4856 = !DILocation(line: 140, column: 35, scope: !4850)
!4857 = !DILocalVariable(name: "regs", scope: !4850, file: !1, line: 141, type: !4458)
!4858 = !DILocation(line: 141, column: 17, scope: !4850)
!4859 = !DILocation(line: 141, column: 24, scope: !4850)
!4860 = !DILocation(line: 141, column: 30, scope: !4850)
!4861 = !DILocalVariable(name: "regdump", scope: !4850, file: !1, line: 142, type: !4262)
!4862 = !DILocation(line: 142, column: 16, scope: !4850)
!4863 = !DILocalVariable(name: "buf", scope: !4850, file: !1, line: 143, type: !385)
!4864 = !DILocation(line: 143, column: 16, scope: !4850)
!4865 = !DILocalVariable(name: "ret", scope: !4850, file: !1, line: 144, type: !339)
!4866 = !DILocation(line: 144, column: 6, scope: !4850)
!4867 = !DILocalVariable(name: "i", scope: !4850, file: !1, line: 144, type: !339)
!4868 = !DILocation(line: 144, column: 11, scope: !4850)
!4869 = !DILocalVariable(name: "msg", scope: !4850, file: !1, line: 145, type: !4467)
!4870 = !DILocation(line: 145, column: 17, scope: !4850)
!4871 = !DILocation(line: 145, column: 25, scope: !4850)
!4872 = !DILocation(line: 146, column: 3, scope: !4850)
!4873 = !DILocation(line: 146, column: 13, scope: !4850)
!4874 = !DILocation(line: 146, column: 19, scope: !4850)
!4875 = !DILocation(line: 146, column: 29, scope: !4850)
!4876 = !DILocation(line: 148, column: 3, scope: !4850)
!4877 = !DILocation(line: 148, column: 13, scope: !4850)
!4878 = !DILocation(line: 148, column: 19, scope: !4850)
!4879 = !DILocation(line: 148, column: 29, scope: !4850)
!4880 = !DILocation(line: 149, column: 12, scope: !4850)
!4881 = !DILocation(line: 152, column: 25, scope: !4850)
!4882 = !DILocation(line: 152, column: 2, scope: !4850)
!4883 = !DILocation(line: 155, column: 21, scope: !4850)
!4884 = !DILocation(line: 155, column: 27, scope: !4850)
!4885 = !DILocation(line: 155, column: 37, scope: !4850)
!4886 = !DILocation(line: 155, column: 43, scope: !4850)
!4887 = !DILocation(line: 155, column: 8, scope: !4850)
!4888 = !DILocation(line: 155, column: 6, scope: !4850)
!4889 = !DILocation(line: 157, column: 25, scope: !4850)
!4890 = !DILocation(line: 157, column: 2, scope: !4850)
!4891 = !DILocation(line: 159, column: 6, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4850, file: !1, line: 159, column: 6)
!4893 = !DILocation(line: 159, column: 10, scope: !4892)
!4894 = !DILocation(line: 159, column: 6, scope: !4850)
!4895 = !DILocation(line: 160, column: 3, scope: !4892)
!4896 = !DILocation(line: 162, column: 9, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4850, file: !1, line: 162, column: 2)
!4898 = !DILocation(line: 162, column: 7, scope: !4897)
!4899 = !DILocation(line: 162, column: 14, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4897, file: !1, line: 162, column: 2)
!4901 = !DILocation(line: 162, column: 16, scope: !4900)
!4902 = !DILocation(line: 162, column: 2, scope: !4897)
!4903 = !DILocation(line: 164, column: 8, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !1, line: 164, column: 7)
!4905 = distinct !DILexicalBlock(scope: !4900, file: !1, line: 162, column: 42)
!4906 = !DILocation(line: 164, column: 10, scope: !4904)
!4907 = !DILocation(line: 164, column: 21, scope: !4904)
!4908 = !DILocation(line: 165, column: 8, scope: !4904)
!4909 = !DILocation(line: 165, column: 10, scope: !4904)
!4910 = !DILocation(line: 165, column: 21, scope: !4904)
!4911 = !DILocation(line: 166, column: 8, scope: !4904)
!4912 = !DILocation(line: 166, column: 10, scope: !4904)
!4913 = !DILocation(line: 166, column: 21, scope: !4904)
!4914 = !DILocation(line: 167, column: 8, scope: !4904)
!4915 = !DILocation(line: 167, column: 10, scope: !4904)
!4916 = !DILocation(line: 167, column: 21, scope: !4904)
!4917 = !DILocation(line: 168, column: 8, scope: !4904)
!4918 = !DILocation(line: 168, column: 10, scope: !4904)
!4919 = !DILocation(line: 164, column: 7, scope: !4905)
!4920 = !DILocation(line: 169, column: 22, scope: !4904)
!4921 = !DILocation(line: 169, column: 14, scope: !4904)
!4922 = !DILocation(line: 169, column: 4, scope: !4904)
!4923 = !DILocation(line: 169, column: 9, scope: !4904)
!4924 = !DILocation(line: 169, column: 12, scope: !4904)
!4925 = !DILocation(line: 170, column: 2, scope: !4905)
!4926 = !DILocation(line: 162, column: 38, scope: !4900)
!4927 = !DILocation(line: 162, column: 2, scope: !4900)
!4928 = distinct !{!4928, !4902, !4929}
!4929 = !DILocation(line: 170, column: 2, scope: !4897)
!4930 = !DILocation(line: 172, column: 6, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4850, file: !1, line: 172, column: 6)
!4932 = !DILocation(line: 172, column: 21, scope: !4931)
!4933 = !DILocation(line: 172, column: 6, scope: !4850)
!4934 = !DILocation(line: 173, column: 22, scope: !4931)
!4935 = !DILocation(line: 173, column: 3, scope: !4931)
!4936 = !DILocation(line: 175, column: 10, scope: !4850)
!4937 = !DILocation(line: 175, column: 14, scope: !4850)
!4938 = !DILocation(line: 175, column: 25, scope: !4850)
!4939 = !DILocation(line: 175, column: 2, scope: !4850)
!4940 = distinct !DISubprogram(name: "tda18271_write_regs", scope: !1, file: !1, line: 248, type: !4941, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!339, !340, !339, !339}
!4943 = !DILocalVariable(name: "fe", arg: 1, scope: !4940, file: !1, line: 248, type: !340)
!4944 = !DILocation(line: 248, column: 46, scope: !4940)
!4945 = !DILocalVariable(name: "idx", arg: 2, scope: !4940, file: !1, line: 248, type: !339)
!4946 = !DILocation(line: 248, column: 54, scope: !4940)
!4947 = !DILocalVariable(name: "len", arg: 3, scope: !4940, file: !1, line: 248, type: !339)
!4948 = !DILocation(line: 248, column: 63, scope: !4940)
!4949 = !DILocation(line: 250, column: 31, scope: !4940)
!4950 = !DILocation(line: 250, column: 35, scope: !4940)
!4951 = !DILocation(line: 250, column: 40, scope: !4940)
!4952 = !DILocation(line: 250, column: 9, scope: !4940)
!4953 = !DILocation(line: 250, column: 2, scope: !4940)
!4954 = distinct !DISubprogram(name: "__tda18271_write_regs", scope: !1, file: !1, line: 178, type: !4955, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !713)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!339, !340, !339, !339, !407}
!4957 = !DILocalVariable(name: "fe", arg: 1, scope: !4954, file: !1, line: 178, type: !340)
!4958 = !DILocation(line: 178, column: 55, scope: !4954)
!4959 = !DILocalVariable(name: "idx", arg: 2, scope: !4954, file: !1, line: 178, type: !339)
!4960 = !DILocation(line: 178, column: 63, scope: !4954)
!4961 = !DILocalVariable(name: "len", arg: 3, scope: !4954, file: !1, line: 178, type: !339)
!4962 = !DILocation(line: 178, column: 72, scope: !4954)
!4963 = !DILocalVariable(name: "lock_i2c", arg: 4, scope: !4954, file: !1, line: 179, type: !407)
!4964 = !DILocation(line: 179, column: 9, scope: !4954)
!4965 = !DILocalVariable(name: "priv", scope: !4954, file: !1, line: 181, type: !4258)
!4966 = !DILocation(line: 181, column: 24, scope: !4954)
!4967 = !DILocation(line: 181, column: 31, scope: !4954)
!4968 = !DILocation(line: 181, column: 35, scope: !4954)
!4969 = !DILocalVariable(name: "regs", scope: !4954, file: !1, line: 182, type: !4458)
!4970 = !DILocation(line: 182, column: 17, scope: !4954)
!4971 = !DILocation(line: 182, column: 24, scope: !4954)
!4972 = !DILocation(line: 182, column: 30, scope: !4954)
!4973 = !DILocalVariable(name: "buf", scope: !4954, file: !1, line: 183, type: !4974)
!4974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 320, elements: !4975)
!4975 = !{!4976}
!4976 = !DISubrange(count: 40)
!4977 = !DILocation(line: 183, column: 16, scope: !4954)
!4978 = !DILocalVariable(name: "msg", scope: !4954, file: !1, line: 184, type: !4288)
!4979 = !DILocation(line: 184, column: 17, scope: !4954)
!4980 = !DILocation(line: 184, column: 23, scope: !4954)
!4981 = !DILocation(line: 184, column: 33, scope: !4954)
!4982 = !DILocation(line: 184, column: 39, scope: !4954)
!4983 = !DILocation(line: 184, column: 49, scope: !4954)
!4984 = !DILocation(line: 185, column: 18, scope: !4954)
!4985 = !DILocalVariable(name: "i", scope: !4954, file: !1, line: 186, type: !339)
!4986 = !DILocation(line: 186, column: 6, scope: !4954)
!4987 = !DILocalVariable(name: "ret", scope: !4954, file: !1, line: 186, type: !339)
!4988 = !DILocation(line: 186, column: 9, scope: !4954)
!4989 = !DILocalVariable(name: "max", scope: !4954, file: !1, line: 186, type: !339)
!4990 = !DILocation(line: 186, column: 18, scope: !4954)
!4991 = !DILocation(line: 188, column: 2, scope: !4954)
!4992 = !DILocation(line: 188, column: 2, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !1, line: 188, column: 2)
!4994 = distinct !DILexicalBlock(scope: !4954, file: !1, line: 188, column: 2)
!4995 = !DILocation(line: 188, column: 2, scope: !4994)
!4996 = !DILocation(line: 188, column: 2, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4993, file: !1, line: 188, column: 2)
!4998 = !DILocation(line: 188, column: 2, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 188, column: 2)
!5000 = !DILocation(line: 188, column: 2, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 188, column: 2)
!5002 = !{i32 -2141876929, i32 -2141876900, i32 -2141876854, i32 -2141876796, i32 -2141876742, i32 -2141876688, i32 -2141876633, i32 -2141876602}
!5003 = !DILocation(line: 188, column: 2, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !1, line: 188, column: 2)
!5005 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 188, column: 2)
!5006 = !{i32 -2141876141, i32 -2141876134, i32 -2141876080, i32 -2141876049, i32 -2141876019}
!5007 = !DILocation(line: 188, column: 2, scope: !5005)
!5008 = !DILocation(line: 190, column: 10, scope: !4954)
!5009 = !DILocation(line: 190, column: 16, scope: !4954)
!5010 = !DILocation(line: 190, column: 2, scope: !4954)
!5011 = !DILocation(line: 192, column: 7, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4954, file: !1, line: 190, column: 27)
!5013 = !DILocation(line: 193, column: 3, scope: !5012)
!5014 = !DILocation(line: 195, column: 7, scope: !5012)
!5015 = !DILocation(line: 196, column: 3, scope: !5012)
!5016 = !DILocation(line: 198, column: 7, scope: !5012)
!5017 = !DILocation(line: 199, column: 3, scope: !5012)
!5018 = !DILocation(line: 202, column: 7, scope: !5012)
!5019 = !DILocation(line: 203, column: 2, scope: !5012)
!5020 = !DILocation(line: 214, column: 6, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4954, file: !1, line: 214, column: 6)
!5022 = !DILocation(line: 214, column: 6, scope: !4954)
!5023 = !DILocation(line: 215, column: 26, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5021, file: !1, line: 214, column: 16)
!5025 = !DILocation(line: 215, column: 3, scope: !5024)
!5026 = !DILocation(line: 216, column: 16, scope: !5024)
!5027 = !DILocation(line: 216, column: 22, scope: !5024)
!5028 = !DILocation(line: 216, column: 32, scope: !5024)
!5029 = !DILocation(line: 216, column: 3, scope: !5024)
!5030 = !DILocation(line: 217, column: 2, scope: !5024)
!5031 = !DILocation(line: 218, column: 2, scope: !4954)
!5032 = !DILocation(line: 218, column: 9, scope: !4954)
!5033 = !DILocation(line: 219, column: 7, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !1, line: 219, column: 7)
!5035 = distinct !DILexicalBlock(scope: !4954, file: !1, line: 218, column: 14)
!5036 = !DILocation(line: 219, column: 13, scope: !5034)
!5037 = !DILocation(line: 219, column: 11, scope: !5034)
!5038 = !DILocation(line: 219, column: 7, scope: !5035)
!5039 = !DILocation(line: 220, column: 10, scope: !5034)
!5040 = !DILocation(line: 220, column: 8, scope: !5034)
!5041 = !DILocation(line: 220, column: 4, scope: !5034)
!5042 = !DILocation(line: 222, column: 12, scope: !5035)
!5043 = !DILocation(line: 222, column: 3, scope: !5035)
!5044 = !DILocation(line: 222, column: 10, scope: !5035)
!5045 = !DILocation(line: 223, column: 10, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5035, file: !1, line: 223, column: 3)
!5047 = !DILocation(line: 223, column: 8, scope: !5046)
!5048 = !DILocation(line: 223, column: 15, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5046, file: !1, line: 223, column: 3)
!5050 = !DILocation(line: 223, column: 20, scope: !5049)
!5051 = !DILocation(line: 223, column: 17, scope: !5049)
!5052 = !DILocation(line: 223, column: 3, scope: !5046)
!5053 = !DILocation(line: 224, column: 13, scope: !5049)
!5054 = !DILocation(line: 224, column: 18, scope: !5049)
!5055 = !DILocation(line: 224, column: 22, scope: !5049)
!5056 = !DILocation(line: 224, column: 28, scope: !5049)
!5057 = !DILocation(line: 224, column: 26, scope: !5049)
!5058 = !DILocation(line: 224, column: 8, scope: !5049)
!5059 = !DILocation(line: 224, column: 4, scope: !5049)
!5060 = !DILocation(line: 224, column: 11, scope: !5049)
!5061 = !DILocation(line: 223, column: 26, scope: !5049)
!5062 = !DILocation(line: 223, column: 3, scope: !5049)
!5063 = distinct !{!5063, !5052, !5064}
!5064 = !DILocation(line: 224, column: 29, scope: !5046)
!5065 = !DILocation(line: 226, column: 13, scope: !5035)
!5066 = !DILocation(line: 226, column: 17, scope: !5035)
!5067 = !DILocation(line: 226, column: 7, scope: !5035)
!5068 = !DILocation(line: 226, column: 11, scope: !5035)
!5069 = !DILocation(line: 229, column: 24, scope: !5035)
!5070 = !DILocation(line: 229, column: 30, scope: !5035)
!5071 = !DILocation(line: 229, column: 40, scope: !5035)
!5072 = !DILocation(line: 229, column: 9, scope: !5035)
!5073 = !DILocation(line: 229, column: 7, scope: !5035)
!5074 = !DILocation(line: 230, column: 7, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5035, file: !1, line: 230, column: 7)
!5076 = !DILocation(line: 230, column: 11, scope: !5075)
!5077 = !DILocation(line: 230, column: 7, scope: !5035)
!5078 = !DILocation(line: 231, column: 4, scope: !5075)
!5079 = !DILocation(line: 233, column: 10, scope: !5035)
!5080 = !DILocation(line: 233, column: 7, scope: !5035)
!5081 = !DILocation(line: 234, column: 10, scope: !5035)
!5082 = !DILocation(line: 234, column: 7, scope: !5035)
!5083 = distinct !{!5083, !5031, !5084}
!5084 = !DILocation(line: 235, column: 2, scope: !4954)
!5085 = !DILocation(line: 236, column: 6, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !4954, file: !1, line: 236, column: 6)
!5087 = !DILocation(line: 236, column: 6, scope: !4954)
!5088 = !DILocation(line: 237, column: 18, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5086, file: !1, line: 236, column: 16)
!5090 = !DILocation(line: 237, column: 24, scope: !5089)
!5091 = !DILocation(line: 237, column: 34, scope: !5089)
!5092 = !DILocation(line: 237, column: 3, scope: !5089)
!5093 = !DILocation(line: 238, column: 26, scope: !5089)
!5094 = !DILocation(line: 238, column: 3, scope: !5089)
!5095 = !DILocation(line: 239, column: 2, scope: !5089)
!5096 = !DILocation(line: 241, column: 6, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !4954, file: !1, line: 241, column: 6)
!5098 = !DILocation(line: 241, column: 10, scope: !5097)
!5099 = !DILocation(line: 241, column: 6, scope: !4954)
!5100 = !DILocation(line: 242, column: 3, scope: !5097)
!5101 = !DILocation(line: 245, column: 10, scope: !4954)
!5102 = !DILocation(line: 245, column: 14, scope: !4954)
!5103 = !DILocation(line: 245, column: 25, scope: !4954)
!5104 = !DILocation(line: 245, column: 2, scope: !4954)
!5105 = distinct !DISubprogram(name: "tda18271_charge_pump_source", scope: !1, file: !1, line: 270, type: !5106, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!339, !340, !316, !339}
!5108 = !DILocalVariable(name: "fe", arg: 1, scope: !5105, file: !1, line: 270, type: !340)
!5109 = !DILocation(line: 270, column: 54, scope: !5105)
!5110 = !DILocalVariable(name: "pll", arg: 2, scope: !5105, file: !1, line: 271, type: !316)
!5111 = !DILocation(line: 271, column: 23, scope: !5105)
!5112 = !DILocalVariable(name: "force", arg: 3, scope: !5105, file: !1, line: 271, type: !339)
!5113 = !DILocation(line: 271, column: 32, scope: !5105)
!5114 = !DILocation(line: 273, column: 39, scope: !5105)
!5115 = !DILocation(line: 273, column: 43, scope: !5105)
!5116 = !DILocation(line: 273, column: 48, scope: !5105)
!5117 = !DILocation(line: 273, column: 9, scope: !5105)
!5118 = !DILocation(line: 273, column: 2, scope: !5105)
!5119 = distinct !DISubprogram(name: "__tda18271_charge_pump_source", scope: !1, file: !1, line: 255, type: !5120, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!339, !340, !316, !339, !407}
!5122 = !DILocalVariable(name: "fe", arg: 1, scope: !5119, file: !1, line: 255, type: !340)
!5123 = !DILocation(line: 255, column: 63, scope: !5119)
!5124 = !DILocalVariable(name: "pll", arg: 2, scope: !5119, file: !1, line: 256, type: !316)
!5125 = !DILocation(line: 256, column: 25, scope: !5119)
!5126 = !DILocalVariable(name: "force", arg: 3, scope: !5119, file: !1, line: 256, type: !339)
!5127 = !DILocation(line: 256, column: 34, scope: !5119)
!5128 = !DILocalVariable(name: "lock_i2c", arg: 4, scope: !5119, file: !1, line: 257, type: !407)
!5129 = !DILocation(line: 257, column: 12, scope: !5119)
!5130 = !DILocalVariable(name: "priv", scope: !5119, file: !1, line: 259, type: !4258)
!5131 = !DILocation(line: 259, column: 24, scope: !5119)
!5132 = !DILocation(line: 259, column: 31, scope: !5119)
!5133 = !DILocation(line: 259, column: 35, scope: !5119)
!5134 = !DILocalVariable(name: "regs", scope: !5119, file: !1, line: 260, type: !4458)
!5135 = !DILocation(line: 260, column: 17, scope: !5119)
!5136 = !DILocation(line: 260, column: 24, scope: !5119)
!5137 = !DILocation(line: 260, column: 30, scope: !5119)
!5138 = !DILocalVariable(name: "r_cp", scope: !5119, file: !1, line: 262, type: !339)
!5139 = !DILocation(line: 262, column: 6, scope: !5119)
!5140 = !DILocation(line: 262, column: 14, scope: !5119)
!5141 = !DILocation(line: 262, column: 18, scope: !5119)
!5142 = !DILocation(line: 262, column: 13, scope: !5119)
!5143 = !DILocation(line: 264, column: 2, scope: !5119)
!5144 = !DILocation(line: 264, column: 7, scope: !5119)
!5145 = !DILocation(line: 264, column: 13, scope: !5119)
!5146 = !DILocation(line: 265, column: 18, scope: !5119)
!5147 = !DILocation(line: 265, column: 24, scope: !5119)
!5148 = !DILocation(line: 265, column: 29, scope: !5119)
!5149 = !DILocation(line: 265, column: 2, scope: !5119)
!5150 = !DILocation(line: 265, column: 7, scope: !5119)
!5151 = !DILocation(line: 265, column: 13, scope: !5119)
!5152 = !DILocation(line: 267, column: 31, scope: !5119)
!5153 = !DILocation(line: 267, column: 35, scope: !5119)
!5154 = !DILocation(line: 267, column: 44, scope: !5119)
!5155 = !DILocation(line: 267, column: 9, scope: !5119)
!5156 = !DILocation(line: 267, column: 2, scope: !5119)
!5157 = distinct !DISubprogram(name: "tda18271_init_regs", scope: !1, file: !1, line: 277, type: !337, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5158 = !DILocalVariable(name: "fe", arg: 1, scope: !5157, file: !1, line: 277, type: !340)
!5159 = !DILocation(line: 277, column: 45, scope: !5157)
!5160 = !DILocalVariable(name: "priv", scope: !5157, file: !1, line: 279, type: !4258)
!5161 = !DILocation(line: 279, column: 24, scope: !5157)
!5162 = !DILocation(line: 279, column: 31, scope: !5157)
!5163 = !DILocation(line: 279, column: 35, scope: !5157)
!5164 = !DILocalVariable(name: "regs", scope: !5157, file: !1, line: 280, type: !4458)
!5165 = !DILocation(line: 280, column: 17, scope: !5157)
!5166 = !DILocation(line: 280, column: 24, scope: !5157)
!5167 = !DILocation(line: 280, column: 30, scope: !5157)
!5168 = !DILocation(line: 282, column: 2, scope: !5157)
!5169 = !DILocation(line: 282, column: 2, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !1, line: 282, column: 2)
!5171 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 282, column: 2)
!5172 = !DILocation(line: 282, column: 2, scope: !5171)
!5173 = !DILocation(line: 290, column: 25, scope: !5157)
!5174 = !DILocation(line: 290, column: 2, scope: !5157)
!5175 = !DILocation(line: 291, column: 15, scope: !5157)
!5176 = !DILocation(line: 291, column: 21, scope: !5157)
!5177 = !DILocation(line: 291, column: 31, scope: !5157)
!5178 = !DILocation(line: 291, column: 2, scope: !5157)
!5179 = !DILocation(line: 294, column: 10, scope: !5157)
!5180 = !DILocation(line: 294, column: 16, scope: !5157)
!5181 = !DILocation(line: 294, column: 2, scope: !5157)
!5182 = !DILocation(line: 296, column: 3, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 294, column: 20)
!5184 = !DILocation(line: 296, column: 16, scope: !5183)
!5185 = !DILocation(line: 297, column: 3, scope: !5183)
!5186 = !DILocation(line: 299, column: 3, scope: !5183)
!5187 = !DILocation(line: 299, column: 16, scope: !5183)
!5188 = !DILocation(line: 300, column: 3, scope: !5183)
!5189 = !DILocation(line: 303, column: 2, scope: !5157)
!5190 = !DILocation(line: 303, column: 15, scope: !5157)
!5191 = !DILocation(line: 304, column: 2, scope: !5157)
!5192 = !DILocation(line: 304, column: 15, scope: !5157)
!5193 = !DILocation(line: 305, column: 2, scope: !5157)
!5194 = !DILocation(line: 305, column: 15, scope: !5157)
!5195 = !DILocation(line: 306, column: 2, scope: !5157)
!5196 = !DILocation(line: 306, column: 15, scope: !5157)
!5197 = !DILocation(line: 307, column: 2, scope: !5157)
!5198 = !DILocation(line: 307, column: 15, scope: !5157)
!5199 = !DILocation(line: 308, column: 2, scope: !5157)
!5200 = !DILocation(line: 308, column: 15, scope: !5157)
!5201 = !DILocation(line: 309, column: 2, scope: !5157)
!5202 = !DILocation(line: 309, column: 15, scope: !5157)
!5203 = !DILocation(line: 310, column: 2, scope: !5157)
!5204 = !DILocation(line: 310, column: 15, scope: !5157)
!5205 = !DILocation(line: 311, column: 2, scope: !5157)
!5206 = !DILocation(line: 311, column: 15, scope: !5157)
!5207 = !DILocation(line: 312, column: 2, scope: !5157)
!5208 = !DILocation(line: 312, column: 15, scope: !5157)
!5209 = !DILocation(line: 313, column: 2, scope: !5157)
!5210 = !DILocation(line: 313, column: 15, scope: !5157)
!5211 = !DILocation(line: 314, column: 2, scope: !5157)
!5212 = !DILocation(line: 314, column: 15, scope: !5157)
!5213 = !DILocation(line: 315, column: 2, scope: !5157)
!5214 = !DILocation(line: 315, column: 15, scope: !5157)
!5215 = !DILocation(line: 316, column: 2, scope: !5157)
!5216 = !DILocation(line: 316, column: 15, scope: !5157)
!5217 = !DILocation(line: 317, column: 2, scope: !5157)
!5218 = !DILocation(line: 317, column: 15, scope: !5157)
!5219 = !DILocation(line: 319, column: 10, scope: !5157)
!5220 = !DILocation(line: 319, column: 16, scope: !5157)
!5221 = !DILocation(line: 319, column: 2, scope: !5157)
!5222 = !DILocation(line: 321, column: 3, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 319, column: 20)
!5224 = !DILocation(line: 321, column: 16, scope: !5223)
!5225 = !DILocation(line: 322, column: 3, scope: !5223)
!5226 = !DILocation(line: 324, column: 3, scope: !5223)
!5227 = !DILocation(line: 324, column: 16, scope: !5223)
!5228 = !DILocation(line: 325, column: 3, scope: !5223)
!5229 = !DILocation(line: 328, column: 2, scope: !5157)
!5230 = !DILocation(line: 328, column: 15, scope: !5157)
!5231 = !DILocation(line: 329, column: 2, scope: !5157)
!5232 = !DILocation(line: 329, column: 15, scope: !5157)
!5233 = !DILocation(line: 330, column: 2, scope: !5157)
!5234 = !DILocation(line: 330, column: 15, scope: !5157)
!5235 = !DILocation(line: 331, column: 2, scope: !5157)
!5236 = !DILocation(line: 331, column: 15, scope: !5157)
!5237 = !DILocation(line: 332, column: 2, scope: !5157)
!5238 = !DILocation(line: 332, column: 15, scope: !5157)
!5239 = !DILocation(line: 333, column: 2, scope: !5157)
!5240 = !DILocation(line: 333, column: 15, scope: !5157)
!5241 = !DILocation(line: 334, column: 2, scope: !5157)
!5242 = !DILocation(line: 334, column: 15, scope: !5157)
!5243 = !DILocation(line: 335, column: 2, scope: !5157)
!5244 = !DILocation(line: 335, column: 15, scope: !5157)
!5245 = !DILocation(line: 336, column: 2, scope: !5157)
!5246 = !DILocation(line: 336, column: 15, scope: !5157)
!5247 = !DILocation(line: 337, column: 2, scope: !5157)
!5248 = !DILocation(line: 337, column: 15, scope: !5157)
!5249 = !DILocation(line: 339, column: 10, scope: !5157)
!5250 = !DILocation(line: 339, column: 16, scope: !5157)
!5251 = !DILocation(line: 339, column: 2, scope: !5157)
!5252 = !DILocation(line: 341, column: 3, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 339, column: 20)
!5254 = !DILocation(line: 341, column: 16, scope: !5253)
!5255 = !DILocation(line: 342, column: 3, scope: !5253)
!5256 = !DILocation(line: 344, column: 3, scope: !5253)
!5257 = !DILocation(line: 344, column: 16, scope: !5253)
!5258 = !DILocation(line: 345, column: 3, scope: !5253)
!5259 = !DILocation(line: 348, column: 2, scope: !5157)
!5260 = !DILocation(line: 348, column: 15, scope: !5157)
!5261 = !DILocation(line: 349, column: 2, scope: !5157)
!5262 = !DILocation(line: 349, column: 15, scope: !5157)
!5263 = !DILocation(line: 350, column: 2, scope: !5157)
!5264 = !DILocation(line: 350, column: 15, scope: !5157)
!5265 = !DILocation(line: 351, column: 2, scope: !5157)
!5266 = !DILocation(line: 351, column: 15, scope: !5157)
!5267 = !DILocation(line: 352, column: 2, scope: !5157)
!5268 = !DILocation(line: 352, column: 15, scope: !5157)
!5269 = !DILocation(line: 354, column: 10, scope: !5157)
!5270 = !DILocation(line: 354, column: 16, scope: !5157)
!5271 = !DILocation(line: 354, column: 2, scope: !5157)
!5272 = !DILocation(line: 356, column: 3, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 354, column: 20)
!5274 = !DILocation(line: 356, column: 16, scope: !5273)
!5275 = !DILocation(line: 357, column: 3, scope: !5273)
!5276 = !DILocation(line: 359, column: 3, scope: !5273)
!5277 = !DILocation(line: 359, column: 16, scope: !5273)
!5278 = !DILocation(line: 360, column: 3, scope: !5273)
!5279 = !DILocation(line: 363, column: 2, scope: !5157)
!5280 = !DILocation(line: 363, column: 15, scope: !5157)
!5281 = !DILocation(line: 364, column: 2, scope: !5157)
!5282 = !DILocation(line: 364, column: 15, scope: !5157)
!5283 = !DILocation(line: 366, column: 10, scope: !5157)
!5284 = !DILocation(line: 366, column: 16, scope: !5157)
!5285 = !DILocation(line: 366, column: 2, scope: !5157)
!5286 = !DILocation(line: 368, column: 3, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 366, column: 20)
!5288 = !DILocation(line: 368, column: 16, scope: !5287)
!5289 = !DILocation(line: 369, column: 3, scope: !5287)
!5290 = !DILocation(line: 371, column: 3, scope: !5287)
!5291 = !DILocation(line: 371, column: 16, scope: !5287)
!5292 = !DILocation(line: 372, column: 3, scope: !5287)
!5293 = !DILocation(line: 375, column: 2, scope: !5157)
!5294 = !DILocation(line: 375, column: 15, scope: !5157)
!5295 = !DILocation(line: 376, column: 2, scope: !5157)
!5296 = !DILocation(line: 376, column: 15, scope: !5157)
!5297 = !DILocation(line: 378, column: 24, scope: !5157)
!5298 = !DILocation(line: 378, column: 2, scope: !5157)
!5299 = !DILocation(line: 381, column: 2, scope: !5157)
!5300 = !DILocation(line: 381, column: 15, scope: !5157)
!5301 = !DILocation(line: 382, column: 24, scope: !5157)
!5302 = !DILocation(line: 382, column: 2, scope: !5157)
!5303 = !DILocation(line: 383, column: 2, scope: !5157)
!5304 = !DILocation(line: 383, column: 15, scope: !5157)
!5305 = !DILocation(line: 384, column: 24, scope: !5157)
!5306 = !DILocation(line: 384, column: 2, scope: !5157)
!5307 = !DILocation(line: 385, column: 2, scope: !5157)
!5308 = !DILocation(line: 385, column: 15, scope: !5157)
!5309 = !DILocation(line: 386, column: 24, scope: !5157)
!5310 = !DILocation(line: 386, column: 2, scope: !5157)
!5311 = !DILocation(line: 387, column: 2, scope: !5157)
!5312 = !DILocation(line: 387, column: 15, scope: !5157)
!5313 = !DILocation(line: 388, column: 24, scope: !5157)
!5314 = !DILocation(line: 388, column: 2, scope: !5157)
!5315 = !DILocation(line: 391, column: 7, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 391, column: 6)
!5317 = !DILocation(line: 391, column: 13, scope: !5316)
!5318 = !DILocation(line: 391, column: 17, scope: !5316)
!5319 = !DILocation(line: 391, column: 6, scope: !5157)
!5320 = !DILocation(line: 392, column: 3, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5316, file: !1, line: 391, column: 34)
!5322 = !DILocation(line: 392, column: 16, scope: !5321)
!5323 = !DILocation(line: 393, column: 25, scope: !5321)
!5324 = !DILocation(line: 393, column: 3, scope: !5321)
!5325 = !DILocation(line: 394, column: 3, scope: !5321)
!5326 = !DILocation(line: 394, column: 16, scope: !5321)
!5327 = !DILocation(line: 395, column: 25, scope: !5321)
!5328 = !DILocation(line: 395, column: 3, scope: !5321)
!5329 = !DILocation(line: 396, column: 3, scope: !5321)
!5330 = !DILocation(line: 396, column: 16, scope: !5321)
!5331 = !DILocation(line: 397, column: 25, scope: !5321)
!5332 = !DILocation(line: 397, column: 3, scope: !5321)
!5333 = !DILocation(line: 398, column: 3, scope: !5321)
!5334 = !DILocation(line: 398, column: 16, scope: !5321)
!5335 = !DILocation(line: 399, column: 25, scope: !5321)
!5336 = !DILocation(line: 399, column: 3, scope: !5321)
!5337 = !DILocation(line: 400, column: 2, scope: !5321)
!5338 = !DILocation(line: 405, column: 2, scope: !5157)
!5339 = !DILocation(line: 405, column: 14, scope: !5157)
!5340 = !DILocation(line: 406, column: 2, scope: !5157)
!5341 = !DILocation(line: 406, column: 14, scope: !5157)
!5342 = !DILocation(line: 407, column: 2, scope: !5157)
!5343 = !DILocation(line: 407, column: 14, scope: !5157)
!5344 = !DILocation(line: 408, column: 2, scope: !5157)
!5345 = !DILocation(line: 408, column: 14, scope: !5157)
!5346 = !DILocation(line: 409, column: 2, scope: !5157)
!5347 = !DILocation(line: 409, column: 14, scope: !5157)
!5348 = !DILocation(line: 410, column: 2, scope: !5157)
!5349 = !DILocation(line: 410, column: 14, scope: !5157)
!5350 = !DILocation(line: 411, column: 2, scope: !5157)
!5351 = !DILocation(line: 411, column: 14, scope: !5157)
!5352 = !DILocation(line: 412, column: 2, scope: !5157)
!5353 = !DILocation(line: 412, column: 14, scope: !5157)
!5354 = !DILocation(line: 413, column: 2, scope: !5157)
!5355 = !DILocation(line: 413, column: 14, scope: !5157)
!5356 = !DILocation(line: 414, column: 2, scope: !5157)
!5357 = !DILocation(line: 414, column: 14, scope: !5157)
!5358 = !DILocation(line: 415, column: 2, scope: !5157)
!5359 = !DILocation(line: 415, column: 14, scope: !5157)
!5360 = !DILocation(line: 417, column: 24, scope: !5157)
!5361 = !DILocation(line: 417, column: 2, scope: !5157)
!5362 = !DILocation(line: 419, column: 7, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5157, file: !1, line: 419, column: 6)
!5364 = !DILocation(line: 419, column: 13, scope: !5363)
!5365 = !DILocation(line: 419, column: 17, scope: !5363)
!5366 = !DILocation(line: 419, column: 6, scope: !5157)
!5367 = !DILocation(line: 421, column: 33, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5363, file: !1, line: 419, column: 34)
!5369 = !DILocation(line: 421, column: 3, scope: !5368)
!5370 = !DILocation(line: 422, column: 3, scope: !5368)
!5371 = !DILocation(line: 425, column: 33, scope: !5368)
!5372 = !DILocation(line: 425, column: 3, scope: !5368)
!5373 = !DILocation(line: 426, column: 2, scope: !5368)
!5374 = !DILocation(line: 428, column: 2, scope: !5157)
!5375 = !DILocation(line: 431, column: 24, scope: !5157)
!5376 = !DILocation(line: 431, column: 2, scope: !5157)
!5377 = !DILocation(line: 432, column: 2, scope: !5157)
!5378 = !DILocation(line: 434, column: 2, scope: !5157)
!5379 = !DILocation(line: 434, column: 14, scope: !5157)
!5380 = !DILocation(line: 435, column: 2, scope: !5157)
!5381 = !DILocation(line: 435, column: 14, scope: !5157)
!5382 = !DILocation(line: 436, column: 2, scope: !5157)
!5383 = !DILocation(line: 436, column: 14, scope: !5157)
!5384 = !DILocation(line: 437, column: 2, scope: !5157)
!5385 = !DILocation(line: 437, column: 14, scope: !5157)
!5386 = !DILocation(line: 439, column: 24, scope: !5157)
!5387 = !DILocation(line: 439, column: 2, scope: !5157)
!5388 = !DILocation(line: 440, column: 2, scope: !5157)
!5389 = !DILocation(line: 443, column: 24, scope: !5157)
!5390 = !DILocation(line: 443, column: 2, scope: !5157)
!5391 = !DILocation(line: 444, column: 2, scope: !5157)
!5392 = !DILocation(line: 447, column: 2, scope: !5157)
!5393 = !DILocation(line: 447, column: 14, scope: !5157)
!5394 = !DILocation(line: 448, column: 2, scope: !5157)
!5395 = !DILocation(line: 448, column: 14, scope: !5157)
!5396 = !DILocation(line: 449, column: 2, scope: !5157)
!5397 = !DILocation(line: 449, column: 14, scope: !5157)
!5398 = !DILocation(line: 450, column: 2, scope: !5157)
!5399 = !DILocation(line: 450, column: 14, scope: !5157)
!5400 = !DILocation(line: 451, column: 2, scope: !5157)
!5401 = !DILocation(line: 451, column: 14, scope: !5157)
!5402 = !DILocation(line: 452, column: 2, scope: !5157)
!5403 = !DILocation(line: 452, column: 14, scope: !5157)
!5404 = !DILocation(line: 454, column: 24, scope: !5157)
!5405 = !DILocation(line: 454, column: 2, scope: !5157)
!5406 = !DILocation(line: 455, column: 2, scope: !5157)
!5407 = !DILocation(line: 458, column: 24, scope: !5157)
!5408 = !DILocation(line: 458, column: 2, scope: !5157)
!5409 = !DILocation(line: 459, column: 2, scope: !5157)
!5410 = !DILocation(line: 461, column: 2, scope: !5157)
!5411 = !DILocation(line: 461, column: 14, scope: !5157)
!5412 = !DILocation(line: 462, column: 2, scope: !5157)
!5413 = !DILocation(line: 462, column: 14, scope: !5157)
!5414 = !DILocation(line: 463, column: 2, scope: !5157)
!5415 = !DILocation(line: 463, column: 14, scope: !5157)
!5416 = !DILocation(line: 464, column: 2, scope: !5157)
!5417 = !DILocation(line: 464, column: 14, scope: !5157)
!5418 = !DILocation(line: 466, column: 24, scope: !5157)
!5419 = !DILocation(line: 466, column: 2, scope: !5157)
!5420 = !DILocation(line: 467, column: 2, scope: !5157)
!5421 = !DILocation(line: 470, column: 24, scope: !5157)
!5422 = !DILocation(line: 470, column: 2, scope: !5157)
!5423 = !DILocation(line: 471, column: 2, scope: !5157)
!5424 = !DILocation(line: 474, column: 2, scope: !5157)
!5425 = !DILocation(line: 474, column: 14, scope: !5157)
!5426 = !DILocation(line: 475, column: 2, scope: !5157)
!5427 = !DILocation(line: 475, column: 14, scope: !5157)
!5428 = !DILocation(line: 476, column: 2, scope: !5157)
!5429 = !DILocation(line: 476, column: 14, scope: !5157)
!5430 = !DILocation(line: 477, column: 2, scope: !5157)
!5431 = !DILocation(line: 477, column: 14, scope: !5157)
!5432 = !DILocation(line: 478, column: 2, scope: !5157)
!5433 = !DILocation(line: 478, column: 14, scope: !5157)
!5434 = !DILocation(line: 479, column: 2, scope: !5157)
!5435 = !DILocation(line: 479, column: 14, scope: !5157)
!5436 = !DILocation(line: 480, column: 2, scope: !5157)
!5437 = !DILocation(line: 480, column: 14, scope: !5157)
!5438 = !DILocation(line: 482, column: 24, scope: !5157)
!5439 = !DILocation(line: 482, column: 2, scope: !5157)
!5440 = !DILocation(line: 483, column: 2, scope: !5157)
!5441 = !DILocation(line: 486, column: 24, scope: !5157)
!5442 = !DILocation(line: 486, column: 2, scope: !5157)
!5443 = !DILocation(line: 487, column: 2, scope: !5157)
!5444 = !DILocation(line: 489, column: 2, scope: !5157)
!5445 = !DILocation(line: 489, column: 14, scope: !5157)
!5446 = !DILocation(line: 490, column: 2, scope: !5157)
!5447 = !DILocation(line: 490, column: 14, scope: !5157)
!5448 = !DILocation(line: 491, column: 2, scope: !5157)
!5449 = !DILocation(line: 491, column: 14, scope: !5157)
!5450 = !DILocation(line: 493, column: 24, scope: !5157)
!5451 = !DILocation(line: 493, column: 2, scope: !5157)
!5452 = !DILocation(line: 494, column: 2, scope: !5157)
!5453 = !DILocation(line: 497, column: 24, scope: !5157)
!5454 = !DILocation(line: 497, column: 2, scope: !5157)
!5455 = !DILocation(line: 498, column: 2, scope: !5157)
!5456 = !DILocation(line: 501, column: 2, scope: !5157)
!5457 = !DILocation(line: 501, column: 14, scope: !5157)
!5458 = !DILocation(line: 502, column: 24, scope: !5157)
!5459 = !DILocation(line: 502, column: 2, scope: !5157)
!5460 = !DILocation(line: 505, column: 24, scope: !5157)
!5461 = !DILocation(line: 505, column: 2, scope: !5157)
!5462 = !DILocation(line: 507, column: 17, scope: !5157)
!5463 = !DILocation(line: 507, column: 23, scope: !5157)
!5464 = !DILocation(line: 507, column: 33, scope: !5157)
!5465 = !DILocation(line: 507, column: 2, scope: !5157)
!5466 = !DILocation(line: 508, column: 25, scope: !5157)
!5467 = !DILocation(line: 508, column: 2, scope: !5157)
!5468 = !DILocation(line: 510, column: 2, scope: !5157)
!5469 = distinct !DISubprogram(name: "i2c_adapter_id", scope: !4274, file: !4274, line: 900, type: !4356, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5470 = !DILocalVariable(name: "adap", arg: 1, scope: !5469, file: !4274, line: 900, type: !4272)
!5471 = !DILocation(line: 900, column: 54, scope: !5469)
!5472 = !DILocation(line: 902, column: 9, scope: !5469)
!5473 = !DILocation(line: 902, column: 15, scope: !5469)
!5474 = !DILocation(line: 902, column: 2, scope: !5469)
!5475 = distinct !DISubprogram(name: "i2c_lock_bus", scope: !4274, file: !4274, line: 763, type: !4323, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5476 = !DILocalVariable(name: "adapter", arg: 1, scope: !5475, file: !4274, line: 763, type: !4272)
!5477 = !DILocation(line: 763, column: 34, scope: !5475)
!5478 = !DILocalVariable(name: "flags", arg: 2, scope: !5475, file: !4274, line: 763, type: !5)
!5479 = !DILocation(line: 763, column: 56, scope: !5475)
!5480 = !DILocation(line: 765, column: 2, scope: !5475)
!5481 = !DILocation(line: 765, column: 11, scope: !5475)
!5482 = !DILocation(line: 765, column: 21, scope: !5475)
!5483 = !DILocation(line: 765, column: 30, scope: !5475)
!5484 = !DILocation(line: 765, column: 39, scope: !5475)
!5485 = !DILocation(line: 766, column: 1, scope: !5475)
!5486 = distinct !DISubprogram(name: "i2c_unlock_bus", scope: !4274, file: !4274, line: 789, type: !4323, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5487 = !DILocalVariable(name: "adapter", arg: 1, scope: !5486, file: !4274, line: 789, type: !4272)
!5488 = !DILocation(line: 789, column: 36, scope: !5486)
!5489 = !DILocalVariable(name: "flags", arg: 2, scope: !5486, file: !4274, line: 789, type: !5)
!5490 = !DILocation(line: 789, column: 58, scope: !5486)
!5491 = !DILocation(line: 791, column: 2, scope: !5486)
!5492 = !DILocation(line: 791, column: 11, scope: !5486)
!5493 = !DILocation(line: 791, column: 21, scope: !5486)
!5494 = !DILocation(line: 791, column: 32, scope: !5486)
!5495 = !DILocation(line: 791, column: 41, scope: !5486)
!5496 = !DILocation(line: 792, column: 1, scope: !5486)
!5497 = distinct !DISubprogram(name: "tda18271_set_standby_mode", scope: !1, file: !1, line: 531, type: !5498, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!339, !340, !339, !339, !339}
!5500 = !DILocalVariable(name: "fe", arg: 1, scope: !5497, file: !1, line: 531, type: !340)
!5501 = !DILocation(line: 531, column: 52, scope: !5497)
!5502 = !DILocalVariable(name: "sm", arg: 2, scope: !5497, file: !1, line: 532, type: !339)
!5503 = !DILocation(line: 532, column: 14, scope: !5497)
!5504 = !DILocalVariable(name: "sm_lt", arg: 3, scope: !5497, file: !1, line: 532, type: !339)
!5505 = !DILocation(line: 532, column: 22, scope: !5497)
!5506 = !DILocalVariable(name: "sm_xt", arg: 4, scope: !5497, file: !1, line: 532, type: !339)
!5507 = !DILocation(line: 532, column: 33, scope: !5497)
!5508 = !DILocalVariable(name: "priv", scope: !5497, file: !1, line: 534, type: !4258)
!5509 = !DILocation(line: 534, column: 24, scope: !5497)
!5510 = !DILocation(line: 534, column: 31, scope: !5497)
!5511 = !DILocation(line: 534, column: 35, scope: !5497)
!5512 = !DILocalVariable(name: "regs", scope: !5497, file: !1, line: 535, type: !4458)
!5513 = !DILocation(line: 535, column: 17, scope: !5497)
!5514 = !DILocation(line: 535, column: 24, scope: !5497)
!5515 = !DILocation(line: 535, column: 30, scope: !5497)
!5516 = !DILocation(line: 537, column: 6, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5497, file: !1, line: 537, column: 6)
!5518 = !DILocation(line: 537, column: 21, scope: !5517)
!5519 = !DILocation(line: 537, column: 6, scope: !5497)
!5520 = !DILocation(line: 538, column: 3, scope: !5517)
!5521 = !DILocation(line: 538, column: 3, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !1, line: 538, column: 3)
!5523 = distinct !DILexicalBlock(scope: !5517, file: !1, line: 538, column: 3)
!5524 = !DILocation(line: 538, column: 3, scope: !5523)
!5525 = !DILocation(line: 540, column: 2, scope: !5497)
!5526 = !DILocation(line: 540, column: 15, scope: !5497)
!5527 = !DILocation(line: 541, column: 19, scope: !5497)
!5528 = !DILocation(line: 542, column: 5, scope: !5497)
!5529 = !DILocation(line: 541, column: 41, scope: !5497)
!5530 = !DILocation(line: 543, column: 5, scope: !5497)
!5531 = !DILocation(line: 542, column: 27, scope: !5497)
!5532 = !DILocation(line: 541, column: 2, scope: !5497)
!5533 = !DILocation(line: 541, column: 15, scope: !5497)
!5534 = !DILocation(line: 545, column: 29, scope: !5497)
!5535 = !DILocation(line: 545, column: 9, scope: !5497)
!5536 = !DILocation(line: 545, column: 2, scope: !5497)
!5537 = distinct !DISubprogram(name: "tda18271_calc_main_pll", scope: !1, file: !1, line: 550, type: !641, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5538 = !DILocalVariable(name: "fe", arg: 1, scope: !5537, file: !1, line: 550, type: !340)
!5539 = !DILocation(line: 550, column: 49, scope: !5537)
!5540 = !DILocalVariable(name: "freq", arg: 2, scope: !5537, file: !1, line: 550, type: !370)
!5541 = !DILocation(line: 550, column: 57, scope: !5537)
!5542 = !DILocalVariable(name: "priv", scope: !5537, file: !1, line: 553, type: !4258)
!5543 = !DILocation(line: 553, column: 24, scope: !5537)
!5544 = !DILocation(line: 553, column: 31, scope: !5537)
!5545 = !DILocation(line: 553, column: 35, scope: !5537)
!5546 = !DILocalVariable(name: "regs", scope: !5537, file: !1, line: 554, type: !4458)
!5547 = !DILocation(line: 554, column: 17, scope: !5537)
!5548 = !DILocation(line: 554, column: 24, scope: !5537)
!5549 = !DILocation(line: 554, column: 30, scope: !5537)
!5550 = !DILocalVariable(name: "d", scope: !5537, file: !1, line: 555, type: !383)
!5551 = !DILocation(line: 555, column: 5, scope: !5537)
!5552 = !DILocalVariable(name: "pd", scope: !5537, file: !1, line: 555, type: !383)
!5553 = !DILocation(line: 555, column: 8, scope: !5537)
!5554 = !DILocalVariable(name: "div", scope: !5537, file: !1, line: 556, type: !370)
!5555 = !DILocation(line: 556, column: 6, scope: !5537)
!5556 = !DILocalVariable(name: "ret", scope: !5537, file: !1, line: 558, type: !339)
!5557 = !DILocation(line: 558, column: 6, scope: !5537)
!5558 = !DILocation(line: 558, column: 36, scope: !5537)
!5559 = !DILocation(line: 558, column: 12, scope: !5537)
!5560 = !DILocalVariable(name: "__ret", scope: !5561, file: !1, line: 559, type: !339)
!5561 = distinct !DILexicalBlock(scope: !5562, file: !1, line: 559, column: 6)
!5562 = distinct !DILexicalBlock(scope: !5537, file: !1, line: 559, column: 6)
!5563 = !DILocation(line: 559, column: 6, scope: !5561)
!5564 = !DILocation(line: 559, column: 6, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5561, file: !1, line: 559, column: 6)
!5566 = !DILocation(line: 559, column: 6, scope: !5562)
!5567 = !DILocation(line: 559, column: 6, scope: !5537)
!5568 = !DILocation(line: 560, column: 3, scope: !5562)
!5569 = !DILocation(line: 562, column: 26, scope: !5537)
!5570 = !DILocation(line: 562, column: 24, scope: !5537)
!5571 = !DILocation(line: 562, column: 18, scope: !5537)
!5572 = !DILocation(line: 562, column: 2, scope: !5537)
!5573 = !DILocation(line: 562, column: 16, scope: !5537)
!5574 = !DILocation(line: 564, column: 11, scope: !5537)
!5575 = !DILocation(line: 564, column: 16, scope: !5537)
!5576 = !DILocation(line: 564, column: 21, scope: !5537)
!5577 = !DILocation(line: 564, column: 13, scope: !5537)
!5578 = !DILocation(line: 564, column: 30, scope: !5537)
!5579 = !DILocation(line: 564, column: 36, scope: !5537)
!5580 = !DILocation(line: 564, column: 6, scope: !5537)
!5581 = !DILocation(line: 566, column: 26, scope: !5537)
!5582 = !DILocation(line: 566, column: 30, scope: !5537)
!5583 = !DILocation(line: 566, column: 23, scope: !5537)
!5584 = !DILocation(line: 566, column: 18, scope: !5537)
!5585 = !DILocation(line: 566, column: 2, scope: !5537)
!5586 = !DILocation(line: 566, column: 16, scope: !5537)
!5587 = !DILocation(line: 567, column: 26, scope: !5537)
!5588 = !DILocation(line: 567, column: 30, scope: !5537)
!5589 = !DILocation(line: 567, column: 23, scope: !5537)
!5590 = !DILocation(line: 567, column: 18, scope: !5537)
!5591 = !DILocation(line: 567, column: 2, scope: !5537)
!5592 = !DILocation(line: 567, column: 16, scope: !5537)
!5593 = !DILocation(line: 568, column: 25, scope: !5537)
!5594 = !DILocation(line: 568, column: 23, scope: !5537)
!5595 = !DILocation(line: 568, column: 18, scope: !5537)
!5596 = !DILocation(line: 568, column: 2, scope: !5537)
!5597 = !DILocation(line: 568, column: 16, scope: !5537)
!5598 = !DILabel(scope: !5537, name: "fail", file: !1, line: 569)
!5599 = !DILocation(line: 569, column: 1, scope: !5537)
!5600 = !DILocation(line: 570, column: 9, scope: !5537)
!5601 = !DILocation(line: 570, column: 2, scope: !5537)
!5602 = distinct !DISubprogram(name: "tda18271_calc_cal_pll", scope: !1, file: !1, line: 573, type: !641, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5603 = !DILocalVariable(name: "fe", arg: 1, scope: !5602, file: !1, line: 573, type: !340)
!5604 = !DILocation(line: 573, column: 48, scope: !5602)
!5605 = !DILocalVariable(name: "freq", arg: 2, scope: !5602, file: !1, line: 573, type: !370)
!5606 = !DILocation(line: 573, column: 56, scope: !5602)
!5607 = !DILocalVariable(name: "priv", scope: !5602, file: !1, line: 576, type: !4258)
!5608 = !DILocation(line: 576, column: 24, scope: !5602)
!5609 = !DILocation(line: 576, column: 31, scope: !5602)
!5610 = !DILocation(line: 576, column: 35, scope: !5602)
!5611 = !DILocalVariable(name: "regs", scope: !5602, file: !1, line: 577, type: !4458)
!5612 = !DILocation(line: 577, column: 17, scope: !5602)
!5613 = !DILocation(line: 577, column: 24, scope: !5602)
!5614 = !DILocation(line: 577, column: 30, scope: !5602)
!5615 = !DILocalVariable(name: "d", scope: !5602, file: !1, line: 578, type: !383)
!5616 = !DILocation(line: 578, column: 5, scope: !5602)
!5617 = !DILocalVariable(name: "pd", scope: !5602, file: !1, line: 578, type: !383)
!5618 = !DILocation(line: 578, column: 8, scope: !5602)
!5619 = !DILocalVariable(name: "div", scope: !5602, file: !1, line: 579, type: !370)
!5620 = !DILocation(line: 579, column: 6, scope: !5602)
!5621 = !DILocalVariable(name: "ret", scope: !5602, file: !1, line: 581, type: !339)
!5622 = !DILocation(line: 581, column: 6, scope: !5602)
!5623 = !DILocation(line: 581, column: 36, scope: !5602)
!5624 = !DILocation(line: 581, column: 12, scope: !5602)
!5625 = !DILocalVariable(name: "__ret", scope: !5626, file: !1, line: 582, type: !339)
!5626 = distinct !DILexicalBlock(scope: !5627, file: !1, line: 582, column: 6)
!5627 = distinct !DILexicalBlock(scope: !5602, file: !1, line: 582, column: 6)
!5628 = !DILocation(line: 582, column: 6, scope: !5626)
!5629 = !DILocation(line: 582, column: 6, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5626, file: !1, line: 582, column: 6)
!5631 = !DILocation(line: 582, column: 6, scope: !5627)
!5632 = !DILocation(line: 582, column: 6, scope: !5602)
!5633 = !DILocation(line: 583, column: 3, scope: !5627)
!5634 = !DILocation(line: 585, column: 18, scope: !5602)
!5635 = !DILocation(line: 585, column: 2, scope: !5602)
!5636 = !DILocation(line: 585, column: 16, scope: !5602)
!5637 = !DILocation(line: 587, column: 11, scope: !5602)
!5638 = !DILocation(line: 587, column: 16, scope: !5602)
!5639 = !DILocation(line: 587, column: 21, scope: !5602)
!5640 = !DILocation(line: 587, column: 13, scope: !5602)
!5641 = !DILocation(line: 587, column: 30, scope: !5602)
!5642 = !DILocation(line: 587, column: 36, scope: !5602)
!5643 = !DILocation(line: 587, column: 6, scope: !5602)
!5644 = !DILocation(line: 589, column: 26, scope: !5602)
!5645 = !DILocation(line: 589, column: 30, scope: !5602)
!5646 = !DILocation(line: 589, column: 23, scope: !5602)
!5647 = !DILocation(line: 589, column: 18, scope: !5602)
!5648 = !DILocation(line: 589, column: 2, scope: !5602)
!5649 = !DILocation(line: 589, column: 16, scope: !5602)
!5650 = !DILocation(line: 590, column: 26, scope: !5602)
!5651 = !DILocation(line: 590, column: 30, scope: !5602)
!5652 = !DILocation(line: 590, column: 23, scope: !5602)
!5653 = !DILocation(line: 590, column: 18, scope: !5602)
!5654 = !DILocation(line: 590, column: 2, scope: !5602)
!5655 = !DILocation(line: 590, column: 16, scope: !5602)
!5656 = !DILocation(line: 591, column: 25, scope: !5602)
!5657 = !DILocation(line: 591, column: 23, scope: !5602)
!5658 = !DILocation(line: 591, column: 18, scope: !5602)
!5659 = !DILocation(line: 591, column: 2, scope: !5602)
!5660 = !DILocation(line: 591, column: 16, scope: !5602)
!5661 = !DILabel(scope: !5602, name: "fail", file: !1, line: 592)
!5662 = !DILocation(line: 592, column: 1, scope: !5602)
!5663 = !DILocation(line: 593, column: 9, scope: !5602)
!5664 = !DILocation(line: 593, column: 2, scope: !5602)
!5665 = distinct !DISubprogram(name: "tda18271_calc_bp_filter", scope: !1, file: !1, line: 598, type: !517, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5666 = !DILocalVariable(name: "fe", arg: 1, scope: !5665, file: !1, line: 598, type: !340)
!5667 = !DILocation(line: 598, column: 50, scope: !5665)
!5668 = !DILocalVariable(name: "freq", arg: 2, scope: !5665, file: !1, line: 598, type: !519)
!5669 = !DILocation(line: 598, column: 59, scope: !5665)
!5670 = !DILocalVariable(name: "priv", scope: !5665, file: !1, line: 601, type: !4258)
!5671 = !DILocation(line: 601, column: 24, scope: !5665)
!5672 = !DILocation(line: 601, column: 31, scope: !5665)
!5673 = !DILocation(line: 601, column: 35, scope: !5665)
!5674 = !DILocalVariable(name: "regs", scope: !5665, file: !1, line: 602, type: !4458)
!5675 = !DILocation(line: 602, column: 17, scope: !5665)
!5676 = !DILocation(line: 602, column: 24, scope: !5665)
!5677 = !DILocation(line: 602, column: 30, scope: !5665)
!5678 = !DILocalVariable(name: "val", scope: !5665, file: !1, line: 603, type: !383)
!5679 = !DILocation(line: 603, column: 5, scope: !5665)
!5680 = !DILocalVariable(name: "ret", scope: !5665, file: !1, line: 605, type: !339)
!5681 = !DILocation(line: 605, column: 6, scope: !5665)
!5682 = !DILocation(line: 605, column: 32, scope: !5665)
!5683 = !DILocation(line: 605, column: 47, scope: !5665)
!5684 = !DILocation(line: 605, column: 12, scope: !5665)
!5685 = !DILocalVariable(name: "__ret", scope: !5686, file: !1, line: 606, type: !339)
!5686 = distinct !DILexicalBlock(scope: !5687, file: !1, line: 606, column: 6)
!5687 = distinct !DILexicalBlock(scope: !5665, file: !1, line: 606, column: 6)
!5688 = !DILocation(line: 606, column: 6, scope: !5686)
!5689 = !DILocation(line: 606, column: 6, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5686, file: !1, line: 606, column: 6)
!5691 = !DILocation(line: 606, column: 6, scope: !5687)
!5692 = !DILocation(line: 606, column: 6, scope: !5665)
!5693 = !DILocation(line: 607, column: 3, scope: !5687)
!5694 = !DILocation(line: 609, column: 2, scope: !5665)
!5695 = !DILocation(line: 609, column: 15, scope: !5665)
!5696 = !DILocation(line: 610, column: 26, scope: !5665)
!5697 = !DILocation(line: 610, column: 24, scope: !5665)
!5698 = !DILocation(line: 610, column: 2, scope: !5665)
!5699 = !DILocation(line: 610, column: 15, scope: !5665)
!5700 = !DILabel(scope: !5665, name: "fail", file: !1, line: 611)
!5701 = !DILocation(line: 611, column: 1, scope: !5665)
!5702 = !DILocation(line: 612, column: 9, scope: !5665)
!5703 = !DILocation(line: 612, column: 2, scope: !5665)
!5704 = distinct !DISubprogram(name: "tda18271_calc_km", scope: !1, file: !1, line: 615, type: !517, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5705 = !DILocalVariable(name: "fe", arg: 1, scope: !5704, file: !1, line: 615, type: !340)
!5706 = !DILocation(line: 615, column: 43, scope: !5704)
!5707 = !DILocalVariable(name: "freq", arg: 2, scope: !5704, file: !1, line: 615, type: !519)
!5708 = !DILocation(line: 615, column: 52, scope: !5704)
!5709 = !DILocalVariable(name: "priv", scope: !5704, file: !1, line: 618, type: !4258)
!5710 = !DILocation(line: 618, column: 24, scope: !5704)
!5711 = !DILocation(line: 618, column: 31, scope: !5704)
!5712 = !DILocation(line: 618, column: 35, scope: !5704)
!5713 = !DILocalVariable(name: "regs", scope: !5704, file: !1, line: 619, type: !4458)
!5714 = !DILocation(line: 619, column: 17, scope: !5704)
!5715 = !DILocation(line: 619, column: 24, scope: !5704)
!5716 = !DILocation(line: 619, column: 30, scope: !5704)
!5717 = !DILocalVariable(name: "val", scope: !5704, file: !1, line: 620, type: !383)
!5718 = !DILocation(line: 620, column: 5, scope: !5704)
!5719 = !DILocalVariable(name: "ret", scope: !5704, file: !1, line: 622, type: !339)
!5720 = !DILocation(line: 622, column: 6, scope: !5704)
!5721 = !DILocation(line: 622, column: 32, scope: !5704)
!5722 = !DILocation(line: 622, column: 49, scope: !5704)
!5723 = !DILocation(line: 622, column: 12, scope: !5704)
!5724 = !DILocalVariable(name: "__ret", scope: !5725, file: !1, line: 623, type: !339)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !1, line: 623, column: 6)
!5726 = distinct !DILexicalBlock(scope: !5704, file: !1, line: 623, column: 6)
!5727 = !DILocation(line: 623, column: 6, scope: !5725)
!5728 = !DILocation(line: 623, column: 6, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5725, file: !1, line: 623, column: 6)
!5730 = !DILocation(line: 623, column: 6, scope: !5726)
!5731 = !DILocation(line: 623, column: 6, scope: !5704)
!5732 = !DILocation(line: 624, column: 3, scope: !5726)
!5733 = !DILocation(line: 626, column: 2, scope: !5704)
!5734 = !DILocation(line: 626, column: 15, scope: !5704)
!5735 = !DILocation(line: 627, column: 26, scope: !5704)
!5736 = !DILocation(line: 627, column: 24, scope: !5704)
!5737 = !DILocation(line: 627, column: 2, scope: !5704)
!5738 = !DILocation(line: 627, column: 15, scope: !5704)
!5739 = !DILabel(scope: !5704, name: "fail", file: !1, line: 628)
!5740 = !DILocation(line: 628, column: 1, scope: !5704)
!5741 = !DILocation(line: 629, column: 9, scope: !5704)
!5742 = !DILocation(line: 629, column: 2, scope: !5704)
!5743 = distinct !DISubprogram(name: "tda18271_calc_rf_band", scope: !1, file: !1, line: 632, type: !517, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5744 = !DILocalVariable(name: "fe", arg: 1, scope: !5743, file: !1, line: 632, type: !340)
!5745 = !DILocation(line: 632, column: 48, scope: !5743)
!5746 = !DILocalVariable(name: "freq", arg: 2, scope: !5743, file: !1, line: 632, type: !519)
!5747 = !DILocation(line: 632, column: 57, scope: !5743)
!5748 = !DILocalVariable(name: "priv", scope: !5743, file: !1, line: 635, type: !4258)
!5749 = !DILocation(line: 635, column: 24, scope: !5743)
!5750 = !DILocation(line: 635, column: 31, scope: !5743)
!5751 = !DILocation(line: 635, column: 35, scope: !5743)
!5752 = !DILocalVariable(name: "regs", scope: !5743, file: !1, line: 636, type: !4458)
!5753 = !DILocation(line: 636, column: 17, scope: !5743)
!5754 = !DILocation(line: 636, column: 24, scope: !5743)
!5755 = !DILocation(line: 636, column: 30, scope: !5743)
!5756 = !DILocalVariable(name: "val", scope: !5743, file: !1, line: 637, type: !383)
!5757 = !DILocation(line: 637, column: 5, scope: !5743)
!5758 = !DILocalVariable(name: "ret", scope: !5743, file: !1, line: 639, type: !339)
!5759 = !DILocation(line: 639, column: 6, scope: !5743)
!5760 = !DILocation(line: 639, column: 32, scope: !5743)
!5761 = !DILocation(line: 639, column: 45, scope: !5743)
!5762 = !DILocation(line: 639, column: 12, scope: !5743)
!5763 = !DILocalVariable(name: "__ret", scope: !5764, file: !1, line: 640, type: !339)
!5764 = distinct !DILexicalBlock(scope: !5765, file: !1, line: 640, column: 6)
!5765 = distinct !DILexicalBlock(scope: !5743, file: !1, line: 640, column: 6)
!5766 = !DILocation(line: 640, column: 6, scope: !5764)
!5767 = !DILocation(line: 640, column: 6, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5764, file: !1, line: 640, column: 6)
!5769 = !DILocation(line: 640, column: 6, scope: !5765)
!5770 = !DILocation(line: 640, column: 6, scope: !5743)
!5771 = !DILocation(line: 641, column: 3, scope: !5765)
!5772 = !DILocation(line: 643, column: 2, scope: !5743)
!5773 = !DILocation(line: 643, column: 15, scope: !5743)
!5774 = !DILocation(line: 644, column: 27, scope: !5743)
!5775 = !DILocation(line: 644, column: 31, scope: !5743)
!5776 = !DILocation(line: 644, column: 24, scope: !5743)
!5777 = !DILocation(line: 644, column: 2, scope: !5743)
!5778 = !DILocation(line: 644, column: 15, scope: !5743)
!5779 = !DILabel(scope: !5743, name: "fail", file: !1, line: 645)
!5780 = !DILocation(line: 645, column: 1, scope: !5743)
!5781 = !DILocation(line: 646, column: 9, scope: !5743)
!5782 = !DILocation(line: 646, column: 2, scope: !5743)
!5783 = distinct !DISubprogram(name: "tda18271_calc_gain_taper", scope: !1, file: !1, line: 649, type: !517, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5784 = !DILocalVariable(name: "fe", arg: 1, scope: !5783, file: !1, line: 649, type: !340)
!5785 = !DILocation(line: 649, column: 51, scope: !5783)
!5786 = !DILocalVariable(name: "freq", arg: 2, scope: !5783, file: !1, line: 649, type: !519)
!5787 = !DILocation(line: 649, column: 60, scope: !5783)
!5788 = !DILocalVariable(name: "priv", scope: !5783, file: !1, line: 652, type: !4258)
!5789 = !DILocation(line: 652, column: 24, scope: !5783)
!5790 = !DILocation(line: 652, column: 31, scope: !5783)
!5791 = !DILocation(line: 652, column: 35, scope: !5783)
!5792 = !DILocalVariable(name: "regs", scope: !5783, file: !1, line: 653, type: !4458)
!5793 = !DILocation(line: 653, column: 17, scope: !5783)
!5794 = !DILocation(line: 653, column: 24, scope: !5783)
!5795 = !DILocation(line: 653, column: 30, scope: !5783)
!5796 = !DILocalVariable(name: "val", scope: !5783, file: !1, line: 654, type: !383)
!5797 = !DILocation(line: 654, column: 5, scope: !5783)
!5798 = !DILocalVariable(name: "ret", scope: !5783, file: !1, line: 656, type: !339)
!5799 = !DILocation(line: 656, column: 6, scope: !5783)
!5800 = !DILocation(line: 656, column: 32, scope: !5783)
!5801 = !DILocation(line: 656, column: 48, scope: !5783)
!5802 = !DILocation(line: 656, column: 12, scope: !5783)
!5803 = !DILocalVariable(name: "__ret", scope: !5804, file: !1, line: 657, type: !339)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !1, line: 657, column: 6)
!5805 = distinct !DILexicalBlock(scope: !5783, file: !1, line: 657, column: 6)
!5806 = !DILocation(line: 657, column: 6, scope: !5804)
!5807 = !DILocation(line: 657, column: 6, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5804, file: !1, line: 657, column: 6)
!5809 = !DILocation(line: 657, column: 6, scope: !5805)
!5810 = !DILocation(line: 657, column: 6, scope: !5783)
!5811 = !DILocation(line: 658, column: 3, scope: !5805)
!5812 = !DILocation(line: 660, column: 2, scope: !5783)
!5813 = !DILocation(line: 660, column: 15, scope: !5783)
!5814 = !DILocation(line: 661, column: 26, scope: !5783)
!5815 = !DILocation(line: 661, column: 24, scope: !5783)
!5816 = !DILocation(line: 661, column: 2, scope: !5783)
!5817 = !DILocation(line: 661, column: 15, scope: !5783)
!5818 = !DILabel(scope: !5783, name: "fail", file: !1, line: 662)
!5819 = !DILocation(line: 662, column: 1, scope: !5783)
!5820 = !DILocation(line: 663, column: 9, scope: !5783)
!5821 = !DILocation(line: 663, column: 2, scope: !5783)
!5822 = distinct !DISubprogram(name: "tda18271_calc_ir_measure", scope: !1, file: !1, line: 666, type: !517, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5823 = !DILocalVariable(name: "fe", arg: 1, scope: !5822, file: !1, line: 666, type: !340)
!5824 = !DILocation(line: 666, column: 51, scope: !5822)
!5825 = !DILocalVariable(name: "freq", arg: 2, scope: !5822, file: !1, line: 666, type: !519)
!5826 = !DILocation(line: 666, column: 60, scope: !5822)
!5827 = !DILocalVariable(name: "priv", scope: !5822, file: !1, line: 669, type: !4258)
!5828 = !DILocation(line: 669, column: 24, scope: !5822)
!5829 = !DILocation(line: 669, column: 31, scope: !5822)
!5830 = !DILocation(line: 669, column: 35, scope: !5822)
!5831 = !DILocalVariable(name: "regs", scope: !5822, file: !1, line: 670, type: !4458)
!5832 = !DILocation(line: 670, column: 17, scope: !5822)
!5833 = !DILocation(line: 670, column: 24, scope: !5822)
!5834 = !DILocation(line: 670, column: 30, scope: !5822)
!5835 = !DILocalVariable(name: "val", scope: !5822, file: !1, line: 671, type: !383)
!5836 = !DILocation(line: 671, column: 5, scope: !5822)
!5837 = !DILocalVariable(name: "ret", scope: !5822, file: !1, line: 673, type: !339)
!5838 = !DILocation(line: 673, column: 6, scope: !5822)
!5839 = !DILocation(line: 673, column: 32, scope: !5822)
!5840 = !DILocation(line: 673, column: 48, scope: !5822)
!5841 = !DILocation(line: 673, column: 12, scope: !5822)
!5842 = !DILocalVariable(name: "__ret", scope: !5843, file: !1, line: 674, type: !339)
!5843 = distinct !DILexicalBlock(scope: !5844, file: !1, line: 674, column: 6)
!5844 = distinct !DILexicalBlock(scope: !5822, file: !1, line: 674, column: 6)
!5845 = !DILocation(line: 674, column: 6, scope: !5843)
!5846 = !DILocation(line: 674, column: 6, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !1, line: 674, column: 6)
!5848 = !DILocation(line: 674, column: 6, scope: !5844)
!5849 = !DILocation(line: 674, column: 6, scope: !5822)
!5850 = !DILocation(line: 675, column: 3, scope: !5844)
!5851 = !DILocation(line: 677, column: 2, scope: !5822)
!5852 = !DILocation(line: 677, column: 14, scope: !5822)
!5853 = !DILocation(line: 678, column: 25, scope: !5822)
!5854 = !DILocation(line: 678, column: 23, scope: !5822)
!5855 = !DILocation(line: 678, column: 2, scope: !5822)
!5856 = !DILocation(line: 678, column: 14, scope: !5822)
!5857 = !DILabel(scope: !5822, name: "fail", file: !1, line: 679)
!5858 = !DILocation(line: 679, column: 1, scope: !5822)
!5859 = !DILocation(line: 680, column: 9, scope: !5822)
!5860 = !DILocation(line: 680, column: 2, scope: !5822)
!5861 = distinct !DISubprogram(name: "tda18271_calc_rf_cal", scope: !1, file: !1, line: 683, type: !517, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !713)
!5862 = !DILocalVariable(name: "fe", arg: 1, scope: !5861, file: !1, line: 683, type: !340)
!5863 = !DILocation(line: 683, column: 47, scope: !5861)
!5864 = !DILocalVariable(name: "freq", arg: 2, scope: !5861, file: !1, line: 683, type: !519)
!5865 = !DILocation(line: 683, column: 56, scope: !5861)
!5866 = !DILocalVariable(name: "priv", scope: !5861, file: !1, line: 686, type: !4258)
!5867 = !DILocation(line: 686, column: 24, scope: !5861)
!5868 = !DILocation(line: 686, column: 31, scope: !5861)
!5869 = !DILocation(line: 686, column: 35, scope: !5861)
!5870 = !DILocalVariable(name: "regs", scope: !5861, file: !1, line: 687, type: !4458)
!5871 = !DILocation(line: 687, column: 17, scope: !5861)
!5872 = !DILocation(line: 687, column: 24, scope: !5861)
!5873 = !DILocation(line: 687, column: 30, scope: !5861)
!5874 = !DILocalVariable(name: "val", scope: !5861, file: !1, line: 688, type: !383)
!5875 = !DILocation(line: 688, column: 5, scope: !5861)
!5876 = !DILocalVariable(name: "ret", scope: !5861, file: !1, line: 690, type: !339)
!5877 = !DILocation(line: 690, column: 6, scope: !5861)
!5878 = !DILocation(line: 690, column: 32, scope: !5861)
!5879 = !DILocation(line: 690, column: 44, scope: !5861)
!5880 = !DILocation(line: 690, column: 12, scope: !5861)
!5881 = !DILocation(line: 697, column: 6, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5861, file: !1, line: 697, column: 6)
!5883 = !DILocation(line: 697, column: 10, scope: !5882)
!5884 = !DILocation(line: 697, column: 6, scope: !5861)
!5885 = !DILocation(line: 698, column: 3, scope: !5882)
!5886 = !DILocation(line: 700, column: 17, scope: !5861)
!5887 = !DILocation(line: 700, column: 2, scope: !5861)
!5888 = !DILocation(line: 700, column: 15, scope: !5861)
!5889 = !DILabel(scope: !5861, name: "fail", file: !1, line: 701)
!5890 = !DILocation(line: 701, column: 1, scope: !5861)
!5891 = !DILocation(line: 702, column: 9, scope: !5861)
!5892 = !DILocation(line: 702, column: 2, scope: !5861)
