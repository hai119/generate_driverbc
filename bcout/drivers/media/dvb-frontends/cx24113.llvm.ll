; ModuleID = '../bcout/drivers/media/dvb-frontends/cx24113.llvm.bc'
source_filename = "drivers/media/dvb-frontends/cx24113.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.66 }
%struct.module = type opaque
%union.anon.66 = type { i8* }
%struct.kmem_cache = type opaque
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], {}*, {}*, {}*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, {}*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, {}*, {}*, {}*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
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
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cx24113_state = type { %struct.i2c_adapter*, %struct.cx24113_config*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i8, i32, i8, i8 }
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
%struct.cx24113_config = type { i8, i32 }

@debug = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"\017CX24113: %s: \00", align 1
@__func__.cx24113_agc_callback = private unnamed_addr constant [21 x i8] c"cx24113_agc_callback\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"signal strength: %d\0A\00", align 1
@cx24113_agc_table = internal global [2 x [10 x i8]] [[10 x i8] c"\CA\D7\DD\E2\E7\EB\F0\F6\FA\FE", [10 x i8] c"\D9\DD\E2\E7\ED\F1\F5\FB\01\09"], align 16, !dbg !405
@.str.2 = private unnamed_addr constant [36 x i8] c"\016CX24113: trying to detect myself\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\016CX24113: CX24113 not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\016CX24113: detected CX24113 variant\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\016CX24113: successfully detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\013CX24113: unsupported device id: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\016CX24113: version: %x\0A\00", align 1
@__param_str_debug = internal constant [14 x i8] c"cx24113.debug\00", align 1, !dbg !4300
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !309
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"cx24113.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !375
@__UNIQUE_ID_debug221 = internal constant [60 x i8] c"cx24113.parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1, !dbg !380
@__UNIQUE_ID_author222 = internal constant [50 x i8] c"cx24113.author=Patrick Boettcher <pb@linuxtv.org>\00", section ".modinfo", align 1, !dbg !385
@__UNIQUE_ID_description223 = internal constant [77 x i8] c"cx24113.description=DVB Frontend module for Conexant CX24113/CX24128hardware\00", section ".modinfo", align 1, !dbg !390
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"cx24113.file=drivers/media/dvb-frontends/cx24113\00", section ".modinfo", align 1, !dbg !395
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"cx24113.license=GPL\00", section ".modinfo", align 1, !dbg !400
@__func__.cx24113_set_gain_settings = private unnamed_addr constant [26 x i8] c"cx24113_set_gain_settings\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"power estimation: %d, thres: %d, gain_level: %d/%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"\017%s: writereg error(err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.cx24113_writereg = private unnamed_addr constant [17 x i8] c"cx24113_writereg\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\017%s: reg=0x%x (error=%d)\0A\00", align 1
@__func__.cx24113_readreg = private unnamed_addr constant [16 x i8] c"cx24113_readreg\00", align 1
@cx24113_tuner_ops = internal constant { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* } { %struct.dvb_tuner_info { [128 x i8] c"Conexant CX24113\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 0, i32 0 }, void (%struct.dvb_frontend*)* @cx24113_release, i32 (%struct.dvb_frontend*)* @cx24113_init, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @cx24113_set_params, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* null, i32 (%struct.dvb_frontend*, i8*)* null, i32 (%struct.dvb_frontend*, i32*)* @cx24113_get_frequency, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i32*)* @cx24113_get_status, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null }, align 8, !dbg !411
@__func__.cx24113_release = private unnamed_addr constant [16 x i8] c"cx24113_release\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.cx24113_set_bandwidth = private unnamed_addr constant [22 x i8] c"cx24113_set_bandwidth\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"bandwidth to be set: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"bandwidth: %d %d\0A\00", align 1
@__func__.cx24113_set_frequency = private unnamed_addr constant [22 x i8] c"cx24113_set_frequency\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"tuning to frequency: %d\0A\00", align 1
@__func__.cx24113_calc_pll_nf = private unnamed_addr constant [20 x i8] c"cx24113_calc_pll_nf\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"calculating N/F for %dHz with vcodiv %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"\013CX24113: strange frequency: N < 6\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"1 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"2 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"3 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"4 N: %d, F: %lld, R: %d\0A\00", align 1
@__func__.cx24113_get_status = private unnamed_addr constant [19 x i8] c"cx24113_get_status\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"PLL locked: %d\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_author222, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @__UNIQUE_ID_description223, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cx24113_agc_callback(%struct.dvb_frontend* %fe) #0 !dbg !4310 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24113_state*, align 8
  %s = alloca i16, align 2
  %i = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state, metadata !4313, metadata !DIExpression()), !dbg !4473
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4474
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4475
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4475
  %2 = bitcast i8* %1 to %struct.cx24113_state*, !dbg !4474
  store %struct.cx24113_state* %2, %struct.cx24113_state** %state, align 8, !dbg !4473
  call void @llvm.dbg.declare(metadata i16* %s, metadata !4476, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.declare(metadata i16* %i, metadata !4478, metadata !DIExpression()), !dbg !4479
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4480
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !4482
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 15, !dbg !4483
  %4 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %read_signal_strength, align 8, !dbg !4483
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i16*)* %4, null, !dbg !4480
  br i1 %tobool, label %if.end, label %if.then, !dbg !4484

if.then:                                          ; preds = %entry
  br label %do.end25, !dbg !4485

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4486

do.body:                                          ; preds = %do.cond, %if.end
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4487
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1, !dbg !4489
  %read_signal_strength2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 15, !dbg !4490
  %6 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %read_signal_strength2, align 8, !dbg !4490
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4491
  %call = call i32 %6(%struct.dvb_frontend* %7, i16* %s) #8, !dbg !4487
  %8 = load i16, i16* %s, align 2, !dbg !4492
  %conv = sext i16 %8 to i32, !dbg !4492
  %shr = ashr i32 %conv, 8, !dbg !4492
  %conv3 = trunc i32 %shr to i16, !dbg !4492
  store i16 %conv3, i16* %s, align 2, !dbg !4492
  br label %do.body4, !dbg !4493

do.body4:                                         ; preds = %do.body
  %9 = load i32, i32* @debug, align 4, !dbg !4494
  %tobool5 = icmp ne i32 %9, 0, !dbg !4494
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !4497

if.then6:                                         ; preds = %do.body4
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24113_agc_callback, i64 0, i64 0)) #9, !dbg !4498
  %10 = load i16, i16* %s, align 2, !dbg !4498
  %conv8 = sext i16 %10 to i32, !dbg !4498
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %conv8) #9, !dbg !4498
  br label %if.end10, !dbg !4498

if.end10:                                         ; preds = %if.then6, %do.body4
  br label %do.end, !dbg !4497

do.end:                                           ; preds = %if.end10
  store i16 0, i16* %i, align 2, !dbg !4500
  br label %for.cond, !dbg !4502

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i16, i16* %i, align 2, !dbg !4503
  %conv11 = sext i16 %11 to i64, !dbg !4503
  %cmp = icmp ult i64 %conv11, 10, !dbg !4505
  br i1 %cmp, label %for.body, label %for.end, !dbg !4506

for.body:                                         ; preds = %for.cond
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4507
  %gain_level = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %12, i32 0, i32 16, !dbg !4509
  %13 = load i8, i8* %gain_level, align 2, !dbg !4509
  %idxprom = zext i8 %13 to i64, !dbg !4510
  %arrayidx = getelementptr [2 x [10 x i8]], [2 x [10 x i8]]* @cx24113_agc_table, i64 0, i64 %idxprom, !dbg !4510
  %14 = load i16, i16* %i, align 2, !dbg !4511
  %idxprom13 = sext i16 %14 to i64, !dbg !4510
  %arrayidx14 = getelementptr [10 x i8], [10 x i8]* %arrayidx, i64 0, i64 %idxprom13, !dbg !4510
  %15 = load i8, i8* %arrayidx14, align 1, !dbg !4510
  %conv15 = sext i8 %15 to i32, !dbg !4510
  %16 = load i16, i16* %s, align 2, !dbg !4512
  %conv16 = sext i16 %16 to i32, !dbg !4512
  %cmp17 = icmp sgt i32 %conv15, %conv16, !dbg !4513
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4514

if.then19:                                        ; preds = %for.body
  br label %for.end, !dbg !4515

if.end20:                                         ; preds = %for.body
  br label %for.inc, !dbg !4512

for.inc:                                          ; preds = %if.end20
  %17 = load i16, i16* %i, align 2, !dbg !4516
  %inc = add i16 %17, 1, !dbg !4516
  store i16 %inc, i16* %i, align 2, !dbg !4516
  br label %for.cond, !dbg !4517, !llvm.loop !4518

for.end:                                          ; preds = %if.then19, %for.cond
  %18 = load i16, i16* %i, align 2, !dbg !4520
  %conv21 = sext i16 %18 to i32, !dbg !4520
  %mul = mul i32 %conv21, 5, !dbg !4521
  %sub = sub i32 -25, %mul, !dbg !4522
  %conv22 = trunc i32 %sub to i16, !dbg !4523
  store i16 %conv22, i16* %s, align 2, !dbg !4524
  br label %do.cond, !dbg !4525

do.cond:                                          ; preds = %for.end
  %19 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4526
  %20 = load i16, i16* %s, align 2, !dbg !4527
  %call23 = call i32 @cx24113_set_gain_settings(%struct.cx24113_state* %19, i16 signext %20) #8, !dbg !4528
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4525
  br i1 %tobool24, label %do.body, label %do.end25, !dbg !4525, !llvm.loop !4529

do.end25:                                         ; preds = %if.then, %do.cond
  ret void, !dbg !4531
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_set_gain_settings(%struct.cx24113_state* %state, i16 signext %power_estimation) #0 !dbg !4532 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24113_state*, align 8
  %power_estimation.addr = alloca i16, align 2
  %ampout = alloca i8, align 1
  %vga = alloca i8, align 1
  %rfvga = alloca i8, align 1
  %gain_level = alloca i8, align 1
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !4535, metadata !DIExpression()), !dbg !4536
  store i16 %power_estimation, i16* %power_estimation.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %power_estimation.addr, metadata !4537, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.declare(metadata i8* %ampout, metadata !4539, metadata !DIExpression()), !dbg !4540
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4541
  %call = call i32 @cx24113_readreg(%struct.cx24113_state* %0, i8 zeroext 29) #8, !dbg !4542
  %and = and i32 %call, 240, !dbg !4543
  %conv = trunc i32 %and to i8, !dbg !4542
  store i8 %conv, i8* %ampout, align 1, !dbg !4540
  call void @llvm.dbg.declare(metadata i8* %vga, metadata !4544, metadata !DIExpression()), !dbg !4545
  %1 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4546
  %call1 = call i32 @cx24113_readreg(%struct.cx24113_state* %1, i8 zeroext 31) #8, !dbg !4547
  %and2 = and i32 %call1, 63, !dbg !4548
  %conv3 = trunc i32 %and2 to i8, !dbg !4547
  store i8 %conv3, i8* %vga, align 1, !dbg !4545
  call void @llvm.dbg.declare(metadata i8* %rfvga, metadata !4549, metadata !DIExpression()), !dbg !4550
  %2 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4551
  %call4 = call i32 @cx24113_readreg(%struct.cx24113_state* %2, i8 zeroext 32) #8, !dbg !4552
  %and5 = and i32 %call4, 243, !dbg !4553
  %conv6 = trunc i32 %and5 to i8, !dbg !4552
  store i8 %conv6, i8* %rfvga, align 1, !dbg !4550
  call void @llvm.dbg.declare(metadata i8* %gain_level, metadata !4554, metadata !DIExpression()), !dbg !4555
  %3 = load i16, i16* %power_estimation.addr, align 2, !dbg !4556
  %conv7 = sext i16 %3 to i32, !dbg !4556
  %4 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4557
  %tuner_gain_thres = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %4, i32 0, i32 15, !dbg !4558
  %5 = load i16, i16* %tuner_gain_thres, align 8, !dbg !4558
  %conv8 = sext i16 %5 to i32, !dbg !4557
  %cmp = icmp sge i32 %conv7, %conv8, !dbg !4559
  %conv9 = zext i1 %cmp to i32, !dbg !4559
  %conv10 = trunc i32 %conv9 to i8, !dbg !4556
  store i8 %conv10, i8* %gain_level, align 1, !dbg !4555
  br label %do.body, !dbg !4560

do.body:                                          ; preds = %entry
  %6 = load i32, i32* @debug, align 4, !dbg !4561
  %tobool = icmp ne i32 %6, 0, !dbg !4561
  br i1 %tobool, label %if.then, label %if.end, !dbg !4564

if.then:                                          ; preds = %do.body
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.cx24113_set_gain_settings, i64 0, i64 0)) #9, !dbg !4565
  %7 = load i16, i16* %power_estimation.addr, align 2, !dbg !4565
  %conv12 = sext i16 %7 to i32, !dbg !4565
  %8 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4565
  %tuner_gain_thres13 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %8, i32 0, i32 15, !dbg !4565
  %9 = load i16, i16* %tuner_gain_thres13, align 8, !dbg !4565
  %conv14 = sext i16 %9 to i32, !dbg !4565
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4565
  %gain_level15 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %10, i32 0, i32 16, !dbg !4565
  %11 = load i8, i8* %gain_level15, align 2, !dbg !4565
  %conv16 = zext i8 %11 to i32, !dbg !4565
  %12 = load i8, i8* %gain_level, align 1, !dbg !4565
  %conv17 = zext i8 %12 to i32, !dbg !4565
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %conv12, i32 %conv14, i32 %conv16, i32 %conv17) #9, !dbg !4565
  br label %if.end, !dbg !4565

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4564

do.end:                                           ; preds = %if.end
  %13 = load i8, i8* %gain_level, align 1, !dbg !4567
  %conv19 = zext i8 %13 to i32, !dbg !4567
  %14 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4569
  %gain_level20 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %14, i32 0, i32 16, !dbg !4570
  %15 = load i8, i8* %gain_level20, align 2, !dbg !4570
  %conv21 = zext i8 %15 to i32, !dbg !4569
  %cmp22 = icmp eq i32 %conv19, %conv21, !dbg !4571
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !4572

if.then24:                                        ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !4573
  br label %return, !dbg !4573

if.end25:                                         ; preds = %do.end
  %16 = load i8, i8* %ampout, align 1, !dbg !4574
  %conv26 = zext i8 %16 to i32, !dbg !4574
  %or = or i32 %conv26, 15, !dbg !4574
  %conv27 = trunc i32 %or to i8, !dbg !4574
  store i8 %conv27, i8* %ampout, align 1, !dbg !4574
  %17 = load i8, i8* %gain_level, align 1, !dbg !4575
  %tobool28 = icmp ne i8 %17, 0, !dbg !4575
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !4577

if.then29:                                        ; preds = %if.end25
  %18 = load i8, i8* %rfvga, align 1, !dbg !4578
  %conv30 = zext i8 %18 to i32, !dbg !4578
  %conv31 = trunc i32 %conv30 to i8, !dbg !4578
  store i8 %conv31, i8* %rfvga, align 1, !dbg !4578
  %19 = load i8, i8* %vga, align 1, !dbg !4580
  %conv32 = zext i8 %19 to i32, !dbg !4580
  %or33 = or i32 %conv32, 63, !dbg !4580
  %conv34 = trunc i32 %or33 to i8, !dbg !4580
  store i8 %conv34, i8* %vga, align 1, !dbg !4580
  br label %if.end41, !dbg !4581

if.else:                                          ; preds = %if.end25
  %20 = load i8, i8* %rfvga, align 1, !dbg !4582
  %conv35 = zext i8 %20 to i32, !dbg !4582
  %or36 = or i32 %conv35, 8, !dbg !4582
  %conv37 = trunc i32 %or36 to i8, !dbg !4582
  store i8 %conv37, i8* %rfvga, align 1, !dbg !4582
  %21 = load i8, i8* %vga, align 1, !dbg !4584
  %conv38 = zext i8 %21 to i32, !dbg !4584
  %or39 = or i32 %conv38, 26, !dbg !4584
  %conv40 = trunc i32 %or39 to i8, !dbg !4584
  store i8 %conv40, i8* %vga, align 1, !dbg !4584
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then29
  %22 = load i8, i8* %gain_level, align 1, !dbg !4585
  %23 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4586
  %gain_level42 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %23, i32 0, i32 16, !dbg !4587
  store i8 %22, i8* %gain_level42, align 2, !dbg !4588
  %24 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4589
  %25 = load i8, i8* %ampout, align 1, !dbg !4590
  %conv43 = zext i8 %25 to i32, !dbg !4590
  %call44 = call i32 @cx24113_writereg(%struct.cx24113_state* %24, i32 29, i32 %conv43) #8, !dbg !4591
  %26 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4592
  %27 = load i8, i8* %vga, align 1, !dbg !4593
  %conv45 = zext i8 %27 to i32, !dbg !4593
  %call46 = call i32 @cx24113_writereg(%struct.cx24113_state* %26, i32 31, i32 %conv45) #8, !dbg !4594
  %28 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4595
  %29 = load i8, i8* %rfvga, align 1, !dbg !4596
  %conv47 = zext i8 %29 to i32, !dbg !4596
  %call48 = call i32 @cx24113_writereg(%struct.cx24113_state* %28, i32 32, i32 %conv47) #8, !dbg !4597
  store i32 1, i32* %retval, align 4, !dbg !4598
  br label %return, !dbg !4598

return:                                           ; preds = %if.end41, %if.then24
  %30 = load i32, i32* %retval, align 4, !dbg !4599
  ret i32 %30, !dbg !4599
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @cx24113_attach(%struct.dvb_frontend* %fe, %struct.cx24113_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4600 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.cx24113_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.cx24113_state*, align 8
  %rc = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4603, metadata !DIExpression()), !dbg !4604
  store %struct.cx24113_config* %config, %struct.cx24113_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_config** %config.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state, metadata !4609, metadata !DIExpression()), !dbg !4610
  %call = call i8* @kzalloc(i64 48, i32 3264) #8, !dbg !4611
  %0 = bitcast i8* %call to %struct.cx24113_state*, !dbg !4611
  store %struct.cx24113_state* %0, %struct.cx24113_state** %state, align 8, !dbg !4610
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4612, metadata !DIExpression()), !dbg !4613
  %1 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4614
  %tobool = icmp ne %struct.cx24113_state* %1, null, !dbg !4614
  br i1 %tobool, label %if.end, label %if.then, !dbg !4616

if.then:                                          ; preds = %entry
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4617
  br label %return, !dbg !4617

if.end:                                           ; preds = %entry
  %2 = load %struct.cx24113_config*, %struct.cx24113_config** %config.addr, align 8, !dbg !4618
  %3 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4619
  %config1 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %3, i32 0, i32 1, !dbg !4620
  store %struct.cx24113_config* %2, %struct.cx24113_config** %config1, align 8, !dbg !4621
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4622
  %5 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4623
  %i2c2 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %5, i32 0, i32 0, !dbg !4624
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4625
  br label %do.body, !dbg !4626

do.body:                                          ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !4627
  br label %do.end, !dbg !4627

do.end:                                           ; preds = %do.body
  %6 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4629
  %call4 = call i32 @cx24113_readreg(%struct.cx24113_state* %6, i8 zeroext 0) #8, !dbg !4630
  %7 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4631
  %call5 = call i32 @cx24113_readreg(%struct.cx24113_state* %7, i8 zeroext 0) #8, !dbg !4632
  store i32 %call5, i32* %rc, align 4, !dbg !4633
  %8 = load i32, i32* %rc, align 4, !dbg !4634
  %cmp = icmp slt i32 %8, 0, !dbg !4636
  br i1 %cmp, label %if.then6, label %if.end10, !dbg !4637

if.then6:                                         ; preds = %do.end
  br label %do.body7, !dbg !4638

do.body7:                                         ; preds = %if.then6
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4640
  br label %do.end9, !dbg !4640

do.end9:                                          ; preds = %do.body7
  br label %error, !dbg !4642

if.end10:                                         ; preds = %do.end
  %9 = load i32, i32* %rc, align 4, !dbg !4643
  %conv = trunc i32 %9 to i8, !dbg !4643
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4644
  %rev = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %10, i32 0, i32 2, !dbg !4645
  store i8 %conv, i8* %rev, align 8, !dbg !4646
  %11 = load i32, i32* %rc, align 4, !dbg !4647
  switch i32 %11, label %sw.default [
    i32 67, label %sw.bb
    i32 35, label %sw.bb14
  ], !dbg !4648

sw.bb:                                            ; preds = %if.end10
  br label %do.body11, !dbg !4649

do.body11:                                        ; preds = %sw.bb
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !4651
  br label %do.end13, !dbg !4651

do.end13:                                         ; preds = %do.body11
  br label %sw.epilog, !dbg !4653

sw.bb14:                                          ; preds = %if.end10
  br label %do.body15, !dbg !4654

do.body15:                                        ; preds = %sw.bb14
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !4655
  br label %do.end17, !dbg !4655

do.end17:                                         ; preds = %do.body15
  br label %sw.epilog, !dbg !4657

sw.default:                                       ; preds = %if.end10
  br label %do.body18, !dbg !4658

do.body18:                                        ; preds = %sw.default
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4659
  %rev19 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %12, i32 0, i32 2, !dbg !4659
  %13 = load i8, i8* %rev19, align 8, !dbg !4659
  %conv20 = zext i8 %13 to i32, !dbg !4659
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %conv20) #9, !dbg !4659
  br label %do.end22, !dbg !4659

do.end22:                                         ; preds = %do.body18
  br label %error, !dbg !4661

sw.epilog:                                        ; preds = %do.end17, %do.end13
  %14 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4662
  %call23 = call i32 @cx24113_readreg(%struct.cx24113_state* %14, i8 zeroext 1) #8, !dbg !4663
  %conv24 = trunc i32 %call23 to i8, !dbg !4663
  %15 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4664
  %ver = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %15, i32 0, i32 3, !dbg !4665
  store i8 %conv24, i8* %ver, align 1, !dbg !4666
  br label %do.body25, !dbg !4667

do.body25:                                        ; preds = %sw.epilog
  %16 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4668
  %ver26 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %16, i32 0, i32 3, !dbg !4668
  %17 = load i8, i8* %ver26, align 1, !dbg !4668
  %conv27 = zext i8 %17 to i32, !dbg !4668
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %conv27) #9, !dbg !4668
  br label %do.end29, !dbg !4668

do.end29:                                         ; preds = %do.body25
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4670
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1, !dbg !4671
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !4672
  %19 = bitcast %struct.dvb_tuner_ops* %tuner_ops to i8*, !dbg !4673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 getelementptr inbounds (%struct.dvb_tuner_ops, %struct.dvb_tuner_ops* bitcast ({ %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }* @cx24113_tuner_ops to %struct.dvb_tuner_ops*), i32 0, i32 0, i32 0, i32 0), i64 288, i1 false), !dbg !4673
  %20 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4674
  %21 = bitcast %struct.cx24113_state* %20 to i8*, !dbg !4674
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4675
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 4, !dbg !4676
  store i8* %21, i8** %tuner_priv, align 8, !dbg !4677
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4678
  store %struct.dvb_frontend* %23, %struct.dvb_frontend** %retval, align 8, !dbg !4679
  br label %return, !dbg !4679

error:                                            ; preds = %do.end22, %do.end9
  call void @llvm.dbg.label(metadata !4680), !dbg !4681
  %24 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !4682
  %25 = bitcast %struct.cx24113_state* %24 to i8*, !dbg !4682
  call void @kfree(i8* %25) #8, !dbg !4683
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4684
  br label %return, !dbg !4684

return:                                           ; preds = %error, %do.end29, %if.then
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4685
  ret %struct.dvb_frontend* %26, !dbg !4685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4686 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4689, metadata !DIExpression()), !dbg !4693
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4699, metadata !DIExpression()), !dbg !4700
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4701, metadata !DIExpression()), !dbg !4702
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4703, metadata !DIExpression()), !dbg !4704
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4705, metadata !DIExpression()), !dbg !4709
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4711, metadata !DIExpression()), !dbg !4715
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4717, metadata !DIExpression()), !dbg !4721
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4726, metadata !DIExpression()), !dbg !4727
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4728, metadata !DIExpression()), !dbg !4729
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4730, metadata !DIExpression()), !dbg !4731
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4732, metadata !DIExpression()), !dbg !4733
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4734, metadata !DIExpression()), !dbg !4735
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4736, metadata !DIExpression()), !dbg !4737
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4738, metadata !DIExpression()), !dbg !4739
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4740, metadata !DIExpression()), !dbg !4741
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  %0 = load i64, i64* %size.addr, align 8, !dbg !4746
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4747
  %or = or i32 %1, 256, !dbg !4748
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4749
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4750
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4751

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4752
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4753
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4754

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4755
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4756
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4757
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4758
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4735
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4759
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4760
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4761
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4762
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4763
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4764
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4765
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4765
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4765
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4765
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4765
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4766
  br label %kmalloc.exit, !dbg !4766

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4767
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4768
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4770

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4771
  br label %kmalloc_index.exit.i, !dbg !4771

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4772
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4774
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4775

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4776
  br label %kmalloc_index.exit.i, !dbg !4776

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4777
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4779
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4780

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4781
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4782
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4783

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4784
  br label %kmalloc_index.exit.i, !dbg !4784

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4785
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4787
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4788

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4789
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4790
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4791

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4795
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4796

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4800
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4801

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4805
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4806

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4810
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4811

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4815
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4816

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4818
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4820
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4821

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4825
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4826

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4830
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4831

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4835
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4836

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4837
  br label %kmalloc_index.exit.i, !dbg !4837

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4838
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4840
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4841

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4845
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4846

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4847
  br label %kmalloc_index.exit.i, !dbg !4847

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4848
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4850
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4851

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4852
  br label %kmalloc_index.exit.i, !dbg !4852

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4853
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4855
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4856

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4857
  br label %kmalloc_index.exit.i, !dbg !4857

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4858
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4860
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4861

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4862
  br label %kmalloc_index.exit.i, !dbg !4862

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4863
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4865
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4866

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4867
  br label %kmalloc_index.exit.i, !dbg !4867

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4870
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4871

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4872
  br label %kmalloc_index.exit.i, !dbg !4872

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4873
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4875
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4876

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4877
  br label %kmalloc_index.exit.i, !dbg !4877

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4878
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4880
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4881

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4882
  br label %kmalloc_index.exit.i, !dbg !4882

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4883
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4885
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4886

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4887
  br label %kmalloc_index.exit.i, !dbg !4887

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4888
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4890
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4891

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4895
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4896

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4900
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4901

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4902
  br label %kmalloc_index.exit.i, !dbg !4902

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4903
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4905
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4906

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4907
  br label %kmalloc_index.exit.i, !dbg !4907

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4908
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4910
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4911

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4912
  br label %kmalloc_index.exit.i, !dbg !4912

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4913, !srcloc !4916
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4917, !srcloc !4920
  unreachable, !dbg !4921

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4922
  store i32 %45, i32* %index.i, align 4, !dbg !4923
  %46 = load i32, i32* %index.i, align 4, !dbg !4924
  %tobool.i = icmp ne i32 %46, 0, !dbg !4924
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4926

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4927
  br label %kmalloc.exit, !dbg !4927

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4928
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4929
  %and.i.i = and i32 %48, 17, !dbg !4929
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4929
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4929
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4929
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4929
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4931

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4932
  br label %kmalloc_type.exit.i, !dbg !4932

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4933
  %and2.i.i = and i32 %49, 1, !dbg !4934
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4933
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4933
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4933
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4935
  br label %kmalloc_type.exit.i, !dbg !4935

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4936
  %idxprom.i = zext i32 %51 to i64, !dbg !4937
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4937
  %52 = load i32, i32* %index.i, align 4, !dbg !4938
  %idxprom6.i = zext i32 %52 to i64, !dbg !4937
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4937
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4937
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4939
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4940
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4941
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4942
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4943
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4943
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4943
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4943
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4943
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4704
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4944
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4945
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4946
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4947
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4948
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4949
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4950
  store i8* %62, i8** %retval.i, align 8, !dbg !4951
  br label %kmalloc.exit, !dbg !4951

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4952
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4953
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4954
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4954
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4954
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4954
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4954
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4955
  br label %kmalloc.exit, !dbg !4955

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4956
  ret i8* %65, !dbg !4957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_readreg(%struct.cx24113_state* %state, i8 zeroext %reg) #0 !dbg !4958 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24113_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4965, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.declare(metadata i8* %b, metadata !4967, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4969, metadata !DIExpression()), !dbg !4971
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4972
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !4973
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4974
  %config = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %0, i32 0, i32 1, !dbg !4975
  %1 = load %struct.cx24113_config*, %struct.cx24113_config** %config, align 8, !dbg !4975
  %i2c_addr = getelementptr inbounds %struct.cx24113_config, %struct.cx24113_config* %1, i32 0, i32 0, !dbg !4976
  %2 = load i8, i8* %i2c_addr, align 4, !dbg !4976
  %conv = zext i8 %2 to i16, !dbg !4974
  store i16 %conv, i16* %addr, align 16, !dbg !4973
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !4973
  store i16 0, i16* %flags, align 2, !dbg !4973
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !4973
  store i16 1, i16* %len, align 4, !dbg !4973
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !4973
  store i8* %reg.addr, i8** %buf, align 8, !dbg !4973
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !4972
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4977
  %3 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4978
  %config2 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %3, i32 0, i32 1, !dbg !4979
  %4 = load %struct.cx24113_config*, %struct.cx24113_config** %config2, align 8, !dbg !4979
  %i2c_addr3 = getelementptr inbounds %struct.cx24113_config, %struct.cx24113_config* %4, i32 0, i32 0, !dbg !4980
  %5 = load i8, i8* %i2c_addr3, align 4, !dbg !4980
  %conv4 = zext i8 %5 to i16, !dbg !4978
  store i16 %conv4, i16* %addr1, align 16, !dbg !4977
  %flags5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4977
  store i16 1, i16* %flags5, align 2, !dbg !4977
  %len6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4977
  store i16 1, i16* %len6, align 4, !dbg !4977
  %buf7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4977
  store i8* %b, i8** %buf7, align 8, !dbg !4977
  %6 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !4981
  %i2c = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %6, i32 0, i32 0, !dbg !4982
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4982
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4983
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %7, %struct.i2c_msg* %arraydecay, i32 2) #8, !dbg !4984
  store i32 %call, i32* %ret, align 4, !dbg !4985
  %8 = load i32, i32* %ret, align 4, !dbg !4986
  %cmp = icmp ne i32 %8, 2, !dbg !4988
  br i1 %cmp, label %if.then, label %if.end, !dbg !4989

if.then:                                          ; preds = %entry
  %9 = load i8, i8* %reg.addr, align 1, !dbg !4990
  %conv9 = zext i8 %9 to i32, !dbg !4990
  %10 = load i32, i32* %ret, align 4, !dbg !4992
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24113_readreg, i64 0, i64 0), i32 %conv9, i32 %10) #9, !dbg !4993
  %11 = load i32, i32* %ret, align 4, !dbg !4994
  store i32 %11, i32* %retval, align 4, !dbg !4995
  br label %return, !dbg !4995

if.end:                                           ; preds = %entry
  %12 = load i8, i8* %b, align 1, !dbg !4996
  %conv11 = zext i8 %12 to i32, !dbg !4996
  store i32 %conv11, i32* %retval, align 4, !dbg !4997
  br label %return, !dbg !4997

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4998
  ret i32 %13, !dbg !4998
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_writereg(%struct.cx24113_state* %state, i32 %reg, i32 %data) #0 !dbg !4999 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24113_state*, align 8
  %reg.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %err = alloca i32, align 4
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5002, metadata !DIExpression()), !dbg !5003
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5008, metadata !DIExpression()), !dbg !5010
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5011
  %0 = load i32, i32* %reg.addr, align 4, !dbg !5012
  %conv = trunc i32 %0 to i8, !dbg !5012
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !5011
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5011
  %1 = load i32, i32* %data.addr, align 4, !dbg !5013
  %conv1 = trunc i32 %1 to i8, !dbg !5013
  store i8 %conv1, i8* %arrayinit.element, align 1, !dbg !5011
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5014, metadata !DIExpression()), !dbg !5015
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5016
  %2 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5017
  %config = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %2, i32 0, i32 1, !dbg !5018
  %3 = load %struct.cx24113_config*, %struct.cx24113_config** %config, align 8, !dbg !5018
  %i2c_addr = getelementptr inbounds %struct.cx24113_config, %struct.cx24113_config* %3, i32 0, i32 0, !dbg !5019
  %4 = load i8, i8* %i2c_addr, align 4, !dbg !5019
  %conv2 = zext i8 %4 to i16, !dbg !5017
  store i16 %conv2, i16* %addr, align 8, !dbg !5016
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5016
  store i16 0, i16* %flags, align 2, !dbg !5016
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5016
  store i16 2, i16* %len, align 4, !dbg !5016
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5016
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5020
  store i8* %arraydecay, i8** %buf3, align 8, !dbg !5016
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5021, metadata !DIExpression()), !dbg !5022
  %5 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5023
  %i2c = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %5, i32 0, i32 0, !dbg !5024
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5024
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5025
  store i32 %call, i32* %err, align 4, !dbg !5022
  %7 = load i32, i32* %err, align 4, !dbg !5026
  %cmp = icmp ne i32 %7, 1, !dbg !5028
  br i1 %cmp, label %if.then, label %if.end, !dbg !5029

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %err, align 4, !dbg !5030
  %9 = load i32, i32* %reg.addr, align 4, !dbg !5032
  %10 = load i32, i32* %data.addr, align 4, !dbg !5033
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24113_writereg, i64 0, i64 0), i32 %8, i32 %9, i32 %10) #9, !dbg !5034
  %11 = load i32, i32* %err, align 4, !dbg !5035
  store i32 %11, i32* %retval, align 4, !dbg !5036
  br label %return, !dbg !5036

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5038
  ret i32 %12, !dbg !5038
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
define internal i32 @get_order(i64 %size) #7 !dbg !5039 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5043, metadata !DIExpression()), !dbg !5048
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5050, metadata !DIExpression()), !dbg !5051
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  %0 = load i64, i64* %size.addr, align 8, !dbg !5054
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5056
  br i1 %1, label %if.then, label %if.end447, !dbg !5057

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5058
  %tobool = icmp ne i64 %2, 0, !dbg !5058
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5061

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5062
  br label %return, !dbg !5062

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5063
  %cmp = icmp ult i64 %3, 4096, !dbg !5065
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5066

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5067
  br label %return, !dbg !5067

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub = sub i64 %4, 1, !dbg !5068
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5068
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5068

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub4 = sub i64 %6, 1, !dbg !5068
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5068
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5068

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub6 = sub i64 %8, 1, !dbg !5068
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5068
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5068

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5068

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub9 = sub i64 %9, 1, !dbg !5068
  %and = and i64 %sub9, -9223372036854775808, !dbg !5068
  %tobool10 = icmp ne i64 %and, 0, !dbg !5068
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5068

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5068

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub13 = sub i64 %10, 1, !dbg !5068
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5068
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5068
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5068

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5068

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub18 = sub i64 %11, 1, !dbg !5068
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5068
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5068
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5068

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5068

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub23 = sub i64 %12, 1, !dbg !5068
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5068
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5068
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5068

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5068

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub28 = sub i64 %13, 1, !dbg !5068
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5068
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5068
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5068

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5068

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub33 = sub i64 %14, 1, !dbg !5068
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5068
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5068
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5068

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5068

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub38 = sub i64 %15, 1, !dbg !5068
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5068
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5068
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5068

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5068

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub43 = sub i64 %16, 1, !dbg !5068
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5068
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5068
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5068

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5068

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub48 = sub i64 %17, 1, !dbg !5068
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5068
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5068
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5068

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5068

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub53 = sub i64 %18, 1, !dbg !5068
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5068
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5068
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5068

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5068

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub58 = sub i64 %19, 1, !dbg !5068
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5068
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5068
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5068

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5068

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub63 = sub i64 %20, 1, !dbg !5068
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5068
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5068
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5068

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5068

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub68 = sub i64 %21, 1, !dbg !5068
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5068
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5068
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5068

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5068

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub73 = sub i64 %22, 1, !dbg !5068
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5068
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5068
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5068

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5068

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub78 = sub i64 %23, 1, !dbg !5068
  %and79 = and i64 %sub78, 562949953421312, !dbg !5068
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5068
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5068

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5068

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub83 = sub i64 %24, 1, !dbg !5068
  %and84 = and i64 %sub83, 281474976710656, !dbg !5068
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5068
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5068

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5068

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub88 = sub i64 %25, 1, !dbg !5068
  %and89 = and i64 %sub88, 140737488355328, !dbg !5068
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5068
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5068

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5068

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub93 = sub i64 %26, 1, !dbg !5068
  %and94 = and i64 %sub93, 70368744177664, !dbg !5068
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5068
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5068

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5068

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub98 = sub i64 %27, 1, !dbg !5068
  %and99 = and i64 %sub98, 35184372088832, !dbg !5068
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5068
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5068

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5068

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub103 = sub i64 %28, 1, !dbg !5068
  %and104 = and i64 %sub103, 17592186044416, !dbg !5068
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5068
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5068

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5068

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub108 = sub i64 %29, 1, !dbg !5068
  %and109 = and i64 %sub108, 8796093022208, !dbg !5068
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5068
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5068

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5068

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub113 = sub i64 %30, 1, !dbg !5068
  %and114 = and i64 %sub113, 4398046511104, !dbg !5068
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5068
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5068

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5068

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub118 = sub i64 %31, 1, !dbg !5068
  %and119 = and i64 %sub118, 2199023255552, !dbg !5068
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5068
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5068

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5068

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub123 = sub i64 %32, 1, !dbg !5068
  %and124 = and i64 %sub123, 1099511627776, !dbg !5068
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5068
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5068

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5068

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub128 = sub i64 %33, 1, !dbg !5068
  %and129 = and i64 %sub128, 549755813888, !dbg !5068
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5068
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5068

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5068

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub133 = sub i64 %34, 1, !dbg !5068
  %and134 = and i64 %sub133, 274877906944, !dbg !5068
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5068
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5068

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5068

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub138 = sub i64 %35, 1, !dbg !5068
  %and139 = and i64 %sub138, 137438953472, !dbg !5068
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5068
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5068

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5068

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub143 = sub i64 %36, 1, !dbg !5068
  %and144 = and i64 %sub143, 68719476736, !dbg !5068
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5068
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5068

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5068

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub148 = sub i64 %37, 1, !dbg !5068
  %and149 = and i64 %sub148, 34359738368, !dbg !5068
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5068
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5068

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5068

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub153 = sub i64 %38, 1, !dbg !5068
  %and154 = and i64 %sub153, 17179869184, !dbg !5068
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5068
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5068

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5068

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub158 = sub i64 %39, 1, !dbg !5068
  %and159 = and i64 %sub158, 8589934592, !dbg !5068
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5068
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5068

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5068

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub163 = sub i64 %40, 1, !dbg !5068
  %and164 = and i64 %sub163, 4294967296, !dbg !5068
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5068
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5068

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5068

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub168 = sub i64 %41, 1, !dbg !5068
  %and169 = and i64 %sub168, 2147483648, !dbg !5068
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5068
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5068

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5068

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub173 = sub i64 %42, 1, !dbg !5068
  %and174 = and i64 %sub173, 1073741824, !dbg !5068
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5068
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5068

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5068

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub178 = sub i64 %43, 1, !dbg !5068
  %and179 = and i64 %sub178, 536870912, !dbg !5068
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5068
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5068

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5068

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub183 = sub i64 %44, 1, !dbg !5068
  %and184 = and i64 %sub183, 268435456, !dbg !5068
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5068
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5068

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5068

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub188 = sub i64 %45, 1, !dbg !5068
  %and189 = and i64 %sub188, 134217728, !dbg !5068
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5068
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5068

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5068

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub193 = sub i64 %46, 1, !dbg !5068
  %and194 = and i64 %sub193, 67108864, !dbg !5068
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5068
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5068

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5068

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub198 = sub i64 %47, 1, !dbg !5068
  %and199 = and i64 %sub198, 33554432, !dbg !5068
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5068
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5068

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5068

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub203 = sub i64 %48, 1, !dbg !5068
  %and204 = and i64 %sub203, 16777216, !dbg !5068
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5068
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5068

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5068

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub208 = sub i64 %49, 1, !dbg !5068
  %and209 = and i64 %sub208, 8388608, !dbg !5068
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5068
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5068

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5068

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub213 = sub i64 %50, 1, !dbg !5068
  %and214 = and i64 %sub213, 4194304, !dbg !5068
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5068
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5068

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5068

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub218 = sub i64 %51, 1, !dbg !5068
  %and219 = and i64 %sub218, 2097152, !dbg !5068
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5068
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5068

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5068

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub223 = sub i64 %52, 1, !dbg !5068
  %and224 = and i64 %sub223, 1048576, !dbg !5068
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5068
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5068

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5068

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub228 = sub i64 %53, 1, !dbg !5068
  %and229 = and i64 %sub228, 524288, !dbg !5068
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5068
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5068

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5068

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub233 = sub i64 %54, 1, !dbg !5068
  %and234 = and i64 %sub233, 262144, !dbg !5068
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5068
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5068

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5068

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub238 = sub i64 %55, 1, !dbg !5068
  %and239 = and i64 %sub238, 131072, !dbg !5068
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5068
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5068

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5068

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub243 = sub i64 %56, 1, !dbg !5068
  %and244 = and i64 %sub243, 65536, !dbg !5068
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5068
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5068

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5068

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub248 = sub i64 %57, 1, !dbg !5068
  %and249 = and i64 %sub248, 32768, !dbg !5068
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5068
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5068

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5068

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub253 = sub i64 %58, 1, !dbg !5068
  %and254 = and i64 %sub253, 16384, !dbg !5068
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5068
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5068

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5068

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub258 = sub i64 %59, 1, !dbg !5068
  %and259 = and i64 %sub258, 8192, !dbg !5068
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5068
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5068

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5068

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub263 = sub i64 %60, 1, !dbg !5068
  %and264 = and i64 %sub263, 4096, !dbg !5068
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5068
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5068

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5068

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub268 = sub i64 %61, 1, !dbg !5068
  %and269 = and i64 %sub268, 2048, !dbg !5068
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5068
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5068

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5068

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub273 = sub i64 %62, 1, !dbg !5068
  %and274 = and i64 %sub273, 1024, !dbg !5068
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5068
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5068

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5068

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub278 = sub i64 %63, 1, !dbg !5068
  %and279 = and i64 %sub278, 512, !dbg !5068
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5068
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5068

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5068

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub283 = sub i64 %64, 1, !dbg !5068
  %and284 = and i64 %sub283, 256, !dbg !5068
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5068
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5068

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5068

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub288 = sub i64 %65, 1, !dbg !5068
  %and289 = and i64 %sub288, 128, !dbg !5068
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5068
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5068

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5068

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub293 = sub i64 %66, 1, !dbg !5068
  %and294 = and i64 %sub293, 64, !dbg !5068
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5068
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5068

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5068

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub298 = sub i64 %67, 1, !dbg !5068
  %and299 = and i64 %sub298, 32, !dbg !5068
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5068
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5068

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5068

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub303 = sub i64 %68, 1, !dbg !5068
  %and304 = and i64 %sub303, 16, !dbg !5068
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5068
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5068

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5068

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub308 = sub i64 %69, 1, !dbg !5068
  %and309 = and i64 %sub308, 8, !dbg !5068
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5068
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5068

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5068

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub313 = sub i64 %70, 1, !dbg !5068
  %and314 = and i64 %sub313, 4, !dbg !5068
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5068
  %71 = zext i1 %tobool315 to i64, !dbg !5068
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5068
  br label %cond.end, !dbg !5068

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5068
  br label %cond.end317, !dbg !5068

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5068
  br label %cond.end319, !dbg !5068

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5068
  br label %cond.end321, !dbg !5068

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5068
  br label %cond.end323, !dbg !5068

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5068
  br label %cond.end325, !dbg !5068

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5068
  br label %cond.end327, !dbg !5068

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5068
  br label %cond.end329, !dbg !5068

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5068
  br label %cond.end331, !dbg !5068

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5068
  br label %cond.end333, !dbg !5068

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5068
  br label %cond.end335, !dbg !5068

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5068
  br label %cond.end337, !dbg !5068

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5068
  br label %cond.end339, !dbg !5068

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5068
  br label %cond.end341, !dbg !5068

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5068
  br label %cond.end343, !dbg !5068

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5068
  br label %cond.end345, !dbg !5068

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5068
  br label %cond.end347, !dbg !5068

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5068
  br label %cond.end349, !dbg !5068

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5068
  br label %cond.end351, !dbg !5068

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5068
  br label %cond.end353, !dbg !5068

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5068
  br label %cond.end355, !dbg !5068

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5068
  br label %cond.end357, !dbg !5068

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5068
  br label %cond.end359, !dbg !5068

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5068
  br label %cond.end361, !dbg !5068

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5068
  br label %cond.end363, !dbg !5068

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5068
  br label %cond.end365, !dbg !5068

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5068
  br label %cond.end367, !dbg !5068

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5068
  br label %cond.end369, !dbg !5068

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5068
  br label %cond.end371, !dbg !5068

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5068
  br label %cond.end373, !dbg !5068

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5068
  br label %cond.end375, !dbg !5068

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5068
  br label %cond.end377, !dbg !5068

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5068
  br label %cond.end379, !dbg !5068

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5068
  br label %cond.end381, !dbg !5068

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5068
  br label %cond.end383, !dbg !5068

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5068
  br label %cond.end385, !dbg !5068

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5068
  br label %cond.end387, !dbg !5068

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5068
  br label %cond.end389, !dbg !5068

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5068
  br label %cond.end391, !dbg !5068

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5068
  br label %cond.end393, !dbg !5068

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5068
  br label %cond.end395, !dbg !5068

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5068
  br label %cond.end397, !dbg !5068

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5068
  br label %cond.end399, !dbg !5068

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5068
  br label %cond.end401, !dbg !5068

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5068
  br label %cond.end403, !dbg !5068

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5068
  br label %cond.end405, !dbg !5068

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5068
  br label %cond.end407, !dbg !5068

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5068
  br label %cond.end409, !dbg !5068

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5068
  br label %cond.end411, !dbg !5068

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5068
  br label %cond.end413, !dbg !5068

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5068
  br label %cond.end415, !dbg !5068

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5068
  br label %cond.end417, !dbg !5068

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5068
  br label %cond.end419, !dbg !5068

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5068
  br label %cond.end421, !dbg !5068

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5068
  br label %cond.end423, !dbg !5068

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5068
  br label %cond.end425, !dbg !5068

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5068
  br label %cond.end427, !dbg !5068

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5068
  br label %cond.end429, !dbg !5068

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5068
  br label %cond.end431, !dbg !5068

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5068
  br label %cond.end433, !dbg !5068

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5068
  br label %cond.end435, !dbg !5068

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5068
  br label %cond.end437, !dbg !5068

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5068
  br label %cond.end440, !dbg !5068

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5068

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5068
  br label %cond.end444, !dbg !5068

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5068
  %sub443 = sub i64 %72, 1, !dbg !5068
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5068
  br label %cond.end444, !dbg !5068

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5068
  %sub446 = sub i32 %cond445, 12, !dbg !5069
  %add = add i32 %sub446, 1, !dbg !5070
  store i32 %add, i32* %retval, align 4, !dbg !5071
  br label %return, !dbg !5071

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5072
  %dec = add i64 %73, -1, !dbg !5072
  store i64 %dec, i64* %size.addr, align 8, !dbg !5072
  %74 = load i64, i64* %size.addr, align 8, !dbg !5073
  %shr = lshr i64 %74, 12, !dbg !5073
  store i64 %shr, i64* %size.addr, align 8, !dbg !5073
  %75 = load i64, i64* %size.addr, align 8, !dbg !5074
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5051
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5075
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5076
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5075, !srcloc !5077
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5075
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5078
  %add.i = add i32 %79, 1, !dbg !5079
  store i32 %add.i, i32* %retval, align 4, !dbg !5080
  br label %return, !dbg !5080

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5081
  ret i32 %80, !dbg !5081
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5082 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5043, metadata !DIExpression()), !dbg !5086
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5050, metadata !DIExpression()), !dbg !5088
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load i64, i64* %n.addr, align 8, !dbg !5091
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5088
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5092
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5093
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5092, !srcloc !5077
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5092
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5094
  %add.i = add i32 %4, 1, !dbg !5095
  %sub = sub i32 %add.i, 1, !dbg !5096
  ret i32 %sub, !dbg !5097
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5098 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5110
  ret i8* %0, !dbg !5111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cx24113_release(%struct.dvb_frontend* %fe) #0 !dbg !5112 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24113_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state, metadata !5115, metadata !DIExpression()), !dbg !5116
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5117
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5118
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5118
  %2 = bitcast i8* %1 to %struct.cx24113_state*, !dbg !5117
  store %struct.cx24113_state* %2, %struct.cx24113_state** %state, align 8, !dbg !5116
  br label %do.body, !dbg !5119

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5120
  %tobool = icmp ne i32 %3, 0, !dbg !5120
  br i1 %tobool, label %if.then, label %if.end, !dbg !5123

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24113_release, i64 0, i64 0)) #9, !dbg !5124
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !5124
  br label %if.end, !dbg !5124

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5123

do.end:                                           ; preds = %if.end
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5126
  %tuner_priv2 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 4, !dbg !5127
  store i8* null, i8** %tuner_priv2, align 8, !dbg !5128
  %5 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5129
  %6 = bitcast %struct.cx24113_state* %5 to i8*, !dbg !5129
  call void @kfree(i8* %6) #8, !dbg !5130
  ret void, !dbg !5131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_init(%struct.dvb_frontend* %fe) #0 !dbg !5132 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24113_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state, metadata !5135, metadata !DIExpression()), !dbg !5136
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5137
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5138
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5138
  %2 = bitcast i8* %1 to %struct.cx24113_state*, !dbg !5137
  store %struct.cx24113_state* %2, %struct.cx24113_state** %state, align 8, !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5139, metadata !DIExpression()), !dbg !5140
  %3 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5141
  %tuner_gain_thres = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %3, i32 0, i32 15, !dbg !5142
  store i16 -50, i16* %tuner_gain_thres, align 8, !dbg !5143
  %4 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5144
  %gain_level = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %4, i32 0, i32 16, !dbg !5145
  store i8 -1, i8* %gain_level, align 2, !dbg !5146
  %5 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5147
  %icp_mode = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %5, i32 0, i32 4, !dbg !5148
  %bf.load = load i8, i8* %icp_mode, align 2, !dbg !5149
  %bf.clear = and i8 %bf.load, -2, !dbg !5149
  store i8 %bf.clear, i8* %icp_mode, align 2, !dbg !5149
  %6 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5150
  %config = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %6, i32 0, i32 1, !dbg !5152
  %7 = load %struct.cx24113_config*, %struct.cx24113_config** %config, align 8, !dbg !5152
  %xtal_khz = getelementptr inbounds %struct.cx24113_config, %struct.cx24113_config* %7, i32 0, i32 1, !dbg !5153
  %8 = load i32, i32* %xtal_khz, align 4, !dbg !5153
  %cmp = icmp ult i32 %8, 11000, !dbg !5154
  br i1 %cmp, label %if.then, label %if.else, !dbg !5155

if.then:                                          ; preds = %entry
  %9 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5156
  %icp_auto_hi = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %9, i32 0, i32 5, !dbg !5158
  %bf.load1 = load i8, i8* %icp_auto_hi, align 1, !dbg !5159
  %bf.clear2 = and i8 %bf.load1, -13, !dbg !5159
  %bf.set = or i8 %bf.clear2, 12, !dbg !5159
  store i8 %bf.set, i8* %icp_auto_hi, align 1, !dbg !5159
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5160
  %icp_auto_mhi = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %10, i32 0, i32 5, !dbg !5161
  %bf.load3 = load i8, i8* %icp_auto_mhi, align 1, !dbg !5162
  %bf.clear4 = and i8 %bf.load3, -4, !dbg !5162
  %bf.set5 = or i8 %bf.clear4, 3, !dbg !5162
  store i8 %bf.set5, i8* %icp_auto_mhi, align 1, !dbg !5162
  %11 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5163
  %icp_auto_mlow = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %11, i32 0, i32 4, !dbg !5164
  %bf.load6 = load i8, i8* %icp_auto_mlow, align 2, !dbg !5165
  %bf.clear7 = and i8 %bf.load6, -97, !dbg !5165
  %bf.set8 = or i8 %bf.clear7, 64, !dbg !5165
  store i8 %bf.set8, i8* %icp_auto_mlow, align 2, !dbg !5165
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5166
  %icp_auto_low = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %12, i32 0, i32 4, !dbg !5167
  %bf.load9 = load i8, i8* %icp_auto_low, align 2, !dbg !5168
  %bf.clear10 = and i8 %bf.load9, -25, !dbg !5168
  %bf.set11 = or i8 %bf.clear10, 16, !dbg !5168
  store i8 %bf.set11, i8* %icp_auto_low, align 2, !dbg !5168
  br label %if.end, !dbg !5169

if.else:                                          ; preds = %entry
  %13 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5170
  %icp_auto_hi12 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %13, i32 0, i32 5, !dbg !5172
  %bf.load13 = load i8, i8* %icp_auto_hi12, align 1, !dbg !5173
  %bf.clear14 = and i8 %bf.load13, -13, !dbg !5173
  %bf.set15 = or i8 %bf.clear14, 12, !dbg !5173
  store i8 %bf.set15, i8* %icp_auto_hi12, align 1, !dbg !5173
  %14 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5174
  %icp_auto_mhi16 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %14, i32 0, i32 5, !dbg !5175
  %bf.load17 = load i8, i8* %icp_auto_mhi16, align 1, !dbg !5176
  %bf.clear18 = and i8 %bf.load17, -4, !dbg !5176
  %bf.set19 = or i8 %bf.clear18, 3, !dbg !5176
  store i8 %bf.set19, i8* %icp_auto_mhi16, align 1, !dbg !5176
  %15 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5177
  %icp_auto_mlow20 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %15, i32 0, i32 4, !dbg !5178
  %bf.load21 = load i8, i8* %icp_auto_mlow20, align 2, !dbg !5179
  %bf.clear22 = and i8 %bf.load21, -97, !dbg !5179
  %bf.set23 = or i8 %bf.clear22, 64, !dbg !5179
  store i8 %bf.set23, i8* %icp_auto_mlow20, align 2, !dbg !5179
  %16 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5180
  %icp_auto_low24 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %16, i32 0, i32 4, !dbg !5181
  %bf.load25 = load i8, i8* %icp_auto_low24, align 2, !dbg !5182
  %bf.clear26 = and i8 %bf.load25, -25, !dbg !5182
  %bf.set27 = or i8 %bf.clear26, 8, !dbg !5182
  store i8 %bf.set27, i8* %icp_auto_low24, align 2, !dbg !5182
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5183
  %icp_dig = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %17, i32 0, i32 6, !dbg !5184
  store i8 2, i8* %icp_dig, align 4, !dbg !5185
  %18 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5186
  %icp_man = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %18, i32 0, i32 4, !dbg !5187
  %bf.load28 = load i8, i8* %icp_man, align 2, !dbg !5188
  %bf.clear29 = and i8 %bf.load28, -7, !dbg !5188
  store i8 %bf.clear29, i8* %icp_man, align 2, !dbg !5188
  %19 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5189
  %acp_on = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %19, i32 0, i32 7, !dbg !5190
  %bf.load30 = load i8, i8* %acp_on, align 1, !dbg !5191
  %bf.clear31 = and i8 %bf.load30, -5, !dbg !5191
  %bf.set32 = or i8 %bf.clear31, 4, !dbg !5191
  store i8 %bf.set32, i8* %acp_on, align 1, !dbg !5191
  %20 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5192
  %vco_mode = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %20, i32 0, i32 7, !dbg !5193
  %bf.load33 = load i8, i8* %vco_mode, align 1, !dbg !5194
  %bf.clear34 = and i8 %bf.load33, -25, !dbg !5194
  store i8 %bf.clear34, i8* %vco_mode, align 1, !dbg !5194
  %21 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5195
  %vco_shift = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %21, i32 0, i32 7, !dbg !5196
  %bf.load35 = load i8, i8* %vco_shift, align 1, !dbg !5197
  %bf.clear36 = and i8 %bf.load35, -33, !dbg !5197
  store i8 %bf.clear36, i8* %vco_shift, align 1, !dbg !5197
  %22 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5198
  %vco_band = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %22, i32 0, i32 8, !dbg !5199
  store i8 16, i8* %vco_band, align 2, !dbg !5200
  %23 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5201
  %bs_delay = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %23, i32 0, i32 10, !dbg !5202
  %bf.load37 = load i8, i8* %bs_delay, align 8, !dbg !5203
  %bf.clear38 = and i8 %bf.load37, -16, !dbg !5203
  %bf.set39 = or i8 %bf.clear38, 8, !dbg !5203
  store i8 %bf.set39, i8* %bs_delay, align 8, !dbg !5203
  %24 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5204
  %bs_freqcnt = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %24, i32 0, i32 11, !dbg !5205
  %bf.load40 = load i16, i16* %bs_freqcnt, align 2, !dbg !5206
  %bf.clear41 = and i16 %bf.load40, -8192, !dbg !5206
  %bf.set42 = or i16 %bf.clear41, 4095, !dbg !5206
  store i16 %bf.set42, i16* %bs_freqcnt, align 2, !dbg !5206
  %25 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5207
  %bs_rdiv = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %25, i32 0, i32 12, !dbg !5208
  store i16 4095, i16* %bs_rdiv, align 4, !dbg !5209
  %26 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5210
  %prescaler_mode = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %26, i32 0, i32 13, !dbg !5211
  %bf.load43 = load i8, i8* %prescaler_mode, align 2, !dbg !5212
  %bf.clear44 = and i8 %bf.load43, -2, !dbg !5212
  store i8 %bf.clear44, i8* %prescaler_mode, align 2, !dbg !5212
  %27 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5213
  %lna_gain = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %27, i32 0, i32 7, !dbg !5214
  %bf.load45 = load i8, i8* %lna_gain, align 1, !dbg !5215
  %bf.clear46 = and i8 %bf.load45, -4, !dbg !5215
  %bf.set47 = or i8 %bf.clear46, 2, !dbg !5215
  store i8 %bf.set47, i8* %lna_gain, align 1, !dbg !5215
  %28 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5216
  %rfvga_bias_ctrl = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %28, i32 0, i32 14, !dbg !5217
  store i8 1, i8* %rfvga_bias_ctrl, align 1, !dbg !5218
  %29 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5219
  %Fwindow_enabled = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %29, i32 0, i32 19, !dbg !5220
  store i8 1, i8* %Fwindow_enabled, align 1, !dbg !5221
  %30 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5222
  %call = call i32 @cx24113_set_Fref(%struct.cx24113_state* %30, i8 zeroext 0) #8, !dbg !5223
  %31 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5224
  %call48 = call i32 @cx24113_enable(%struct.cx24113_state* %31, i8 zeroext 61) #8, !dbg !5225
  %32 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5226
  call void @cx24113_set_parameters(%struct.cx24113_state* %32) #8, !dbg !5227
  %33 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5228
  %call49 = call i32 @cx24113_set_gain_settings(%struct.cx24113_state* %33, i16 signext -30) #8, !dbg !5229
  %34 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5230
  %call50 = call i32 @cx24113_set_bandwidth(%struct.cx24113_state* %34, i32 18025) #8, !dbg !5231
  %35 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5232
  %call51 = call i32 @cx24113_set_clk_inversion(%struct.cx24113_state* %35, i8 zeroext 1) #8, !dbg !5233
  %36 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5234
  %config52 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %36, i32 0, i32 1, !dbg !5236
  %37 = load %struct.cx24113_config*, %struct.cx24113_config** %config52, align 8, !dbg !5236
  %xtal_khz53 = getelementptr inbounds %struct.cx24113_config, %struct.cx24113_config* %37, i32 0, i32 1, !dbg !5237
  %38 = load i32, i32* %xtal_khz53, align 4, !dbg !5237
  %cmp54 = icmp uge i32 %38, 40000, !dbg !5238
  br i1 %cmp54, label %if.then55, label %if.else58, !dbg !5239

if.then55:                                        ; preds = %if.end
  %39 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5240
  %40 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5241
  %call56 = call i32 @cx24113_readreg(%struct.cx24113_state* %40, i8 zeroext 2) #8, !dbg !5242
  %and = and i32 %call56, 251, !dbg !5243
  %or = or i32 %and, 4, !dbg !5244
  %call57 = call i32 @cx24113_writereg(%struct.cx24113_state* %39, i32 2, i32 %or) #8, !dbg !5245
  store i32 %call57, i32* %ret, align 4, !dbg !5246
  br label %if.end62, !dbg !5247

if.else58:                                        ; preds = %if.end
  %41 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5248
  %42 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5249
  %call59 = call i32 @cx24113_readreg(%struct.cx24113_state* %42, i8 zeroext 2) #8, !dbg !5250
  %and60 = and i32 %call59, 251, !dbg !5251
  %call61 = call i32 @cx24113_writereg(%struct.cx24113_state* %41, i32 2, i32 %and60) #8, !dbg !5252
  store i32 %call61, i32* %ret, align 4, !dbg !5253
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.then55
  %43 = load i32, i32* %ret, align 4, !dbg !5254
  ret i32 %43, !dbg !5255
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_set_params(%struct.dvb_frontend* %fe) #0 !dbg !5256 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.cx24113_state*, align 8
  %roll_off = alloca i32, align 4
  %bw = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5257, metadata !DIExpression()), !dbg !5258
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5259, metadata !DIExpression()), !dbg !5260
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5261
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5262
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5260
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state, metadata !5263, metadata !DIExpression()), !dbg !5264
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5265
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 4, !dbg !5266
  %2 = load i8*, i8** %tuner_priv, align 8, !dbg !5266
  %3 = bitcast i8* %2 to %struct.cx24113_state*, !dbg !5265
  store %struct.cx24113_state* %3, %struct.cx24113_state** %state, align 8, !dbg !5264
  call void @llvm.dbg.declare(metadata i32* %roll_off, metadata !5267, metadata !DIExpression()), !dbg !5268
  store i32 675, i32* %roll_off, align 4, !dbg !5268
  call void @llvm.dbg.declare(metadata i32* %bw, metadata !5269, metadata !DIExpression()), !dbg !5270
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5271
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 10, !dbg !5272
  %5 = load i32, i32* %symbol_rate, align 4, !dbg !5272
  %div = udiv i32 %5, 100, !dbg !5273
  %6 = load i32, i32* %roll_off, align 4, !dbg !5274
  %mul = mul i32 %div, %6, !dbg !5275
  %div1 = udiv i32 %mul, 1000, !dbg !5276
  store i32 %div1, i32* %bw, align 4, !dbg !5277
  %7 = load i32, i32* %bw, align 4, !dbg !5278
  %add = add i32 %7, 100005, !dbg !5278
  store i32 %add, i32* %bw, align 4, !dbg !5278
  %8 = load i32, i32* %bw, align 4, !dbg !5279
  %div2 = udiv i32 %8, 10, !dbg !5279
  store i32 %div2, i32* %bw, align 4, !dbg !5279
  %9 = load i32, i32* %bw, align 4, !dbg !5280
  %add3 = add i32 %9, 1000, !dbg !5280
  store i32 %add3, i32* %bw, align 4, !dbg !5280
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5281
  %11 = load i32, i32* %bw, align 4, !dbg !5282
  %call = call i32 @cx24113_set_bandwidth(%struct.cx24113_state* %10, i32 %11) #8, !dbg !5283
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5284
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5285
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0, !dbg !5286
  %14 = load i32, i32* %frequency, align 4, !dbg !5286
  %call4 = call i32 @cx24113_set_frequency(%struct.cx24113_state* %12, i32 %14) #8, !dbg !5287
  call void @msleep(i32 5) #8, !dbg !5288
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5289
  %call5 = call i32 @cx24113_get_status(%struct.dvb_frontend* %15, i32* %bw) #8, !dbg !5290
  ret i32 %call5, !dbg !5291
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_get_frequency(%struct.dvb_frontend* %fe, i32* %frequency) #0 !dbg !5292 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %frequency.addr = alloca i32*, align 8
  %state = alloca %struct.cx24113_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  store i32* %frequency, i32** %frequency.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %frequency.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state, metadata !5297, metadata !DIExpression()), !dbg !5298
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5299
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5300
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5300
  %2 = bitcast i8* %1 to %struct.cx24113_state*, !dbg !5299
  store %struct.cx24113_state* %2, %struct.cx24113_state** %state, align 8, !dbg !5298
  %3 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5301
  %frequency1 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %3, i32 0, i32 17, !dbg !5302
  %4 = load i32, i32* %frequency1, align 4, !dbg !5302
  %5 = load i32*, i32** %frequency.addr, align 8, !dbg !5303
  store i32 %4, i32* %5, align 4, !dbg !5304
  ret i32 0, !dbg !5305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_get_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5306 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.cx24113_state*, align 8
  %r = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state, metadata !5311, metadata !DIExpression()), !dbg !5312
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5313
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5314
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5314
  %2 = bitcast i8* %1 to %struct.cx24113_state*, !dbg !5313
  store %struct.cx24113_state* %2, %struct.cx24113_state** %state, align 8, !dbg !5312
  call void @llvm.dbg.declare(metadata i8* %r, metadata !5315, metadata !DIExpression()), !dbg !5316
  %3 = load %struct.cx24113_state*, %struct.cx24113_state** %state, align 8, !dbg !5317
  %call = call i32 @cx24113_readreg(%struct.cx24113_state* %3, i8 zeroext 16) #8, !dbg !5318
  %and = and i32 %call, 2, !dbg !5319
  %shr = ashr i32 %and, 1, !dbg !5320
  %conv = trunc i32 %shr to i8, !dbg !5321
  store i8 %conv, i8* %r, align 1, !dbg !5316
  %4 = load i8, i8* %r, align 1, !dbg !5322
  %tobool = icmp ne i8 %4, 0, !dbg !5322
  br i1 %tobool, label %if.then, label %if.end, !dbg !5324

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %status.addr, align 8, !dbg !5325
  %6 = load i32, i32* %5, align 4, !dbg !5326
  %or = or i32 %6, 1, !dbg !5326
  store i32 %or, i32* %5, align 4, !dbg !5326
  br label %if.end, !dbg !5327

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !5328

do.body:                                          ; preds = %if.end
  %7 = load i32, i32* @debug, align 4, !dbg !5329
  %tobool1 = icmp ne i32 %7, 0, !dbg !5329
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !5332

if.then2:                                         ; preds = %do.body
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.cx24113_get_status, i64 0, i64 0)) #9, !dbg !5333
  %8 = load i8, i8* %r, align 1, !dbg !5333
  %conv4 = zext i8 %8 to i32, !dbg !5333
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %conv4) #9, !dbg !5333
  br label %if.end6, !dbg !5333

if.end6:                                          ; preds = %if.then2, %do.body
  br label %do.end, !dbg !5332

do.end:                                           ; preds = %if.end6
  ret i32 0, !dbg !5335
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_set_Fref(%struct.cx24113_state* %state, i8 zeroext %high) #0 !dbg !5336 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %high.addr = alloca i8, align 1
  %xtal = alloca i8, align 1
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  store i8 %high, i8* %high.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %high.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.declare(metadata i8* %xtal, metadata !5341, metadata !DIExpression()), !dbg !5342
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5343
  %call = call i32 @cx24113_readreg(%struct.cx24113_state* %0, i8 zeroext 2) #8, !dbg !5344
  %conv = trunc i32 %call to i8, !dbg !5344
  store i8 %conv, i8* %xtal, align 1, !dbg !5342
  %1 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5345
  %rev = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %1, i32 0, i32 2, !dbg !5347
  %2 = load i8, i8* %rev, align 8, !dbg !5347
  %conv1 = zext i8 %2 to i32, !dbg !5345
  %cmp = icmp eq i32 %conv1, 67, !dbg !5348
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5349

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5350
  %vcodiv = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %3, i32 0, i32 9, !dbg !5351
  %4 = load i8, i8* %vcodiv, align 1, !dbg !5351
  %conv3 = zext i8 %4 to i32, !dbg !5350
  %cmp4 = icmp eq i32 %conv3, 4, !dbg !5352
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5353

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %high.addr, align 1, !dbg !5354
  br label %if.end, !dbg !5355

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8, i8* %xtal, align 1, !dbg !5356
  %conv6 = zext i8 %5 to i32, !dbg !5356
  %and = and i32 %conv6, -3, !dbg !5356
  %conv7 = trunc i32 %and to i8, !dbg !5356
  store i8 %conv7, i8* %xtal, align 1, !dbg !5356
  %6 = load i8, i8* %high.addr, align 1, !dbg !5357
  %tobool = icmp ne i8 %6, 0, !dbg !5357
  br i1 %tobool, label %if.then8, label %if.end12, !dbg !5359

if.then8:                                         ; preds = %if.end
  %7 = load i8, i8* %high.addr, align 1, !dbg !5360
  %conv9 = zext i8 %7 to i32, !dbg !5360
  %shl = shl i32 %conv9, 1, !dbg !5361
  %8 = load i8, i8* %xtal, align 1, !dbg !5362
  %conv10 = zext i8 %8 to i32, !dbg !5362
  %or = or i32 %conv10, %shl, !dbg !5362
  %conv11 = trunc i32 %or to i8, !dbg !5362
  store i8 %conv11, i8* %xtal, align 1, !dbg !5362
  br label %if.end12, !dbg !5363

if.end12:                                         ; preds = %if.then8, %if.end
  %9 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5364
  %10 = load i8, i8* %xtal, align 1, !dbg !5365
  %conv13 = zext i8 %10 to i32, !dbg !5365
  %call14 = call i32 @cx24113_writereg(%struct.cx24113_state* %9, i32 2, i32 %conv13) #8, !dbg !5366
  ret i32 %call14, !dbg !5367
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_enable(%struct.cx24113_state* %state, i8 zeroext %enable) #0 !dbg !5368 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %enable.addr = alloca i8, align 1
  %r21 = alloca i8, align 1
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  store i8 %enable, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  call void @llvm.dbg.declare(metadata i8* %r21, metadata !5373, metadata !DIExpression()), !dbg !5374
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5375
  %call = call i32 @cx24113_readreg(%struct.cx24113_state* %0, i8 zeroext 33) #8, !dbg !5376
  %and = and i32 %call, 192, !dbg !5377
  %1 = load i8, i8* %enable.addr, align 1, !dbg !5378
  %conv = zext i8 %1 to i32, !dbg !5378
  %or = or i32 %and, %conv, !dbg !5379
  %conv1 = trunc i32 %or to i8, !dbg !5380
  store i8 %conv1, i8* %r21, align 1, !dbg !5374
  %2 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5381
  %rev = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %2, i32 0, i32 2, !dbg !5383
  %3 = load i8, i8* %rev, align 8, !dbg !5383
  %conv2 = zext i8 %3 to i32, !dbg !5381
  %cmp = icmp eq i32 %conv2, 35, !dbg !5384
  br i1 %cmp, label %if.then, label %if.end, !dbg !5385

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %r21, align 1, !dbg !5386
  %conv4 = zext i8 %4 to i32, !dbg !5386
  %or5 = or i32 %conv4, 2, !dbg !5386
  %conv6 = trunc i32 %or5 to i8, !dbg !5386
  store i8 %conv6, i8* %r21, align 1, !dbg !5386
  br label %if.end, !dbg !5387

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5388
  %6 = load i8, i8* %r21, align 1, !dbg !5389
  %conv7 = zext i8 %6 to i32, !dbg !5389
  %call8 = call i32 @cx24113_writereg(%struct.cx24113_state* %5, i32 33, i32 %conv7) #8, !dbg !5390
  ret i32 %call8, !dbg !5391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cx24113_set_parameters(%struct.cx24113_state* %state) #0 !dbg !5392 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %r = alloca i8, align 1
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata i8* %r, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5399
  %call = call i32 @cx24113_readreg(%struct.cx24113_state* %0, i8 zeroext 16) #8, !dbg !5400
  %and = and i32 %call, 130, !dbg !5401
  %conv = trunc i32 %and to i8, !dbg !5400
  store i8 %conv, i8* %r, align 1, !dbg !5402
  %1 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5403
  %icp_mode = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %1, i32 0, i32 4, !dbg !5404
  %bf.load = load i8, i8* %icp_mode, align 2, !dbg !5404
  %bf.clear = and i8 %bf.load, 1, !dbg !5404
  %conv1 = zext i8 %bf.clear to i32, !dbg !5403
  %2 = load i8, i8* %r, align 1, !dbg !5405
  %conv2 = zext i8 %2 to i32, !dbg !5405
  %or = or i32 %conv2, %conv1, !dbg !5405
  %conv3 = trunc i32 %or to i8, !dbg !5405
  store i8 %conv3, i8* %r, align 1, !dbg !5405
  %3 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5406
  %icp_man = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %3, i32 0, i32 4, !dbg !5407
  %bf.load4 = load i8, i8* %icp_man, align 2, !dbg !5407
  %bf.lshr = lshr i8 %bf.load4, 1, !dbg !5407
  %bf.clear5 = and i8 %bf.lshr, 3, !dbg !5407
  %conv6 = zext i8 %bf.clear5 to i32, !dbg !5406
  %shl = shl i32 %conv6, 4, !dbg !5408
  %4 = load i8, i8* %r, align 1, !dbg !5409
  %conv7 = zext i8 %4 to i32, !dbg !5409
  %or8 = or i32 %conv7, %shl, !dbg !5409
  %conv9 = trunc i32 %or8 to i8, !dbg !5409
  store i8 %conv9, i8* %r, align 1, !dbg !5409
  %5 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5410
  %icp_dig = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %5, i32 0, i32 6, !dbg !5411
  %6 = load i8, i8* %icp_dig, align 4, !dbg !5411
  %conv10 = zext i8 %6 to i32, !dbg !5410
  %shl11 = shl i32 %conv10, 2, !dbg !5412
  %7 = load i8, i8* %r, align 1, !dbg !5413
  %conv12 = zext i8 %7 to i32, !dbg !5413
  %or13 = or i32 %conv12, %shl11, !dbg !5413
  %conv14 = trunc i32 %or13 to i8, !dbg !5413
  store i8 %conv14, i8* %r, align 1, !dbg !5413
  %8 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5414
  %prescaler_mode = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %8, i32 0, i32 13, !dbg !5415
  %bf.load15 = load i8, i8* %prescaler_mode, align 2, !dbg !5415
  %bf.clear16 = and i8 %bf.load15, 1, !dbg !5415
  %conv17 = zext i8 %bf.clear16 to i32, !dbg !5414
  %shl18 = shl i32 %conv17, 5, !dbg !5416
  %9 = load i8, i8* %r, align 1, !dbg !5417
  %conv19 = zext i8 %9 to i32, !dbg !5417
  %or20 = or i32 %conv19, %shl18, !dbg !5417
  %conv21 = trunc i32 %or20 to i8, !dbg !5417
  store i8 %conv21, i8* %r, align 1, !dbg !5417
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5418
  %11 = load i8, i8* %r, align 1, !dbg !5419
  %conv22 = zext i8 %11 to i32, !dbg !5419
  %call23 = call i32 @cx24113_writereg(%struct.cx24113_state* %10, i32 16, i32 %conv22) #8, !dbg !5420
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5421
  %icp_auto_low = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %12, i32 0, i32 4, !dbg !5422
  %bf.load24 = load i8, i8* %icp_auto_low, align 2, !dbg !5422
  %bf.lshr25 = lshr i8 %bf.load24, 3, !dbg !5422
  %bf.clear26 = and i8 %bf.lshr25, 3, !dbg !5422
  %conv27 = zext i8 %bf.clear26 to i32, !dbg !5421
  %shl28 = shl i32 %conv27, 0, !dbg !5423
  %13 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5424
  %icp_auto_mlow = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %13, i32 0, i32 4, !dbg !5425
  %bf.load29 = load i8, i8* %icp_auto_mlow, align 2, !dbg !5425
  %bf.lshr30 = lshr i8 %bf.load29, 5, !dbg !5425
  %bf.clear31 = and i8 %bf.lshr30, 3, !dbg !5425
  %conv32 = zext i8 %bf.clear31 to i32, !dbg !5424
  %shl33 = shl i32 %conv32, 2, !dbg !5426
  %or34 = or i32 %shl28, %shl33, !dbg !5427
  %14 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5428
  %icp_auto_mhi = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %14, i32 0, i32 5, !dbg !5429
  %bf.load35 = load i8, i8* %icp_auto_mhi, align 1, !dbg !5429
  %bf.clear36 = and i8 %bf.load35, 3, !dbg !5429
  %conv37 = zext i8 %bf.clear36 to i32, !dbg !5428
  %shl38 = shl i32 %conv37, 4, !dbg !5430
  %or39 = or i32 %or34, %shl38, !dbg !5431
  %15 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5432
  %icp_auto_hi = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %15, i32 0, i32 5, !dbg !5433
  %bf.load40 = load i8, i8* %icp_auto_hi, align 1, !dbg !5433
  %bf.lshr41 = lshr i8 %bf.load40, 2, !dbg !5433
  %bf.clear42 = and i8 %bf.lshr41, 3, !dbg !5433
  %conv43 = zext i8 %bf.clear42 to i32, !dbg !5432
  %shl44 = shl i32 %conv43, 6, !dbg !5434
  %or45 = or i32 %or39, %shl44, !dbg !5435
  %conv46 = trunc i32 %or45 to i8, !dbg !5436
  store i8 %conv46, i8* %r, align 1, !dbg !5437
  %16 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5438
  %17 = load i8, i8* %r, align 1, !dbg !5439
  %conv47 = zext i8 %17 to i32, !dbg !5439
  %call48 = call i32 @cx24113_writereg(%struct.cx24113_state* %16, i32 17, i32 %conv47) #8, !dbg !5440
  %18 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5441
  %rev = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %18, i32 0, i32 2, !dbg !5443
  %19 = load i8, i8* %rev, align 8, !dbg !5443
  %conv49 = zext i8 %19 to i32, !dbg !5441
  %cmp = icmp eq i32 %conv49, 35, !dbg !5444
  br i1 %cmp, label %if.then, label %if.end, !dbg !5445

if.then:                                          ; preds = %entry
  %20 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5446
  %call51 = call i32 @cx24113_readreg(%struct.cx24113_state* %20, i8 zeroext 32) #8, !dbg !5448
  %and52 = and i32 %call51, 236, !dbg !5449
  %conv53 = trunc i32 %and52 to i8, !dbg !5448
  store i8 %conv53, i8* %r, align 1, !dbg !5450
  %21 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5451
  %lna_gain = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %21, i32 0, i32 7, !dbg !5452
  %bf.load54 = load i8, i8* %lna_gain, align 1, !dbg !5452
  %bf.clear55 = and i8 %bf.load54, 3, !dbg !5452
  %conv56 = zext i8 %bf.clear55 to i32, !dbg !5451
  %22 = load i8, i8* %r, align 1, !dbg !5453
  %conv57 = zext i8 %22 to i32, !dbg !5453
  %or58 = or i32 %conv57, %conv56, !dbg !5453
  %conv59 = trunc i32 %or58 to i8, !dbg !5453
  store i8 %conv59, i8* %r, align 1, !dbg !5453
  %23 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5454
  %rfvga_bias_ctrl = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %23, i32 0, i32 14, !dbg !5455
  %24 = load i8, i8* %rfvga_bias_ctrl, align 1, !dbg !5455
  %conv60 = zext i8 %24 to i32, !dbg !5454
  %shl61 = shl i32 %conv60, 4, !dbg !5456
  %25 = load i8, i8* %r, align 1, !dbg !5457
  %conv62 = zext i8 %25 to i32, !dbg !5457
  %or63 = or i32 %conv62, %shl61, !dbg !5457
  %conv64 = trunc i32 %or63 to i8, !dbg !5457
  store i8 %conv64, i8* %r, align 1, !dbg !5457
  %26 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5458
  %27 = load i8, i8* %r, align 1, !dbg !5459
  %conv65 = zext i8 %27 to i32, !dbg !5459
  %call66 = call i32 @cx24113_writereg(%struct.cx24113_state* %26, i32 32, i32 %conv65) #8, !dbg !5460
  br label %if.end, !dbg !5461

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5462
  %call67 = call i32 @cx24113_readreg(%struct.cx24113_state* %28, i8 zeroext 18) #8, !dbg !5463
  %and68 = and i32 %call67, 3, !dbg !5464
  %conv69 = trunc i32 %and68 to i8, !dbg !5463
  store i8 %conv69, i8* %r, align 1, !dbg !5465
  %29 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5466
  %acp_on = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %29, i32 0, i32 7, !dbg !5467
  %bf.load70 = load i8, i8* %acp_on, align 1, !dbg !5467
  %bf.lshr71 = lshr i8 %bf.load70, 2, !dbg !5467
  %bf.clear72 = and i8 %bf.lshr71, 1, !dbg !5467
  %conv73 = zext i8 %bf.clear72 to i32, !dbg !5466
  %shl74 = shl i32 %conv73, 2, !dbg !5468
  %30 = load i8, i8* %r, align 1, !dbg !5469
  %conv75 = zext i8 %30 to i32, !dbg !5469
  %or76 = or i32 %conv75, %shl74, !dbg !5469
  %conv77 = trunc i32 %or76 to i8, !dbg !5469
  store i8 %conv77, i8* %r, align 1, !dbg !5469
  %31 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5470
  %bs_delay = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %31, i32 0, i32 10, !dbg !5471
  %bf.load78 = load i8, i8* %bs_delay, align 8, !dbg !5471
  %bf.clear79 = and i8 %bf.load78, 15, !dbg !5471
  %conv80 = zext i8 %bf.clear79 to i32, !dbg !5470
  %shl81 = shl i32 %conv80, 4, !dbg !5472
  %32 = load i8, i8* %r, align 1, !dbg !5473
  %conv82 = zext i8 %32 to i32, !dbg !5473
  %or83 = or i32 %conv82, %shl81, !dbg !5473
  %conv84 = trunc i32 %or83 to i8, !dbg !5473
  store i8 %conv84, i8* %r, align 1, !dbg !5473
  %33 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5474
  %34 = load i8, i8* %r, align 1, !dbg !5475
  %conv85 = zext i8 %34 to i32, !dbg !5475
  %call86 = call i32 @cx24113_writereg(%struct.cx24113_state* %33, i32 18, i32 %conv85) #8, !dbg !5476
  %35 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5477
  %call87 = call i32 @cx24113_readreg(%struct.cx24113_state* %35, i8 zeroext 24) #8, !dbg !5478
  %and88 = and i32 %call87, 64, !dbg !5479
  %conv89 = trunc i32 %and88 to i8, !dbg !5478
  store i8 %conv89, i8* %r, align 1, !dbg !5480
  %36 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5481
  %vco_shift = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %36, i32 0, i32 7, !dbg !5482
  %bf.load90 = load i8, i8* %vco_shift, align 1, !dbg !5482
  %bf.lshr91 = lshr i8 %bf.load90, 5, !dbg !5482
  %bf.clear92 = and i8 %bf.lshr91, 1, !dbg !5482
  %conv93 = zext i8 %bf.clear92 to i32, !dbg !5481
  %37 = load i8, i8* %r, align 1, !dbg !5483
  %conv94 = zext i8 %37 to i32, !dbg !5483
  %or95 = or i32 %conv94, %conv93, !dbg !5483
  %conv96 = trunc i32 %or95 to i8, !dbg !5483
  store i8 %conv96, i8* %r, align 1, !dbg !5483
  %38 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5484
  %vco_band = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %38, i32 0, i32 8, !dbg !5486
  %39 = load i8, i8* %vco_band, align 2, !dbg !5486
  %conv97 = zext i8 %39 to i32, !dbg !5484
  %cmp98 = icmp eq i32 %conv97, 128, !dbg !5487
  br i1 %cmp98, label %if.then100, label %if.else, !dbg !5488

if.then100:                                       ; preds = %if.end
  %40 = load i8, i8* %r, align 1, !dbg !5489
  %conv101 = zext i8 %40 to i32, !dbg !5489
  %or102 = or i32 %conv101, 128, !dbg !5489
  %conv103 = trunc i32 %or102 to i8, !dbg !5489
  store i8 %conv103, i8* %r, align 1, !dbg !5489
  br label %if.end110, !dbg !5490

if.else:                                          ; preds = %if.end
  %41 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5491
  %vco_band104 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %41, i32 0, i32 8, !dbg !5492
  %42 = load i8, i8* %vco_band104, align 2, !dbg !5492
  %conv105 = zext i8 %42 to i32, !dbg !5491
  %shl106 = shl i32 %conv105, 1, !dbg !5493
  %43 = load i8, i8* %r, align 1, !dbg !5494
  %conv107 = zext i8 %43 to i32, !dbg !5494
  %or108 = or i32 %conv107, %shl106, !dbg !5494
  %conv109 = trunc i32 %or108 to i8, !dbg !5494
  store i8 %conv109, i8* %r, align 1, !dbg !5494
  br label %if.end110

if.end110:                                        ; preds = %if.else, %if.then100
  %44 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5495
  %45 = load i8, i8* %r, align 1, !dbg !5496
  %conv111 = zext i8 %45 to i32, !dbg !5496
  %call112 = call i32 @cx24113_writereg(%struct.cx24113_state* %44, i32 24, i32 %conv111) #8, !dbg !5497
  %46 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5498
  %call113 = call i32 @cx24113_readreg(%struct.cx24113_state* %46, i8 zeroext 20) #8, !dbg !5499
  %and114 = and i32 %call113, 32, !dbg !5500
  %conv115 = trunc i32 %and114 to i8, !dbg !5499
  store i8 %conv115, i8* %r, align 1, !dbg !5501
  %47 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5502
  %vco_mode = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %47, i32 0, i32 7, !dbg !5503
  %bf.load116 = load i8, i8* %vco_mode, align 1, !dbg !5503
  %bf.lshr117 = lshr i8 %bf.load116, 3, !dbg !5503
  %bf.clear118 = and i8 %bf.lshr117, 3, !dbg !5503
  %conv119 = zext i8 %bf.clear118 to i32, !dbg !5502
  %shl120 = shl i32 %conv119, 6, !dbg !5504
  %48 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5505
  %bs_freqcnt = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %48, i32 0, i32 11, !dbg !5506
  %bf.load121 = load i16, i16* %bs_freqcnt, align 2, !dbg !5506
  %bf.clear122 = and i16 %bf.load121, 8191, !dbg !5506
  %conv123 = zext i16 %bf.clear122 to i32, !dbg !5505
  %shr = ashr i32 %conv123, 8, !dbg !5507
  %and124 = and i32 %shr, 31, !dbg !5508
  %or125 = or i32 %shl120, %and124, !dbg !5509
  %49 = load i8, i8* %r, align 1, !dbg !5510
  %conv126 = zext i8 %49 to i32, !dbg !5510
  %or127 = or i32 %conv126, %or125, !dbg !5510
  %conv128 = trunc i32 %or127 to i8, !dbg !5510
  store i8 %conv128, i8* %r, align 1, !dbg !5510
  %50 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5511
  %51 = load i8, i8* %r, align 1, !dbg !5512
  %conv129 = zext i8 %51 to i32, !dbg !5512
  %call130 = call i32 @cx24113_writereg(%struct.cx24113_state* %50, i32 20, i32 %conv129) #8, !dbg !5513
  %52 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5514
  %53 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5515
  %bs_freqcnt131 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %53, i32 0, i32 11, !dbg !5516
  %bf.load132 = load i16, i16* %bs_freqcnt131, align 2, !dbg !5516
  %bf.clear133 = and i16 %bf.load132, 8191, !dbg !5516
  %conv134 = zext i16 %bf.clear133 to i32, !dbg !5515
  %and135 = and i32 %conv134, 255, !dbg !5517
  %call136 = call i32 @cx24113_writereg(%struct.cx24113_state* %52, i32 21, i32 %and135) #8, !dbg !5518
  %54 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5519
  %55 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5520
  %bs_rdiv = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %55, i32 0, i32 12, !dbg !5521
  %56 = load i16, i16* %bs_rdiv, align 4, !dbg !5521
  %conv137 = zext i16 %56 to i32, !dbg !5520
  %shr138 = ashr i32 %conv137, 4, !dbg !5522
  %and139 = and i32 %shr138, 255, !dbg !5523
  %call140 = call i32 @cx24113_writereg(%struct.cx24113_state* %54, i32 22, i32 %and139) #8, !dbg !5524
  %57 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5525
  %call141 = call i32 @cx24113_readreg(%struct.cx24113_state* %57, i8 zeroext 23) #8, !dbg !5526
  %and142 = and i32 %call141, 15, !dbg !5527
  %58 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5528
  %bs_rdiv143 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %58, i32 0, i32 12, !dbg !5529
  %59 = load i16, i16* %bs_rdiv143, align 4, !dbg !5529
  %conv144 = zext i16 %59 to i32, !dbg !5528
  %and145 = and i32 %conv144, 15, !dbg !5530
  %shl146 = shl i32 %and145, 4, !dbg !5531
  %or147 = or i32 %and142, %shl146, !dbg !5532
  %conv148 = trunc i32 %or147 to i8, !dbg !5533
  store i8 %conv148, i8* %r, align 1, !dbg !5534
  %60 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5535
  %61 = load i8, i8* %r, align 1, !dbg !5536
  %conv149 = zext i8 %61 to i32, !dbg !5536
  %call150 = call i32 @cx24113_writereg(%struct.cx24113_state* %60, i32 23, i32 %conv149) #8, !dbg !5537
  ret void, !dbg !5538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_set_bandwidth(%struct.cx24113_state* %state, i32 %bandwidth_khz) #0 !dbg !5539 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %bandwidth_khz.addr = alloca i32, align 4
  %r = alloca i8, align 1
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  store i32 %bandwidth_khz, i32* %bandwidth_khz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bandwidth_khz.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  call void @llvm.dbg.declare(metadata i8* %r, metadata !5546, metadata !DIExpression()), !dbg !5547
  %0 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5548
  %cmp = icmp ule i32 %0, 19000, !dbg !5550
  br i1 %cmp, label %if.then, label %if.else, !dbg !5551

if.then:                                          ; preds = %entry
  store i8 -64, i8* %r, align 1, !dbg !5552
  br label %if.end4, !dbg !5553

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5554
  %cmp1 = icmp ule i32 %1, 25000, !dbg !5556
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !5557

if.then2:                                         ; preds = %if.else
  store i8 -128, i8* %r, align 1, !dbg !5558
  br label %if.end, !dbg !5559

if.else3:                                         ; preds = %if.else
  store i8 64, i8* %r, align 1, !dbg !5560
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  br label %do.body, !dbg !5561

do.body:                                          ; preds = %if.end4
  %2 = load i32, i32* @debug, align 4, !dbg !5562
  %tobool = icmp ne i32 %2, 0, !dbg !5562
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !5565

if.then5:                                         ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cx24113_set_bandwidth, i64 0, i64 0)) #9, !dbg !5566
  %3 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5566
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %3) #9, !dbg !5566
  br label %if.end7, !dbg !5566

if.end7:                                          ; preds = %if.then5, %do.body
  br label %do.end, !dbg !5565

do.end:                                           ; preds = %if.end7
  %4 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5568
  %mul = mul i32 %4, 10, !dbg !5568
  store i32 %mul, i32* %bandwidth_khz.addr, align 4, !dbg !5568
  %5 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5569
  %sub = sub i32 %5, 10000, !dbg !5569
  store i32 %sub, i32* %bandwidth_khz.addr, align 4, !dbg !5569
  %6 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5570
  %div = udiv i32 %6, 1000, !dbg !5570
  store i32 %div, i32* %bandwidth_khz.addr, align 4, !dbg !5570
  %7 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5571
  %add = add i32 %7, 5, !dbg !5571
  store i32 %add, i32* %bandwidth_khz.addr, align 4, !dbg !5571
  %8 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5572
  %div8 = udiv i32 %8, 10, !dbg !5572
  store i32 %div8, i32* %bandwidth_khz.addr, align 4, !dbg !5572
  br label %do.body9, !dbg !5573

do.body9:                                         ; preds = %do.end
  %9 = load i32, i32* @debug, align 4, !dbg !5574
  %tobool10 = icmp ne i32 %9, 0, !dbg !5574
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !5577

if.then11:                                        ; preds = %do.body9
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cx24113_set_bandwidth, i64 0, i64 0)) #9, !dbg !5578
  %10 = load i8, i8* %r, align 1, !dbg !5578
  %conv = zext i8 %10 to i32, !dbg !5578
  %shr = ashr i32 %conv, 6, !dbg !5578
  %11 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5578
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %shr, i32 %11) #9, !dbg !5578
  br label %if.end14, !dbg !5578

if.end14:                                         ; preds = %if.then11, %do.body9
  br label %do.end15, !dbg !5577

do.end15:                                         ; preds = %if.end14
  %12 = load i32, i32* %bandwidth_khz.addr, align 4, !dbg !5580
  %and = and i32 %12, 63, !dbg !5581
  %13 = load i8, i8* %r, align 1, !dbg !5582
  %conv16 = zext i8 %13 to i32, !dbg !5582
  %or = or i32 %conv16, %and, !dbg !5582
  %conv17 = trunc i32 %or to i8, !dbg !5582
  store i8 %conv17, i8* %r, align 1, !dbg !5582
  %14 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5583
  %15 = load i8, i8* %r, align 1, !dbg !5584
  %conv18 = zext i8 %15 to i32, !dbg !5584
  %call19 = call i32 @cx24113_writereg(%struct.cx24113_state* %14, i32 30, i32 %conv18) #8, !dbg !5585
  ret i32 %call19, !dbg !5586
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_set_clk_inversion(%struct.cx24113_state* %state, i8 zeroext %on) #0 !dbg !5587 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %on.addr = alloca i8, align 1
  %r = alloca i8, align 1
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5588, metadata !DIExpression()), !dbg !5589
  store i8 %on, i8* %on.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %on.addr, metadata !5590, metadata !DIExpression()), !dbg !5591
  call void @llvm.dbg.declare(metadata i8* %r, metadata !5592, metadata !DIExpression()), !dbg !5593
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5594
  %call = call i32 @cx24113_readreg(%struct.cx24113_state* %0, i8 zeroext 16) #8, !dbg !5595
  %and = and i32 %call, 127, !dbg !5596
  %1 = load i8, i8* %on.addr, align 1, !dbg !5597
  %conv = zext i8 %1 to i32, !dbg !5597
  %and1 = and i32 %conv, 1, !dbg !5598
  %shl = shl i32 %and1, 7, !dbg !5599
  %or = or i32 %and, %shl, !dbg !5600
  %conv2 = trunc i32 %or to i8, !dbg !5601
  store i8 %conv2, i8* %r, align 1, !dbg !5593
  %2 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5602
  %3 = load i8, i8* %r, align 1, !dbg !5603
  %conv3 = zext i8 %3 to i32, !dbg !5603
  %call4 = call i32 @cx24113_writereg(%struct.cx24113_state* %2, i32 16, i32 %conv3) #8, !dbg !5604
  ret i32 %call4, !dbg !5605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24113_set_frequency(%struct.cx24113_state* %state, i32 %frequency) #0 !dbg !5606 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %frequency.addr = alloca i32, align 4
  %r = alloca i8, align 1
  %n = alloca i16, align 2
  %f = alloca i32, align 4
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  store i32 %frequency, i32* %frequency.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %frequency.addr, metadata !5609, metadata !DIExpression()), !dbg !5610
  call void @llvm.dbg.declare(metadata i8* %r, metadata !5611, metadata !DIExpression()), !dbg !5612
  store i8 1, i8* %r, align 1, !dbg !5612
  call void @llvm.dbg.declare(metadata i16* %n, metadata !5613, metadata !DIExpression()), !dbg !5614
  store i16 6, i16* %n, align 2, !dbg !5614
  call void @llvm.dbg.declare(metadata i32* %f, metadata !5615, metadata !DIExpression()), !dbg !5616
  store i32 0, i32* %f, align 4, !dbg !5616
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5617
  %call = call i32 @cx24113_readreg(%struct.cx24113_state* %0, i8 zeroext 20) #8, !dbg !5618
  %conv = trunc i32 %call to i8, !dbg !5618
  store i8 %conv, i8* %r, align 1, !dbg !5619
  %1 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5620
  %2 = load i8, i8* %r, align 1, !dbg !5621
  %conv1 = zext i8 %2 to i32, !dbg !5621
  %and = and i32 %conv1, 63, !dbg !5622
  %call2 = call i32 @cx24113_writereg(%struct.cx24113_state* %1, i32 20, i32 %and) #8, !dbg !5623
  %3 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5624
  %call3 = call i32 @cx24113_readreg(%struct.cx24113_state* %3, i8 zeroext 16) #8, !dbg !5625
  %conv4 = trunc i32 %call3 to i8, !dbg !5625
  store i8 %conv4, i8* %r, align 1, !dbg !5626
  %4 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5627
  %5 = load i8, i8* %r, align 1, !dbg !5628
  %conv5 = zext i8 %5 to i32, !dbg !5628
  %and6 = and i32 %conv5, 191, !dbg !5629
  %call7 = call i32 @cx24113_writereg(%struct.cx24113_state* %4, i32 16, i32 %and6) #8, !dbg !5630
  %6 = load i32, i32* %frequency.addr, align 4, !dbg !5631
  %7 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5632
  %frequency8 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %7, i32 0, i32 17, !dbg !5633
  store i32 %6, i32* %frequency8, align 4, !dbg !5634
  br label %do.body, !dbg !5635

do.body:                                          ; preds = %entry
  %8 = load i32, i32* @debug, align 4, !dbg !5636
  %tobool = icmp ne i32 %8, 0, !dbg !5636
  br i1 %tobool, label %if.then, label %if.end, !dbg !5639

if.then:                                          ; preds = %do.body
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cx24113_set_frequency, i64 0, i64 0)) #9, !dbg !5640
  %9 = load i32, i32* %frequency.addr, align 4, !dbg !5640
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %9) #9, !dbg !5640
  br label %if.end, !dbg !5640

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5639

do.end:                                           ; preds = %if.end
  %10 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5642
  call void @cx24113_calc_pll_nf(%struct.cx24113_state* %10, i16* %n, i32* %f) #8, !dbg !5643
  %11 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5644
  %12 = load i16, i16* %n, align 2, !dbg !5645
  %13 = load i32, i32* %f, align 4, !dbg !5646
  %14 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5647
  %refdiv = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %14, i32 0, i32 18, !dbg !5648
  %15 = load i8, i8* %refdiv, align 8, !dbg !5648
  call void @cx24113_set_nfr(%struct.cx24113_state* %11, i16 zeroext %12, i32 %13, i8 zeroext %15) #8, !dbg !5649
  %16 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5650
  %call11 = call i32 @cx24113_readreg(%struct.cx24113_state* %16, i8 zeroext 24) #8, !dbg !5651
  %and12 = and i32 %call11, 191, !dbg !5652
  %conv13 = trunc i32 %and12 to i8, !dbg !5651
  store i8 %conv13, i8* %r, align 1, !dbg !5653
  %17 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5654
  %vcodiv = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %17, i32 0, i32 9, !dbg !5656
  %18 = load i8, i8* %vcodiv, align 1, !dbg !5656
  %conv14 = zext i8 %18 to i32, !dbg !5654
  %cmp = icmp ne i32 %conv14, 2, !dbg !5657
  br i1 %cmp, label %if.then16, label %if.end19, !dbg !5658

if.then16:                                        ; preds = %do.end
  %19 = load i8, i8* %r, align 1, !dbg !5659
  %conv17 = zext i8 %19 to i32, !dbg !5659
  %or = or i32 %conv17, 64, !dbg !5659
  %conv18 = trunc i32 %or to i8, !dbg !5659
  store i8 %conv18, i8* %r, align 1, !dbg !5659
  br label %if.end19, !dbg !5660

if.end19:                                         ; preds = %if.then16, %do.end
  %20 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5661
  %21 = load i8, i8* %r, align 1, !dbg !5662
  %conv20 = zext i8 %21 to i32, !dbg !5662
  %call21 = call i32 @cx24113_writereg(%struct.cx24113_state* %20, i32 24, i32 %conv20) #8, !dbg !5663
  call void @msleep(i32 5) #8, !dbg !5664
  %22 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5665
  %call22 = call i32 @cx24113_readreg(%struct.cx24113_state* %22, i8 zeroext 28) #8, !dbg !5666
  %and23 = and i32 %call22, 239, !dbg !5667
  %conv24 = trunc i32 %and23 to i8, !dbg !5666
  store i8 %conv24, i8* %r, align 1, !dbg !5668
  %23 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5669
  %24 = load i8, i8* %r, align 1, !dbg !5670
  %conv25 = zext i8 %24 to i32, !dbg !5670
  %or26 = or i32 %conv25, 16, !dbg !5671
  %call27 = call i32 @cx24113_writereg(%struct.cx24113_state* %23, i32 28, i32 %or26) #8, !dbg !5672
  ret i32 0, !dbg !5673
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cx24113_calc_pll_nf(%struct.cx24113_state* %state, i16* %n, i32* %f) #0 !dbg !5674 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %n.addr = alloca i16*, align 8
  %f.addr = alloca i32*, align 8
  %N = alloca i32, align 4
  %F = alloca i64, align 8
  %dividend = alloca i64, align 8
  %R = alloca i8, align 1
  %r = alloca i8, align 1
  %vcodiv = alloca i8, align 1
  %factor = alloca i8, align 1
  %freq_hz = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  store i16* %n, i16** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %n.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store i32* %f, i32** %f.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %f.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.declare(metadata i32* %N, metadata !5683, metadata !DIExpression()), !dbg !5684
  call void @llvm.dbg.declare(metadata i64* %F, metadata !5685, metadata !DIExpression()), !dbg !5686
  call void @llvm.dbg.declare(metadata i64* %dividend, metadata !5687, metadata !DIExpression()), !dbg !5688
  call void @llvm.dbg.declare(metadata i8* %R, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata i8* %r, metadata !5691, metadata !DIExpression()), !dbg !5692
  call void @llvm.dbg.declare(metadata i8* %vcodiv, metadata !5693, metadata !DIExpression()), !dbg !5694
  call void @llvm.dbg.declare(metadata i8* %factor, metadata !5695, metadata !DIExpression()), !dbg !5696
  call void @llvm.dbg.declare(metadata i32* %freq_hz, metadata !5697, metadata !DIExpression()), !dbg !5698
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5699
  %frequency = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %0, i32 0, i32 17, !dbg !5700
  %1 = load i32, i32* %frequency, align 4, !dbg !5700
  %mul = mul i32 %1, 1000, !dbg !5701
  store i32 %mul, i32* %freq_hz, align 4, !dbg !5698
  %2 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5702
  %config = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %2, i32 0, i32 1, !dbg !5704
  %3 = load %struct.cx24113_config*, %struct.cx24113_config** %config, align 8, !dbg !5704
  %xtal_khz = getelementptr inbounds %struct.cx24113_config, %struct.cx24113_config* %3, i32 0, i32 1, !dbg !5705
  %4 = load i32, i32* %xtal_khz, align 4, !dbg !5705
  %cmp = icmp ult i32 %4, 20000, !dbg !5706
  br i1 %cmp, label %if.then, label %if.else, !dbg !5707

if.then:                                          ; preds = %entry
  store i8 1, i8* %factor, align 1, !dbg !5708
  br label %if.end, !dbg !5709

if.else:                                          ; preds = %entry
  store i8 2, i8* %factor, align 1, !dbg !5710
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5711
  %rev = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %5, i32 0, i32 2, !dbg !5713
  %6 = load i8, i8* %rev, align 8, !dbg !5713
  %conv = zext i8 %6 to i32, !dbg !5711
  %cmp1 = icmp eq i32 %conv, 35, !dbg !5714
  br i1 %cmp1, label %if.then3, label %if.else10, !dbg !5715

if.then3:                                         ; preds = %if.end
  %7 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5716
  %frequency4 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %7, i32 0, i32 17, !dbg !5719
  %8 = load i32, i32* %frequency4, align 4, !dbg !5719
  %cmp5 = icmp uge i32 %8, 1100000, !dbg !5720
  br i1 %cmp5, label %if.then7, label %if.else8, !dbg !5721

if.then7:                                         ; preds = %if.then3
  store i8 2, i8* %vcodiv, align 1, !dbg !5722
  br label %if.end9, !dbg !5723

if.else8:                                         ; preds = %if.then3
  store i8 4, i8* %vcodiv, align 1, !dbg !5724
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  br label %if.end17, !dbg !5725

if.else10:                                        ; preds = %if.end
  %9 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5726
  %frequency11 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %9, i32 0, i32 17, !dbg !5729
  %10 = load i32, i32* %frequency11, align 4, !dbg !5729
  %cmp12 = icmp uge i32 %10, 1165000, !dbg !5730
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !5731

if.then14:                                        ; preds = %if.else10
  store i8 2, i8* %vcodiv, align 1, !dbg !5732
  br label %if.end16, !dbg !5733

if.else15:                                        ; preds = %if.else10
  store i8 4, i8* %vcodiv, align 1, !dbg !5734
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end9
  %11 = load i8, i8* %vcodiv, align 1, !dbg !5735
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5736
  %vcodiv18 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %12, i32 0, i32 9, !dbg !5737
  store i8 %11, i8* %vcodiv18, align 1, !dbg !5738
  br label %do.body, !dbg !5739

do.body:                                          ; preds = %if.end17
  %13 = load i32, i32* @debug, align 4, !dbg !5740
  %tobool = icmp ne i32 %13, 0, !dbg !5740
  br i1 %tobool, label %if.then19, label %if.end22, !dbg !5743

if.then19:                                        ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cx24113_calc_pll_nf, i64 0, i64 0)) #9, !dbg !5744
  %14 = load i32, i32* %freq_hz, align 4, !dbg !5744
  %15 = load i8, i8* %vcodiv, align 1, !dbg !5744
  %conv20 = zext i8 %15 to i32, !dbg !5744
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 %14, i32 %conv20) #9, !dbg !5744
  br label %if.end22, !dbg !5744

if.end22:                                         ; preds = %if.then19, %do.body
  br label %do.end, !dbg !5743

do.end:                                           ; preds = %if.end22
  store i8 0, i8* %R, align 1, !dbg !5746
  br label %do.body23, !dbg !5747

do.body23:                                        ; preds = %land.end, %do.end
  %16 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5748
  %17 = load i8, i8* %R, align 1, !dbg !5750
  %conv24 = zext i8 %17 to i32, !dbg !5750
  %add = add i32 %conv24, 1, !dbg !5751
  %conv25 = trunc i32 %add to i8, !dbg !5750
  %call26 = call zeroext i8 @cx24113_set_ref_div(%struct.cx24113_state* %16, i8 zeroext %conv25) #8, !dbg !5752
  store i8 %call26, i8* %R, align 1, !dbg !5753
  %18 = load i32, i32* %freq_hz, align 4, !dbg !5754
  %div = sdiv i32 %18, 100, !dbg !5755
  %19 = load i8, i8* %vcodiv, align 1, !dbg !5756
  %conv27 = zext i8 %19 to i32, !dbg !5756
  %mul28 = mul i32 %div, %conv27, !dbg !5757
  %20 = load i8, i8* %R, align 1, !dbg !5758
  %conv29 = zext i8 %20 to i32, !dbg !5758
  %mul30 = mul i32 %mul28, %conv29, !dbg !5759
  store i32 %mul30, i32* %N, align 4, !dbg !5760
  %21 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5761
  %config31 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %21, i32 0, i32 1, !dbg !5762
  %22 = load %struct.cx24113_config*, %struct.cx24113_config** %config31, align 8, !dbg !5762
  %xtal_khz32 = getelementptr inbounds %struct.cx24113_config, %struct.cx24113_config* %22, i32 0, i32 1, !dbg !5763
  %23 = load i32, i32* %xtal_khz32, align 4, !dbg !5763
  %24 = load i8, i8* %factor, align 1, !dbg !5764
  %conv33 = zext i8 %24 to i32, !dbg !5764
  %mul34 = mul i32 %23, %conv33, !dbg !5765
  %mul35 = mul i32 %mul34, 2, !dbg !5766
  %25 = load i32, i32* %N, align 4, !dbg !5767
  %div36 = udiv i32 %25, %mul35, !dbg !5767
  store i32 %div36, i32* %N, align 4, !dbg !5767
  %26 = load i32, i32* %N, align 4, !dbg !5768
  %add37 = add i32 %26, 5, !dbg !5768
  store i32 %add37, i32* %N, align 4, !dbg !5768
  %27 = load i32, i32* %N, align 4, !dbg !5769
  %div38 = sdiv i32 %27, 10, !dbg !5769
  store i32 %div38, i32* %N, align 4, !dbg !5769
  %28 = load i32, i32* %N, align 4, !dbg !5770
  %sub = sub i32 %28, 32, !dbg !5770
  store i32 %sub, i32* %N, align 4, !dbg !5770
  br label %do.cond, !dbg !5771

do.cond:                                          ; preds = %do.body23
  %29 = load i32, i32* %N, align 4, !dbg !5772
  %cmp39 = icmp slt i32 %29, 6, !dbg !5773
  br i1 %cmp39, label %land.rhs, label %land.end, !dbg !5774

land.rhs:                                         ; preds = %do.cond
  %30 = load i8, i8* %R, align 1, !dbg !5775
  %conv41 = zext i8 %30 to i32, !dbg !5775
  %cmp42 = icmp slt i32 %conv41, 3, !dbg !5776
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %31 = phi i1 [ false, %do.cond ], [ %cmp42, %land.rhs ], !dbg !5777
  br i1 %31, label %do.body23, label %do.end44, !dbg !5771, !llvm.loop !5778

do.end44:                                         ; preds = %land.end
  %32 = load i32, i32* %N, align 4, !dbg !5780
  %cmp45 = icmp slt i32 %32, 6, !dbg !5782
  br i1 %cmp45, label %if.then47, label %if.end52, !dbg !5783

if.then47:                                        ; preds = %do.end44
  br label %do.body48, !dbg !5784

do.body48:                                        ; preds = %if.then47
  %call49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !5786
  br label %do.end51, !dbg !5786

do.end51:                                         ; preds = %do.body48
  br label %return, !dbg !5788

if.end52:                                         ; preds = %do.end44
  %33 = load i32, i32* %freq_hz, align 4, !dbg !5789
  %conv53 = sext i32 %33 to i64, !dbg !5789
  store i64 %conv53, i64* %F, align 8, !dbg !5790
  %34 = load i8, i8* %R, align 1, !dbg !5791
  %conv54 = zext i8 %34 to i32, !dbg !5791
  %35 = load i8, i8* %vcodiv, align 1, !dbg !5792
  %conv55 = zext i8 %35 to i32, !dbg !5792
  %mul56 = mul i32 %conv54, %conv55, !dbg !5793
  %mul57 = mul i32 %mul56, 262144, !dbg !5794
  %conv58 = sext i32 %mul57 to i64, !dbg !5795
  %36 = load i64, i64* %F, align 8, !dbg !5796
  %mul59 = mul i64 %36, %conv58, !dbg !5796
  store i64 %mul59, i64* %F, align 8, !dbg !5796
  br label %do.body60, !dbg !5797

do.body60:                                        ; preds = %if.end52
  %37 = load i32, i32* @debug, align 4, !dbg !5798
  %tobool61 = icmp ne i32 %37, 0, !dbg !5798
  br i1 %tobool61, label %if.then62, label %if.end66, !dbg !5801

if.then62:                                        ; preds = %do.body60
  %call63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cx24113_calc_pll_nf, i64 0, i64 0)) #9, !dbg !5802
  %38 = load i32, i32* %N, align 4, !dbg !5802
  %39 = load i64, i64* %F, align 8, !dbg !5802
  %40 = load i8, i8* %R, align 1, !dbg !5802
  %conv64 = zext i8 %40 to i32, !dbg !5802
  %call65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %38, i64 %39, i32 %conv64) #9, !dbg !5802
  br label %if.end66, !dbg !5802

if.end66:                                         ; preds = %if.then62, %do.body60
  br label %do.end68, !dbg !5801

do.end68:                                         ; preds = %if.end66
  %41 = load i64, i64* %F, align 8, !dbg !5804
  store i64 %41, i64* %dividend, align 8, !dbg !5805
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5806, metadata !DIExpression()), !dbg !5808
  %42 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5808
  %config69 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %42, i32 0, i32 1, !dbg !5808
  %43 = load %struct.cx24113_config*, %struct.cx24113_config** %config69, align 8, !dbg !5808
  %xtal_khz70 = getelementptr inbounds %struct.cx24113_config, %struct.cx24113_config* %43, i32 0, i32 1, !dbg !5808
  %44 = load i32, i32* %xtal_khz70, align 4, !dbg !5808
  %mul71 = mul i32 %44, 1000, !dbg !5808
  %45 = load i8, i8* %factor, align 1, !dbg !5808
  %conv72 = zext i8 %45 to i32, !dbg !5808
  %mul73 = mul i32 %mul71, %conv72, !dbg !5808
  %mul74 = mul i32 %mul73, 2, !dbg !5808
  store i32 %mul74, i32* %__base, align 4, !dbg !5808
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5809, metadata !DIExpression()), !dbg !5808
  %46 = load i64, i64* %dividend, align 8, !dbg !5808
  %47 = load i32, i32* %__base, align 4, !dbg !5808
  %conv75 = zext i32 %47 to i64, !dbg !5808
  %rem = urem i64 %46, %conv75, !dbg !5808
  %conv76 = trunc i64 %rem to i32, !dbg !5808
  store i32 %conv76, i32* %__rem, align 4, !dbg !5808
  %48 = load i64, i64* %dividend, align 8, !dbg !5808
  %49 = load i32, i32* %__base, align 4, !dbg !5808
  %conv77 = zext i32 %49 to i64, !dbg !5808
  %div78 = udiv i64 %48, %conv77, !dbg !5808
  store i64 %div78, i64* %dividend, align 8, !dbg !5808
  %50 = load i32, i32* %__rem, align 4, !dbg !5808
  store i32 %50, i32* %tmp, align 4, !dbg !5808
  %51 = load i32, i32* %tmp, align 4, !dbg !5808
  %52 = load i64, i64* %dividend, align 8, !dbg !5810
  store i64 %52, i64* %F, align 8, !dbg !5811
  br label %do.body79, !dbg !5812

do.body79:                                        ; preds = %do.end68
  %53 = load i32, i32* @debug, align 4, !dbg !5813
  %tobool80 = icmp ne i32 %53, 0, !dbg !5813
  br i1 %tobool80, label %if.then81, label %if.end85, !dbg !5816

if.then81:                                        ; preds = %do.body79
  %call82 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cx24113_calc_pll_nf, i64 0, i64 0)) #9, !dbg !5817
  %54 = load i32, i32* %N, align 4, !dbg !5817
  %55 = load i64, i64* %F, align 8, !dbg !5817
  %56 = load i8, i8* %R, align 1, !dbg !5817
  %conv83 = zext i8 %56 to i32, !dbg !5817
  %call84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %54, i64 %55, i32 %conv83) #9, !dbg !5817
  br label %if.end85, !dbg !5817

if.end85:                                         ; preds = %if.then81, %do.body79
  br label %do.end87, !dbg !5816

do.end87:                                         ; preds = %if.end85
  %57 = load i32, i32* %N, align 4, !dbg !5819
  %add88 = add i32 %57, 32, !dbg !5820
  %mul89 = mul i32 %add88, 262144, !dbg !5821
  %conv90 = sext i32 %mul89 to i64, !dbg !5822
  %58 = load i64, i64* %F, align 8, !dbg !5823
  %sub91 = sub i64 %58, %conv90, !dbg !5823
  store i64 %sub91, i64* %F, align 8, !dbg !5823
  br label %do.body92, !dbg !5824

do.body92:                                        ; preds = %do.end87
  %59 = load i32, i32* @debug, align 4, !dbg !5825
  %tobool93 = icmp ne i32 %59, 0, !dbg !5825
  br i1 %tobool93, label %if.then94, label %if.end98, !dbg !5828

if.then94:                                        ; preds = %do.body92
  %call95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cx24113_calc_pll_nf, i64 0, i64 0)) #9, !dbg !5829
  %60 = load i32, i32* %N, align 4, !dbg !5829
  %61 = load i64, i64* %F, align 8, !dbg !5829
  %62 = load i8, i8* %R, align 1, !dbg !5829
  %conv96 = zext i8 %62 to i32, !dbg !5829
  %call97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %60, i64 %61, i32 %conv96) #9, !dbg !5829
  br label %if.end98, !dbg !5829

if.end98:                                         ; preds = %if.then94, %do.body92
  br label %do.end100, !dbg !5828

do.end100:                                        ; preds = %if.end98
  %63 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5831
  %Fwindow_enabled = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %63, i32 0, i32 19, !dbg !5833
  %64 = load i8, i8* %Fwindow_enabled, align 1, !dbg !5833
  %tobool101 = icmp ne i8 %64, 0, !dbg !5831
  br i1 %tobool101, label %if.then102, label %if.end126, !dbg !5834

if.then102:                                       ; preds = %do.end100
  %65 = load i64, i64* %F, align 8, !dbg !5835
  %cmp103 = icmp sgt i64 %65, 129434, !dbg !5838
  br i1 %cmp103, label %if.then105, label %if.end106, !dbg !5839

if.then105:                                       ; preds = %if.then102
  store i64 129434, i64* %F, align 8, !dbg !5840
  br label %if.end106, !dbg !5841

if.end106:                                        ; preds = %if.then105, %if.then102
  %66 = load i64, i64* %F, align 8, !dbg !5842
  %cmp107 = icmp slt i64 %66, -129434, !dbg !5844
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !5845

if.then109:                                       ; preds = %if.end106
  store i64 -129434, i64* %F, align 8, !dbg !5846
  br label %if.end110, !dbg !5847

if.end110:                                        ; preds = %if.then109, %if.end106
  %67 = load i64, i64* %F, align 8, !dbg !5848
  %cmp111 = icmp slt i64 %67, 3277, !dbg !5850
  br i1 %cmp111, label %land.lhs.true, label %lor.lhs.false, !dbg !5851

land.lhs.true:                                    ; preds = %if.end110
  %68 = load i64, i64* %F, align 8, !dbg !5852
  %cmp113 = icmp sgt i64 %68, 0, !dbg !5853
  br i1 %cmp113, label %if.then120, label %lor.lhs.false, !dbg !5854

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end110
  %69 = load i64, i64* %F, align 8, !dbg !5855
  %cmp115 = icmp sgt i64 %69, -3277, !dbg !5856
  br i1 %cmp115, label %land.lhs.true117, label %if.end125, !dbg !5857

land.lhs.true117:                                 ; preds = %lor.lhs.false
  %70 = load i64, i64* %F, align 8, !dbg !5858
  %cmp118 = icmp slt i64 %70, 0, !dbg !5859
  br i1 %cmp118, label %if.then120, label %if.end125, !dbg !5860

if.then120:                                       ; preds = %land.lhs.true117, %land.lhs.true
  store i64 0, i64* %F, align 8, !dbg !5861
  %71 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5863
  %call121 = call i32 @cx24113_readreg(%struct.cx24113_state* %71, i8 zeroext 16) #8, !dbg !5864
  %conv122 = trunc i32 %call121 to i8, !dbg !5864
  store i8 %conv122, i8* %r, align 1, !dbg !5865
  %72 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5866
  %73 = load i8, i8* %r, align 1, !dbg !5867
  %conv123 = zext i8 %73 to i32, !dbg !5867
  %or = or i32 %conv123, 64, !dbg !5868
  %call124 = call i32 @cx24113_writereg(%struct.cx24113_state* %72, i32 16, i32 %or) #8, !dbg !5869
  br label %if.end125, !dbg !5870

if.end125:                                        ; preds = %if.then120, %land.lhs.true117, %lor.lhs.false
  br label %if.end126, !dbg !5871

if.end126:                                        ; preds = %if.end125, %do.end100
  br label %do.body127, !dbg !5872

do.body127:                                       ; preds = %if.end126
  %74 = load i32, i32* @debug, align 4, !dbg !5873
  %tobool128 = icmp ne i32 %74, 0, !dbg !5873
  br i1 %tobool128, label %if.then129, label %if.end133, !dbg !5876

if.then129:                                       ; preds = %do.body127
  %call130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cx24113_calc_pll_nf, i64 0, i64 0)) #9, !dbg !5877
  %75 = load i32, i32* %N, align 4, !dbg !5877
  %76 = load i64, i64* %F, align 8, !dbg !5877
  %77 = load i8, i8* %R, align 1, !dbg !5877
  %conv131 = zext i8 %77 to i32, !dbg !5877
  %call132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %75, i64 %76, i32 %conv131) #9, !dbg !5877
  br label %if.end133, !dbg !5877

if.end133:                                        ; preds = %if.then129, %do.body127
  br label %do.end135, !dbg !5876

do.end135:                                        ; preds = %if.end133
  %78 = load i32, i32* %N, align 4, !dbg !5879
  %conv136 = trunc i32 %78 to i16, !dbg !5880
  %79 = load i16*, i16** %n.addr, align 8, !dbg !5881
  store i16 %conv136, i16* %79, align 2, !dbg !5882
  %80 = load i64, i64* %F, align 8, !dbg !5883
  %conv137 = trunc i64 %80 to i32, !dbg !5884
  %81 = load i32*, i32** %f.addr, align 8, !dbg !5885
  store i32 %conv137, i32* %81, align 4, !dbg !5886
  br label %return, !dbg !5887

return:                                           ; preds = %do.end135, %do.end51
  ret void, !dbg !5887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cx24113_set_nfr(%struct.cx24113_state* %state, i16 zeroext %n, i32 %f, i8 zeroext %r) #0 !dbg !5888 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %n.addr = alloca i16, align 2
  %f.addr = alloca i32, align 4
  %r.addr = alloca i8, align 1
  %reg = alloca i8, align 1
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store i16 %n, i16* %n.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %n.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  store i32 %f, i32* %f.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %f.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  store i8 %r, i8* %r.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %r.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5899, metadata !DIExpression()), !dbg !5900
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5901
  %1 = load i16, i16* %n.addr, align 2, !dbg !5902
  %conv = zext i16 %1 to i32, !dbg !5902
  %shr = ashr i32 %conv, 1, !dbg !5903
  %and = and i32 %shr, 255, !dbg !5904
  %call = call i32 @cx24113_writereg(%struct.cx24113_state* %0, i32 25, i32 %and) #8, !dbg !5905
  %2 = load i16, i16* %n.addr, align 2, !dbg !5906
  %conv1 = zext i16 %2 to i32, !dbg !5906
  %and2 = and i32 %conv1, 1, !dbg !5907
  %shl = shl i32 %and2, 7, !dbg !5908
  %3 = load i32, i32* %f.addr, align 4, !dbg !5909
  %shr3 = ashr i32 %3, 11, !dbg !5910
  %and4 = and i32 %shr3, 127, !dbg !5911
  %or = or i32 %shl, %and4, !dbg !5912
  %conv5 = trunc i32 %or to i8, !dbg !5913
  store i8 %conv5, i8* %reg, align 1, !dbg !5914
  %4 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5915
  %5 = load i8, i8* %reg, align 1, !dbg !5916
  %conv6 = zext i8 %5 to i32, !dbg !5916
  %call7 = call i32 @cx24113_writereg(%struct.cx24113_state* %4, i32 26, i32 %conv6) #8, !dbg !5917
  %6 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5918
  %7 = load i32, i32* %f.addr, align 4, !dbg !5919
  %shr8 = ashr i32 %7, 3, !dbg !5920
  %and9 = and i32 %shr8, 255, !dbg !5921
  %call10 = call i32 @cx24113_writereg(%struct.cx24113_state* %6, i32 27, i32 %and9) #8, !dbg !5922
  %8 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5923
  %call11 = call i32 @cx24113_readreg(%struct.cx24113_state* %8, i8 zeroext 28) #8, !dbg !5924
  %and12 = and i32 %call11, 31, !dbg !5925
  %conv13 = trunc i32 %and12 to i8, !dbg !5924
  store i8 %conv13, i8* %reg, align 1, !dbg !5926
  %9 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5927
  %10 = load i8, i8* %reg, align 1, !dbg !5928
  %conv14 = zext i8 %10 to i32, !dbg !5928
  %11 = load i32, i32* %f.addr, align 4, !dbg !5929
  %and15 = and i32 %11, 7, !dbg !5930
  %shl16 = shl i32 %and15, 5, !dbg !5931
  %or17 = or i32 %conv14, %shl16, !dbg !5932
  %call18 = call i32 @cx24113_writereg(%struct.cx24113_state* %9, i32 28, i32 %or17) #8, !dbg !5933
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5934
  %13 = load i8, i8* %r.addr, align 1, !dbg !5935
  %conv19 = zext i8 %13 to i32, !dbg !5935
  %sub = sub i32 %conv19, 1, !dbg !5936
  %conv20 = trunc i32 %sub to i8, !dbg !5935
  %call21 = call i32 @cx24113_set_Fref(%struct.cx24113_state* %12, i8 zeroext %conv20) #8, !dbg !5937
  ret void, !dbg !5938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @cx24113_set_ref_div(%struct.cx24113_state* %state, i8 zeroext %refdiv) #0 !dbg !5939 {
entry:
  %state.addr = alloca %struct.cx24113_state*, align 8
  %refdiv.addr = alloca i8, align 1
  store %struct.cx24113_state* %state, %struct.cx24113_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24113_state** %state.addr, metadata !5942, metadata !DIExpression()), !dbg !5943
  store i8 %refdiv, i8* %refdiv.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %refdiv.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  %0 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5946
  %rev = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %0, i32 0, i32 2, !dbg !5948
  %1 = load i8, i8* %rev, align 8, !dbg !5948
  %conv = zext i8 %1 to i32, !dbg !5946
  %cmp = icmp eq i32 %conv, 67, !dbg !5949
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5950

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5951
  %vcodiv = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %2, i32 0, i32 9, !dbg !5952
  %3 = load i8, i8* %vcodiv, align 1, !dbg !5952
  %conv2 = zext i8 %3 to i32, !dbg !5951
  %cmp3 = icmp eq i32 %conv2, 4, !dbg !5953
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5954

if.then:                                          ; preds = %land.lhs.true
  store i8 2, i8* %refdiv.addr, align 1, !dbg !5955
  br label %if.end, !dbg !5956

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8, i8* %refdiv.addr, align 1, !dbg !5957
  %5 = load %struct.cx24113_state*, %struct.cx24113_state** %state.addr, align 8, !dbg !5958
  %refdiv5 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %5, i32 0, i32 18, !dbg !5959
  store i8 %4, i8* %refdiv5, align 8, !dbg !5960
  ret i8 %4, !dbg !5961
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
!llvm.module.flags = !{!4305, !4306, !4307, !4308}
!llvm.ident = !{!4309}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 18, type: !307, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !308, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/cx24113.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !{!291, !297, !299, !300, !303, !304, !292, !305}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !293, line: 19, baseType: !294)
!293 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !295, line: 24, baseType: !296)
!295 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!296 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !298, line: 148, baseType: !7)
!298 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !293, line: 23, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !295, line: 31, baseType: !302)
!302 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!303 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !298, line: 107, baseType: !300)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !293, line: 20, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !295, line: 26, baseType: !307)
!307 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!308 = !{!309, !375, !380, !385, !390, !395, !400, !0, !405, !411, !4300}
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 595, type: !311, isLocal: true, isDefinition: true, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !313, line: 69, size: 320, elements: !314)
!313 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!314 = !{!315, !319, !323, !343, !345, !349, !353}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !313, line: 70, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !312, file: !313, line: 71, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !322, line: 76, flags: DIFlagFwdDecl)
!322 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !312, file: !313, line: 72, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !313, line: 47, size: 256, elements: !327)
!327 = !{!328, !329, !334, !339}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !313, line: 49, baseType: !7, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !326, file: !313, line: 51, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!307, !316, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !326, file: !313, line: 53, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!307, !338, !333}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !326, file: !313, line: 55, baseType: !340, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !299}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !312, file: !313, line: 73, baseType: !344, size: 16, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !312, file: !313, line: 74, baseType: !346, size: 8, offset: 208)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !293, line: 16, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !295, line: 20, baseType: !348)
!348 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !313, line: 75, baseType: !350, size: 8, offset: 216)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !293, line: 17, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !295, line: 21, baseType: !352)
!352 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !313, line: 76, baseType: !354, size: 64, offset: 256)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !313, line: 76, size: 64, elements: !355)
!355 = !{!356, !357, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !354, file: !313, line: 77, baseType: !299, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !354, file: !313, line: 78, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !313, line: 86, size: 128, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !360, file: !313, line: 87, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !360, file: !313, line: 88, baseType: !338, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !354, file: !313, line: 79, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !313, line: 92, size: 256, elements: !368)
!368 = !{!369, !370, !371, !373, !374}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !367, file: !313, line: 94, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !367, file: !313, line: 95, baseType: !7, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !367, file: !313, line: 96, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !367, file: !313, line: 97, baseType: !324, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !367, file: !313, line: 98, baseType: !299, size: 64, offset: 192)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 595, type: !377, isLocal: true, isDefinition: true, align: 8)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 216, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 27)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 596, type: !382, isLocal: true, isDefinition: true, align: 8)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 480, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 60)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author222", scope: !2, file: !3, line: 598, type: !387, isLocal: true, isDefinition: true, align: 8)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 400, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 50)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description223", scope: !2, file: !3, line: 599, type: !392, isLocal: true, isDefinition: true, align: 8)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 616, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 77)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 600, type: !397, isLocal: true, isDefinition: true, align: 8)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 392, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 49)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 600, type: !402, isLocal: true, isDefinition: true, align: 8)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 160, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 20)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "cx24113_agc_table", scope: !2, file: !3, line: 484, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 160, elements: !408)
!408 = !{!409, !410}
!409 = !DISubrange(count: 2)
!410 = !DISubrange(count: 10)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "cx24113_tuner_ops", scope: !2, file: !3, line: 524, type: !413, isLocal: true, isDefinition: true)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !415)
!415 = !{!416, !431, !4274, !4275, !4276, !4277, !4278, !4279, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4295, !4299}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !414, file: !51, line: 228, baseType: !417, size: 1216)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !418)
!418 = !{!419, !423, !426, !427, !428, !429, !430}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !417, file: !51, line: 89, baseType: !420, size: 1024)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 1024, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !417, file: !51, line: 91, baseType: !424, size: 32, offset: 1024)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !293, line: 21, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !295, line: 27, baseType: !7)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !417, file: !51, line: 92, baseType: !424, size: 32, offset: 1056)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !417, file: !51, line: 93, baseType: !424, size: 32, offset: 1088)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !417, file: !51, line: 95, baseType: !424, size: 32, offset: 1120)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !417, file: !51, line: 96, baseType: !424, size: 32, offset: 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !417, file: !51, line: 97, baseType: !424, size: 32, offset: 1184)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !414, file: !51, line: 230, baseType: !432, size: 64, offset: 1216)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !437)
!437 = !{!438, !452, !693, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4272, !4273}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !436, file: !51, line: 687, baseType: !439, size: 32)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !440, line: 19, size: 32, elements: !441)
!440 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !439, file: !440, line: 20, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !444, line: 113, baseType: !445)
!444 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !444, line: 111, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !445, file: !444, line: 112, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !298, line: 168, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 166, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !449, file: !298, line: 167, baseType: !307, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !436, file: !51, line: 688, baseType: !453, size: 6016, offset: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !454)
!454 = !{!455, !467, !471, !472, !473, !474, !478, !479, !485, !492, !496, !497, !507, !589, !593, !598, !602, !603, !604, !605, !617, !628, !632, !636, !640, !645, !650, !654, !655, !656, !660, !661}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !453, file: !51, line: 436, baseType: !456, size: 1280)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !456, file: !51, line: 339, baseType: !420, size: 1024)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !456, file: !51, line: 340, baseType: !424, size: 32, offset: 1024)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !456, file: !51, line: 341, baseType: !424, size: 32, offset: 1056)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !456, file: !51, line: 342, baseType: !424, size: 32, offset: 1088)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !456, file: !51, line: 343, baseType: !424, size: 32, offset: 1120)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !456, file: !51, line: 344, baseType: !424, size: 32, offset: 1152)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !456, file: !51, line: 345, baseType: !424, size: 32, offset: 1184)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !456, file: !51, line: 346, baseType: !424, size: 32, offset: 1216)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !456, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !453, file: !51, line: 438, baseType: !468, size: 64, offset: 1280)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 64, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 8)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !453, file: !51, line: 440, baseType: !432, size: 64, offset: 1344)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !453, file: !51, line: 441, baseType: !432, size: 64, offset: 1408)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !453, file: !51, line: 442, baseType: !432, size: 64, offset: 1472)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !453, file: !51, line: 444, baseType: !475, size: 64, offset: 1536)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!307, !435}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !453, file: !51, line: 445, baseType: !475, size: 64, offset: 1600)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !453, file: !51, line: 447, baseType: !480, size: 64, offset: 1664)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!307, !435, !483, !307}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !453, file: !51, line: 450, baseType: !486, size: 64, offset: 1728)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!307, !435, !489, !7, !372, !491}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !298, line: 30, baseType: !490)
!490 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !453, file: !51, line: 457, baseType: !493, size: 64, offset: 1792)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!50, !435}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !453, file: !51, line: 460, baseType: !475, size: 64, offset: 1856)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !453, file: !51, line: 461, baseType: !498, size: 64, offset: 1920)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!307, !435, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !503)
!503 = !{!504, !505, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !502, file: !51, line: 70, baseType: !307, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !502, file: !51, line: 71, baseType: !307, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !502, file: !51, line: 72, baseType: !307, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !453, file: !51, line: 463, baseType: !508, size: 64, offset: 1984)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!307, !435, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !582, !583, !584, !585, !586, !587, !588}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !512, file: !51, line: 587, baseType: !424, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !512, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !512, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !512, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !512, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !512, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !512, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !512, file: !51, line: 595, baseType: !424, size: 32, offset: 224)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !512, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !512, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !512, file: !51, line: 598, baseType: !424, size: 32, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !512, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !512, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !512, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !512, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !512, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !512, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !512, file: !51, line: 610, baseType: !350, size: 8, offset: 544)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !512, file: !51, line: 611, baseType: !350, size: 8, offset: 552)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !512, file: !51, line: 612, baseType: !350, size: 8, offset: 560)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !512, file: !51, line: 613, baseType: !424, size: 32, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !512, file: !51, line: 614, baseType: !424, size: 32, offset: 608)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !512, file: !51, line: 615, baseType: !350, size: 8, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !512, file: !51, line: 621, baseType: !538, size: 384, offset: 672)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 384, elements: !545)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !512, file: !51, line: 616, size: 128, elements: !540)
!540 = !{!541, !542, !543, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !539, file: !51, line: 617, baseType: !350, size: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !539, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !539, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !539, file: !51, line: 620, baseType: !350, size: 8, offset: 96)
!545 = !{!546}
!546 = !DISubrange(count: 3)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !512, file: !51, line: 624, baseType: !424, size: 32, offset: 1056)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !512, file: !51, line: 627, baseType: !424, size: 32, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !512, file: !51, line: 630, baseType: !350, size: 8, offset: 1120)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !512, file: !51, line: 631, baseType: !350, size: 8, offset: 1128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !512, file: !51, line: 632, baseType: !350, size: 8, offset: 1136)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !512, file: !51, line: 633, baseType: !350, size: 8, offset: 1144)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !512, file: !51, line: 634, baseType: !350, size: 8, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !512, file: !51, line: 635, baseType: !350, size: 8, offset: 1160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !512, file: !51, line: 637, baseType: !350, size: 8, offset: 1168)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !512, file: !51, line: 638, baseType: !350, size: 8, offset: 1176)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !512, file: !51, line: 639, baseType: !350, size: 8, offset: 1184)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !512, file: !51, line: 640, baseType: !350, size: 8, offset: 1192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !512, file: !51, line: 641, baseType: !350, size: 8, offset: 1200)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !512, file: !51, line: 642, baseType: !350, size: 8, offset: 1208)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !512, file: !51, line: 643, baseType: !350, size: 8, offset: 1216)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !512, file: !51, line: 644, baseType: !350, size: 8, offset: 1224)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !512, file: !51, line: 645, baseType: !350, size: 8, offset: 1232)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !512, file: !51, line: 647, baseType: !424, size: 32, offset: 1248)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !512, file: !51, line: 650, baseType: !566, size: 296, offset: 1280)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !566, file: !6, line: 826, baseType: !351, size: 8)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !566, file: !6, line: 827, baseType: !570, size: 288, offset: 8)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 288, elements: !580)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !571, file: !6, line: 804, baseType: !351, size: 8)
!574 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !6, line: 805, baseType: !575, size: 64, offset: 8)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !6, line: 805, size: 64, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !575, file: !6, line: 806, baseType: !301, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !575, file: !6, line: 807, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !295, line: 30, baseType: !303)
!580 = !{!581}
!581 = !DISubrange(count: 4)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !512, file: !51, line: 651, baseType: !566, size: 296, offset: 1576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !512, file: !51, line: 652, baseType: !566, size: 296, offset: 1872)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !512, file: !51, line: 653, baseType: !566, size: 296, offset: 2168)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !512, file: !51, line: 654, baseType: !566, size: 296, offset: 2464)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !512, file: !51, line: 655, baseType: !566, size: 296, offset: 2760)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !512, file: !51, line: 656, baseType: !566, size: 296, offset: 3056)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !512, file: !51, line: 657, baseType: !566, size: 296, offset: 3352)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !453, file: !51, line: 466, baseType: !590, size: 64, offset: 2048)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!307, !435, !491}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !453, file: !51, line: 467, baseType: !594, size: 64, offset: 2112)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!307, !435, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !453, file: !51, line: 468, baseType: !599, size: 64, offset: 2176)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!307, !435, !291}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !453, file: !51, line: 469, baseType: !599, size: 64, offset: 2240)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !453, file: !51, line: 470, baseType: !594, size: 64, offset: 2304)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !453, file: !51, line: 472, baseType: !475, size: 64, offset: 2368)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !453, file: !51, line: 473, baseType: !606, size: 64, offset: 2432)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!307, !435, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !611)
!611 = !{!612, !616}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !610, file: !6, line: 174, baseType: !613, size: 48)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 48, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 6)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !610, file: !6, line: 175, baseType: !351, size: 8, offset: 48)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !453, file: !51, line: 474, baseType: !618, size: 64, offset: 2496)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!307, !435, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !623)
!623 = !{!624, !626, !627}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !622, file: !6, line: 196, baseType: !625, size: 32)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 32, elements: !580)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !622, file: !6, line: 197, baseType: !351, size: 8, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !622, file: !6, line: 198, baseType: !307, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !453, file: !51, line: 475, baseType: !629, size: 64, offset: 2560)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!307, !435, !171}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !453, file: !51, line: 477, baseType: !633, size: 64, offset: 2624)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!307, !435, !78}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !453, file: !51, line: 478, baseType: !637, size: 64, offset: 2688)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!307, !435, !73}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !453, file: !51, line: 480, baseType: !641, size: 64, offset: 2752)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!307, !435, !644}
!644 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !453, file: !51, line: 481, baseType: !646, size: 64, offset: 2816)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!307, !435, !649}
!649 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !453, file: !51, line: 482, baseType: !651, size: 64, offset: 2880)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!307, !435, !307}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !453, file: !51, line: 483, baseType: !651, size: 64, offset: 2944)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !453, file: !51, line: 484, baseType: !475, size: 64, offset: 3008)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !453, file: !51, line: 490, baseType: !657, size: 64, offset: 3072)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!175, !435}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !453, file: !51, line: 492, baseType: !414, size: 2304, offset: 3136)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !453, file: !51, line: 493, baseType: !662, size: 576, offset: 5440)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !663)
!663 = !{!664, !668, !679, !680, !685, !686, !687, !688, !689}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !662, file: !51, line: 304, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !665, file: !51, line: 277, baseType: !338, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !662, file: !51, line: 306, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !435, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !674)
!674 = !{!675, !676, !677, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !673, file: !51, line: 115, baseType: !7, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !673, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !673, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !673, file: !51, line: 118, baseType: !300, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !662, file: !51, line: 308, baseType: !599, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !662, file: !51, line: 309, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!307, !435, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !662, file: !51, line: 310, baseType: !432, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !662, file: !51, line: 311, baseType: !432, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !662, file: !51, line: 312, baseType: !432, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !662, file: !51, line: 313, baseType: !651, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !662, file: !51, line: 316, baseType: !690, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!307, !435, !299}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !436, file: !51, line: 689, baseType: !694, size: 64, offset: 6080)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !696)
!696 = !{!697, !698, !704, !705, !706, !708, !709, !4240, !4241, !4242, !4261}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !695, file: !272, line: 102, baseType: !307, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !695, file: !272, line: 103, baseType: !699, size: 128, offset: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !298, line: 178, size: 128, elements: !700)
!700 = !{!701, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !298, line: 179, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !699, file: !298, line: 179, baseType: !702, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !695, file: !272, line: 104, baseType: !699, size: 128, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !695, file: !272, line: 105, baseType: !316, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !695, file: !272, line: 106, baseType: !707, size: 48, offset: 384)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 48, elements: !614)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !695, file: !272, line: 107, baseType: !299, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !695, file: !272, line: 109, baseType: !710, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !712)
!712 = !{!713, !3697, !3698, !3701, !3702, !3753, !3841, !3842, !3843, !3844, !3845, !3854, !3959, !3972, !4167, !4168, !4172, !4174, !4175, !4176, !4180, !4186, !4187, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4228, !4229, !4230, !4233, !4236, !4237, !4238, !4239}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !711, file: !237, line: 462, baseType: !714, size: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !715, line: 64, size: 512, elements: !716)
!715 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!716 = !{!717, !718, !719, !721, !778, !3552, !3691, !3692, !3693, !3694, !3695, !3696}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !714, file: !715, line: 65, baseType: !316, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !714, file: !715, line: 66, baseType: !699, size: 128, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !714, file: !715, line: 67, baseType: !720, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !714, file: !715, line: 68, baseType: !722, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !715, line: 192, size: 704, elements: !724)
!724 = !{!725, !726, !742, !743}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !723, file: !715, line: 193, baseType: !699, size: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !723, file: !715, line: 194, baseType: !727, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !728, line: 83, baseType: !729)
!728 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !728, line: 71, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !728, line: 72, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !728, line: 72, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !732, file: !728, line: 73, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !728, line: 20, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !735, file: !728, line: 21, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !739, line: 25, baseType: !740)
!739 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 25, elements: !741)
!741 = !{}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !723, file: !715, line: 195, baseType: !714, size: 512, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !723, file: !715, line: 196, baseType: !744, size: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !715, line: 156, size: 192, elements: !747)
!747 = !{!748, !753, !758}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !746, file: !715, line: 157, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!307, !722, !720}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !746, file: !715, line: 158, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!316, !722, !720}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !746, file: !715, line: 159, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!307, !722, !720, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !715, line: 148, size: 20736, elements: !765)
!765 = !{!766, !768, !772, !773, !777}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !764, file: !715, line: 149, baseType: !767, size: 192)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 192, elements: !545)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !764, file: !715, line: 150, baseType: !769, size: 4096, offset: 192)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 4096, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !764, file: !715, line: 151, baseType: !307, size: 32, offset: 4288)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !764, file: !715, line: 152, baseType: !774, size: 16384, offset: 4320)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 16384, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 2048)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !764, file: !715, line: 153, baseType: !307, size: 32, offset: 20704)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !714, file: !715, line: 69, baseType: !779, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !715, line: 138, size: 448, elements: !781)
!781 = !{!782, !786, !813, !815, !3514, !3542, !3546}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !780, file: !715, line: 139, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !720}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !780, file: !715, line: 140, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !790, line: 230, size: 128, elements: !791)
!790 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!791 = !{!792, !806}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !789, file: !790, line: 231, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!796, !720, !800, !338}
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !298, line: 60, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !798, line: 73, baseType: !799)
!798 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !798, line: 15, baseType: !644)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !790, line: 30, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !801, file: !790, line: 31, baseType: !316, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !801, file: !790, line: 32, baseType: !805, size: 16, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !298, line: 19, baseType: !296)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !789, file: !790, line: 232, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!796, !720, !800, !316, !810}
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !298, line: 55, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !798, line: 72, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !798, line: 16, baseType: !649)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !780, file: !715, line: 141, baseType: !814, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !780, file: !715, line: 142, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !790, line: 84, size: 320, elements: !820)
!820 = !{!821, !822, !826, !3511, !3512}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !819, file: !790, line: 85, baseType: !316, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !819, file: !790, line: 86, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!805, !720, !800, !307}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !819, file: !790, line: 88, baseType: !827, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!805, !720, !830, !307}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !790, line: 168, size: 448, elements: !832)
!832 = !{!833, !834, !835, !836, !3506, !3507}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !831, file: !790, line: 169, baseType: !801, size: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !831, file: !790, line: 170, baseType: !810, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !831, file: !790, line: 171, baseType: !299, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !831, file: !790, line: 172, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!796, !840, !720, !830, !338, !1006, !810}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !842)
!842 = !{!843, !861, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3489, !3490, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !841, file: !208, line: 920, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !208, line: 917, size: 128, elements: !845)
!845 = !{!846, !852}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !844, file: !208, line: 918, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !848, line: 58, size: 64, elements: !849)
!848 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !847, file: !848, line: 59, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !844, file: !208, line: 919, baseType: !853, size: 128, align: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !298, line: 216, size: 128, align: 64, elements: !854)
!854 = !{!855, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !298, line: 217, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !853, file: !298, line: 218, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !856}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !841, file: !208, line: 921, baseType: !862, size: 128, offset: 128)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !863, line: 8, size: 128, elements: !864)
!863 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!864 = !{!865, !869}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !862, file: !863, line: 9, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !868, line: 18, flags: DIFlagFwdDecl)
!868 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !862, file: !863, line: 10, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !868, line: 89, size: 1536, elements: !872)
!872 = !{!873, !874, !884, !892, !893, !908, !3440, !3442, !3454, !3455, !3456, !3457, !3458, !3463, !3464, !3465}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !871, file: !868, line: 91, baseType: !7, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !871, file: !868, line: 92, baseType: !875, size: 32, offset: 32)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !876, line: 277, baseType: !877)
!876 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !876, line: 277, size: 32, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !877, file: !876, line: 277, baseType: !880, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !876, line: 70, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !876, line: 65, size: 32, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !881, file: !876, line: 66, baseType: !7, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !871, file: !868, line: 93, baseType: !885, size: 128, offset: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !886, line: 38, size: 128, elements: !887)
!886 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!887 = !{!888, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !885, file: !886, line: 39, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !885, file: !886, line: 39, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !871, file: !868, line: 94, baseType: !870, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !871, file: !868, line: 95, baseType: !894, size: 128, offset: 256)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !868, line: 47, size: 128, elements: !895)
!895 = !{!896, !905}
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !868, line: 48, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !868, line: 48, size: 64, elements: !898)
!898 = !{!899, !904}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !868, line: 49, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !868, line: 49, size: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !900, file: !868, line: 50, baseType: !424, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !900, file: !868, line: 50, baseType: !424, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !897, file: !868, line: 52, baseType: !300, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !894, file: !868, line: 54, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !871, file: !868, line: 96, baseType: !909, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !911)
!911 = !{!912, !913, !914, !922, !929, !930, !1071, !3134, !3135, !3136, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3408, !3416, !3417, !3418, !3436, !3437, !3438, !3439}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !910, file: !208, line: 611, baseType: !805, size: 16)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !910, file: !208, line: 612, baseType: !296, size: 16, offset: 16)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !910, file: !208, line: 613, baseType: !915, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !916, line: 23, baseType: !917)
!916 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !916, line: 21, size: 32, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !917, file: !916, line: 22, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !298, line: 32, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !798, line: 49, baseType: !7)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !910, file: !208, line: 614, baseType: !923, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !916, line: 28, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !916, line: 26, size: 32, elements: !925)
!925 = !{!926}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !924, file: !916, line: 27, baseType: !927, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !298, line: 33, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !798, line: 50, baseType: !7)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !910, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !910, file: !208, line: 622, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !934)
!934 = !{!935, !939, !949, !953, !959, !963, !967, !971, !975, !979, !983, !984, !990, !994, !1018, !1047, !1051, !1057, !1062, !1066, !1067}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !933, file: !208, line: 1865, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!870, !909, !870, !7}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !933, file: !208, line: 1866, baseType: !940, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!316, !870, !909, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !945, line: 10, size: 128, elements: !946)
!945 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !944, file: !945, line: 11, baseType: !340, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !944, file: !945, line: 12, baseType: !299, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !933, file: !208, line: 1867, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!307, !909, !307}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !933, file: !208, line: 1868, baseType: !954, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!957, !909, !307}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !933, file: !208, line: 1870, baseType: !960, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!307, !870, !338, !307}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !933, file: !208, line: 1872, baseType: !964, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!307, !909, !870, !805, !489}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !933, file: !208, line: 1873, baseType: !968, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!307, !870, !909, !870}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !933, file: !208, line: 1874, baseType: !972, size: 64, offset: 448)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!307, !909, !870}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !933, file: !208, line: 1875, baseType: !976, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!307, !909, !870, !316}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !933, file: !208, line: 1876, baseType: !980, size: 64, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!307, !909, !870, !805}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !933, file: !208, line: 1877, baseType: !972, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !933, file: !208, line: 1878, baseType: !985, size: 64, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!307, !909, !870, !805, !988}
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !298, line: 16, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !298, line: 13, baseType: !424)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !933, file: !208, line: 1879, baseType: !991, size: 64, offset: 768)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!307, !909, !870, !909, !870, !7}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !933, file: !208, line: 1881, baseType: !995, size: 64, offset: 832)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!307, !870, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1008, !1015, !1016, !1017}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !999, file: !208, line: 220, baseType: !7, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !999, file: !208, line: 221, baseType: !805, size: 16, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !999, file: !208, line: 222, baseType: !915, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !999, file: !208, line: 223, baseType: !923, size: 32, offset: 96)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !999, file: !208, line: 224, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !298, line: 46, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !798, line: 88, baseType: !303)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !999, file: !208, line: 225, baseType: !1009, size: 128, offset: 192)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1010, line: 13, size: 128, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1011 = !{!1012, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1009, file: !1010, line: 14, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1010, line: 8, baseType: !579)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1009, file: !1010, line: 15, baseType: !644, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !999, file: !208, line: 226, baseType: !1009, size: 128, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !999, file: !208, line: 227, baseType: !1009, size: 128, offset: 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !999, file: !208, line: 234, baseType: !840, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !933, file: !208, line: 1882, baseType: !1019, size: 64, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!307, !1022, !1024, !424, !7}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1026, line: 22, size: 1152, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1027 = !{!1028, !1029, !1030, !1031, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1025, file: !1026, line: 23, baseType: !424, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1025, file: !1026, line: 24, baseType: !805, size: 16, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1025, file: !1026, line: 25, baseType: !7, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1025, file: !1026, line: 26, baseType: !1032, size: 32, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !298, line: 104, baseType: !424)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1025, file: !1026, line: 27, baseType: !300, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1025, file: !1026, line: 28, baseType: !300, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1025, file: !1026, line: 37, baseType: !300, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1025, file: !1026, line: 38, baseType: !988, size: 32, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1025, file: !1026, line: 39, baseType: !988, size: 32, offset: 352)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1025, file: !1026, line: 40, baseType: !915, size: 32, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1025, file: !1026, line: 41, baseType: !923, size: 32, offset: 416)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1025, file: !1026, line: 42, baseType: !1006, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1025, file: !1026, line: 43, baseType: !1009, size: 128, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1025, file: !1026, line: 44, baseType: !1009, size: 128, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1025, file: !1026, line: 45, baseType: !1009, size: 128, offset: 768)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1025, file: !1026, line: 46, baseType: !1009, size: 128, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1025, file: !1026, line: 47, baseType: !300, size: 64, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1025, file: !1026, line: 48, baseType: !300, size: 64, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !933, file: !208, line: 1883, baseType: !1048, size: 64, offset: 960)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!796, !870, !338, !810}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !933, file: !208, line: 1884, baseType: !1052, size: 64, offset: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!307, !909, !1055, !300, !300}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !933, file: !208, line: 1886, baseType: !1058, size: 64, offset: 1088)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!307, !909, !1061, !307}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !933, file: !208, line: 1887, baseType: !1063, size: 64, offset: 1152)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!307, !909, !870, !840, !7, !805}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !933, file: !208, line: 1890, baseType: !980, size: 64, offset: 1216)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !933, file: !208, line: 1891, baseType: !1068, size: 64, offset: 1280)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!307, !909, !957, !307}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !910, file: !208, line: 623, baseType: !1072, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1127, !2742, !2824, !2907, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2923, !2927, !2928, !2931, !2932, !2935, !2936, !2937, !2978, !3004, !3005, !3006, !3007, !3008, !3009, !3012, !3014, !3021, !3022, !3024, !3025, !3026, !3085, !3086, !3101, !3102, !3103, !3104, !3105, !3108, !3109, !3110, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1073, file: !208, line: 1417, baseType: !699, size: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1073, file: !208, line: 1418, baseType: !988, size: 32, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1073, file: !208, line: 1419, baseType: !352, size: 8, offset: 160)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1073, file: !208, line: 1420, baseType: !649, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1073, file: !208, line: 1421, baseType: !1006, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1073, file: !208, line: 1422, baseType: !1081, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1093, !1097, !1101, !1105, !1106, !1107, !1117, !1120, !1121, !1122, !1124, !1125, !1126}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1082, file: !208, line: 2229, baseType: !316, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1082, file: !208, line: 2230, baseType: !307, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1082, file: !208, line: 2238, baseType: !1087, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!307, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1092, line: 28, flags: DIFlagFwdDecl)
!1092 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1082, file: !208, line: 2239, baseType: !1094, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1096)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1082, file: !208, line: 2240, baseType: !1098, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!870, !1081, !307, !316, !299}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1082, file: !208, line: 2242, baseType: !1102, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1072}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1082, file: !208, line: 2243, baseType: !320, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !208, line: 2244, baseType: !1081, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1082, file: !208, line: 2245, baseType: !1108, size: 64, offset: 512)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !298, line: 182, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1108, file: !298, line: 183, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !298, line: 186, size: 128, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1112, file: !298, line: 187, baseType: !1111, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1112, file: !298, line: 187, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1082, file: !208, line: 2247, baseType: !1118, offset: 576)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1119, line: 187, elements: !741)
!1119 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1082, file: !208, line: 2248, baseType: !1118, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1082, file: !208, line: 2249, baseType: !1118, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1082, file: !208, line: 2250, baseType: !1123, offset: 576)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1118, elements: !545)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1082, file: !208, line: 2252, baseType: !1118, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1082, file: !208, line: 2253, baseType: !1118, offset: 576)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1082, file: !208, line: 2254, baseType: !1118, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1073, file: !208, line: 1423, baseType: !1128, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1131)
!1131 = !{!1132, !1136, !1140, !1141, !1145, !1151, !1155, !1156, !1157, !1161, !1165, !1166, !1167, !1168, !1174, !1179, !1180, !1187, !1188, !1189, !1190, !2726, !2741}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1130, file: !208, line: 1936, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!909, !1072}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1130, file: !208, line: 1937, baseType: !1137, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !909}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1130, file: !208, line: 1938, baseType: !1137, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1130, file: !208, line: 1940, baseType: !1142, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !909, !307}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1130, file: !208, line: 1941, baseType: !1146, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!307, !909, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1130, file: !208, line: 1942, baseType: !1152, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!307, !909}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1130, file: !208, line: 1943, baseType: !1137, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1130, file: !208, line: 1944, baseType: !1102, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1130, file: !208, line: 1945, baseType: !1158, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!307, !1072, !307}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1130, file: !208, line: 1946, baseType: !1162, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!307, !1072}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1130, file: !208, line: 1947, baseType: !1162, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1130, file: !208, line: 1948, baseType: !1162, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1130, file: !208, line: 1949, baseType: !1162, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1130, file: !208, line: 1950, baseType: !1169, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!307, !870, !1172}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1130, file: !208, line: 1951, baseType: !1175, size: 64, offset: 896)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!307, !1072, !1178, !338}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1130, file: !208, line: 1952, baseType: !1102, size: 64, offset: 960)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1130, file: !208, line: 1954, baseType: !1181, size: 64, offset: 1024)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!307, !1184, !870}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1186, line: 539, flags: DIFlagFwdDecl)
!1186 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1130, file: !208, line: 1955, baseType: !1181, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1130, file: !208, line: 1956, baseType: !1181, size: 64, offset: 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1130, file: !208, line: 1957, baseType: !1181, size: 64, offset: 1216)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1130, file: !208, line: 1963, baseType: !1191, size: 64, offset: 1280)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!307, !1072, !1194, !297}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1196, line: 68, size: 512, align: 128, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198, !1199, !2718, !2725}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !1196, line: 69, baseType: !649, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !1196, line: 77, baseType: !1200, size: 320, offset: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1195, file: !1196, line: 77, size: 320, elements: !1201)
!1201 = !{!1202, !1383, !1388, !1416, !1424, !1430, !2710, !2717}
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1196, line: 78, baseType: !1203, size: 320)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1196, line: 78, size: 320, elements: !1204)
!1204 = !{!1205, !1206, !1381, !1382}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1203, file: !1196, line: 84, baseType: !699, size: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1203, file: !1196, line: 86, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1209)
!1209 = !{!1210, !1211, !1218, !1219, !1220, !1235, !1251, !1252, !1253, !1254, !1374, !1375, !1378, !1379, !1380}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1208, file: !208, line: 452, baseType: !909, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1208, file: !208, line: 453, baseType: !1212, size: 128, offset: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1213, line: 292, size: 128, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1216, !1217}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1212, file: !1213, line: 293, baseType: !727)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1212, file: !1213, line: 295, baseType: !297, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1212, file: !1213, line: 296, baseType: !299, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1208, file: !208, line: 454, baseType: !297, size: 32, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1208, file: !208, line: 455, baseType: !448, size: 32, offset: 224)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1208, file: !208, line: 460, baseType: !1221, size: 128, offset: 256)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1222, line: 125, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1234}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1221, file: !1222, line: 126, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1222, line: 31, size: 64, elements: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1225, file: !1222, line: 32, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1222, line: 24, size: 192, align: 64, elements: !1230)
!1230 = !{!1231, !1232, !1233}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1229, file: !1222, line: 25, baseType: !649, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1229, file: !1222, line: 26, baseType: !1228, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1229, file: !1222, line: 27, baseType: !1228, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1221, file: !1222, line: 127, baseType: !1228, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1208, file: !208, line: 461, baseType: !1236, size: 256, offset: 384)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1237, line: 35, size: 256, elements: !1238)
!1237 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !{!1239, !1247, !1248, !1250}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1236, file: !1237, line: 36, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1241, line: 13, baseType: !1242)
!1241 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !298, line: 175, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !298, line: 173, size: 64, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1243, file: !298, line: 174, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !293, line: 22, baseType: !579)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1236, file: !1237, line: 42, baseType: !1240, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1236, file: !1237, line: 46, baseType: !1249, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !728, line: 29, baseType: !735)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1236, file: !1237, line: 47, baseType: !699, size: 128, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1208, file: !208, line: 462, baseType: !649, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1208, file: !208, line: 463, baseType: !649, size: 64, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1208, file: !208, line: 464, baseType: !649, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1208, file: !208, line: 465, baseType: !1255, size: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1258)
!1258 = !{!1259, !1263, !1267, !1271, !1275, !1279, !1285, !1291, !1295, !1300, !1304, !1308, !1312, !1338, !1342, !1348, !1349, !1350, !1354, !1359, !1363, !1370}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1257, file: !208, line: 368, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!307, !1194, !1149}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1257, file: !208, line: 369, baseType: !1264, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!307, !840, !1194}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1257, file: !208, line: 372, baseType: !1268, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!307, !1207, !1149}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1257, file: !208, line: 375, baseType: !1272, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!307, !1194}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1257, file: !208, line: 381, baseType: !1276, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!307, !840, !1207, !702, !7}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1257, file: !208, line: 383, baseType: !1280, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1257, file: !208, line: 385, baseType: !1286, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!307, !840, !1207, !1006, !7, !7, !1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1257, file: !208, line: 388, baseType: !1292, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!307, !840, !1207, !1006, !7, !7, !1194, !299}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1257, file: !208, line: 393, baseType: !1296, size: 64, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!1299, !1207, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !298, line: 125, baseType: !300)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1257, file: !208, line: 394, baseType: !1301, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !1194, !7, !7}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1257, file: !208, line: 395, baseType: !1305, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!307, !1194, !297}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1257, file: !208, line: 396, baseType: !1309, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !1194}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1257, file: !208, line: 397, baseType: !1313, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!796, !1316, !1336}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1325, !1326, !1327, !1328, !1329}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1317, file: !208, line: 321, baseType: !840, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1317, file: !208, line: 326, baseType: !1006, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1317, file: !208, line: 327, baseType: !1322, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !1316, !644, !644}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1317, file: !208, line: 328, baseType: !299, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1317, file: !208, line: 329, baseType: !307, size: 32, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1317, file: !208, line: 330, baseType: !292, size: 16, offset: 288)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1317, file: !208, line: 331, baseType: !292, size: 16, offset: 304)
!1329 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !208, line: 332, baseType: !1330, size: 64, offset: 320)
!1330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1317, file: !208, line: 332, size: 64, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1330, file: !208, line: 333, baseType: !7, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1330, file: !208, line: 334, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1257, file: !208, line: 402, baseType: !1339, size: 64, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!307, !1207, !1194, !1194, !183}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1257, file: !208, line: 404, baseType: !1343, size: 64, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!489, !1194, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1347, line: 305, baseType: !7)
!1347 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1257, file: !208, line: 405, baseType: !1309, size: 64, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1257, file: !208, line: 406, baseType: !1272, size: 64, offset: 1024)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1257, file: !208, line: 407, baseType: !1351, size: 64, offset: 1088)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!307, !1194, !649, !649}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1257, file: !208, line: 409, baseType: !1355, size: 64, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1194, !1358, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1257, file: !208, line: 410, baseType: !1360, size: 64, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!307, !1207, !1194}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1257, file: !208, line: 413, baseType: !1364, size: 64, offset: 1280)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!307, !1367, !840, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1257, file: !208, line: 415, baseType: !1371, size: 64, offset: 1344)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !840}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1208, file: !208, line: 466, baseType: !649, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1208, file: !208, line: 467, baseType: !1376, size: 32, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1377, line: 8, baseType: !424)
!1377 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1208, file: !208, line: 468, baseType: !727, offset: 992)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1208, file: !208, line: 469, baseType: !699, size: 128, offset: 1024)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1208, file: !208, line: 470, baseType: !299, size: 64, offset: 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1203, file: !1196, line: 87, baseType: !649, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1203, file: !1196, line: 94, baseType: !649, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1196, line: 96, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1196, line: 96, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1384, file: !1196, line: 101, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !298, line: 143, baseType: !300)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1196, line: 103, baseType: !1389, size: 320)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1196, line: 103, size: 320, elements: !1390)
!1390 = !{!1391, !1401, !1404, !1405}
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1196, line: 104, baseType: !1392, size: 128)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1196, line: 104, size: 128, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1392, file: !1196, line: 105, baseType: !699, size: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1196, line: 106, baseType: !1396, size: 128)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !1196, line: 106, size: 128, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1396, file: !1196, line: 107, baseType: !1194, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1396, file: !1196, line: 109, baseType: !307, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1396, file: !1196, line: 110, baseType: !307, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1389, file: !1196, line: 117, baseType: !1402, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1196, line: 117, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1389, file: !1196, line: 119, baseType: !299, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1196, line: 120, baseType: !1406, size: 64, offset: 256)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1196, line: 120, size: 64, elements: !1407)
!1407 = !{!1408, !1409, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1406, file: !1196, line: 121, baseType: !299, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1406, file: !1196, line: 122, baseType: !649, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1196, line: 123, baseType: !1411, size: 32)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !1196, line: 123, size: 32, elements: !1412)
!1412 = !{!1413, !1414, !1415}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1411, file: !1196, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1411, file: !1196, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1411, file: !1196, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1196, line: 130, baseType: !1417, size: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1196, line: 130, size: 192, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1417, file: !1196, line: 131, baseType: !649, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1417, file: !1196, line: 134, baseType: !352, size: 8, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1417, file: !1196, line: 135, baseType: !352, size: 8, offset: 72)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1417, file: !1196, line: 136, baseType: !448, size: 32, offset: 96)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1417, file: !1196, line: 137, baseType: !7, size: 32, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1196, line: 139, baseType: !1425, size: 256)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1196, line: 139, size: 256, elements: !1426)
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1425, file: !1196, line: 140, baseType: !649, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1425, file: !1196, line: 141, baseType: !448, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1425, file: !1196, line: 143, baseType: !699, size: 128, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1196, line: 145, baseType: !1431, size: 256)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1196, line: 145, size: 256, elements: !1432)
!1432 = !{!1433, !1434, !1436, !1437, !2709}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1431, file: !1196, line: 146, baseType: !649, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1431, file: !1196, line: 147, baseType: !1435, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1186, line: 509, baseType: !1194)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1431, file: !1196, line: 148, baseType: !649, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1431, file: !1196, line: 149, baseType: !1438, size: 64, offset: 192)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1431, file: !1196, line: 149, size: 64, elements: !1439)
!1439 = !{!1440, !2708}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1438, file: !1196, line: 150, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1196, line: 388, size: 7296, elements: !1443)
!1443 = !{!1444, !2704}
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1196, line: 389, baseType: !1445, size: 7296)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !1196, line: 389, size: 7296, elements: !1446)
!1446 = !{!1447, !1485, !1486, !1487, !1491, !1492, !1493, !1494, !1495, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1536, !1542, !1545, !1591, !1592, !2688, !2689, !2692, !2693, !2694, !2697, !2698, !2699, !2702, !2703}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1445, file: !1196, line: 390, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1196, line: 305, size: 1472, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1465, !1466, !1471, !1472, !1475, !1479, !1480, !1481, !1482, !1483}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1449, file: !1196, line: 308, baseType: !649, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1449, file: !1196, line: 309, baseType: !649, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1449, file: !1196, line: 313, baseType: !1448, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1449, file: !1196, line: 313, baseType: !1448, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1449, file: !1196, line: 315, baseType: !1229, size: 192, align: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1449, file: !1196, line: 323, baseType: !649, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1449, file: !1196, line: 327, baseType: !1441, size: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1449, file: !1196, line: 333, baseType: !1459, size: 64, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1186, line: 284, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1186, line: 284, size: 64, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1460, file: !1186, line: 284, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1464, line: 19, baseType: !649)
!1464 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1449, file: !1196, line: 334, baseType: !649, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1449, file: !1196, line: 343, baseType: !1467, size: 256, offset: 704)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1449, file: !1196, line: 340, size: 256, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1467, file: !1196, line: 341, baseType: !1229, size: 192, align: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1467, file: !1196, line: 342, baseType: !649, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1449, file: !1196, line: 351, baseType: !699, size: 128, offset: 960)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1449, file: !1196, line: 353, baseType: !1473, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1196, line: 353, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1449, file: !1196, line: 356, baseType: !1476, size: 64, offset: 1152)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1196, line: 356, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1449, file: !1196, line: 359, baseType: !649, size: 64, offset: 1216)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1449, file: !1196, line: 361, baseType: !840, size: 64, offset: 1280)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1449, file: !1196, line: 362, baseType: !299, size: 64, offset: 1344)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1449, file: !1196, line: 365, baseType: !1240, size: 64, offset: 1408)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1449, file: !1196, line: 373, baseType: !1484, offset: 1472)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1196, line: 296, elements: !741)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1445, file: !1196, line: 391, baseType: !1225, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1445, file: !1196, line: 392, baseType: !300, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1445, file: !1196, line: 394, baseType: !1488, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!649, !840, !649, !649, !649, !649}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1445, file: !1196, line: 398, baseType: !649, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1445, file: !1196, line: 399, baseType: !649, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1445, file: !1196, line: 405, baseType: !649, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1445, file: !1196, line: 406, baseType: !649, size: 64, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1445, file: !1196, line: 407, baseType: !1496, size: 64, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1186, line: 286, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1186, line: 286, size: 64, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1498, file: !1186, line: 286, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1464, line: 18, baseType: !649)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1445, file: !1196, line: 416, baseType: !448, size: 32, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1445, file: !1196, line: 428, baseType: !448, size: 32, offset: 608)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1445, file: !1196, line: 437, baseType: !448, size: 32, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1445, file: !1196, line: 447, baseType: !448, size: 32, offset: 672)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1445, file: !1196, line: 450, baseType: !1240, size: 64, offset: 704)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1445, file: !1196, line: 452, baseType: !307, size: 32, offset: 768)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1445, file: !1196, line: 454, baseType: !727, offset: 800)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1445, file: !1196, line: 457, baseType: !1236, size: 256, offset: 832)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1445, file: !1196, line: 459, baseType: !699, size: 128, offset: 1088)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1445, file: !1196, line: 466, baseType: !649, size: 64, offset: 1216)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1445, file: !1196, line: 467, baseType: !649, size: 64, offset: 1280)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1445, file: !1196, line: 469, baseType: !649, size: 64, offset: 1344)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1445, file: !1196, line: 470, baseType: !649, size: 64, offset: 1408)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1445, file: !1196, line: 471, baseType: !1242, size: 64, offset: 1472)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1445, file: !1196, line: 472, baseType: !649, size: 64, offset: 1536)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1445, file: !1196, line: 473, baseType: !649, size: 64, offset: 1600)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1445, file: !1196, line: 474, baseType: !649, size: 64, offset: 1664)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1445, file: !1196, line: 475, baseType: !649, size: 64, offset: 1728)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1445, file: !1196, line: 477, baseType: !727, offset: 1792)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1445, file: !1196, line: 478, baseType: !649, size: 64, offset: 1792)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1445, file: !1196, line: 478, baseType: !649, size: 64, offset: 1856)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1445, file: !1196, line: 478, baseType: !649, size: 64, offset: 1920)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1445, file: !1196, line: 478, baseType: !649, size: 64, offset: 1984)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1445, file: !1196, line: 479, baseType: !649, size: 64, offset: 2048)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1445, file: !1196, line: 479, baseType: !649, size: 64, offset: 2112)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1445, file: !1196, line: 479, baseType: !649, size: 64, offset: 2176)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1445, file: !1196, line: 480, baseType: !649, size: 64, offset: 2240)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1445, file: !1196, line: 480, baseType: !649, size: 64, offset: 2304)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1445, file: !1196, line: 480, baseType: !649, size: 64, offset: 2368)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1445, file: !1196, line: 480, baseType: !649, size: 64, offset: 2432)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1445, file: !1196, line: 482, baseType: !1533, size: 2816, offset: 2496)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 2816, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 44)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1445, file: !1196, line: 488, baseType: !1537, size: 256, offset: 5312)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1538, line: 60, size: 256, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1537, file: !1538, line: 61, baseType: !1541, size: 256)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1240, size: 256, elements: !580)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1445, file: !1196, line: 490, baseType: !1543, size: 64, offset: 5568)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1196, line: 490, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1445, file: !1196, line: 493, baseType: !1546, size: 896, offset: 5632)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1547, line: 53, baseType: !1548)
!1547 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1547, line: 13, size: 896, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1556, !1557, !1564, !1565, !1585, !1586, !1587}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1548, file: !1547, line: 18, baseType: !300, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1548, file: !1547, line: 28, baseType: !1242, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1548, file: !1547, line: 31, baseType: !1236, size: 256, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1548, file: !1547, line: 32, baseType: !1554, size: 64, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1547, line: 32, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1548, file: !1547, line: 37, baseType: !296, size: 16, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1548, file: !1547, line: 40, baseType: !1558, size: 192, offset: 512)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1559, line: 53, size: 192, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1558, file: !1559, line: 54, baseType: !1240, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1558, file: !1559, line: 55, baseType: !727, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1558, file: !1559, line: 59, baseType: !699, size: 128, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1548, file: !1547, line: 41, baseType: !299, size: 64, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1548, file: !1547, line: 42, baseType: !1566, size: 64, offset: 768)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1569, line: 13, size: 896, elements: !1570)
!1569 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1570 = !{!1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1568, file: !1569, line: 14, baseType: !299, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1568, file: !1569, line: 15, baseType: !649, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1568, file: !1569, line: 17, baseType: !649, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1568, file: !1569, line: 17, baseType: !649, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1568, file: !1569, line: 19, baseType: !644, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1568, file: !1569, line: 21, baseType: !644, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1568, file: !1569, line: 22, baseType: !644, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1568, file: !1569, line: 23, baseType: !644, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1568, file: !1569, line: 24, baseType: !644, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1568, file: !1569, line: 25, baseType: !644, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1568, file: !1569, line: 26, baseType: !644, size: 64, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1568, file: !1569, line: 27, baseType: !644, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1568, file: !1569, line: 28, baseType: !644, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1568, file: !1569, line: 29, baseType: !644, size: 64, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1548, file: !1547, line: 44, baseType: !448, size: 32, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1548, file: !1547, line: 50, baseType: !292, size: 16, offset: 864)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1548, file: !1547, line: 51, baseType: !1588, size: 16, offset: 880)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !293, line: 18, baseType: !1589)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !295, line: 23, baseType: !1590)
!1590 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1445, file: !1196, line: 495, baseType: !649, size: 64, offset: 6528)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1445, file: !1196, line: 497, baseType: !1593, size: 64, offset: 6592)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1196, line: 381, size: 384, elements: !1595)
!1595 = !{!1596, !1597, !2687}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1594, file: !1196, line: 382, baseType: !448, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1594, file: !1196, line: 383, baseType: !1598, size: 128, offset: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1196, line: 376, size: 128, elements: !1599)
!1599 = !{!1600, !2685}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1598, file: !1196, line: 377, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1603, line: 640, size: 48640, elements: !1604)
!1603 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1604 = !{!1605, !1611, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1626, !1644, !1655, !1736, !1737, !1738, !1749, !1750, !1752, !1753, !1754, !1755, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1836, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1874, !1876, !1877, !1878, !1890, !1891, !1892, !1893, !1894, !1895, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1919, !1924, !2105, !2106, !2107, !2108, !2112, !2115, !2118, !2121, !2124, !2128, !2229, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2275, !2276, !2277, !2278, !2279, !2284, !2285, !2286, !2289, !2290, !2293, !2296, !2299, !2302, !2345, !2348, !2349, !2428, !2429, !2432, !2433, !2436, !2437, !2438, !2442, !2443, !2444, !2457, !2458, !2459, !2469, !2474, !2477, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1602, file: !1603, line: 646, baseType: !1606, size: 128)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1607, line: 56, size: 128, elements: !1608)
!1607 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !1607, line: 57, baseType: !649, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1606, file: !1607, line: 58, baseType: !424, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1602, file: !1603, line: 649, baseType: !1612, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !644)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1602, file: !1603, line: 657, baseType: !299, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1602, file: !1603, line: 658, baseType: !443, size: 32, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1602, file: !1603, line: 660, baseType: !7, size: 32, offset: 288)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1602, file: !1603, line: 661, baseType: !7, size: 32, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1602, file: !1603, line: 684, baseType: !307, size: 32, offset: 352)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1602, file: !1603, line: 686, baseType: !307, size: 32, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1602, file: !1603, line: 687, baseType: !307, size: 32, offset: 416)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1602, file: !1603, line: 688, baseType: !307, size: 32, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1602, file: !1603, line: 689, baseType: !7, size: 32, offset: 480)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1602, file: !1603, line: 691, baseType: !1623, size: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1603, line: 691, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1602, file: !1603, line: 692, baseType: !1627, size: 832, offset: 576)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1603, line: 451, size: 832, elements: !1628)
!1628 = !{!1629, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1627, file: !1603, line: 453, baseType: !1630, size: 128)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1603, line: 325, size: 128, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1630, file: !1603, line: 326, baseType: !649, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1630, file: !1603, line: 327, baseType: !424, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1627, file: !1603, line: 454, baseType: !1229, size: 192, align: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1627, file: !1603, line: 455, baseType: !699, size: 128, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1627, file: !1603, line: 456, baseType: !7, size: 32, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1627, file: !1603, line: 458, baseType: !300, size: 64, offset: 512)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1627, file: !1603, line: 459, baseType: !300, size: 64, offset: 576)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1627, file: !1603, line: 460, baseType: !300, size: 64, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1627, file: !1603, line: 461, baseType: !300, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1627, file: !1603, line: 463, baseType: !300, size: 64, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1627, file: !1603, line: 465, baseType: !1643, offset: 832)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1603, line: 415, elements: !741)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1602, file: !1603, line: 693, baseType: !1645, size: 384, offset: 1408)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1603, line: 489, size: 384, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1645, file: !1603, line: 490, baseType: !699, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1645, file: !1603, line: 491, baseType: !649, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1645, file: !1603, line: 492, baseType: !649, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1645, file: !1603, line: 493, baseType: !7, size: 32, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1645, file: !1603, line: 494, baseType: !296, size: 16, offset: 288)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1645, file: !1603, line: 495, baseType: !296, size: 16, offset: 304)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1645, file: !1603, line: 497, baseType: !1654, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1602, file: !1603, line: 697, baseType: !1656, size: 1792, offset: 1792)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1603, line: 507, size: 1792, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1733, !1734}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1656, file: !1603, line: 508, baseType: !1229, size: 192, align: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1656, file: !1603, line: 515, baseType: !300, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1656, file: !1603, line: 516, baseType: !300, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1656, file: !1603, line: 517, baseType: !300, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1656, file: !1603, line: 518, baseType: !300, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1656, file: !1603, line: 519, baseType: !300, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1656, file: !1603, line: 526, baseType: !1246, size: 64, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1656, file: !1603, line: 527, baseType: !300, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1656, file: !1603, line: 528, baseType: !7, size: 32, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1656, file: !1603, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1656, file: !1603, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1656, file: !1603, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1656, file: !1603, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1656, file: !1603, line: 563, baseType: !1672, size: 512, offset: 704)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1673)
!1673 = !{!1674, !1682, !1683, !1688, !1729, !1730, !1731, !1732}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1672, file: !191, line: 119, baseType: !1675, size: 256)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1676, line: 9, size: 256, elements: !1677)
!1676 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1675, file: !1676, line: 10, baseType: !1229, size: 192, align: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1675, file: !1676, line: 11, baseType: !1680, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1681, line: 29, baseType: !1246)
!1681 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1672, file: !191, line: 120, baseType: !1680, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1672, file: !191, line: 121, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!190, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1672, file: !191, line: 122, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1691)
!1691 = !{!1692, !1710, !1711, !1714, !1719, !1720, !1724, !1728}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1690, file: !191, line: 160, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !191, line: 215, baseType: !1249)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1694, file: !191, line: 216, baseType: !7, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1694, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1694, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1694, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1694, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1694, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1694, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1694, file: !191, line: 233, baseType: !1680, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1694, file: !191, line: 234, baseType: !1687, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1694, file: !191, line: 235, baseType: !1680, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1694, file: !191, line: 236, baseType: !1687, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1694, file: !191, line: 237, baseType: !1709, size: 4096, offset: 512)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1690, size: 4096, elements: !469)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1690, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1690, file: !191, line: 162, baseType: !1712, size: 32, offset: 96)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !298, line: 27, baseType: !1713)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !798, line: 96, baseType: !307)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1690, file: !191, line: 163, baseType: !1715, size: 32, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !876, line: 276, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !876, line: 276, size: 32, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1716, file: !876, line: 276, baseType: !880, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1690, file: !191, line: 164, baseType: !1687, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1690, file: !191, line: 165, baseType: !1721, size: 128, offset: 256)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1676, line: 14, size: 128, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1721, file: !1676, line: 15, baseType: !1221, size: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1690, file: !191, line: 166, baseType: !1725, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1680}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1690, file: !191, line: 167, baseType: !1680, size: 64, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1672, file: !191, line: 123, baseType: !350, size: 8, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1672, file: !191, line: 124, baseType: !350, size: 8, offset: 456)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1672, file: !191, line: 125, baseType: !350, size: 8, offset: 464)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1672, file: !191, line: 126, baseType: !350, size: 8, offset: 472)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1656, file: !1603, line: 572, baseType: !1672, size: 512, offset: 1216)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1656, file: !1603, line: 580, baseType: !1735, size: 64, offset: 1728)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1602, file: !1603, line: 721, baseType: !7, size: 32, offset: 3584)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1602, file: !1603, line: 722, baseType: !307, size: 32, offset: 3616)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1602, file: !1603, line: 723, baseType: !1739, size: 64, offset: 3648)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1742, line: 17, baseType: !1743)
!1742 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1742, line: 17, size: 64, elements: !1744)
!1744 = !{!1745}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1743, file: !1742, line: 17, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DISubrange(count: 1)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1602, file: !1603, line: 724, baseType: !1741, size: 64, offset: 3712)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1602, file: !1603, line: 749, baseType: !1751, offset: 3776)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1603, line: 290, elements: !741)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1602, file: !1603, line: 751, baseType: !699, size: 128, offset: 3776)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1602, file: !1603, line: 757, baseType: !1441, size: 64, offset: 3904)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1602, file: !1603, line: 758, baseType: !1441, size: 64, offset: 3968)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1602, file: !1603, line: 761, baseType: !1756, size: 320, offset: 4032)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1538, line: 34, size: 320, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1756, file: !1538, line: 35, baseType: !300, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1756, file: !1538, line: 36, baseType: !1760, size: 256, offset: 64)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1448, size: 256, elements: !580)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1602, file: !1603, line: 766, baseType: !307, size: 32, offset: 4352)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1602, file: !1603, line: 767, baseType: !307, size: 32, offset: 4384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1602, file: !1603, line: 768, baseType: !307, size: 32, offset: 4416)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1602, file: !1603, line: 770, baseType: !307, size: 32, offset: 4448)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1602, file: !1603, line: 772, baseType: !649, size: 64, offset: 4480)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1602, file: !1603, line: 775, baseType: !7, size: 32, offset: 4544)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1602, file: !1603, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1602, file: !1603, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1602, file: !1603, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1602, file: !1603, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1602, file: !1603, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1602, file: !1603, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1602, file: !1603, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1602, file: !1603, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1602, file: !1603, line: 831, baseType: !649, size: 64, offset: 4672)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1602, file: !1603, line: 833, baseType: !1777, size: 384, offset: 4736)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1778)
!1778 = !{!1779, !1784}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1777, file: !196, line: 26, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!644, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !196, line: 27, baseType: !1785, size: 320, offset: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1777, file: !196, line: 27, size: 320, elements: !1786)
!1786 = !{!1787, !1796, !1821}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1785, file: !196, line: 36, baseType: !1788, size: 320)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !196, line: 29, size: 320, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1788, file: !196, line: 30, baseType: !597, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1788, file: !196, line: 31, baseType: !424, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1788, file: !196, line: 32, baseType: !424, size: 32, offset: 96)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1788, file: !196, line: 33, baseType: !424, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1788, file: !196, line: 34, baseType: !300, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1788, file: !196, line: 35, baseType: !597, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1785, file: !196, line: 46, baseType: !1797, size: 192)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !196, line: 38, size: 192, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1820}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1797, file: !196, line: 39, baseType: !1712, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1797, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !196, line: 41, baseType: !1802, size: 64, offset: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !196, line: 41, size: 64, elements: !1803)
!1803 = !{!1804, !1812}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1802, file: !196, line: 42, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1807, line: 7, size: 128, elements: !1808)
!1807 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1808 = !{!1809, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1806, file: !1807, line: 8, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !798, line: 93, baseType: !303)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1806, file: !1807, line: 9, baseType: !303, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1802, file: !196, line: 43, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1815, line: 7, size: 64, elements: !1816)
!1815 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1816 = !{!1817, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1814, file: !1815, line: 8, baseType: !1818, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1815, line: 5, baseType: !305)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1814, file: !1815, line: 9, baseType: !305, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1797, file: !196, line: 45, baseType: !300, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1785, file: !196, line: 54, baseType: !1822, size: 256)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1785, file: !196, line: 48, size: 256, elements: !1823)
!1823 = !{!1824, !1832, !1833, !1834, !1835}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1822, file: !196, line: 49, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1827, line: 36, size: 64, elements: !1828)
!1827 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830, !1831}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1826, file: !1827, line: 37, baseType: !307, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1826, file: !1827, line: 38, baseType: !1590, size: 16, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1826, file: !1827, line: 39, baseType: !1590, size: 16, offset: 48)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1822, file: !196, line: 50, baseType: !307, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1822, file: !196, line: 51, baseType: !307, size: 32, offset: 96)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1822, file: !196, line: 52, baseType: !649, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1822, file: !196, line: 53, baseType: !649, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1602, file: !1603, line: 835, baseType: !1837, size: 32, offset: 5120)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !298, line: 22, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !798, line: 28, baseType: !307)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1602, file: !1603, line: 836, baseType: !1837, size: 32, offset: 5152)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1602, file: !1603, line: 840, baseType: !649, size: 64, offset: 5184)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1602, file: !1603, line: 849, baseType: !1601, size: 64, offset: 5248)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1602, file: !1603, line: 852, baseType: !1601, size: 64, offset: 5312)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1602, file: !1603, line: 857, baseType: !699, size: 128, offset: 5376)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1602, file: !1603, line: 858, baseType: !699, size: 128, offset: 5504)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1602, file: !1603, line: 859, baseType: !1601, size: 64, offset: 5632)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1602, file: !1603, line: 867, baseType: !699, size: 128, offset: 5696)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1602, file: !1603, line: 868, baseType: !699, size: 128, offset: 5824)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1602, file: !1603, line: 871, baseType: !1849, size: 64, offset: 5952)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1857, !1858, !1865, !1866}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1850, file: !217, line: 61, baseType: !443, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1850, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !217, line: 63, baseType: !727, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1850, file: !217, line: 65, baseType: !1856, size: 256, offset: 64)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 256, elements: !580)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1850, file: !217, line: 66, baseType: !1108, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1850, file: !217, line: 68, baseType: !1859, size: 128, offset: 384)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1860, line: 40, baseType: !1861)
!1860 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1860, line: 36, size: 128, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !1860, line: 37, baseType: !727)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1861, file: !1860, line: 38, baseType: !699, size: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1850, file: !217, line: 69, baseType: !853, size: 128, align: 64, offset: 512)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1850, file: !217, line: 70, baseType: !1867, size: 128, offset: 640)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1868, size: 128, elements: !1747)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1868, file: !217, line: 55, baseType: !307, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1868, file: !217, line: 56, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1602, file: !1603, line: 872, baseType: !1875, size: 512, offset: 6016)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 512, elements: !580)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1602, file: !1603, line: 873, baseType: !699, size: 128, offset: 6528)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1602, file: !1603, line: 874, baseType: !699, size: 128, offset: 6656)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1602, file: !1603, line: 876, baseType: !1879, size: 64, offset: 6784)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1881, line: 26, size: 192, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1880, file: !1881, line: 27, baseType: !7, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1880, file: !1881, line: 28, baseType: !1885, size: 128, offset: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1886, line: 43, size: 128, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1885, file: !1886, line: 44, baseType: !1249)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1885, file: !1886, line: 45, baseType: !699, size: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1602, file: !1603, line: 879, baseType: !1178, size: 64, offset: 6848)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1602, file: !1603, line: 882, baseType: !1178, size: 64, offset: 6912)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1602, file: !1603, line: 884, baseType: !300, size: 64, offset: 6976)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1602, file: !1603, line: 885, baseType: !300, size: 64, offset: 7040)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1602, file: !1603, line: 890, baseType: !300, size: 64, offset: 7104)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1602, file: !1603, line: 891, baseType: !1896, size: 128, offset: 7168)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1603, line: 242, size: 128, elements: !1897)
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1896, file: !1603, line: 244, baseType: !300, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1896, file: !1603, line: 245, baseType: !300, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1896, file: !1603, line: 246, baseType: !1249, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1602, file: !1603, line: 900, baseType: !649, size: 64, offset: 7296)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1602, file: !1603, line: 901, baseType: !649, size: 64, offset: 7360)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1602, file: !1603, line: 904, baseType: !300, size: 64, offset: 7424)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1602, file: !1603, line: 907, baseType: !300, size: 64, offset: 7488)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1602, file: !1603, line: 910, baseType: !649, size: 64, offset: 7552)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1602, file: !1603, line: 911, baseType: !649, size: 64, offset: 7616)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1602, file: !1603, line: 914, baseType: !1908, size: 640, offset: 7680)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1909, line: 123, size: 640, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1917, !1918}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1908, file: !1909, line: 124, baseType: !1912, size: 576)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 576, elements: !545)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1909, line: 108, size: 192, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1913, file: !1909, line: 109, baseType: !300, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1913, file: !1909, line: 110, baseType: !1721, size: 128, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1908, file: !1909, line: 125, baseType: !7, size: 32, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1908, file: !1909, line: 126, baseType: !7, size: 32, offset: 608)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1602, file: !1603, line: 917, baseType: !1920, size: 192, offset: 8320)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1909, line: 134, size: 192, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1920, file: !1909, line: 135, baseType: !853, size: 128, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1920, file: !1909, line: 136, baseType: !7, size: 32, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1602, file: !1603, line: 923, baseType: !1925, size: 64, offset: 8512)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1928, line: 111, size: 1280, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1948, !1949, !1950, !1951, !1952, !1953, !2058, !2059, !2060, !2061, !2087, !2090, !2100}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1927, file: !1928, line: 112, baseType: !448, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1927, file: !1928, line: 120, baseType: !915, size: 32, offset: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1927, file: !1928, line: 121, baseType: !923, size: 32, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1927, file: !1928, line: 122, baseType: !915, size: 32, offset: 96)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1927, file: !1928, line: 123, baseType: !923, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1927, file: !1928, line: 124, baseType: !915, size: 32, offset: 160)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1927, file: !1928, line: 125, baseType: !923, size: 32, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1927, file: !1928, line: 126, baseType: !915, size: 32, offset: 224)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1927, file: !1928, line: 127, baseType: !923, size: 32, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1927, file: !1928, line: 128, baseType: !7, size: 32, offset: 288)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1927, file: !1928, line: 129, baseType: !1941, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1942, line: 26, baseType: !1943)
!1942 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1942, line: 24, size: 64, elements: !1944)
!1944 = !{!1945}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1943, file: !1942, line: 25, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 64, elements: !1947)
!1947 = !{!409}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1927, file: !1928, line: 130, baseType: !1941, size: 64, offset: 384)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1927, file: !1928, line: 131, baseType: !1941, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1927, file: !1928, line: 132, baseType: !1941, size: 64, offset: 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1927, file: !1928, line: 133, baseType: !1941, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1927, file: !1928, line: 135, baseType: !352, size: 8, offset: 640)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1927, file: !1928, line: 137, baseType: !1954, size: 64, offset: 704)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1956, line: 189, size: 1664, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958, !1959, !1962, !1967, !1968, !1971, !1972, !1977, !1978, !1979, !1980, !1982, !1983, !1984, !1985, !1986, !2022, !2043}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1955, file: !1956, line: 190, baseType: !443, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1955, file: !1956, line: 191, baseType: !1960, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1956, line: 28, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !298, line: 98, baseType: !305)
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !1956, line: 192, baseType: !1963, size: 192, offset: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1955, file: !1956, line: 192, size: 192, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1963, file: !1956, line: 193, baseType: !699, size: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1963, file: !1956, line: 194, baseType: !1229, size: 192, align: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1955, file: !1956, line: 199, baseType: !1236, size: 256, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1955, file: !1956, line: 200, baseType: !1969, size: 64, offset: 512)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1956, line: 200, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1955, file: !1956, line: 201, baseType: !299, size: 64, offset: 576)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !1956, line: 202, baseType: !1973, size: 64, offset: 640)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1955, file: !1956, line: 202, size: 64, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1973, file: !1956, line: 203, baseType: !1013, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1973, file: !1956, line: 204, baseType: !1013, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1955, file: !1956, line: 206, baseType: !1013, size: 64, offset: 704)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1955, file: !1956, line: 207, baseType: !915, size: 32, offset: 768)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1955, file: !1956, line: 208, baseType: !923, size: 32, offset: 800)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1955, file: !1956, line: 209, baseType: !1981, size: 32, offset: 832)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1956, line: 31, baseType: !1032)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1955, file: !1956, line: 210, baseType: !296, size: 16, offset: 864)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1955, file: !1956, line: 211, baseType: !296, size: 16, offset: 880)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1955, file: !1956, line: 215, baseType: !1590, size: 16, offset: 896)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1955, file: !1956, line: 222, baseType: !649, size: 64, offset: 960)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !1956, line: 239, baseType: !1987, size: 320, offset: 1024)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1955, file: !1956, line: 239, size: 320, elements: !1988)
!1988 = !{!1989, !2014}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1987, file: !1956, line: 240, baseType: !1990, size: 320)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1956, line: 108, size: 320, elements: !1991)
!1991 = !{!1992, !1993, !2003, !2006, !2013}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1990, file: !1956, line: 110, baseType: !649, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !1956, line: 111, baseType: !1994, size: 64, offset: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1990, file: !1956, line: 111, size: 64, elements: !1995)
!1995 = !{!1996, !2002}
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1994, file: !1956, line: 112, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1994, file: !1956, line: 112, size: 64, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1997, file: !1956, line: 114, baseType: !292, size: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1997, file: !1956, line: 115, baseType: !2001, size: 48, offset: 16)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 48, elements: !614)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1994, file: !1956, line: 121, baseType: !649, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1990, file: !1956, line: 123, baseType: !2004, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1956, line: 96, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1990, file: !1956, line: 124, baseType: !2007, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1956, line: 102, size: 192, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2008, file: !1956, line: 103, baseType: !853, size: 128, align: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2008, file: !1956, line: 104, baseType: !443, size: 32, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2008, file: !1956, line: 105, baseType: !489, size: 8, offset: 160)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1990, file: !1956, line: 125, baseType: !316, size: 64, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !1956, line: 241, baseType: !2015, size: 320)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1956, line: 241, size: 320, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2015, file: !1956, line: 242, baseType: !649, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2015, file: !1956, line: 243, baseType: !649, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2015, file: !1956, line: 244, baseType: !2004, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2015, file: !1956, line: 245, baseType: !2007, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2015, file: !1956, line: 246, baseType: !338, size: 64, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !1955, file: !1956, line: 254, baseType: !2023, size: 256, offset: 1344)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1955, file: !1956, line: 254, size: 256, elements: !2024)
!2024 = !{!2025, !2031}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2023, file: !1956, line: 255, baseType: !2026, size: 256)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1956, line: 128, size: 256, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2026, file: !1956, line: 129, baseType: !299, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2026, file: !1956, line: 130, baseType: !2030, size: 256)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !580)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !2023, file: !1956, line: 256, baseType: !2032, size: 256)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !1956, line: 256, size: 256, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2032, file: !1956, line: 258, baseType: !699, size: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2032, file: !1956, line: 259, baseType: !2036, size: 128, offset: 128)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2037, line: 22, size: 128, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2036, file: !2037, line: 23, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2037, line: 23, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2036, file: !2037, line: 24, baseType: !649, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1955, file: !1956, line: 274, baseType: !2044, size: 64, offset: 1600)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1956, line: 170, size: 192, elements: !2046)
!2046 = !{!2047, !2056, !2057}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2045, file: !1956, line: 171, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1956, line: 165, baseType: !2049)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!307, !1954, !2052, !2054, !1954}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2005)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2045, file: !1956, line: 172, baseType: !1954, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2045, file: !1956, line: 173, baseType: !2004, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1927, file: !1928, line: 138, baseType: !1954, size: 64, offset: 768)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1927, file: !1928, line: 139, baseType: !1954, size: 64, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1927, file: !1928, line: 140, baseType: !1954, size: 64, offset: 896)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1927, file: !1928, line: 145, baseType: !2062, size: 64, offset: 960)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2064, line: 13, size: 896, elements: !2065)
!2064 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2063, file: !2064, line: 14, baseType: !443, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2063, file: !2064, line: 15, baseType: !448, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2063, file: !2064, line: 16, baseType: !448, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2063, file: !2064, line: 21, baseType: !1240, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2063, file: !2064, line: 27, baseType: !649, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2063, file: !2064, line: 28, baseType: !649, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2063, file: !2064, line: 29, baseType: !1240, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2063, file: !2064, line: 32, baseType: !1112, size: 128, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2063, file: !2064, line: 33, baseType: !915, size: 32, offset: 512)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2063, file: !2064, line: 37, baseType: !1240, size: 64, offset: 576)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2063, file: !2064, line: 44, baseType: !2077, size: 256, offset: 640)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2078, line: 15, size: 256, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085, !2086}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2077, file: !2078, line: 16, baseType: !1249)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2077, file: !2078, line: 18, baseType: !307, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2077, file: !2078, line: 19, baseType: !307, size: 32, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2077, file: !2078, line: 20, baseType: !307, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2077, file: !2078, line: 21, baseType: !307, size: 32, offset: 96)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2077, file: !2078, line: 22, baseType: !649, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2077, file: !2078, line: 23, baseType: !649, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1927, file: !1928, line: 146, baseType: !2088, size: 64, offset: 1024)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1196, line: 516, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1927, file: !1928, line: 147, baseType: !2091, size: 64, offset: 1088)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1928, line: 25, size: 64, elements: !2093)
!2093 = !{!2094, !2095, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2092, file: !1928, line: 26, baseType: !448, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2092, file: !1928, line: 27, baseType: !307, size: 32, offset: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2092, file: !1928, line: 28, baseType: !2097, offset: 64)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, elements: !2098)
!2098 = !{!2099}
!2099 = !DISubrange(count: 0)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !1927, file: !1928, line: 149, baseType: !2101, size: 128, offset: 1152)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1927, file: !1928, line: 149, size: 128, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2101, file: !1928, line: 150, baseType: !307, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2101, file: !1928, line: 151, baseType: !853, size: 128, align: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1602, file: !1603, line: 926, baseType: !1925, size: 64, offset: 8576)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1602, file: !1603, line: 929, baseType: !1925, size: 64, offset: 8640)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1602, file: !1603, line: 933, baseType: !1954, size: 64, offset: 8704)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1602, file: !1603, line: 943, baseType: !2109, size: 128, offset: 8768)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 128, elements: !2110)
!2110 = !{!2111}
!2111 = !DISubrange(count: 16)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1602, file: !1603, line: 945, baseType: !2113, size: 64, offset: 8896)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1603, line: 49, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1602, file: !1603, line: 956, baseType: !2116, size: 64, offset: 8960)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1603, line: 45, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1602, file: !1603, line: 959, baseType: !2119, size: 64, offset: 9024)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1603, line: 959, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1602, file: !1603, line: 962, baseType: !2122, size: 64, offset: 9088)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1603, line: 66, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1602, file: !1603, line: 966, baseType: !2125, size: 64, offset: 9152)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2127, line: 35, flags: DIFlagFwdDecl)
!2127 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1602, file: !1603, line: 969, baseType: !2129, size: 64, offset: 9216)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2131, line: 82, size: 7296, elements: !2132)
!2131 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2132 = !{!2133, !2134, !2135, !2136, !2137, !2138, !2139, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2168, !2177, !2178, !2180, !2181, !2182, !2185, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2215, !2216, !2223, !2224, !2225, !2226, !2227, !2228}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2130, file: !2131, line: 83, baseType: !443, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2130, file: !2131, line: 84, baseType: !448, size: 32, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2130, file: !2131, line: 85, baseType: !307, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2130, file: !2131, line: 86, baseType: !699, size: 128, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2130, file: !2131, line: 88, baseType: !1859, size: 128, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2130, file: !2131, line: 91, baseType: !1601, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2130, file: !2131, line: 94, baseType: !2140, size: 192, offset: 448)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2141, line: 30, size: 192, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2140, file: !2141, line: 31, baseType: !699, size: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2140, file: !2141, line: 32, baseType: !2145, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2146, line: 25, baseType: !2147)
!2146 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2146, line: 23, size: 64, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2147, file: !2146, line: 24, baseType: !1746, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2130, file: !2131, line: 97, baseType: !1108, size: 64, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2130, file: !2131, line: 100, baseType: !307, size: 32, offset: 704)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2130, file: !2131, line: 106, baseType: !307, size: 32, offset: 736)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2130, file: !2131, line: 107, baseType: !1601, size: 64, offset: 768)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2130, file: !2131, line: 110, baseType: !307, size: 32, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2130, file: !2131, line: 111, baseType: !7, size: 32, offset: 864)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2130, file: !2131, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2130, file: !2131, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2130, file: !2131, line: 128, baseType: !307, size: 32, offset: 928)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2130, file: !2131, line: 129, baseType: !699, size: 128, offset: 960)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2130, file: !2131, line: 132, baseType: !1672, size: 512, offset: 1088)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2130, file: !2131, line: 133, baseType: !1680, size: 64, offset: 1600)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2130, file: !2131, line: 140, baseType: !2163, size: 256, offset: 1664)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2164, size: 256, elements: !1947)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2131, line: 38, size: 128, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2164, file: !2131, line: 39, baseType: !300, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2164, file: !2131, line: 40, baseType: !300, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2130, file: !2131, line: 146, baseType: !2169, size: 192, offset: 1920)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2131, line: 66, size: 192, elements: !2170)
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2169, file: !2131, line: 67, baseType: !2172, size: 192)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2131, line: 47, size: 192, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2172, file: !2131, line: 48, baseType: !1242, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2172, file: !2131, line: 49, baseType: !1242, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2172, file: !2131, line: 50, baseType: !1242, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2130, file: !2131, line: 150, baseType: !1908, size: 640, offset: 2112)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2130, file: !2131, line: 153, baseType: !2179, size: 256, offset: 2752)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1849, size: 256, elements: !580)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2130, file: !2131, line: 159, baseType: !1849, size: 64, offset: 3008)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2130, file: !2131, line: 162, baseType: !307, size: 32, offset: 3072)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2130, file: !2131, line: 164, baseType: !2183, size: 64, offset: 3136)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2131, line: 164, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2130, file: !2131, line: 175, baseType: !2186, size: 32, offset: 3200)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !876, line: 805, baseType: !2187)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !876, line: 798, size: 32, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2187, file: !876, line: 803, baseType: !875, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2187, file: !876, line: 804, baseType: !727, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2130, file: !2131, line: 176, baseType: !300, size: 64, offset: 3264)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2130, file: !2131, line: 176, baseType: !300, size: 64, offset: 3328)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2130, file: !2131, line: 176, baseType: !300, size: 64, offset: 3392)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2130, file: !2131, line: 176, baseType: !300, size: 64, offset: 3456)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2130, file: !2131, line: 177, baseType: !300, size: 64, offset: 3520)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2130, file: !2131, line: 178, baseType: !300, size: 64, offset: 3584)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2130, file: !2131, line: 179, baseType: !1896, size: 128, offset: 3648)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2130, file: !2131, line: 180, baseType: !649, size: 64, offset: 3776)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2130, file: !2131, line: 180, baseType: !649, size: 64, offset: 3840)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2130, file: !2131, line: 180, baseType: !649, size: 64, offset: 3904)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2130, file: !2131, line: 180, baseType: !649, size: 64, offset: 3968)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2130, file: !2131, line: 181, baseType: !649, size: 64, offset: 4032)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2130, file: !2131, line: 181, baseType: !649, size: 64, offset: 4096)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2130, file: !2131, line: 181, baseType: !649, size: 64, offset: 4160)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2130, file: !2131, line: 181, baseType: !649, size: 64, offset: 4224)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2130, file: !2131, line: 182, baseType: !649, size: 64, offset: 4288)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2130, file: !2131, line: 182, baseType: !649, size: 64, offset: 4352)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2130, file: !2131, line: 182, baseType: !649, size: 64, offset: 4416)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2130, file: !2131, line: 182, baseType: !649, size: 64, offset: 4480)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2130, file: !2131, line: 183, baseType: !649, size: 64, offset: 4544)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2130, file: !2131, line: 183, baseType: !649, size: 64, offset: 4608)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2130, file: !2131, line: 184, baseType: !2213, offset: 4672)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2214, line: 12, elements: !741)
!2214 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2130, file: !2131, line: 192, baseType: !302, size: 64, offset: 4672)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2130, file: !2131, line: 203, baseType: !2217, size: 2048, offset: 4736)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2218, size: 2048, elements: !2110)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2219, line: 43, size: 128, elements: !2220)
!2219 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2218, file: !2219, line: 44, baseType: !812, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2218, file: !2219, line: 45, baseType: !812, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2130, file: !2131, line: 220, baseType: !489, size: 8, offset: 6784)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2130, file: !2131, line: 221, baseType: !1590, size: 16, offset: 6800)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2130, file: !2131, line: 222, baseType: !1590, size: 16, offset: 6816)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2130, file: !2131, line: 224, baseType: !1441, size: 64, offset: 6848)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2130, file: !2131, line: 227, baseType: !1558, size: 192, offset: 6912)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2130, file: !2131, line: 233, baseType: !1558, size: 192, offset: 7104)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1602, file: !1603, line: 970, baseType: !2230, size: 64, offset: 9280)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2131, line: 20, size: 16576, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2231, file: !2131, line: 21, baseType: !727)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2231, file: !2131, line: 22, baseType: !443, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2231, file: !2131, line: 23, baseType: !1859, size: 128, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2231, file: !2131, line: 24, baseType: !2237, size: 16384, offset: 192)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2238, size: 16384, elements: !770)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2141, line: 49, size: 256, elements: !2239)
!2239 = !{!2240}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2238, file: !2141, line: 50, baseType: !2241, size: 256)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2141, line: 35, size: 256, elements: !2242)
!2242 = !{!2243, !2250, !2251, !2257}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2241, file: !2141, line: 37, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2245, line: 19, baseType: !2246)
!2245 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2245, line: 18, baseType: !2248)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !307}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2241, file: !2141, line: 38, baseType: !649, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2241, file: !2141, line: 44, baseType: !2252, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2245, line: 22, baseType: !2253)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2245, line: 21, baseType: !2255)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2241, file: !2141, line: 46, baseType: !2145, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1602, file: !1603, line: 971, baseType: !2145, size: 64, offset: 9344)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1602, file: !1603, line: 972, baseType: !2145, size: 64, offset: 9408)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1602, file: !1603, line: 974, baseType: !2145, size: 64, offset: 9472)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1602, file: !1603, line: 975, baseType: !2140, size: 192, offset: 9536)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1602, file: !1603, line: 976, baseType: !649, size: 64, offset: 9728)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1602, file: !1603, line: 977, baseType: !810, size: 64, offset: 9792)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1602, file: !1603, line: 978, baseType: !7, size: 32, offset: 9856)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1602, file: !1603, line: 980, baseType: !856, size: 64, offset: 9920)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1602, file: !1603, line: 989, baseType: !2267, size: 128, offset: 9984)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2268, line: 35, size: 128, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2267, file: !2268, line: 36, baseType: !307, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2267, file: !2268, line: 37, baseType: !448, size: 32, offset: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2267, file: !2268, line: 38, baseType: !2273, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2268, line: 23, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1602, file: !1603, line: 992, baseType: !300, size: 64, offset: 10112)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1602, file: !1603, line: 993, baseType: !300, size: 64, offset: 10176)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1602, file: !1603, line: 996, baseType: !727, offset: 10240)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1602, file: !1603, line: 999, baseType: !1249, offset: 10240)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1602, file: !1603, line: 1001, baseType: !2280, size: 64, offset: 10240)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1603, line: 636, size: 64, elements: !2281)
!2281 = !{!2282}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2280, file: !1603, line: 637, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1602, file: !1603, line: 1005, baseType: !1221, size: 128, offset: 10304)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1602, file: !1603, line: 1007, baseType: !1601, size: 64, offset: 10432)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1602, file: !1603, line: 1009, baseType: !2287, size: 64, offset: 10496)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1603, line: 1009, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1602, file: !1603, line: 1043, baseType: !299, size: 64, offset: 10560)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1602, file: !1603, line: 1046, baseType: !2291, size: 64, offset: 10624)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1603, line: 41, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1602, file: !1603, line: 1050, baseType: !2294, size: 64, offset: 10688)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1603, line: 42, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1602, file: !1603, line: 1054, baseType: !2297, size: 64, offset: 10752)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1603, line: 55, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1602, file: !1603, line: 1056, baseType: !2300, size: 64, offset: 10816)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1603, line: 40, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1602, file: !1603, line: 1058, baseType: !2303, size: 64, offset: 10880)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2305, line: 99, size: 704, elements: !2306)
!2305 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2306 = !{!2307, !2308, !2309, !2310, !2311, !2312, !2313, !2332, !2333}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2304, file: !2305, line: 100, baseType: !1240, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2304, file: !2305, line: 101, baseType: !448, size: 32, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2304, file: !2305, line: 102, baseType: !448, size: 32, offset: 96)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2304, file: !2305, line: 105, baseType: !727, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2304, file: !2305, line: 107, baseType: !296, size: 16, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2304, file: !2305, line: 109, baseType: !1212, size: 128, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2304, file: !2305, line: 110, baseType: !2314, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2305, line: 73, size: 448, elements: !2316)
!2316 = !{!2317, !2320, !2321, !2326, !2331}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2315, file: !2305, line: 74, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2305, line: 74, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2315, file: !2305, line: 75, baseType: !2303, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !2305, line: 83, baseType: !2322, size: 128, offset: 128)
!2322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !2305, line: 83, size: 128, elements: !2323)
!2323 = !{!2324, !2325}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2322, file: !2305, line: 84, baseType: !699, size: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2322, file: !2305, line: 85, baseType: !1402, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !2305, line: 87, baseType: !2327, size: 128, offset: 256)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !2305, line: 87, size: 128, elements: !2328)
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2327, file: !2305, line: 88, baseType: !1112, size: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2327, file: !2305, line: 89, baseType: !853, size: 128, align: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2315, file: !2305, line: 92, baseType: !7, size: 32, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2304, file: !2305, line: 111, baseType: !1108, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2304, file: !2305, line: 113, baseType: !2334, size: 256, offset: 448)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2335, line: 102, size: 256, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2338, !2339}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2334, file: !2335, line: 103, baseType: !1240, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2334, file: !2335, line: 104, baseType: !699, size: 128, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2334, file: !2335, line: 105, baseType: !2340, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2335, line: 21, baseType: !2341)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1602, file: !1603, line: 1061, baseType: !2346, size: 64, offset: 10944)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1603, line: 43, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1602, file: !1603, line: 1064, baseType: !649, size: 64, offset: 11008)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1602, file: !1603, line: 1065, baseType: !2350, size: 64, offset: 11072)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2141, line: 14, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2141, line: 12, size: 384, elements: !2353)
!2353 = !{!2354}
!2354 = !DIDerivedType(tag: DW_TAG_member, scope: !2352, file: !2141, line: 13, baseType: !2355, size: 384)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2352, file: !2141, line: 13, size: 384, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2355, file: !2141, line: 13, baseType: !307, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2355, file: !2141, line: 13, baseType: !307, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2355, file: !2141, line: 13, baseType: !307, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2355, file: !2141, line: 13, baseType: !2361, size: 256, offset: 128)
!2361 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2362, line: 32, size: 256, elements: !2363)
!2362 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2369, !2382, !2388, !2397, !2417, !2422}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2361, file: !2362, line: 37, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2361, file: !2362, line: 34, size: 64, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2365, file: !2362, line: 35, baseType: !1838, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2365, file: !2362, line: 36, baseType: !921, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2361, file: !2362, line: 45, baseType: !2370, size: 192)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2361, file: !2362, line: 40, size: 192, elements: !2371)
!2371 = !{!2372, !2374, !2375, !2381}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2370, file: !2362, line: 41, baseType: !2373, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !798, line: 95, baseType: !307)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2370, file: !2362, line: 42, baseType: !307, size: 32, offset: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2370, file: !2362, line: 43, baseType: !2376, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2362, line: 11, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2362, line: 8, size: 64, elements: !2378)
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2377, file: !2362, line: 9, baseType: !307, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2377, file: !2362, line: 10, baseType: !299, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2370, file: !2362, line: 44, baseType: !307, size: 32, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2361, file: !2362, line: 52, baseType: !2383, size: 128)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2361, file: !2362, line: 48, size: 128, elements: !2384)
!2384 = !{!2385, !2386, !2387}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2383, file: !2362, line: 49, baseType: !1838, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2383, file: !2362, line: 50, baseType: !921, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2383, file: !2362, line: 51, baseType: !2376, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2361, file: !2362, line: 61, baseType: !2389, size: 256)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2361, file: !2362, line: 55, size: 256, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2394, !2396}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2389, file: !2362, line: 56, baseType: !1838, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2389, file: !2362, line: 57, baseType: !921, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2389, file: !2362, line: 58, baseType: !307, size: 32, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2389, file: !2362, line: 59, baseType: !2395, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !798, line: 94, baseType: !799)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2389, file: !2362, line: 60, baseType: !2395, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2361, file: !2362, line: 95, baseType: !2398, size: 256)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2361, file: !2362, line: 64, size: 256, elements: !2399)
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2398, file: !2362, line: 65, baseType: !299, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !2398, file: !2362, line: 77, baseType: !2402, size: 192, offset: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2398, file: !2362, line: 77, size: 192, elements: !2403)
!2403 = !{!2404, !2405, !2412}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2402, file: !2362, line: 82, baseType: !1590, size: 16)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2402, file: !2362, line: 88, baseType: !2406, size: 192)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !2362, line: 84, size: 192, elements: !2407)
!2407 = !{!2408, !2410, !2411}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2406, file: !2362, line: 85, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 64, elements: !469)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2406, file: !2362, line: 86, baseType: !299, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2406, file: !2362, line: 87, baseType: !299, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2402, file: !2362, line: 93, baseType: !2413, size: 96)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !2362, line: 90, size: 96, elements: !2414)
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2413, file: !2362, line: 91, baseType: !2409, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2413, file: !2362, line: 92, baseType: !425, size: 32, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2361, file: !2362, line: 101, baseType: !2418, size: 128)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2361, file: !2362, line: 98, size: 128, elements: !2419)
!2419 = !{!2420, !2421}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2418, file: !2362, line: 99, baseType: !644, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2418, file: !2362, line: 100, baseType: !307, size: 32, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2361, file: !2362, line: 108, baseType: !2423, size: 128)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2361, file: !2362, line: 104, size: 128, elements: !2424)
!2424 = !{!2425, !2426, !2427}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2423, file: !2362, line: 105, baseType: !299, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2423, file: !2362, line: 106, baseType: !307, size: 32, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2423, file: !2362, line: 107, baseType: !7, size: 32, offset: 96)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1602, file: !1603, line: 1067, baseType: !2213, offset: 11136)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1602, file: !1603, line: 1099, baseType: !2430, size: 64, offset: 11136)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1603, line: 56, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1602, file: !1603, line: 1103, baseType: !699, size: 128, offset: 11200)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1602, file: !1603, line: 1104, baseType: !2434, size: 64, offset: 11328)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1603, line: 46, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1602, file: !1603, line: 1105, baseType: !1558, size: 192, offset: 11392)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1602, file: !1603, line: 1106, baseType: !7, size: 32, offset: 11584)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1602, file: !1603, line: 1109, baseType: !2439, size: 128, offset: 11648)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2440, size: 128, elements: !1947)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1603, line: 51, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1602, file: !1603, line: 1110, baseType: !1558, size: 192, offset: 11776)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1602, file: !1603, line: 1111, baseType: !699, size: 128, offset: 11968)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1602, file: !1603, line: 1173, baseType: !2445, size: 64, offset: 12096)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2447, line: 62, size: 256, align: 256, elements: !2448)
!2447 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2448 = !{!2449, !2450, !2451, !2456}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2446, file: !2447, line: 75, baseType: !425, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2446, file: !2447, line: 90, baseType: !425, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2446, file: !2447, line: 124, baseType: !2452, size: 64, offset: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2446, file: !2447, line: 109, size: 64, elements: !2453)
!2453 = !{!2454, !2455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2452, file: !2447, line: 110, baseType: !301, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2452, file: !2447, line: 112, baseType: !301, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2446, file: !2447, line: 144, baseType: !425, size: 32, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1602, file: !1603, line: 1174, baseType: !424, size: 32, offset: 12160)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1602, file: !1603, line: 1179, baseType: !649, size: 64, offset: 12224)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1602, file: !1603, line: 1182, baseType: !2460, size: 128, offset: 12288)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1538, line: 76, size: 128, elements: !2461)
!2461 = !{!2462, !2467, !2468}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2460, file: !1538, line: 85, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2464, line: 7, size: 64, elements: !2465)
!2464 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2463, file: !2464, line: 12, baseType: !1743, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2460, file: !1538, line: 88, baseType: !489, size: 8, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2460, file: !1538, line: 95, baseType: !489, size: 8, offset: 72)
!2469 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !1603, line: 1184, baseType: !2470, size: 128, offset: 12416)
!2470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !1603, line: 1184, size: 128, elements: !2471)
!2471 = !{!2472, !2473}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2470, file: !1603, line: 1185, baseType: !443, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2470, file: !1603, line: 1186, baseType: !853, size: 128, align: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1602, file: !1603, line: 1190, baseType: !2475, size: 64, offset: 12544)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1603, line: 53, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1602, file: !1603, line: 1192, baseType: !2478, size: 128, offset: 12608)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1538, line: 64, size: 128, elements: !2479)
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2478, file: !1538, line: 65, baseType: !1194, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2478, file: !1538, line: 67, baseType: !425, size: 32, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2478, file: !1538, line: 68, baseType: !425, size: 32, offset: 96)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1602, file: !1603, line: 1206, baseType: !307, size: 32, offset: 12736)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1602, file: !1603, line: 1207, baseType: !307, size: 32, offset: 12768)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1602, file: !1603, line: 1209, baseType: !649, size: 64, offset: 12800)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1602, file: !1603, line: 1219, baseType: !300, size: 64, offset: 12864)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1602, file: !1603, line: 1220, baseType: !300, size: 64, offset: 12928)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1602, file: !1603, line: 1317, baseType: !307, size: 32, offset: 12992)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1602, file: !1603, line: 1319, baseType: !1601, size: 64, offset: 13056)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1602, file: !1603, line: 1322, baseType: !2491, size: 64, offset: 13120)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2493, line: 56, size: 512, elements: !2494)
!2493 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501, !2503}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2492, file: !2493, line: 57, baseType: !2491, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2492, file: !2493, line: 58, baseType: !299, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2492, file: !2493, line: 59, baseType: !649, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2492, file: !2493, line: 60, baseType: !649, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2492, file: !2493, line: 61, baseType: !1289, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2492, file: !2493, line: 62, baseType: !7, size: 32, offset: 320)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2492, file: !2493, line: 63, baseType: !2502, size: 64, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !298, line: 153, baseType: !300)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2492, file: !2493, line: 64, baseType: !2504, size: 64, offset: 448)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1602, file: !1603, line: 1326, baseType: !443, size: 32, offset: 13184)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1602, file: !1603, line: 1342, baseType: !299, size: 64, offset: 13248)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1602, file: !1603, line: 1343, baseType: !301, size: 64, offset: 13312)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1602, file: !1603, line: 1344, baseType: !300, size: 64, offset: 13376)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1602, file: !1603, line: 1345, baseType: !301, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1602, file: !1603, line: 1346, baseType: !301, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1602, file: !1603, line: 1347, baseType: !301, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1602, file: !1603, line: 1348, baseType: !853, size: 128, align: 64, offset: 13504)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1602, file: !1603, line: 1358, baseType: !2515, size: 34816, offset: 13824)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2516, line: 485, size: 34816, elements: !2517)
!2516 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2517 = !{!2518, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2547, !2548, !2549, !2550, !2551, !2552, !2555, !2556, !2557}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2515, file: !2516, line: 487, baseType: !2519, size: 192)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 192, elements: !545)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2521, line: 16, size: 64, elements: !2522)
!2521 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2520, file: !2521, line: 17, baseType: !292, size: 16)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2520, file: !2521, line: 18, baseType: !292, size: 16, offset: 16)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2520, file: !2521, line: 19, baseType: !292, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2520, file: !2521, line: 19, baseType: !292, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2520, file: !2521, line: 19, baseType: !292, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2520, file: !2521, line: 19, baseType: !292, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2520, file: !2521, line: 19, baseType: !292, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2520, file: !2521, line: 20, baseType: !292, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2520, file: !2521, line: 20, baseType: !292, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2520, file: !2521, line: 20, baseType: !292, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2520, file: !2521, line: 20, baseType: !292, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2520, file: !2521, line: 20, baseType: !292, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2520, file: !2521, line: 20, baseType: !292, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2515, file: !2516, line: 491, baseType: !649, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2515, file: !2516, line: 495, baseType: !296, size: 16, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2515, file: !2516, line: 496, baseType: !296, size: 16, offset: 272)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2515, file: !2516, line: 497, baseType: !296, size: 16, offset: 288)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2515, file: !2516, line: 498, baseType: !296, size: 16, offset: 304)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2515, file: !2516, line: 502, baseType: !649, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2515, file: !2516, line: 503, baseType: !649, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2515, file: !2516, line: 514, baseType: !2544, size: 256, offset: 448)
!2544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2545, size: 256, elements: !580)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2516, line: 483, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2515, file: !2516, line: 516, baseType: !649, size: 64, offset: 704)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2515, file: !2516, line: 518, baseType: !649, size: 64, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2515, file: !2516, line: 520, baseType: !649, size: 64, offset: 832)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2515, file: !2516, line: 521, baseType: !649, size: 64, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2515, file: !2516, line: 522, baseType: !649, size: 64, offset: 960)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2515, file: !2516, line: 528, baseType: !2553, size: 64, offset: 1024)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2516, line: 10, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2515, file: !2516, line: 535, baseType: !649, size: 64, offset: 1088)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2515, file: !2516, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2515, file: !2516, line: 540, baseType: !2558, size: 33280, offset: 1536)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2559, line: 317, size: 33280, elements: !2560)
!2559 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2558, file: !2559, line: 330, baseType: !7, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2558, file: !2559, line: 337, baseType: !649, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2558, file: !2559, line: 348, baseType: !2564, size: 32768, offset: 512)
!2564 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2559, line: 304, size: 32768, elements: !2565)
!2565 = !{!2566, !2579, !2618, !2668, !2681}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2564, file: !2559, line: 305, baseType: !2567, size: 896)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2559, line: 12, size: 896, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2578}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2567, file: !2559, line: 13, baseType: !424, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2567, file: !2559, line: 14, baseType: !424, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2567, file: !2559, line: 15, baseType: !424, size: 32, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2567, file: !2559, line: 16, baseType: !424, size: 32, offset: 96)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2567, file: !2559, line: 17, baseType: !424, size: 32, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2567, file: !2559, line: 18, baseType: !424, size: 32, offset: 160)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2567, file: !2559, line: 19, baseType: !424, size: 32, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2567, file: !2559, line: 22, baseType: !2577, size: 640, offset: 224)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 640, elements: !403)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2567, file: !2559, line: 25, baseType: !424, size: 32, offset: 864)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2564, file: !2559, line: 306, baseType: !2580, size: 4096, align: 128)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2559, line: 34, size: 4096, align: 128, elements: !2581)
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2601, !2602, !2603, !2607, !2609, !2613}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2580, file: !2559, line: 35, baseType: !292, size: 16)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2580, file: !2559, line: 36, baseType: !292, size: 16, offset: 16)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2580, file: !2559, line: 37, baseType: !292, size: 16, offset: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2580, file: !2559, line: 38, baseType: !292, size: 16, offset: 48)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2580, file: !2559, line: 39, baseType: !2587, size: 128, offset: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2580, file: !2559, line: 39, size: 128, elements: !2588)
!2588 = !{!2589, !2594}
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !2559, line: 40, baseType: !2590, size: 128)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2559, line: 40, size: 128, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2590, file: !2559, line: 41, baseType: !300, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2590, file: !2559, line: 42, baseType: !300, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !2559, line: 44, baseType: !2595, size: 128)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2559, line: 44, size: 128, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2600}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2595, file: !2559, line: 45, baseType: !424, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2595, file: !2559, line: 46, baseType: !424, size: 32, offset: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2595, file: !2559, line: 47, baseType: !424, size: 32, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2595, file: !2559, line: 48, baseType: !424, size: 32, offset: 96)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2580, file: !2559, line: 51, baseType: !424, size: 32, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2580, file: !2559, line: 52, baseType: !424, size: 32, offset: 224)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2580, file: !2559, line: 55, baseType: !2604, size: 1024, offset: 256)
!2604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 1024, elements: !2605)
!2605 = !{!2606}
!2606 = !DISubrange(count: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2580, file: !2559, line: 58, baseType: !2608, size: 2048, offset: 1280)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 2048, elements: !770)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2580, file: !2559, line: 60, baseType: !2610, size: 384, offset: 3328)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, elements: !2611)
!2611 = !{!2612}
!2612 = !DISubrange(count: 12)
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !2580, file: !2559, line: 62, baseType: !2614, size: 384, offset: 3712)
!2614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2580, file: !2559, line: 62, size: 384, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2614, file: !2559, line: 63, baseType: !2610, size: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2614, file: !2559, line: 64, baseType: !2610, size: 384)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2564, file: !2559, line: 307, baseType: !2619, size: 1088)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2559, line: 79, size: 1088, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2667}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2619, file: !2559, line: 80, baseType: !424, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2619, file: !2559, line: 81, baseType: !424, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2619, file: !2559, line: 82, baseType: !424, size: 32, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2619, file: !2559, line: 83, baseType: !424, size: 32, offset: 96)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2619, file: !2559, line: 84, baseType: !424, size: 32, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2619, file: !2559, line: 85, baseType: !424, size: 32, offset: 160)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2619, file: !2559, line: 86, baseType: !424, size: 32, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2619, file: !2559, line: 88, baseType: !2577, size: 640, offset: 224)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2619, file: !2559, line: 89, baseType: !350, size: 8, offset: 864)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2619, file: !2559, line: 90, baseType: !350, size: 8, offset: 872)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2619, file: !2559, line: 91, baseType: !350, size: 8, offset: 880)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2619, file: !2559, line: 92, baseType: !350, size: 8, offset: 888)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2619, file: !2559, line: 93, baseType: !350, size: 8, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2619, file: !2559, line: 94, baseType: !350, size: 8, offset: 904)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2619, file: !2559, line: 95, baseType: !2636, size: 64, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2638, line: 11, size: 128, elements: !2639)
!2638 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2637, file: !2638, line: 12, baseType: !644, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2637, file: !2638, line: 13, baseType: !2642, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2644, line: 56, size: 1344, elements: !2645)
!2644 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2643, file: !2644, line: 61, baseType: !649, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2643, file: !2644, line: 62, baseType: !649, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2643, file: !2644, line: 63, baseType: !649, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2643, file: !2644, line: 64, baseType: !649, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2643, file: !2644, line: 65, baseType: !649, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2643, file: !2644, line: 66, baseType: !649, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2643, file: !2644, line: 68, baseType: !649, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2643, file: !2644, line: 69, baseType: !649, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2643, file: !2644, line: 70, baseType: !649, size: 64, offset: 512)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2643, file: !2644, line: 71, baseType: !649, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2643, file: !2644, line: 72, baseType: !649, size: 64, offset: 640)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2643, file: !2644, line: 73, baseType: !649, size: 64, offset: 704)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2643, file: !2644, line: 74, baseType: !649, size: 64, offset: 768)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2643, file: !2644, line: 75, baseType: !649, size: 64, offset: 832)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2643, file: !2644, line: 76, baseType: !649, size: 64, offset: 896)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2643, file: !2644, line: 81, baseType: !649, size: 64, offset: 960)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2643, file: !2644, line: 83, baseType: !649, size: 64, offset: 1024)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2643, file: !2644, line: 84, baseType: !649, size: 64, offset: 1088)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2643, file: !2644, line: 85, baseType: !649, size: 64, offset: 1152)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2643, file: !2644, line: 86, baseType: !649, size: 64, offset: 1216)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2643, file: !2644, line: 87, baseType: !649, size: 64, offset: 1280)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2619, file: !2559, line: 96, baseType: !424, size: 32, offset: 1024)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2564, file: !2559, line: 308, baseType: !2669, size: 4608, align: 512)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2559, line: 289, size: 4608, align: 512, elements: !2670)
!2670 = !{!2671, !2672, !2679}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2669, file: !2559, line: 290, baseType: !2580, size: 4096, align: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2669, file: !2559, line: 291, baseType: !2673, size: 512, offset: 4096)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2559, line: 268, size: 512, elements: !2674)
!2674 = !{!2675, !2676, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2673, file: !2559, line: 269, baseType: !300, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2673, file: !2559, line: 270, baseType: !300, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2673, file: !2559, line: 271, baseType: !2678, size: 384, offset: 128)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 384, elements: !614)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2669, file: !2559, line: 292, baseType: !2680, offset: 4608)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, elements: !2098)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2564, file: !2559, line: 309, baseType: !2682, size: 32768)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 32768, elements: !2683)
!2683 = !{!2684}
!2684 = !DISubrange(count: 4096)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1598, file: !1196, line: 378, baseType: !2686, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1594, file: !1196, line: 384, baseType: !1880, size: 192, offset: 192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1445, file: !1196, line: 500, baseType: !727, offset: 6656)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1445, file: !1196, line: 501, baseType: !2690, size: 64, offset: 6656)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1196, line: 387, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1445, file: !1196, line: 516, baseType: !2088, size: 64, offset: 6720)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1445, file: !1196, line: 519, baseType: !840, size: 64, offset: 6784)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1445, file: !1196, line: 521, baseType: !2695, size: 64, offset: 6848)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1196, line: 521, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1445, file: !1196, line: 545, baseType: !448, size: 32, offset: 6912)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1445, file: !1196, line: 548, baseType: !489, size: 8, offset: 6944)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1445, file: !1196, line: 550, baseType: !2700, offset: 6952)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2701, line: 142, elements: !741)
!2701 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1445, file: !1196, line: 554, baseType: !2334, size: 256, offset: 6976)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1445, file: !1196, line: 557, baseType: !424, size: 32, offset: 7232)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1442, file: !1196, line: 565, baseType: !2705, offset: 7296)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, elements: !2706)
!2706 = !{!2707}
!2707 = !DISubrange(count: -1)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1438, file: !1196, line: 151, baseType: !448, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1431, file: !1196, line: 156, baseType: !727, offset: 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1196, line: 159, baseType: !2711, size: 128)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1200, file: !1196, line: 159, size: 128, elements: !2712)
!2712 = !{!2713, !2716}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2711, file: !1196, line: 161, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1196, line: 161, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2711, file: !1196, line: 162, baseType: !299, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1200, file: !1196, line: 176, baseType: !853, size: 128, align: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !1196, line: 179, baseType: !2719, size: 32, offset: 384)
!2719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1195, file: !1196, line: 179, size: 32, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2724}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2719, file: !1196, line: 184, baseType: !448, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2719, file: !1196, line: 192, baseType: !7, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2719, file: !1196, line: 194, baseType: !7, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2719, file: !1196, line: 195, baseType: !307, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1195, file: !1196, line: 199, baseType: !448, size: 32, offset: 416)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1130, file: !208, line: 1964, baseType: !2727, size: 64, offset: 1344)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!644, !1072, !2730}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2732, line: 12, size: 256, elements: !2733)
!2732 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2733 = !{!2734, !2735, !2736, !2737, !2738}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2731, file: !2732, line: 13, baseType: !297, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2731, file: !2732, line: 16, baseType: !307, size: 32, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2731, file: !2732, line: 23, baseType: !649, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2731, file: !2732, line: 30, baseType: !649, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2731, file: !2732, line: 33, baseType: !2739, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1196, line: 27, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1130, file: !208, line: 1966, baseType: !2727, size: 64, offset: 1408)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1073, file: !208, line: 1424, baseType: !2743, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2746)
!2746 = !{!2747, !2793, !2797, !2801, !2802, !2803, !2804, !2805, !2810, !2815, !2819}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2745, file: !202, line: 323, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!307, !2751}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2778, !2779, !2780}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2752, file: !202, line: 295, baseType: !1112, size: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2752, file: !202, line: 296, baseType: !699, size: 128, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2752, file: !202, line: 297, baseType: !699, size: 128, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2752, file: !202, line: 298, baseType: !699, size: 128, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2752, file: !202, line: 299, baseType: !1558, size: 192, offset: 512)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2752, file: !202, line: 300, baseType: !727, offset: 704)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2752, file: !202, line: 301, baseType: !448, size: 32, offset: 704)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2752, file: !202, line: 302, baseType: !1072, size: 64, offset: 768)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2752, file: !202, line: 303, baseType: !2763, size: 64, offset: 832)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2764)
!2764 = !{!2765, !2777}
!2765 = !DIDerivedType(tag: DW_TAG_member, scope: !2763, file: !202, line: 69, baseType: !2766, size: 32)
!2766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2763, file: !202, line: 69, size: 32, elements: !2767)
!2767 = !{!2768, !2769, !2770}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2766, file: !202, line: 70, baseType: !915, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2766, file: !202, line: 71, baseType: !923, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2766, file: !202, line: 72, baseType: !2771, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2772, line: 24, baseType: !2773)
!2772 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2772, line: 22, size: 32, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2773, file: !2772, line: 23, baseType: !2776, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2772, line: 20, baseType: !921)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2763, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2752, file: !202, line: 304, baseType: !1006, size: 64, offset: 896)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2752, file: !202, line: 305, baseType: !649, size: 64, offset: 960)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2752, file: !202, line: 306, baseType: !2781, size: 576, offset: 1024)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2782)
!2782 = !{!2783, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2781, file: !202, line: 206, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !303)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2781, file: !202, line: 207, baseType: !2784, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2781, file: !202, line: 208, baseType: !2784, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2781, file: !202, line: 209, baseType: !2784, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2781, file: !202, line: 210, baseType: !2784, size: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2781, file: !202, line: 211, baseType: !2784, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2781, file: !202, line: 212, baseType: !2784, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2781, file: !202, line: 213, baseType: !1013, size: 64, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2781, file: !202, line: 214, baseType: !1013, size: 64, offset: 512)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2745, file: !202, line: 324, baseType: !2794, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!2751, !1072, !307}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2745, file: !202, line: 325, baseType: !2798, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2751}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2745, file: !202, line: 326, baseType: !2748, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2745, file: !202, line: 327, baseType: !2748, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2745, file: !202, line: 328, baseType: !2748, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2745, file: !202, line: 329, baseType: !1158, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2745, file: !202, line: 332, baseType: !2806, size: 64, offset: 448)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!2809, !909}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2745, file: !202, line: 333, baseType: !2811, size: 64, offset: 512)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!307, !909, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2745, file: !202, line: 335, baseType: !2816, size: 64, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!307, !909, !2809}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2745, file: !202, line: 337, baseType: !2820, size: 64, offset: 640)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!307, !1072, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1073, file: !208, line: 1425, baseType: !2825, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2827)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2828)
!2828 = !{!2829, !2833, !2834, !2838, !2839, !2840, !2855, !2878, !2882, !2883, !2906}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2827, file: !202, line: 429, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!307, !1072, !307, !307, !1022}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2827, file: !202, line: 430, baseType: !1158, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2827, file: !202, line: 431, baseType: !2835, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!307, !1072, !7}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2827, file: !202, line: 432, baseType: !2835, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2827, file: !202, line: 433, baseType: !1158, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2827, file: !202, line: 434, baseType: !2841, size: 64, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!307, !1072, !307, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2846)
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2845, file: !202, line: 416, baseType: !307, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2845, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2845, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2845, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2845, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2845, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2845, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2845, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2827, file: !202, line: 435, baseType: !2856, size: 64, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!307, !1072, !2763, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2860, file: !202, line: 344, baseType: !307, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2860, file: !202, line: 345, baseType: !300, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2860, file: !202, line: 346, baseType: !300, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2860, file: !202, line: 347, baseType: !300, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2860, file: !202, line: 348, baseType: !300, size: 64, offset: 256)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2860, file: !202, line: 349, baseType: !300, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2860, file: !202, line: 350, baseType: !300, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2860, file: !202, line: 351, baseType: !1246, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2860, file: !202, line: 353, baseType: !1246, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2860, file: !202, line: 354, baseType: !307, size: 32, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2860, file: !202, line: 355, baseType: !307, size: 32, offset: 608)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2860, file: !202, line: 356, baseType: !300, size: 64, offset: 640)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2860, file: !202, line: 357, baseType: !300, size: 64, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2860, file: !202, line: 358, baseType: !300, size: 64, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2860, file: !202, line: 359, baseType: !1246, size: 64, offset: 832)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2860, file: !202, line: 360, baseType: !307, size: 32, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2827, file: !202, line: 436, baseType: !2879, size: 64, offset: 448)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!307, !1072, !2823, !2859}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2827, file: !202, line: 438, baseType: !2856, size: 64, offset: 512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2827, file: !202, line: 439, baseType: !2884, size: 64, offset: 576)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!307, !1072, !2887}
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2888, file: !202, line: 410, baseType: !7, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2888, file: !202, line: 411, baseType: !2892, size: 1344, offset: 64)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 1344, elements: !545)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2905}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2893, file: !202, line: 396, baseType: !7, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2893, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2893, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2893, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2893, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2893, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2893, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2893, file: !202, line: 404, baseType: !302, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2893, file: !202, line: 405, baseType: !2904, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !298, line: 126, baseType: !300)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2893, file: !202, line: 406, baseType: !2904, size: 64, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2827, file: !202, line: 440, baseType: !2835, size: 64, offset: 640)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1073, file: !208, line: 1426, baseType: !2908, size: 64, offset: 576)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2910)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1073, file: !208, line: 1427, baseType: !649, size: 64, offset: 640)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1073, file: !208, line: 1428, baseType: !649, size: 64, offset: 704)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1073, file: !208, line: 1429, baseType: !649, size: 64, offset: 768)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1073, file: !208, line: 1430, baseType: !870, size: 64, offset: 832)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1073, file: !208, line: 1431, baseType: !1236, size: 256, offset: 896)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1073, file: !208, line: 1432, baseType: !307, size: 32, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1073, file: !208, line: 1433, baseType: !448, size: 32, offset: 1184)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1073, file: !208, line: 1437, baseType: !2919, size: 64, offset: 1216)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2922)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1073, file: !208, line: 1449, baseType: !2924, size: 64, offset: 1280)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !886, line: 34, size: 64, elements: !2925)
!2925 = !{!2926}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2924, file: !886, line: 35, baseType: !889, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1073, file: !208, line: 1450, baseType: !699, size: 128, offset: 1344)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1073, file: !208, line: 1451, baseType: !2929, size: 64, offset: 1472)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1073, file: !208, line: 1452, baseType: !2300, size: 64, offset: 1536)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1073, file: !208, line: 1453, baseType: !2933, size: 64, offset: 1600)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1073, file: !208, line: 1454, baseType: !1112, size: 128, offset: 1664)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1073, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1073, file: !208, line: 1456, baseType: !2938, size: 2432, offset: 1856)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2944, !2976}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2938, file: !202, line: 519, baseType: !7, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2938, file: !202, line: 520, baseType: !1236, size: 256, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2938, file: !202, line: 521, baseType: !2943, size: 192, offset: 320)
!2943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 192, elements: !545)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2938, file: !202, line: 522, baseType: !2945, size: 1728, offset: 512)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2946, size: 1728, elements: !545)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2947)
!2947 = !{!2948, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2946, file: !202, line: 223, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2951)
!2951 = !{!2952, !2953, !2966, !2967}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2950, file: !202, line: 444, baseType: !307, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2950, file: !202, line: 445, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2956, file: !202, line: 311, baseType: !1158, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2956, file: !202, line: 312, baseType: !1158, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2956, file: !202, line: 313, baseType: !1158, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2956, file: !202, line: 314, baseType: !1158, size: 64, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2956, file: !202, line: 315, baseType: !2748, size: 64, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2956, file: !202, line: 316, baseType: !2748, size: 64, offset: 320)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2956, file: !202, line: 317, baseType: !2748, size: 64, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2956, file: !202, line: 318, baseType: !2820, size: 64, offset: 448)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2950, file: !202, line: 446, baseType: !320, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2950, file: !202, line: 447, baseType: !2949, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2946, file: !202, line: 224, baseType: !307, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2946, file: !202, line: 226, baseType: !699, size: 128, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2946, file: !202, line: 227, baseType: !649, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2946, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2946, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2946, file: !202, line: 230, baseType: !2784, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2946, file: !202, line: 231, baseType: !2784, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2946, file: !202, line: 232, baseType: !299, size: 64, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2938, file: !202, line: 523, baseType: !2977, size: 192, offset: 2240)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2954, size: 192, elements: !545)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1073, file: !208, line: 1458, baseType: !2979, size: 2112, offset: 4288)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2980)
!2980 = !{!2981, !2982, !2983}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2979, file: !208, line: 1411, baseType: !307, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2979, file: !208, line: 1412, baseType: !1859, size: 128, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2979, file: !208, line: 1413, baseType: !2984, size: 1920, offset: 192)
!2984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2985, size: 1920, elements: !545)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2986, line: 12, size: 640, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2987 = !{!2988, !2996, !2997, !3002, !3003}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2985, file: !2986, line: 13, baseType: !2989, size: 320)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2990, line: 17, size: 320, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2991 = !{!2992, !2993, !2994, !2995}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2989, file: !2990, line: 18, baseType: !307, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2989, file: !2990, line: 19, baseType: !307, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2989, file: !2990, line: 20, baseType: !1859, size: 128, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2989, file: !2990, line: 22, baseType: !853, size: 128, align: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2985, file: !2986, line: 14, baseType: !372, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2985, file: !2986, line: 15, baseType: !2998, size: 64, offset: 384)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2999, line: 16, size: 64, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3000 = !{!3001}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2998, file: !2999, line: 17, baseType: !1601, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2985, file: !2986, line: 16, baseType: !1859, size: 128, offset: 448)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2985, file: !2986, line: 17, baseType: !448, size: 32, offset: 576)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1073, file: !208, line: 1465, baseType: !299, size: 64, offset: 6400)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1073, file: !208, line: 1468, baseType: !424, size: 32, offset: 6464)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1073, file: !208, line: 1470, baseType: !1013, size: 64, offset: 6528)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1073, file: !208, line: 1471, baseType: !1013, size: 64, offset: 6592)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1073, file: !208, line: 1473, baseType: !425, size: 32, offset: 6656)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1073, file: !208, line: 1474, baseType: !3010, size: 64, offset: 6720)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1073, file: !208, line: 1477, baseType: !3013, size: 256, offset: 6784)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 256, elements: !2605)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1073, file: !208, line: 1478, baseType: !3015, size: 128, offset: 7040)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3016, line: 18, baseType: !3017)
!3016 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3016, line: 16, size: 128, elements: !3018)
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3017, file: !3016, line: 17, baseType: !3020, size: 128)
!3020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 128, elements: !2110)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1073, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1073, file: !208, line: 1481, baseType: !3023, size: 32, offset: 7200)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !298, line: 150, baseType: !7)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1073, file: !208, line: 1487, baseType: !1558, size: 192, offset: 7232)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1073, file: !208, line: 1493, baseType: !316, size: 64, offset: 7424)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1073, file: !208, line: 1495, baseType: !3027, size: 64, offset: 7488)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !868, line: 135, size: 1024, align: 512, elements: !3030)
!3030 = !{!3031, !3035, !3036, !3043, !3049, !3053, !3057, !3061, !3062, !3066, !3070, !3075, !3079}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3029, file: !868, line: 136, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!307, !870, !7}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3029, file: !868, line: 137, baseType: !3032, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3029, file: !868, line: 138, baseType: !3037, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!307, !3040, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3029, file: !868, line: 139, baseType: !3044, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!307, !3040, !7, !316, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3029, file: !868, line: 141, baseType: !3050, size: 64, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!307, !3040}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3029, file: !868, line: 142, baseType: !3054, size: 64, offset: 320)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!307, !870}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3029, file: !868, line: 143, baseType: !3058, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !870}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3029, file: !868, line: 144, baseType: !3058, size: 64, offset: 448)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3029, file: !868, line: 145, baseType: !3063, size: 64, offset: 512)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !870, !909}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3029, file: !868, line: 146, baseType: !3067, size: 64, offset: 576)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!338, !870, !338, !307}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3029, file: !868, line: 147, baseType: !3071, size: 64, offset: 640)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!866, !3074}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3029, file: !868, line: 148, baseType: !3076, size: 64, offset: 704)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!307, !1022, !489}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3029, file: !868, line: 149, baseType: !3080, size: 64, offset: 768)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!870, !870, !3083}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1073, file: !208, line: 1500, baseType: !307, size: 32, offset: 7552)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1073, file: !208, line: 1502, baseType: !3087, size: 448, offset: 7616)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2732, line: 60, size: 448, elements: !3088)
!3088 = !{!3089, !3094, !3095, !3096, !3097, !3098, !3099}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3087, file: !2732, line: 61, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!649, !3093, !2730}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3087, file: !2732, line: 63, baseType: !3090, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3087, file: !2732, line: 66, baseType: !644, size: 64, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3087, file: !2732, line: 67, baseType: !307, size: 32, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3087, file: !2732, line: 68, baseType: !7, size: 32, offset: 224)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3087, file: !2732, line: 71, baseType: !699, size: 128, offset: 256)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3087, file: !2732, line: 77, baseType: !3100, size: 64, offset: 384)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1073, file: !208, line: 1505, baseType: !1240, size: 64, offset: 8064)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1073, file: !208, line: 1508, baseType: !1240, size: 64, offset: 8128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1073, file: !208, line: 1511, baseType: !307, size: 32, offset: 8192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1073, file: !208, line: 1514, baseType: !1376, size: 32, offset: 8224)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1073, file: !208, line: 1517, baseType: !3106, size: 64, offset: 8256)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2335, line: 18, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1073, file: !208, line: 1518, baseType: !1108, size: 64, offset: 8320)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1073, file: !208, line: 1525, baseType: !2088, size: 64, offset: 8384)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1073, file: !208, line: 1532, baseType: !3111, size: 64, offset: 8448)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3112, line: 52, size: 64, elements: !3113)
!3112 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3111, file: !3112, line: 53, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3112, line: 40, size: 256, elements: !3117)
!3117 = !{!3118, !3119, !3124}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3116, file: !3112, line: 42, baseType: !727)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3116, file: !3112, line: 44, baseType: !3120, size: 192)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3112, line: 28, size: 192, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3120, file: !3112, line: 29, baseType: !699, size: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3120, file: !3112, line: 31, baseType: !644, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3116, file: !3112, line: 49, baseType: !644, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1073, file: !208, line: 1533, baseType: !3111, size: 64, offset: 8512)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1073, file: !208, line: 1534, baseType: !853, size: 128, align: 64, offset: 8576)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1073, file: !208, line: 1535, baseType: !2334, size: 256, offset: 8704)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1073, file: !208, line: 1537, baseType: !1558, size: 192, offset: 8960)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1073, file: !208, line: 1542, baseType: !307, size: 32, offset: 9152)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1073, file: !208, line: 1545, baseType: !727, offset: 9184)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1073, file: !208, line: 1546, baseType: !699, size: 128, offset: 9216)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1073, file: !208, line: 1548, baseType: !727, offset: 9344)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1073, file: !208, line: 1549, baseType: !699, size: 128, offset: 9344)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !910, file: !208, line: 624, baseType: !1207, size: 64, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !910, file: !208, line: 631, baseType: !649, size: 64, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !208, line: 639, baseType: !3137, size: 32, offset: 384)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !208, line: 639, size: 32, elements: !3138)
!3138 = !{!3139, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3137, file: !208, line: 640, baseType: !3140, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3137, file: !208, line: 641, baseType: !7, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !910, file: !208, line: 643, baseType: !988, size: 32, offset: 416)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !910, file: !208, line: 644, baseType: !1006, size: 64, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !910, file: !208, line: 645, baseType: !1009, size: 128, offset: 512)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !910, file: !208, line: 646, baseType: !1009, size: 128, offset: 640)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !910, file: !208, line: 647, baseType: !1009, size: 128, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !910, file: !208, line: 648, baseType: !727, offset: 896)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !910, file: !208, line: 649, baseType: !296, size: 16, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !910, file: !208, line: 650, baseType: !350, size: 8, offset: 912)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !910, file: !208, line: 651, baseType: !350, size: 8, offset: 920)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !910, file: !208, line: 652, baseType: !2904, size: 64, offset: 960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !910, file: !208, line: 659, baseType: !649, size: 64, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !910, file: !208, line: 660, baseType: !1236, size: 256, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !910, file: !208, line: 662, baseType: !649, size: 64, offset: 1344)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !910, file: !208, line: 663, baseType: !649, size: 64, offset: 1408)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !910, file: !208, line: 665, baseType: !1112, size: 128, offset: 1472)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !910, file: !208, line: 666, baseType: !699, size: 128, offset: 1600)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !910, file: !208, line: 675, baseType: !699, size: 128, offset: 1728)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !910, file: !208, line: 676, baseType: !699, size: 128, offset: 1856)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !910, file: !208, line: 677, baseType: !699, size: 128, offset: 1984)
!3161 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !208, line: 678, baseType: !3162, size: 128, offset: 2112)
!3162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !208, line: 678, size: 128, elements: !3163)
!3163 = !{!3164, !3165}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3162, file: !208, line: 679, baseType: !1108, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3162, file: !208, line: 680, baseType: !853, size: 128, align: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !910, file: !208, line: 682, baseType: !1242, size: 64, offset: 2240)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !910, file: !208, line: 683, baseType: !1242, size: 64, offset: 2304)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !910, file: !208, line: 684, baseType: !448, size: 32, offset: 2368)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !910, file: !208, line: 685, baseType: !448, size: 32, offset: 2400)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !910, file: !208, line: 686, baseType: !448, size: 32, offset: 2432)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !910, file: !208, line: 688, baseType: !448, size: 32, offset: 2464)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !208, line: 690, baseType: !3173, size: 64, offset: 2496)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !208, line: 690, size: 64, elements: !3174)
!3174 = !{!3175, !3407}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3173, file: !208, line: 691, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3178)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !3179)
!3179 = !{!3180, !3181, !3185, !3190, !3194, !3195, !3196, !3200, !3213, !3214, !3231, !3235, !3236, !3240, !3241, !3245, !3250, !3251, !3255, !3259, !3367, !3371, !3372, !3376, !3377, !3381, !3385, !3390, !3394, !3398, !3402, !3406}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3178, file: !208, line: 1823, baseType: !320, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3178, file: !208, line: 1824, baseType: !3182, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!1006, !840, !1006, !307}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3178, file: !208, line: 1825, baseType: !3186, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!796, !840, !338, !810, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3178, file: !208, line: 1826, baseType: !3191, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!796, !840, !316, !810, !3189}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3178, file: !208, line: 1827, baseType: !1313, size: 64, offset: 256)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3178, file: !208, line: 1828, baseType: !1313, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3178, file: !208, line: 1829, baseType: !3197, size: 64, offset: 384)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!307, !1316, !489}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3178, file: !208, line: 1830, baseType: !3201, size: 64, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!307, !840, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3206)
!3206 = !{!3207, !3212}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3205, file: !208, line: 1777, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3209)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!307, !3204, !316, !307, !1006, !300, !7}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3205, file: !208, line: 1778, baseType: !1006, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3178, file: !208, line: 1831, baseType: !3201, size: 64, offset: 512)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3178, file: !208, line: 1832, baseType: !3215, size: 64, offset: 576)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!3218, !840, !3220}
!3218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3219, line: 52, baseType: !7)
!3219 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3222, line: 43, size: 128, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3223 = !{!3224, !3230}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3221, file: !3222, line: 44, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3222, line: 37, baseType: !3226)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !840, !3229, !3220}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3221, file: !3222, line: 45, baseType: !3218, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3178, file: !208, line: 1833, baseType: !3232, size: 64, offset: 640)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!644, !840, !7, !649}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3178, file: !208, line: 1834, baseType: !3232, size: 64, offset: 704)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3178, file: !208, line: 1835, baseType: !3237, size: 64, offset: 768)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!307, !840, !1448}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3178, file: !208, line: 1836, baseType: !649, size: 64, offset: 832)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3178, file: !208, line: 1837, baseType: !3242, size: 64, offset: 896)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!307, !909, !840}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3178, file: !208, line: 1838, baseType: !3246, size: 64, offset: 960)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!307, !840, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !299)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3178, file: !208, line: 1839, baseType: !3242, size: 64, offset: 1024)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3178, file: !208, line: 1840, baseType: !3252, size: 64, offset: 1088)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!307, !840, !1006, !1006, !307}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3178, file: !208, line: 1841, baseType: !3256, size: 64, offset: 1152)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!307, !307, !840, !307}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3178, file: !208, line: 1842, baseType: !3260, size: 64, offset: 1216)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!307, !840, !307, !3263}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3297, !3298, !3299, !3312, !3343}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3264, file: !208, line: 1063, baseType: !3263, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3264, file: !208, line: 1064, baseType: !699, size: 128, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3264, file: !208, line: 1065, baseType: !1112, size: 128, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3264, file: !208, line: 1066, baseType: !699, size: 128, offset: 320)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3264, file: !208, line: 1069, baseType: !699, size: 128, offset: 448)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3264, file: !208, line: 1072, baseType: !3249, size: 64, offset: 576)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3264, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3264, file: !208, line: 1074, baseType: !352, size: 8, offset: 672)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3264, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3264, file: !208, line: 1076, baseType: !307, size: 32, offset: 736)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3264, file: !208, line: 1077, baseType: !1859, size: 128, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3264, file: !208, line: 1078, baseType: !840, size: 64, offset: 896)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3264, file: !208, line: 1079, baseType: !1006, size: 64, offset: 960)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3264, file: !208, line: 1080, baseType: !1006, size: 64, offset: 1024)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3264, file: !208, line: 1082, baseType: !3281, size: 64, offset: 1088)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3283)
!3283 = !{!3284, !3292, !3293, !3294, !3295, !3296}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3282, file: !208, line: 1315, baseType: !3285)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3286, line: 20, baseType: !3287)
!3286 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3286, line: 11, elements: !3288)
!3288 = !{!3289}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3287, file: !3286, line: 12, baseType: !3290)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !739, line: 33, baseType: !3291)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 31, elements: !741)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3282, file: !208, line: 1316, baseType: !307, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3282, file: !208, line: 1317, baseType: !307, size: 32, offset: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3282, file: !208, line: 1318, baseType: !3281, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3282, file: !208, line: 1319, baseType: !840, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3282, file: !208, line: 1320, baseType: !853, size: 128, align: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3264, file: !208, line: 1084, baseType: !649, size: 64, offset: 1152)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3264, file: !208, line: 1085, baseType: !649, size: 64, offset: 1216)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3264, file: !208, line: 1087, baseType: !3300, size: 64, offset: 1280)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3302)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3303)
!3303 = !{!3304, !3308}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3302, file: !208, line: 1012, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !3263, !3263}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3302, file: !208, line: 1013, baseType: !3309, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3263}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3264, file: !208, line: 1088, baseType: !3313, size: 64, offset: 1344)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3315)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3316)
!3316 = !{!3317, !3321, !3325, !3326, !3330, !3334, !3338, !3342}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3315, file: !208, line: 1017, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!3249, !3249}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3315, file: !208, line: 1018, baseType: !3322, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !3249}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3315, file: !208, line: 1019, baseType: !3309, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3315, file: !208, line: 1020, baseType: !3327, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!307, !3263, !307}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3315, file: !208, line: 1021, baseType: !3331, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!489, !3263}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3315, file: !208, line: 1022, baseType: !3335, size: 64, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!307, !3263, !307, !702}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3315, file: !208, line: 1023, baseType: !3339, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !3263, !1290}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3315, file: !208, line: 1024, baseType: !3331, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3264, file: !208, line: 1097, baseType: !3344, size: 256, offset: 1408)
!3344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3264, file: !208, line: 1089, size: 256, elements: !3345)
!3345 = !{!3346, !3355, !3361}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3344, file: !208, line: 1090, baseType: !3347, size: 256)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3348, line: 10, size: 256, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3349 = !{!3350, !3351, !3354}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3347, file: !3348, line: 11, baseType: !424, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3347, file: !3348, line: 12, baseType: !3352, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3348, line: 5, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3347, file: !3348, line: 13, baseType: !699, size: 128, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3344, file: !208, line: 1091, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3348, line: 17, size: 64, elements: !3357)
!3357 = !{!3358}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3356, file: !3348, line: 18, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3348, line: 16, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3344, file: !208, line: 1096, baseType: !3362, size: 192)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3344, file: !208, line: 1092, size: 192, elements: !3363)
!3363 = !{!3364, !3365, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3362, file: !208, line: 1093, baseType: !699, size: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3362, file: !208, line: 1094, baseType: !307, size: 32, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3362, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3178, file: !208, line: 1843, baseType: !3368, size: 64, offset: 1280)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!796, !840, !1194, !307, !810, !3189, !307}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3178, file: !208, line: 1844, baseType: !1488, size: 64, offset: 1344)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3178, file: !208, line: 1845, baseType: !3373, size: 64, offset: 1408)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!307, !307}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3178, file: !208, line: 1846, baseType: !3260, size: 64, offset: 1472)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3178, file: !208, line: 1847, baseType: !3378, size: 64, offset: 1536)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!796, !2475, !840, !3189, !810, !7}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3178, file: !208, line: 1848, baseType: !3382, size: 64, offset: 1600)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!796, !840, !3189, !2475, !810, !7}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3178, file: !208, line: 1849, baseType: !3386, size: 64, offset: 1664)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!307, !840, !644, !3389, !1290}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3178, file: !208, line: 1850, baseType: !3391, size: 64, offset: 1728)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!644, !840, !307, !1006, !1006}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3178, file: !208, line: 1852, baseType: !3395, size: 64, offset: 1792)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !1184, !840}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3178, file: !208, line: 1856, baseType: !3399, size: 64, offset: 1856)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!796, !840, !1006, !840, !1006, !810, !7}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3178, file: !208, line: 1858, baseType: !3403, size: 64, offset: 1920)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!1006, !840, !1006, !840, !1006, !1006, !7}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3178, file: !208, line: 1861, baseType: !3252, size: 64, offset: 1984)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3173, file: !208, line: 692, baseType: !1137, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !910, file: !208, line: 694, baseType: !3409, size: 64, offset: 2560)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3410, file: !208, line: 1101, baseType: !727)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3410, file: !208, line: 1102, baseType: !699, size: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3410, file: !208, line: 1103, baseType: !699, size: 128, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3410, file: !208, line: 1104, baseType: !699, size: 128, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !910, file: !208, line: 695, baseType: !1208, size: 1216, align: 64, offset: 2624)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !910, file: !208, line: 696, baseType: !699, size: 128, offset: 3840)
!3418 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !208, line: 697, baseType: !3419, size: 64, offset: 3968)
!3419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !208, line: 697, size: 64, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3434, !3435}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3419, file: !208, line: 698, baseType: !2475, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3419, file: !208, line: 699, baseType: !2929, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3419, file: !208, line: 700, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3426, line: 14, size: 832, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3425, file: !3426, line: 15, baseType: !714, size: 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3425, file: !3426, line: 16, baseType: !320, size: 64, offset: 512)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3425, file: !3426, line: 17, baseType: !3176, size: 64, offset: 576)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3425, file: !3426, line: 18, baseType: !699, size: 128, offset: 640)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3425, file: !3426, line: 19, baseType: !988, size: 32, offset: 768)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3425, file: !3426, line: 20, baseType: !7, size: 32, offset: 800)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3419, file: !208, line: 701, baseType: !338, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3419, file: !208, line: 702, baseType: !7, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !910, file: !208, line: 705, baseType: !425, size: 32, offset: 4032)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !910, file: !208, line: 708, baseType: !425, size: 32, offset: 4064)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !910, file: !208, line: 709, baseType: !3010, size: 64, offset: 4096)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !910, file: !208, line: 720, baseType: !299, size: 64, offset: 4160)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !871, file: !868, line: 98, baseType: !3441, size: 256, offset: 448)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 256, elements: !2605)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !871, file: !868, line: 101, baseType: !3443, size: 32, offset: 704)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3444, line: 25, size: 32, elements: !3445)
!3444 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3445 = !{!3446}
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3443, file: !3444, line: 26, baseType: !3447, size: 32)
!3447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3443, file: !3444, line: 26, size: 32, elements: !3448)
!3448 = !{!3449}
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3444, line: 30, baseType: !3450, size: 32)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3447, file: !3444, line: 30, size: 32, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3450, file: !3444, line: 31, baseType: !727)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3450, file: !3444, line: 32, baseType: !307, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !871, file: !868, line: 102, baseType: !3027, size: 64, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !871, file: !868, line: 103, baseType: !1072, size: 64, offset: 832)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !871, file: !868, line: 104, baseType: !649, size: 64, offset: 896)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !871, file: !868, line: 105, baseType: !299, size: 64, offset: 960)
!3458 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !868, line: 107, baseType: !3459, size: 128, offset: 1024)
!3459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !868, line: 107, size: 128, elements: !3460)
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3459, file: !868, line: 108, baseType: !699, size: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3459, file: !868, line: 109, baseType: !3229, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !871, file: !868, line: 111, baseType: !699, size: 128, offset: 1152)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !871, file: !868, line: 112, baseType: !699, size: 128, offset: 1280)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !871, file: !868, line: 120, baseType: !3466, size: 128, offset: 1408)
!3466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !868, line: 116, size: 128, elements: !3467)
!3467 = !{!3468, !3469, !3470}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3466, file: !868, line: 117, baseType: !1112, size: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3466, file: !868, line: 118, baseType: !885, size: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3466, file: !868, line: 119, baseType: !853, size: 128, align: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !841, file: !208, line: 922, baseType: !909, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !841, file: !208, line: 923, baseType: !3176, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !841, file: !208, line: 929, baseType: !727, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !841, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !841, file: !208, line: 931, baseType: !1240, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !841, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !841, file: !208, line: 933, baseType: !3023, size: 32, offset: 544)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !841, file: !208, line: 934, baseType: !1558, size: 192, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !841, file: !208, line: 935, baseType: !1006, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !841, file: !208, line: 936, baseType: !3481, size: 192, offset: 832)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3482)
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3481, file: !208, line: 886, baseType: !3285)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3481, file: !208, line: 887, baseType: !1849, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3481, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3481, file: !208, line: 889, baseType: !915, size: 32, offset: 96)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3481, file: !208, line: 889, baseType: !915, size: 32, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3481, file: !208, line: 890, baseType: !307, size: 32, offset: 160)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !841, file: !208, line: 937, baseType: !1925, size: 64, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !841, file: !208, line: 938, baseType: !3491, size: 256, offset: 1088)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3491, file: !208, line: 897, baseType: !649, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3491, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3491, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3491, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3491, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3491, file: !208, line: 904, baseType: !1006, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !841, file: !208, line: 940, baseType: !300, size: 64, offset: 1344)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !841, file: !208, line: 945, baseType: !299, size: 64, offset: 1408)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !841, file: !208, line: 949, baseType: !699, size: 128, offset: 1472)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !841, file: !208, line: 950, baseType: !699, size: 128, offset: 1600)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !841, file: !208, line: 952, baseType: !1207, size: 64, offset: 1728)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !841, file: !208, line: 953, baseType: !1376, size: 32, offset: 1792)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !841, file: !208, line: 954, baseType: !1376, size: 32, offset: 1824)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !831, file: !790, line: 174, baseType: !837, size: 64, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !831, file: !790, line: 176, baseType: !3508, size: 64, offset: 384)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!307, !840, !720, !830, !1448}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !819, file: !790, line: 90, baseType: !814, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !819, file: !790, line: 91, baseType: !3513, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !780, file: !715, line: 143, baseType: !3515, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!3518, !720}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3521)
!3521 = !{!3522, !3523, !3527, !3531, !3537, !3541}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3520, file: !225, line: 40, baseType: !224, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3520, file: !225, line: 41, baseType: !3524, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!489}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3520, file: !225, line: 42, baseType: !3528, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!299}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3520, file: !225, line: 43, baseType: !3532, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!2504, !3535}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3520, file: !225, line: 44, baseType: !3538, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!2504}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3520, file: !225, line: 45, baseType: !340, size: 64, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !780, file: !715, line: 144, baseType: !3543, size: 64, offset: 320)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!2504, !720}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !780, file: !715, line: 145, baseType: !3547, size: 64, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{null, !720, !3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !714, file: !715, line: 70, baseType: !3553, size: 64, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1092, line: 123, size: 1024, elements: !3555)
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3684, !3685, !3686, !3687, !3688}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3554, file: !1092, line: 124, baseType: !448, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3554, file: !1092, line: 125, baseType: !448, size: 32, offset: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3554, file: !1092, line: 135, baseType: !3553, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3554, file: !1092, line: 136, baseType: !316, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3554, file: !1092, line: 138, baseType: !1229, size: 192, align: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3554, file: !1092, line: 140, baseType: !2504, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3554, file: !1092, line: 141, baseType: !7, size: 32, offset: 448)
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !1092, line: 142, baseType: !3564, size: 256, offset: 512)
!3564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3554, file: !1092, line: 142, size: 256, elements: !3565)
!3565 = !{!3566, !3612, !3616}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3564, file: !1092, line: 143, baseType: !3567, size: 192)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1092, line: 91, size: 192, elements: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3567, file: !1092, line: 92, baseType: !649, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3567, file: !1092, line: 94, baseType: !1225, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3567, file: !1092, line: 100, baseType: !3572, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1092, line: 180, size: 704, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3584, !3585, !3586, !3610, !3611}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3573, file: !1092, line: 182, baseType: !3553, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3573, file: !1092, line: 183, baseType: !7, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3573, file: !1092, line: 186, baseType: !3578, size: 192, offset: 128)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3579, line: 19, size: 192, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3578, file: !3579, line: 20, baseType: !1212, size: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3578, file: !3579, line: 21, baseType: !7, size: 32, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3578, file: !3579, line: 22, baseType: !7, size: 32, offset: 160)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3573, file: !1092, line: 187, baseType: !424, size: 32, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3573, file: !1092, line: 188, baseType: !424, size: 32, offset: 352)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3573, file: !1092, line: 189, baseType: !3587, size: 64, offset: 384)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1092, line: 168, size: 320, elements: !3589)
!3589 = !{!3590, !3594, !3598, !3602, !3606}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3588, file: !1092, line: 169, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!307, !1184, !3572}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3588, file: !1092, line: 171, baseType: !3595, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!307, !3553, !316, !805}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3588, file: !1092, line: 173, baseType: !3599, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!307, !3553}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3588, file: !1092, line: 174, baseType: !3603, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!307, !3553, !3553, !316}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3588, file: !1092, line: 176, baseType: !3607, size: 64, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!307, !1184, !3553, !3572}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3573, file: !1092, line: 192, baseType: !699, size: 128, offset: 448)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3573, file: !1092, line: 194, baseType: !1859, size: 128, offset: 576)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3564, file: !1092, line: 144, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1092, line: 103, size: 64, elements: !3614)
!3614 = !{!3615}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3613, file: !1092, line: 104, baseType: !3553, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3564, file: !1092, line: 145, baseType: !3617, size: 256)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1092, line: 107, size: 256, elements: !3618)
!3618 = !{!3619, !3679, !3682, !3683}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3617, file: !1092, line: 108, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3622)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1092, line: 217, size: 768, elements: !3623)
!3623 = !{!3624, !3644, !3648, !3652, !3656, !3660, !3664, !3668, !3669, !3670, !3671, !3675}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3622, file: !1092, line: 222, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!307, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1092, line: 197, size: 1088, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3629, file: !1092, line: 199, baseType: !3553, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3629, file: !1092, line: 200, baseType: !840, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3629, file: !1092, line: 201, baseType: !1184, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3629, file: !1092, line: 202, baseType: !299, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3629, file: !1092, line: 205, baseType: !1558, size: 192, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3629, file: !1092, line: 206, baseType: !1558, size: 192, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3629, file: !1092, line: 207, baseType: !307, size: 32, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3629, file: !1092, line: 208, baseType: !699, size: 128, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3629, file: !1092, line: 209, baseType: !338, size: 64, offset: 832)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3629, file: !1092, line: 211, baseType: !810, size: 64, offset: 896)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3629, file: !1092, line: 212, baseType: !489, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3629, file: !1092, line: 213, baseType: !489, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3629, file: !1092, line: 214, baseType: !1476, size: 64, offset: 1024)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3622, file: !1092, line: 223, baseType: !3645, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3628}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3622, file: !1092, line: 236, baseType: !3649, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!307, !1184, !299}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3622, file: !1092, line: 238, baseType: !3653, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!299, !1184, !3189}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3622, file: !1092, line: 239, baseType: !3657, size: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!299, !1184, !299, !3189}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3622, file: !1092, line: 240, baseType: !3661, size: 64, offset: 320)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{null, !1184, !299}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3622, file: !1092, line: 242, baseType: !3665, size: 64, offset: 384)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!796, !3628, !338, !810, !1006}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3622, file: !1092, line: 252, baseType: !810, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3622, file: !1092, line: 259, baseType: !489, size: 8, offset: 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3622, file: !1092, line: 260, baseType: !3665, size: 64, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3622, file: !1092, line: 263, baseType: !3672, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!3218, !3628, !3220}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3622, file: !1092, line: 266, baseType: !3676, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!307, !3628, !1448}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3617, file: !1092, line: 109, baseType: !3680, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1092, line: 31, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3617, file: !1092, line: 110, baseType: !1006, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3617, file: !1092, line: 111, baseType: !3553, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3554, file: !1092, line: 148, baseType: !299, size: 64, offset: 768)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3554, file: !1092, line: 154, baseType: !300, size: 64, offset: 832)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3554, file: !1092, line: 156, baseType: !296, size: 16, offset: 896)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3554, file: !1092, line: 157, baseType: !805, size: 16, offset: 912)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3554, file: !1092, line: 158, baseType: !3689, size: 64, offset: 960)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1092, line: 32, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !714, file: !715, line: 71, baseType: !439, size: 32, offset: 448)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !714, file: !715, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !714, file: !715, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !714, file: !715, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !714, file: !715, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !714, file: !715, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !711, file: !237, line: 463, baseType: !710, size: 64, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !711, file: !237, line: 465, baseType: !3699, size: 64, offset: 576)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !711, file: !237, line: 467, baseType: !316, size: 64, offset: 640)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !237, line: 468, baseType: !3703, size: 64, offset: 704)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3713, !3718, !3722}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3705, file: !237, line: 88, baseType: !316, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3705, file: !237, line: 89, baseType: !816, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3705, file: !237, line: 90, baseType: !3710, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!307, !710, !763}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3705, file: !237, line: 91, baseType: !3714, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!338, !710, !3717, !3550, !3551}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3705, file: !237, line: 93, baseType: !3719, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !710}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3705, file: !237, line: 95, baseType: !3723, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3725)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3726)
!3726 = !{!3727, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3725, file: !244, line: 279, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!307, !710}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3725, file: !244, line: 280, baseType: !3719, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3725, file: !244, line: 281, baseType: !3728, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3725, file: !244, line: 282, baseType: !3728, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3725, file: !244, line: 283, baseType: !3728, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3725, file: !244, line: 284, baseType: !3728, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3725, file: !244, line: 285, baseType: !3728, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3725, file: !244, line: 286, baseType: !3728, size: 64, offset: 448)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3725, file: !244, line: 287, baseType: !3728, size: 64, offset: 512)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3725, file: !244, line: 288, baseType: !3728, size: 64, offset: 576)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3725, file: !244, line: 289, baseType: !3728, size: 64, offset: 640)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3725, file: !244, line: 290, baseType: !3728, size: 64, offset: 704)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3725, file: !244, line: 291, baseType: !3728, size: 64, offset: 768)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3725, file: !244, line: 292, baseType: !3728, size: 64, offset: 832)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3725, file: !244, line: 293, baseType: !3728, size: 64, offset: 896)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3725, file: !244, line: 294, baseType: !3728, size: 64, offset: 960)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3725, file: !244, line: 295, baseType: !3728, size: 64, offset: 1024)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3725, file: !244, line: 296, baseType: !3728, size: 64, offset: 1088)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3725, file: !244, line: 297, baseType: !3728, size: 64, offset: 1152)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3725, file: !244, line: 298, baseType: !3728, size: 64, offset: 1216)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3725, file: !244, line: 299, baseType: !3728, size: 64, offset: 1280)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3725, file: !244, line: 300, baseType: !3728, size: 64, offset: 1344)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3725, file: !244, line: 301, baseType: !3728, size: 64, offset: 1408)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !711, file: !237, line: 470, baseType: !3754, size: 64, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3756, line: 82, size: 1408, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3757 = !{!3758, !3759, !3760, !3761, !3762, !3763, !3764, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3836, !3839, !3840}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3755, file: !3756, line: 83, baseType: !316, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3755, file: !3756, line: 84, baseType: !316, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3755, file: !3756, line: 85, baseType: !710, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3755, file: !3756, line: 86, baseType: !816, size: 64, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3755, file: !3756, line: 87, baseType: !816, size: 64, offset: 256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3755, file: !3756, line: 88, baseType: !816, size: 64, offset: 320)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3755, file: !3756, line: 90, baseType: !3765, size: 64, offset: 384)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!307, !710, !3768}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3787, !3800, !3801, !3802, !3803, !3804, !3812, !3813, !3814, !3815, !3816, !3817}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3769, file: !231, line: 96, baseType: !316, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3769, file: !231, line: 97, baseType: !3754, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3769, file: !231, line: 99, baseType: !320, size: 64, offset: 128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3769, file: !231, line: 100, baseType: !316, size: 64, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3769, file: !231, line: 102, baseType: !489, size: 8, offset: 256)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3769, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3769, file: !231, line: 105, baseType: !3778, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3780)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3781, line: 262, size: 1600, elements: !3782)
!3781 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3782 = !{!3783, !3784, !3785, !3786}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3780, file: !3781, line: 263, baseType: !3013, size: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3780, file: !3781, line: 264, baseType: !3013, size: 256, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3780, file: !3781, line: 265, baseType: !420, size: 1024, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3780, file: !3781, line: 266, baseType: !2504, size: 64, offset: 1536)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3769, file: !231, line: 106, baseType: !3788, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3790)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3781, line: 210, size: 256, elements: !3791)
!3791 = !{!3792, !3796, !3798, !3799}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3790, file: !3781, line: 211, baseType: !3793, size: 72)
!3793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 72, elements: !3794)
!3794 = !{!3795}
!3795 = !DISubrange(count: 9)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3790, file: !3781, line: 212, baseType: !3797, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3781, line: 14, baseType: !649)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3790, file: !3781, line: 213, baseType: !425, size: 32, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3790, file: !3781, line: 214, baseType: !425, size: 32, offset: 224)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3769, file: !231, line: 108, baseType: !3728, size: 64, offset: 448)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3769, file: !231, line: 109, baseType: !3719, size: 64, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3769, file: !231, line: 110, baseType: !3728, size: 64, offset: 576)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3769, file: !231, line: 111, baseType: !3719, size: 64, offset: 640)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3769, file: !231, line: 112, baseType: !3805, size: 64, offset: 704)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!307, !710, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3810)
!3810 = !{!3811}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3809, file: !244, line: 51, baseType: !307, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3769, file: !231, line: 113, baseType: !3728, size: 64, offset: 768)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3769, file: !231, line: 114, baseType: !816, size: 64, offset: 832)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3769, file: !231, line: 115, baseType: !816, size: 64, offset: 896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3769, file: !231, line: 117, baseType: !3723, size: 64, offset: 960)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3769, file: !231, line: 118, baseType: !3719, size: 64, offset: 1024)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3769, file: !231, line: 120, baseType: !3818, size: 64, offset: 1088)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3755, file: !3756, line: 91, baseType: !3710, size: 64, offset: 448)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3755, file: !3756, line: 92, baseType: !3728, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3755, file: !3756, line: 93, baseType: !3719, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3755, file: !3756, line: 94, baseType: !3728, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3755, file: !3756, line: 95, baseType: !3719, size: 64, offset: 704)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3755, file: !3756, line: 97, baseType: !3728, size: 64, offset: 768)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3755, file: !3756, line: 98, baseType: !3728, size: 64, offset: 832)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3755, file: !3756, line: 100, baseType: !3805, size: 64, offset: 896)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3755, file: !3756, line: 101, baseType: !3728, size: 64, offset: 960)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3755, file: !3756, line: 103, baseType: !3728, size: 64, offset: 1024)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3755, file: !3756, line: 105, baseType: !3728, size: 64, offset: 1088)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3755, file: !3756, line: 107, baseType: !3723, size: 64, offset: 1152)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3755, file: !3756, line: 109, baseType: !3833, size: 64, offset: 1216)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3835)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3756, line: 109, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3755, file: !3756, line: 111, baseType: !3837, size: 64, offset: 1280)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3756, line: 111, flags: DIFlagFwdDecl)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3755, file: !3756, line: 112, baseType: !1118, offset: 1344)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3755, file: !3756, line: 114, baseType: !489, size: 8, offset: 1344)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !711, file: !237, line: 471, baseType: !3768, size: 64, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !711, file: !237, line: 473, baseType: !299, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !711, file: !237, line: 475, baseType: !299, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !711, file: !237, line: 480, baseType: !1558, size: 192, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !711, file: !237, line: 484, baseType: !3846, size: 576, offset: 1216)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3846, file: !237, line: 362, baseType: !699, size: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3846, file: !237, line: 363, baseType: !699, size: 128, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3846, file: !237, line: 364, baseType: !699, size: 128, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3846, file: !237, line: 365, baseType: !699, size: 128, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3846, file: !237, line: 366, baseType: !489, size: 8, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3846, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !711, file: !237, line: 485, baseType: !3855, size: 2304, offset: 1792)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3952, !3956}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3855, file: !244, line: 566, baseType: !3808, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3855, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3855, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3855, file: !244, line: 569, baseType: !489, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3855, file: !244, line: 570, baseType: !489, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3855, file: !244, line: 571, baseType: !489, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3855, file: !244, line: 572, baseType: !489, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3855, file: !244, line: 573, baseType: !489, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3855, file: !244, line: 574, baseType: !489, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3855, file: !244, line: 575, baseType: !489, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3855, file: !244, line: 576, baseType: !489, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3855, file: !244, line: 577, baseType: !424, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3855, file: !244, line: 578, baseType: !727, offset: 96)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3855, file: !244, line: 580, baseType: !699, size: 128, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3855, file: !244, line: 581, baseType: !1880, size: 192, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3855, file: !244, line: 582, baseType: !3873, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3875, line: 43, size: 1472, elements: !3876)
!3875 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3884, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3874, file: !3875, line: 44, baseType: !316, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3874, file: !3875, line: 45, baseType: !307, size: 32, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3874, file: !3875, line: 46, baseType: !699, size: 128, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3874, file: !3875, line: 47, baseType: !727, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3874, file: !3875, line: 48, baseType: !3882, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3874, file: !3875, line: 49, baseType: !3885, size: 320, offset: 320)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3886, line: 11, size: 320, elements: !3887)
!3886 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3887 = !{!3888, !3889, !3890, !3895}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3885, file: !3886, line: 16, baseType: !1112, size: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3885, file: !3886, line: 17, baseType: !649, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3885, file: !3886, line: 18, baseType: !3891, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3885, file: !3886, line: 19, baseType: !424, size: 32, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3874, file: !3875, line: 50, baseType: !649, size: 64, offset: 640)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3874, file: !3875, line: 51, baseType: !1680, size: 64, offset: 704)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3874, file: !3875, line: 52, baseType: !1680, size: 64, offset: 768)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3874, file: !3875, line: 53, baseType: !1680, size: 64, offset: 832)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3874, file: !3875, line: 54, baseType: !1680, size: 64, offset: 896)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3874, file: !3875, line: 55, baseType: !1680, size: 64, offset: 960)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3874, file: !3875, line: 56, baseType: !649, size: 64, offset: 1024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3874, file: !3875, line: 57, baseType: !649, size: 64, offset: 1088)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3874, file: !3875, line: 58, baseType: !649, size: 64, offset: 1152)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3874, file: !3875, line: 59, baseType: !649, size: 64, offset: 1216)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3874, file: !3875, line: 60, baseType: !649, size: 64, offset: 1280)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3874, file: !3875, line: 61, baseType: !710, size: 64, offset: 1344)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3874, file: !3875, line: 62, baseType: !489, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3874, file: !3875, line: 63, baseType: !489, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3855, file: !244, line: 583, baseType: !489, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3855, file: !244, line: 584, baseType: !489, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3855, file: !244, line: 585, baseType: !489, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3855, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3855, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3855, file: !244, line: 592, baseType: !1672, size: 512, offset: 576)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3855, file: !244, line: 593, baseType: !300, size: 64, offset: 1088)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3855, file: !244, line: 594, baseType: !2334, size: 256, offset: 1152)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3855, file: !244, line: 595, baseType: !1859, size: 128, offset: 1408)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3855, file: !244, line: 596, baseType: !3882, size: 64, offset: 1536)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3855, file: !244, line: 597, baseType: !448, size: 32, offset: 1600)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3855, file: !244, line: 598, baseType: !448, size: 32, offset: 1632)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3855, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3855, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3855, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3855, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3855, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3855, file: !244, line: 604, baseType: !489, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3855, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3855, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3855, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3855, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3855, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3855, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3855, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3855, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3855, file: !244, line: 613, baseType: !307, size: 32, offset: 1792)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3855, file: !244, line: 614, baseType: !307, size: 32, offset: 1824)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3855, file: !244, line: 615, baseType: !300, size: 64, offset: 1856)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3855, file: !244, line: 616, baseType: !300, size: 64, offset: 1920)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3855, file: !244, line: 617, baseType: !300, size: 64, offset: 1984)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3855, file: !244, line: 618, baseType: !300, size: 64, offset: 2048)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3855, file: !244, line: 620, baseType: !3943, size: 64, offset: 2112)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3944, file: !244, line: 537, baseType: !727)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3944, file: !244, line: 538, baseType: !7, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3944, file: !244, line: 540, baseType: !699, size: 128, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3944, file: !244, line: 543, baseType: !3950, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3855, file: !244, line: 621, baseType: !3953, size: 64, offset: 2176)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !710, !305}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3855, file: !244, line: 622, baseType: !3957, size: 64, offset: 2240)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !711, file: !237, line: 486, baseType: !3960, size: 64, offset: 4096)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3969, !3970, !3971}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3961, file: !244, line: 643, baseType: !3725, size: 1472)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3961, file: !244, line: 644, baseType: !3728, size: 64, offset: 1472)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3961, file: !244, line: 645, baseType: !3966, size: 64, offset: 1536)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !710, !489}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3961, file: !244, line: 646, baseType: !3728, size: 64, offset: 1600)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3961, file: !244, line: 647, baseType: !3719, size: 64, offset: 1664)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3961, file: !244, line: 648, baseType: !3719, size: 64, offset: 1728)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !711, file: !237, line: 493, baseType: !3973, size: 64, offset: 4160)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3975)
!3975 = !{!3976, !3977, !3978, !4151, !4152, !4153, !4154, !4155, !4156, !4159, !4160, !4161, !4162, !4163, !4164, !4165}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3974, file: !258, line: 163, baseType: !699, size: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3974, file: !258, line: 164, baseType: !316, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3974, file: !258, line: 165, baseType: !3979, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3981)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3982)
!3982 = !{!3983, !4101, !4112, !4117, !4121, !4128, !4132, !4136, !4143, !4147}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3981, file: !258, line: 106, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!307, !3973, !3987, !257}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3989, line: 51, size: 1344, elements: !3990)
!3989 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3990 = !{!3991, !3992, !3994, !3995, !4085, !4094, !4095, !4096, !4097, !4098, !4099, !4100}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3988, file: !3989, line: 52, baseType: !316, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3988, file: !3989, line: 53, baseType: !3993, size: 32, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3989, line: 28, baseType: !424)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3988, file: !3989, line: 54, baseType: !316, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3988, file: !3989, line: 55, baseType: !3996, size: 192, offset: 192)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3997, line: 17, size: 192, elements: !3998)
!3997 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3998 = !{!3999, !4001, !4084}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3996, file: !3997, line: 18, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3996, file: !3997, line: 19, baseType: !4002, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4004)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3997, line: 110, size: 1152, elements: !4005)
!4005 = !{!4006, !4010, !4014, !4020, !4026, !4030, !4034, !4039, !4043, !4044, !4048, !4052, !4056, !4067, !4068, !4069, !4070, !4080}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4004, file: !3997, line: 111, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!4000, !4000}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4004, file: !3997, line: 112, baseType: !4011, size: 64, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !4000}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4004, file: !3997, line: 113, baseType: !4015, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!489, !4018}
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3996)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4004, file: !3997, line: 114, baseType: !4021, size: 64, offset: 192)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!2504, !4018, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4004, file: !3997, line: 116, baseType: !4027, size: 64, offset: 256)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!489, !4018, !316}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4004, file: !3997, line: 118, baseType: !4031, size: 64, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!307, !4018, !316, !7, !299, !810}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4004, file: !3997, line: 123, baseType: !4035, size: 64, offset: 384)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!307, !4018, !316, !4038, !810}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4004, file: !3997, line: 126, baseType: !4040, size: 64, offset: 448)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!316, !4018}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4004, file: !3997, line: 127, baseType: !4040, size: 64, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4004, file: !3997, line: 128, baseType: !4045, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!4000, !4018}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4004, file: !3997, line: 130, baseType: !4049, size: 64, offset: 640)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!4000, !4018, !4000}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4004, file: !3997, line: 133, baseType: !4053, size: 64, offset: 704)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!4000, !4018, !316}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4004, file: !3997, line: 135, baseType: !4057, size: 64, offset: 768)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!307, !4018, !316, !316, !7, !7, !4060}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3997, line: 43, size: 640, elements: !4062)
!4062 = !{!4063, !4064, !4065}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4061, file: !3997, line: 44, baseType: !4000, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4061, file: !3997, line: 45, baseType: !7, size: 32, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4061, file: !3997, line: 46, baseType: !4066, size: 512, offset: 128)
!4066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 512, elements: !469)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4004, file: !3997, line: 140, baseType: !4049, size: 64, offset: 832)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4004, file: !3997, line: 143, baseType: !4045, size: 64, offset: 896)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4004, file: !3997, line: 145, baseType: !4007, size: 64, offset: 960)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4004, file: !3997, line: 146, baseType: !4071, size: 64, offset: 1024)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!307, !4018, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3997, line: 29, size: 128, elements: !4076)
!4076 = !{!4077, !4078, !4079}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4075, file: !3997, line: 30, baseType: !7, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4075, file: !3997, line: 31, baseType: !7, size: 32, offset: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4075, file: !3997, line: 32, baseType: !4018, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4004, file: !3997, line: 148, baseType: !4081, size: 64, offset: 1088)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!307, !4018, !710}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3996, file: !3997, line: 20, baseType: !710, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3988, file: !3989, line: 57, baseType: !4086, size: 64, offset: 384)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3989, line: 31, size: 704, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092, !4093}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4087, file: !3989, line: 32, baseType: !338, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4087, file: !3989, line: 33, baseType: !307, size: 32, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4087, file: !3989, line: 34, baseType: !299, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4087, file: !3989, line: 35, baseType: !4086, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4087, file: !3989, line: 43, baseType: !831, size: 448, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3988, file: !3989, line: 58, baseType: !4086, size: 64, offset: 448)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3988, file: !3989, line: 59, baseType: !3987, size: 64, offset: 512)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3988, file: !3989, line: 60, baseType: !3987, size: 64, offset: 576)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3988, file: !3989, line: 61, baseType: !3987, size: 64, offset: 640)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3988, file: !3989, line: 63, baseType: !714, size: 512, offset: 704)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3988, file: !3989, line: 65, baseType: !649, size: 64, offset: 1216)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3988, file: !3989, line: 66, baseType: !299, size: 64, offset: 1280)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3981, file: !258, line: 108, baseType: !4102, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!307, !3973, !4105, !257}
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4107)
!4107 = !{!4108, !4109, !4110}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4106, file: !258, line: 64, baseType: !4000, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4106, file: !258, line: 65, baseType: !307, size: 32, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4106, file: !258, line: 66, baseType: !4111, size: 512, offset: 96)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 512, elements: !2110)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3981, file: !258, line: 110, baseType: !4113, size: 64, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!307, !3973, !7, !4116}
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !298, line: 164, baseType: !649)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3981, file: !258, line: 111, baseType: !4118, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !3973, !7}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3981, file: !258, line: 112, baseType: !4122, size: 64, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!307, !3973, !3987, !4125, !7, !4127, !372}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3981, file: !258, line: 117, baseType: !4129, size: 64, offset: 320)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!307, !3973, !7, !7, !299}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3981, file: !258, line: 119, baseType: !4133, size: 64, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !3973, !7, !7}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3981, file: !258, line: 121, baseType: !4137, size: 64, offset: 448)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!307, !3973, !4140, !489}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4142, line: 11, flags: DIFlagFwdDecl)
!4142 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3981, file: !258, line: 122, baseType: !4144, size: 64, offset: 512)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{null, !3973, !4140}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3981, file: !258, line: 123, baseType: !4148, size: 64, offset: 576)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!307, !3973, !4105, !4127, !372}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3974, file: !258, line: 166, baseType: !299, size: 64, offset: 256)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3974, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3974, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3974, file: !258, line: 171, baseType: !4000, size: 64, offset: 384)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3974, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3974, file: !258, line: 173, baseType: !4157, size: 64, offset: 512)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3974, file: !258, line: 175, baseType: !3973, size: 64, offset: 576)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3974, file: !258, line: 182, baseType: !4116, size: 64, offset: 640)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3974, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3974, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3974, file: !258, line: 185, baseType: !1212, size: 128, offset: 768)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3974, file: !258, line: 186, baseType: !1558, size: 192, offset: 896)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3974, file: !258, line: 187, baseType: !4166, offset: 1088)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2706)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !711, file: !237, line: 499, baseType: !699, size: 128, offset: 4224)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !711, file: !237, line: 502, baseType: !4169, size: 64, offset: 4352)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4171)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !711, file: !237, line: 504, baseType: !4173, size: 64, offset: 4416)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !711, file: !237, line: 505, baseType: !300, size: 64, offset: 4480)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !711, file: !237, line: 510, baseType: !300, size: 64, offset: 4544)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !711, file: !237, line: 511, baseType: !4177, size: 64, offset: 4608)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4179)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !711, file: !237, line: 513, baseType: !4181, size: 64, offset: 4672)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4183)
!4183 = !{!4184, !4185}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4182, file: !237, line: 293, baseType: !7, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4182, file: !237, line: 294, baseType: !649, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !711, file: !237, line: 515, baseType: !699, size: 128, offset: 4736)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !711, file: !237, line: 526, baseType: !4188, offset: 4864)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4189, line: 5, elements: !741)
!4189 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !711, file: !237, line: 528, baseType: !3987, size: 64, offset: 4864)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !711, file: !237, line: 529, baseType: !4000, size: 64, offset: 4928)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !711, file: !237, line: 534, baseType: !988, size: 32, offset: 4992)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !711, file: !237, line: 535, baseType: !424, size: 32, offset: 5024)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !711, file: !237, line: 537, baseType: !727, offset: 5056)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !711, file: !237, line: 538, baseType: !699, size: 128, offset: 5056)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !711, file: !237, line: 540, baseType: !4197, size: 64, offset: 5184)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4199, line: 54, size: 960, elements: !4200)
!4199 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4206, !4207, !4211, !4215, !4216, !4217, !4218, !4222, !4226, !4227}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4198, file: !4199, line: 55, baseType: !316, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4198, file: !4199, line: 56, baseType: !320, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4198, file: !4199, line: 58, baseType: !816, size: 64, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4198, file: !4199, line: 59, baseType: !816, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4198, file: !4199, line: 60, baseType: !720, size: 64, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4198, file: !4199, line: 62, baseType: !3710, size: 64, offset: 320)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4198, file: !4199, line: 63, baseType: !4208, size: 64, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!338, !710, !3717}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4198, file: !4199, line: 65, baseType: !4212, size: 64, offset: 448)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{null, !4197}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4198, file: !4199, line: 66, baseType: !3719, size: 64, offset: 512)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4198, file: !4199, line: 68, baseType: !3728, size: 64, offset: 576)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4198, file: !4199, line: 70, baseType: !3518, size: 64, offset: 640)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4198, file: !4199, line: 71, baseType: !4219, size: 64, offset: 704)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!2504, !710}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4198, file: !4199, line: 73, baseType: !4223, size: 64, offset: 768)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{null, !710, !3550, !3551}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4198, file: !4199, line: 75, baseType: !3723, size: 64, offset: 832)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4198, file: !4199, line: 77, baseType: !3837, size: 64, offset: 896)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !711, file: !237, line: 541, baseType: !816, size: 64, offset: 5248)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !711, file: !237, line: 543, baseType: !3719, size: 64, offset: 5312)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !711, file: !237, line: 544, baseType: !4231, size: 64, offset: 5376)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !711, file: !237, line: 545, baseType: !4234, size: 64, offset: 5440)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !711, file: !237, line: 547, baseType: !489, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !711, file: !237, line: 548, baseType: !489, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !711, file: !237, line: 549, baseType: !489, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !711, file: !237, line: 550, baseType: !489, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !695, file: !272, line: 111, baseType: !320, size: 64, offset: 576)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !695, file: !272, line: 113, baseType: !307, size: 32, offset: 640)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !695, file: !272, line: 114, baseType: !4243, size: 64, offset: 704)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4260}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4244, file: !272, line: 158, baseType: !699, size: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4244, file: !272, line: 159, baseType: !3176, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4244, file: !272, line: 160, baseType: !694, size: 64, offset: 192)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4244, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4244, file: !272, line: 162, baseType: !307, size: 32, offset: 288)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4244, file: !272, line: 163, baseType: !424, size: 32, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4244, file: !272, line: 167, baseType: !307, size: 32, offset: 352)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4244, file: !272, line: 168, baseType: !307, size: 32, offset: 384)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4244, file: !272, line: 169, baseType: !307, size: 32, offset: 416)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4244, file: !272, line: 171, baseType: !1859, size: 128, offset: 448)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4244, file: !272, line: 173, baseType: !4257, size: 64, offset: 576)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!307, !840, !7, !299}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4244, file: !272, line: 187, baseType: !299, size: 64, offset: 640)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !695, file: !272, line: 115, baseType: !1558, size: 192, offset: 768)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !436, file: !51, line: 690, baseType: !299, size: 64, offset: 6144)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !436, file: !51, line: 691, baseType: !299, size: 64, offset: 6208)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !436, file: !51, line: 692, baseType: !299, size: 64, offset: 6272)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !436, file: !51, line: 693, baseType: !299, size: 64, offset: 6336)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !436, file: !51, line: 694, baseType: !299, size: 64, offset: 6400)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !436, file: !51, line: 695, baseType: !512, size: 3648, offset: 6464)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !436, file: !51, line: 698, baseType: !4269, size: 64, offset: 10112)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!307, !299, !307, !307, !307}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !436, file: !51, line: 699, baseType: !307, size: 32, offset: 10176)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !436, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !414, file: !51, line: 231, baseType: !475, size: 64, offset: 1280)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !414, file: !51, line: 232, baseType: !475, size: 64, offset: 1344)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !414, file: !51, line: 233, baseType: !475, size: 64, offset: 1408)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !414, file: !51, line: 234, baseType: !475, size: 64, offset: 1472)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !414, file: !51, line: 237, baseType: !475, size: 64, offset: 1536)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !414, file: !51, line: 238, baseType: !4280, size: 64, offset: 1600)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!307, !435, !672}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !414, file: !51, line: 240, baseType: !690, size: 64, offset: 1664)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !414, file: !51, line: 242, baseType: !594, size: 64, offset: 1728)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !414, file: !51, line: 243, baseType: !594, size: 64, offset: 1792)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !414, file: !51, line: 244, baseType: !594, size: 64, offset: 1856)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !414, file: !51, line: 248, baseType: !594, size: 64, offset: 1920)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !414, file: !51, line: 249, baseType: !599, size: 64, offset: 1984)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !414, file: !51, line: 250, baseType: !681, size: 64, offset: 2048)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !414, file: !51, line: 258, baseType: !4291, size: 64, offset: 2112)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!307, !435, !4294, !307}
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !414, file: !51, line: 267, baseType: !4296, size: 64, offset: 2176)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!307, !435, !424}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !414, file: !51, line: 268, baseType: !4296, size: 64, offset: 2240)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 595, type: !4302, isLocal: true, isDefinition: true)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 112, elements: !4303)
!4303 = !{!4304}
!4304 = !DISubrange(count: 14)
!4305 = !{i32 7, !"Dwarf Version", i32 4}
!4306 = !{i32 2, !"Debug Info Version", i32 3}
!4307 = !{i32 1, !"wchar_size", i32 2}
!4308 = !{i32 1, !"Code Model", i32 2}
!4309 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4310 = distinct !DISubprogram(name: "cx24113_agc_callback", scope: !3, file: !3, line: 489, type: !433, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4311 = !DILocalVariable(name: "fe", arg: 1, scope: !4310, file: !3, line: 489, type: !435)
!4312 = !DILocation(line: 489, column: 48, scope: !4310)
!4313 = !DILocalVariable(name: "state", scope: !4310, file: !3, line: 491, type: !4314)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cx24113_state", file: !3, line: 31, size: 384, elements: !4316)
!4316 = !{!4317, !4440, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4315, file: !3, line: 32, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4320, line: 695, size: 7552, elements: !4321)
!4320 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4321 = !{!4322, !4323, !4324, !4361, !4362, !4376, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4393, !4394, !4395, !4396, !4428, !4439}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4319, file: !4320, line: 696, baseType: !320, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4319, file: !4320, line: 697, baseType: !7, size: 32, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4319, file: !4320, line: 698, baseType: !4325, size: 64, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4320, line: 519, size: 320, elements: !4328)
!4328 = !{!4329, !4342, !4343, !4356, !4357}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4327, file: !4320, line: 529, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!307, !4318, !4333, !307}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4335, line: 69, size: 128, elements: !4336)
!4335 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4336 = !{!4337, !4338, !4339, !4340}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4334, file: !4335, line: 70, baseType: !294, size: 16)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4334, file: !4335, line: 71, baseType: !294, size: 16, offset: 16)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4334, file: !4335, line: 84, baseType: !294, size: 16, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4334, file: !4335, line: 85, baseType: !4341, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4327, file: !4320, line: 531, baseType: !4330, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4327, file: !4320, line: 533, baseType: !4344, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!307, !4318, !292, !296, !318, !350, !307, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4335, line: 135, size: 272, elements: !4349)
!4349 = !{!4350, !4351, !4352}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4348, file: !4335, line: 136, baseType: !351, size: 8)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4348, file: !4335, line: 137, baseType: !294, size: 16)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4348, file: !4335, line: 138, baseType: !4353, size: 272)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 272, elements: !4354)
!4354 = !{!4355}
!4355 = !DISubrange(count: 34)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4327, file: !4320, line: 536, baseType: !4344, size: 64, offset: 192)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4327, file: !4320, line: 541, baseType: !4358, size: 64, offset: 256)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!424, !4318}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4319, file: !4320, line: 699, baseType: !299, size: 64, offset: 192)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4319, file: !4320, line: 702, baseType: !4363, size: 64, offset: 256)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4365)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4320, line: 557, size: 192, elements: !4366)
!4366 = !{!4367, !4371, !4375}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4365, file: !4320, line: 558, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !4318, !7}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4365, file: !4320, line: 559, baseType: !4372, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!307, !4318, !7}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4365, file: !4320, line: 560, baseType: !4368, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4319, file: !4320, line: 703, baseType: !4377, size: 192, offset: 320)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4378, line: 30, size: 192, elements: !4379)
!4378 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4379 = !{!4380, !4381, !4382}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4377, file: !4378, line: 31, baseType: !1249)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4377, file: !4378, line: 32, baseType: !1221, size: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4377, file: !4378, line: 33, baseType: !1601, size: 64, offset: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4319, file: !4320, line: 704, baseType: !4377, size: 192, offset: 512)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4319, file: !4320, line: 706, baseType: !307, size: 32, offset: 704)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4319, file: !4320, line: 707, baseType: !307, size: 32, offset: 736)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4319, file: !4320, line: 708, baseType: !711, size: 5568, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4319, file: !4320, line: 709, baseType: !649, size: 64, offset: 6336)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4319, file: !4320, line: 713, baseType: !307, size: 32, offset: 6400)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4319, file: !4320, line: 714, baseType: !4390, size: 384, offset: 6432)
!4390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 384, elements: !4391)
!4391 = !{!4392}
!4392 = !DISubrange(count: 48)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4319, file: !4320, line: 715, baseType: !1880, size: 192, offset: 6848)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4319, file: !4320, line: 717, baseType: !1558, size: 192, offset: 7040)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4319, file: !4320, line: 718, baseType: !699, size: 128, offset: 7232)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4319, file: !4320, line: 720, baseType: !4397, size: 64, offset: 7360)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4320, line: 618, size: 832, elements: !4399)
!4399 = !{!4400, !4404, !4405, !4409, !4410, !4411, !4412, !4416, !4417, !4420, !4421, !4424, !4427}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4398, file: !4320, line: 619, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!307, !4318}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4398, file: !4320, line: 621, baseType: !4401, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4398, file: !4320, line: 622, baseType: !4406, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{null, !4318, !307}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4398, file: !4320, line: 623, baseType: !4401, size: 64, offset: 192)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4398, file: !4320, line: 624, baseType: !4406, size: 64, offset: 256)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4398, file: !4320, line: 625, baseType: !4401, size: 64, offset: 320)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4398, file: !4320, line: 627, baseType: !4413, size: 64, offset: 384)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{null, !4318}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4398, file: !4320, line: 628, baseType: !4413, size: 64, offset: 448)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4398, file: !4320, line: 631, baseType: !4418, size: 64, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4320, line: 631, flags: DIFlagFwdDecl)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4398, file: !4320, line: 632, baseType: !4418, size: 64, offset: 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4398, file: !4320, line: 633, baseType: !4422, size: 64, offset: 640)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4320, line: 633, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4398, file: !4320, line: 634, baseType: !4425, size: 64, offset: 704)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4320, line: 634, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4398, file: !4320, line: 635, baseType: !4425, size: 64, offset: 768)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4319, file: !4320, line: 721, baseType: !4429, size: 64, offset: 7424)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4431)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4320, line: 664, size: 192, elements: !4432)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4431, file: !4320, line: 665, baseType: !300, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4431, file: !4320, line: 666, baseType: !307, size: 32, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4431, file: !4320, line: 667, baseType: !292, size: 16, offset: 96)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4431, file: !4320, line: 668, baseType: !292, size: 16, offset: 112)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4431, file: !4320, line: 669, baseType: !292, size: 16, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4431, file: !4320, line: 670, baseType: !292, size: 16, offset: 144)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4319, file: !4320, line: 723, baseType: !3973, size: 64, offset: 7488)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4315, file: !3, line: 33, baseType: !4441, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4443)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cx24113_config", file: !4444, line: 13, size: 64, elements: !4445)
!4444 = !DIFile(filename: "drivers/media/dvb-frontends/cx24113.h", directory: "/home/lizy2001/genbc/linux")
!4445 = !{!4446, !4447}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_addr", scope: !4443, file: !4444, line: 14, baseType: !350, size: 8)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "xtal_khz", scope: !4443, file: !4444, line: 16, baseType: !424, size: 32, offset: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4315, file: !3, line: 36, baseType: !350, size: 8, offset: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !4315, file: !3, line: 37, baseType: !350, size: 8, offset: 136)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "icp_mode", scope: !4315, file: !3, line: 39, baseType: !350, size: 1, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "icp_man", scope: !4315, file: !3, line: 45, baseType: !350, size: 2, offset: 145, flags: DIFlagBitField, extraData: i64 144)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "icp_auto_low", scope: !4315, file: !3, line: 46, baseType: !350, size: 2, offset: 147, flags: DIFlagBitField, extraData: i64 144)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "icp_auto_mlow", scope: !4315, file: !3, line: 47, baseType: !350, size: 2, offset: 149, flags: DIFlagBitField, extraData: i64 144)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "icp_auto_mhi", scope: !4315, file: !3, line: 48, baseType: !350, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 152)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "icp_auto_hi", scope: !4315, file: !3, line: 49, baseType: !350, size: 2, offset: 154, flags: DIFlagBitField, extraData: i64 152)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "icp_dig", scope: !4315, file: !3, line: 50, baseType: !350, size: 8, offset: 160)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "lna_gain", scope: !4315, file: !3, line: 55, baseType: !350, size: 2, offset: 168, flags: DIFlagBitField, extraData: i64 168)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "acp_on", scope: !4315, file: !3, line: 57, baseType: !350, size: 1, offset: 170, flags: DIFlagBitField, extraData: i64 168)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "vco_mode", scope: !4315, file: !3, line: 59, baseType: !350, size: 2, offset: 171, flags: DIFlagBitField, extraData: i64 168)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "vco_shift", scope: !4315, file: !3, line: 60, baseType: !350, size: 1, offset: 173, flags: DIFlagBitField, extraData: i64 168)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "vco_band", scope: !4315, file: !3, line: 67, baseType: !350, size: 8, offset: 176)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "vcodiv", scope: !4315, file: !3, line: 71, baseType: !350, size: 8, offset: 184)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "bs_delay", scope: !4315, file: !3, line: 73, baseType: !350, size: 4, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "bs_freqcnt", scope: !4315, file: !3, line: 74, baseType: !292, size: 13, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "bs_rdiv", scope: !4315, file: !3, line: 75, baseType: !292, size: 16, offset: 224)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "prescaler_mode", scope: !4315, file: !3, line: 76, baseType: !350, size: 1, offset: 240, flags: DIFlagBitField, extraData: i64 240)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "rfvga_bias_ctrl", scope: !4315, file: !3, line: 78, baseType: !350, size: 8, offset: 248)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_gain_thres", scope: !4315, file: !3, line: 80, baseType: !1588, size: 16, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "gain_level", scope: !4315, file: !3, line: 81, baseType: !350, size: 8, offset: 272)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4315, file: !3, line: 83, baseType: !424, size: 32, offset: 288)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "refdiv", scope: !4315, file: !3, line: 85, baseType: !350, size: 8, offset: 320)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "Fwindow_enabled", scope: !4315, file: !3, line: 87, baseType: !350, size: 8, offset: 328)
!4473 = !DILocation(line: 491, column: 24, scope: !4310)
!4474 = !DILocation(line: 491, column: 32, scope: !4310)
!4475 = !DILocation(line: 491, column: 36, scope: !4310)
!4476 = !DILocalVariable(name: "s", scope: !4310, file: !3, line: 492, type: !1588)
!4477 = !DILocation(line: 492, column: 6, scope: !4310)
!4478 = !DILocalVariable(name: "i", scope: !4310, file: !3, line: 492, type: !1588)
!4479 = !DILocation(line: 492, column: 9, scope: !4310)
!4480 = !DILocation(line: 493, column: 7, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 493, column: 6)
!4482 = !DILocation(line: 493, column: 11, scope: !4481)
!4483 = !DILocation(line: 493, column: 15, scope: !4481)
!4484 = !DILocation(line: 493, column: 6, scope: !4310)
!4485 = !DILocation(line: 494, column: 3, scope: !4481)
!4486 = !DILocation(line: 496, column: 2, scope: !4310)
!4487 = !DILocation(line: 498, column: 3, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 496, column: 5)
!4489 = !DILocation(line: 498, column: 7, scope: !4488)
!4490 = !DILocation(line: 498, column: 11, scope: !4488)
!4491 = !DILocation(line: 498, column: 32, scope: !4488)
!4492 = !DILocation(line: 499, column: 5, scope: !4488)
!4493 = !DILocation(line: 500, column: 3, scope: !4488)
!4494 = !DILocation(line: 500, column: 3, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 500, column: 3)
!4496 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 500, column: 3)
!4497 = !DILocation(line: 500, column: 3, scope: !4496)
!4498 = !DILocation(line: 500, column: 3, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 500, column: 3)
!4500 = !DILocation(line: 501, column: 10, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 501, column: 3)
!4502 = !DILocation(line: 501, column: 8, scope: !4501)
!4503 = !DILocation(line: 501, column: 15, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 501, column: 3)
!4505 = !DILocation(line: 501, column: 17, scope: !4504)
!4506 = !DILocation(line: 501, column: 3, scope: !4501)
!4507 = !DILocation(line: 502, column: 26, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 502, column: 8)
!4509 = !DILocation(line: 502, column: 33, scope: !4508)
!4510 = !DILocation(line: 502, column: 8, scope: !4508)
!4511 = !DILocation(line: 502, column: 45, scope: !4508)
!4512 = !DILocation(line: 502, column: 50, scope: !4508)
!4513 = !DILocation(line: 502, column: 48, scope: !4508)
!4514 = !DILocation(line: 502, column: 8, scope: !4504)
!4515 = !DILocation(line: 503, column: 5, scope: !4508)
!4516 = !DILocation(line: 501, column: 50, scope: !4504)
!4517 = !DILocation(line: 501, column: 3, scope: !4504)
!4518 = distinct !{!4518, !4506, !4519}
!4519 = !DILocation(line: 503, column: 5, scope: !4501)
!4520 = !DILocation(line: 504, column: 13, scope: !4488)
!4521 = !DILocation(line: 504, column: 14, scope: !4488)
!4522 = !DILocation(line: 504, column: 11, scope: !4488)
!4523 = !DILocation(line: 504, column: 7, scope: !4488)
!4524 = !DILocation(line: 504, column: 5, scope: !4488)
!4525 = !DILocation(line: 505, column: 2, scope: !4488)
!4526 = !DILocation(line: 505, column: 37, scope: !4310)
!4527 = !DILocation(line: 505, column: 44, scope: !4310)
!4528 = !DILocation(line: 505, column: 11, scope: !4310)
!4529 = distinct !{!4529, !4486, !4530}
!4530 = !DILocation(line: 505, column: 46, scope: !4310)
!4531 = !DILocation(line: 506, column: 1, scope: !4310)
!4532 = distinct !DISubprogram(name: "cx24113_set_gain_settings", scope: !3, file: !3, line: 187, type: !4533, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!307, !4314, !1588}
!4535 = !DILocalVariable(name: "state", arg: 1, scope: !4532, file: !3, line: 187, type: !4314)
!4536 = !DILocation(line: 187, column: 60, scope: !4532)
!4537 = !DILocalVariable(name: "power_estimation", arg: 2, scope: !4532, file: !3, line: 188, type: !1588)
!4538 = !DILocation(line: 188, column: 7, scope: !4532)
!4539 = !DILocalVariable(name: "ampout", scope: !4532, file: !3, line: 190, type: !350)
!4540 = !DILocation(line: 190, column: 5, scope: !4532)
!4541 = !DILocation(line: 190, column: 30, scope: !4532)
!4542 = !DILocation(line: 190, column: 14, scope: !4532)
!4543 = !DILocation(line: 190, column: 43, scope: !4532)
!4544 = !DILocalVariable(name: "vga", scope: !4532, file: !3, line: 191, type: !350)
!4545 = !DILocation(line: 191, column: 5, scope: !4532)
!4546 = !DILocation(line: 191, column: 30, scope: !4532)
!4547 = !DILocation(line: 191, column: 14, scope: !4532)
!4548 = !DILocation(line: 191, column: 43, scope: !4532)
!4549 = !DILocalVariable(name: "rfvga", scope: !4532, file: !3, line: 192, type: !350)
!4550 = !DILocation(line: 192, column: 5, scope: !4532)
!4551 = !DILocation(line: 192, column: 30, scope: !4532)
!4552 = !DILocation(line: 192, column: 14, scope: !4532)
!4553 = !DILocation(line: 192, column: 43, scope: !4532)
!4554 = !DILocalVariable(name: "gain_level", scope: !4532, file: !3, line: 193, type: !350)
!4555 = !DILocation(line: 193, column: 5, scope: !4532)
!4556 = !DILocation(line: 193, column: 18, scope: !4532)
!4557 = !DILocation(line: 193, column: 38, scope: !4532)
!4558 = !DILocation(line: 193, column: 45, scope: !4532)
!4559 = !DILocation(line: 193, column: 35, scope: !4532)
!4560 = !DILocation(line: 195, column: 2, scope: !4532)
!4561 = !DILocation(line: 195, column: 2, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 195, column: 2)
!4563 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 195, column: 2)
!4564 = !DILocation(line: 195, column: 2, scope: !4563)
!4565 = !DILocation(line: 195, column: 2, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 195, column: 2)
!4567 = !DILocation(line: 199, column: 6, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 199, column: 6)
!4569 = !DILocation(line: 199, column: 20, scope: !4568)
!4570 = !DILocation(line: 199, column: 27, scope: !4568)
!4571 = !DILocation(line: 199, column: 17, scope: !4568)
!4572 = !DILocation(line: 199, column: 6, scope: !4532)
!4573 = !DILocation(line: 200, column: 3, scope: !4568)
!4574 = !DILocation(line: 202, column: 9, scope: !4532)
!4575 = !DILocation(line: 204, column: 6, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 204, column: 6)
!4577 = !DILocation(line: 204, column: 6, scope: !4532)
!4578 = !DILocation(line: 205, column: 9, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 204, column: 18)
!4580 = !DILocation(line: 206, column: 9, scope: !4579)
!4581 = !DILocation(line: 207, column: 2, scope: !4579)
!4582 = !DILocation(line: 208, column: 9, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 207, column: 9)
!4584 = !DILocation(line: 209, column: 8, scope: !4583)
!4585 = !DILocation(line: 211, column: 22, scope: !4532)
!4586 = !DILocation(line: 211, column: 2, scope: !4532)
!4587 = !DILocation(line: 211, column: 9, scope: !4532)
!4588 = !DILocation(line: 211, column: 20, scope: !4532)
!4589 = !DILocation(line: 213, column: 19, scope: !4532)
!4590 = !DILocation(line: 213, column: 32, scope: !4532)
!4591 = !DILocation(line: 213, column: 2, scope: !4532)
!4592 = !DILocation(line: 214, column: 19, scope: !4532)
!4593 = !DILocation(line: 214, column: 32, scope: !4532)
!4594 = !DILocation(line: 214, column: 2, scope: !4532)
!4595 = !DILocation(line: 215, column: 19, scope: !4532)
!4596 = !DILocation(line: 215, column: 32, scope: !4532)
!4597 = !DILocation(line: 215, column: 2, scope: !4532)
!4598 = !DILocation(line: 217, column: 2, scope: !4532)
!4599 = !DILocation(line: 218, column: 1, scope: !4532)
!4600 = distinct !DISubprogram(name: "cx24113_attach", scope: !3, file: !3, line: 541, type: !4601, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!435, !435, !4441, !4318}
!4603 = !DILocalVariable(name: "fe", arg: 1, scope: !4600, file: !3, line: 541, type: !435)
!4604 = !DILocation(line: 541, column: 58, scope: !4600)
!4605 = !DILocalVariable(name: "config", arg: 2, scope: !4600, file: !3, line: 542, type: !4441)
!4606 = !DILocation(line: 542, column: 32, scope: !4600)
!4607 = !DILocalVariable(name: "i2c", arg: 3, scope: !4600, file: !3, line: 542, type: !4318)
!4608 = !DILocation(line: 542, column: 60, scope: !4600)
!4609 = !DILocalVariable(name: "state", scope: !4600, file: !3, line: 545, type: !4314)
!4610 = !DILocation(line: 545, column: 24, scope: !4600)
!4611 = !DILocation(line: 545, column: 32, scope: !4600)
!4612 = !DILocalVariable(name: "rc", scope: !4600, file: !3, line: 546, type: !307)
!4613 = !DILocation(line: 546, column: 6, scope: !4600)
!4614 = !DILocation(line: 548, column: 7, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 548, column: 6)
!4616 = !DILocation(line: 548, column: 6, scope: !4600)
!4617 = !DILocation(line: 549, column: 3, scope: !4615)
!4618 = !DILocation(line: 552, column: 18, scope: !4600)
!4619 = !DILocation(line: 552, column: 2, scope: !4600)
!4620 = !DILocation(line: 552, column: 9, scope: !4600)
!4621 = !DILocation(line: 552, column: 16, scope: !4600)
!4622 = !DILocation(line: 553, column: 15, scope: !4600)
!4623 = !DILocation(line: 553, column: 2, scope: !4600)
!4624 = !DILocation(line: 553, column: 9, scope: !4600)
!4625 = !DILocation(line: 553, column: 13, scope: !4600)
!4626 = !DILocation(line: 555, column: 2, scope: !4600)
!4627 = !DILocation(line: 555, column: 2, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 555, column: 2)
!4629 = !DILocation(line: 559, column: 18, scope: !4600)
!4630 = !DILocation(line: 559, column: 2, scope: !4600)
!4631 = !DILocation(line: 561, column: 23, scope: !4600)
!4632 = !DILocation(line: 561, column: 7, scope: !4600)
!4633 = !DILocation(line: 561, column: 5, scope: !4600)
!4634 = !DILocation(line: 562, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 562, column: 6)
!4636 = !DILocation(line: 562, column: 9, scope: !4635)
!4637 = !DILocation(line: 562, column: 6, scope: !4600)
!4638 = !DILocation(line: 563, column: 3, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 562, column: 14)
!4640 = !DILocation(line: 563, column: 3, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 563, column: 3)
!4642 = !DILocation(line: 564, column: 3, scope: !4639)
!4643 = !DILocation(line: 566, column: 15, scope: !4600)
!4644 = !DILocation(line: 566, column: 2, scope: !4600)
!4645 = !DILocation(line: 566, column: 9, scope: !4600)
!4646 = !DILocation(line: 566, column: 13, scope: !4600)
!4647 = !DILocation(line: 568, column: 10, scope: !4600)
!4648 = !DILocation(line: 568, column: 2, scope: !4600)
!4649 = !DILocation(line: 570, column: 3, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 568, column: 14)
!4651 = !DILocation(line: 570, column: 3, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 570, column: 3)
!4653 = !DILocation(line: 571, column: 3, scope: !4650)
!4654 = !DILocation(line: 573, column: 3, scope: !4650)
!4655 = !DILocation(line: 573, column: 3, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 573, column: 3)
!4657 = !DILocation(line: 574, column: 3, scope: !4650)
!4658 = !DILocation(line: 576, column: 3, scope: !4650)
!4659 = !DILocation(line: 576, column: 3, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 576, column: 3)
!4661 = !DILocation(line: 577, column: 3, scope: !4650)
!4662 = !DILocation(line: 579, column: 31, scope: !4600)
!4663 = !DILocation(line: 579, column: 15, scope: !4600)
!4664 = !DILocation(line: 579, column: 2, scope: !4600)
!4665 = !DILocation(line: 579, column: 9, scope: !4600)
!4666 = !DILocation(line: 579, column: 13, scope: !4600)
!4667 = !DILocation(line: 580, column: 2, scope: !4600)
!4668 = !DILocation(line: 580, column: 2, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 580, column: 2)
!4670 = !DILocation(line: 583, column: 10, scope: !4600)
!4671 = !DILocation(line: 583, column: 14, scope: !4600)
!4672 = !DILocation(line: 583, column: 18, scope: !4600)
!4673 = !DILocation(line: 583, column: 2, scope: !4600)
!4674 = !DILocation(line: 585, column: 19, scope: !4600)
!4675 = !DILocation(line: 585, column: 2, scope: !4600)
!4676 = !DILocation(line: 585, column: 6, scope: !4600)
!4677 = !DILocation(line: 585, column: 17, scope: !4600)
!4678 = !DILocation(line: 586, column: 9, scope: !4600)
!4679 = !DILocation(line: 586, column: 2, scope: !4600)
!4680 = !DILabel(scope: !4600, name: "error", file: !3, line: 588)
!4681 = !DILocation(line: 588, column: 1, scope: !4600)
!4682 = !DILocation(line: 589, column: 8, scope: !4600)
!4683 = !DILocation(line: 589, column: 2, scope: !4600)
!4684 = !DILocation(line: 591, column: 2, scope: !4600)
!4685 = !DILocation(line: 592, column: 1, scope: !4600)
!4686 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4687, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!299, !810, !297}
!4689 = !DILocalVariable(name: "s", arg: 1, scope: !4690, file: !284, line: 445, type: !1402)
!4690 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4691, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!299, !1402, !297, !810}
!4693 = !DILocation(line: 445, column: 72, scope: !4690, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 552, column: 10, scope: !4695, inlinedAt: !4698)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !284, line: 540, column: 34)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !284, line: 540, column: 6)
!4697 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4687, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4698 = distinct !DILocation(line: 664, column: 9, scope: !4686)
!4699 = !DILocalVariable(name: "flags", arg: 2, scope: !4690, file: !284, line: 446, type: !297)
!4700 = !DILocation(line: 446, column: 9, scope: !4690, inlinedAt: !4694)
!4701 = !DILocalVariable(name: "size", arg: 3, scope: !4690, file: !284, line: 446, type: !810)
!4702 = !DILocation(line: 446, column: 23, scope: !4690, inlinedAt: !4694)
!4703 = !DILocalVariable(name: "ret", scope: !4690, file: !284, line: 448, type: !299)
!4704 = !DILocation(line: 448, column: 8, scope: !4690, inlinedAt: !4694)
!4705 = !DILocalVariable(name: "flags", arg: 1, scope: !4706, file: !284, line: 318, type: !297)
!4706 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4707, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!283, !297}
!4709 = !DILocation(line: 318, column: 67, scope: !4706, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 553, column: 20, scope: !4695, inlinedAt: !4698)
!4711 = !DILocalVariable(name: "size", arg: 1, scope: !4712, file: !284, line: 346, type: !810)
!4712 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4713, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!7, !810}
!4715 = !DILocation(line: 346, column: 58, scope: !4712, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 547, column: 11, scope: !4695, inlinedAt: !4698)
!4717 = !DILocalVariable(name: "size", arg: 1, scope: !4718, file: !284, line: 472, type: !810)
!4718 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4719, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!299, !810, !297, !7}
!4721 = !DILocation(line: 472, column: 28, scope: !4718, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 481, column: 9, scope: !4723, inlinedAt: !4724)
!4723 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4687, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4724 = distinct !DILocation(line: 545, column: 11, scope: !4725, inlinedAt: !4698)
!4725 = distinct !DILexicalBlock(scope: !4695, file: !284, line: 544, column: 7)
!4726 = !DILocalVariable(name: "flags", arg: 2, scope: !4718, file: !284, line: 472, type: !297)
!4727 = !DILocation(line: 472, column: 40, scope: !4718, inlinedAt: !4722)
!4728 = !DILocalVariable(name: "order", arg: 3, scope: !4718, file: !284, line: 472, type: !7)
!4729 = !DILocation(line: 472, column: 60, scope: !4718, inlinedAt: !4722)
!4730 = !DILocalVariable(name: "size", arg: 1, scope: !4723, file: !284, line: 478, type: !810)
!4731 = !DILocation(line: 478, column: 51, scope: !4723, inlinedAt: !4724)
!4732 = !DILocalVariable(name: "flags", arg: 2, scope: !4723, file: !284, line: 478, type: !297)
!4733 = !DILocation(line: 478, column: 63, scope: !4723, inlinedAt: !4724)
!4734 = !DILocalVariable(name: "order", scope: !4723, file: !284, line: 480, type: !7)
!4735 = !DILocation(line: 480, column: 15, scope: !4723, inlinedAt: !4724)
!4736 = !DILocalVariable(name: "size", arg: 1, scope: !4697, file: !284, line: 538, type: !810)
!4737 = !DILocation(line: 538, column: 45, scope: !4697, inlinedAt: !4698)
!4738 = !DILocalVariable(name: "flags", arg: 2, scope: !4697, file: !284, line: 538, type: !297)
!4739 = !DILocation(line: 538, column: 57, scope: !4697, inlinedAt: !4698)
!4740 = !DILocalVariable(name: "index", scope: !4695, file: !284, line: 542, type: !7)
!4741 = !DILocation(line: 542, column: 16, scope: !4695, inlinedAt: !4698)
!4742 = !DILocalVariable(name: "size", arg: 1, scope: !4686, file: !284, line: 662, type: !810)
!4743 = !DILocation(line: 662, column: 36, scope: !4686)
!4744 = !DILocalVariable(name: "flags", arg: 2, scope: !4686, file: !284, line: 662, type: !297)
!4745 = !DILocation(line: 662, column: 48, scope: !4686)
!4746 = !DILocation(line: 664, column: 17, scope: !4686)
!4747 = !DILocation(line: 664, column: 23, scope: !4686)
!4748 = !DILocation(line: 664, column: 29, scope: !4686)
!4749 = !DILocation(line: 540, column: 27, scope: !4696, inlinedAt: !4698)
!4750 = !DILocation(line: 540, column: 6, scope: !4696, inlinedAt: !4698)
!4751 = !DILocation(line: 540, column: 6, scope: !4697, inlinedAt: !4698)
!4752 = !DILocation(line: 544, column: 7, scope: !4725, inlinedAt: !4698)
!4753 = !DILocation(line: 544, column: 12, scope: !4725, inlinedAt: !4698)
!4754 = !DILocation(line: 544, column: 7, scope: !4695, inlinedAt: !4698)
!4755 = !DILocation(line: 545, column: 25, scope: !4725, inlinedAt: !4698)
!4756 = !DILocation(line: 545, column: 31, scope: !4725, inlinedAt: !4698)
!4757 = !DILocation(line: 480, column: 33, scope: !4723, inlinedAt: !4724)
!4758 = !DILocation(line: 480, column: 23, scope: !4723, inlinedAt: !4724)
!4759 = !DILocation(line: 481, column: 29, scope: !4723, inlinedAt: !4724)
!4760 = !DILocation(line: 481, column: 35, scope: !4723, inlinedAt: !4724)
!4761 = !DILocation(line: 481, column: 42, scope: !4723, inlinedAt: !4724)
!4762 = !DILocation(line: 474, column: 23, scope: !4718, inlinedAt: !4722)
!4763 = !DILocation(line: 474, column: 29, scope: !4718, inlinedAt: !4722)
!4764 = !DILocation(line: 474, column: 36, scope: !4718, inlinedAt: !4722)
!4765 = !DILocation(line: 474, column: 9, scope: !4718, inlinedAt: !4722)
!4766 = !DILocation(line: 545, column: 4, scope: !4725, inlinedAt: !4698)
!4767 = !DILocation(line: 547, column: 25, scope: !4695, inlinedAt: !4698)
!4768 = !DILocation(line: 348, column: 7, scope: !4769, inlinedAt: !4716)
!4769 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 348, column: 6)
!4770 = !DILocation(line: 348, column: 6, scope: !4712, inlinedAt: !4716)
!4771 = !DILocation(line: 349, column: 3, scope: !4769, inlinedAt: !4716)
!4772 = !DILocation(line: 351, column: 6, scope: !4773, inlinedAt: !4716)
!4773 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 351, column: 6)
!4774 = !DILocation(line: 351, column: 11, scope: !4773, inlinedAt: !4716)
!4775 = !DILocation(line: 351, column: 6, scope: !4712, inlinedAt: !4716)
!4776 = !DILocation(line: 352, column: 3, scope: !4773, inlinedAt: !4716)
!4777 = !DILocation(line: 354, column: 32, scope: !4778, inlinedAt: !4716)
!4778 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 354, column: 6)
!4779 = !DILocation(line: 354, column: 37, scope: !4778, inlinedAt: !4716)
!4780 = !DILocation(line: 354, column: 42, scope: !4778, inlinedAt: !4716)
!4781 = !DILocation(line: 354, column: 45, scope: !4778, inlinedAt: !4716)
!4782 = !DILocation(line: 354, column: 50, scope: !4778, inlinedAt: !4716)
!4783 = !DILocation(line: 354, column: 6, scope: !4712, inlinedAt: !4716)
!4784 = !DILocation(line: 355, column: 3, scope: !4778, inlinedAt: !4716)
!4785 = !DILocation(line: 356, column: 32, scope: !4786, inlinedAt: !4716)
!4786 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 356, column: 6)
!4787 = !DILocation(line: 356, column: 37, scope: !4786, inlinedAt: !4716)
!4788 = !DILocation(line: 356, column: 43, scope: !4786, inlinedAt: !4716)
!4789 = !DILocation(line: 356, column: 46, scope: !4786, inlinedAt: !4716)
!4790 = !DILocation(line: 356, column: 51, scope: !4786, inlinedAt: !4716)
!4791 = !DILocation(line: 356, column: 6, scope: !4712, inlinedAt: !4716)
!4792 = !DILocation(line: 357, column: 3, scope: !4786, inlinedAt: !4716)
!4793 = !DILocation(line: 358, column: 6, scope: !4794, inlinedAt: !4716)
!4794 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 358, column: 6)
!4795 = !DILocation(line: 358, column: 11, scope: !4794, inlinedAt: !4716)
!4796 = !DILocation(line: 358, column: 6, scope: !4712, inlinedAt: !4716)
!4797 = !DILocation(line: 358, column: 26, scope: !4794, inlinedAt: !4716)
!4798 = !DILocation(line: 359, column: 6, scope: !4799, inlinedAt: !4716)
!4799 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 359, column: 6)
!4800 = !DILocation(line: 359, column: 11, scope: !4799, inlinedAt: !4716)
!4801 = !DILocation(line: 359, column: 6, scope: !4712, inlinedAt: !4716)
!4802 = !DILocation(line: 359, column: 26, scope: !4799, inlinedAt: !4716)
!4803 = !DILocation(line: 360, column: 6, scope: !4804, inlinedAt: !4716)
!4804 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 360, column: 6)
!4805 = !DILocation(line: 360, column: 11, scope: !4804, inlinedAt: !4716)
!4806 = !DILocation(line: 360, column: 6, scope: !4712, inlinedAt: !4716)
!4807 = !DILocation(line: 360, column: 26, scope: !4804, inlinedAt: !4716)
!4808 = !DILocation(line: 361, column: 6, scope: !4809, inlinedAt: !4716)
!4809 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 361, column: 6)
!4810 = !DILocation(line: 361, column: 11, scope: !4809, inlinedAt: !4716)
!4811 = !DILocation(line: 361, column: 6, scope: !4712, inlinedAt: !4716)
!4812 = !DILocation(line: 361, column: 26, scope: !4809, inlinedAt: !4716)
!4813 = !DILocation(line: 362, column: 6, scope: !4814, inlinedAt: !4716)
!4814 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 362, column: 6)
!4815 = !DILocation(line: 362, column: 11, scope: !4814, inlinedAt: !4716)
!4816 = !DILocation(line: 362, column: 6, scope: !4712, inlinedAt: !4716)
!4817 = !DILocation(line: 362, column: 26, scope: !4814, inlinedAt: !4716)
!4818 = !DILocation(line: 363, column: 6, scope: !4819, inlinedAt: !4716)
!4819 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 363, column: 6)
!4820 = !DILocation(line: 363, column: 11, scope: !4819, inlinedAt: !4716)
!4821 = !DILocation(line: 363, column: 6, scope: !4712, inlinedAt: !4716)
!4822 = !DILocation(line: 363, column: 26, scope: !4819, inlinedAt: !4716)
!4823 = !DILocation(line: 364, column: 6, scope: !4824, inlinedAt: !4716)
!4824 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 364, column: 6)
!4825 = !DILocation(line: 364, column: 11, scope: !4824, inlinedAt: !4716)
!4826 = !DILocation(line: 364, column: 6, scope: !4712, inlinedAt: !4716)
!4827 = !DILocation(line: 364, column: 26, scope: !4824, inlinedAt: !4716)
!4828 = !DILocation(line: 365, column: 6, scope: !4829, inlinedAt: !4716)
!4829 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 365, column: 6)
!4830 = !DILocation(line: 365, column: 11, scope: !4829, inlinedAt: !4716)
!4831 = !DILocation(line: 365, column: 6, scope: !4712, inlinedAt: !4716)
!4832 = !DILocation(line: 365, column: 26, scope: !4829, inlinedAt: !4716)
!4833 = !DILocation(line: 366, column: 6, scope: !4834, inlinedAt: !4716)
!4834 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 366, column: 6)
!4835 = !DILocation(line: 366, column: 11, scope: !4834, inlinedAt: !4716)
!4836 = !DILocation(line: 366, column: 6, scope: !4712, inlinedAt: !4716)
!4837 = !DILocation(line: 366, column: 26, scope: !4834, inlinedAt: !4716)
!4838 = !DILocation(line: 367, column: 6, scope: !4839, inlinedAt: !4716)
!4839 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 367, column: 6)
!4840 = !DILocation(line: 367, column: 11, scope: !4839, inlinedAt: !4716)
!4841 = !DILocation(line: 367, column: 6, scope: !4712, inlinedAt: !4716)
!4842 = !DILocation(line: 367, column: 26, scope: !4839, inlinedAt: !4716)
!4843 = !DILocation(line: 368, column: 6, scope: !4844, inlinedAt: !4716)
!4844 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 368, column: 6)
!4845 = !DILocation(line: 368, column: 11, scope: !4844, inlinedAt: !4716)
!4846 = !DILocation(line: 368, column: 6, scope: !4712, inlinedAt: !4716)
!4847 = !DILocation(line: 368, column: 26, scope: !4844, inlinedAt: !4716)
!4848 = !DILocation(line: 369, column: 6, scope: !4849, inlinedAt: !4716)
!4849 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 369, column: 6)
!4850 = !DILocation(line: 369, column: 11, scope: !4849, inlinedAt: !4716)
!4851 = !DILocation(line: 369, column: 6, scope: !4712, inlinedAt: !4716)
!4852 = !DILocation(line: 369, column: 26, scope: !4849, inlinedAt: !4716)
!4853 = !DILocation(line: 370, column: 6, scope: !4854, inlinedAt: !4716)
!4854 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 370, column: 6)
!4855 = !DILocation(line: 370, column: 11, scope: !4854, inlinedAt: !4716)
!4856 = !DILocation(line: 370, column: 6, scope: !4712, inlinedAt: !4716)
!4857 = !DILocation(line: 370, column: 26, scope: !4854, inlinedAt: !4716)
!4858 = !DILocation(line: 371, column: 6, scope: !4859, inlinedAt: !4716)
!4859 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 371, column: 6)
!4860 = !DILocation(line: 371, column: 11, scope: !4859, inlinedAt: !4716)
!4861 = !DILocation(line: 371, column: 6, scope: !4712, inlinedAt: !4716)
!4862 = !DILocation(line: 371, column: 26, scope: !4859, inlinedAt: !4716)
!4863 = !DILocation(line: 372, column: 6, scope: !4864, inlinedAt: !4716)
!4864 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 372, column: 6)
!4865 = !DILocation(line: 372, column: 11, scope: !4864, inlinedAt: !4716)
!4866 = !DILocation(line: 372, column: 6, scope: !4712, inlinedAt: !4716)
!4867 = !DILocation(line: 372, column: 26, scope: !4864, inlinedAt: !4716)
!4868 = !DILocation(line: 373, column: 6, scope: !4869, inlinedAt: !4716)
!4869 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 373, column: 6)
!4870 = !DILocation(line: 373, column: 11, scope: !4869, inlinedAt: !4716)
!4871 = !DILocation(line: 373, column: 6, scope: !4712, inlinedAt: !4716)
!4872 = !DILocation(line: 373, column: 26, scope: !4869, inlinedAt: !4716)
!4873 = !DILocation(line: 374, column: 6, scope: !4874, inlinedAt: !4716)
!4874 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 374, column: 6)
!4875 = !DILocation(line: 374, column: 11, scope: !4874, inlinedAt: !4716)
!4876 = !DILocation(line: 374, column: 6, scope: !4712, inlinedAt: !4716)
!4877 = !DILocation(line: 374, column: 26, scope: !4874, inlinedAt: !4716)
!4878 = !DILocation(line: 375, column: 6, scope: !4879, inlinedAt: !4716)
!4879 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 375, column: 6)
!4880 = !DILocation(line: 375, column: 11, scope: !4879, inlinedAt: !4716)
!4881 = !DILocation(line: 375, column: 6, scope: !4712, inlinedAt: !4716)
!4882 = !DILocation(line: 375, column: 27, scope: !4879, inlinedAt: !4716)
!4883 = !DILocation(line: 376, column: 6, scope: !4884, inlinedAt: !4716)
!4884 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 376, column: 6)
!4885 = !DILocation(line: 376, column: 11, scope: !4884, inlinedAt: !4716)
!4886 = !DILocation(line: 376, column: 6, scope: !4712, inlinedAt: !4716)
!4887 = !DILocation(line: 376, column: 32, scope: !4884, inlinedAt: !4716)
!4888 = !DILocation(line: 377, column: 6, scope: !4889, inlinedAt: !4716)
!4889 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 377, column: 6)
!4890 = !DILocation(line: 377, column: 11, scope: !4889, inlinedAt: !4716)
!4891 = !DILocation(line: 377, column: 6, scope: !4712, inlinedAt: !4716)
!4892 = !DILocation(line: 377, column: 32, scope: !4889, inlinedAt: !4716)
!4893 = !DILocation(line: 378, column: 6, scope: !4894, inlinedAt: !4716)
!4894 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 378, column: 6)
!4895 = !DILocation(line: 378, column: 11, scope: !4894, inlinedAt: !4716)
!4896 = !DILocation(line: 378, column: 6, scope: !4712, inlinedAt: !4716)
!4897 = !DILocation(line: 378, column: 32, scope: !4894, inlinedAt: !4716)
!4898 = !DILocation(line: 379, column: 6, scope: !4899, inlinedAt: !4716)
!4899 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 379, column: 6)
!4900 = !DILocation(line: 379, column: 11, scope: !4899, inlinedAt: !4716)
!4901 = !DILocation(line: 379, column: 6, scope: !4712, inlinedAt: !4716)
!4902 = !DILocation(line: 379, column: 33, scope: !4899, inlinedAt: !4716)
!4903 = !DILocation(line: 380, column: 6, scope: !4904, inlinedAt: !4716)
!4904 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 380, column: 6)
!4905 = !DILocation(line: 380, column: 11, scope: !4904, inlinedAt: !4716)
!4906 = !DILocation(line: 380, column: 6, scope: !4712, inlinedAt: !4716)
!4907 = !DILocation(line: 380, column: 33, scope: !4904, inlinedAt: !4716)
!4908 = !DILocation(line: 381, column: 6, scope: !4909, inlinedAt: !4716)
!4909 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 381, column: 6)
!4910 = !DILocation(line: 381, column: 11, scope: !4909, inlinedAt: !4716)
!4911 = !DILocation(line: 381, column: 6, scope: !4712, inlinedAt: !4716)
!4912 = !DILocation(line: 381, column: 33, scope: !4909, inlinedAt: !4716)
!4913 = !DILocation(line: 382, column: 2, scope: !4914, inlinedAt: !4716)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !284, line: 382, column: 2)
!4915 = distinct !DILexicalBlock(scope: !4712, file: !284, line: 382, column: 2)
!4916 = !{i32 -2144641188, i32 -2144641159, i32 -2144641113, i32 -2144641055, i32 -2144641001, i32 -2144640947, i32 -2144640892, i32 -2144640861}
!4917 = !DILocation(line: 382, column: 2, scope: !4918, inlinedAt: !4716)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !284, line: 382, column: 2)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !284, line: 382, column: 2)
!4920 = !{i32 -2144640418, i32 -2144640411, i32 -2144640357, i32 -2144640326, i32 -2144640296}
!4921 = !DILocation(line: 382, column: 2, scope: !4919, inlinedAt: !4716)
!4922 = !DILocation(line: 386, column: 1, scope: !4712, inlinedAt: !4716)
!4923 = !DILocation(line: 547, column: 9, scope: !4695, inlinedAt: !4698)
!4924 = !DILocation(line: 549, column: 8, scope: !4925, inlinedAt: !4698)
!4925 = distinct !DILexicalBlock(scope: !4695, file: !284, line: 549, column: 7)
!4926 = !DILocation(line: 549, column: 7, scope: !4695, inlinedAt: !4698)
!4927 = !DILocation(line: 550, column: 4, scope: !4925, inlinedAt: !4698)
!4928 = !DILocation(line: 553, column: 33, scope: !4695, inlinedAt: !4698)
!4929 = !DILocation(line: 325, column: 6, scope: !4930, inlinedAt: !4710)
!4930 = distinct !DILexicalBlock(scope: !4706, file: !284, line: 325, column: 6)
!4931 = !DILocation(line: 325, column: 6, scope: !4706, inlinedAt: !4710)
!4932 = !DILocation(line: 326, column: 3, scope: !4930, inlinedAt: !4710)
!4933 = !DILocation(line: 332, column: 9, scope: !4706, inlinedAt: !4710)
!4934 = !DILocation(line: 332, column: 15, scope: !4706, inlinedAt: !4710)
!4935 = !DILocation(line: 332, column: 2, scope: !4706, inlinedAt: !4710)
!4936 = !DILocation(line: 336, column: 1, scope: !4706, inlinedAt: !4710)
!4937 = !DILocation(line: 553, column: 5, scope: !4695, inlinedAt: !4698)
!4938 = !DILocation(line: 553, column: 41, scope: !4695, inlinedAt: !4698)
!4939 = !DILocation(line: 554, column: 5, scope: !4695, inlinedAt: !4698)
!4940 = !DILocation(line: 554, column: 12, scope: !4695, inlinedAt: !4698)
!4941 = !DILocation(line: 448, column: 31, scope: !4690, inlinedAt: !4694)
!4942 = !DILocation(line: 448, column: 34, scope: !4690, inlinedAt: !4694)
!4943 = !DILocation(line: 448, column: 14, scope: !4690, inlinedAt: !4694)
!4944 = !DILocation(line: 450, column: 22, scope: !4690, inlinedAt: !4694)
!4945 = !DILocation(line: 450, column: 25, scope: !4690, inlinedAt: !4694)
!4946 = !DILocation(line: 450, column: 30, scope: !4690, inlinedAt: !4694)
!4947 = !DILocation(line: 450, column: 36, scope: !4690, inlinedAt: !4694)
!4948 = !DILocation(line: 450, column: 8, scope: !4690, inlinedAt: !4694)
!4949 = !DILocation(line: 450, column: 6, scope: !4690, inlinedAt: !4694)
!4950 = !DILocation(line: 451, column: 9, scope: !4690, inlinedAt: !4694)
!4951 = !DILocation(line: 552, column: 3, scope: !4695, inlinedAt: !4698)
!4952 = !DILocation(line: 557, column: 19, scope: !4697, inlinedAt: !4698)
!4953 = !DILocation(line: 557, column: 25, scope: !4697, inlinedAt: !4698)
!4954 = !DILocation(line: 557, column: 9, scope: !4697, inlinedAt: !4698)
!4955 = !DILocation(line: 557, column: 2, scope: !4697, inlinedAt: !4698)
!4956 = !DILocation(line: 558, column: 1, scope: !4697, inlinedAt: !4698)
!4957 = !DILocation(line: 664, column: 2, scope: !4686)
!4958 = distinct !DISubprogram(name: "cx24113_readreg", scope: !3, file: !3, line: 105, type: !4959, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!307, !4314, !350}
!4961 = !DILocalVariable(name: "state", arg: 1, scope: !4958, file: !3, line: 105, type: !4314)
!4962 = !DILocation(line: 105, column: 50, scope: !4958)
!4963 = !DILocalVariable(name: "reg", arg: 2, scope: !4958, file: !3, line: 105, type: !350)
!4964 = !DILocation(line: 105, column: 60, scope: !4958)
!4965 = !DILocalVariable(name: "ret", scope: !4958, file: !3, line: 107, type: !307)
!4966 = !DILocation(line: 107, column: 6, scope: !4958)
!4967 = !DILocalVariable(name: "b", scope: !4958, file: !3, line: 108, type: !350)
!4968 = !DILocation(line: 108, column: 5, scope: !4958)
!4969 = !DILocalVariable(name: "msg", scope: !4958, file: !3, line: 109, type: !4970)
!4970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4334, size: 256, elements: !1947)
!4971 = !DILocation(line: 109, column: 17, scope: !4958)
!4972 = !DILocation(line: 109, column: 25, scope: !4958)
!4973 = !DILocation(line: 110, column: 3, scope: !4958)
!4974 = !DILocation(line: 110, column: 13, scope: !4958)
!4975 = !DILocation(line: 110, column: 20, scope: !4958)
!4976 = !DILocation(line: 110, column: 28, scope: !4958)
!4977 = !DILocation(line: 112, column: 3, scope: !4958)
!4978 = !DILocation(line: 112, column: 13, scope: !4958)
!4979 = !DILocation(line: 112, column: 20, scope: !4958)
!4980 = !DILocation(line: 112, column: 28, scope: !4958)
!4981 = !DILocation(line: 116, column: 21, scope: !4958)
!4982 = !DILocation(line: 116, column: 28, scope: !4958)
!4983 = !DILocation(line: 116, column: 33, scope: !4958)
!4984 = !DILocation(line: 116, column: 8, scope: !4958)
!4985 = !DILocation(line: 116, column: 6, scope: !4958)
!4986 = !DILocation(line: 118, column: 6, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 118, column: 6)
!4988 = !DILocation(line: 118, column: 10, scope: !4987)
!4989 = !DILocation(line: 118, column: 6, scope: !4958)
!4990 = !DILocation(line: 120, column: 14, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 118, column: 16)
!4992 = !DILocation(line: 120, column: 19, scope: !4991)
!4993 = !DILocation(line: 119, column: 3, scope: !4991)
!4994 = !DILocation(line: 121, column: 10, scope: !4991)
!4995 = !DILocation(line: 121, column: 3, scope: !4991)
!4996 = !DILocation(line: 124, column: 9, scope: !4958)
!4997 = !DILocation(line: 124, column: 2, scope: !4958)
!4998 = !DILocation(line: 125, column: 1, scope: !4958)
!4999 = distinct !DISubprogram(name: "cx24113_writereg", scope: !3, file: !3, line: 90, type: !5000, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!307, !4314, !307, !307}
!5002 = !DILocalVariable(name: "state", arg: 1, scope: !4999, file: !3, line: 90, type: !4314)
!5003 = !DILocation(line: 90, column: 51, scope: !4999)
!5004 = !DILocalVariable(name: "reg", arg: 2, scope: !4999, file: !3, line: 90, type: !307)
!5005 = !DILocation(line: 90, column: 62, scope: !4999)
!5006 = !DILocalVariable(name: "data", arg: 3, scope: !4999, file: !3, line: 90, type: !307)
!5007 = !DILocation(line: 90, column: 71, scope: !4999)
!5008 = !DILocalVariable(name: "buf", scope: !4999, file: !3, line: 92, type: !5009)
!5009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 16, elements: !1947)
!5010 = !DILocation(line: 92, column: 5, scope: !4999)
!5011 = !DILocation(line: 92, column: 13, scope: !4999)
!5012 = !DILocation(line: 92, column: 15, scope: !4999)
!5013 = !DILocation(line: 92, column: 20, scope: !4999)
!5014 = !DILocalVariable(name: "msg", scope: !4999, file: !3, line: 93, type: !4334)
!5015 = !DILocation(line: 93, column: 17, scope: !4999)
!5016 = !DILocation(line: 93, column: 23, scope: !4999)
!5017 = !DILocation(line: 93, column: 33, scope: !4999)
!5018 = !DILocation(line: 93, column: 40, scope: !4999)
!5019 = !DILocation(line: 93, column: 48, scope: !4999)
!5020 = !DILocation(line: 94, column: 22, scope: !4999)
!5021 = !DILocalVariable(name: "err", scope: !4999, file: !3, line: 95, type: !307)
!5022 = !DILocation(line: 95, column: 6, scope: !4999)
!5023 = !DILocation(line: 95, column: 25, scope: !4999)
!5024 = !DILocation(line: 95, column: 32, scope: !4999)
!5025 = !DILocation(line: 95, column: 12, scope: !4999)
!5026 = !DILocation(line: 96, column: 6, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 96, column: 6)
!5028 = !DILocation(line: 96, column: 10, scope: !5027)
!5029 = !DILocation(line: 96, column: 6, scope: !4999)
!5030 = !DILocation(line: 98, column: 20, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 96, column: 16)
!5032 = !DILocation(line: 98, column: 25, scope: !5031)
!5033 = !DILocation(line: 98, column: 30, scope: !5031)
!5034 = !DILocation(line: 97, column: 3, scope: !5031)
!5035 = !DILocation(line: 99, column: 10, scope: !5031)
!5036 = !DILocation(line: 99, column: 3, scope: !5031)
!5037 = !DILocation(line: 102, column: 2, scope: !4999)
!5038 = !DILocation(line: 103, column: 1, scope: !4999)
!5039 = distinct !DISubprogram(name: "get_order", scope: !5040, file: !5040, line: 29, type: !5041, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5040 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!307, !649}
!5043 = !DILocalVariable(name: "x", arg: 1, scope: !5044, file: !5045, line: 366, type: !301)
!5044 = distinct !DISubprogram(name: "fls64", scope: !5045, file: !5045, line: 366, type: !5046, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5045 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!307, !301}
!5048 = !DILocation(line: 366, column: 40, scope: !5044, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 46, column: 9, scope: !5039)
!5050 = !DILocalVariable(name: "bitpos", scope: !5044, file: !5045, line: 368, type: !307)
!5051 = !DILocation(line: 368, column: 6, scope: !5044, inlinedAt: !5049)
!5052 = !DILocalVariable(name: "size", arg: 1, scope: !5039, file: !5040, line: 29, type: !649)
!5053 = !DILocation(line: 29, column: 63, scope: !5039)
!5054 = !DILocation(line: 31, column: 27, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5039, file: !5040, line: 31, column: 6)
!5056 = !DILocation(line: 31, column: 6, scope: !5055)
!5057 = !DILocation(line: 31, column: 6, scope: !5039)
!5058 = !DILocation(line: 32, column: 8, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !5040, line: 32, column: 7)
!5060 = distinct !DILexicalBlock(scope: !5055, file: !5040, line: 31, column: 34)
!5061 = !DILocation(line: 32, column: 7, scope: !5060)
!5062 = !DILocation(line: 33, column: 4, scope: !5059)
!5063 = !DILocation(line: 35, column: 7, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5060, file: !5040, line: 35, column: 7)
!5065 = !DILocation(line: 35, column: 12, scope: !5064)
!5066 = !DILocation(line: 35, column: 7, scope: !5060)
!5067 = !DILocation(line: 36, column: 4, scope: !5064)
!5068 = !DILocation(line: 38, column: 10, scope: !5060)
!5069 = !DILocation(line: 38, column: 28, scope: !5060)
!5070 = !DILocation(line: 38, column: 41, scope: !5060)
!5071 = !DILocation(line: 38, column: 3, scope: !5060)
!5072 = !DILocation(line: 41, column: 6, scope: !5039)
!5073 = !DILocation(line: 42, column: 7, scope: !5039)
!5074 = !DILocation(line: 46, column: 15, scope: !5039)
!5075 = !DILocation(line: 374, column: 2, scope: !5044, inlinedAt: !5049)
!5076 = !DILocation(line: 376, column: 14, scope: !5044, inlinedAt: !5049)
!5077 = !{i32 314124}
!5078 = !DILocation(line: 377, column: 9, scope: !5044, inlinedAt: !5049)
!5079 = !DILocation(line: 377, column: 16, scope: !5044, inlinedAt: !5049)
!5080 = !DILocation(line: 46, column: 2, scope: !5039)
!5081 = !DILocation(line: 48, column: 1, scope: !5039)
!5082 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5083, file: !5083, line: 30, type: !5084, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5083 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!307, !300}
!5086 = !DILocation(line: 366, column: 40, scope: !5044, inlinedAt: !5087)
!5087 = distinct !DILocation(line: 32, column: 9, scope: !5082)
!5088 = !DILocation(line: 368, column: 6, scope: !5044, inlinedAt: !5087)
!5089 = !DILocalVariable(name: "n", arg: 1, scope: !5082, file: !5083, line: 30, type: !300)
!5090 = !DILocation(line: 30, column: 21, scope: !5082)
!5091 = !DILocation(line: 32, column: 15, scope: !5082)
!5092 = !DILocation(line: 374, column: 2, scope: !5044, inlinedAt: !5087)
!5093 = !DILocation(line: 376, column: 14, scope: !5044, inlinedAt: !5087)
!5094 = !DILocation(line: 377, column: 9, scope: !5044, inlinedAt: !5087)
!5095 = !DILocation(line: 377, column: 16, scope: !5044, inlinedAt: !5087)
!5096 = !DILocation(line: 32, column: 18, scope: !5082)
!5097 = !DILocation(line: 32, column: 2, scope: !5082)
!5098 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5099, file: !5099, line: 137, type: !5100, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5099 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!299, !1402, !2504, !810, !297}
!5102 = !DILocalVariable(name: "s", arg: 1, scope: !5098, file: !5099, line: 137, type: !1402)
!5103 = !DILocation(line: 137, column: 54, scope: !5098)
!5104 = !DILocalVariable(name: "object", arg: 2, scope: !5098, file: !5099, line: 137, type: !2504)
!5105 = !DILocation(line: 137, column: 69, scope: !5098)
!5106 = !DILocalVariable(name: "size", arg: 3, scope: !5098, file: !5099, line: 138, type: !810)
!5107 = !DILocation(line: 138, column: 12, scope: !5098)
!5108 = !DILocalVariable(name: "flags", arg: 4, scope: !5098, file: !5099, line: 138, type: !297)
!5109 = !DILocation(line: 138, column: 24, scope: !5098)
!5110 = !DILocation(line: 140, column: 17, scope: !5098)
!5111 = !DILocation(line: 140, column: 2, scope: !5098)
!5112 = distinct !DISubprogram(name: "cx24113_release", scope: !3, file: !3, line: 516, type: !433, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5113 = !DILocalVariable(name: "fe", arg: 1, scope: !5112, file: !3, line: 516, type: !435)
!5114 = !DILocation(line: 516, column: 50, scope: !5112)
!5115 = !DILocalVariable(name: "state", scope: !5112, file: !3, line: 518, type: !4314)
!5116 = !DILocation(line: 518, column: 24, scope: !5112)
!5117 = !DILocation(line: 518, column: 32, scope: !5112)
!5118 = !DILocation(line: 518, column: 36, scope: !5112)
!5119 = !DILocation(line: 519, column: 2, scope: !5112)
!5120 = !DILocation(line: 519, column: 2, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 519, column: 2)
!5122 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 519, column: 2)
!5123 = !DILocation(line: 519, column: 2, scope: !5122)
!5124 = !DILocation(line: 519, column: 2, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 519, column: 2)
!5126 = !DILocation(line: 520, column: 2, scope: !5112)
!5127 = !DILocation(line: 520, column: 6, scope: !5112)
!5128 = !DILocation(line: 520, column: 17, scope: !5112)
!5129 = !DILocation(line: 521, column: 8, scope: !5112)
!5130 = !DILocation(line: 521, column: 2, scope: !5112)
!5131 = !DILocation(line: 522, column: 1, scope: !5112)
!5132 = distinct !DISubprogram(name: "cx24113_init", scope: !3, file: !3, line: 411, type: !476, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5133 = !DILocalVariable(name: "fe", arg: 1, scope: !5132, file: !3, line: 411, type: !435)
!5134 = !DILocation(line: 411, column: 46, scope: !5132)
!5135 = !DILocalVariable(name: "state", scope: !5132, file: !3, line: 413, type: !4314)
!5136 = !DILocation(line: 413, column: 24, scope: !5132)
!5137 = !DILocation(line: 413, column: 32, scope: !5132)
!5138 = !DILocation(line: 413, column: 36, scope: !5132)
!5139 = !DILocalVariable(name: "ret", scope: !5132, file: !3, line: 414, type: !307)
!5140 = !DILocation(line: 414, column: 6, scope: !5132)
!5141 = !DILocation(line: 416, column: 2, scope: !5132)
!5142 = !DILocation(line: 416, column: 9, scope: !5132)
!5143 = !DILocation(line: 416, column: 26, scope: !5132)
!5144 = !DILocation(line: 417, column: 2, scope: !5132)
!5145 = !DILocation(line: 417, column: 9, scope: !5132)
!5146 = !DILocation(line: 417, column: 20, scope: !5132)
!5147 = !DILocation(line: 418, column: 2, scope: !5132)
!5148 = !DILocation(line: 418, column: 9, scope: !5132)
!5149 = !DILocation(line: 418, column: 18, scope: !5132)
!5150 = !DILocation(line: 420, column: 6, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 420, column: 6)
!5152 = !DILocation(line: 420, column: 13, scope: !5151)
!5153 = !DILocation(line: 420, column: 21, scope: !5151)
!5154 = !DILocation(line: 420, column: 30, scope: !5151)
!5155 = !DILocation(line: 420, column: 6, scope: !5132)
!5156 = !DILocation(line: 421, column: 3, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 420, column: 39)
!5158 = !DILocation(line: 421, column: 10, scope: !5157)
!5159 = !DILocation(line: 421, column: 23, scope: !5157)
!5160 = !DILocation(line: 422, column: 3, scope: !5157)
!5161 = !DILocation(line: 422, column: 10, scope: !5157)
!5162 = !DILocation(line: 422, column: 24, scope: !5157)
!5163 = !DILocation(line: 423, column: 3, scope: !5157)
!5164 = !DILocation(line: 423, column: 10, scope: !5157)
!5165 = !DILocation(line: 423, column: 24, scope: !5157)
!5166 = !DILocation(line: 424, column: 3, scope: !5157)
!5167 = !DILocation(line: 424, column: 10, scope: !5157)
!5168 = !DILocation(line: 424, column: 23, scope: !5157)
!5169 = !DILocation(line: 425, column: 2, scope: !5157)
!5170 = !DILocation(line: 426, column: 3, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 425, column: 9)
!5172 = !DILocation(line: 426, column: 10, scope: !5171)
!5173 = !DILocation(line: 426, column: 23, scope: !5171)
!5174 = !DILocation(line: 427, column: 3, scope: !5171)
!5175 = !DILocation(line: 427, column: 10, scope: !5171)
!5176 = !DILocation(line: 427, column: 24, scope: !5171)
!5177 = !DILocation(line: 428, column: 3, scope: !5171)
!5178 = !DILocation(line: 428, column: 10, scope: !5171)
!5179 = !DILocation(line: 428, column: 24, scope: !5171)
!5180 = !DILocation(line: 429, column: 3, scope: !5171)
!5181 = !DILocation(line: 429, column: 10, scope: !5171)
!5182 = !DILocation(line: 429, column: 23, scope: !5171)
!5183 = !DILocation(line: 432, column: 2, scope: !5132)
!5184 = !DILocation(line: 432, column: 9, scope: !5132)
!5185 = !DILocation(line: 432, column: 17, scope: !5132)
!5186 = !DILocation(line: 433, column: 2, scope: !5132)
!5187 = !DILocation(line: 433, column: 9, scope: !5132)
!5188 = !DILocation(line: 433, column: 17, scope: !5132)
!5189 = !DILocation(line: 434, column: 2, scope: !5132)
!5190 = !DILocation(line: 434, column: 9, scope: !5132)
!5191 = !DILocation(line: 434, column: 17, scope: !5132)
!5192 = !DILocation(line: 435, column: 2, scope: !5132)
!5193 = !DILocation(line: 435, column: 9, scope: !5132)
!5194 = !DILocation(line: 435, column: 18, scope: !5132)
!5195 = !DILocation(line: 436, column: 2, scope: !5132)
!5196 = !DILocation(line: 436, column: 9, scope: !5132)
!5197 = !DILocation(line: 436, column: 19, scope: !5132)
!5198 = !DILocation(line: 437, column: 2, scope: !5132)
!5199 = !DILocation(line: 437, column: 9, scope: !5132)
!5200 = !DILocation(line: 437, column: 18, scope: !5132)
!5201 = !DILocation(line: 438, column: 2, scope: !5132)
!5202 = !DILocation(line: 438, column: 9, scope: !5132)
!5203 = !DILocation(line: 438, column: 18, scope: !5132)
!5204 = !DILocation(line: 439, column: 2, scope: !5132)
!5205 = !DILocation(line: 439, column: 9, scope: !5132)
!5206 = !DILocation(line: 439, column: 20, scope: !5132)
!5207 = !DILocation(line: 440, column: 2, scope: !5132)
!5208 = !DILocation(line: 440, column: 9, scope: !5132)
!5209 = !DILocation(line: 440, column: 17, scope: !5132)
!5210 = !DILocation(line: 441, column: 2, scope: !5132)
!5211 = !DILocation(line: 441, column: 9, scope: !5132)
!5212 = !DILocation(line: 441, column: 24, scope: !5132)
!5213 = !DILocation(line: 442, column: 2, scope: !5132)
!5214 = !DILocation(line: 442, column: 9, scope: !5132)
!5215 = !DILocation(line: 442, column: 18, scope: !5132)
!5216 = !DILocation(line: 443, column: 2, scope: !5132)
!5217 = !DILocation(line: 443, column: 9, scope: !5132)
!5218 = !DILocation(line: 443, column: 25, scope: !5132)
!5219 = !DILocation(line: 444, column: 2, scope: !5132)
!5220 = !DILocation(line: 444, column: 9, scope: !5132)
!5221 = !DILocation(line: 444, column: 25, scope: !5132)
!5222 = !DILocation(line: 446, column: 19, scope: !5132)
!5223 = !DILocation(line: 446, column: 2, scope: !5132)
!5224 = !DILocation(line: 447, column: 17, scope: !5132)
!5225 = !DILocation(line: 447, column: 2, scope: !5132)
!5226 = !DILocation(line: 448, column: 25, scope: !5132)
!5227 = !DILocation(line: 448, column: 2, scope: !5132)
!5228 = !DILocation(line: 450, column: 28, scope: !5132)
!5229 = !DILocation(line: 450, column: 2, scope: !5132)
!5230 = !DILocation(line: 452, column: 24, scope: !5132)
!5231 = !DILocation(line: 452, column: 2, scope: !5132)
!5232 = !DILocation(line: 453, column: 28, scope: !5132)
!5233 = !DILocation(line: 453, column: 2, scope: !5132)
!5234 = !DILocation(line: 455, column: 6, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 455, column: 6)
!5236 = !DILocation(line: 455, column: 13, scope: !5235)
!5237 = !DILocation(line: 455, column: 21, scope: !5235)
!5238 = !DILocation(line: 455, column: 30, scope: !5235)
!5239 = !DILocation(line: 455, column: 6, scope: !5132)
!5240 = !DILocation(line: 456, column: 26, scope: !5235)
!5241 = !DILocation(line: 457, column: 21, scope: !5235)
!5242 = !DILocation(line: 457, column: 5, scope: !5235)
!5243 = !DILocation(line: 457, column: 34, scope: !5235)
!5244 = !DILocation(line: 457, column: 42, scope: !5235)
!5245 = !DILocation(line: 456, column: 9, scope: !5235)
!5246 = !DILocation(line: 456, column: 7, scope: !5235)
!5247 = !DILocation(line: 456, column: 3, scope: !5235)
!5248 = !DILocation(line: 459, column: 26, scope: !5235)
!5249 = !DILocation(line: 460, column: 21, scope: !5235)
!5250 = !DILocation(line: 460, column: 5, scope: !5235)
!5251 = !DILocation(line: 460, column: 34, scope: !5235)
!5252 = !DILocation(line: 459, column: 9, scope: !5235)
!5253 = !DILocation(line: 459, column: 7, scope: !5235)
!5254 = !DILocation(line: 462, column: 9, scope: !5132)
!5255 = !DILocation(line: 462, column: 2, scope: !5132)
!5256 = distinct !DISubprogram(name: "cx24113_set_params", scope: !3, file: !3, line: 465, type: !476, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5257 = !DILocalVariable(name: "fe", arg: 1, scope: !5256, file: !3, line: 465, type: !435)
!5258 = !DILocation(line: 465, column: 52, scope: !5256)
!5259 = !DILocalVariable(name: "c", scope: !5256, file: !3, line: 467, type: !511)
!5260 = !DILocation(line: 467, column: 34, scope: !5256)
!5261 = !DILocation(line: 467, column: 39, scope: !5256)
!5262 = !DILocation(line: 467, column: 43, scope: !5256)
!5263 = !DILocalVariable(name: "state", scope: !5256, file: !3, line: 468, type: !4314)
!5264 = !DILocation(line: 468, column: 24, scope: !5256)
!5265 = !DILocation(line: 468, column: 32, scope: !5256)
!5266 = !DILocation(line: 468, column: 36, scope: !5256)
!5267 = !DILocalVariable(name: "roll_off", scope: !5256, file: !3, line: 470, type: !424)
!5268 = !DILocation(line: 470, column: 6, scope: !5256)
!5269 = !DILocalVariable(name: "bw", scope: !5256, file: !3, line: 471, type: !424)
!5270 = !DILocation(line: 471, column: 6, scope: !5256)
!5271 = !DILocation(line: 473, column: 10, scope: !5256)
!5272 = !DILocation(line: 473, column: 13, scope: !5256)
!5273 = !DILocation(line: 473, column: 24, scope: !5256)
!5274 = !DILocation(line: 473, column: 32, scope: !5256)
!5275 = !DILocation(line: 473, column: 30, scope: !5256)
!5276 = !DILocation(line: 473, column: 42, scope: !5256)
!5277 = !DILocation(line: 473, column: 6, scope: !5256)
!5278 = !DILocation(line: 474, column: 5, scope: !5256)
!5279 = !DILocation(line: 475, column: 5, scope: !5256)
!5280 = !DILocation(line: 476, column: 5, scope: !5256)
!5281 = !DILocation(line: 477, column: 24, scope: !5256)
!5282 = !DILocation(line: 477, column: 31, scope: !5256)
!5283 = !DILocation(line: 477, column: 2, scope: !5256)
!5284 = !DILocation(line: 479, column: 24, scope: !5256)
!5285 = !DILocation(line: 479, column: 31, scope: !5256)
!5286 = !DILocation(line: 479, column: 34, scope: !5256)
!5287 = !DILocation(line: 479, column: 2, scope: !5256)
!5288 = !DILocation(line: 480, column: 2, scope: !5256)
!5289 = !DILocation(line: 481, column: 28, scope: !5256)
!5290 = !DILocation(line: 481, column: 9, scope: !5256)
!5291 = !DILocation(line: 481, column: 2, scope: !5256)
!5292 = distinct !DISubprogram(name: "cx24113_get_frequency", scope: !3, file: !3, line: 509, type: !595, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5293 = !DILocalVariable(name: "fe", arg: 1, scope: !5292, file: !3, line: 509, type: !435)
!5294 = !DILocation(line: 509, column: 55, scope: !5292)
!5295 = !DILocalVariable(name: "frequency", arg: 2, scope: !5292, file: !3, line: 509, type: !597)
!5296 = !DILocation(line: 509, column: 64, scope: !5292)
!5297 = !DILocalVariable(name: "state", scope: !5292, file: !3, line: 511, type: !4314)
!5298 = !DILocation(line: 511, column: 24, scope: !5292)
!5299 = !DILocation(line: 511, column: 32, scope: !5292)
!5300 = !DILocation(line: 511, column: 36, scope: !5292)
!5301 = !DILocation(line: 512, column: 15, scope: !5292)
!5302 = !DILocation(line: 512, column: 22, scope: !5292)
!5303 = !DILocation(line: 512, column: 3, scope: !5292)
!5304 = !DILocation(line: 512, column: 13, scope: !5292)
!5305 = !DILocation(line: 513, column: 2, scope: !5292)
!5306 = distinct !DISubprogram(name: "cx24113_get_status", scope: !3, file: !3, line: 271, type: !595, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5307 = !DILocalVariable(name: "fe", arg: 1, scope: !5306, file: !3, line: 271, type: !435)
!5308 = !DILocation(line: 271, column: 52, scope: !5306)
!5309 = !DILocalVariable(name: "status", arg: 2, scope: !5306, file: !3, line: 271, type: !597)
!5310 = !DILocation(line: 271, column: 61, scope: !5306)
!5311 = !DILocalVariable(name: "state", scope: !5306, file: !3, line: 273, type: !4314)
!5312 = !DILocation(line: 273, column: 24, scope: !5306)
!5313 = !DILocation(line: 273, column: 32, scope: !5306)
!5314 = !DILocation(line: 273, column: 36, scope: !5306)
!5315 = !DILocalVariable(name: "r", scope: !5306, file: !3, line: 274, type: !350)
!5316 = !DILocation(line: 274, column: 5, scope: !5306)
!5317 = !DILocation(line: 274, column: 26, scope: !5306)
!5318 = !DILocation(line: 274, column: 10, scope: !5306)
!5319 = !DILocation(line: 274, column: 39, scope: !5306)
!5320 = !DILocation(line: 274, column: 47, scope: !5306)
!5321 = !DILocation(line: 274, column: 9, scope: !5306)
!5322 = !DILocation(line: 275, column: 6, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 275, column: 6)
!5324 = !DILocation(line: 275, column: 6, scope: !5306)
!5325 = !DILocation(line: 276, column: 4, scope: !5323)
!5326 = !DILocation(line: 276, column: 11, scope: !5323)
!5327 = !DILocation(line: 276, column: 3, scope: !5323)
!5328 = !DILocation(line: 277, column: 2, scope: !5306)
!5329 = !DILocation(line: 277, column: 2, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 277, column: 2)
!5331 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 277, column: 2)
!5332 = !DILocation(line: 277, column: 2, scope: !5331)
!5333 = !DILocation(line: 277, column: 2, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 277, column: 2)
!5335 = !DILocation(line: 278, column: 2, scope: !5306)
!5336 = distinct !DISubprogram(name: "cx24113_set_Fref", scope: !3, file: !3, line: 220, type: !4959, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5337 = !DILocalVariable(name: "state", arg: 1, scope: !5336, file: !3, line: 220, type: !4314)
!5338 = !DILocation(line: 220, column: 51, scope: !5336)
!5339 = !DILocalVariable(name: "high", arg: 2, scope: !5336, file: !3, line: 220, type: !350)
!5340 = !DILocation(line: 220, column: 61, scope: !5336)
!5341 = !DILocalVariable(name: "xtal", scope: !5336, file: !3, line: 222, type: !350)
!5342 = !DILocation(line: 222, column: 5, scope: !5336)
!5343 = !DILocation(line: 222, column: 28, scope: !5336)
!5344 = !DILocation(line: 222, column: 12, scope: !5336)
!5345 = !DILocation(line: 223, column: 6, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 223, column: 6)
!5347 = !DILocation(line: 223, column: 13, scope: !5346)
!5348 = !DILocation(line: 223, column: 17, scope: !5346)
!5349 = !DILocation(line: 223, column: 25, scope: !5346)
!5350 = !DILocation(line: 223, column: 28, scope: !5346)
!5351 = !DILocation(line: 223, column: 35, scope: !5346)
!5352 = !DILocation(line: 223, column: 42, scope: !5346)
!5353 = !DILocation(line: 223, column: 6, scope: !5336)
!5354 = !DILocation(line: 224, column: 8, scope: !5346)
!5355 = !DILocation(line: 224, column: 3, scope: !5346)
!5356 = !DILocation(line: 226, column: 7, scope: !5336)
!5357 = !DILocation(line: 227, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 227, column: 6)
!5359 = !DILocation(line: 227, column: 6, scope: !5336)
!5360 = !DILocation(line: 228, column: 11, scope: !5358)
!5361 = !DILocation(line: 228, column: 16, scope: !5358)
!5362 = !DILocation(line: 228, column: 8, scope: !5358)
!5363 = !DILocation(line: 228, column: 3, scope: !5358)
!5364 = !DILocation(line: 229, column: 26, scope: !5336)
!5365 = !DILocation(line: 229, column: 39, scope: !5336)
!5366 = !DILocation(line: 229, column: 9, scope: !5336)
!5367 = !DILocation(line: 229, column: 2, scope: !5336)
!5368 = distinct !DISubprogram(name: "cx24113_enable", scope: !3, file: !3, line: 232, type: !4959, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5369 = !DILocalVariable(name: "state", arg: 1, scope: !5368, file: !3, line: 232, type: !4314)
!5370 = !DILocation(line: 232, column: 49, scope: !5368)
!5371 = !DILocalVariable(name: "enable", arg: 2, scope: !5368, file: !3, line: 232, type: !350)
!5372 = !DILocation(line: 232, column: 59, scope: !5368)
!5373 = !DILocalVariable(name: "r21", scope: !5368, file: !3, line: 234, type: !350)
!5374 = !DILocation(line: 234, column: 5, scope: !5368)
!5375 = !DILocation(line: 234, column: 28, scope: !5368)
!5376 = !DILocation(line: 234, column: 12, scope: !5368)
!5377 = !DILocation(line: 234, column: 41, scope: !5368)
!5378 = !DILocation(line: 234, column: 51, scope: !5368)
!5379 = !DILocation(line: 234, column: 49, scope: !5368)
!5380 = !DILocation(line: 234, column: 11, scope: !5368)
!5381 = !DILocation(line: 235, column: 6, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 235, column: 6)
!5383 = !DILocation(line: 235, column: 13, scope: !5382)
!5384 = !DILocation(line: 235, column: 17, scope: !5382)
!5385 = !DILocation(line: 235, column: 6, scope: !5368)
!5386 = !DILocation(line: 236, column: 7, scope: !5382)
!5387 = !DILocation(line: 236, column: 3, scope: !5382)
!5388 = !DILocation(line: 237, column: 26, scope: !5368)
!5389 = !DILocation(line: 237, column: 39, scope: !5368)
!5390 = !DILocation(line: 237, column: 9, scope: !5368)
!5391 = !DILocation(line: 237, column: 2, scope: !5368)
!5392 = distinct !DISubprogram(name: "cx24113_set_parameters", scope: !3, file: !3, line: 127, type: !5393, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{null, !4314}
!5395 = !DILocalVariable(name: "state", arg: 1, scope: !5392, file: !3, line: 127, type: !4314)
!5396 = !DILocation(line: 127, column: 58, scope: !5392)
!5397 = !DILocalVariable(name: "r", scope: !5392, file: !3, line: 129, type: !350)
!5398 = !DILocation(line: 129, column: 5, scope: !5392)
!5399 = !DILocation(line: 131, column: 22, scope: !5392)
!5400 = !DILocation(line: 131, column: 6, scope: !5392)
!5401 = !DILocation(line: 131, column: 35, scope: !5392)
!5402 = !DILocation(line: 131, column: 4, scope: !5392)
!5403 = !DILocation(line: 132, column: 7, scope: !5392)
!5404 = !DILocation(line: 132, column: 14, scope: !5392)
!5405 = !DILocation(line: 132, column: 4, scope: !5392)
!5406 = !DILocation(line: 133, column: 7, scope: !5392)
!5407 = !DILocation(line: 133, column: 14, scope: !5392)
!5408 = !DILocation(line: 133, column: 22, scope: !5392)
!5409 = !DILocation(line: 133, column: 4, scope: !5392)
!5410 = !DILocation(line: 134, column: 7, scope: !5392)
!5411 = !DILocation(line: 134, column: 14, scope: !5392)
!5412 = !DILocation(line: 134, column: 22, scope: !5392)
!5413 = !DILocation(line: 134, column: 4, scope: !5392)
!5414 = !DILocation(line: 135, column: 7, scope: !5392)
!5415 = !DILocation(line: 135, column: 14, scope: !5392)
!5416 = !DILocation(line: 135, column: 29, scope: !5392)
!5417 = !DILocation(line: 135, column: 4, scope: !5392)
!5418 = !DILocation(line: 136, column: 19, scope: !5392)
!5419 = !DILocation(line: 136, column: 32, scope: !5392)
!5420 = !DILocation(line: 136, column: 2, scope: !5392)
!5421 = !DILocation(line: 138, column: 7, scope: !5392)
!5422 = !DILocation(line: 138, column: 14, scope: !5392)
!5423 = !DILocation(line: 138, column: 28, scope: !5392)
!5424 = !DILocation(line: 138, column: 37, scope: !5392)
!5425 = !DILocation(line: 138, column: 44, scope: !5392)
!5426 = !DILocation(line: 138, column: 58, scope: !5392)
!5427 = !DILocation(line: 138, column: 34, scope: !5392)
!5428 = !DILocation(line: 139, column: 6, scope: !5392)
!5429 = !DILocation(line: 139, column: 13, scope: !5392)
!5430 = !DILocation(line: 139, column: 26, scope: !5392)
!5431 = !DILocation(line: 139, column: 3, scope: !5392)
!5432 = !DILocation(line: 139, column: 35, scope: !5392)
!5433 = !DILocation(line: 139, column: 42, scope: !5392)
!5434 = !DILocation(line: 139, column: 54, scope: !5392)
!5435 = !DILocation(line: 139, column: 32, scope: !5392)
!5436 = !DILocation(line: 138, column: 6, scope: !5392)
!5437 = !DILocation(line: 138, column: 4, scope: !5392)
!5438 = !DILocation(line: 140, column: 19, scope: !5392)
!5439 = !DILocation(line: 140, column: 32, scope: !5392)
!5440 = !DILocation(line: 140, column: 2, scope: !5392)
!5441 = !DILocation(line: 142, column: 6, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 142, column: 6)
!5443 = !DILocation(line: 142, column: 13, scope: !5442)
!5444 = !DILocation(line: 142, column: 17, scope: !5442)
!5445 = !DILocation(line: 142, column: 6, scope: !5392)
!5446 = !DILocation(line: 143, column: 23, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 142, column: 33)
!5448 = !DILocation(line: 143, column: 7, scope: !5447)
!5449 = !DILocation(line: 143, column: 36, scope: !5447)
!5450 = !DILocation(line: 143, column: 5, scope: !5447)
!5451 = !DILocation(line: 144, column: 8, scope: !5447)
!5452 = !DILocation(line: 144, column: 15, scope: !5447)
!5453 = !DILocation(line: 144, column: 5, scope: !5447)
!5454 = !DILocation(line: 145, column: 8, scope: !5447)
!5455 = !DILocation(line: 145, column: 15, scope: !5447)
!5456 = !DILocation(line: 145, column: 31, scope: !5447)
!5457 = !DILocation(line: 145, column: 5, scope: !5447)
!5458 = !DILocation(line: 146, column: 20, scope: !5447)
!5459 = !DILocation(line: 146, column: 33, scope: !5447)
!5460 = !DILocation(line: 146, column: 3, scope: !5447)
!5461 = !DILocation(line: 147, column: 2, scope: !5447)
!5462 = !DILocation(line: 149, column: 22, scope: !5392)
!5463 = !DILocation(line: 149, column: 6, scope: !5392)
!5464 = !DILocation(line: 149, column: 35, scope: !5392)
!5465 = !DILocation(line: 149, column: 4, scope: !5392)
!5466 = !DILocation(line: 150, column: 7, scope: !5392)
!5467 = !DILocation(line: 150, column: 14, scope: !5392)
!5468 = !DILocation(line: 150, column: 21, scope: !5392)
!5469 = !DILocation(line: 150, column: 4, scope: !5392)
!5470 = !DILocation(line: 151, column: 7, scope: !5392)
!5471 = !DILocation(line: 151, column: 14, scope: !5392)
!5472 = !DILocation(line: 151, column: 23, scope: !5392)
!5473 = !DILocation(line: 151, column: 4, scope: !5392)
!5474 = !DILocation(line: 152, column: 19, scope: !5392)
!5475 = !DILocation(line: 152, column: 32, scope: !5392)
!5476 = !DILocation(line: 152, column: 2, scope: !5392)
!5477 = !DILocation(line: 154, column: 22, scope: !5392)
!5478 = !DILocation(line: 154, column: 6, scope: !5392)
!5479 = !DILocation(line: 154, column: 35, scope: !5392)
!5480 = !DILocation(line: 154, column: 4, scope: !5392)
!5481 = !DILocation(line: 155, column: 7, scope: !5392)
!5482 = !DILocation(line: 155, column: 14, scope: !5392)
!5483 = !DILocation(line: 155, column: 4, scope: !5392)
!5484 = !DILocation(line: 156, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 156, column: 6)
!5486 = !DILocation(line: 156, column: 13, scope: !5485)
!5487 = !DILocation(line: 156, column: 22, scope: !5485)
!5488 = !DILocation(line: 156, column: 6, scope: !5392)
!5489 = !DILocation(line: 157, column: 5, scope: !5485)
!5490 = !DILocation(line: 157, column: 3, scope: !5485)
!5491 = !DILocation(line: 159, column: 9, scope: !5485)
!5492 = !DILocation(line: 159, column: 16, scope: !5485)
!5493 = !DILocation(line: 159, column: 25, scope: !5485)
!5494 = !DILocation(line: 159, column: 5, scope: !5485)
!5495 = !DILocation(line: 160, column: 19, scope: !5392)
!5496 = !DILocation(line: 160, column: 32, scope: !5392)
!5497 = !DILocation(line: 160, column: 2, scope: !5392)
!5498 = !DILocation(line: 162, column: 23, scope: !5392)
!5499 = !DILocation(line: 162, column: 7, scope: !5392)
!5500 = !DILocation(line: 162, column: 36, scope: !5392)
!5501 = !DILocation(line: 162, column: 5, scope: !5392)
!5502 = !DILocation(line: 163, column: 8, scope: !5392)
!5503 = !DILocation(line: 163, column: 15, scope: !5392)
!5504 = !DILocation(line: 163, column: 24, scope: !5392)
!5505 = !DILocation(line: 163, column: 34, scope: !5392)
!5506 = !DILocation(line: 163, column: 41, scope: !5392)
!5507 = !DILocation(line: 163, column: 52, scope: !5392)
!5508 = !DILocation(line: 163, column: 58, scope: !5392)
!5509 = !DILocation(line: 163, column: 30, scope: !5392)
!5510 = !DILocation(line: 163, column: 4, scope: !5392)
!5511 = !DILocation(line: 164, column: 19, scope: !5392)
!5512 = !DILocation(line: 164, column: 32, scope: !5392)
!5513 = !DILocation(line: 164, column: 2, scope: !5392)
!5514 = !DILocation(line: 165, column: 19, scope: !5392)
!5515 = !DILocation(line: 165, column: 33, scope: !5392)
!5516 = !DILocation(line: 165, column: 40, scope: !5392)
!5517 = !DILocation(line: 165, column: 58, scope: !5392)
!5518 = !DILocation(line: 165, column: 2, scope: !5392)
!5519 = !DILocation(line: 167, column: 19, scope: !5392)
!5520 = !DILocation(line: 167, column: 33, scope: !5392)
!5521 = !DILocation(line: 167, column: 40, scope: !5392)
!5522 = !DILocation(line: 167, column: 48, scope: !5392)
!5523 = !DILocation(line: 167, column: 54, scope: !5392)
!5524 = !DILocation(line: 167, column: 2, scope: !5392)
!5525 = !DILocation(line: 168, column: 23, scope: !5392)
!5526 = !DILocation(line: 168, column: 7, scope: !5392)
!5527 = !DILocation(line: 168, column: 36, scope: !5392)
!5528 = !DILocation(line: 169, column: 5, scope: !5392)
!5529 = !DILocation(line: 169, column: 12, scope: !5392)
!5530 = !DILocation(line: 169, column: 20, scope: !5392)
!5531 = !DILocation(line: 169, column: 28, scope: !5392)
!5532 = !DILocation(line: 168, column: 44, scope: !5392)
!5533 = !DILocation(line: 168, column: 6, scope: !5392)
!5534 = !DILocation(line: 168, column: 4, scope: !5392)
!5535 = !DILocation(line: 170, column: 19, scope: !5392)
!5536 = !DILocation(line: 170, column: 32, scope: !5392)
!5537 = !DILocation(line: 170, column: 2, scope: !5392)
!5538 = !DILocation(line: 171, column: 1, scope: !5392)
!5539 = distinct !DISubprogram(name: "cx24113_set_bandwidth", scope: !3, file: !3, line: 240, type: !5540, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{!307, !4314, !424}
!5542 = !DILocalVariable(name: "state", arg: 1, scope: !5539, file: !3, line: 240, type: !4314)
!5543 = !DILocation(line: 240, column: 56, scope: !5539)
!5544 = !DILocalVariable(name: "bandwidth_khz", arg: 2, scope: !5539, file: !3, line: 240, type: !424)
!5545 = !DILocation(line: 240, column: 67, scope: !5539)
!5546 = !DILocalVariable(name: "r", scope: !5539, file: !3, line: 242, type: !350)
!5547 = !DILocation(line: 242, column: 5, scope: !5539)
!5548 = !DILocation(line: 244, column: 6, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 244, column: 6)
!5550 = !DILocation(line: 244, column: 20, scope: !5549)
!5551 = !DILocation(line: 244, column: 6, scope: !5539)
!5552 = !DILocation(line: 245, column: 5, scope: !5549)
!5553 = !DILocation(line: 245, column: 3, scope: !5549)
!5554 = !DILocation(line: 246, column: 11, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 246, column: 11)
!5556 = !DILocation(line: 246, column: 25, scope: !5555)
!5557 = !DILocation(line: 246, column: 11, scope: !5549)
!5558 = !DILocation(line: 247, column: 5, scope: !5555)
!5559 = !DILocation(line: 247, column: 3, scope: !5555)
!5560 = !DILocation(line: 249, column: 5, scope: !5555)
!5561 = !DILocation(line: 251, column: 2, scope: !5539)
!5562 = !DILocation(line: 251, column: 2, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 251, column: 2)
!5564 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 251, column: 2)
!5565 = !DILocation(line: 251, column: 2, scope: !5564)
!5566 = !DILocation(line: 251, column: 2, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 251, column: 2)
!5568 = !DILocation(line: 252, column: 16, scope: !5539)
!5569 = !DILocation(line: 253, column: 16, scope: !5539)
!5570 = !DILocation(line: 254, column: 16, scope: !5539)
!5571 = !DILocation(line: 255, column: 16, scope: !5539)
!5572 = !DILocation(line: 256, column: 16, scope: !5539)
!5573 = !DILocation(line: 258, column: 2, scope: !5539)
!5574 = !DILocation(line: 258, column: 2, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 258, column: 2)
!5576 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 258, column: 2)
!5577 = !DILocation(line: 258, column: 2, scope: !5576)
!5578 = !DILocation(line: 258, column: 2, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 258, column: 2)
!5580 = !DILocation(line: 260, column: 7, scope: !5539)
!5581 = !DILocation(line: 260, column: 21, scope: !5539)
!5582 = !DILocation(line: 260, column: 4, scope: !5539)
!5583 = !DILocation(line: 262, column: 26, scope: !5539)
!5584 = !DILocation(line: 262, column: 39, scope: !5539)
!5585 = !DILocation(line: 262, column: 9, scope: !5539)
!5586 = !DILocation(line: 262, column: 2, scope: !5539)
!5587 = distinct !DISubprogram(name: "cx24113_set_clk_inversion", scope: !3, file: !3, line: 265, type: !4959, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5588 = !DILocalVariable(name: "state", arg: 1, scope: !5587, file: !3, line: 265, type: !4314)
!5589 = !DILocation(line: 265, column: 60, scope: !5587)
!5590 = !DILocalVariable(name: "on", arg: 2, scope: !5587, file: !3, line: 265, type: !350)
!5591 = !DILocation(line: 265, column: 70, scope: !5587)
!5592 = !DILocalVariable(name: "r", scope: !5587, file: !3, line: 267, type: !350)
!5593 = !DILocation(line: 267, column: 5, scope: !5587)
!5594 = !DILocation(line: 267, column: 26, scope: !5587)
!5595 = !DILocation(line: 267, column: 10, scope: !5587)
!5596 = !DILocation(line: 267, column: 39, scope: !5587)
!5597 = !DILocation(line: 267, column: 51, scope: !5587)
!5598 = !DILocation(line: 267, column: 54, scope: !5587)
!5599 = !DILocation(line: 267, column: 61, scope: !5587)
!5600 = !DILocation(line: 267, column: 47, scope: !5587)
!5601 = !DILocation(line: 267, column: 9, scope: !5587)
!5602 = !DILocation(line: 268, column: 26, scope: !5587)
!5603 = !DILocation(line: 268, column: 39, scope: !5587)
!5604 = !DILocation(line: 268, column: 9, scope: !5587)
!5605 = !DILocation(line: 268, column: 2, scope: !5587)
!5606 = distinct !DISubprogram(name: "cx24113_set_frequency", scope: !3, file: !3, line: 379, type: !5540, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5607 = !DILocalVariable(name: "state", arg: 1, scope: !5606, file: !3, line: 379, type: !4314)
!5608 = !DILocation(line: 379, column: 56, scope: !5606)
!5609 = !DILocalVariable(name: "frequency", arg: 2, scope: !5606, file: !3, line: 379, type: !424)
!5610 = !DILocation(line: 379, column: 67, scope: !5606)
!5611 = !DILocalVariable(name: "r", scope: !5606, file: !3, line: 381, type: !350)
!5612 = !DILocation(line: 381, column: 5, scope: !5606)
!5613 = !DILocalVariable(name: "n", scope: !5606, file: !3, line: 382, type: !292)
!5614 = !DILocation(line: 382, column: 6, scope: !5606)
!5615 = !DILocalVariable(name: "f", scope: !5606, file: !3, line: 383, type: !305)
!5616 = !DILocation(line: 383, column: 6, scope: !5606)
!5617 = !DILocation(line: 385, column: 22, scope: !5606)
!5618 = !DILocation(line: 385, column: 6, scope: !5606)
!5619 = !DILocation(line: 385, column: 4, scope: !5606)
!5620 = !DILocation(line: 386, column: 19, scope: !5606)
!5621 = !DILocation(line: 386, column: 32, scope: !5606)
!5622 = !DILocation(line: 386, column: 34, scope: !5606)
!5623 = !DILocation(line: 386, column: 2, scope: !5606)
!5624 = !DILocation(line: 388, column: 22, scope: !5606)
!5625 = !DILocation(line: 388, column: 6, scope: !5606)
!5626 = !DILocation(line: 388, column: 4, scope: !5606)
!5627 = !DILocation(line: 389, column: 19, scope: !5606)
!5628 = !DILocation(line: 389, column: 32, scope: !5606)
!5629 = !DILocation(line: 389, column: 34, scope: !5606)
!5630 = !DILocation(line: 389, column: 2, scope: !5606)
!5631 = !DILocation(line: 391, column: 21, scope: !5606)
!5632 = !DILocation(line: 391, column: 2, scope: !5606)
!5633 = !DILocation(line: 391, column: 9, scope: !5606)
!5634 = !DILocation(line: 391, column: 19, scope: !5606)
!5635 = !DILocation(line: 393, column: 2, scope: !5606)
!5636 = !DILocation(line: 393, column: 2, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 393, column: 2)
!5638 = distinct !DILexicalBlock(scope: !5606, file: !3, line: 393, column: 2)
!5639 = !DILocation(line: 393, column: 2, scope: !5638)
!5640 = !DILocation(line: 393, column: 2, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 393, column: 2)
!5642 = !DILocation(line: 395, column: 22, scope: !5606)
!5643 = !DILocation(line: 395, column: 2, scope: !5606)
!5644 = !DILocation(line: 396, column: 18, scope: !5606)
!5645 = !DILocation(line: 396, column: 25, scope: !5606)
!5646 = !DILocation(line: 396, column: 28, scope: !5606)
!5647 = !DILocation(line: 396, column: 31, scope: !5606)
!5648 = !DILocation(line: 396, column: 38, scope: !5606)
!5649 = !DILocation(line: 396, column: 2, scope: !5606)
!5650 = !DILocation(line: 398, column: 22, scope: !5606)
!5651 = !DILocation(line: 398, column: 6, scope: !5606)
!5652 = !DILocation(line: 398, column: 35, scope: !5606)
!5653 = !DILocation(line: 398, column: 4, scope: !5606)
!5654 = !DILocation(line: 399, column: 6, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5606, file: !3, line: 399, column: 6)
!5656 = !DILocation(line: 399, column: 13, scope: !5655)
!5657 = !DILocation(line: 399, column: 20, scope: !5655)
!5658 = !DILocation(line: 399, column: 6, scope: !5606)
!5659 = !DILocation(line: 400, column: 5, scope: !5655)
!5660 = !DILocation(line: 400, column: 3, scope: !5655)
!5661 = !DILocation(line: 401, column: 19, scope: !5606)
!5662 = !DILocation(line: 401, column: 32, scope: !5606)
!5663 = !DILocation(line: 401, column: 2, scope: !5606)
!5664 = !DILocation(line: 404, column: 2, scope: !5606)
!5665 = !DILocation(line: 406, column: 22, scope: !5606)
!5666 = !DILocation(line: 406, column: 6, scope: !5606)
!5667 = !DILocation(line: 406, column: 35, scope: !5606)
!5668 = !DILocation(line: 406, column: 4, scope: !5606)
!5669 = !DILocation(line: 407, column: 19, scope: !5606)
!5670 = !DILocation(line: 407, column: 32, scope: !5606)
!5671 = !DILocation(line: 407, column: 34, scope: !5606)
!5672 = !DILocation(line: 407, column: 2, scope: !5606)
!5673 = !DILocation(line: 408, column: 2, scope: !5606)
!5674 = distinct !DISubprogram(name: "cx24113_calc_pll_nf", scope: !3, file: !3, line: 288, type: !5675, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{null, !4314, !291, !684}
!5677 = !DILocalVariable(name: "state", arg: 1, scope: !5674, file: !3, line: 288, type: !4314)
!5678 = !DILocation(line: 288, column: 55, scope: !5674)
!5679 = !DILocalVariable(name: "n", arg: 2, scope: !5674, file: !3, line: 288, type: !291)
!5680 = !DILocation(line: 288, column: 67, scope: !5674)
!5681 = !DILocalVariable(name: "f", arg: 3, scope: !5674, file: !3, line: 288, type: !684)
!5682 = !DILocation(line: 288, column: 75, scope: !5674)
!5683 = !DILocalVariable(name: "N", scope: !5674, file: !3, line: 290, type: !305)
!5684 = !DILocation(line: 290, column: 6, scope: !5674)
!5685 = !DILocalVariable(name: "F", scope: !5674, file: !3, line: 291, type: !1246)
!5686 = !DILocation(line: 291, column: 6, scope: !5674)
!5687 = !DILocalVariable(name: "dividend", scope: !5674, file: !3, line: 292, type: !300)
!5688 = !DILocation(line: 292, column: 6, scope: !5674)
!5689 = !DILocalVariable(name: "R", scope: !5674, file: !3, line: 293, type: !350)
!5690 = !DILocation(line: 293, column: 5, scope: !5674)
!5691 = !DILocalVariable(name: "r", scope: !5674, file: !3, line: 293, type: !350)
!5692 = !DILocation(line: 293, column: 8, scope: !5674)
!5693 = !DILocalVariable(name: "vcodiv", scope: !5674, file: !3, line: 294, type: !350)
!5694 = !DILocation(line: 294, column: 5, scope: !5674)
!5695 = !DILocalVariable(name: "factor", scope: !5674, file: !3, line: 295, type: !350)
!5696 = !DILocation(line: 295, column: 5, scope: !5674)
!5697 = !DILocalVariable(name: "freq_hz", scope: !5674, file: !3, line: 296, type: !305)
!5698 = !DILocation(line: 296, column: 6, scope: !5674)
!5699 = !DILocation(line: 296, column: 16, scope: !5674)
!5700 = !DILocation(line: 296, column: 23, scope: !5674)
!5701 = !DILocation(line: 296, column: 33, scope: !5674)
!5702 = !DILocation(line: 298, column: 6, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 298, column: 6)
!5704 = !DILocation(line: 298, column: 13, scope: !5703)
!5705 = !DILocation(line: 298, column: 21, scope: !5703)
!5706 = !DILocation(line: 298, column: 30, scope: !5703)
!5707 = !DILocation(line: 298, column: 6, scope: !5674)
!5708 = !DILocation(line: 299, column: 10, scope: !5703)
!5709 = !DILocation(line: 299, column: 3, scope: !5703)
!5710 = !DILocation(line: 301, column: 10, scope: !5703)
!5711 = !DILocation(line: 303, column: 6, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 303, column: 6)
!5713 = !DILocation(line: 303, column: 13, scope: !5712)
!5714 = !DILocation(line: 303, column: 17, scope: !5712)
!5715 = !DILocation(line: 303, column: 6, scope: !5674)
!5716 = !DILocation(line: 304, column: 7, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 304, column: 7)
!5718 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 303, column: 33)
!5719 = !DILocation(line: 304, column: 14, scope: !5717)
!5720 = !DILocation(line: 304, column: 24, scope: !5717)
!5721 = !DILocation(line: 304, column: 7, scope: !5718)
!5722 = !DILocation(line: 305, column: 11, scope: !5717)
!5723 = !DILocation(line: 305, column: 4, scope: !5717)
!5724 = !DILocation(line: 307, column: 11, scope: !5717)
!5725 = !DILocation(line: 308, column: 2, scope: !5718)
!5726 = !DILocation(line: 309, column: 7, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 309, column: 7)
!5728 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 308, column: 9)
!5729 = !DILocation(line: 309, column: 14, scope: !5727)
!5730 = !DILocation(line: 309, column: 24, scope: !5727)
!5731 = !DILocation(line: 309, column: 7, scope: !5728)
!5732 = !DILocation(line: 310, column: 11, scope: !5727)
!5733 = !DILocation(line: 310, column: 4, scope: !5727)
!5734 = !DILocation(line: 312, column: 11, scope: !5727)
!5735 = !DILocation(line: 314, column: 18, scope: !5674)
!5736 = !DILocation(line: 314, column: 2, scope: !5674)
!5737 = !DILocation(line: 314, column: 9, scope: !5674)
!5738 = !DILocation(line: 314, column: 16, scope: !5674)
!5739 = !DILocation(line: 316, column: 2, scope: !5674)
!5740 = !DILocation(line: 316, column: 2, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 316, column: 2)
!5742 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 316, column: 2)
!5743 = !DILocation(line: 316, column: 2, scope: !5742)
!5744 = !DILocation(line: 316, column: 2, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 316, column: 2)
!5746 = !DILocation(line: 317, column: 4, scope: !5674)
!5747 = !DILocation(line: 318, column: 2, scope: !5674)
!5748 = !DILocation(line: 319, column: 27, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 318, column: 5)
!5750 = !DILocation(line: 319, column: 34, scope: !5749)
!5751 = !DILocation(line: 319, column: 36, scope: !5749)
!5752 = !DILocation(line: 319, column: 7, scope: !5749)
!5753 = !DILocation(line: 319, column: 5, scope: !5749)
!5754 = !DILocation(line: 322, column: 9, scope: !5749)
!5755 = !DILocation(line: 322, column: 17, scope: !5749)
!5756 = !DILocation(line: 322, column: 25, scope: !5749)
!5757 = !DILocation(line: 322, column: 23, scope: !5749)
!5758 = !DILocation(line: 322, column: 35, scope: !5749)
!5759 = !DILocation(line: 322, column: 33, scope: !5749)
!5760 = !DILocation(line: 322, column: 5, scope: !5749)
!5761 = !DILocation(line: 323, column: 9, scope: !5749)
!5762 = !DILocation(line: 323, column: 16, scope: !5749)
!5763 = !DILocation(line: 323, column: 24, scope: !5749)
!5764 = !DILocation(line: 323, column: 36, scope: !5749)
!5765 = !DILocation(line: 323, column: 34, scope: !5749)
!5766 = !DILocation(line: 323, column: 43, scope: !5749)
!5767 = !DILocation(line: 323, column: 5, scope: !5749)
!5768 = !DILocation(line: 324, column: 5, scope: !5749)
!5769 = !DILocation(line: 325, column: 5, scope: !5749)
!5770 = !DILocation(line: 326, column: 5, scope: !5749)
!5771 = !DILocation(line: 327, column: 2, scope: !5749)
!5772 = !DILocation(line: 327, column: 11, scope: !5674)
!5773 = !DILocation(line: 327, column: 13, scope: !5674)
!5774 = !DILocation(line: 327, column: 17, scope: !5674)
!5775 = !DILocation(line: 327, column: 20, scope: !5674)
!5776 = !DILocation(line: 327, column: 22, scope: !5674)
!5777 = !DILocation(line: 0, scope: !5674)
!5778 = distinct !{!5778, !5747, !5779}
!5779 = !DILocation(line: 327, column: 25, scope: !5674)
!5780 = !DILocation(line: 329, column: 6, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 329, column: 6)
!5782 = !DILocation(line: 329, column: 8, scope: !5781)
!5783 = !DILocation(line: 329, column: 6, scope: !5674)
!5784 = !DILocation(line: 330, column: 3, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 329, column: 13)
!5786 = !DILocation(line: 330, column: 3, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 330, column: 3)
!5788 = !DILocation(line: 331, column: 3, scope: !5785)
!5789 = !DILocation(line: 333, column: 6, scope: !5674)
!5790 = !DILocation(line: 333, column: 4, scope: !5674)
!5791 = !DILocation(line: 334, column: 14, scope: !5674)
!5792 = !DILocation(line: 334, column: 18, scope: !5674)
!5793 = !DILocation(line: 334, column: 16, scope: !5674)
!5794 = !DILocation(line: 334, column: 25, scope: !5674)
!5795 = !DILocation(line: 334, column: 7, scope: !5674)
!5796 = !DILocation(line: 334, column: 4, scope: !5674)
!5797 = !DILocation(line: 335, column: 2, scope: !5674)
!5798 = !DILocation(line: 335, column: 2, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 335, column: 2)
!5800 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 335, column: 2)
!5801 = !DILocation(line: 335, column: 2, scope: !5800)
!5802 = !DILocation(line: 335, column: 2, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 335, column: 2)
!5804 = !DILocation(line: 337, column: 13, scope: !5674)
!5805 = !DILocation(line: 337, column: 11, scope: !5674)
!5806 = !DILocalVariable(name: "__base", scope: !5807, file: !3, line: 338, type: !1032)
!5807 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 338, column: 2)
!5808 = !DILocation(line: 338, column: 2, scope: !5807)
!5809 = !DILocalVariable(name: "__rem", scope: !5807, file: !3, line: 338, type: !1032)
!5810 = !DILocation(line: 339, column: 6, scope: !5674)
!5811 = !DILocation(line: 339, column: 4, scope: !5674)
!5812 = !DILocation(line: 340, column: 2, scope: !5674)
!5813 = !DILocation(line: 340, column: 2, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 340, column: 2)
!5815 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 340, column: 2)
!5816 = !DILocation(line: 340, column: 2, scope: !5815)
!5817 = !DILocation(line: 340, column: 2, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 340, column: 2)
!5819 = !DILocation(line: 341, column: 8, scope: !5674)
!5820 = !DILocation(line: 341, column: 10, scope: !5674)
!5821 = !DILocation(line: 341, column: 16, scope: !5674)
!5822 = !DILocation(line: 341, column: 7, scope: !5674)
!5823 = !DILocation(line: 341, column: 4, scope: !5674)
!5824 = !DILocation(line: 343, column: 2, scope: !5674)
!5825 = !DILocation(line: 343, column: 2, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 343, column: 2)
!5827 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 343, column: 2)
!5828 = !DILocation(line: 343, column: 2, scope: !5827)
!5829 = !DILocation(line: 343, column: 2, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 343, column: 2)
!5831 = !DILocation(line: 345, column: 6, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 345, column: 6)
!5833 = !DILocation(line: 345, column: 13, scope: !5832)
!5834 = !DILocation(line: 345, column: 6, scope: !5674)
!5835 = !DILocation(line: 346, column: 7, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 346, column: 7)
!5837 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 345, column: 30)
!5838 = !DILocation(line: 346, column: 9, scope: !5836)
!5839 = !DILocation(line: 346, column: 7, scope: !5837)
!5840 = !DILocation(line: 347, column: 6, scope: !5836)
!5841 = !DILocation(line: 347, column: 4, scope: !5836)
!5842 = !DILocation(line: 348, column: 7, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 348, column: 7)
!5844 = !DILocation(line: 348, column: 9, scope: !5843)
!5845 = !DILocation(line: 348, column: 7, scope: !5837)
!5846 = !DILocation(line: 349, column: 6, scope: !5843)
!5847 = !DILocation(line: 349, column: 4, scope: !5843)
!5848 = !DILocation(line: 350, column: 8, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 350, column: 7)
!5850 = !DILocation(line: 350, column: 10, scope: !5849)
!5851 = !DILocation(line: 350, column: 17, scope: !5849)
!5852 = !DILocation(line: 350, column: 20, scope: !5849)
!5853 = !DILocation(line: 350, column: 22, scope: !5849)
!5854 = !DILocation(line: 350, column: 27, scope: !5849)
!5855 = !DILocation(line: 350, column: 31, scope: !5849)
!5856 = !DILocation(line: 350, column: 33, scope: !5849)
!5857 = !DILocation(line: 350, column: 41, scope: !5849)
!5858 = !DILocation(line: 350, column: 44, scope: !5849)
!5859 = !DILocation(line: 350, column: 46, scope: !5849)
!5860 = !DILocation(line: 350, column: 7, scope: !5837)
!5861 = !DILocation(line: 351, column: 6, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 350, column: 52)
!5863 = !DILocation(line: 352, column: 24, scope: !5862)
!5864 = !DILocation(line: 352, column: 8, scope: !5862)
!5865 = !DILocation(line: 352, column: 6, scope: !5862)
!5866 = !DILocation(line: 353, column: 21, scope: !5862)
!5867 = !DILocation(line: 353, column: 34, scope: !5862)
!5868 = !DILocation(line: 353, column: 36, scope: !5862)
!5869 = !DILocation(line: 353, column: 4, scope: !5862)
!5870 = !DILocation(line: 354, column: 3, scope: !5862)
!5871 = !DILocation(line: 355, column: 2, scope: !5837)
!5872 = !DILocation(line: 356, column: 2, scope: !5674)
!5873 = !DILocation(line: 356, column: 2, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 356, column: 2)
!5875 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 356, column: 2)
!5876 = !DILocation(line: 356, column: 2, scope: !5875)
!5877 = !DILocation(line: 356, column: 2, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 356, column: 2)
!5879 = !DILocation(line: 358, column: 13, scope: !5674)
!5880 = !DILocation(line: 358, column: 7, scope: !5674)
!5881 = !DILocation(line: 358, column: 3, scope: !5674)
!5882 = !DILocation(line: 358, column: 5, scope: !5674)
!5883 = !DILocation(line: 359, column: 13, scope: !5674)
!5884 = !DILocation(line: 359, column: 7, scope: !5674)
!5885 = !DILocation(line: 359, column: 3, scope: !5674)
!5886 = !DILocation(line: 359, column: 5, scope: !5674)
!5887 = !DILocation(line: 360, column: 1, scope: !5674)
!5888 = distinct !DISubprogram(name: "cx24113_set_nfr", scope: !3, file: !3, line: 363, type: !5889, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{null, !4314, !292, !305, !350}
!5891 = !DILocalVariable(name: "state", arg: 1, scope: !5888, file: !3, line: 363, type: !4314)
!5892 = !DILocation(line: 363, column: 51, scope: !5888)
!5893 = !DILocalVariable(name: "n", arg: 2, scope: !5888, file: !3, line: 363, type: !292)
!5894 = !DILocation(line: 363, column: 62, scope: !5888)
!5895 = !DILocalVariable(name: "f", arg: 3, scope: !5888, file: !3, line: 363, type: !305)
!5896 = !DILocation(line: 363, column: 69, scope: !5888)
!5897 = !DILocalVariable(name: "r", arg: 4, scope: !5888, file: !3, line: 363, type: !350)
!5898 = !DILocation(line: 363, column: 75, scope: !5888)
!5899 = !DILocalVariable(name: "reg", scope: !5888, file: !3, line: 365, type: !350)
!5900 = !DILocation(line: 365, column: 5, scope: !5888)
!5901 = !DILocation(line: 366, column: 19, scope: !5888)
!5902 = !DILocation(line: 366, column: 33, scope: !5888)
!5903 = !DILocation(line: 366, column: 35, scope: !5888)
!5904 = !DILocation(line: 366, column: 41, scope: !5888)
!5905 = !DILocation(line: 366, column: 2, scope: !5888)
!5906 = !DILocation(line: 368, column: 10, scope: !5888)
!5907 = !DILocation(line: 368, column: 12, scope: !5888)
!5908 = !DILocation(line: 368, column: 19, scope: !5888)
!5909 = !DILocation(line: 368, column: 29, scope: !5888)
!5910 = !DILocation(line: 368, column: 31, scope: !5888)
!5911 = !DILocation(line: 368, column: 38, scope: !5888)
!5912 = !DILocation(line: 368, column: 25, scope: !5888)
!5913 = !DILocation(line: 368, column: 8, scope: !5888)
!5914 = !DILocation(line: 368, column: 6, scope: !5888)
!5915 = !DILocation(line: 369, column: 19, scope: !5888)
!5916 = !DILocation(line: 369, column: 32, scope: !5888)
!5917 = !DILocation(line: 369, column: 2, scope: !5888)
!5918 = !DILocation(line: 371, column: 19, scope: !5888)
!5919 = !DILocation(line: 371, column: 33, scope: !5888)
!5920 = !DILocation(line: 371, column: 35, scope: !5888)
!5921 = !DILocation(line: 371, column: 41, scope: !5888)
!5922 = !DILocation(line: 371, column: 2, scope: !5888)
!5923 = !DILocation(line: 373, column: 24, scope: !5888)
!5924 = !DILocation(line: 373, column: 8, scope: !5888)
!5925 = !DILocation(line: 373, column: 37, scope: !5888)
!5926 = !DILocation(line: 373, column: 6, scope: !5888)
!5927 = !DILocation(line: 374, column: 19, scope: !5888)
!5928 = !DILocation(line: 374, column: 32, scope: !5888)
!5929 = !DILocation(line: 374, column: 40, scope: !5888)
!5930 = !DILocation(line: 374, column: 42, scope: !5888)
!5931 = !DILocation(line: 374, column: 49, scope: !5888)
!5932 = !DILocation(line: 374, column: 36, scope: !5888)
!5933 = !DILocation(line: 374, column: 2, scope: !5888)
!5934 = !DILocation(line: 376, column: 19, scope: !5888)
!5935 = !DILocation(line: 376, column: 26, scope: !5888)
!5936 = !DILocation(line: 376, column: 28, scope: !5888)
!5937 = !DILocation(line: 376, column: 2, scope: !5888)
!5938 = !DILocation(line: 377, column: 1, scope: !5888)
!5939 = distinct !DISubprogram(name: "cx24113_set_ref_div", scope: !3, file: !3, line: 281, type: !5940, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !741)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{!350, !4314, !350}
!5942 = !DILocalVariable(name: "state", arg: 1, scope: !5939, file: !3, line: 281, type: !4314)
!5943 = !DILocation(line: 281, column: 53, scope: !5939)
!5944 = !DILocalVariable(name: "refdiv", arg: 2, scope: !5939, file: !3, line: 281, type: !350)
!5945 = !DILocation(line: 281, column: 63, scope: !5939)
!5946 = !DILocation(line: 283, column: 6, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 283, column: 6)
!5948 = !DILocation(line: 283, column: 13, scope: !5947)
!5949 = !DILocation(line: 283, column: 17, scope: !5947)
!5950 = !DILocation(line: 283, column: 25, scope: !5947)
!5951 = !DILocation(line: 283, column: 28, scope: !5947)
!5952 = !DILocation(line: 283, column: 35, scope: !5947)
!5953 = !DILocation(line: 283, column: 42, scope: !5947)
!5954 = !DILocation(line: 283, column: 6, scope: !5939)
!5955 = !DILocation(line: 284, column: 10, scope: !5947)
!5956 = !DILocation(line: 284, column: 3, scope: !5947)
!5957 = !DILocation(line: 285, column: 25, scope: !5939)
!5958 = !DILocation(line: 285, column: 9, scope: !5939)
!5959 = !DILocation(line: 285, column: 16, scope: !5939)
!5960 = !DILocation(line: 285, column: 23, scope: !5939)
!5961 = !DILocation(line: 285, column: 2, scope: !5939)
