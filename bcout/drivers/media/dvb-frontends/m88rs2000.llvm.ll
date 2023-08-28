; ModuleID = '../bcout/drivers/media/dvb-frontends/m88rs2000.llvm.bc'
source_filename = "drivers/media/dvb-frontends/m88rs2000.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, i8*, i8* }
%struct.module_attribute = type { %struct.attribute, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)*, void (%struct.module*, i8*)*, i32 (%struct.module*)*, void (%struct.module*)* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.kmem_cache = type opaque
%struct.inittab = type { i8, i8, i8 }
%struct.m88rs2000_config = type { i8, i8*, i32, i32 (%struct.dvb_frontend*, i32)* }
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
%struct.m88rs2000_state = type { %struct.i2c_adapter*, %struct.m88rs2000_config*, %struct.dvb_frontend, i8, i32, i32, i32, i8, i32 }

@__param_str_debug = internal constant [16 x i8] c"m88rs2000.debug\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@m88rs2000_debug = internal global i32 0, align 4, !dbg !3485
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @m88rs2000_debug to i8*) } }, section "__param", align 8, !dbg !323
@__UNIQUE_ID_debugtype220 = internal constant [29 x i8] c"m88rs2000.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !389
@__UNIQUE_ID_debug221 = internal constant [61 x i8] c"m88rs2000.parm=debug:set debugging level (1=info (or-able)).\00", section ".modinfo", align 1, !dbg !394
@m88rs2000_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"M88RS2000 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 5000000, i32 1000000, i32 45000000, i32 500, i32 1711 }, [8 x i8] c"\05\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @m88rs2000_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @m88rs2000_init, i32 (%struct.dvb_frontend*)* @m88rs2000_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @m88rs2000_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @m88rs2000_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @m88rs2000_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @m88rs2000_read_status, i32 (%struct.dvb_frontend*, i32*)* @m88rs2000_read_ber, i32 (%struct.dvb_frontend*, i16*)* @m88rs2000_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @m88rs2000_read_snr, i32 (%struct.dvb_frontend*, i32*)* @m88rs2000_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @m88rs2000_send_diseqc_msg, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* @m88rs2000_send_diseqc_burst, i32 (%struct.dvb_frontend*, i32)* @m88rs2000_set_tone, i32 (%struct.dvb_frontend*, i32)* @m88rs2000_set_voltage, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @m88rs2000_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !3487
@__UNIQUE_ID_description222 = internal constant [57 x i8] c"m88rs2000.description=M88RS2000 DVB-S Demodulator driver\00", section ".modinfo", align 1, !dbg !399
@__UNIQUE_ID_author223 = internal constant [54 x i8] c"m88rs2000.author=Malcolm Priestley tvboxspy@gmail.com\00", section ".modinfo", align 1, !dbg !404
@__UNIQUE_ID_file224 = internal constant [53 x i8] c"m88rs2000.file=drivers/media/dvb-frontends/m88rs2000\00", section ".modinfo", align 1, !dbg !409
@__UNIQUE_ID_license225 = internal constant [22 x i8] c"m88rs2000.license=GPL\00", section ".modinfo", align 1, !dbg !414
@__UNIQUE_ID_version226 = internal constant [23 x i8] c"m88rs2000.version=1.13\00", section ".modinfo", align 1, !dbg !419
@___modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)* @__modver_version_show, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)* null, void (%struct.module*, i8*)* null, i32 (%struct.module*)* null, void (%struct.module*)* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0) }, align 8, !dbg !4380
@__modver_attr = internal constant %struct.module_version_attribute* @___modver_attr, section "__modver", align 8, !dbg !424
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\017m88rs2000-fe: m88rs2000: init chip\0A\00", align 1
@m88rs2000_setup = internal global [15 x %struct.inittab] [%struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 16, i8 25, i8 0 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 1, i8 -127, i8 -63 }, %struct.inittab { i8 1, i8 -127, i8 -127 }, %struct.inittab { i8 1, i8 -122, i8 -58 }, %struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 -16, i8 34 }, %struct.inittab { i8 1, i8 -15, i8 -65 }, %struct.inittab { i8 1, i8 -80, i8 69 }, %struct.inittab { i8 1, i8 -78, i8 1 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], align 16, !dbg !4360
@.str.2 = private unnamed_addr constant [78 x i8] c"\017m88rs2000-fe: %s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.m88rs2000_writereg = private unnamed_addr constant [19 x i8] c"m88rs2000_writereg\00", align 1
@m88rs2000_shutdown = internal global [7 x %struct.inittab] [%struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 -80, i8 0 }, %struct.inittab { i8 1, i8 -15, i8 -119 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 1, i8 -127, i8 -127 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], align 16, !dbg !4365
@.str.3 = private unnamed_addr constant [63 x i8] c"\017m88rs2000-fe: %s: unsupported delivery system selected (%d)\0A\00", align 1
@__func__.m88rs2000_set_frontend = private unnamed_addr constant [23 x i8] c"m88rs2000_set_frontend\00", align 1
@fe_reset = internal global [35 x %struct.inittab] [%struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 32, i8 -127 }, %struct.inittab { i8 1, i8 33, i8 -128 }, %struct.inittab { i8 1, i8 16, i8 51 }, %struct.inittab { i8 1, i8 17, i8 68 }, %struct.inittab { i8 1, i8 18, i8 7 }, %struct.inittab { i8 1, i8 24, i8 32 }, %struct.inittab { i8 1, i8 40, i8 4 }, %struct.inittab { i8 1, i8 41, i8 -114 }, %struct.inittab { i8 1, i8 59, i8 -1 }, %struct.inittab { i8 1, i8 50, i8 16 }, %struct.inittab { i8 1, i8 51, i8 2 }, %struct.inittab { i8 1, i8 52, i8 48 }, %struct.inittab { i8 1, i8 53, i8 -1 }, %struct.inittab { i8 1, i8 56, i8 80 }, %struct.inittab { i8 1, i8 57, i8 104 }, %struct.inittab { i8 1, i8 60, i8 127 }, %struct.inittab { i8 1, i8 61, i8 15 }, %struct.inittab { i8 1, i8 69, i8 32 }, %struct.inittab { i8 1, i8 70, i8 36 }, %struct.inittab { i8 1, i8 71, i8 124 }, %struct.inittab { i8 1, i8 72, i8 22 }, %struct.inittab { i8 1, i8 73, i8 4 }, %struct.inittab { i8 1, i8 74, i8 1 }, %struct.inittab { i8 1, i8 75, i8 120 }, %struct.inittab { i8 1, i8 77, i8 -46 }, %struct.inittab { i8 1, i8 78, i8 109 }, %struct.inittab { i8 1, i8 80, i8 48 }, %struct.inittab { i8 1, i8 81, i8 48 }, %struct.inittab { i8 1, i8 84, i8 123 }, %struct.inittab { i8 1, i8 86, i8 9 }, %struct.inittab { i8 1, i8 88, i8 89 }, %struct.inittab { i8 1, i8 89, i8 55 }, %struct.inittab { i8 1, i8 99, i8 -6 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], align 16, !dbg !4370
@fe_trigger = internal global [14 x %struct.inittab] [%struct.inittab { i8 1, i8 -105, i8 4 }, %struct.inittab { i8 1, i8 -103, i8 119 }, %struct.inittab { i8 1, i8 -101, i8 100 }, %struct.inittab { i8 1, i8 -98, i8 0 }, %struct.inittab { i8 1, i8 -97, i8 -8 }, %struct.inittab { i8 1, i8 -104, i8 -1 }, %struct.inittab { i8 1, i8 -64, i8 15 }, %struct.inittab { i8 1, i8 -119, i8 1 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 16, i8 10, i8 0 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], align 16, !dbg !4375
@.str.4 = private unnamed_addr constant [53 x i8] c"\017m88rs2000-fe: m88rs2000: m88rs2000_set_symbolrate\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\017m88rs2000-fe: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.m88rs2000_readreg = private unnamed_addr constant [18 x i8] c"m88rs2000_readreg\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\017m88rs2000-fe: %s\0A\00", align 1
@__func__.m88rs2000_send_diseqc_msg = private unnamed_addr constant [26 x i8] c"m88rs2000_send_diseqc_msg\00", align 1
@__func__.m88rs2000_send_diseqc_burst = private unnamed_addr constant [28 x i8] c"m88rs2000_send_diseqc_burst\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"m88rs2000\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1.13\00", align 1
@llvm.used = appending global [9 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_version226, i32 0, i32 0), i8* bitcast (%struct.module_version_attribute** @__modver_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @m88rs2000_attach(%struct.m88rs2000_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4388 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.m88rs2000_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  store %struct.m88rs2000_config* %config, %struct.m88rs2000_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_config** %config.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !4525, metadata !DIExpression()), !dbg !4538
  store %struct.m88rs2000_state* null, %struct.m88rs2000_state** %state, align 8, !dbg !4538
  %call = call i8* @kzalloc(i64 1320, i32 3264) #8, !dbg !4539
  %0 = bitcast i8* %call to %struct.m88rs2000_state*, !dbg !4539
  store %struct.m88rs2000_state* %0, %struct.m88rs2000_state** %state, align 8, !dbg !4540
  %1 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4541
  %cmp = icmp eq %struct.m88rs2000_state* %1, null, !dbg !4543
  br i1 %cmp, label %if.then, label %if.end, !dbg !4544

if.then:                                          ; preds = %entry
  br label %error, !dbg !4545

if.end:                                           ; preds = %entry
  %2 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %config.addr, align 8, !dbg !4546
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4547
  %config1 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %3, i32 0, i32 1, !dbg !4548
  store %struct.m88rs2000_config* %2, %struct.m88rs2000_config** %config1, align 8, !dbg !4549
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4550
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4551
  %i2c2 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %5, i32 0, i32 0, !dbg !4552
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4553
  %6 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4554
  %tuner_frequency = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %6, i32 0, i32 4, !dbg !4555
  store i32 0, i32* %tuner_frequency, align 4, !dbg !4556
  %7 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4557
  %symbol_rate = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %7, i32 0, i32 5, !dbg !4558
  store i32 0, i32* %symbol_rate, align 8, !dbg !4559
  %8 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4560
  %fec_inner = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %8, i32 0, i32 6, !dbg !4561
  store i32 0, i32* %fec_inner, align 4, !dbg !4562
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4563
  %frontend = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %9, i32 0, i32 2, !dbg !4564
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4565
  %10 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @m88rs2000_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4566
  %11 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4567
  %12 = bitcast %struct.m88rs2000_state* %11 to i8*, !dbg !4567
  %13 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4568
  %frontend3 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %13, i32 0, i32 2, !dbg !4569
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend3, i32 0, i32 3, !dbg !4570
  store i8* %12, i8** %demodulator_priv, align 8, !dbg !4571
  %14 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4572
  %frontend4 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %14, i32 0, i32 2, !dbg !4573
  store %struct.dvb_frontend* %frontend4, %struct.dvb_frontend** %retval, align 8, !dbg !4574
  br label %return, !dbg !4574

error:                                            ; preds = %if.then
  call void @llvm.dbg.label(metadata !4575), !dbg !4576
  %15 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4577
  %16 = bitcast %struct.m88rs2000_state* %15 to i8*, !dbg !4577
  call void @kfree(i8* %16) #8, !dbg !4578
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4579
  br label %return, !dbg !4579

return:                                           ; preds = %error, %if.end
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4580
  ret %struct.dvb_frontend* %17, !dbg !4580
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4581 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4584, metadata !DIExpression()), !dbg !4588
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4594, metadata !DIExpression()), !dbg !4595
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4596, metadata !DIExpression()), !dbg !4597
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4598, metadata !DIExpression()), !dbg !4599
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4600, metadata !DIExpression()), !dbg !4604
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4606, metadata !DIExpression()), !dbg !4610
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4612, metadata !DIExpression()), !dbg !4616
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4621, metadata !DIExpression()), !dbg !4622
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4623, metadata !DIExpression()), !dbg !4624
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4625, metadata !DIExpression()), !dbg !4626
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4627, metadata !DIExpression()), !dbg !4628
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4629, metadata !DIExpression()), !dbg !4630
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4631, metadata !DIExpression()), !dbg !4632
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4633, metadata !DIExpression()), !dbg !4634
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4635, metadata !DIExpression()), !dbg !4636
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4639, metadata !DIExpression()), !dbg !4640
  %0 = load i64, i64* %size.addr, align 8, !dbg !4641
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4642
  %or = or i32 %1, 256, !dbg !4643
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4644
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4645
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4646

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4647
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4648
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4649

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4650
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4651
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4652
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4653
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4630
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4654
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4655
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4656
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4657
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4658
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4659
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4660
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4660
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4660
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4660
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4660
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4661
  br label %kmalloc.exit, !dbg !4661

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4662
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4663
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4663
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4665

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4666
  br label %kmalloc_index.exit.i, !dbg !4666

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4667
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4669
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4670

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4674
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4675

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4677
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4678

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4679
  br label %kmalloc_index.exit.i, !dbg !4679

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4680
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4682
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4683

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4684
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4685
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4686

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4690
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4691

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4692
  br label %kmalloc_index.exit.i, !dbg !4692

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4695
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4696

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4700
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4701

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4705
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4706

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4710
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4711

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4715
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4716

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4720
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4721

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4725
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4726

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4730
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4731

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4735
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4736

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4740
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4741

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4745
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4746

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4750
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4751

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4755
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4756

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4760
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4761

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4765
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4766

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4770
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4771

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4775
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4776

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4780
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4781

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4785
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4786

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4790
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4791

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4795
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4796

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4800
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4801

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4805
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4806

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4808, !srcloc !4811
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !4812, !srcloc !4815
  unreachable, !dbg !4816

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4817
  store i32 %45, i32* %index.i, align 4, !dbg !4818
  %46 = load i32, i32* %index.i, align 4, !dbg !4819
  %tobool.i = icmp ne i32 %46, 0, !dbg !4819
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4821

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4822
  br label %kmalloc.exit, !dbg !4822

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4823
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4824
  %and.i.i = and i32 %48, 17, !dbg !4824
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4824
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4824
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4824
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4824
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4826

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4827
  br label %kmalloc_type.exit.i, !dbg !4827

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4828
  %and2.i.i = and i32 %49, 1, !dbg !4829
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4828
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4828
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4828
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4830
  br label %kmalloc_type.exit.i, !dbg !4830

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4831
  %idxprom.i = zext i32 %51 to i64, !dbg !4832
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4832
  %52 = load i32, i32* %index.i, align 4, !dbg !4833
  %idxprom6.i = zext i32 %52 to i64, !dbg !4832
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4832
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4832
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4834
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4835
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4836
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4837
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4838
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4838
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4838
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4838
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4838
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4599
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4839
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4840
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4841
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4842
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4843
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4844
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4845
  store i8* %62, i8** %retval.i, align 8, !dbg !4846
  br label %kmalloc.exit, !dbg !4846

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4847
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4848
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4849
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4849
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4849
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4849
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4849
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4850
  br label %kmalloc.exit, !dbg !4850

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4851
  ret i8* %65, !dbg !4852
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4853 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4857, metadata !DIExpression()), !dbg !4862
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4864, metadata !DIExpression()), !dbg !4865
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  %0 = load i64, i64* %size.addr, align 8, !dbg !4868
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4870
  br i1 %1, label %if.then, label %if.end447, !dbg !4871

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4872
  %tobool = icmp ne i64 %2, 0, !dbg !4872
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4875

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4876
  br label %return, !dbg !4876

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4877
  %cmp = icmp ult i64 %3, 4096, !dbg !4879
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4880

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4881
  br label %return, !dbg !4881

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub = sub i64 %4, 1, !dbg !4882
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4882
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4882

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub4 = sub i64 %6, 1, !dbg !4882
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4882
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4882

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub6 = sub i64 %8, 1, !dbg !4882
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4882
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4882

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4882

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub9 = sub i64 %9, 1, !dbg !4882
  %and = and i64 %sub9, -9223372036854775808, !dbg !4882
  %tobool10 = icmp ne i64 %and, 0, !dbg !4882
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4882

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4882

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub13 = sub i64 %10, 1, !dbg !4882
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4882
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4882
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4882

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4882

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub18 = sub i64 %11, 1, !dbg !4882
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4882
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4882
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4882

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4882

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub23 = sub i64 %12, 1, !dbg !4882
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4882
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4882
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4882

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4882

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub28 = sub i64 %13, 1, !dbg !4882
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4882
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4882
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4882

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4882

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub33 = sub i64 %14, 1, !dbg !4882
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4882
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4882
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4882

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4882

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub38 = sub i64 %15, 1, !dbg !4882
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4882
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4882
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4882

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4882

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub43 = sub i64 %16, 1, !dbg !4882
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4882
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4882
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4882

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4882

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub48 = sub i64 %17, 1, !dbg !4882
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4882
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4882
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4882

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4882

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub53 = sub i64 %18, 1, !dbg !4882
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4882
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4882
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4882

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4882

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub58 = sub i64 %19, 1, !dbg !4882
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4882
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4882
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4882

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4882

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub63 = sub i64 %20, 1, !dbg !4882
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4882
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4882
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4882

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4882

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub68 = sub i64 %21, 1, !dbg !4882
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4882
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4882
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4882

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4882

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub73 = sub i64 %22, 1, !dbg !4882
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4882
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4882
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4882

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4882

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub78 = sub i64 %23, 1, !dbg !4882
  %and79 = and i64 %sub78, 562949953421312, !dbg !4882
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4882
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4882

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4882

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub83 = sub i64 %24, 1, !dbg !4882
  %and84 = and i64 %sub83, 281474976710656, !dbg !4882
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4882
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4882

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4882

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub88 = sub i64 %25, 1, !dbg !4882
  %and89 = and i64 %sub88, 140737488355328, !dbg !4882
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4882
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4882

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4882

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub93 = sub i64 %26, 1, !dbg !4882
  %and94 = and i64 %sub93, 70368744177664, !dbg !4882
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4882
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4882

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4882

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub98 = sub i64 %27, 1, !dbg !4882
  %and99 = and i64 %sub98, 35184372088832, !dbg !4882
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4882
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4882

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4882

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub103 = sub i64 %28, 1, !dbg !4882
  %and104 = and i64 %sub103, 17592186044416, !dbg !4882
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4882
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4882

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4882

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub108 = sub i64 %29, 1, !dbg !4882
  %and109 = and i64 %sub108, 8796093022208, !dbg !4882
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4882
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4882

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4882

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub113 = sub i64 %30, 1, !dbg !4882
  %and114 = and i64 %sub113, 4398046511104, !dbg !4882
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4882
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4882

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4882

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub118 = sub i64 %31, 1, !dbg !4882
  %and119 = and i64 %sub118, 2199023255552, !dbg !4882
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4882
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4882

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4882

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub123 = sub i64 %32, 1, !dbg !4882
  %and124 = and i64 %sub123, 1099511627776, !dbg !4882
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4882
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4882

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4882

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub128 = sub i64 %33, 1, !dbg !4882
  %and129 = and i64 %sub128, 549755813888, !dbg !4882
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4882
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4882

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4882

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub133 = sub i64 %34, 1, !dbg !4882
  %and134 = and i64 %sub133, 274877906944, !dbg !4882
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4882
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4882

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4882

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub138 = sub i64 %35, 1, !dbg !4882
  %and139 = and i64 %sub138, 137438953472, !dbg !4882
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4882
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4882

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4882

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub143 = sub i64 %36, 1, !dbg !4882
  %and144 = and i64 %sub143, 68719476736, !dbg !4882
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4882
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4882

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4882

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub148 = sub i64 %37, 1, !dbg !4882
  %and149 = and i64 %sub148, 34359738368, !dbg !4882
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4882
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4882

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4882

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub153 = sub i64 %38, 1, !dbg !4882
  %and154 = and i64 %sub153, 17179869184, !dbg !4882
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4882
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4882

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4882

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub158 = sub i64 %39, 1, !dbg !4882
  %and159 = and i64 %sub158, 8589934592, !dbg !4882
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4882
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4882

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4882

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub163 = sub i64 %40, 1, !dbg !4882
  %and164 = and i64 %sub163, 4294967296, !dbg !4882
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4882
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4882

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4882

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub168 = sub i64 %41, 1, !dbg !4882
  %and169 = and i64 %sub168, 2147483648, !dbg !4882
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4882
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4882

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4882

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub173 = sub i64 %42, 1, !dbg !4882
  %and174 = and i64 %sub173, 1073741824, !dbg !4882
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4882
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4882

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4882

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub178 = sub i64 %43, 1, !dbg !4882
  %and179 = and i64 %sub178, 536870912, !dbg !4882
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4882
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4882

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4882

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub183 = sub i64 %44, 1, !dbg !4882
  %and184 = and i64 %sub183, 268435456, !dbg !4882
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4882
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4882

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4882

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub188 = sub i64 %45, 1, !dbg !4882
  %and189 = and i64 %sub188, 134217728, !dbg !4882
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4882
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4882

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4882

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub193 = sub i64 %46, 1, !dbg !4882
  %and194 = and i64 %sub193, 67108864, !dbg !4882
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4882
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4882

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4882

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub198 = sub i64 %47, 1, !dbg !4882
  %and199 = and i64 %sub198, 33554432, !dbg !4882
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4882
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4882

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4882

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub203 = sub i64 %48, 1, !dbg !4882
  %and204 = and i64 %sub203, 16777216, !dbg !4882
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4882
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4882

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4882

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub208 = sub i64 %49, 1, !dbg !4882
  %and209 = and i64 %sub208, 8388608, !dbg !4882
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4882
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4882

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4882

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub213 = sub i64 %50, 1, !dbg !4882
  %and214 = and i64 %sub213, 4194304, !dbg !4882
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4882
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4882

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4882

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub218 = sub i64 %51, 1, !dbg !4882
  %and219 = and i64 %sub218, 2097152, !dbg !4882
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4882
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4882

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4882

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub223 = sub i64 %52, 1, !dbg !4882
  %and224 = and i64 %sub223, 1048576, !dbg !4882
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4882
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4882

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4882

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub228 = sub i64 %53, 1, !dbg !4882
  %and229 = and i64 %sub228, 524288, !dbg !4882
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4882
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4882

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4882

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub233 = sub i64 %54, 1, !dbg !4882
  %and234 = and i64 %sub233, 262144, !dbg !4882
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4882
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4882

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4882

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub238 = sub i64 %55, 1, !dbg !4882
  %and239 = and i64 %sub238, 131072, !dbg !4882
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4882
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4882

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4882

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub243 = sub i64 %56, 1, !dbg !4882
  %and244 = and i64 %sub243, 65536, !dbg !4882
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4882
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4882

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4882

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub248 = sub i64 %57, 1, !dbg !4882
  %and249 = and i64 %sub248, 32768, !dbg !4882
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4882
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4882

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4882

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub253 = sub i64 %58, 1, !dbg !4882
  %and254 = and i64 %sub253, 16384, !dbg !4882
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4882
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4882

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4882

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub258 = sub i64 %59, 1, !dbg !4882
  %and259 = and i64 %sub258, 8192, !dbg !4882
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4882
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4882

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4882

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub263 = sub i64 %60, 1, !dbg !4882
  %and264 = and i64 %sub263, 4096, !dbg !4882
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4882
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4882

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4882

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub268 = sub i64 %61, 1, !dbg !4882
  %and269 = and i64 %sub268, 2048, !dbg !4882
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4882
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4882

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4882

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub273 = sub i64 %62, 1, !dbg !4882
  %and274 = and i64 %sub273, 1024, !dbg !4882
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4882
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4882

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4882

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub278 = sub i64 %63, 1, !dbg !4882
  %and279 = and i64 %sub278, 512, !dbg !4882
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4882
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4882

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4882

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub283 = sub i64 %64, 1, !dbg !4882
  %and284 = and i64 %sub283, 256, !dbg !4882
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4882
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4882

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4882

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub288 = sub i64 %65, 1, !dbg !4882
  %and289 = and i64 %sub288, 128, !dbg !4882
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4882
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4882

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4882

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub293 = sub i64 %66, 1, !dbg !4882
  %and294 = and i64 %sub293, 64, !dbg !4882
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4882
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4882

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4882

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub298 = sub i64 %67, 1, !dbg !4882
  %and299 = and i64 %sub298, 32, !dbg !4882
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4882
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4882

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4882

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub303 = sub i64 %68, 1, !dbg !4882
  %and304 = and i64 %sub303, 16, !dbg !4882
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4882
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4882

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4882

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub308 = sub i64 %69, 1, !dbg !4882
  %and309 = and i64 %sub308, 8, !dbg !4882
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4882
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4882

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4882

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub313 = sub i64 %70, 1, !dbg !4882
  %and314 = and i64 %sub313, 4, !dbg !4882
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4882
  %71 = zext i1 %tobool315 to i64, !dbg !4882
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4882
  br label %cond.end, !dbg !4882

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4882
  br label %cond.end317, !dbg !4882

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4882
  br label %cond.end319, !dbg !4882

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4882
  br label %cond.end321, !dbg !4882

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4882
  br label %cond.end323, !dbg !4882

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4882
  br label %cond.end325, !dbg !4882

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4882
  br label %cond.end327, !dbg !4882

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4882
  br label %cond.end329, !dbg !4882

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4882
  br label %cond.end331, !dbg !4882

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4882
  br label %cond.end333, !dbg !4882

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4882
  br label %cond.end335, !dbg !4882

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4882
  br label %cond.end337, !dbg !4882

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4882
  br label %cond.end339, !dbg !4882

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4882
  br label %cond.end341, !dbg !4882

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4882
  br label %cond.end343, !dbg !4882

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4882
  br label %cond.end345, !dbg !4882

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4882
  br label %cond.end347, !dbg !4882

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4882
  br label %cond.end349, !dbg !4882

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4882
  br label %cond.end351, !dbg !4882

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4882
  br label %cond.end353, !dbg !4882

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4882
  br label %cond.end355, !dbg !4882

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4882
  br label %cond.end357, !dbg !4882

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4882
  br label %cond.end359, !dbg !4882

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4882
  br label %cond.end361, !dbg !4882

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4882
  br label %cond.end363, !dbg !4882

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4882
  br label %cond.end365, !dbg !4882

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4882
  br label %cond.end367, !dbg !4882

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4882
  br label %cond.end369, !dbg !4882

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4882
  br label %cond.end371, !dbg !4882

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4882
  br label %cond.end373, !dbg !4882

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4882
  br label %cond.end375, !dbg !4882

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4882
  br label %cond.end377, !dbg !4882

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4882
  br label %cond.end379, !dbg !4882

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4882
  br label %cond.end381, !dbg !4882

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4882
  br label %cond.end383, !dbg !4882

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4882
  br label %cond.end385, !dbg !4882

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4882
  br label %cond.end387, !dbg !4882

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4882
  br label %cond.end389, !dbg !4882

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4882
  br label %cond.end391, !dbg !4882

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4882
  br label %cond.end393, !dbg !4882

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4882
  br label %cond.end395, !dbg !4882

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4882
  br label %cond.end397, !dbg !4882

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4882
  br label %cond.end399, !dbg !4882

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4882
  br label %cond.end401, !dbg !4882

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4882
  br label %cond.end403, !dbg !4882

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4882
  br label %cond.end405, !dbg !4882

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4882
  br label %cond.end407, !dbg !4882

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4882
  br label %cond.end409, !dbg !4882

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4882
  br label %cond.end411, !dbg !4882

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4882
  br label %cond.end413, !dbg !4882

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4882
  br label %cond.end415, !dbg !4882

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4882
  br label %cond.end417, !dbg !4882

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4882
  br label %cond.end419, !dbg !4882

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4882
  br label %cond.end421, !dbg !4882

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4882
  br label %cond.end423, !dbg !4882

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4882
  br label %cond.end425, !dbg !4882

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4882
  br label %cond.end427, !dbg !4882

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4882
  br label %cond.end429, !dbg !4882

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4882
  br label %cond.end431, !dbg !4882

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4882
  br label %cond.end433, !dbg !4882

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4882
  br label %cond.end435, !dbg !4882

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4882
  br label %cond.end437, !dbg !4882

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4882
  br label %cond.end440, !dbg !4882

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4882

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4882
  br label %cond.end444, !dbg !4882

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4882
  %sub443 = sub i64 %72, 1, !dbg !4882
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4882
  br label %cond.end444, !dbg !4882

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4882
  %sub446 = sub i32 %cond445, 12, !dbg !4883
  %add = add i32 %sub446, 1, !dbg !4884
  store i32 %add, i32* %retval, align 4, !dbg !4885
  br label %return, !dbg !4885

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4886
  %dec = add i64 %73, -1, !dbg !4886
  store i64 %dec, i64* %size.addr, align 8, !dbg !4886
  %74 = load i64, i64* %size.addr, align 8, !dbg !4887
  %shr = lshr i64 %74, 12, !dbg !4887
  store i64 %shr, i64* %size.addr, align 8, !dbg !4887
  %75 = load i64, i64* %size.addr, align 8, !dbg !4888
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4865
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4889
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4890
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4889, !srcloc !4891
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4889
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4892
  %add.i = add i32 %79, 1, !dbg !4893
  store i32 %add.i, i32* %retval, align 4, !dbg !4894
  br label %return, !dbg !4894

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4895
  ret i32 %80, !dbg !4895
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4896 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4857, metadata !DIExpression()), !dbg !4900
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4864, metadata !DIExpression()), !dbg !4902
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4903, metadata !DIExpression()), !dbg !4904
  %0 = load i64, i64* %n.addr, align 8, !dbg !4905
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4902
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4906
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4907
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4906, !srcloc !4891
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4906
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4908
  %add.i = add i32 %4, 1, !dbg !4909
  %sub = sub i32 %add.i, 1, !dbg !4910
  ret i32 %sub, !dbg !4911
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4912 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4920, metadata !DIExpression()), !dbg !4921
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4924
  ret i8* %0, !dbg !4925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @m88rs2000_release(%struct.dvb_frontend* %fe) #0 !dbg !4926 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4927, metadata !DIExpression()), !dbg !4928
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !4929, metadata !DIExpression()), !dbg !4930
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4931
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4932
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4932
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !4931
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !4930
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4933
  %4 = bitcast %struct.m88rs2000_state* %3 to i8*, !dbg !4933
  call void @kfree(i8* %4) #8, !dbg !4934
  ret void, !dbg !4935
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_init(%struct.dvb_frontend* %fe) #0 !dbg !4936 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !4939, metadata !DIExpression()), !dbg !4940
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4941
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4942
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4942
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !4941
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !4940
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4943, metadata !DIExpression()), !dbg !4944
  br label %do.body, !dbg !4945

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @m88rs2000_debug, align 4, !dbg !4946
  %and = and i32 1, %3, !dbg !4946
  %tobool = icmp ne i32 %and, 0, !dbg !4946
  br i1 %tobool, label %if.then, label %if.end, !dbg !4949

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #13, !dbg !4946
  br label %if.end, !dbg !4946

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4949

do.end:                                           ; preds = %if.end
  %4 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4950
  %config = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %4, i32 0, i32 1, !dbg !4952
  %5 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %config, align 8, !dbg !4952
  %inittab = getelementptr inbounds %struct.m88rs2000_config, %struct.m88rs2000_config* %5, i32 0, i32 1, !dbg !4953
  %6 = load i8*, i8** %inittab, align 8, !dbg !4953
  %tobool1 = icmp ne i8* %6, null, !dbg !4950
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !4954

if.then2:                                         ; preds = %do.end
  %7 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4955
  %8 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4956
  %config3 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %8, i32 0, i32 1, !dbg !4957
  %9 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %config3, align 8, !dbg !4957
  %inittab4 = getelementptr inbounds %struct.m88rs2000_config, %struct.m88rs2000_config* %9, i32 0, i32 1, !dbg !4958
  %10 = load i8*, i8** %inittab4, align 8, !dbg !4958
  %11 = bitcast i8* %10 to %struct.inittab*, !dbg !4959
  %call5 = call i32 @m88rs2000_tab_set(%struct.m88rs2000_state* %7, %struct.inittab* %11) #8, !dbg !4960
  store i32 %call5, i32* %ret, align 4, !dbg !4961
  br label %if.end7, !dbg !4962

if.else:                                          ; preds = %do.end
  %12 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4963
  %call6 = call i32 @m88rs2000_tab_set(%struct.m88rs2000_state* %12, %struct.inittab* getelementptr inbounds ([15 x %struct.inittab], [15 x %struct.inittab]* @m88rs2000_setup, i64 0, i64 0)) #8, !dbg !4964
  store i32 %call6, i32* %ret, align 4, !dbg !4965
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %13 = load i32, i32* %ret, align 4, !dbg !4966
  ret i32 %13, !dbg !4967
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_sleep(%struct.dvb_frontend* %fe) #0 !dbg !4968 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4973
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4974
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4974
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !4973
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !4972
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4975, metadata !DIExpression()), !dbg !4976
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !4977
  %call = call i32 @m88rs2000_tab_set(%struct.m88rs2000_state* %3, %struct.inittab* getelementptr inbounds ([7 x %struct.inittab], [7 x %struct.inittab]* @m88rs2000_shutdown, i64 0, i64 0)) #8, !dbg !4978
  store i32 %call, i32* %ret, align 4, !dbg !4979
  %4 = load i32, i32* %ret, align 4, !dbg !4980
  ret i32 %4, !dbg !4981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !4982 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %tuner_freq = alloca i32, align 4
  %offset = alloca i16, align 2
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !4985, metadata !DIExpression()), !dbg !4986
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4987
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4988
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4988
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !4987
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !4986
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !4989, metadata !DIExpression()), !dbg !4990
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4991
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !4992
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !4990
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4993, metadata !DIExpression()), !dbg !4994
  store i32 0, i32* %status, align 4, !dbg !4994
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4995, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4997, metadata !DIExpression()), !dbg !4998
  store i32 0, i32* %ret, align 4, !dbg !4998
  call void @llvm.dbg.declare(metadata i32* %tuner_freq, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.declare(metadata i16* %offset, metadata !5001, metadata !DIExpression()), !dbg !5002
  store i16 0, i16* %offset, align 2, !dbg !5002
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5003, metadata !DIExpression()), !dbg !5004
  %4 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5005
  %no_lock_count = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %4, i32 0, i32 3, !dbg !5006
  store i8 0, i8* %no_lock_count, align 8, !dbg !5007
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5008
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 15, !dbg !5010
  %6 = load i32, i32* %delivery_system, align 4, !dbg !5010
  %cmp = icmp ne i32 %6, 5, !dbg !5011
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5012

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5013

do.body:                                          ; preds = %if.then
  %7 = load i32, i32* @m88rs2000_debug, align 4, !dbg !5015
  %and = and i32 1, %7, !dbg !5015
  %tobool = icmp ne i32 %and, 0, !dbg !5015
  br i1 %tobool, label %if.then1, label %if.end, !dbg !5018

if.then1:                                         ; preds = %do.body
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5015
  %delivery_system2 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 15, !dbg !5015
  %9 = load i32, i32* %delivery_system2, align 4, !dbg !5015
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.m88rs2000_set_frontend, i64 0, i64 0), i32 %9) #13, !dbg !5015
  br label %if.end, !dbg !5015

if.end:                                           ; preds = %if.then1, %do.body
  br label %do.end, !dbg !5018

do.end:                                           ; preds = %if.end
  store i32 -95, i32* %retval, align 4, !dbg !5019
  br label %return, !dbg !5019

if.end3:                                          ; preds = %entry
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5020
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1, !dbg !5022
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5023
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5024
  %11 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5024
  %tobool4 = icmp ne i32 (%struct.dvb_frontend*)* %11, null, !dbg !5020
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !5025

if.then5:                                         ; preds = %if.end3
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5026
  %ops6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1, !dbg !5027
  %tuner_ops7 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops6, i32 0, i32 30, !dbg !5028
  %set_params8 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops7, i32 0, i32 6, !dbg !5029
  %13 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params8, align 8, !dbg !5029
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5030
  %call9 = call i32 %13(%struct.dvb_frontend* %14) #8, !dbg !5026
  store i32 %call9, i32* %ret, align 4, !dbg !5031
  br label %if.end10, !dbg !5032

if.end10:                                         ; preds = %if.then5, %if.end3
  %15 = load i32, i32* %ret, align 4, !dbg !5033
  %cmp11 = icmp slt i32 %15, 0, !dbg !5035
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5036

if.then12:                                        ; preds = %if.end10
  store i32 -19, i32* %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

if.end13:                                         ; preds = %if.end10
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5038
  %ops14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1, !dbg !5040
  %tuner_ops15 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops14, i32 0, i32 30, !dbg !5041
  %get_frequency = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops15, i32 0, i32 9, !dbg !5042
  %17 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency, align 8, !dbg !5042
  %tobool16 = icmp ne i32 (%struct.dvb_frontend*, i32*)* %17, null, !dbg !5038
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !5043

if.then17:                                        ; preds = %if.end13
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5044
  %ops18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1, !dbg !5046
  %tuner_ops19 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops18, i32 0, i32 30, !dbg !5047
  %get_frequency20 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops19, i32 0, i32 9, !dbg !5048
  %19 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency20, align 8, !dbg !5048
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5049
  %call21 = call i32 %19(%struct.dvb_frontend* %20, i32* %tuner_freq) #8, !dbg !5044
  store i32 %call21, i32* %ret, align 4, !dbg !5050
  %21 = load i32, i32* %ret, align 4, !dbg !5051
  %cmp22 = icmp slt i32 %21, 0, !dbg !5053
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5054

if.then23:                                        ; preds = %if.then17
  store i32 -19, i32* %retval, align 4, !dbg !5055
  br label %return, !dbg !5055

if.end24:                                         ; preds = %if.then17
  %22 = load i32, i32* %tuner_freq, align 4, !dbg !5056
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5057
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0, !dbg !5058
  %24 = load i32, i32* %frequency, align 4, !dbg !5058
  %sub = sub i32 %22, %24, !dbg !5059
  %conv = trunc i32 %sub to i16, !dbg !5060
  store i16 %conv, i16* %offset, align 2, !dbg !5061
  br label %if.end25, !dbg !5062

if.else:                                          ; preds = %if.end13
  store i16 0, i16* %offset, align 2, !dbg !5063
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end24
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5065
  %frequency26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0, !dbg !5067
  %26 = load i32, i32* %frequency26, align 4, !dbg !5067
  %rem = urem i32 %26, 192857, !dbg !5068
  %cmp27 = icmp uge i32 %rem, 189857, !dbg !5069
  br i1 %cmp27, label %if.then33, label %lor.lhs.false, !dbg !5070

lor.lhs.false:                                    ; preds = %if.end25
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5071
  %frequency29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 0, !dbg !5072
  %28 = load i32, i32* %frequency29, align 4, !dbg !5072
  %rem30 = urem i32 %28, 192857, !dbg !5073
  %cmp31 = icmp ule i32 %rem30, 3000, !dbg !5074
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !5075

if.then33:                                        ; preds = %lor.lhs.false, %if.end25
  %29 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5076
  %call34 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %29, i8 zeroext -122, i8 zeroext -62) #8, !dbg !5077
  store i32 %call34, i32* %ret, align 4, !dbg !5078
  br label %if.end37, !dbg !5079

if.else35:                                        ; preds = %lor.lhs.false
  %30 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5080
  %call36 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %30, i8 zeroext -122, i8 zeroext -58) #8, !dbg !5081
  store i32 %call36, i32* %ret, align 4, !dbg !5082
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then33
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5083
  %32 = load i16, i16* %offset, align 2, !dbg !5084
  %call38 = call i32 @m88rs2000_set_carrieroffset(%struct.dvb_frontend* %31, i16 signext %32) #8, !dbg !5085
  %33 = load i32, i32* %ret, align 4, !dbg !5086
  %or = or i32 %33, %call38, !dbg !5086
  store i32 %or, i32* %ret, align 4, !dbg !5086
  %34 = load i32, i32* %ret, align 4, !dbg !5087
  %cmp39 = icmp slt i32 %34, 0, !dbg !5089
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !5090

if.then41:                                        ; preds = %if.end37
  store i32 -19, i32* %retval, align 4, !dbg !5091
  br label %return, !dbg !5091

if.end42:                                         ; preds = %if.end37
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5092
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 10, !dbg !5094
  %36 = load i32, i32* %symbol_rate, align 4, !dbg !5094
  %cmp43 = icmp ugt i32 %36, 27500000, !dbg !5095
  br i1 %cmp43, label %if.then45, label %if.else47, !dbg !5096

if.then45:                                        ; preds = %if.end42
  %37 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5097
  %call46 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %37, i8 zeroext -15, i8 zeroext -92) #8, !dbg !5098
  store i32 %call46, i32* %ret, align 4, !dbg !5099
  br label %if.end49, !dbg !5100

if.else47:                                        ; preds = %if.end42
  %38 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5101
  %call48 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %38, i8 zeroext -15, i8 zeroext -65) #8, !dbg !5102
  store i32 %call48, i32* %ret, align 4, !dbg !5103
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then45
  %39 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5104
  %call50 = call i32 @m88rs2000_tab_set(%struct.m88rs2000_state* %39, %struct.inittab* getelementptr inbounds ([35 x %struct.inittab], [35 x %struct.inittab]* @fe_reset, i64 0, i64 0)) #8, !dbg !5105
  %40 = load i32, i32* %ret, align 4, !dbg !5106
  %or51 = or i32 %40, %call50, !dbg !5106
  store i32 %or51, i32* %ret, align 4, !dbg !5106
  %41 = load i32, i32* %ret, align 4, !dbg !5107
  %cmp52 = icmp slt i32 %41, 0, !dbg !5109
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !5110

if.then54:                                        ; preds = %if.end49
  store i32 -19, i32* %retval, align 4, !dbg !5111
  br label %return, !dbg !5111

if.end55:                                         ; preds = %if.end49
  %42 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5112
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5113
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 5, !dbg !5114
  %44 = load i32, i32* %fec_inner, align 4, !dbg !5114
  %call56 = call i32 @m88rs2000_set_fec(%struct.m88rs2000_state* %42, i32 %44) #8, !dbg !5115
  store i32 %call56, i32* %ret, align 4, !dbg !5116
  %45 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5117
  %call57 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %45, i8 zeroext -123, i8 zeroext 1) #8, !dbg !5118
  %46 = load i32, i32* %ret, align 4, !dbg !5119
  %or58 = or i32 %46, %call57, !dbg !5119
  store i32 %or58, i32* %ret, align 4, !dbg !5119
  %47 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5120
  %call59 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %47, i8 zeroext -118, i8 zeroext -65) #8, !dbg !5121
  %48 = load i32, i32* %ret, align 4, !dbg !5122
  %or60 = or i32 %48, %call59, !dbg !5122
  store i32 %or60, i32* %ret, align 4, !dbg !5122
  %49 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5123
  %call61 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %49, i8 zeroext -115, i8 zeroext 30) #8, !dbg !5124
  %50 = load i32, i32* %ret, align 4, !dbg !5125
  %or62 = or i32 %50, %call61, !dbg !5125
  store i32 %or62, i32* %ret, align 4, !dbg !5125
  %51 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5126
  %call63 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %51, i8 zeroext -112, i8 zeroext -15) #8, !dbg !5127
  %52 = load i32, i32* %ret, align 4, !dbg !5128
  %or64 = or i32 %52, %call63, !dbg !5128
  store i32 %or64, i32* %ret, align 4, !dbg !5128
  %53 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5129
  %call65 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %53, i8 zeroext -111, i8 zeroext 8) #8, !dbg !5130
  %54 = load i32, i32* %ret, align 4, !dbg !5131
  %or66 = or i32 %54, %call65, !dbg !5131
  store i32 %or66, i32* %ret, align 4, !dbg !5131
  %55 = load i32, i32* %ret, align 4, !dbg !5132
  %cmp67 = icmp slt i32 %55, 0, !dbg !5134
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !5135

if.then69:                                        ; preds = %if.end55
  store i32 -19, i32* %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

if.end70:                                         ; preds = %if.end55
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5137
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5138
  %symbol_rate71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 10, !dbg !5139
  %58 = load i32, i32* %symbol_rate71, align 4, !dbg !5139
  %call72 = call i32 @m88rs2000_set_symbolrate(%struct.dvb_frontend* %56, i32 %58) #8, !dbg !5140
  store i32 %call72, i32* %ret, align 4, !dbg !5141
  %59 = load i32, i32* %ret, align 4, !dbg !5142
  %cmp73 = icmp slt i32 %59, 0, !dbg !5144
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !5145

if.then75:                                        ; preds = %if.end70
  store i32 -19, i32* %retval, align 4, !dbg !5146
  br label %return, !dbg !5146

if.end76:                                         ; preds = %if.end70
  %60 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5147
  %call77 = call i32 @m88rs2000_tab_set(%struct.m88rs2000_state* %60, %struct.inittab* getelementptr inbounds ([14 x %struct.inittab], [14 x %struct.inittab]* @fe_trigger, i64 0, i64 0)) #8, !dbg !5148
  store i32 %call77, i32* %ret, align 4, !dbg !5149
  %61 = load i32, i32* %ret, align 4, !dbg !5150
  %cmp78 = icmp slt i32 %61, 0, !dbg !5152
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !5153

if.then80:                                        ; preds = %if.end76
  store i32 -19, i32* %retval, align 4, !dbg !5154
  br label %return, !dbg !5154

if.end81:                                         ; preds = %if.end76
  store i32 0, i32* %i, align 4, !dbg !5155
  br label %for.cond, !dbg !5157

for.cond:                                         ; preds = %for.inc, %if.end81
  %62 = load i32, i32* %i, align 4, !dbg !5158
  %cmp82 = icmp slt i32 %62, 25, !dbg !5160
  br i1 %cmp82, label %for.body, label %for.end, !dbg !5161

for.body:                                         ; preds = %for.cond
  %63 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5162
  %call84 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %63, i8 zeroext -116) #8, !dbg !5164
  store i8 %call84, i8* %reg, align 1, !dbg !5165
  %64 = load i8, i8* %reg, align 1, !dbg !5166
  %conv85 = zext i8 %64 to i32, !dbg !5166
  %and86 = and i32 %conv85, 238, !dbg !5168
  %cmp87 = icmp eq i32 %and86, 238, !dbg !5169
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !5170

if.then89:                                        ; preds = %for.body
  store i32 16, i32* %status, align 4, !dbg !5171
  br label %for.end, !dbg !5173

if.end90:                                         ; preds = %for.body
  %65 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5174
  %no_lock_count91 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %65, i32 0, i32 3, !dbg !5175
  %66 = load i8, i8* %no_lock_count91, align 8, !dbg !5176
  %inc = add i8 %66, 1, !dbg !5176
  store i8 %inc, i8* %no_lock_count91, align 8, !dbg !5176
  %67 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5177
  %no_lock_count92 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %67, i32 0, i32 3, !dbg !5179
  %68 = load i8, i8* %no_lock_count92, align 8, !dbg !5179
  %conv93 = zext i8 %68 to i32, !dbg !5177
  %cmp94 = icmp eq i32 %conv93, 15, !dbg !5180
  br i1 %cmp94, label %if.then96, label %if.end102, !dbg !5181

if.then96:                                        ; preds = %if.end90
  %69 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5182
  %call97 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %69, i8 zeroext 112) #8, !dbg !5184
  store i8 %call97, i8* %reg, align 1, !dbg !5185
  %70 = load i8, i8* %reg, align 1, !dbg !5186
  %conv98 = zext i8 %70 to i32, !dbg !5186
  %xor = xor i32 %conv98, 4, !dbg !5186
  %conv99 = trunc i32 %xor to i8, !dbg !5186
  store i8 %conv99, i8* %reg, align 1, !dbg !5186
  %71 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5187
  %72 = load i8, i8* %reg, align 1, !dbg !5188
  %call100 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %71, i8 zeroext 112, i8 zeroext %72) #8, !dbg !5189
  %73 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5190
  %no_lock_count101 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %73, i32 0, i32 3, !dbg !5191
  store i8 0, i8* %no_lock_count101, align 8, !dbg !5192
  br label %if.end102, !dbg !5193

if.end102:                                        ; preds = %if.then96, %if.end90
  call void @msleep(i32 20) #8, !dbg !5194
  br label %for.inc, !dbg !5195

for.inc:                                          ; preds = %if.end102
  %74 = load i32, i32* %i, align 4, !dbg !5196
  %inc103 = add i32 %74, 1, !dbg !5196
  store i32 %inc103, i32* %i, align 4, !dbg !5196
  br label %for.cond, !dbg !5197, !llvm.loop !5198

for.end:                                          ; preds = %if.then89, %for.cond
  %75 = load i32, i32* %status, align 4, !dbg !5200
  %and104 = and i32 %75, 16, !dbg !5202
  %tobool105 = icmp ne i32 %and104, 0, !dbg !5202
  br i1 %tobool105, label %if.then106, label %if.end110, !dbg !5203

if.then106:                                       ; preds = %for.end
  %76 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5204
  %call107 = call i32 @m88rs2000_get_fec(%struct.m88rs2000_state* %76) #8, !dbg !5206
  %77 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5207
  %fec_inner108 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %77, i32 0, i32 6, !dbg !5208
  store i32 %call107, i32* %fec_inner108, align 4, !dbg !5209
  %78 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5210
  %call109 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %78, i8 zeroext 101) #8, !dbg !5211
  store i8 %call109, i8* %reg, align 1, !dbg !5212
  br label %if.end110, !dbg !5213

if.end110:                                        ; preds = %if.then106, %for.end
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5214
  %frequency111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 0, !dbg !5215
  %80 = load i32, i32* %frequency111, align 4, !dbg !5215
  %81 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5216
  %tuner_frequency = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %81, i32 0, i32 4, !dbg !5217
  store i32 %80, i32* %tuner_frequency, align 4, !dbg !5218
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5219
  %symbol_rate112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 10, !dbg !5220
  %83 = load i32, i32* %symbol_rate112, align 4, !dbg !5220
  %84 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5221
  %symbol_rate113 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %84, i32 0, i32 5, !dbg !5222
  store i32 %83, i32* %symbol_rate113, align 8, !dbg !5223
  store i32 0, i32* %retval, align 4, !dbg !5224
  br label %return, !dbg !5224

return:                                           ; preds = %if.end110, %if.then80, %if.then75, %if.then69, %if.then54, %if.then41, %if.then23, %if.then12, %do.end
  %85 = load i32, i32* %retval, align 4, !dbg !5225
  ret i32 %85, !dbg !5225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %tune) #0 !dbg !5226 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tune.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  store %struct.dvb_frontend_tune_settings* %tune, %struct.dvb_frontend_tune_settings** %tune.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %tune.addr, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5231, metadata !DIExpression()), !dbg !5232
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5233
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5234
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5232
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5235
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 10, !dbg !5237
  %2 = load i32, i32* %symbol_rate, align 4, !dbg !5237
  %cmp = icmp ugt i32 %2, 3000000, !dbg !5238
  br i1 %cmp, label %if.then, label %if.else, !dbg !5239

if.then:                                          ; preds = %entry
  %3 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %tune.addr, align 8, !dbg !5240
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %3, i32 0, i32 0, !dbg !5241
  store i32 2000, i32* %min_delay_ms, align 4, !dbg !5242
  br label %if.end, !dbg !5240

if.else:                                          ; preds = %entry
  %4 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %tune.addr, align 8, !dbg !5243
  %min_delay_ms1 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %4, i32 0, i32 0, !dbg !5244
  store i32 3000, i32* %min_delay_ms1, align 4, !dbg !5245
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5246
  %symbol_rate2 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 10, !dbg !5247
  %6 = load i32, i32* %symbol_rate2, align 4, !dbg !5247
  %div = udiv i32 %6, 16000, !dbg !5248
  %7 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %tune.addr, align 8, !dbg !5249
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %7, i32 0, i32 1, !dbg !5250
  store i32 %div, i32* %step_size, align 4, !dbg !5251
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5252
  %symbol_rate3 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 10, !dbg !5253
  %9 = load i32, i32* %symbol_rate3, align 4, !dbg !5253
  %div4 = udiv i32 %9, 2000, !dbg !5254
  %10 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %tune.addr, align 8, !dbg !5255
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %10, i32 0, i32 2, !dbg !5256
  store i32 %div4, i32* %max_drift, align 4, !dbg !5257
  ret i32 0, !dbg !5258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %c) #0 !dbg !5259 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  store %struct.dtv_frontend_properties* %c, %struct.dtv_frontend_properties** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5264, metadata !DIExpression()), !dbg !5265
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5266
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5267
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5267
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5266
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5265
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5268
  %fec_inner = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %3, i32 0, i32 6, !dbg !5269
  %4 = load i32, i32* %fec_inner, align 4, !dbg !5269
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5270
  %fec_inner1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 5, !dbg !5271
  store i32 %4, i32* %fec_inner1, align 4, !dbg !5272
  %6 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5273
  %tuner_frequency = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %6, i32 0, i32 4, !dbg !5274
  %7 = load i32, i32* %tuner_frequency, align 4, !dbg !5274
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5275
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 0, !dbg !5276
  store i32 %7, i32* %frequency, align 4, !dbg !5277
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5278
  %symbol_rate = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %9, i32 0, i32 5, !dbg !5279
  %10 = load i32, i32* %symbol_rate, align 8, !dbg !5279
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5280
  %symbol_rate2 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 10, !dbg !5281
  store i32 %10, i32* %symbol_rate2, align 4, !dbg !5282
  ret i32 0, !dbg !5283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5284 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5289, metadata !DIExpression()), !dbg !5290
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5291
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5292
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5292
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5291
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5290
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5293, metadata !DIExpression()), !dbg !5294
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5295
  %call = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %3, i8 zeroext -116) #8, !dbg !5296
  store i8 %call, i8* %reg, align 1, !dbg !5294
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5297
  store i32 0, i32* %4, align 4, !dbg !5298
  %5 = load i8, i8* %reg, align 1, !dbg !5299
  %conv = zext i8 %5 to i32, !dbg !5299
  %and = and i32 %conv, 238, !dbg !5301
  %cmp = icmp eq i32 %and, 238, !dbg !5302
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5303

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5304
  store i32 31, i32* %6, align 4, !dbg !5306
  %7 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5307
  %config = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %7, i32 0, i32 1, !dbg !5309
  %8 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %config, align 8, !dbg !5309
  %set_ts_params = getelementptr inbounds %struct.m88rs2000_config, %struct.m88rs2000_config* %8, i32 0, i32 3, !dbg !5310
  %9 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params, align 8, !dbg !5310
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %9, null, !dbg !5307
  br i1 %tobool, label %if.then2, label %if.end, !dbg !5311

if.then2:                                         ; preds = %if.then
  %10 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5312
  %config3 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %10, i32 0, i32 1, !dbg !5313
  %11 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %config3, align 8, !dbg !5313
  %set_ts_params4 = getelementptr inbounds %struct.m88rs2000_config, %struct.m88rs2000_config* %11, i32 0, i32 3, !dbg !5314
  %12 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params4, align 8, !dbg !5314
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5315
  %call5 = call i32 %12(%struct.dvb_frontend* %13, i32 1) #8, !dbg !5312
  br label %if.end, !dbg !5312

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end6, !dbg !5316

if.end6:                                          ; preds = %if.end, %entry
  ret i32 0, !dbg !5317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5318 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  %tmp0 = alloca i8, align 1
  %tmp1 = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5323, metadata !DIExpression()), !dbg !5324
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5325
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5326
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5326
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5325
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5324
  call void @llvm.dbg.declare(metadata i8* %tmp0, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata i8* %tmp1, metadata !5329, metadata !DIExpression()), !dbg !5330
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5331
  %call = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %3, i8 zeroext -102, i8 zeroext 48) #8, !dbg !5332
  %4 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5333
  %call1 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %4, i8 zeroext -40) #8, !dbg !5334
  store i8 %call1, i8* %tmp0, align 1, !dbg !5335
  %5 = load i8, i8* %tmp0, align 1, !dbg !5336
  %conv = zext i8 %5 to i32, !dbg !5336
  %and = and i32 %conv, 16, !dbg !5338
  %cmp = icmp ne i32 %and, 0, !dbg !5339
  br i1 %cmp, label %if.then, label %if.end, !dbg !5340

if.then:                                          ; preds = %entry
  %6 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5341
  %call3 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %6, i8 zeroext -102, i8 zeroext -80) #8, !dbg !5343
  %7 = load i32*, i32** %ber.addr, align 8, !dbg !5344
  store i32 -1, i32* %7, align 4, !dbg !5345
  store i32 0, i32* %retval, align 4, !dbg !5346
  br label %return, !dbg !5346

if.end:                                           ; preds = %entry
  %8 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5347
  %call4 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %8, i8 zeroext -41) #8, !dbg !5348
  %conv5 = zext i8 %call4 to i32, !dbg !5348
  %shl = shl i32 %conv5, 8, !dbg !5349
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5350
  %call6 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %9, i8 zeroext -42) #8, !dbg !5351
  %conv7 = zext i8 %call6 to i32, !dbg !5351
  %or = or i32 %shl, %conv7, !dbg !5352
  %10 = load i32*, i32** %ber.addr, align 8, !dbg !5353
  store i32 %or, i32* %10, align 4, !dbg !5354
  %11 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5355
  %call8 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %11, i8 zeroext -39) #8, !dbg !5356
  store i8 %call8, i8* %tmp1, align 1, !dbg !5357
  %12 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5358
  %13 = load i8, i8* %tmp1, align 1, !dbg !5359
  %conv9 = zext i8 %13 to i32, !dbg !5359
  %and10 = and i32 %conv9, -8, !dbg !5360
  %or11 = or i32 %and10, 4, !dbg !5361
  %conv12 = trunc i32 %or11 to i8, !dbg !5362
  %call13 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %12, i8 zeroext -39, i8 zeroext %conv12) #8, !dbg !5363
  %14 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5364
  %15 = load i8, i8* %tmp0, align 1, !dbg !5365
  %conv14 = zext i8 %15 to i32, !dbg !5365
  %and15 = and i32 %conv14, -9, !dbg !5366
  %or16 = or i32 %and15, 48, !dbg !5367
  %conv17 = trunc i32 %or16 to i8, !dbg !5368
  %call18 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %14, i8 zeroext -40, i8 zeroext %conv17) #8, !dbg !5369
  %16 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5370
  %17 = load i8, i8* %tmp0, align 1, !dbg !5371
  %conv19 = zext i8 %17 to i32, !dbg !5371
  %and20 = and i32 %conv19, -9, !dbg !5372
  %or21 = or i32 %and20, 48, !dbg !5373
  %conv22 = trunc i32 %or21 to i8, !dbg !5374
  %call23 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %16, i8 zeroext -40, i8 zeroext %conv22) #8, !dbg !5375
  %18 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5376
  %call24 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %18, i8 zeroext -102, i8 zeroext -80) #8, !dbg !5377
  store i32 0, i32* %retval, align 4, !dbg !5378
  br label %return, !dbg !5378

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5379
  ret i32 %19, !dbg !5379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5380 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5385
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 1, !dbg !5387
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5388
  %get_rf_strength = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 13, !dbg !5389
  %1 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %get_rf_strength, align 8, !dbg !5389
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i16*)* %1, null, !dbg !5385
  br i1 %tobool, label %if.then, label %if.end, !dbg !5390

if.then:                                          ; preds = %entry
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5391
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %2, i32 0, i32 1, !dbg !5392
  %tuner_ops2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 30, !dbg !5393
  %get_rf_strength3 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops2, i32 0, i32 13, !dbg !5394
  %3 = load i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)** %get_rf_strength3, align 8, !dbg !5394
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5395
  %5 = load i16*, i16** %strength.addr, align 8, !dbg !5396
  %call = call i32 %3(%struct.dvb_frontend* %4, i16* %5) #8, !dbg !5391
  br label %if.end, !dbg !5391

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5397
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5398 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5403, metadata !DIExpression()), !dbg !5404
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5405
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5406
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5406
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5405
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5404
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5407
  %call = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %3, i8 zeroext 101) #8, !dbg !5408
  %conv = zext i8 %call to i32, !dbg !5408
  %mul = mul i32 512, %conv, !dbg !5409
  %conv1 = trunc i32 %mul to i16, !dbg !5410
  %4 = load i16*, i16** %snr.addr, align 8, !dbg !5411
  store i16 %conv1, i16* %4, align 2, !dbg !5412
  ret i32 0, !dbg !5413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5414 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  %tmp = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5419, metadata !DIExpression()), !dbg !5420
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5421
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5422
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5422
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5421
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5420
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !5423, metadata !DIExpression()), !dbg !5424
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5425
  %call = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %3, i8 zeroext -43) #8, !dbg !5426
  %conv = zext i8 %call to i32, !dbg !5426
  %shl = shl i32 %conv, 8, !dbg !5427
  %4 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5428
  %call1 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %4, i8 zeroext -44) #8, !dbg !5429
  %conv2 = zext i8 %call1 to i32, !dbg !5429
  %or = or i32 %shl, %conv2, !dbg !5430
  %5 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5431
  store i32 %or, i32* %5, align 4, !dbg !5432
  %6 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5433
  %call3 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %6, i8 zeroext -40) #8, !dbg !5434
  store i8 %call3, i8* %tmp, align 1, !dbg !5435
  %7 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5436
  %8 = load i8, i8* %tmp, align 1, !dbg !5437
  %conv4 = zext i8 %8 to i32, !dbg !5437
  %and = and i32 %conv4, -33, !dbg !5438
  %conv5 = trunc i32 %and to i8, !dbg !5437
  %call6 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %7, i8 zeroext -40, i8 zeroext %conv5) #8, !dbg !5439
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5440
  %10 = load i8, i8* %tmp, align 1, !dbg !5441
  %conv7 = zext i8 %10 to i32, !dbg !5441
  %or8 = or i32 %conv7, 32, !dbg !5442
  %conv9 = trunc i32 %or8 to i8, !dbg !5441
  %call10 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %9, i8 zeroext -40, i8 zeroext %conv9) #8, !dbg !5443
  %11 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5444
  %12 = load i8, i8* %tmp, align 1, !dbg !5445
  %conv11 = zext i8 %12 to i32, !dbg !5445
  %or12 = or i32 %conv11, 32, !dbg !5446
  %conv13 = trunc i32 %or12 to i8, !dbg !5445
  %call14 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %11, i8 zeroext -40, i8 zeroext %conv13) #8, !dbg !5447
  ret i32 0, !dbg !5448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_send_diseqc_msg(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %m) #0 !dbg !5449 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %m.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  %i = alloca i32, align 4
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store %struct.dvb_diseqc_master_cmd* %m, %struct.dvb_diseqc_master_cmd** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %m.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5456
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5457
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5457
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5456
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5455
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5458, metadata !DIExpression()), !dbg !5459
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5460, metadata !DIExpression()), !dbg !5461
  br label %do.body, !dbg !5462

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @m88rs2000_debug, align 4, !dbg !5463
  %and = and i32 1, %3, !dbg !5463
  %tobool = icmp ne i32 %and, 0, !dbg !5463
  br i1 %tobool, label %if.then, label %if.end, !dbg !5466

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.m88rs2000_send_diseqc_msg, i64 0, i64 0)) #13, !dbg !5463
  br label %if.end, !dbg !5463

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5466

do.end:                                           ; preds = %if.end
  %4 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5467
  %call1 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %4, i8 zeroext -102, i8 zeroext 48) #8, !dbg !5468
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5469
  %call2 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %5, i8 zeroext -78) #8, !dbg !5470
  store i8 %call2, i8* %reg, align 1, !dbg !5471
  %6 = load i8, i8* %reg, align 1, !dbg !5472
  %conv = zext i8 %6 to i32, !dbg !5472
  %and3 = and i32 %conv, 63, !dbg !5472
  %conv4 = trunc i32 %and3 to i8, !dbg !5472
  store i8 %conv4, i8* %reg, align 1, !dbg !5472
  %7 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5473
  %8 = load i8, i8* %reg, align 1, !dbg !5474
  %call5 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %7, i8 zeroext -78, i8 zeroext %8) #8, !dbg !5475
  store i32 0, i32* %i, align 4, !dbg !5476
  br label %for.cond, !dbg !5478

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, i32* %i, align 4, !dbg !5479
  %10 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %m.addr, align 8, !dbg !5481
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %10, i32 0, i32 1, !dbg !5482
  %11 = load i8, i8* %msg_len, align 1, !dbg !5482
  %conv6 = zext i8 %11 to i32, !dbg !5481
  %cmp = icmp slt i32 %9, %conv6, !dbg !5483
  br i1 %cmp, label %for.body, label %for.end, !dbg !5484

for.body:                                         ; preds = %for.cond
  %12 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5485
  %13 = load i32, i32* %i, align 4, !dbg !5486
  %add = add i32 179, %13, !dbg !5487
  %conv8 = trunc i32 %add to i8, !dbg !5488
  %14 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %m.addr, align 8, !dbg !5489
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %14, i32 0, i32 0, !dbg !5490
  %15 = load i32, i32* %i, align 4, !dbg !5491
  %idxprom = sext i32 %15 to i64, !dbg !5489
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %msg, i64 0, i64 %idxprom, !dbg !5489
  %16 = load i8, i8* %arrayidx, align 1, !dbg !5489
  %call9 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %12, i8 zeroext %conv8, i8 zeroext %16) #8, !dbg !5492
  br label %for.inc, !dbg !5492

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !5493
  %inc = add i32 %17, 1, !dbg !5493
  store i32 %inc, i32* %i, align 4, !dbg !5493
  br label %for.cond, !dbg !5494, !llvm.loop !5495

for.end:                                          ; preds = %for.cond
  %18 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5497
  %call10 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %18, i8 zeroext -79) #8, !dbg !5498
  store i8 %call10, i8* %reg, align 1, !dbg !5499
  %19 = load i8, i8* %reg, align 1, !dbg !5500
  %conv11 = zext i8 %19 to i32, !dbg !5500
  %and12 = and i32 %conv11, 135, !dbg !5500
  %conv13 = trunc i32 %and12 to i8, !dbg !5500
  store i8 %conv13, i8* %reg, align 1, !dbg !5500
  %20 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %m.addr, align 8, !dbg !5501
  %msg_len14 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %20, i32 0, i32 1, !dbg !5502
  %21 = load i8, i8* %msg_len14, align 1, !dbg !5502
  %conv15 = zext i8 %21 to i32, !dbg !5501
  %sub = sub i32 %conv15, 1, !dbg !5503
  %shl = shl i32 %sub, 3, !dbg !5504
  %or = or i32 %shl, 7, !dbg !5505
  %22 = load i8, i8* %reg, align 1, !dbg !5506
  %conv16 = zext i8 %22 to i32, !dbg !5506
  %or17 = or i32 %conv16, %or, !dbg !5506
  %conv18 = trunc i32 %or17 to i8, !dbg !5506
  store i8 %conv18, i8* %reg, align 1, !dbg !5506
  %23 = load i8, i8* %reg, align 1, !dbg !5507
  %conv19 = zext i8 %23 to i32, !dbg !5507
  %and20 = and i32 %conv19, 127, !dbg !5507
  %conv21 = trunc i32 %and20 to i8, !dbg !5507
  store i8 %conv21, i8* %reg, align 1, !dbg !5507
  %24 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5508
  %25 = load i8, i8* %reg, align 1, !dbg !5509
  %call22 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %24, i8 zeroext -79, i8 zeroext %25) #8, !dbg !5510
  store i32 0, i32* %i, align 4, !dbg !5511
  br label %for.cond23, !dbg !5513

for.cond23:                                       ; preds = %for.inc34, %for.end
  %26 = load i32, i32* %i, align 4, !dbg !5514
  %cmp24 = icmp slt i32 %26, 15, !dbg !5516
  br i1 %cmp24, label %for.body26, label %for.end36, !dbg !5517

for.body26:                                       ; preds = %for.cond23
  %27 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5518
  %call27 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %27, i8 zeroext -79) #8, !dbg !5521
  %conv28 = zext i8 %call27 to i32, !dbg !5521
  %and29 = and i32 %conv28, 64, !dbg !5522
  %cmp30 = icmp eq i32 %and29, 0, !dbg !5523
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5524

if.then32:                                        ; preds = %for.body26
  br label %for.end36, !dbg !5525

if.end33:                                         ; preds = %for.body26
  call void @msleep(i32 20) #8, !dbg !5526
  br label %for.inc34, !dbg !5527

for.inc34:                                        ; preds = %if.end33
  %28 = load i32, i32* %i, align 4, !dbg !5528
  %inc35 = add i32 %28, 1, !dbg !5528
  store i32 %inc35, i32* %i, align 4, !dbg !5528
  br label %for.cond23, !dbg !5529, !llvm.loop !5530

for.end36:                                        ; preds = %if.then32, %for.cond23
  %29 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5532
  %call37 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %29, i8 zeroext -79) #8, !dbg !5533
  store i8 %call37, i8* %reg, align 1, !dbg !5534
  %30 = load i8, i8* %reg, align 1, !dbg !5535
  %conv38 = zext i8 %30 to i32, !dbg !5535
  %and39 = and i32 %conv38, 64, !dbg !5537
  %cmp40 = icmp sgt i32 %and39, 0, !dbg !5538
  br i1 %cmp40, label %if.then42, label %if.end50, !dbg !5539

if.then42:                                        ; preds = %for.end36
  %31 = load i8, i8* %reg, align 1, !dbg !5540
  %conv43 = zext i8 %31 to i32, !dbg !5540
  %and44 = and i32 %conv43, 127, !dbg !5540
  %conv45 = trunc i32 %and44 to i8, !dbg !5540
  store i8 %conv45, i8* %reg, align 1, !dbg !5540
  %32 = load i8, i8* %reg, align 1, !dbg !5542
  %conv46 = zext i8 %32 to i32, !dbg !5542
  %or47 = or i32 %conv46, 64, !dbg !5542
  %conv48 = trunc i32 %or47 to i8, !dbg !5542
  store i8 %conv48, i8* %reg, align 1, !dbg !5542
  %33 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5543
  %34 = load i8, i8* %reg, align 1, !dbg !5544
  %call49 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %33, i8 zeroext -79, i8 zeroext %34) #8, !dbg !5545
  br label %if.end50, !dbg !5546

if.end50:                                         ; preds = %if.then42, %for.end36
  %35 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5547
  %call51 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %35, i8 zeroext -78) #8, !dbg !5548
  store i8 %call51, i8* %reg, align 1, !dbg !5549
  %36 = load i8, i8* %reg, align 1, !dbg !5550
  %conv52 = zext i8 %36 to i32, !dbg !5550
  %and53 = and i32 %conv52, 63, !dbg !5550
  %conv54 = trunc i32 %and53 to i8, !dbg !5550
  store i8 %conv54, i8* %reg, align 1, !dbg !5550
  %37 = load i8, i8* %reg, align 1, !dbg !5551
  %conv55 = zext i8 %37 to i32, !dbg !5551
  %or56 = or i32 %conv55, 128, !dbg !5551
  %conv57 = trunc i32 %or56 to i8, !dbg !5551
  store i8 %conv57, i8* %reg, align 1, !dbg !5551
  %38 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5552
  %39 = load i8, i8* %reg, align 1, !dbg !5553
  %call58 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %38, i8 zeroext -78, i8 zeroext %39) #8, !dbg !5554
  %40 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5555
  %call59 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %40, i8 zeroext -102, i8 zeroext -80) #8, !dbg !5556
  ret i32 0, !dbg !5557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_send_diseqc_burst(%struct.dvb_frontend* %fe, i32 %burst) #0 !dbg !5558 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %burst.addr = alloca i32, align 4
  %state = alloca %struct.m88rs2000_state*, align 8
  %reg0 = alloca i8, align 1
  %reg1 = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  store i32 %burst, i32* %burst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %burst.addr, metadata !5561, metadata !DIExpression()), !dbg !5562
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5563, metadata !DIExpression()), !dbg !5564
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5565
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5566
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5566
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5565
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5564
  call void @llvm.dbg.declare(metadata i8* %reg0, metadata !5567, metadata !DIExpression()), !dbg !5568
  call void @llvm.dbg.declare(metadata i8* %reg1, metadata !5569, metadata !DIExpression()), !dbg !5570
  br label %do.body, !dbg !5571

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @m88rs2000_debug, align 4, !dbg !5572
  %and = and i32 1, %3, !dbg !5572
  %tobool = icmp ne i32 %and, 0, !dbg !5572
  br i1 %tobool, label %if.then, label %if.end, !dbg !5575

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.m88rs2000_send_diseqc_burst, i64 0, i64 0)) #13, !dbg !5572
  br label %if.end, !dbg !5572

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5575

do.end:                                           ; preds = %if.end
  %4 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5576
  %call1 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %4, i8 zeroext -102, i8 zeroext 48) #8, !dbg !5577
  call void @msleep(i32 50) #8, !dbg !5578
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5579
  %call2 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %5, i8 zeroext -79) #8, !dbg !5580
  store i8 %call2, i8* %reg0, align 1, !dbg !5581
  %6 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5582
  %call3 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %6, i8 zeroext -78) #8, !dbg !5583
  store i8 %call3, i8* %reg1, align 1, !dbg !5584
  %7 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5585
  %8 = load i8, i8* %reg1, align 1, !dbg !5586
  %call4 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %7, i8 zeroext -78, i8 zeroext %8) #8, !dbg !5587
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5588
  %10 = load i8, i8* %reg0, align 1, !dbg !5589
  %call5 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %9, i8 zeroext -79, i8 zeroext %10) #8, !dbg !5590
  %11 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5591
  %call6 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %11, i8 zeroext -102, i8 zeroext -80) #8, !dbg !5592
  ret i32 0, !dbg !5593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_set_tone(%struct.dvb_frontend* %fe, i32 %tone) #0 !dbg !5594 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tone.addr = alloca i32, align 4
  %state = alloca %struct.m88rs2000_state*, align 8
  %reg0 = alloca i8, align 1
  %reg1 = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  store i32 %tone, i32* %tone.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tone.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5599, metadata !DIExpression()), !dbg !5600
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5601
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5602
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5602
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5601
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5600
  call void @llvm.dbg.declare(metadata i8* %reg0, metadata !5603, metadata !DIExpression()), !dbg !5604
  call void @llvm.dbg.declare(metadata i8* %reg1, metadata !5605, metadata !DIExpression()), !dbg !5606
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5607
  %call = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %3, i8 zeroext -102, i8 zeroext 48) #8, !dbg !5608
  %4 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5609
  %call1 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %4, i8 zeroext -79) #8, !dbg !5610
  store i8 %call1, i8* %reg0, align 1, !dbg !5611
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5612
  %call2 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %5, i8 zeroext -78) #8, !dbg !5613
  store i8 %call2, i8* %reg1, align 1, !dbg !5614
  %6 = load i8, i8* %reg1, align 1, !dbg !5615
  %conv = zext i8 %6 to i32, !dbg !5615
  %and = and i32 %conv, 63, !dbg !5615
  %conv3 = trunc i32 %and to i8, !dbg !5615
  store i8 %conv3, i8* %reg1, align 1, !dbg !5615
  %7 = load i32, i32* %tone.addr, align 4, !dbg !5616
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ], !dbg !5617

sw.bb:                                            ; preds = %entry
  %8 = load i8, i8* %reg0, align 1, !dbg !5618
  %conv4 = zext i8 %8 to i32, !dbg !5618
  %or = or i32 %conv4, 4, !dbg !5618
  %conv5 = trunc i32 %or to i8, !dbg !5618
  store i8 %conv5, i8* %reg0, align 1, !dbg !5618
  %9 = load i8, i8* %reg0, align 1, !dbg !5620
  %conv6 = zext i8 %9 to i32, !dbg !5620
  %and7 = and i32 %conv6, 188, !dbg !5620
  %conv8 = trunc i32 %and7 to i8, !dbg !5620
  store i8 %conv8, i8* %reg0, align 1, !dbg !5620
  br label %sw.epilog, !dbg !5621

sw.bb9:                                           ; preds = %entry
  %10 = load i8, i8* %reg1, align 1, !dbg !5622
  %conv10 = zext i8 %10 to i32, !dbg !5622
  %or11 = or i32 %conv10, 128, !dbg !5622
  %conv12 = trunc i32 %or11 to i8, !dbg !5622
  store i8 %conv12, i8* %reg1, align 1, !dbg !5622
  br label %sw.epilog, !dbg !5623

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !5624

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  %11 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5625
  %12 = load i8, i8* %reg1, align 1, !dbg !5626
  %call13 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %11, i8 zeroext -78, i8 zeroext %12) #8, !dbg !5627
  %13 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5628
  %14 = load i8, i8* %reg0, align 1, !dbg !5629
  %call14 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %13, i8 zeroext -79, i8 zeroext %14) #8, !dbg !5630
  %15 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5631
  %call15 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %15, i8 zeroext -102, i8 zeroext -80) #8, !dbg !5632
  ret i32 0, !dbg !5633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_set_voltage(%struct.dvb_frontend* %fe, i32 %volt) #0 !dbg !5634 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %volt.addr = alloca i32, align 4
  %state = alloca %struct.m88rs2000_state*, align 8
  %data = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  store i32 %volt, i32* %volt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %volt.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5639, metadata !DIExpression()), !dbg !5640
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5641
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5642
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5642
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5641
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5640
  call void @llvm.dbg.declare(metadata i8* %data, metadata !5643, metadata !DIExpression()), !dbg !5644
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5645
  %call = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %3, i8 zeroext -78) #8, !dbg !5646
  store i8 %call, i8* %data, align 1, !dbg !5647
  %4 = load i8, i8* %data, align 1, !dbg !5648
  %conv = zext i8 %4 to i32, !dbg !5648
  %or = or i32 %conv, 3, !dbg !5648
  %conv1 = trunc i32 %or to i8, !dbg !5648
  store i8 %conv1, i8* %data, align 1, !dbg !5648
  %5 = load i32, i32* %volt.addr, align 4, !dbg !5649
  switch i32 %5, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
    i32 2, label %sw.bb11
  ], !dbg !5650

sw.bb:                                            ; preds = %entry
  %6 = load i8, i8* %data, align 1, !dbg !5651
  %conv2 = zext i8 %6 to i32, !dbg !5651
  %and = and i32 %conv2, -4, !dbg !5651
  %conv3 = trunc i32 %and to i8, !dbg !5651
  store i8 %conv3, i8* %data, align 1, !dbg !5651
  br label %sw.epilog, !dbg !5653

sw.bb4:                                           ; preds = %entry
  %7 = load i8, i8* %data, align 1, !dbg !5654
  %conv5 = zext i8 %7 to i32, !dbg !5654
  %and6 = and i32 %conv5, -4, !dbg !5654
  %conv7 = trunc i32 %and6 to i8, !dbg !5654
  store i8 %conv7, i8* %data, align 1, !dbg !5654
  %8 = load i8, i8* %data, align 1, !dbg !5655
  %conv8 = zext i8 %8 to i32, !dbg !5655
  %or9 = or i32 %conv8, 1, !dbg !5655
  %conv10 = trunc i32 %or9 to i8, !dbg !5655
  store i8 %conv10, i8* %data, align 1, !dbg !5655
  br label %sw.epilog, !dbg !5656

sw.bb11:                                          ; preds = %entry
  br label %sw.epilog, !dbg !5657

sw.epilog:                                        ; preds = %entry, %sw.bb11, %sw.bb4, %sw.bb
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5658
  %10 = load i8, i8* %data, align 1, !dbg !5659
  %call12 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %9, i8 zeroext -78, i8 zeroext %10) #8, !dbg !5660
  ret i32 0, !dbg !5661
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5662 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.m88rs2000_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5663, metadata !DIExpression()), !dbg !5664
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5667, metadata !DIExpression()), !dbg !5668
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5669
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5670
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5670
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5669
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5668
  %3 = load i32, i32* %enable.addr, align 4, !dbg !5671
  %tobool = icmp ne i32 %3, 0, !dbg !5671
  br i1 %tobool, label %if.then, label %if.else, !dbg !5673

if.then:                                          ; preds = %entry
  %4 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5674
  %call = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %4, i8 zeroext -127, i8 zeroext -124) #8, !dbg !5675
  br label %if.end, !dbg !5675

if.else:                                          ; preds = %entry
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5676
  %call1 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %5, i8 zeroext -127, i8 zeroext -127) #8, !dbg !5677
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__const_udelay(i64 42950) #8, !dbg !5678
  ret i32 0, !dbg !5683
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_tab_set(%struct.m88rs2000_state* %state, %struct.inittab* %tab) #0 !dbg !5684 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.m88rs2000_state*, align 8
  %tab.addr = alloca %struct.inittab*, align 8
  %ret = alloca i32, align 4
  %i = alloca i8, align 1
  %__ms = alloca i64, align 8
  store %struct.m88rs2000_state* %state, %struct.m88rs2000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state.addr, metadata !5687, metadata !DIExpression()), !dbg !5688
  store %struct.inittab* %tab, %struct.inittab** %tab.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inittab** %tab.addr, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5691, metadata !DIExpression()), !dbg !5692
  store i32 0, i32* %ret, align 4, !dbg !5692
  call void @llvm.dbg.declare(metadata i8* %i, metadata !5693, metadata !DIExpression()), !dbg !5694
  %0 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5695
  %cmp = icmp eq %struct.inittab* %0, null, !dbg !5697
  br i1 %cmp, label %if.then, label %if.end, !dbg !5698

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5699
  br label %return, !dbg !5699

if.end:                                           ; preds = %entry
  store i8 0, i8* %i, align 1, !dbg !5700
  br label %for.cond, !dbg !5702

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i8, i8* %i, align 1, !dbg !5703
  %conv = zext i8 %1 to i32, !dbg !5703
  %cmp1 = icmp slt i32 %conv, 255, !dbg !5705
  br i1 %cmp1, label %for.body, label %for.end, !dbg !5706

for.body:                                         ; preds = %for.cond
  %2 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5707
  %3 = load i8, i8* %i, align 1, !dbg !5709
  %idxprom = zext i8 %3 to i64, !dbg !5707
  %arrayidx = getelementptr %struct.inittab, %struct.inittab* %2, i64 %idxprom, !dbg !5707
  %cmd = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx, i32 0, i32 0, !dbg !5710
  %4 = load i8, i8* %cmd, align 1, !dbg !5710
  %conv3 = zext i8 %4 to i32, !dbg !5707
  switch i32 %conv3, label %sw.default [
    i32 1, label %sw.bb
    i32 16, label %sw.bb8
    i32 255, label %sw.bb59
    i32 0, label %sw.bb75
  ], !dbg !5711

sw.bb:                                            ; preds = %for.body
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !5712
  %6 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5714
  %7 = load i8, i8* %i, align 1, !dbg !5715
  %idxprom4 = zext i8 %7 to i64, !dbg !5714
  %arrayidx5 = getelementptr %struct.inittab, %struct.inittab* %6, i64 %idxprom4, !dbg !5714
  %reg = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx5, i32 0, i32 1, !dbg !5716
  %8 = load i8, i8* %reg, align 1, !dbg !5716
  %9 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5717
  %10 = load i8, i8* %i, align 1, !dbg !5718
  %idxprom6 = zext i8 %10 to i64, !dbg !5717
  %arrayidx7 = getelementptr %struct.inittab, %struct.inittab* %9, i64 %idxprom6, !dbg !5717
  %val = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx7, i32 0, i32 2, !dbg !5719
  %11 = load i8, i8* %val, align 1, !dbg !5719
  %call = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %5, i8 zeroext %8, i8 zeroext %11) #8, !dbg !5720
  store i32 %call, i32* %ret, align 4, !dbg !5721
  br label %sw.epilog, !dbg !5722

sw.bb8:                                           ; preds = %for.body
  %12 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5723
  %13 = load i8, i8* %i, align 1, !dbg !5725
  %idxprom9 = zext i8 %13 to i64, !dbg !5723
  %arrayidx10 = getelementptr %struct.inittab, %struct.inittab* %12, i64 %idxprom9, !dbg !5723
  %reg11 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx10, i32 0, i32 1, !dbg !5726
  %14 = load i8, i8* %reg11, align 1, !dbg !5726
  %conv12 = zext i8 %14 to i32, !dbg !5723
  %cmp13 = icmp sgt i32 %conv12, 0, !dbg !5727
  br i1 %cmp13, label %if.then15, label %if.end58, !dbg !5728

if.then15:                                        ; preds = %sw.bb8
  %15 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5729
  %16 = load i8, i8* %i, align 1, !dbg !5729
  %idxprom16 = zext i8 %16 to i64, !dbg !5729
  %arrayidx17 = getelementptr %struct.inittab, %struct.inittab* %15, i64 %idxprom16, !dbg !5729
  %reg18 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx17, i32 0, i32 1, !dbg !5729
  %17 = load i8, i8* %reg18, align 1, !dbg !5729
  %18 = call i1 @llvm.is.constant.i8(i8 %17), !dbg !5729
  br i1 %18, label %land.lhs.true, label %cond.false, !dbg !5729

land.lhs.true:                                    ; preds = %if.then15
  %19 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5729
  %20 = load i8, i8* %i, align 1, !dbg !5729
  %idxprom19 = zext i8 %20 to i64, !dbg !5729
  %arrayidx20 = getelementptr %struct.inittab, %struct.inittab* %19, i64 %idxprom19, !dbg !5729
  %reg21 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx20, i32 0, i32 1, !dbg !5729
  %21 = load i8, i8* %reg21, align 1, !dbg !5729
  %conv22 = zext i8 %21 to i32, !dbg !5729
  %cmp23 = icmp sle i32 %conv22, 5, !dbg !5729
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !5729

cond.true:                                        ; preds = %land.lhs.true
  %22 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5730
  %23 = load i8, i8* %i, align 1, !dbg !5730
  %idxprom25 = zext i8 %23 to i64, !dbg !5730
  %arrayidx26 = getelementptr %struct.inittab, %struct.inittab* %22, i64 %idxprom25, !dbg !5730
  %reg27 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx26, i32 0, i32 1, !dbg !5730
  %24 = load i8, i8* %reg27, align 1, !dbg !5730
  %conv28 = zext i8 %24 to i32, !dbg !5730
  %mul = mul i32 %conv28, 1000, !dbg !5730
  %25 = call i1 @llvm.is.constant.i32(i32 %mul), !dbg !5730
  br i1 %25, label %if.then29, label %if.else46, !dbg !5733

if.then29:                                        ; preds = %cond.true
  %26 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5734
  %27 = load i8, i8* %i, align 1, !dbg !5734
  %idxprom30 = zext i8 %27 to i64, !dbg !5734
  %arrayidx31 = getelementptr %struct.inittab, %struct.inittab* %26, i64 %idxprom30, !dbg !5734
  %reg32 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx31, i32 0, i32 1, !dbg !5734
  %28 = load i8, i8* %reg32, align 1, !dbg !5734
  %conv33 = zext i8 %28 to i32, !dbg !5734
  %mul34 = mul i32 %conv33, 1000, !dbg !5734
  %div = sdiv i32 %mul34, 20000, !dbg !5734
  %cmp35 = icmp sge i32 %div, 1, !dbg !5734
  br i1 %cmp35, label %if.then37, label %if.else, !dbg !5737

if.then37:                                        ; preds = %if.then29
  call void @__bad_udelay() #8, !dbg !5734
  br label %if.end45, !dbg !5734

if.else:                                          ; preds = %if.then29
  %29 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5734
  %30 = load i8, i8* %i, align 1, !dbg !5734
  %idxprom38 = zext i8 %30 to i64, !dbg !5734
  %arrayidx39 = getelementptr %struct.inittab, %struct.inittab* %29, i64 %idxprom38, !dbg !5734
  %reg40 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx39, i32 0, i32 1, !dbg !5734
  %31 = load i8, i8* %reg40, align 1, !dbg !5734
  %conv41 = zext i8 %31 to i32, !dbg !5734
  %mul42 = mul i32 %conv41, 1000, !dbg !5734
  %conv43 = sext i32 %mul42 to i64, !dbg !5734
  %mul44 = mul i64 %conv43, 4295, !dbg !5734
  call void @__const_udelay(i64 %mul44) #8, !dbg !5734
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then37
  br label %if.end53, !dbg !5737

if.else46:                                        ; preds = %cond.true
  %32 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5738
  %33 = load i8, i8* %i, align 1, !dbg !5738
  %idxprom47 = zext i8 %33 to i64, !dbg !5738
  %arrayidx48 = getelementptr %struct.inittab, %struct.inittab* %32, i64 %idxprom47, !dbg !5738
  %reg49 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx48, i32 0, i32 1, !dbg !5738
  %34 = load i8, i8* %reg49, align 1, !dbg !5738
  %conv50 = zext i8 %34 to i32, !dbg !5738
  %mul51 = mul i32 %conv50, 1000, !dbg !5738
  %conv52 = sext i32 %mul51 to i64, !dbg !5738
  call void @__udelay(i64 %conv52) #8, !dbg !5738
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.end45
  br label %cond.end, !dbg !5729

cond.false:                                       ; preds = %land.lhs.true, %if.then15
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !5740, metadata !DIExpression()), !dbg !5742
  %35 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5742
  %36 = load i8, i8* %i, align 1, !dbg !5742
  %idxprom54 = zext i8 %36 to i64, !dbg !5742
  %arrayidx55 = getelementptr %struct.inittab, %struct.inittab* %35, i64 %idxprom54, !dbg !5742
  %reg56 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx55, i32 0, i32 1, !dbg !5742
  %37 = load i8, i8* %reg56, align 1, !dbg !5742
  %conv57 = zext i8 %37 to i64, !dbg !5742
  store i64 %conv57, i64* %__ms, align 8, !dbg !5742
  br label %while.cond, !dbg !5742

while.cond:                                       ; preds = %while.body, %cond.false
  %38 = load i64, i64* %__ms, align 8, !dbg !5742
  %dec = add i64 %38, -1, !dbg !5742
  store i64 %dec, i64* %__ms, align 8, !dbg !5742
  %tobool = icmp ne i64 %38, 0, !dbg !5742
  br i1 %tobool, label %while.body, label %while.end, !dbg !5742

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #8, !dbg !5743
  br label %while.cond, !dbg !5742, !llvm.loop !5748

while.end:                                        ; preds = %while.cond
  br label %cond.end, !dbg !5729

cond.end:                                         ; preds = %while.end, %if.end53
  br label %if.end58, !dbg !5729

if.end58:                                         ; preds = %cond.end, %sw.bb8
  br label %sw.epilog, !dbg !5749

sw.bb59:                                          ; preds = %for.body
  %39 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5750
  %40 = load i8, i8* %i, align 1, !dbg !5752
  %idxprom60 = zext i8 %40 to i64, !dbg !5750
  %arrayidx61 = getelementptr %struct.inittab, %struct.inittab* %39, i64 %idxprom60, !dbg !5750
  %reg62 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx61, i32 0, i32 1, !dbg !5753
  %41 = load i8, i8* %reg62, align 1, !dbg !5753
  %conv63 = zext i8 %41 to i32, !dbg !5750
  %cmp64 = icmp eq i32 %conv63, 170, !dbg !5754
  br i1 %cmp64, label %land.lhs.true66, label %if.end74, !dbg !5755

land.lhs.true66:                                  ; preds = %sw.bb59
  %42 = load %struct.inittab*, %struct.inittab** %tab.addr, align 8, !dbg !5756
  %43 = load i8, i8* %i, align 1, !dbg !5757
  %idxprom67 = zext i8 %43 to i64, !dbg !5756
  %arrayidx68 = getelementptr %struct.inittab, %struct.inittab* %42, i64 %idxprom67, !dbg !5756
  %val69 = getelementptr inbounds %struct.inittab, %struct.inittab* %arrayidx68, i32 0, i32 2, !dbg !5758
  %44 = load i8, i8* %val69, align 1, !dbg !5758
  %conv70 = zext i8 %44 to i32, !dbg !5756
  %cmp71 = icmp eq i32 %conv70, 255, !dbg !5759
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !5760

if.then73:                                        ; preds = %land.lhs.true66
  store i32 0, i32* %retval, align 4, !dbg !5761
  br label %return, !dbg !5761

if.end74:                                         ; preds = %land.lhs.true66, %sw.bb59
  br label %sw.bb75, !dbg !5762

sw.bb75:                                          ; preds = %for.body, %if.end74
  br label %sw.epilog, !dbg !5763

sw.default:                                       ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

sw.epilog:                                        ; preds = %sw.bb75, %if.end58, %sw.bb
  %45 = load i32, i32* %ret, align 4, !dbg !5765
  %cmp76 = icmp slt i32 %45, 0, !dbg !5767
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !5768

if.then78:                                        ; preds = %sw.epilog
  store i32 -19, i32* %retval, align 4, !dbg !5769
  br label %return, !dbg !5769

if.end79:                                         ; preds = %sw.epilog
  br label %for.inc, !dbg !5770

for.inc:                                          ; preds = %if.end79
  %46 = load i8, i8* %i, align 1, !dbg !5771
  %inc = add i8 %46, 1, !dbg !5771
  store i8 %inc, i8* %i, align 1, !dbg !5771
  br label %for.cond, !dbg !5772, !llvm.loop !5773

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5775
  br label %return, !dbg !5775

return:                                           ; preds = %for.end, %if.then78, %sw.default, %if.then73, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !5776
  ret i32 %47, !dbg !5776
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_writereg(%struct.m88rs2000_state* %state, i8 zeroext %reg, i8 zeroext %data) #0 !dbg !5777 {
entry:
  %state.addr = alloca %struct.m88rs2000_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.m88rs2000_state* %state, %struct.m88rs2000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5786, metadata !DIExpression()), !dbg !5787
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5788, metadata !DIExpression()), !dbg !5790
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5791
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5792
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !5791
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5791
  %1 = load i8, i8* %data.addr, align 1, !dbg !5793
  store i8 %1, i8* %arrayinit.element, align 1, !dbg !5791
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5794, metadata !DIExpression()), !dbg !5795
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5796
  %2 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !5797
  %config = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %2, i32 0, i32 1, !dbg !5798
  %3 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %config, align 8, !dbg !5798
  %demod_addr = getelementptr inbounds %struct.m88rs2000_config, %struct.m88rs2000_config* %3, i32 0, i32 0, !dbg !5799
  %4 = load i8, i8* %demod_addr, align 8, !dbg !5799
  %conv = zext i8 %4 to i16, !dbg !5797
  store i16 %conv, i16* %addr, align 8, !dbg !5796
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5796
  store i16 0, i16* %flags, align 2, !dbg !5796
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5796
  store i16 2, i16* %len, align 4, !dbg !5796
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5796
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5800
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !5796
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !5801
  %i2c = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %5, i32 0, i32 0, !dbg !5802
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5802
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5803
  store i32 %call, i32* %ret, align 4, !dbg !5804
  %7 = load i32, i32* %ret, align 4, !dbg !5805
  %cmp = icmp ne i32 %7, 1, !dbg !5807
  br i1 %cmp, label %if.then, label %if.end7, !dbg !5808

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5809

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* @m88rs2000_debug, align 4, !dbg !5810
  %and = and i32 1, %8, !dbg !5810
  %tobool = icmp ne i32 %and, 0, !dbg !5810
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5813

if.then3:                                         ; preds = %do.body
  %9 = load i8, i8* %reg.addr, align 1, !dbg !5810
  %conv4 = zext i8 %9 to i32, !dbg !5810
  %10 = load i8, i8* %data.addr, align 1, !dbg !5810
  %conv5 = zext i8 %10 to i32, !dbg !5810
  %11 = load i32, i32* %ret, align 4, !dbg !5810
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.m88rs2000_writereg, i64 0, i64 0), i32 %conv4, i32 %conv5, i32 %11) #13, !dbg !5810
  br label %if.end, !dbg !5810

if.end:                                           ; preds = %if.then3, %do.body
  br label %do.end, !dbg !5813

do.end:                                           ; preds = %if.end
  br label %if.end7, !dbg !5813

if.end7:                                          ; preds = %do.end, %entry
  %12 = load i32, i32* %ret, align 4, !dbg !5814
  %cmp8 = icmp ne i32 %12, 1, !dbg !5815
  %13 = zext i1 %cmp8 to i64, !dbg !5816
  %cond = select i1 %cmp8, i32 -121, i32 0, !dbg !5816
  ret i32 %cond, !dbg !5817
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i8(i8) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #3

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #3

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_set_carrieroffset(%struct.dvb_frontend* %fe, i16 signext %offset) #0 !dbg !5818 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %offset.addr = alloca i16, align 2
  %state = alloca %struct.m88rs2000_state*, align 8
  %mclk = alloca i32, align 4
  %tmp = alloca i32, align 4
  %reg = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5825, metadata !DIExpression()), !dbg !5826
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5827
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5828
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5828
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5827
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5826
  call void @llvm.dbg.declare(metadata i32* %mclk, metadata !5829, metadata !DIExpression()), !dbg !5830
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5831, metadata !DIExpression()), !dbg !5832
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5833, metadata !DIExpression()), !dbg !5834
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5835, metadata !DIExpression()), !dbg !5836
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5837
  %call = call i32 @m88rs2000_get_mclk(%struct.dvb_frontend* %3) #8, !dbg !5838
  store i32 %call, i32* %mclk, align 4, !dbg !5839
  %4 = load i32, i32* %mclk, align 4, !dbg !5840
  %tobool = icmp ne i32 %4, 0, !dbg !5840
  br i1 %tobool, label %if.end, label %if.then, !dbg !5842

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5843
  br label %return, !dbg !5843

if.end:                                           ; preds = %entry
  %5 = load i16, i16* %offset.addr, align 2, !dbg !5844
  %conv = sext i16 %5 to i32, !dbg !5844
  %mul = mul i32 %conv, 4096, !dbg !5845
  %6 = load i32, i32* %mclk, align 4, !dbg !5846
  %div = sdiv i32 %6, 2, !dbg !5847
  %add = add i32 %mul, %div, !dbg !5848
  %7 = load i32, i32* %mclk, align 4, !dbg !5849
  %div1 = sdiv i32 %add, %7, !dbg !5850
  store i32 %div1, i32* %tmp, align 4, !dbg !5851
  %8 = load i32, i32* %tmp, align 4, !dbg !5852
  %cmp = icmp slt i32 %8, 0, !dbg !5854
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !5855

if.then3:                                         ; preds = %if.end
  %9 = load i32, i32* %tmp, align 4, !dbg !5856
  %add4 = add i32 %9, 4096, !dbg !5856
  store i32 %add4, i32* %tmp, align 4, !dbg !5856
  br label %if.end5, !dbg !5857

if.end5:                                          ; preds = %if.then3, %if.end
  %10 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5858
  %11 = load i32, i32* %tmp, align 4, !dbg !5859
  %shr = ashr i32 %11, 4, !dbg !5860
  %conv6 = trunc i32 %shr to i8, !dbg !5861
  %call7 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %10, i8 zeroext -100, i8 zeroext %conv6) #8, !dbg !5862
  store i32 %call7, i32* %ret, align 4, !dbg !5863
  %12 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5864
  %call8 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %12, i8 zeroext -99) #8, !dbg !5865
  store i8 %call8, i8* %reg, align 1, !dbg !5866
  %13 = load i8, i8* %reg, align 1, !dbg !5867
  %conv9 = zext i8 %13 to i32, !dbg !5867
  %and = and i32 %conv9, 15, !dbg !5867
  %conv10 = trunc i32 %and to i8, !dbg !5867
  store i8 %conv10, i8* %reg, align 1, !dbg !5867
  %14 = load i32, i32* %tmp, align 4, !dbg !5868
  %and11 = and i32 %14, 15, !dbg !5869
  %conv12 = trunc i32 %and11 to i8, !dbg !5870
  %conv13 = zext i8 %conv12 to i32, !dbg !5870
  %shl = shl i32 %conv13, 4, !dbg !5871
  %15 = load i8, i8* %reg, align 1, !dbg !5872
  %conv14 = zext i8 %15 to i32, !dbg !5872
  %or = or i32 %conv14, %shl, !dbg !5872
  %conv15 = trunc i32 %or to i8, !dbg !5872
  store i8 %conv15, i8* %reg, align 1, !dbg !5872
  %16 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5873
  %17 = load i8, i8* %reg, align 1, !dbg !5874
  %call16 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %16, i8 zeroext -99, i8 zeroext %17) #8, !dbg !5875
  %18 = load i32, i32* %ret, align 4, !dbg !5876
  %or17 = or i32 %18, %call16, !dbg !5876
  store i32 %or17, i32* %ret, align 4, !dbg !5876
  %19 = load i32, i32* %ret, align 4, !dbg !5877
  store i32 %19, i32* %retval, align 4, !dbg !5878
  br label %return, !dbg !5878

return:                                           ; preds = %if.end5, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5879
  ret i32 %20, !dbg !5879
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_set_fec(%struct.m88rs2000_state* %state, i32 %fec) #0 !dbg !5880 {
entry:
  %state.addr = alloca %struct.m88rs2000_state*, align 8
  %fec.addr = alloca i32, align 4
  %fec_set = alloca i8, align 1
  %reg = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.m88rs2000_state* %state, %struct.m88rs2000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  store i32 %fec, i32* %fec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fec.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  call void @llvm.dbg.declare(metadata i8* %fec_set, metadata !5887, metadata !DIExpression()), !dbg !5888
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5889, metadata !DIExpression()), !dbg !5890
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5891, metadata !DIExpression()), !dbg !5892
  %0 = load i32, i32* %fec.addr, align 4, !dbg !5893
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 5, label %sw.bb3
    i32 7, label %sw.bb4
    i32 9, label %sw.bb5
  ], !dbg !5894

sw.bb:                                            ; preds = %entry
  store i8 8, i8* %fec_set, align 1, !dbg !5895
  br label %sw.epilog, !dbg !5897

sw.bb1:                                           ; preds = %entry
  store i8 16, i8* %fec_set, align 1, !dbg !5898
  br label %sw.epilog, !dbg !5899

sw.bb2:                                           ; preds = %entry
  store i8 32, i8* %fec_set, align 1, !dbg !5900
  br label %sw.epilog, !dbg !5901

sw.bb3:                                           ; preds = %entry
  store i8 64, i8* %fec_set, align 1, !dbg !5902
  br label %sw.epilog, !dbg !5903

sw.bb4:                                           ; preds = %entry
  store i8 -128, i8* %fec_set, align 1, !dbg !5904
  br label %sw.epilog, !dbg !5905

sw.bb5:                                           ; preds = %entry
  br label %sw.default, !dbg !5905

sw.default:                                       ; preds = %entry, %sw.bb5
  store i8 0, i8* %fec_set, align 1, !dbg !5906
  br label %sw.epilog, !dbg !5907

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !5908
  %call = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %1, i8 zeroext 112) #8, !dbg !5909
  store i8 %call, i8* %reg, align 1, !dbg !5910
  %2 = load i8, i8* %reg, align 1, !dbg !5911
  %conv = zext i8 %2 to i32, !dbg !5911
  %and = and i32 %conv, 7, !dbg !5911
  %conv6 = trunc i32 %and to i8, !dbg !5911
  store i8 %conv6, i8* %reg, align 1, !dbg !5911
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !5912
  %4 = load i8, i8* %reg, align 1, !dbg !5913
  %conv7 = zext i8 %4 to i32, !dbg !5913
  %5 = load i8, i8* %fec_set, align 1, !dbg !5914
  %conv8 = zext i8 %5 to i32, !dbg !5914
  %or = or i32 %conv7, %conv8, !dbg !5915
  %conv9 = trunc i32 %or to i8, !dbg !5913
  %call10 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %3, i8 zeroext 112, i8 zeroext %conv9) #8, !dbg !5916
  store i32 %call10, i32* %ret, align 4, !dbg !5917
  %6 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !5918
  %call11 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %6, i8 zeroext 118, i8 zeroext 8) #8, !dbg !5919
  %7 = load i32, i32* %ret, align 4, !dbg !5920
  %or12 = or i32 %7, %call11, !dbg !5920
  store i32 %or12, i32* %ret, align 4, !dbg !5920
  %8 = load i32, i32* %ret, align 4, !dbg !5921
  ret i32 %8, !dbg !5922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_set_symbolrate(%struct.dvb_frontend* %fe, i32 %srate) #0 !dbg !5923 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %srate.addr = alloca i32, align 4
  %state = alloca %struct.m88rs2000_state*, align 8
  %ret = alloca i32, align 4
  %temp = alloca i64, align 8
  %mclk = alloca i32, align 4
  %b = alloca [3 x i8], align 1
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5924, metadata !DIExpression()), !dbg !5925
  store i32 %srate, i32* %srate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srate.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !5928, metadata !DIExpression()), !dbg !5929
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5930
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5931
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5931
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !5930
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !5929
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5932, metadata !DIExpression()), !dbg !5933
  call void @llvm.dbg.declare(metadata i64* %temp, metadata !5934, metadata !DIExpression()), !dbg !5935
  call void @llvm.dbg.declare(metadata i32* %mclk, metadata !5936, metadata !DIExpression()), !dbg !5937
  call void @llvm.dbg.declare(metadata [3 x i8]* %b, metadata !5938, metadata !DIExpression()), !dbg !5940
  %3 = load i32, i32* %srate.addr, align 4, !dbg !5941
  %cmp = icmp ult i32 %3, 1000000, !dbg !5943
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5944

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %srate.addr, align 4, !dbg !5945
  %cmp1 = icmp ugt i32 %4, 45000000, !dbg !5946
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5947

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5948
  br label %return, !dbg !5948

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5949
  %call = call i32 @m88rs2000_get_mclk(%struct.dvb_frontend* %5) #8, !dbg !5950
  store i32 %call, i32* %mclk, align 4, !dbg !5951
  %6 = load i32, i32* %mclk, align 4, !dbg !5952
  %tobool = icmp ne i32 %6, 0, !dbg !5952
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5954

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5955
  br label %return, !dbg !5955

if.end3:                                          ; preds = %if.end
  %7 = load i32, i32* %srate.addr, align 4, !dbg !5956
  %div = udiv i32 %7, 1000, !dbg !5957
  %conv = zext i32 %div to i64, !dbg !5956
  store i64 %conv, i64* %temp, align 8, !dbg !5958
  %8 = load i64, i64* %temp, align 8, !dbg !5959
  %mul = mul i64 %8, 16777216, !dbg !5959
  store i64 %mul, i64* %temp, align 8, !dbg !5959
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5960, metadata !DIExpression()), !dbg !5962
  %9 = load i32, i32* %mclk, align 4, !dbg !5962
  store i32 %9, i32* %__base, align 4, !dbg !5962
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5963, metadata !DIExpression()), !dbg !5962
  %10 = load i64, i64* %temp, align 8, !dbg !5962
  %11 = load i32, i32* %__base, align 4, !dbg !5962
  %conv4 = zext i32 %11 to i64, !dbg !5962
  %rem = urem i64 %10, %conv4, !dbg !5962
  %conv5 = trunc i64 %rem to i32, !dbg !5962
  store i32 %conv5, i32* %__rem, align 4, !dbg !5962
  %12 = load i64, i64* %temp, align 8, !dbg !5962
  %13 = load i32, i32* %__base, align 4, !dbg !5962
  %conv6 = zext i32 %13 to i64, !dbg !5962
  %div7 = udiv i64 %12, %conv6, !dbg !5962
  store i64 %div7, i64* %temp, align 8, !dbg !5962
  %14 = load i32, i32* %__rem, align 4, !dbg !5962
  store i32 %14, i32* %tmp, align 4, !dbg !5962
  %15 = load i32, i32* %tmp, align 4, !dbg !5962
  %16 = load i64, i64* %temp, align 8, !dbg !5964
  %shr = lshr i64 %16, 16, !dbg !5965
  %conv8 = trunc i64 %shr to i8, !dbg !5966
  %conv9 = zext i8 %conv8 to i32, !dbg !5966
  %and = and i32 %conv9, 255, !dbg !5967
  %conv10 = trunc i32 %and to i8, !dbg !5966
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 0, !dbg !5968
  store i8 %conv10, i8* %arrayidx, align 1, !dbg !5969
  %17 = load i64, i64* %temp, align 8, !dbg !5970
  %shr11 = lshr i64 %17, 8, !dbg !5971
  %conv12 = trunc i64 %shr11 to i8, !dbg !5972
  %conv13 = zext i8 %conv12 to i32, !dbg !5972
  %and14 = and i32 %conv13, 255, !dbg !5973
  %conv15 = trunc i32 %and14 to i8, !dbg !5972
  %arrayidx16 = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 1, !dbg !5974
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !5975
  %18 = load i64, i64* %temp, align 8, !dbg !5976
  %conv17 = trunc i64 %18 to i8, !dbg !5977
  %conv18 = zext i8 %conv17 to i32, !dbg !5977
  %and19 = and i32 %conv18, 255, !dbg !5978
  %conv20 = trunc i32 %and19 to i8, !dbg !5977
  %arrayidx21 = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 2, !dbg !5979
  store i8 %conv20, i8* %arrayidx21, align 1, !dbg !5980
  %19 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5981
  %arrayidx22 = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 2, !dbg !5982
  %20 = load i8, i8* %arrayidx22, align 1, !dbg !5982
  %call23 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %19, i8 zeroext -109, i8 zeroext %20) #8, !dbg !5983
  store i32 %call23, i32* %ret, align 4, !dbg !5984
  %21 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5985
  %arrayidx24 = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 1, !dbg !5986
  %22 = load i8, i8* %arrayidx24, align 1, !dbg !5986
  %call25 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %21, i8 zeroext -108, i8 zeroext %22) #8, !dbg !5987
  %23 = load i32, i32* %ret, align 4, !dbg !5988
  %or = or i32 %23, %call25, !dbg !5988
  store i32 %or, i32* %ret, align 4, !dbg !5988
  %24 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5989
  %arrayidx26 = getelementptr [3 x i8], [3 x i8]* %b, i64 0, i64 0, !dbg !5990
  %25 = load i8, i8* %arrayidx26, align 1, !dbg !5990
  %call27 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %24, i8 zeroext -107, i8 zeroext %25) #8, !dbg !5991
  %26 = load i32, i32* %ret, align 4, !dbg !5992
  %or28 = or i32 %26, %call27, !dbg !5992
  store i32 %or28, i32* %ret, align 4, !dbg !5992
  %27 = load i32, i32* %srate.addr, align 4, !dbg !5993
  %cmp29 = icmp ugt i32 %27, 10000000, !dbg !5995
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !5996

if.then31:                                        ; preds = %if.end3
  %28 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !5997
  %call32 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %28, i8 zeroext -96, i8 zeroext 32) #8, !dbg !5998
  %29 = load i32, i32* %ret, align 4, !dbg !5999
  %or33 = or i32 %29, %call32, !dbg !5999
  store i32 %or33, i32* %ret, align 4, !dbg !5999
  br label %if.end36, !dbg !6000

if.else:                                          ; preds = %if.end3
  %30 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !6001
  %call34 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %30, i8 zeroext -96, i8 zeroext 96) #8, !dbg !6002
  %31 = load i32, i32* %ret, align 4, !dbg !6003
  %or35 = or i32 %31, %call34, !dbg !6003
  store i32 %or35, i32* %ret, align 4, !dbg !6003
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then31
  %32 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !6004
  %call37 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %32, i8 zeroext -95, i8 zeroext -32) #8, !dbg !6005
  %33 = load i32, i32* %ret, align 4, !dbg !6006
  %or38 = or i32 %33, %call37, !dbg !6006
  store i32 %or38, i32* %ret, align 4, !dbg !6006
  %34 = load i32, i32* %srate.addr, align 4, !dbg !6007
  %cmp39 = icmp ugt i32 %34, 12000000, !dbg !6009
  br i1 %cmp39, label %if.then41, label %if.else44, !dbg !6010

if.then41:                                        ; preds = %if.end36
  %35 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !6011
  %call42 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %35, i8 zeroext -93, i8 zeroext 32) #8, !dbg !6012
  %36 = load i32, i32* %ret, align 4, !dbg !6013
  %or43 = or i32 %36, %call42, !dbg !6013
  store i32 %or43, i32* %ret, align 4, !dbg !6013
  br label %if.end54, !dbg !6014

if.else44:                                        ; preds = %if.end36
  %37 = load i32, i32* %srate.addr, align 4, !dbg !6015
  %cmp45 = icmp ugt i32 %37, 2800000, !dbg !6017
  br i1 %cmp45, label %if.then47, label %if.else50, !dbg !6018

if.then47:                                        ; preds = %if.else44
  %38 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !6019
  %call48 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %38, i8 zeroext -93, i8 zeroext -104) #8, !dbg !6020
  %39 = load i32, i32* %ret, align 4, !dbg !6021
  %or49 = or i32 %39, %call48, !dbg !6021
  store i32 %or49, i32* %ret, align 4, !dbg !6021
  br label %if.end53, !dbg !6022

if.else50:                                        ; preds = %if.else44
  %40 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !6023
  %call51 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %40, i8 zeroext -93, i8 zeroext -112) #8, !dbg !6024
  %41 = load i32, i32* %ret, align 4, !dbg !6025
  %or52 = or i32 %41, %call51, !dbg !6025
  store i32 %or52, i32* %ret, align 4, !dbg !6025
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then47
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then41
  br label %do.body, !dbg !6026

do.body:                                          ; preds = %if.end54
  %42 = load i32, i32* @m88rs2000_debug, align 4, !dbg !6027
  %and55 = and i32 1, %42, !dbg !6027
  %tobool56 = icmp ne i32 %and55, 0, !dbg !6027
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !6030

if.then57:                                        ; preds = %do.body
  %call58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !6027
  br label %if.end59, !dbg !6027

if.end59:                                         ; preds = %if.then57, %do.body
  br label %do.end, !dbg !6030

do.end:                                           ; preds = %if.end59
  %43 = load i32, i32* %ret, align 4, !dbg !6031
  store i32 %43, i32* %retval, align 4, !dbg !6032
  br label %return, !dbg !6032

return:                                           ; preds = %do.end, %if.then2, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !6033
  ret i32 %44, !dbg !6033
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %state, i8 zeroext %reg) #0 !dbg !6034 {
entry:
  %state.addr = alloca %struct.m88rs2000_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.m88rs2000_state* %state, %struct.m88rs2000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6041, metadata !DIExpression()), !dbg !6042
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !6043, metadata !DIExpression()), !dbg !6045
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !6046
  %0 = load i8, i8* %reg.addr, align 1, !dbg !6047
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !6046
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !6048, metadata !DIExpression()), !dbg !6049
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !6049
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !6049
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !6050, metadata !DIExpression()), !dbg !6052
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !6053
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !6054
  %2 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !6055
  %config = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %2, i32 0, i32 1, !dbg !6056
  %3 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %config, align 8, !dbg !6056
  %demod_addr = getelementptr inbounds %struct.m88rs2000_config, %struct.m88rs2000_config* %3, i32 0, i32 0, !dbg !6057
  %4 = load i8, i8* %demod_addr, align 8, !dbg !6057
  %conv = zext i8 %4 to i16, !dbg !6055
  store i16 %conv, i16* %addr, align 16, !dbg !6054
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !6054
  store i16 0, i16* %flags, align 2, !dbg !6054
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !6054
  store i16 1, i16* %len, align 4, !dbg !6054
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !6054
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !6058
  store i8* %arraydecay, i8** %buf, align 8, !dbg !6054
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !6053
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !6059
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !6060
  %config3 = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %5, i32 0, i32 1, !dbg !6061
  %6 = load %struct.m88rs2000_config*, %struct.m88rs2000_config** %config3, align 8, !dbg !6061
  %demod_addr4 = getelementptr inbounds %struct.m88rs2000_config, %struct.m88rs2000_config* %6, i32 0, i32 0, !dbg !6062
  %7 = load i8, i8* %demod_addr4, align 8, !dbg !6062
  %conv5 = zext i8 %7 to i16, !dbg !6060
  store i16 %conv5, i16* %addr2, align 16, !dbg !6059
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !6059
  store i16 1, i16* %flags6, align 2, !dbg !6059
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !6059
  store i16 1, i16* %len7, align 4, !dbg !6059
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !6059
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !6063
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !6059
  %8 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !6064
  %i2c = getelementptr inbounds %struct.m88rs2000_state, %struct.m88rs2000_state* %8, i32 0, i32 0, !dbg !6065
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6065
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !6066
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay10, i32 2) #8, !dbg !6067
  store i32 %call, i32* %ret, align 4, !dbg !6068
  %10 = load i32, i32* %ret, align 4, !dbg !6069
  %cmp = icmp ne i32 %10, 2, !dbg !6071
  br i1 %cmp, label %if.then, label %if.end15, !dbg !6072

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6073

do.body:                                          ; preds = %if.then
  %11 = load i32, i32* @m88rs2000_debug, align 4, !dbg !6074
  %and = and i32 1, %11, !dbg !6074
  %tobool = icmp ne i32 %and, 0, !dbg !6074
  br i1 %tobool, label %if.then12, label %if.end, !dbg !6077

if.then12:                                        ; preds = %do.body
  %12 = load i8, i8* %reg.addr, align 1, !dbg !6074
  %conv13 = zext i8 %12 to i32, !dbg !6074
  %13 = load i32, i32* %ret, align 4, !dbg !6074
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.m88rs2000_readreg, i64 0, i64 0), i32 %conv13, i32 %13) #13, !dbg !6074
  br label %if.end, !dbg !6074

if.end:                                           ; preds = %if.then12, %do.body
  br label %do.end, !dbg !6077

do.end:                                           ; preds = %if.end
  br label %if.end15, !dbg !6077

if.end15:                                         ; preds = %do.end, %entry
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !6078
  %14 = load i8, i8* %arrayidx, align 1, !dbg !6078
  ret i8 %14, !dbg !6079
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_get_fec(%struct.m88rs2000_state* %state) #0 !dbg !6080 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.m88rs2000_state*, align 8
  %reg = alloca i8, align 1
  store %struct.m88rs2000_state* %state, %struct.m88rs2000_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !6085, metadata !DIExpression()), !dbg !6086
  %0 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !6087
  %call = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %0, i8 zeroext -102, i8 zeroext 48) #8, !dbg !6088
  %1 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !6089
  %call1 = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %1, i8 zeroext 118) #8, !dbg !6090
  store i8 %call1, i8* %reg, align 1, !dbg !6091
  %2 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state.addr, align 8, !dbg !6092
  %call2 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %2, i8 zeroext -102, i8 zeroext -80) #8, !dbg !6093
  %3 = load i8, i8* %reg, align 1, !dbg !6094
  %conv = zext i8 %3 to i32, !dbg !6094
  %and = and i32 %conv, 240, !dbg !6094
  %conv3 = trunc i32 %and to i8, !dbg !6094
  store i8 %conv3, i8* %reg, align 1, !dbg !6094
  %4 = load i8, i8* %reg, align 1, !dbg !6095
  %conv4 = zext i8 %4 to i32, !dbg !6095
  %shr = ashr i32 %conv4, 5, !dbg !6095
  %conv5 = trunc i32 %shr to i8, !dbg !6095
  store i8 %conv5, i8* %reg, align 1, !dbg !6095
  %5 = load i8, i8* %reg, align 1, !dbg !6096
  %conv6 = zext i8 %5 to i32, !dbg !6096
  switch i32 %conv6, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb7
    i32 2, label %sw.bb8
    i32 1, label %sw.bb9
    i32 0, label %sw.bb10
  ], !dbg !6097

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !6098
  br label %return, !dbg !6098

sw.bb7:                                           ; preds = %entry
  store i32 2, i32* %retval, align 4, !dbg !6100
  br label %return, !dbg !6100

sw.bb8:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4, !dbg !6101
  br label %return, !dbg !6101

sw.bb9:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4, !dbg !6102
  br label %return, !dbg !6102

sw.bb10:                                          ; preds = %entry
  store i32 7, i32* %retval, align 4, !dbg !6103
  br label %return, !dbg !6103

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !6104

sw.epilog:                                        ; preds = %sw.default
  store i32 9, i32* %retval, align 4, !dbg !6105
  br label %return, !dbg !6105

return:                                           ; preds = %sw.epilog, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  %6 = load i32, i32* %retval, align 4, !dbg !6106
  ret i32 %6, !dbg !6106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @m88rs2000_get_mclk(%struct.dvb_frontend* %fe) #0 !dbg !6107 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.m88rs2000_state*, align 8
  %mclk = alloca i32, align 4
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6110, metadata !DIExpression()), !dbg !6111
  call void @llvm.dbg.declare(metadata %struct.m88rs2000_state** %state, metadata !6112, metadata !DIExpression()), !dbg !6113
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6114
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6115
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6115
  %2 = bitcast i8* %1 to %struct.m88rs2000_state*, !dbg !6114
  store %struct.m88rs2000_state* %2, %struct.m88rs2000_state** %state, align 8, !dbg !6113
  call void @llvm.dbg.declare(metadata i32* %mclk, metadata !6116, metadata !DIExpression()), !dbg !6117
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !6118, metadata !DIExpression()), !dbg !6119
  %3 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %state, align 8, !dbg !6120
  %call = call zeroext i8 @m88rs2000_readreg(%struct.m88rs2000_state* %3, i8 zeroext -122) #8, !dbg !6121
  store i8 %call, i8* %reg, align 1, !dbg !6122
  %4 = load i8, i8* %reg, align 1, !dbg !6123
  %tobool = icmp ne i8 %4, 0, !dbg !6123
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6125

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8, i8* %reg, align 1, !dbg !6126
  %conv = zext i8 %5 to i32, !dbg !6126
  %cmp = icmp eq i32 %conv, 255, !dbg !6127
  br i1 %cmp, label %if.then, label %if.end, !dbg !6128

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !6129
  br label %return, !dbg !6129

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8, i8* %reg, align 1, !dbg !6130
  %conv2 = zext i8 %6 to i32, !dbg !6130
  %div = sdiv i32 %conv2, 2, !dbg !6130
  %conv3 = trunc i32 %div to i8, !dbg !6130
  store i8 %conv3, i8* %reg, align 1, !dbg !6130
  %7 = load i8, i8* %reg, align 1, !dbg !6131
  %conv4 = zext i8 %7 to i32, !dbg !6131
  %add = add i32 %conv4, 1, !dbg !6131
  %conv5 = trunc i32 %add to i8, !dbg !6131
  store i8 %conv5, i8* %reg, align 1, !dbg !6131
  %8 = load i8, i8* %reg, align 1, !dbg !6132
  %conv6 = zext i8 %8 to i32, !dbg !6132
  %mul = mul i32 %conv6, 27000, !dbg !6133
  %add7 = add i32 %mul, 14, !dbg !6134
  %div8 = udiv i32 %add7, 28, !dbg !6135
  store i32 %div8, i32* %mclk, align 4, !dbg !6136
  %9 = load i32, i32* %mclk, align 4, !dbg !6137
  store i32 %9, i32* %retval, align 4, !dbg !6138
  br label %return, !dbg !6138

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6139
  ret i32 %10, !dbg !6139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i64 @__modver_version_show(%struct.module_attribute*, %struct.module_kobject*, i8*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4383, !4384, !4385, !4386}
!llvm.ident = !{!4387}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 39, type: !4382, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !295, globals: !322, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/m88rs2000.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !290}
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
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !291, line: 26, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "drivers/media/dvb-frontends/m88rs2000.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294}
!293 = !DIEnumerator(name: "CALL_IS_SET_FRONTEND", value: 0, isUnsigned: true)
!294 = !DIEnumerator(name: "CALL_IS_READ", value: 1, isUnsigned: true)
!295 = !{!296, !298, !299, !310, !313, !303, !316, !318}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !297, line: 148, baseType: !7)
!297 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inittab", file: !3, line: 283, size: 24, elements: !301)
!301 = !{!302, !308, !309}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !300, file: !3, line: 284, baseType: !303, size: 8)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !304, line: 17, baseType: !305)
!304 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !306, line: 21, baseType: !307)
!306 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!307 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !300, file: !3, line: 285, baseType: !303, size: 8, offset: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !300, file: !3, line: 286, baseType: !303, size: 8, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !304, line: 18, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !306, line: 23, baseType: !312)
!312 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !304, line: 20, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !306, line: 26, baseType: !315)
!315 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !304, line: 21, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !306, line: 27, baseType: !7)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !297, line: 107, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !304, line: 23, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !306, line: 31, baseType: !321)
!321 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!322 = !{!323, !389, !394, !399, !404, !409, !414, !419, !424, !3485, !0, !3487, !4360, !4365, !4370, !4375, !4380}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 39, type: !325, isLocal: true, isDefinition: true, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !327, line: 69, size: 320, elements: !328)
!327 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !333, !337, !357, !362, !366, !367}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !327, line: 70, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !326, file: !327, line: 71, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !336, line: 76, flags: DIFlagFwdDecl)
!336 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !326, file: !327, line: 72, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !327, line: 47, size: 256, elements: !341)
!341 = !{!342, !343, !348, !353}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !327, line: 49, baseType: !7, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !340, file: !327, line: 51, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!315, !330, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !340, file: !327, line: 53, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!315, !352, !347}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !340, file: !327, line: 55, baseType: !354, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !298}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !326, file: !327, line: 73, baseType: !358, size: 16, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !304, line: 19, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !306, line: 24, baseType: !361)
!361 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !326, file: !327, line: 74, baseType: !363, size: 8, offset: 208)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !304, line: 16, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !306, line: 20, baseType: !365)
!365 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !327, line: 75, baseType: !303, size: 8, offset: 216)
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !327, line: 76, baseType: !368, size: 64, offset: 256)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !327, line: 76, size: 64, elements: !369)
!369 = !{!370, !371, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !368, file: !327, line: 77, baseType: !298, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !368, file: !327, line: 78, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !327, line: 86, size: 128, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !374, file: !327, line: 87, baseType: !7, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !374, file: !327, line: 88, baseType: !352, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !368, file: !327, line: 79, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !327, line: 92, size: 256, elements: !382)
!382 = !{!383, !384, !385, !387, !388}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !381, file: !327, line: 94, baseType: !7, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !381, file: !327, line: 95, baseType: !7, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !381, file: !327, line: 96, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !381, file: !327, line: 97, baseType: !338, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !381, file: !327, line: 98, baseType: !298, size: 64, offset: 192)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 39, type: !391, isLocal: true, isDefinition: true, align: 8)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 232, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 29)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 40, type: !396, isLocal: true, isDefinition: true, align: 8)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 488, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 61)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 812, type: !401, isLocal: true, isDefinition: true, align: 8)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 456, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 57)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 813, type: !406, isLocal: true, isDefinition: true, align: 8)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 432, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 54)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 814, type: !411, isLocal: true, isDefinition: true, align: 8)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 424, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 53)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 814, type: !416, isLocal: true, isDefinition: true, align: 8)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 176, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 22)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_version226", scope: !2, file: !3, line: 815, type: !421, isLocal: true, isDefinition: true, align: 8)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 184, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 23)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "__modver_attr", scope: !2, file: !3, line: 815, type: !426, isLocal: true, isDefinition: true)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_version_attribute", file: !430, line: 65, size: 576, align: 64, elements: !431)
!430 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!431 = !{!432, !3483, !3484}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mattr", scope: !429, file: !430, line: 66, baseType: !433, size: 448)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !430, line: 54, size: 448, elements: !434)
!434 = !{!435, !442, !3467, !3471, !3475, !3479}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !433, file: !430, line: 55, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !437, line: 30, size: 128, elements: !438)
!437 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !437, line: 31, baseType: !330, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !436, file: !437, line: 32, baseType: !441, size: 16, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !297, line: 19, baseType: !361)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !433, file: !430, line: 56, baseType: !443, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !451, !452, !352}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !297, line: 60, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !448, line: 73, baseType: !449)
!448 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !448, line: 15, baseType: !450)
!450 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !430, line: 46, size: 768, elements: !454)
!454 = !{!455, !3461, !3462, !3463, !3466}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !453, file: !430, line: 47, baseType: !456, size: 512)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !457, line: 64, size: 512, elements: !458)
!457 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !460, !466, !468, !527, !3312, !3451, !3456, !3457, !3458, !3459, !3460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !456, file: !457, line: 65, baseType: !330, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !456, file: !457, line: 66, baseType: !461, size: 128, offset: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !297, line: 178, size: 128, elements: !462)
!462 = !{!463, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !297, line: 179, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !461, file: !297, line: 179, baseType: !464, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !456, file: !457, line: 67, baseType: !467, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !456, file: !457, line: 68, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !457, line: 192, size: 704, elements: !471)
!471 = !{!472, !473, !489, !490}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !470, file: !457, line: 193, baseType: !461, size: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !470, file: !457, line: 194, baseType: !474, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !475, line: 83, baseType: !476)
!475 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !475, line: 71, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !475, line: 72, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !475, line: 72, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !479, file: !475, line: 73, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !475, line: 20, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !482, file: !475, line: 21, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !486, line: 25, baseType: !487)
!486 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 25, elements: !488)
!488 = !{}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !470, file: !457, line: 195, baseType: !456, size: 512, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !470, file: !457, line: 196, baseType: !491, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !457, line: 156, size: 192, elements: !494)
!494 = !{!495, !500, !505}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !493, file: !457, line: 157, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!315, !469, !467}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !457, line: 158, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!330, !469, !467}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !493, file: !457, line: 159, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!315, !469, !467, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !457, line: 148, size: 20736, elements: !512)
!512 = !{!513, !517, !521, !522, !526}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !511, file: !457, line: 149, baseType: !514, size: 192)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 192, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 3)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !511, file: !457, line: 150, baseType: !518, size: 4096, offset: 192)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 4096, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !511, file: !457, line: 151, baseType: !315, size: 32, offset: 4288)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !511, file: !457, line: 152, baseType: !523, size: 16384, offset: 4320)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 16384, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 2048)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !511, file: !457, line: 153, baseType: !315, size: 32, offset: 20704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !456, file: !457, line: 69, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !457, line: 138, size: 448, elements: !530)
!530 = !{!531, !535, !553, !555, !3274, !3302, !3306}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !529, file: !457, line: 139, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !467}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !529, file: !457, line: 140, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !437, line: 230, size: 128, elements: !539)
!539 = !{!540, !545}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !538, file: !437, line: 231, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!446, !467, !544, !352}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !538, file: !437, line: 232, baseType: !546, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!446, !467, !544, !330, !549}
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !297, line: 55, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !448, line: 72, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !448, line: 16, baseType: !552)
!552 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !529, file: !457, line: 141, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !529, file: !457, line: 142, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !437, line: 84, size: 320, elements: !560)
!560 = !{!561, !562, !566, !3271, !3272}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !559, file: !437, line: 85, baseType: !330, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !559, file: !437, line: 86, baseType: !563, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!441, !467, !544, !315}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !559, file: !437, line: 88, baseType: !567, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!441, !467, !570, !315}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !437, line: 168, size: 448, elements: !572)
!572 = !{!573, !574, !575, !576, !3266, !3267}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !571, file: !437, line: 169, baseType: !436, size: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !571, file: !437, line: 170, baseType: !549, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !571, file: !437, line: 171, baseType: !298, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !571, file: !437, line: 172, baseType: !577, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!446, !580, !467, !570, !352, !748, !549}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !582)
!582 = !{!583, !601, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3249, !3250, !3259, !3260, !3261, !3262, !3263, !3264, !3265}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !581, file: !208, line: 920, baseType: !584, size: 128)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !208, line: 917, size: 128, elements: !585)
!585 = !{!586, !592}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !584, file: !208, line: 918, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !588, line: 58, size: 64, elements: !589)
!588 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !588, line: 59, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !584, file: !208, line: 919, baseType: !593, size: 128, align: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !297, line: 216, size: 128, align: 64, elements: !594)
!594 = !{!595, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !593, file: !297, line: 217, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !593, file: !297, line: 218, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !596}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !581, file: !208, line: 921, baseType: !602, size: 128, offset: 128)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !603, line: 8, size: 128, elements: !604)
!603 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!604 = !{!605, !609}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !602, file: !603, line: 9, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !608, line: 18, flags: DIFlagFwdDecl)
!608 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !602, file: !603, line: 10, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !608, line: 89, size: 1536, elements: !612)
!612 = !{!613, !614, !624, !632, !633, !648, !3200, !3202, !3214, !3215, !3216, !3217, !3218, !3223, !3224, !3225}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !611, file: !608, line: 91, baseType: !7, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !611, file: !608, line: 92, baseType: !615, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !616, line: 277, baseType: !617)
!616 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !616, line: 277, size: 32, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !617, file: !616, line: 277, baseType: !620, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !616, line: 70, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !616, line: 65, size: 32, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !621, file: !616, line: 66, baseType: !7, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !611, file: !608, line: 93, baseType: !625, size: 128, offset: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !626, line: 38, size: 128, elements: !627)
!626 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !625, file: !626, line: 39, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !625, file: !626, line: 39, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !611, file: !608, line: 94, baseType: !610, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !611, file: !608, line: 95, baseType: !634, size: 128, offset: 256)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !608, line: 47, size: 128, elements: !635)
!635 = !{!636, !645}
!636 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !608, line: 48, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !608, line: 48, size: 64, elements: !638)
!638 = !{!639, !644}
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !608, line: 49, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !637, file: !608, line: 49, size: 64, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !640, file: !608, line: 50, baseType: !316, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !640, file: !608, line: 50, baseType: !316, size: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !637, file: !608, line: 52, baseType: !319, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !634, file: !608, line: 54, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !611, file: !608, line: 96, baseType: !649, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !651)
!651 = !{!652, !653, !654, !662, !669, !670, !815, !2894, !2895, !2896, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !3168, !3176, !3177, !3178, !3196, !3197, !3198, !3199}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !650, file: !208, line: 611, baseType: !441, size: 16)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !650, file: !208, line: 612, baseType: !361, size: 16, offset: 16)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !650, file: !208, line: 613, baseType: !655, size: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !656, line: 23, baseType: !657)
!656 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 21, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !657, file: !656, line: 22, baseType: !660, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !297, line: 32, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !448, line: 49, baseType: !7)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !650, file: !208, line: 614, baseType: !663, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !656, line: 28, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 26, size: 32, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !664, file: !656, line: 27, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !297, line: 33, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !448, line: 50, baseType: !7)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !650, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !650, file: !208, line: 622, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !674)
!674 = !{!675, !679, !689, !693, !699, !703, !709, !713, !717, !721, !725, !726, !732, !736, !762, !791, !795, !801, !806, !810, !811}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !673, file: !208, line: 1865, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!610, !649, !610, !7}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !673, file: !208, line: 1866, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!330, !610, !649, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !685, line: 10, size: 128, elements: !686)
!685 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !684, file: !685, line: 11, baseType: !354, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !684, file: !685, line: 12, baseType: !298, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !673, file: !208, line: 1867, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!315, !649, !315}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !673, file: !208, line: 1868, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !649, !315}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !673, file: !208, line: 1870, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!315, !610, !352, !315}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !673, file: !208, line: 1872, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!315, !649, !610, !441, !707}
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !297, line: 30, baseType: !708)
!708 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !673, file: !208, line: 1873, baseType: !710, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!315, !610, !649, !610}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !673, file: !208, line: 1874, baseType: !714, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!315, !649, !610}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !673, file: !208, line: 1875, baseType: !718, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!315, !649, !610, !330}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !673, file: !208, line: 1876, baseType: !722, size: 64, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!315, !649, !610, !441}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !673, file: !208, line: 1877, baseType: !714, size: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !673, file: !208, line: 1878, baseType: !727, size: 64, offset: 704)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!315, !649, !610, !441, !730}
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !297, line: 16, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !297, line: 13, baseType: !316)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !673, file: !208, line: 1879, baseType: !733, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!315, !649, !610, !649, !610, !7}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !673, file: !208, line: 1881, baseType: !737, size: 64, offset: 832)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!315, !610, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !751, !759, !760, !761}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !741, file: !208, line: 220, baseType: !7, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !741, file: !208, line: 221, baseType: !441, size: 16, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !741, file: !208, line: 222, baseType: !655, size: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !741, file: !208, line: 223, baseType: !663, size: 32, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !741, file: !208, line: 224, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !297, line: 46, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !448, line: 88, baseType: !750)
!750 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !741, file: !208, line: 225, baseType: !752, size: 128, offset: 192)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !753, line: 13, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !758}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !752, file: !753, line: 14, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !753, line: 8, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !306, line: 30, baseType: !750)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !752, file: !753, line: 15, baseType: !450, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !741, file: !208, line: 226, baseType: !752, size: 128, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !741, file: !208, line: 227, baseType: !752, size: 128, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !741, file: !208, line: 234, baseType: !580, size: 64, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !673, file: !208, line: 1882, baseType: !763, size: 64, offset: 896)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!315, !766, !768, !316, !7}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !770, line: 22, size: 1152, elements: !771)
!770 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !773, !774, !775, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !769, file: !770, line: 23, baseType: !316, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !769, file: !770, line: 24, baseType: !441, size: 16, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !769, file: !770, line: 25, baseType: !7, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !769, file: !770, line: 26, baseType: !776, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !297, line: 104, baseType: !316)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !769, file: !770, line: 27, baseType: !319, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !769, file: !770, line: 28, baseType: !319, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !769, file: !770, line: 37, baseType: !319, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !769, file: !770, line: 38, baseType: !730, size: 32, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !769, file: !770, line: 39, baseType: !730, size: 32, offset: 352)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !769, file: !770, line: 40, baseType: !655, size: 32, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !769, file: !770, line: 41, baseType: !663, size: 32, offset: 416)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !769, file: !770, line: 42, baseType: !748, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !769, file: !770, line: 43, baseType: !752, size: 128, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !769, file: !770, line: 44, baseType: !752, size: 128, offset: 640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !769, file: !770, line: 45, baseType: !752, size: 128, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !769, file: !770, line: 46, baseType: !752, size: 128, offset: 896)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !769, file: !770, line: 47, baseType: !319, size: 64, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !769, file: !770, line: 48, baseType: !319, size: 64, offset: 1088)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !673, file: !208, line: 1883, baseType: !792, size: 64, offset: 960)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!446, !610, !352, !549}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !673, file: !208, line: 1884, baseType: !796, size: 64, offset: 1024)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!315, !649, !799, !319, !319}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !673, file: !208, line: 1886, baseType: !802, size: 64, offset: 1088)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!315, !649, !805, !315}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !673, file: !208, line: 1887, baseType: !807, size: 64, offset: 1152)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!315, !649, !610, !580, !7, !441}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !673, file: !208, line: 1890, baseType: !722, size: 64, offset: 1216)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !673, file: !208, line: 1891, baseType: !812, size: 64, offset: 1280)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!315, !649, !697, !315}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !650, file: !208, line: 623, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !871, !2502, !2584, !2667, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2683, !2687, !2688, !2691, !2692, !2695, !2696, !2697, !2738, !2764, !2765, !2766, !2767, !2768, !2769, !2772, !2774, !2781, !2782, !2784, !2785, !2786, !2845, !2846, !2861, !2862, !2863, !2864, !2865, !2868, !2869, !2870, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !817, file: !208, line: 1417, baseType: !461, size: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !817, file: !208, line: 1418, baseType: !730, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !817, file: !208, line: 1419, baseType: !307, size: 8, offset: 160)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !817, file: !208, line: 1420, baseType: !552, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !817, file: !208, line: 1421, baseType: !748, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !817, file: !208, line: 1422, baseType: !825, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !827)
!827 = !{!828, !829, !830, !837, !841, !845, !849, !850, !851, !861, !864, !865, !866, !868, !869, !870}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !826, file: !208, line: 2229, baseType: !330, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !826, file: !208, line: 2230, baseType: !315, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !826, file: !208, line: 2238, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!315, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !836, line: 28, flags: DIFlagFwdDecl)
!836 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!837 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !826, file: !208, line: 2239, baseType: !838, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !826, file: !208, line: 2240, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!610, !825, !315, !330, !298}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !826, file: !208, line: 2242, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !816}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !826, file: !208, line: 2243, baseType: !334, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !208, line: 2244, baseType: !825, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !826, file: !208, line: 2245, baseType: !852, size: 64, offset: 512)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !297, line: 182, size: 64, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !852, file: !297, line: 183, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !297, line: 186, size: 128, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !856, file: !297, line: 187, baseType: !855, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !856, file: !297, line: 187, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !826, file: !208, line: 2247, baseType: !862, offset: 576)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !863, line: 187, elements: !488)
!863 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !826, file: !208, line: 2248, baseType: !862, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !826, file: !208, line: 2249, baseType: !862, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !826, file: !208, line: 2250, baseType: !867, offset: 576)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, elements: !515)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !826, file: !208, line: 2252, baseType: !862, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !826, file: !208, line: 2253, baseType: !862, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !826, file: !208, line: 2254, baseType: !862, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !817, file: !208, line: 1423, baseType: !872, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !875)
!875 = !{!876, !880, !884, !885, !889, !895, !899, !900, !901, !905, !909, !910, !911, !912, !918, !923, !924, !931, !932, !933, !934, !2486, !2501}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !874, file: !208, line: 1936, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!649, !816}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !874, file: !208, line: 1937, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !649}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !874, file: !208, line: 1938, baseType: !881, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !874, file: !208, line: 1940, baseType: !886, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !649, !315}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !874, file: !208, line: 1941, baseType: !890, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!315, !649, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !874, file: !208, line: 1942, baseType: !896, size: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!315, !649}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !874, file: !208, line: 1943, baseType: !881, size: 64, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !874, file: !208, line: 1944, baseType: !846, size: 64, offset: 448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !874, file: !208, line: 1945, baseType: !902, size: 64, offset: 512)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!315, !816, !315}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !874, file: !208, line: 1946, baseType: !906, size: 64, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!315, !816}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !874, file: !208, line: 1947, baseType: !906, size: 64, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !874, file: !208, line: 1948, baseType: !906, size: 64, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !874, file: !208, line: 1949, baseType: !906, size: 64, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !874, file: !208, line: 1950, baseType: !913, size: 64, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!315, !610, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !874, file: !208, line: 1951, baseType: !919, size: 64, offset: 896)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!315, !816, !922, !352}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !874, file: !208, line: 1952, baseType: !846, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !874, file: !208, line: 1954, baseType: !925, size: 64, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!315, !928, !610}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !930, line: 539, flags: DIFlagFwdDecl)
!930 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!931 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !874, file: !208, line: 1955, baseType: !925, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !874, file: !208, line: 1956, baseType: !925, size: 64, offset: 1152)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !874, file: !208, line: 1957, baseType: !925, size: 64, offset: 1216)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !874, file: !208, line: 1963, baseType: !935, size: 64, offset: 1280)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!315, !816, !938, !296}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !940, line: 68, size: 512, align: 128, elements: !941)
!940 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!941 = !{!942, !943, !2478, !2485}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !940, line: 69, baseType: !552, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !940, line: 77, baseType: !944, size: 320, offset: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !940, line: 77, size: 320, elements: !945)
!945 = !{!946, !1131, !1136, !1164, !1172, !1178, !2470, !2477}
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !940, line: 78, baseType: !947, size: 320)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !940, line: 78, size: 320, elements: !948)
!948 = !{!949, !950, !1129, !1130}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !947, file: !940, line: 84, baseType: !461, size: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !947, file: !940, line: 86, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !953)
!953 = !{!954, !955, !962, !963, !968, !983, !999, !1000, !1001, !1002, !1122, !1123, !1126, !1127, !1128}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !952, file: !208, line: 452, baseType: !649, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !952, file: !208, line: 453, baseType: !956, size: 128, offset: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !957, line: 292, size: 128, elements: !958)
!957 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !956, file: !957, line: 293, baseType: !474)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !956, file: !957, line: 295, baseType: !296, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !956, file: !957, line: 296, baseType: !298, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !952, file: !208, line: 454, baseType: !296, size: 32, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !952, file: !208, line: 455, baseType: !964, size: 32, offset: 224)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !297, line: 168, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 166, size: 32, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !965, file: !297, line: 167, baseType: !315, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !952, file: !208, line: 460, baseType: !969, size: 128, offset: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !970, line: 125, size: 128, elements: !971)
!970 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!971 = !{!972, !982}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !969, file: !970, line: 126, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !970, line: 31, size: 64, elements: !974)
!974 = !{!975}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !973, file: !970, line: 32, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !970, line: 24, size: 192, align: 64, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !977, file: !970, line: 25, baseType: !552, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !977, file: !970, line: 26, baseType: !976, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !977, file: !970, line: 27, baseType: !976, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !969, file: !970, line: 127, baseType: !976, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !952, file: !208, line: 461, baseType: !984, size: 256, offset: 384)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !985, line: 35, size: 256, elements: !986)
!985 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !995, !996, !998}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !984, file: !985, line: 36, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !989, line: 13, baseType: !990)
!989 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !297, line: 175, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 173, size: 64, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !991, file: !297, line: 174, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !304, line: 22, baseType: !757)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !984, file: !985, line: 42, baseType: !988, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !984, file: !985, line: 46, baseType: !997, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !475, line: 29, baseType: !482)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !984, file: !985, line: 47, baseType: !461, size: 128, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !952, file: !208, line: 462, baseType: !552, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !952, file: !208, line: 463, baseType: !552, size: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !952, file: !208, line: 464, baseType: !552, size: 64, offset: 768)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !952, file: !208, line: 465, baseType: !1003, size: 64, offset: 832)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1006)
!1006 = !{!1007, !1011, !1015, !1019, !1023, !1027, !1033, !1039, !1043, !1048, !1052, !1056, !1060, !1086, !1090, !1096, !1097, !1098, !1102, !1107, !1111, !1118}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1005, file: !208, line: 368, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!315, !938, !893}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1005, file: !208, line: 369, baseType: !1012, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!315, !580, !938}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1005, file: !208, line: 372, baseType: !1016, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!315, !951, !893}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1005, file: !208, line: 375, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!315, !938}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1005, file: !208, line: 381, baseType: !1024, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!315, !580, !951, !464, !7}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1005, file: !208, line: 383, baseType: !1028, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1005, file: !208, line: 385, baseType: !1034, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!315, !580, !951, !748, !7, !7, !1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1005, file: !208, line: 388, baseType: !1040, size: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!315, !580, !951, !748, !7, !7, !938, !298}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1005, file: !208, line: 393, baseType: !1044, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047, !951, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !297, line: 125, baseType: !319)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1005, file: !208, line: 394, baseType: !1049, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !938, !7, !7}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1005, file: !208, line: 395, baseType: !1053, size: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!315, !938, !296}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1005, file: !208, line: 396, baseType: !1057, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !938}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1005, file: !208, line: 397, baseType: !1061, size: 64, offset: 768)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!446, !1064, !1084}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1073, !1074, !1075, !1076, !1077}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1065, file: !208, line: 321, baseType: !580, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1065, file: !208, line: 326, baseType: !748, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1065, file: !208, line: 327, baseType: !1070, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !1064, !450, !450}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1065, file: !208, line: 328, baseType: !298, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1065, file: !208, line: 329, baseType: !315, size: 32, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1065, file: !208, line: 330, baseType: !359, size: 16, offset: 288)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1065, file: !208, line: 331, baseType: !359, size: 16, offset: 304)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !208, line: 332, baseType: !1078, size: 64, offset: 320)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !208, line: 332, size: 64, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1078, file: !208, line: 333, baseType: !7, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1078, file: !208, line: 334, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1005, file: !208, line: 402, baseType: !1087, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!315, !951, !938, !938, !183}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1005, file: !208, line: 404, baseType: !1091, size: 64, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!707, !938, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1095, line: 305, baseType: !7)
!1095 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1005, file: !208, line: 405, baseType: !1057, size: 64, offset: 960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1005, file: !208, line: 406, baseType: !1020, size: 64, offset: 1024)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1005, file: !208, line: 407, baseType: !1099, size: 64, offset: 1088)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!315, !938, !552, !552}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1005, file: !208, line: 409, baseType: !1103, size: 64, offset: 1152)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !938, !1106, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1005, file: !208, line: 410, baseType: !1108, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!315, !951, !938}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1005, file: !208, line: 413, baseType: !1112, size: 64, offset: 1280)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!315, !1115, !580, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1005, file: !208, line: 415, baseType: !1119, size: 64, offset: 1344)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !580}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !208, line: 466, baseType: !552, size: 64, offset: 896)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !952, file: !208, line: 467, baseType: !1124, size: 32, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1125, line: 8, baseType: !316)
!1125 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !952, file: !208, line: 468, baseType: !474, offset: 992)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !952, file: !208, line: 469, baseType: !461, size: 128, offset: 1024)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !952, file: !208, line: 470, baseType: !298, size: 64, offset: 1152)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !947, file: !940, line: 87, baseType: !552, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !947, file: !940, line: 94, baseType: !552, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !940, line: 96, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !940, line: 96, size: 64, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1132, file: !940, line: 101, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !297, line: 143, baseType: !319)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !940, line: 103, baseType: !1137, size: 320)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !940, line: 103, size: 320, elements: !1138)
!1138 = !{!1139, !1149, !1152, !1153}
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !940, line: 104, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !940, line: 104, size: 128, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1140, file: !940, line: 105, baseType: !461, size: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !940, line: 106, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !940, line: 106, size: 128, elements: !1145)
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1144, file: !940, line: 107, baseType: !938, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1144, file: !940, line: 109, baseType: !315, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1144, file: !940, line: 110, baseType: !315, size: 32, offset: 96)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1137, file: !940, line: 117, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !940, line: 117, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1137, file: !940, line: 119, baseType: !298, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !940, line: 120, baseType: !1154, size: 64, offset: 256)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !940, line: 120, size: 64, elements: !1155)
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1154, file: !940, line: 121, baseType: !298, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1154, file: !940, line: 122, baseType: !552, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !940, line: 123, baseType: !1159, size: 32)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !940, line: 123, size: 32, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1159, file: !940, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1159, file: !940, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1159, file: !940, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !940, line: 130, baseType: !1165, size: 192)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !940, line: 130, size: 192, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1165, file: !940, line: 131, baseType: !552, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1165, file: !940, line: 134, baseType: !307, size: 8, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1165, file: !940, line: 135, baseType: !307, size: 8, offset: 72)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1165, file: !940, line: 136, baseType: !964, size: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1165, file: !940, line: 137, baseType: !7, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !940, line: 139, baseType: !1173, size: 256)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !940, line: 139, size: 256, elements: !1174)
!1174 = !{!1175, !1176, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1173, file: !940, line: 140, baseType: !552, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1173, file: !940, line: 141, baseType: !964, size: 32, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1173, file: !940, line: 143, baseType: !461, size: 128, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !940, line: 145, baseType: !1179, size: 256)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !940, line: 145, size: 256, elements: !1180)
!1180 = !{!1181, !1182, !1184, !1185, !2469}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1179, file: !940, line: 146, baseType: !552, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1179, file: !940, line: 147, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !930, line: 509, baseType: !938)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1179, file: !940, line: 148, baseType: !552, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !940, line: 149, baseType: !1186, size: 64, offset: 192)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !940, line: 149, size: 64, elements: !1187)
!1187 = !{!1188, !2468}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1186, file: !940, line: 150, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !940, line: 388, size: 7296, elements: !1191)
!1191 = !{!1192, !2464}
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !940, line: 389, baseType: !1193, size: 7296)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !940, line: 389, size: 7296, elements: !1194)
!1194 = !{!1195, !1233, !1234, !1235, !1239, !1240, !1241, !1242, !1243, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1284, !1292, !1295, !1338, !1339, !2448, !2449, !2452, !2453, !2454, !2457, !2458, !2459, !2462, !2463}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1193, file: !940, line: 390, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !940, line: 305, size: 1472, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1213, !1214, !1219, !1220, !1223, !1227, !1228, !1229, !1230, !1231}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1197, file: !940, line: 308, baseType: !552, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1197, file: !940, line: 309, baseType: !552, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1197, file: !940, line: 313, baseType: !1196, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1197, file: !940, line: 313, baseType: !1196, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1197, file: !940, line: 315, baseType: !977, size: 192, align: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1197, file: !940, line: 323, baseType: !552, size: 64, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1197, file: !940, line: 327, baseType: !1189, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1197, file: !940, line: 333, baseType: !1207, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !930, line: 284, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !930, line: 284, size: 64, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1208, file: !930, line: 284, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1212, line: 19, baseType: !552)
!1212 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1197, file: !940, line: 334, baseType: !552, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1197, file: !940, line: 343, baseType: !1215, size: 256, offset: 704)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !940, line: 340, size: 256, elements: !1216)
!1216 = !{!1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1215, file: !940, line: 341, baseType: !977, size: 192, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1215, file: !940, line: 342, baseType: !552, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1197, file: !940, line: 351, baseType: !461, size: 128, offset: 960)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1197, file: !940, line: 353, baseType: !1221, size: 64, offset: 1088)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !940, line: 353, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1197, file: !940, line: 356, baseType: !1224, size: 64, offset: 1152)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !940, line: 356, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1197, file: !940, line: 359, baseType: !552, size: 64, offset: 1216)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1197, file: !940, line: 361, baseType: !580, size: 64, offset: 1280)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1197, file: !940, line: 362, baseType: !298, size: 64, offset: 1344)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1197, file: !940, line: 365, baseType: !988, size: 64, offset: 1408)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1197, file: !940, line: 373, baseType: !1232, offset: 1472)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !940, line: 296, elements: !488)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1193, file: !940, line: 391, baseType: !973, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1193, file: !940, line: 392, baseType: !319, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1193, file: !940, line: 394, baseType: !1236, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!552, !580, !552, !552, !552, !552}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1193, file: !940, line: 398, baseType: !552, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1193, file: !940, line: 399, baseType: !552, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1193, file: !940, line: 405, baseType: !552, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1193, file: !940, line: 406, baseType: !552, size: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1193, file: !940, line: 407, baseType: !1244, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !930, line: 286, baseType: !1246)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !930, line: 286, size: 64, elements: !1247)
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1246, file: !930, line: 286, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1212, line: 18, baseType: !552)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1193, file: !940, line: 416, baseType: !964, size: 32, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1193, file: !940, line: 428, baseType: !964, size: 32, offset: 608)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1193, file: !940, line: 437, baseType: !964, size: 32, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1193, file: !940, line: 447, baseType: !964, size: 32, offset: 672)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1193, file: !940, line: 450, baseType: !988, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1193, file: !940, line: 452, baseType: !315, size: 32, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1193, file: !940, line: 454, baseType: !474, offset: 800)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1193, file: !940, line: 457, baseType: !984, size: 256, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1193, file: !940, line: 459, baseType: !461, size: 128, offset: 1088)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1193, file: !940, line: 466, baseType: !552, size: 64, offset: 1216)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1193, file: !940, line: 467, baseType: !552, size: 64, offset: 1280)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1193, file: !940, line: 469, baseType: !552, size: 64, offset: 1344)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1193, file: !940, line: 470, baseType: !552, size: 64, offset: 1408)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1193, file: !940, line: 471, baseType: !990, size: 64, offset: 1472)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1193, file: !940, line: 472, baseType: !552, size: 64, offset: 1536)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1193, file: !940, line: 473, baseType: !552, size: 64, offset: 1600)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1193, file: !940, line: 474, baseType: !552, size: 64, offset: 1664)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1193, file: !940, line: 475, baseType: !552, size: 64, offset: 1728)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1193, file: !940, line: 477, baseType: !474, offset: 1792)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1193, file: !940, line: 478, baseType: !552, size: 64, offset: 1792)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1193, file: !940, line: 478, baseType: !552, size: 64, offset: 1856)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1193, file: !940, line: 478, baseType: !552, size: 64, offset: 1920)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1193, file: !940, line: 478, baseType: !552, size: 64, offset: 1984)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1193, file: !940, line: 479, baseType: !552, size: 64, offset: 2048)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1193, file: !940, line: 479, baseType: !552, size: 64, offset: 2112)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1193, file: !940, line: 479, baseType: !552, size: 64, offset: 2176)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1193, file: !940, line: 480, baseType: !552, size: 64, offset: 2240)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1193, file: !940, line: 480, baseType: !552, size: 64, offset: 2304)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1193, file: !940, line: 480, baseType: !552, size: 64, offset: 2368)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1193, file: !940, line: 480, baseType: !552, size: 64, offset: 2432)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1193, file: !940, line: 482, baseType: !1281, size: 2816, offset: 2496)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 2816, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 44)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1193, file: !940, line: 488, baseType: !1285, size: 256, offset: 5312)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1286, line: 60, size: 256, elements: !1287)
!1286 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1285, file: !1286, line: 61, baseType: !1289, size: 256)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 256, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 4)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1193, file: !940, line: 490, baseType: !1293, size: 64, offset: 5568)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !940, line: 490, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1193, file: !940, line: 493, baseType: !1296, size: 896, offset: 5632)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1297, line: 53, baseType: !1298)
!1297 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1297, line: 13, size: 896, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303, !1306, !1307, !1314, !1315, !1335, !1336, !1337}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1298, file: !1297, line: 18, baseType: !319, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1298, file: !1297, line: 28, baseType: !990, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1298, file: !1297, line: 31, baseType: !984, size: 256, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1298, file: !1297, line: 32, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1297, line: 32, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1298, file: !1297, line: 37, baseType: !361, size: 16, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1298, file: !1297, line: 40, baseType: !1308, size: 192, offset: 512)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1309, line: 53, size: 192, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1308, file: !1309, line: 54, baseType: !988, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1308, file: !1309, line: 55, baseType: !474, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1308, file: !1309, line: 59, baseType: !461, size: 128, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1298, file: !1297, line: 41, baseType: !298, size: 64, offset: 704)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1298, file: !1297, line: 42, baseType: !1316, size: 64, offset: 768)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1319, line: 13, size: 896, elements: !1320)
!1319 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1318, file: !1319, line: 14, baseType: !298, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1318, file: !1319, line: 15, baseType: !552, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1318, file: !1319, line: 17, baseType: !552, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1318, file: !1319, line: 17, baseType: !552, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1318, file: !1319, line: 19, baseType: !450, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1318, file: !1319, line: 21, baseType: !450, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1318, file: !1319, line: 22, baseType: !450, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1318, file: !1319, line: 23, baseType: !450, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1318, file: !1319, line: 24, baseType: !450, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1318, file: !1319, line: 25, baseType: !450, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1318, file: !1319, line: 26, baseType: !450, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1318, file: !1319, line: 27, baseType: !450, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1318, file: !1319, line: 28, baseType: !450, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1318, file: !1319, line: 29, baseType: !450, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1298, file: !1297, line: 44, baseType: !964, size: 32, offset: 832)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1298, file: !1297, line: 50, baseType: !359, size: 16, offset: 864)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1298, file: !1297, line: 51, baseType: !310, size: 16, offset: 880)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1193, file: !940, line: 495, baseType: !552, size: 64, offset: 6528)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1193, file: !940, line: 497, baseType: !1340, size: 64, offset: 6592)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !940, line: 381, size: 384, elements: !1342)
!1342 = !{!1343, !1344, !2447}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1341, file: !940, line: 382, baseType: !964, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1341, file: !940, line: 383, baseType: !1345, size: 128, offset: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !940, line: 376, size: 128, elements: !1346)
!1346 = !{!1347, !2445}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1345, file: !940, line: 377, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1350, line: 640, size: 48640, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !{!1352, !1358, !1360, !1361, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1378, !1396, !1407, !1490, !1491, !1492, !1503, !1504, !1506, !1507, !1508, !1509, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1591, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1629, !1631, !1632, !1633, !1645, !1646, !1647, !1648, !1649, !1650, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1674, !1679, !1863, !1864, !1865, !1866, !1870, !1873, !1876, !1879, !1882, !1886, !1987, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2033, !2034, !2035, !2036, !2037, !2042, !2043, !2044, !2047, !2048, !2051, !2054, !2057, !2060, !2103, !2106, !2107, !2186, !2187, !2190, !2191, !2194, !2195, !2196, !2200, !2201, !2202, !2215, !2216, !2217, !2227, !2232, !2235, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1349, file: !1350, line: 646, baseType: !1353, size: 128)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1354, line: 56, size: 128, elements: !1355)
!1354 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1353, file: !1354, line: 57, baseType: !552, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1353, file: !1354, line: 58, baseType: !316, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1349, file: !1350, line: 649, baseType: !1359, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !450)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1349, file: !1350, line: 657, baseType: !298, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1349, file: !1350, line: 658, baseType: !1362, size: 32, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1363, line: 113, baseType: !1364)
!1363 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1363, line: 111, size: 32, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1364, file: !1363, line: 112, baseType: !964, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1349, file: !1350, line: 660, baseType: !7, size: 32, offset: 288)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1349, file: !1350, line: 661, baseType: !7, size: 32, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1349, file: !1350, line: 684, baseType: !315, size: 32, offset: 352)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1349, file: !1350, line: 686, baseType: !315, size: 32, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1349, file: !1350, line: 687, baseType: !315, size: 32, offset: 416)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1349, file: !1350, line: 688, baseType: !315, size: 32, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1349, file: !1350, line: 689, baseType: !7, size: 32, offset: 480)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1349, file: !1350, line: 691, baseType: !1375, size: 64, offset: 512)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1350, line: 691, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1349, file: !1350, line: 692, baseType: !1379, size: 832, offset: 576)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1350, line: 451, size: 832, elements: !1380)
!1380 = !{!1381, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1379, file: !1350, line: 453, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1350, line: 325, size: 128, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1382, file: !1350, line: 326, baseType: !552, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1382, file: !1350, line: 327, baseType: !316, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1379, file: !1350, line: 454, baseType: !977, size: 192, align: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1379, file: !1350, line: 455, baseType: !461, size: 128, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1379, file: !1350, line: 456, baseType: !7, size: 32, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1379, file: !1350, line: 458, baseType: !319, size: 64, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1379, file: !1350, line: 459, baseType: !319, size: 64, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1379, file: !1350, line: 460, baseType: !319, size: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1379, file: !1350, line: 461, baseType: !319, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1379, file: !1350, line: 463, baseType: !319, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1379, file: !1350, line: 465, baseType: !1395, offset: 832)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1350, line: 415, elements: !488)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1349, file: !1350, line: 693, baseType: !1397, size: 384, offset: 1408)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1350, line: 489, size: 384, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1397, file: !1350, line: 490, baseType: !461, size: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1397, file: !1350, line: 491, baseType: !552, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1397, file: !1350, line: 492, baseType: !552, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1397, file: !1350, line: 493, baseType: !7, size: 32, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1397, file: !1350, line: 494, baseType: !361, size: 16, offset: 288)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1397, file: !1350, line: 495, baseType: !361, size: 16, offset: 304)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1397, file: !1350, line: 497, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1349, file: !1350, line: 697, baseType: !1408, size: 1792, offset: 1792)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1350, line: 507, size: 1792, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1487, !1488}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1408, file: !1350, line: 508, baseType: !977, size: 192, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1408, file: !1350, line: 515, baseType: !319, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1408, file: !1350, line: 516, baseType: !319, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1408, file: !1350, line: 517, baseType: !319, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1408, file: !1350, line: 518, baseType: !319, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1408, file: !1350, line: 519, baseType: !319, size: 64, offset: 448)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1408, file: !1350, line: 526, baseType: !994, size: 64, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1408, file: !1350, line: 527, baseType: !319, size: 64, offset: 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1408, file: !1350, line: 528, baseType: !7, size: 32, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1408, file: !1350, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1408, file: !1350, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1408, file: !1350, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1408, file: !1350, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1408, file: !1350, line: 563, baseType: !1424, size: 512, offset: 704)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1425)
!1425 = !{!1426, !1434, !1435, !1440, !1483, !1484, !1485, !1486}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1424, file: !191, line: 119, baseType: !1427, size: 256)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1428, line: 9, size: 256, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1427, file: !1428, line: 10, baseType: !977, size: 192, align: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1427, file: !1428, line: 11, baseType: !1432, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1433, line: 29, baseType: !994)
!1433 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1424, file: !191, line: 120, baseType: !1432, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1424, file: !191, line: 121, baseType: !1436, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!190, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1424, file: !191, line: 122, baseType: !1441, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1443)
!1443 = !{!1444, !1464, !1465, !1468, !1473, !1474, !1478, !1482}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1442, file: !191, line: 160, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1446, file: !191, line: 215, baseType: !997)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1446, file: !191, line: 216, baseType: !7, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1446, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1446, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1446, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1446, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1446, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1446, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1446, file: !191, line: 233, baseType: !1432, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1446, file: !191, line: 234, baseType: !1439, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1446, file: !191, line: 235, baseType: !1432, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1446, file: !191, line: 236, baseType: !1439, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1446, file: !191, line: 237, baseType: !1461, size: 4096, offset: 512)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1442, size: 4096, elements: !1462)
!1462 = !{!1463}
!1463 = !DISubrange(count: 8)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1442, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1442, file: !191, line: 162, baseType: !1466, size: 32, offset: 96)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !297, line: 27, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !448, line: 96, baseType: !315)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1442, file: !191, line: 163, baseType: !1469, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !616, line: 276, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !616, line: 276, size: 32, elements: !1471)
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1470, file: !616, line: 276, baseType: !620, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1442, file: !191, line: 164, baseType: !1439, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1442, file: !191, line: 165, baseType: !1475, size: 128, offset: 256)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1428, line: 14, size: 128, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1475, file: !1428, line: 15, baseType: !969, size: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1442, file: !191, line: 166, baseType: !1479, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!1432}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1442, file: !191, line: 167, baseType: !1432, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1424, file: !191, line: 123, baseType: !303, size: 8, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1424, file: !191, line: 124, baseType: !303, size: 8, offset: 456)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1424, file: !191, line: 125, baseType: !303, size: 8, offset: 464)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1424, file: !191, line: 126, baseType: !303, size: 8, offset: 472)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1408, file: !1350, line: 572, baseType: !1424, size: 512, offset: 1216)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1408, file: !1350, line: 580, baseType: !1489, size: 64, offset: 1728)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1349, file: !1350, line: 721, baseType: !7, size: 32, offset: 3584)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1349, file: !1350, line: 722, baseType: !315, size: 32, offset: 3616)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1349, file: !1350, line: 723, baseType: !1493, size: 64, offset: 3648)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1496, line: 17, baseType: !1497)
!1496 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1496, line: 17, size: 64, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1497, file: !1496, line: 17, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 1)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1349, file: !1350, line: 724, baseType: !1495, size: 64, offset: 3712)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1349, file: !1350, line: 749, baseType: !1505, offset: 3776)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1350, line: 290, elements: !488)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1349, file: !1350, line: 751, baseType: !461, size: 128, offset: 3776)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1349, file: !1350, line: 757, baseType: !1189, size: 64, offset: 3904)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1349, file: !1350, line: 758, baseType: !1189, size: 64, offset: 3968)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1349, file: !1350, line: 761, baseType: !1510, size: 320, offset: 4032)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1286, line: 34, size: 320, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1510, file: !1286, line: 35, baseType: !319, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1510, file: !1286, line: 36, baseType: !1514, size: 256, offset: 64)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 256, elements: !1290)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1349, file: !1350, line: 766, baseType: !315, size: 32, offset: 4352)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1349, file: !1350, line: 767, baseType: !315, size: 32, offset: 4384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1349, file: !1350, line: 768, baseType: !315, size: 32, offset: 4416)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1349, file: !1350, line: 770, baseType: !315, size: 32, offset: 4448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1349, file: !1350, line: 772, baseType: !552, size: 64, offset: 4480)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1349, file: !1350, line: 775, baseType: !7, size: 32, offset: 4544)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1349, file: !1350, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1349, file: !1350, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1349, file: !1350, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1349, file: !1350, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1349, file: !1350, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1349, file: !1350, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1349, file: !1350, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1349, file: !1350, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1349, file: !1350, line: 831, baseType: !552, size: 64, offset: 4672)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1349, file: !1350, line: 833, baseType: !1531, size: 384, offset: 4736)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1532)
!1532 = !{!1533, !1538}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1531, file: !196, line: 26, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!450, !1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1531, file: !196, line: 27, baseType: !1539, size: 320, offset: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1531, file: !196, line: 27, size: 320, elements: !1540)
!1540 = !{!1541, !1551, !1576}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1539, file: !196, line: 36, baseType: !1542, size: 320)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !196, line: 29, size: 320, elements: !1543)
!1543 = !{!1544, !1546, !1547, !1548, !1549, !1550}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1542, file: !196, line: 30, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1542, file: !196, line: 31, baseType: !316, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !196, line: 32, baseType: !316, size: 32, offset: 96)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1542, file: !196, line: 33, baseType: !316, size: 32, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1542, file: !196, line: 34, baseType: !319, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1542, file: !196, line: 35, baseType: !1545, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1539, file: !196, line: 46, baseType: !1552, size: 192)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !196, line: 38, size: 192, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1575}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1552, file: !196, line: 39, baseType: !1466, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1552, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !196, line: 41, baseType: !1557, size: 64, offset: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !196, line: 41, size: 64, elements: !1558)
!1558 = !{!1559, !1567}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1557, file: !196, line: 42, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1562, line: 7, size: 128, elements: !1563)
!1562 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1563 = !{!1564, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1561, file: !1562, line: 8, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !448, line: 93, baseType: !750)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1561, file: !1562, line: 9, baseType: !750, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1557, file: !196, line: 43, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1570, line: 7, size: 64, elements: !1571)
!1570 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1574}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1569, file: !1570, line: 8, baseType: !1573, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1570, line: 5, baseType: !313)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1569, file: !1570, line: 9, baseType: !313, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1552, file: !196, line: 45, baseType: !319, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1539, file: !196, line: 54, baseType: !1577, size: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !196, line: 48, size: 256, elements: !1578)
!1578 = !{!1579, !1587, !1588, !1589, !1590}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1577, file: !196, line: 49, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1582, line: 36, size: 64, elements: !1583)
!1582 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1581, file: !1582, line: 37, baseType: !315, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1581, file: !1582, line: 38, baseType: !312, size: 16, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1581, file: !1582, line: 39, baseType: !312, size: 16, offset: 48)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1577, file: !196, line: 50, baseType: !315, size: 32, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1577, file: !196, line: 51, baseType: !315, size: 32, offset: 96)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1577, file: !196, line: 52, baseType: !552, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1577, file: !196, line: 53, baseType: !552, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1349, file: !1350, line: 835, baseType: !1592, size: 32, offset: 5120)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !297, line: 22, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !448, line: 28, baseType: !315)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1349, file: !1350, line: 836, baseType: !1592, size: 32, offset: 5152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1349, file: !1350, line: 840, baseType: !552, size: 64, offset: 5184)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1349, file: !1350, line: 849, baseType: !1348, size: 64, offset: 5248)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1349, file: !1350, line: 852, baseType: !1348, size: 64, offset: 5312)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1349, file: !1350, line: 857, baseType: !461, size: 128, offset: 5376)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1349, file: !1350, line: 858, baseType: !461, size: 128, offset: 5504)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1349, file: !1350, line: 859, baseType: !1348, size: 64, offset: 5632)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1349, file: !1350, line: 867, baseType: !461, size: 128, offset: 5696)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1349, file: !1350, line: 868, baseType: !461, size: 128, offset: 5824)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1349, file: !1350, line: 871, baseType: !1604, size: 64, offset: 5952)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1612, !1613, !1620, !1621}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1605, file: !217, line: 61, baseType: !1362, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1605, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1605, file: !217, line: 63, baseType: !474, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1605, file: !217, line: 65, baseType: !1611, size: 256, offset: 64)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 256, elements: !1290)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1605, file: !217, line: 66, baseType: !852, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1605, file: !217, line: 68, baseType: !1614, size: 128, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1615, line: 40, baseType: !1616)
!1615 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1615, line: 36, size: 128, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1616, file: !1615, line: 37, baseType: !474)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1616, file: !1615, line: 38, baseType: !461, size: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1605, file: !217, line: 69, baseType: !593, size: 128, align: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1605, file: !217, line: 70, baseType: !1622, size: 128, offset: 640)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1623, size: 128, elements: !1501)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1623, file: !217, line: 55, baseType: !315, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1623, file: !217, line: 56, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1349, file: !1350, line: 872, baseType: !1630, size: 512, offset: 6016)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 512, elements: !1290)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1349, file: !1350, line: 873, baseType: !461, size: 128, offset: 6528)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1349, file: !1350, line: 874, baseType: !461, size: 128, offset: 6656)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1349, file: !1350, line: 876, baseType: !1634, size: 64, offset: 6784)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1636, line: 26, size: 192, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1635, file: !1636, line: 27, baseType: !7, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1635, file: !1636, line: 28, baseType: !1640, size: 128, offset: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1641, line: 43, size: 128, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1640, file: !1641, line: 44, baseType: !997)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1640, file: !1641, line: 45, baseType: !461, size: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1349, file: !1350, line: 879, baseType: !922, size: 64, offset: 6848)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1349, file: !1350, line: 882, baseType: !922, size: 64, offset: 6912)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1349, file: !1350, line: 884, baseType: !319, size: 64, offset: 6976)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1349, file: !1350, line: 885, baseType: !319, size: 64, offset: 7040)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1349, file: !1350, line: 890, baseType: !319, size: 64, offset: 7104)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1349, file: !1350, line: 891, baseType: !1651, size: 128, offset: 7168)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1350, line: 242, size: 128, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1651, file: !1350, line: 244, baseType: !319, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1651, file: !1350, line: 245, baseType: !319, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1651, file: !1350, line: 246, baseType: !997, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1349, file: !1350, line: 900, baseType: !552, size: 64, offset: 7296)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1349, file: !1350, line: 901, baseType: !552, size: 64, offset: 7360)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1349, file: !1350, line: 904, baseType: !319, size: 64, offset: 7424)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1349, file: !1350, line: 907, baseType: !319, size: 64, offset: 7488)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1349, file: !1350, line: 910, baseType: !552, size: 64, offset: 7552)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1349, file: !1350, line: 911, baseType: !552, size: 64, offset: 7616)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1349, file: !1350, line: 914, baseType: !1663, size: 640, offset: 7680)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1664, line: 123, size: 640, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1672, !1673}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1663, file: !1664, line: 124, baseType: !1667, size: 576)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1668, size: 576, elements: !515)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1664, line: 108, size: 192, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1668, file: !1664, line: 109, baseType: !319, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1668, file: !1664, line: 110, baseType: !1475, size: 128, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1663, file: !1664, line: 125, baseType: !7, size: 32, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1663, file: !1664, line: 126, baseType: !7, size: 32, offset: 608)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1349, file: !1350, line: 917, baseType: !1675, size: 192, offset: 8320)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1664, line: 134, size: 192, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1675, file: !1664, line: 135, baseType: !593, size: 128, align: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1675, file: !1664, line: 136, baseType: !7, size: 32, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1349, file: !1350, line: 923, baseType: !1680, size: 64, offset: 8512)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1683, line: 111, size: 1280, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1704, !1705, !1706, !1707, !1708, !1709, !1816, !1817, !1818, !1819, !1845, !1848, !1858}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1682, file: !1683, line: 112, baseType: !964, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1682, file: !1683, line: 120, baseType: !655, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1682, file: !1683, line: 121, baseType: !663, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1682, file: !1683, line: 122, baseType: !655, size: 32, offset: 96)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1682, file: !1683, line: 123, baseType: !663, size: 32, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1682, file: !1683, line: 124, baseType: !655, size: 32, offset: 160)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1682, file: !1683, line: 125, baseType: !663, size: 32, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1682, file: !1683, line: 126, baseType: !655, size: 32, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1682, file: !1683, line: 127, baseType: !663, size: 32, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1682, file: !1683, line: 128, baseType: !7, size: 32, offset: 288)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1682, file: !1683, line: 129, baseType: !1696, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1697, line: 26, baseType: !1698)
!1697 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1697, line: 24, size: 64, elements: !1699)
!1699 = !{!1700}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1698, file: !1697, line: 25, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DISubrange(count: 2)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1682, file: !1683, line: 130, baseType: !1696, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1682, file: !1683, line: 131, baseType: !1696, size: 64, offset: 448)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1682, file: !1683, line: 132, baseType: !1696, size: 64, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1682, file: !1683, line: 133, baseType: !1696, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1682, file: !1683, line: 135, baseType: !307, size: 8, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1682, file: !1683, line: 137, baseType: !1710, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1712, line: 189, size: 1664, elements: !1713)
!1712 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1713 = !{!1714, !1715, !1718, !1723, !1724, !1727, !1728, !1733, !1734, !1735, !1736, !1738, !1739, !1740, !1741, !1742, !1780, !1801}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1711, file: !1712, line: 190, baseType: !1362, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1711, file: !1712, line: 191, baseType: !1716, size: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1712, line: 28, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !297, line: 98, baseType: !313)
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1712, line: 192, baseType: !1719, size: 192, offset: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1712, line: 192, size: 192, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1719, file: !1712, line: 193, baseType: !461, size: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1719, file: !1712, line: 194, baseType: !977, size: 192, align: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1711, file: !1712, line: 199, baseType: !984, size: 256, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1711, file: !1712, line: 200, baseType: !1725, size: 64, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1712, line: 200, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1711, file: !1712, line: 201, baseType: !298, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1712, line: 202, baseType: !1729, size: 64, offset: 640)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1712, line: 202, size: 64, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1729, file: !1712, line: 203, baseType: !756, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1729, file: !1712, line: 204, baseType: !756, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1711, file: !1712, line: 206, baseType: !756, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1711, file: !1712, line: 207, baseType: !655, size: 32, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1711, file: !1712, line: 208, baseType: !663, size: 32, offset: 800)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1711, file: !1712, line: 209, baseType: !1737, size: 32, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1712, line: 31, baseType: !776)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1711, file: !1712, line: 210, baseType: !361, size: 16, offset: 864)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1711, file: !1712, line: 211, baseType: !361, size: 16, offset: 880)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1711, file: !1712, line: 215, baseType: !312, size: 16, offset: 896)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1711, file: !1712, line: 222, baseType: !552, size: 64, offset: 960)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1712, line: 239, baseType: !1743, size: 320, offset: 1024)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1712, line: 239, size: 320, elements: !1744)
!1744 = !{!1745, !1772}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1743, file: !1712, line: 240, baseType: !1746, size: 320)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1712, line: 108, size: 320, elements: !1747)
!1747 = !{!1748, !1749, !1761, !1764, !1771}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1746, file: !1712, line: 110, baseType: !552, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !1712, line: 111, baseType: !1750, size: 64, offset: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !1712, line: 111, size: 64, elements: !1751)
!1751 = !{!1752, !1760}
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !1712, line: 112, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !1712, line: 112, size: 64, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1753, file: !1712, line: 114, baseType: !359, size: 16)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1753, file: !1712, line: 115, baseType: !1757, size: 48, offset: 16)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 48, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 6)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1750, file: !1712, line: 121, baseType: !552, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1746, file: !1712, line: 123, baseType: !1762, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1712, line: 96, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1746, file: !1712, line: 124, baseType: !1765, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1712, line: 102, size: 192, elements: !1767)
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1766, file: !1712, line: 103, baseType: !593, size: 128, align: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1766, file: !1712, line: 104, baseType: !1362, size: 32, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1766, file: !1712, line: 105, baseType: !707, size: 8, offset: 160)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1746, file: !1712, line: 125, baseType: !330, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !1712, line: 241, baseType: !1773, size: 320)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !1712, line: 241, size: 320, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1773, file: !1712, line: 242, baseType: !552, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1773, file: !1712, line: 243, baseType: !552, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1773, file: !1712, line: 244, baseType: !1762, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1773, file: !1712, line: 245, baseType: !1765, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1773, file: !1712, line: 246, baseType: !352, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1712, line: 254, baseType: !1781, size: 256, offset: 1344)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1712, line: 254, size: 256, elements: !1782)
!1782 = !{!1783, !1789}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1781, file: !1712, line: 255, baseType: !1784, size: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1712, line: 128, size: 256, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1784, file: !1712, line: 129, baseType: !298, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1784, file: !1712, line: 130, baseType: !1788, size: 256)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !1290)
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !1712, line: 256, baseType: !1790, size: 256)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !1712, line: 256, size: 256, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1790, file: !1712, line: 258, baseType: !461, size: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1790, file: !1712, line: 259, baseType: !1794, size: 128, offset: 128)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1795, line: 22, size: 128, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1800}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1794, file: !1795, line: 23, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1795, line: 23, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1794, file: !1795, line: 24, baseType: !552, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1711, file: !1712, line: 274, baseType: !1802, size: 64, offset: 1600)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1712, line: 170, size: 192, elements: !1804)
!1804 = !{!1805, !1814, !1815}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1803, file: !1712, line: 171, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1712, line: 165, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!315, !1710, !1810, !1812, !1710}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1763)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1803, file: !1712, line: 172, baseType: !1710, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1803, file: !1712, line: 173, baseType: !1762, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1682, file: !1683, line: 138, baseType: !1710, size: 64, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1682, file: !1683, line: 139, baseType: !1710, size: 64, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1682, file: !1683, line: 140, baseType: !1710, size: 64, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1682, file: !1683, line: 145, baseType: !1820, size: 64, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1822, line: 13, size: 896, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1821, file: !1822, line: 14, baseType: !1362, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1821, file: !1822, line: 15, baseType: !964, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1821, file: !1822, line: 16, baseType: !964, size: 32, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1821, file: !1822, line: 21, baseType: !988, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1821, file: !1822, line: 27, baseType: !552, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1821, file: !1822, line: 28, baseType: !552, size: 64, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1821, file: !1822, line: 29, baseType: !988, size: 64, offset: 320)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1821, file: !1822, line: 32, baseType: !856, size: 128, offset: 384)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1821, file: !1822, line: 33, baseType: !655, size: 32, offset: 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1821, file: !1822, line: 37, baseType: !988, size: 64, offset: 576)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1821, file: !1822, line: 44, baseType: !1835, size: 256, offset: 640)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1836, line: 15, size: 256, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1835, file: !1836, line: 16, baseType: !997)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1835, file: !1836, line: 18, baseType: !315, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1835, file: !1836, line: 19, baseType: !315, size: 32, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1835, file: !1836, line: 20, baseType: !315, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1835, file: !1836, line: 21, baseType: !315, size: 32, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1835, file: !1836, line: 22, baseType: !552, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1835, file: !1836, line: 23, baseType: !552, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1682, file: !1683, line: 146, baseType: !1846, size: 64, offset: 1024)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !656, line: 18, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1682, file: !1683, line: 147, baseType: !1849, size: 64, offset: 1088)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1683, line: 25, size: 64, elements: !1851)
!1851 = !{!1852, !1853, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1850, file: !1683, line: 26, baseType: !964, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1850, file: !1683, line: 27, baseType: !315, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1850, file: !1683, line: 28, baseType: !1855, offset: 64)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, elements: !1856)
!1856 = !{!1857}
!1857 = !DISubrange(count: 0)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1683, line: 149, baseType: !1859, size: 128, offset: 1152)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 149, size: 128, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1859, file: !1683, line: 150, baseType: !315, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1859, file: !1683, line: 151, baseType: !593, size: 128, align: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1349, file: !1350, line: 926, baseType: !1680, size: 64, offset: 8576)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1349, file: !1350, line: 929, baseType: !1680, size: 64, offset: 8640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1349, file: !1350, line: 933, baseType: !1710, size: 64, offset: 8704)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1349, file: !1350, line: 943, baseType: !1867, size: 128, offset: 8768)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 128, elements: !1868)
!1868 = !{!1869}
!1869 = !DISubrange(count: 16)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1349, file: !1350, line: 945, baseType: !1871, size: 64, offset: 8896)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1350, line: 49, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1349, file: !1350, line: 956, baseType: !1874, size: 64, offset: 8960)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1350, line: 45, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1349, file: !1350, line: 959, baseType: !1877, size: 64, offset: 9024)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1350, line: 959, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1349, file: !1350, line: 962, baseType: !1880, size: 64, offset: 9088)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1350, line: 66, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1349, file: !1350, line: 966, baseType: !1883, size: 64, offset: 9152)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1885, line: 35, flags: DIFlagFwdDecl)
!1885 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1349, file: !1350, line: 969, baseType: !1887, size: 64, offset: 9216)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1889, line: 82, size: 7296, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1926, !1935, !1936, !1938, !1939, !1940, !1943, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1973, !1974, !1981, !1982, !1983, !1984, !1985, !1986}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1888, file: !1889, line: 83, baseType: !1362, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1888, file: !1889, line: 84, baseType: !964, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1888, file: !1889, line: 85, baseType: !315, size: 32, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1888, file: !1889, line: 86, baseType: !461, size: 128, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1888, file: !1889, line: 88, baseType: !1614, size: 128, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1888, file: !1889, line: 91, baseType: !1348, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1888, file: !1889, line: 94, baseType: !1898, size: 192, offset: 448)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1899, line: 30, size: 192, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1898, file: !1899, line: 31, baseType: !461, size: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1898, file: !1899, line: 32, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1904, line: 25, baseType: !1905)
!1904 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1904, line: 23, size: 64, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1905, file: !1904, line: 24, baseType: !1500, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1888, file: !1889, line: 97, baseType: !852, size: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1888, file: !1889, line: 100, baseType: !315, size: 32, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1888, file: !1889, line: 106, baseType: !315, size: 32, offset: 736)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1888, file: !1889, line: 107, baseType: !1348, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1888, file: !1889, line: 110, baseType: !315, size: 32, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1888, file: !1889, line: 111, baseType: !7, size: 32, offset: 864)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1888, file: !1889, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1888, file: !1889, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1888, file: !1889, line: 128, baseType: !315, size: 32, offset: 928)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1888, file: !1889, line: 129, baseType: !461, size: 128, offset: 960)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1888, file: !1889, line: 132, baseType: !1424, size: 512, offset: 1088)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1888, file: !1889, line: 133, baseType: !1432, size: 64, offset: 1600)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1888, file: !1889, line: 140, baseType: !1921, size: 256, offset: 1664)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1922, size: 256, elements: !1702)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1889, line: 38, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1922, file: !1889, line: 39, baseType: !319, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1922, file: !1889, line: 40, baseType: !319, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1888, file: !1889, line: 146, baseType: !1927, size: 192, offset: 1920)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1889, line: 66, size: 192, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1927, file: !1889, line: 67, baseType: !1930, size: 192)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1889, line: 47, size: 192, elements: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1930, file: !1889, line: 48, baseType: !990, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1930, file: !1889, line: 49, baseType: !990, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1930, file: !1889, line: 50, baseType: !990, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1888, file: !1889, line: 150, baseType: !1663, size: 640, offset: 2112)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1888, file: !1889, line: 153, baseType: !1937, size: 256, offset: 2752)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1604, size: 256, elements: !1290)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1888, file: !1889, line: 159, baseType: !1604, size: 64, offset: 3008)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1888, file: !1889, line: 162, baseType: !315, size: 32, offset: 3072)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1888, file: !1889, line: 164, baseType: !1941, size: 64, offset: 3136)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1889, line: 164, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1888, file: !1889, line: 175, baseType: !1944, size: 32, offset: 3200)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !616, line: 805, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !616, line: 798, size: 32, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1945, file: !616, line: 803, baseType: !615, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1945, file: !616, line: 804, baseType: !474, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1888, file: !1889, line: 176, baseType: !319, size: 64, offset: 3264)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1888, file: !1889, line: 176, baseType: !319, size: 64, offset: 3328)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1888, file: !1889, line: 176, baseType: !319, size: 64, offset: 3392)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1888, file: !1889, line: 176, baseType: !319, size: 64, offset: 3456)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1888, file: !1889, line: 177, baseType: !319, size: 64, offset: 3520)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1888, file: !1889, line: 178, baseType: !319, size: 64, offset: 3584)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1888, file: !1889, line: 179, baseType: !1651, size: 128, offset: 3648)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1888, file: !1889, line: 180, baseType: !552, size: 64, offset: 3776)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1888, file: !1889, line: 180, baseType: !552, size: 64, offset: 3840)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1888, file: !1889, line: 180, baseType: !552, size: 64, offset: 3904)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1888, file: !1889, line: 180, baseType: !552, size: 64, offset: 3968)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1888, file: !1889, line: 181, baseType: !552, size: 64, offset: 4032)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1888, file: !1889, line: 181, baseType: !552, size: 64, offset: 4096)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1888, file: !1889, line: 181, baseType: !552, size: 64, offset: 4160)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1888, file: !1889, line: 181, baseType: !552, size: 64, offset: 4224)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1888, file: !1889, line: 182, baseType: !552, size: 64, offset: 4288)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1888, file: !1889, line: 182, baseType: !552, size: 64, offset: 4352)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1888, file: !1889, line: 182, baseType: !552, size: 64, offset: 4416)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1888, file: !1889, line: 182, baseType: !552, size: 64, offset: 4480)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1888, file: !1889, line: 183, baseType: !552, size: 64, offset: 4544)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1888, file: !1889, line: 183, baseType: !552, size: 64, offset: 4608)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1888, file: !1889, line: 184, baseType: !1971, offset: 4672)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1972, line: 12, elements: !488)
!1972 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1888, file: !1889, line: 192, baseType: !321, size: 64, offset: 4672)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1888, file: !1889, line: 203, baseType: !1975, size: 2048, offset: 4736)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1976, size: 2048, elements: !1868)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1977, line: 43, size: 128, elements: !1978)
!1977 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1976, file: !1977, line: 44, baseType: !551, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1976, file: !1977, line: 45, baseType: !551, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1888, file: !1889, line: 220, baseType: !707, size: 8, offset: 6784)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1888, file: !1889, line: 221, baseType: !312, size: 16, offset: 6800)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1888, file: !1889, line: 222, baseType: !312, size: 16, offset: 6816)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1888, file: !1889, line: 224, baseType: !1189, size: 64, offset: 6848)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1888, file: !1889, line: 227, baseType: !1308, size: 192, offset: 6912)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1888, file: !1889, line: 233, baseType: !1308, size: 192, offset: 7104)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1349, file: !1350, line: 970, baseType: !1988, size: 64, offset: 9280)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1889, line: 20, size: 16576, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1989, file: !1889, line: 21, baseType: !474)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1989, file: !1889, line: 22, baseType: !1362, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1989, file: !1889, line: 23, baseType: !1614, size: 128, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1989, file: !1889, line: 24, baseType: !1995, size: 16384, offset: 192)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1996, size: 16384, elements: !519)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1899, line: 49, size: 256, elements: !1997)
!1997 = !{!1998}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1996, file: !1899, line: 50, baseType: !1999, size: 256)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1899, line: 35, size: 256, elements: !2000)
!2000 = !{!2001, !2008, !2009, !2015}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1999, file: !1899, line: 37, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2003, line: 19, baseType: !2004)
!2003 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2003, line: 18, baseType: !2006)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !315}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1999, file: !1899, line: 38, baseType: !552, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1999, file: !1899, line: 44, baseType: !2010, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2003, line: 22, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2003, line: 21, baseType: !2013)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1999, file: !1899, line: 46, baseType: !1903, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1349, file: !1350, line: 971, baseType: !1903, size: 64, offset: 9344)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1349, file: !1350, line: 972, baseType: !1903, size: 64, offset: 9408)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1349, file: !1350, line: 974, baseType: !1903, size: 64, offset: 9472)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1349, file: !1350, line: 975, baseType: !1898, size: 192, offset: 9536)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1349, file: !1350, line: 976, baseType: !552, size: 64, offset: 9728)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1349, file: !1350, line: 977, baseType: !549, size: 64, offset: 9792)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1349, file: !1350, line: 978, baseType: !7, size: 32, offset: 9856)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1349, file: !1350, line: 980, baseType: !596, size: 64, offset: 9920)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1349, file: !1350, line: 989, baseType: !2025, size: 128, offset: 9984)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2026, line: 35, size: 128, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !{!2028, !2029, !2030}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2025, file: !2026, line: 36, baseType: !315, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2025, file: !2026, line: 37, baseType: !964, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2025, file: !2026, line: 38, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2026, line: 23, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1349, file: !1350, line: 992, baseType: !319, size: 64, offset: 10112)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1349, file: !1350, line: 993, baseType: !319, size: 64, offset: 10176)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1349, file: !1350, line: 996, baseType: !474, offset: 10240)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1349, file: !1350, line: 999, baseType: !997, offset: 10240)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1349, file: !1350, line: 1001, baseType: !2038, size: 64, offset: 10240)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1350, line: 636, size: 64, elements: !2039)
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2038, file: !1350, line: 637, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1349, file: !1350, line: 1005, baseType: !969, size: 128, offset: 10304)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1349, file: !1350, line: 1007, baseType: !1348, size: 64, offset: 10432)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1349, file: !1350, line: 1009, baseType: !2045, size: 64, offset: 10496)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1350, line: 1009, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1349, file: !1350, line: 1043, baseType: !298, size: 64, offset: 10560)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1349, file: !1350, line: 1046, baseType: !2049, size: 64, offset: 10624)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1350, line: 41, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1349, file: !1350, line: 1050, baseType: !2052, size: 64, offset: 10688)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1350, line: 42, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1349, file: !1350, line: 1054, baseType: !2055, size: 64, offset: 10752)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1350, line: 55, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1349, file: !1350, line: 1056, baseType: !2058, size: 64, offset: 10816)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1350, line: 40, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1349, file: !1350, line: 1058, baseType: !2061, size: 64, offset: 10880)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2063, line: 99, size: 704, elements: !2064)
!2063 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2070, !2071, !2090, !2091}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2062, file: !2063, line: 100, baseType: !988, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2062, file: !2063, line: 101, baseType: !964, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2062, file: !2063, line: 102, baseType: !964, size: 32, offset: 96)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2062, file: !2063, line: 105, baseType: !474, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2062, file: !2063, line: 107, baseType: !361, size: 16, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2062, file: !2063, line: 109, baseType: !956, size: 128, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2062, file: !2063, line: 110, baseType: !2072, size: 64, offset: 320)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2063, line: 73, size: 448, elements: !2074)
!2074 = !{!2075, !2078, !2079, !2084, !2089}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2073, file: !2063, line: 74, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2063, line: 74, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2073, file: !2063, line: 75, baseType: !2061, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2063, line: 83, baseType: !2080, size: 128, offset: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2063, line: 83, size: 128, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2080, file: !2063, line: 84, baseType: !461, size: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2080, file: !2063, line: 85, baseType: !1150, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !2063, line: 87, baseType: !2085, size: 128, offset: 256)
!2085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2063, line: 87, size: 128, elements: !2086)
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2085, file: !2063, line: 88, baseType: !856, size: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2085, file: !2063, line: 89, baseType: !593, size: 128, align: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2073, file: !2063, line: 92, baseType: !7, size: 32, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2062, file: !2063, line: 111, baseType: !852, size: 64, offset: 384)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2062, file: !2063, line: 113, baseType: !2092, size: 256, offset: 448)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2093, line: 102, size: 256, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !{!2095, !2096, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2092, file: !2093, line: 103, baseType: !988, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2092, file: !2093, line: 104, baseType: !461, size: 128, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2092, file: !2093, line: 105, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2093, line: 21, baseType: !2099)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1349, file: !1350, line: 1061, baseType: !2104, size: 64, offset: 10944)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1350, line: 43, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1349, file: !1350, line: 1064, baseType: !552, size: 64, offset: 11008)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1349, file: !1350, line: 1065, baseType: !2108, size: 64, offset: 11072)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1899, line: 14, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1899, line: 12, size: 384, elements: !2111)
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !2110, file: !1899, line: 13, baseType: !2113, size: 384)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2110, file: !1899, line: 13, size: 384, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2113, file: !1899, line: 13, baseType: !315, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2113, file: !1899, line: 13, baseType: !315, size: 32, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2113, file: !1899, line: 13, baseType: !315, size: 32, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2113, file: !1899, line: 13, baseType: !2119, size: 256, offset: 128)
!2119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2120, line: 32, size: 256, elements: !2121)
!2120 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2127, !2140, !2146, !2155, !2175, !2180}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2119, file: !2120, line: 37, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2120, line: 34, size: 64, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2123, file: !2120, line: 35, baseType: !1593, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2123, file: !2120, line: 36, baseType: !661, size: 32, offset: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2119, file: !2120, line: 45, baseType: !2128, size: 192)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2120, line: 40, size: 192, elements: !2129)
!2129 = !{!2130, !2132, !2133, !2139}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2128, file: !2120, line: 41, baseType: !2131, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !448, line: 95, baseType: !315)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2128, file: !2120, line: 42, baseType: !315, size: 32, offset: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2128, file: !2120, line: 43, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2120, line: 11, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2120, line: 8, size: 64, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2135, file: !2120, line: 9, baseType: !315, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2135, file: !2120, line: 10, baseType: !298, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2128, file: !2120, line: 44, baseType: !315, size: 32, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2119, file: !2120, line: 52, baseType: !2141, size: 128)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2120, line: 48, size: 128, elements: !2142)
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2141, file: !2120, line: 49, baseType: !1593, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2141, file: !2120, line: 50, baseType: !661, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2141, file: !2120, line: 51, baseType: !2134, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2119, file: !2120, line: 61, baseType: !2147, size: 256)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2120, line: 55, size: 256, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2152, !2154}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2147, file: !2120, line: 56, baseType: !1593, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2147, file: !2120, line: 57, baseType: !661, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2147, file: !2120, line: 58, baseType: !315, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2147, file: !2120, line: 59, baseType: !2153, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !448, line: 94, baseType: !449)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2147, file: !2120, line: 60, baseType: !2153, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2119, file: !2120, line: 95, baseType: !2156, size: 256)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2120, line: 64, size: 256, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2156, file: !2120, line: 65, baseType: !298, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !2120, line: 77, baseType: !2160, size: 192, offset: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2156, file: !2120, line: 77, size: 192, elements: !2161)
!2161 = !{!2162, !2163, !2170}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2160, file: !2120, line: 82, baseType: !312, size: 16)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2160, file: !2120, line: 88, baseType: !2164, size: 192)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2120, line: 84, size: 192, elements: !2165)
!2165 = !{!2166, !2168, !2169}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2164, file: !2120, line: 85, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 64, elements: !1462)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2164, file: !2120, line: 86, baseType: !298, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2164, file: !2120, line: 87, baseType: !298, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2160, file: !2120, line: 93, baseType: !2171, size: 96)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2160, file: !2120, line: 90, size: 96, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2171, file: !2120, line: 91, baseType: !2167, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2171, file: !2120, line: 92, baseType: !317, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2119, file: !2120, line: 101, baseType: !2176, size: 128)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2120, line: 98, size: 128, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2176, file: !2120, line: 99, baseType: !450, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2176, file: !2120, line: 100, baseType: !315, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2119, file: !2120, line: 108, baseType: !2181, size: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2120, line: 104, size: 128, elements: !2182)
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2181, file: !2120, line: 105, baseType: !298, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2181, file: !2120, line: 106, baseType: !315, size: 32, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2181, file: !2120, line: 107, baseType: !7, size: 32, offset: 96)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1349, file: !1350, line: 1067, baseType: !1971, offset: 11136)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1349, file: !1350, line: 1099, baseType: !2188, size: 64, offset: 11136)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1350, line: 56, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1349, file: !1350, line: 1103, baseType: !461, size: 128, offset: 11200)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1349, file: !1350, line: 1104, baseType: !2192, size: 64, offset: 11328)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1350, line: 46, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1349, file: !1350, line: 1105, baseType: !1308, size: 192, offset: 11392)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1349, file: !1350, line: 1106, baseType: !7, size: 32, offset: 11584)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1349, file: !1350, line: 1109, baseType: !2197, size: 128, offset: 11648)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2198, size: 128, elements: !1702)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1350, line: 51, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1349, file: !1350, line: 1110, baseType: !1308, size: 192, offset: 11776)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1349, file: !1350, line: 1111, baseType: !461, size: 128, offset: 11968)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1349, file: !1350, line: 1173, baseType: !2203, size: 64, offset: 12096)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2205, line: 62, size: 256, align: 256, elements: !2206)
!2205 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2206 = !{!2207, !2208, !2209, !2214}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2204, file: !2205, line: 75, baseType: !317, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2204, file: !2205, line: 90, baseType: !317, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2204, file: !2205, line: 124, baseType: !2210, size: 64, offset: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2204, file: !2205, line: 109, size: 64, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2210, file: !2205, line: 110, baseType: !320, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2210, file: !2205, line: 112, baseType: !320, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2204, file: !2205, line: 144, baseType: !317, size: 32, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1349, file: !1350, line: 1174, baseType: !316, size: 32, offset: 12160)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1349, file: !1350, line: 1179, baseType: !552, size: 64, offset: 12224)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1349, file: !1350, line: 1182, baseType: !2218, size: 128, offset: 12288)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1286, line: 76, size: 128, elements: !2219)
!2219 = !{!2220, !2225, !2226}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2218, file: !1286, line: 85, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2222, line: 7, size: 64, elements: !2223)
!2222 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2221, file: !2222, line: 12, baseType: !1497, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2218, file: !1286, line: 88, baseType: !707, size: 8, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2218, file: !1286, line: 95, baseType: !707, size: 8, offset: 72)
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !1349, file: !1350, line: 1184, baseType: !2228, size: 128, offset: 12416)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1349, file: !1350, line: 1184, size: 128, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2228, file: !1350, line: 1185, baseType: !1362, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2228, file: !1350, line: 1186, baseType: !593, size: 128, align: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1349, file: !1350, line: 1190, baseType: !2233, size: 64, offset: 12544)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1350, line: 53, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1349, file: !1350, line: 1192, baseType: !2236, size: 128, offset: 12608)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1286, line: 64, size: 128, elements: !2237)
!2237 = !{!2238, !2239, !2240}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2236, file: !1286, line: 65, baseType: !938, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2236, file: !1286, line: 67, baseType: !317, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2236, file: !1286, line: 68, baseType: !317, size: 32, offset: 96)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1349, file: !1350, line: 1206, baseType: !315, size: 32, offset: 12736)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1349, file: !1350, line: 1207, baseType: !315, size: 32, offset: 12768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1349, file: !1350, line: 1209, baseType: !552, size: 64, offset: 12800)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1349, file: !1350, line: 1219, baseType: !319, size: 64, offset: 12864)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1349, file: !1350, line: 1220, baseType: !319, size: 64, offset: 12928)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1349, file: !1350, line: 1317, baseType: !315, size: 32, offset: 12992)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1349, file: !1350, line: 1319, baseType: !1348, size: 64, offset: 13056)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1349, file: !1350, line: 1322, baseType: !2249, size: 64, offset: 13120)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2251, line: 56, size: 512, elements: !2252)
!2251 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2261}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2250, file: !2251, line: 57, baseType: !2249, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2250, file: !2251, line: 58, baseType: !298, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2250, file: !2251, line: 59, baseType: !552, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2250, file: !2251, line: 60, baseType: !552, size: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2250, file: !2251, line: 61, baseType: !1037, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2250, file: !2251, line: 62, baseType: !7, size: 32, offset: 320)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2250, file: !2251, line: 63, baseType: !2260, size: 64, offset: 384)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !297, line: 153, baseType: !319)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2250, file: !2251, line: 64, baseType: !2262, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1349, file: !1350, line: 1326, baseType: !1362, size: 32, offset: 13184)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1349, file: !1350, line: 1342, baseType: !298, size: 64, offset: 13248)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1349, file: !1350, line: 1343, baseType: !320, size: 64, offset: 13312)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1349, file: !1350, line: 1344, baseType: !319, size: 64, offset: 13376)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1349, file: !1350, line: 1345, baseType: !320, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1349, file: !1350, line: 1346, baseType: !320, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1349, file: !1350, line: 1347, baseType: !320, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1349, file: !1350, line: 1348, baseType: !593, size: 128, align: 64, offset: 13504)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1349, file: !1350, line: 1358, baseType: !2273, size: 34816, offset: 13824)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2274, line: 485, size: 34816, elements: !2275)
!2274 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2275 = !{!2276, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2305, !2306, !2307, !2308, !2309, !2310, !2313, !2314, !2315}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2273, file: !2274, line: 487, baseType: !2277, size: 192)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2278, size: 192, elements: !515)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2279, line: 16, size: 64, elements: !2280)
!2279 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2278, file: !2279, line: 17, baseType: !359, size: 16)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2278, file: !2279, line: 18, baseType: !359, size: 16, offset: 16)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2278, file: !2279, line: 19, baseType: !359, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2278, file: !2279, line: 19, baseType: !359, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2278, file: !2279, line: 19, baseType: !359, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2278, file: !2279, line: 19, baseType: !359, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2278, file: !2279, line: 19, baseType: !359, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2278, file: !2279, line: 20, baseType: !359, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2278, file: !2279, line: 20, baseType: !359, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2278, file: !2279, line: 20, baseType: !359, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2278, file: !2279, line: 20, baseType: !359, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2278, file: !2279, line: 20, baseType: !359, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2278, file: !2279, line: 20, baseType: !359, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2273, file: !2274, line: 491, baseType: !552, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2273, file: !2274, line: 495, baseType: !361, size: 16, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2273, file: !2274, line: 496, baseType: !361, size: 16, offset: 272)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2273, file: !2274, line: 497, baseType: !361, size: 16, offset: 288)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2273, file: !2274, line: 498, baseType: !361, size: 16, offset: 304)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2273, file: !2274, line: 502, baseType: !552, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2273, file: !2274, line: 503, baseType: !552, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2273, file: !2274, line: 514, baseType: !2302, size: 256, offset: 448)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2303, size: 256, elements: !1290)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2274, line: 483, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2273, file: !2274, line: 516, baseType: !552, size: 64, offset: 704)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2273, file: !2274, line: 518, baseType: !552, size: 64, offset: 768)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2273, file: !2274, line: 520, baseType: !552, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2273, file: !2274, line: 521, baseType: !552, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2273, file: !2274, line: 522, baseType: !552, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2273, file: !2274, line: 528, baseType: !2311, size: 64, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2274, line: 10, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2273, file: !2274, line: 535, baseType: !552, size: 64, offset: 1088)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2273, file: !2274, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2273, file: !2274, line: 540, baseType: !2316, size: 33280, offset: 1536)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2317, line: 317, size: 33280, elements: !2318)
!2317 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2316, file: !2317, line: 330, baseType: !7, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2316, file: !2317, line: 337, baseType: !552, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2316, file: !2317, line: 348, baseType: !2322, size: 32768, offset: 512)
!2322 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2317, line: 304, size: 32768, elements: !2323)
!2323 = !{!2324, !2339, !2378, !2428, !2441}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2322, file: !2317, line: 305, baseType: !2325, size: 896)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2317, line: 12, size: 896, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2338}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2325, file: !2317, line: 13, baseType: !316, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2325, file: !2317, line: 14, baseType: !316, size: 32, offset: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2325, file: !2317, line: 15, baseType: !316, size: 32, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2325, file: !2317, line: 16, baseType: !316, size: 32, offset: 96)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2325, file: !2317, line: 17, baseType: !316, size: 32, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2325, file: !2317, line: 18, baseType: !316, size: 32, offset: 160)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2325, file: !2317, line: 19, baseType: !316, size: 32, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2325, file: !2317, line: 22, baseType: !2335, size: 640, offset: 224)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 640, elements: !2336)
!2336 = !{!2337}
!2337 = !DISubrange(count: 20)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2325, file: !2317, line: 25, baseType: !316, size: 32, offset: 864)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2322, file: !2317, line: 306, baseType: !2340, size: 4096, align: 128)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2317, line: 34, size: 4096, align: 128, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2361, !2362, !2363, !2367, !2369, !2373}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2340, file: !2317, line: 35, baseType: !359, size: 16)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2340, file: !2317, line: 36, baseType: !359, size: 16, offset: 16)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2340, file: !2317, line: 37, baseType: !359, size: 16, offset: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2340, file: !2317, line: 38, baseType: !359, size: 16, offset: 48)
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2340, file: !2317, line: 39, baseType: !2347, size: 128, offset: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2340, file: !2317, line: 39, size: 128, elements: !2348)
!2348 = !{!2349, !2354}
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !2317, line: 40, baseType: !2350, size: 128)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2347, file: !2317, line: 40, size: 128, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2350, file: !2317, line: 41, baseType: !319, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2350, file: !2317, line: 42, baseType: !319, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !2317, line: 44, baseType: !2355, size: 128)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2347, file: !2317, line: 44, size: 128, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2355, file: !2317, line: 45, baseType: !316, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2355, file: !2317, line: 46, baseType: !316, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2355, file: !2317, line: 47, baseType: !316, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2355, file: !2317, line: 48, baseType: !316, size: 32, offset: 96)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2340, file: !2317, line: 51, baseType: !316, size: 32, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2340, file: !2317, line: 52, baseType: !316, size: 32, offset: 224)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2340, file: !2317, line: 55, baseType: !2364, size: 1024, offset: 256)
!2364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 1024, elements: !2365)
!2365 = !{!2366}
!2366 = !DISubrange(count: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2340, file: !2317, line: 58, baseType: !2368, size: 2048, offset: 1280)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 2048, elements: !519)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2340, file: !2317, line: 60, baseType: !2370, size: 384, offset: 3328)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 384, elements: !2371)
!2371 = !{!2372}
!2372 = !DISubrange(count: 12)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2340, file: !2317, line: 62, baseType: !2374, size: 384, offset: 3712)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2340, file: !2317, line: 62, size: 384, elements: !2375)
!2375 = !{!2376, !2377}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2374, file: !2317, line: 63, baseType: !2370, size: 384)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2374, file: !2317, line: 64, baseType: !2370, size: 384)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2322, file: !2317, line: 307, baseType: !2379, size: 1088)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2317, line: 79, size: 1088, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2427}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2379, file: !2317, line: 80, baseType: !316, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2379, file: !2317, line: 81, baseType: !316, size: 32, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2379, file: !2317, line: 82, baseType: !316, size: 32, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2379, file: !2317, line: 83, baseType: !316, size: 32, offset: 96)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2379, file: !2317, line: 84, baseType: !316, size: 32, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2379, file: !2317, line: 85, baseType: !316, size: 32, offset: 160)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2379, file: !2317, line: 86, baseType: !316, size: 32, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2379, file: !2317, line: 88, baseType: !2335, size: 640, offset: 224)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2379, file: !2317, line: 89, baseType: !303, size: 8, offset: 864)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2379, file: !2317, line: 90, baseType: !303, size: 8, offset: 872)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2379, file: !2317, line: 91, baseType: !303, size: 8, offset: 880)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2379, file: !2317, line: 92, baseType: !303, size: 8, offset: 888)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2379, file: !2317, line: 93, baseType: !303, size: 8, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2379, file: !2317, line: 94, baseType: !303, size: 8, offset: 904)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2379, file: !2317, line: 95, baseType: !2396, size: 64, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2398, line: 11, size: 128, elements: !2399)
!2398 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2397, file: !2398, line: 12, baseType: !450, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2397, file: !2398, line: 13, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2404, line: 56, size: 1344, elements: !2405)
!2404 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2403, file: !2404, line: 61, baseType: !552, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2403, file: !2404, line: 62, baseType: !552, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2403, file: !2404, line: 63, baseType: !552, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2403, file: !2404, line: 64, baseType: !552, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2403, file: !2404, line: 65, baseType: !552, size: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2403, file: !2404, line: 66, baseType: !552, size: 64, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2403, file: !2404, line: 68, baseType: !552, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2403, file: !2404, line: 69, baseType: !552, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2403, file: !2404, line: 70, baseType: !552, size: 64, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2403, file: !2404, line: 71, baseType: !552, size: 64, offset: 576)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2403, file: !2404, line: 72, baseType: !552, size: 64, offset: 640)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2403, file: !2404, line: 73, baseType: !552, size: 64, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2403, file: !2404, line: 74, baseType: !552, size: 64, offset: 768)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2403, file: !2404, line: 75, baseType: !552, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2403, file: !2404, line: 76, baseType: !552, size: 64, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2403, file: !2404, line: 81, baseType: !552, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2403, file: !2404, line: 83, baseType: !552, size: 64, offset: 1024)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2403, file: !2404, line: 84, baseType: !552, size: 64, offset: 1088)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2403, file: !2404, line: 85, baseType: !552, size: 64, offset: 1152)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2403, file: !2404, line: 86, baseType: !552, size: 64, offset: 1216)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2403, file: !2404, line: 87, baseType: !552, size: 64, offset: 1280)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2379, file: !2317, line: 96, baseType: !316, size: 32, offset: 1024)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2322, file: !2317, line: 308, baseType: !2429, size: 4608, align: 512)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2317, line: 289, size: 4608, align: 512, elements: !2430)
!2430 = !{!2431, !2432, !2439}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2429, file: !2317, line: 290, baseType: !2340, size: 4096, align: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2429, file: !2317, line: 291, baseType: !2433, size: 512, offset: 4096)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2317, line: 268, size: 512, elements: !2434)
!2434 = !{!2435, !2436, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2433, file: !2317, line: 269, baseType: !319, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2433, file: !2317, line: 270, baseType: !319, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2433, file: !2317, line: 271, baseType: !2438, size: 384, offset: 128)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 384, elements: !1758)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2429, file: !2317, line: 292, baseType: !2440, offset: 4608)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, elements: !1856)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2322, file: !2317, line: 309, baseType: !2442, size: 32768)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 32768, elements: !2443)
!2443 = !{!2444}
!2444 = !DISubrange(count: 4096)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1345, file: !940, line: 378, baseType: !2446, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1341, file: !940, line: 384, baseType: !1635, size: 192, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1193, file: !940, line: 500, baseType: !474, offset: 6656)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1193, file: !940, line: 501, baseType: !2450, size: 64, offset: 6656)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !940, line: 387, flags: DIFlagFwdDecl)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1193, file: !940, line: 516, baseType: !1846, size: 64, offset: 6720)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1193, file: !940, line: 519, baseType: !580, size: 64, offset: 6784)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1193, file: !940, line: 521, baseType: !2455, size: 64, offset: 6848)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !940, line: 521, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1193, file: !940, line: 545, baseType: !964, size: 32, offset: 6912)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1193, file: !940, line: 548, baseType: !707, size: 8, offset: 6944)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1193, file: !940, line: 550, baseType: !2460, offset: 6952)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2461, line: 142, elements: !488)
!2461 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1193, file: !940, line: 554, baseType: !2092, size: 256, offset: 6976)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1193, file: !940, line: 557, baseType: !316, size: 32, offset: 7232)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1190, file: !940, line: 565, baseType: !2465, offset: 7296)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, elements: !2466)
!2466 = !{!2467}
!2467 = !DISubrange(count: -1)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1186, file: !940, line: 151, baseType: !964, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1179, file: !940, line: 156, baseType: !474, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !940, line: 159, baseType: !2471, size: 128)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !940, line: 159, size: 128, elements: !2472)
!2472 = !{!2473, !2476}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2471, file: !940, line: 161, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !940, line: 161, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2471, file: !940, line: 162, baseType: !298, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !944, file: !940, line: 176, baseType: !593, size: 128, align: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !940, line: 179, baseType: !2479, size: 32, offset: 384)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !940, line: 179, size: 32, elements: !2480)
!2480 = !{!2481, !2482, !2483, !2484}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2479, file: !940, line: 184, baseType: !964, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2479, file: !940, line: 192, baseType: !7, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2479, file: !940, line: 194, baseType: !7, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2479, file: !940, line: 195, baseType: !315, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !939, file: !940, line: 199, baseType: !964, size: 32, offset: 416)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !874, file: !208, line: 1964, baseType: !2487, size: 64, offset: 1344)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!450, !816, !2490}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2492, line: 12, size: 256, elements: !2493)
!2492 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2493 = !{!2494, !2495, !2496, !2497, !2498}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2491, file: !2492, line: 13, baseType: !296, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2491, file: !2492, line: 16, baseType: !315, size: 32, offset: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2491, file: !2492, line: 23, baseType: !552, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2491, file: !2492, line: 30, baseType: !552, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2491, file: !2492, line: 33, baseType: !2499, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !940, line: 27, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !874, file: !208, line: 1966, baseType: !2487, size: 64, offset: 1408)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !817, file: !208, line: 1424, baseType: !2503, size: 64, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2506)
!2506 = !{!2507, !2553, !2557, !2561, !2562, !2563, !2564, !2565, !2570, !2575, !2579}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2505, file: !202, line: 323, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!315, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2538, !2539, !2540}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2512, file: !202, line: 295, baseType: !856, size: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2512, file: !202, line: 296, baseType: !461, size: 128, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2512, file: !202, line: 297, baseType: !461, size: 128, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2512, file: !202, line: 298, baseType: !461, size: 128, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2512, file: !202, line: 299, baseType: !1308, size: 192, offset: 512)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2512, file: !202, line: 300, baseType: !474, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2512, file: !202, line: 301, baseType: !964, size: 32, offset: 704)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2512, file: !202, line: 302, baseType: !816, size: 64, offset: 768)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2512, file: !202, line: 303, baseType: !2523, size: 64, offset: 832)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2524)
!2524 = !{!2525, !2537}
!2525 = !DIDerivedType(tag: DW_TAG_member, scope: !2523, file: !202, line: 69, baseType: !2526, size: 32)
!2526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2523, file: !202, line: 69, size: 32, elements: !2527)
!2527 = !{!2528, !2529, !2530}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2526, file: !202, line: 70, baseType: !655, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2526, file: !202, line: 71, baseType: !663, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2526, file: !202, line: 72, baseType: !2531, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2532, line: 24, baseType: !2533)
!2532 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2532, line: 22, size: 32, elements: !2534)
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2533, file: !2532, line: 23, baseType: !2536, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2532, line: 20, baseType: !661)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2523, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2512, file: !202, line: 304, baseType: !748, size: 64, offset: 896)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2512, file: !202, line: 305, baseType: !552, size: 64, offset: 960)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2512, file: !202, line: 306, baseType: !2541, size: 576, offset: 1024)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2542)
!2542 = !{!2543, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2541, file: !202, line: 206, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !750)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2541, file: !202, line: 207, baseType: !2544, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2541, file: !202, line: 208, baseType: !2544, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2541, file: !202, line: 209, baseType: !2544, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2541, file: !202, line: 210, baseType: !2544, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2541, file: !202, line: 211, baseType: !2544, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2541, file: !202, line: 212, baseType: !2544, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2541, file: !202, line: 213, baseType: !756, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2541, file: !202, line: 214, baseType: !756, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2505, file: !202, line: 324, baseType: !2554, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!2511, !816, !315}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2505, file: !202, line: 325, baseType: !2558, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !2511}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2505, file: !202, line: 326, baseType: !2508, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2505, file: !202, line: 327, baseType: !2508, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2505, file: !202, line: 328, baseType: !2508, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2505, file: !202, line: 329, baseType: !902, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2505, file: !202, line: 332, baseType: !2566, size: 64, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!2569, !649}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2505, file: !202, line: 333, baseType: !2571, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!315, !649, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2505, file: !202, line: 335, baseType: !2576, size: 64, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!315, !649, !2569}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2505, file: !202, line: 337, baseType: !2580, size: 64, offset: 640)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!315, !816, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !817, file: !208, line: 1425, baseType: !2585, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2587)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2588)
!2588 = !{!2589, !2593, !2594, !2598, !2599, !2600, !2615, !2638, !2642, !2643, !2666}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2587, file: !202, line: 429, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!315, !816, !315, !315, !766}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2587, file: !202, line: 430, baseType: !902, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2587, file: !202, line: 431, baseType: !2595, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!315, !816, !7}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2587, file: !202, line: 432, baseType: !2595, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2587, file: !202, line: 433, baseType: !902, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2587, file: !202, line: 434, baseType: !2601, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!315, !816, !315, !2604}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2605, file: !202, line: 416, baseType: !315, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2605, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2605, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2605, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2605, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2605, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2605, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2605, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2587, file: !202, line: 435, baseType: !2616, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!315, !816, !2523, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2620, file: !202, line: 344, baseType: !315, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2620, file: !202, line: 345, baseType: !319, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2620, file: !202, line: 346, baseType: !319, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2620, file: !202, line: 347, baseType: !319, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2620, file: !202, line: 348, baseType: !319, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2620, file: !202, line: 349, baseType: !319, size: 64, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2620, file: !202, line: 350, baseType: !319, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2620, file: !202, line: 351, baseType: !994, size: 64, offset: 448)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2620, file: !202, line: 353, baseType: !994, size: 64, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2620, file: !202, line: 354, baseType: !315, size: 32, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2620, file: !202, line: 355, baseType: !315, size: 32, offset: 608)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2620, file: !202, line: 356, baseType: !319, size: 64, offset: 640)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2620, file: !202, line: 357, baseType: !319, size: 64, offset: 704)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2620, file: !202, line: 358, baseType: !319, size: 64, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2620, file: !202, line: 359, baseType: !994, size: 64, offset: 832)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2620, file: !202, line: 360, baseType: !315, size: 32, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2587, file: !202, line: 436, baseType: !2639, size: 64, offset: 448)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!315, !816, !2583, !2619}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2587, file: !202, line: 438, baseType: !2616, size: 64, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2587, file: !202, line: 439, baseType: !2644, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!315, !816, !2647}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2649)
!2649 = !{!2650, !2651}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2648, file: !202, line: 410, baseType: !7, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2648, file: !202, line: 411, baseType: !2652, size: 1344, offset: 64)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2653, size: 1344, elements: !515)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2665}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !202, line: 396, baseType: !7, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2653, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2653, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2653, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2653, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2653, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2653, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2653, file: !202, line: 404, baseType: !321, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2653, file: !202, line: 405, baseType: !2664, size: 64, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !297, line: 126, baseType: !319)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2653, file: !202, line: 406, baseType: !2664, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2587, file: !202, line: 440, baseType: !2595, size: 64, offset: 640)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !817, file: !208, line: 1426, baseType: !2668, size: 64, offset: 576)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2670)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !817, file: !208, line: 1427, baseType: !552, size: 64, offset: 640)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !817, file: !208, line: 1428, baseType: !552, size: 64, offset: 704)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !817, file: !208, line: 1429, baseType: !552, size: 64, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !817, file: !208, line: 1430, baseType: !610, size: 64, offset: 832)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !817, file: !208, line: 1431, baseType: !984, size: 256, offset: 896)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !817, file: !208, line: 1432, baseType: !315, size: 32, offset: 1152)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !817, file: !208, line: 1433, baseType: !964, size: 32, offset: 1184)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !817, file: !208, line: 1437, baseType: !2679, size: 64, offset: 1216)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2682)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !817, file: !208, line: 1449, baseType: !2684, size: 64, offset: 1280)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !626, line: 34, size: 64, elements: !2685)
!2685 = !{!2686}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2684, file: !626, line: 35, baseType: !629, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !817, file: !208, line: 1450, baseType: !461, size: 128, offset: 1344)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !817, file: !208, line: 1451, baseType: !2689, size: 64, offset: 1472)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !817, file: !208, line: 1452, baseType: !2058, size: 64, offset: 1536)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !817, file: !208, line: 1453, baseType: !2693, size: 64, offset: 1600)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !817, file: !208, line: 1454, baseType: !856, size: 128, offset: 1664)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !817, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !817, file: !208, line: 1456, baseType: !2698, size: 2432, offset: 1856)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2704, !2736}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2698, file: !202, line: 519, baseType: !7, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2698, file: !202, line: 520, baseType: !984, size: 256, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2698, file: !202, line: 521, baseType: !2703, size: 192, offset: 320)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 192, elements: !515)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2698, file: !202, line: 522, baseType: !2705, size: 1728, offset: 512)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 1728, elements: !515)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2707)
!2707 = !{!2708, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2706, file: !202, line: 223, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2711)
!2711 = !{!2712, !2713, !2726, !2727}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2710, file: !202, line: 444, baseType: !315, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2710, file: !202, line: 445, baseType: !2714, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2716)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2717)
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2716, file: !202, line: 311, baseType: !902, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2716, file: !202, line: 312, baseType: !902, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2716, file: !202, line: 313, baseType: !902, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2716, file: !202, line: 314, baseType: !902, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2716, file: !202, line: 315, baseType: !2508, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2716, file: !202, line: 316, baseType: !2508, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2716, file: !202, line: 317, baseType: !2508, size: 64, offset: 384)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2716, file: !202, line: 318, baseType: !2580, size: 64, offset: 448)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2710, file: !202, line: 446, baseType: !334, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2710, file: !202, line: 447, baseType: !2709, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2706, file: !202, line: 224, baseType: !315, size: 32, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2706, file: !202, line: 226, baseType: !461, size: 128, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2706, file: !202, line: 227, baseType: !552, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2706, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2706, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2706, file: !202, line: 230, baseType: !2544, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2706, file: !202, line: 231, baseType: !2544, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2706, file: !202, line: 232, baseType: !298, size: 64, offset: 512)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2698, file: !202, line: 523, baseType: !2737, size: 192, offset: 2240)
!2737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2714, size: 192, elements: !515)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !817, file: !208, line: 1458, baseType: !2739, size: 2112, offset: 4288)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2740)
!2740 = !{!2741, !2742, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2739, file: !208, line: 1411, baseType: !315, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2739, file: !208, line: 1412, baseType: !1614, size: 128, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2739, file: !208, line: 1413, baseType: !2744, size: 1920, offset: 192)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2745, size: 1920, elements: !515)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2746, line: 12, size: 640, elements: !2747)
!2746 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2747 = !{!2748, !2756, !2757, !2762, !2763}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2745, file: !2746, line: 13, baseType: !2749, size: 320)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2750, line: 17, size: 320, elements: !2751)
!2750 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2751 = !{!2752, !2753, !2754, !2755}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2749, file: !2750, line: 18, baseType: !315, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2749, file: !2750, line: 19, baseType: !315, size: 32, offset: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2749, file: !2750, line: 20, baseType: !1614, size: 128, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2749, file: !2750, line: 22, baseType: !593, size: 128, align: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2745, file: !2746, line: 14, baseType: !386, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2745, file: !2746, line: 15, baseType: !2758, size: 64, offset: 384)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2759, line: 16, size: 64, elements: !2760)
!2759 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2760 = !{!2761}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2758, file: !2759, line: 17, baseType: !1348, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2745, file: !2746, line: 16, baseType: !1614, size: 128, offset: 448)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2745, file: !2746, line: 17, baseType: !964, size: 32, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !817, file: !208, line: 1465, baseType: !298, size: 64, offset: 6400)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !817, file: !208, line: 1468, baseType: !316, size: 32, offset: 6464)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !817, file: !208, line: 1470, baseType: !756, size: 64, offset: 6528)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !817, file: !208, line: 1471, baseType: !756, size: 64, offset: 6592)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !817, file: !208, line: 1473, baseType: !317, size: 32, offset: 6656)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !817, file: !208, line: 1474, baseType: !2770, size: 64, offset: 6720)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !817, file: !208, line: 1477, baseType: !2773, size: 256, offset: 6784)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 256, elements: !2365)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !817, file: !208, line: 1478, baseType: !2775, size: 128, offset: 7040)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2776, line: 18, baseType: !2777)
!2776 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2776, line: 16, size: 128, elements: !2778)
!2778 = !{!2779}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2777, file: !2776, line: 17, baseType: !2780, size: 128)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 128, elements: !1868)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !817, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !817, file: !208, line: 1481, baseType: !2783, size: 32, offset: 7200)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !297, line: 150, baseType: !7)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !817, file: !208, line: 1487, baseType: !1308, size: 192, offset: 7232)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !817, file: !208, line: 1493, baseType: !330, size: 64, offset: 7424)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !817, file: !208, line: 1495, baseType: !2787, size: 64, offset: 7488)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !608, line: 135, size: 1024, align: 512, elements: !2790)
!2790 = !{!2791, !2795, !2796, !2803, !2809, !2813, !2817, !2821, !2822, !2826, !2830, !2835, !2839}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2789, file: !608, line: 136, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!315, !610, !7}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2789, file: !608, line: 137, baseType: !2792, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2789, file: !608, line: 138, baseType: !2797, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!315, !2800, !2802}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2789, file: !608, line: 139, baseType: !2804, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!315, !2800, !7, !330, !2807}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2789, file: !608, line: 141, baseType: !2810, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!315, !2800}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2789, file: !608, line: 142, baseType: !2814, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!315, !610}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2789, file: !608, line: 143, baseType: !2818, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !610}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2789, file: !608, line: 144, baseType: !2818, size: 64, offset: 448)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2789, file: !608, line: 145, baseType: !2823, size: 64, offset: 512)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !610, !649}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2789, file: !608, line: 146, baseType: !2827, size: 64, offset: 576)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!352, !610, !352, !315}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2789, file: !608, line: 147, baseType: !2831, size: 64, offset: 640)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!606, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2789, file: !608, line: 148, baseType: !2836, size: 64, offset: 704)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!315, !766, !707}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2789, file: !608, line: 149, baseType: !2840, size: 64, offset: 768)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!610, !610, !2843}
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !817, file: !208, line: 1500, baseType: !315, size: 32, offset: 7552)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !817, file: !208, line: 1502, baseType: !2847, size: 448, offset: 7616)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2492, line: 60, size: 448, elements: !2848)
!2848 = !{!2849, !2854, !2855, !2856, !2857, !2858, !2859}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2847, file: !2492, line: 61, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!552, !2853, !2490}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2847, file: !2492, line: 63, baseType: !2850, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2847, file: !2492, line: 66, baseType: !450, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2847, file: !2492, line: 67, baseType: !315, size: 32, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2847, file: !2492, line: 68, baseType: !7, size: 32, offset: 224)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2847, file: !2492, line: 71, baseType: !461, size: 128, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2847, file: !2492, line: 77, baseType: !2860, size: 64, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !817, file: !208, line: 1505, baseType: !988, size: 64, offset: 8064)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !817, file: !208, line: 1508, baseType: !988, size: 64, offset: 8128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !817, file: !208, line: 1511, baseType: !315, size: 32, offset: 8192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !817, file: !208, line: 1514, baseType: !1124, size: 32, offset: 8224)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !817, file: !208, line: 1517, baseType: !2866, size: 64, offset: 8256)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2093, line: 18, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !817, file: !208, line: 1518, baseType: !852, size: 64, offset: 8320)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !817, file: !208, line: 1525, baseType: !1846, size: 64, offset: 8384)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !817, file: !208, line: 1532, baseType: !2871, size: 64, offset: 8448)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2872, line: 52, size: 64, elements: !2873)
!2872 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2871, file: !2872, line: 53, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2872, line: 40, size: 256, elements: !2877)
!2877 = !{!2878, !2879, !2884}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2876, file: !2872, line: 42, baseType: !474)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2876, file: !2872, line: 44, baseType: !2880, size: 192)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2872, line: 28, size: 192, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2880, file: !2872, line: 29, baseType: !461, size: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2880, file: !2872, line: 31, baseType: !450, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2876, file: !2872, line: 49, baseType: !450, size: 64, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !817, file: !208, line: 1533, baseType: !2871, size: 64, offset: 8512)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !817, file: !208, line: 1534, baseType: !593, size: 128, align: 64, offset: 8576)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !817, file: !208, line: 1535, baseType: !2092, size: 256, offset: 8704)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !817, file: !208, line: 1537, baseType: !1308, size: 192, offset: 8960)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !817, file: !208, line: 1542, baseType: !315, size: 32, offset: 9152)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !817, file: !208, line: 1545, baseType: !474, offset: 9184)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !817, file: !208, line: 1546, baseType: !461, size: 128, offset: 9216)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !817, file: !208, line: 1548, baseType: !474, offset: 9344)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !817, file: !208, line: 1549, baseType: !461, size: 128, offset: 9344)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !650, file: !208, line: 624, baseType: !951, size: 64, offset: 256)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !650, file: !208, line: 631, baseType: !552, size: 64, offset: 320)
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !208, line: 639, baseType: !2897, size: 32, offset: 384)
!2897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !208, line: 639, size: 32, elements: !2898)
!2898 = !{!2899, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2897, file: !208, line: 640, baseType: !2900, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2897, file: !208, line: 641, baseType: !7, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !650, file: !208, line: 643, baseType: !730, size: 32, offset: 416)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !650, file: !208, line: 644, baseType: !748, size: 64, offset: 448)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !650, file: !208, line: 645, baseType: !752, size: 128, offset: 512)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !650, file: !208, line: 646, baseType: !752, size: 128, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !650, file: !208, line: 647, baseType: !752, size: 128, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !650, file: !208, line: 648, baseType: !474, offset: 896)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !650, file: !208, line: 649, baseType: !361, size: 16, offset: 896)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !650, file: !208, line: 650, baseType: !303, size: 8, offset: 912)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !650, file: !208, line: 651, baseType: !303, size: 8, offset: 920)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !650, file: !208, line: 652, baseType: !2664, size: 64, offset: 960)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !650, file: !208, line: 659, baseType: !552, size: 64, offset: 1024)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !650, file: !208, line: 660, baseType: !984, size: 256, offset: 1088)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !650, file: !208, line: 662, baseType: !552, size: 64, offset: 1344)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !650, file: !208, line: 663, baseType: !552, size: 64, offset: 1408)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !650, file: !208, line: 665, baseType: !856, size: 128, offset: 1472)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !650, file: !208, line: 666, baseType: !461, size: 128, offset: 1600)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !650, file: !208, line: 675, baseType: !461, size: 128, offset: 1728)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !650, file: !208, line: 676, baseType: !461, size: 128, offset: 1856)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !650, file: !208, line: 677, baseType: !461, size: 128, offset: 1984)
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !208, line: 678, baseType: !2922, size: 128, offset: 2112)
!2922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !208, line: 678, size: 128, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2922, file: !208, line: 679, baseType: !852, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2922, file: !208, line: 680, baseType: !593, size: 128, align: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !650, file: !208, line: 682, baseType: !990, size: 64, offset: 2240)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !650, file: !208, line: 683, baseType: !990, size: 64, offset: 2304)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !650, file: !208, line: 684, baseType: !964, size: 32, offset: 2368)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !650, file: !208, line: 685, baseType: !964, size: 32, offset: 2400)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !650, file: !208, line: 686, baseType: !964, size: 32, offset: 2432)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !650, file: !208, line: 688, baseType: !964, size: 32, offset: 2464)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !208, line: 690, baseType: !2933, size: 64, offset: 2496)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !208, line: 690, size: 64, elements: !2934)
!2934 = !{!2935, !3167}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2933, file: !208, line: 691, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2938)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !2939)
!2939 = !{!2940, !2941, !2945, !2950, !2954, !2955, !2956, !2960, !2973, !2974, !2991, !2995, !2996, !3000, !3001, !3005, !3010, !3011, !3015, !3019, !3127, !3131, !3132, !3136, !3137, !3141, !3145, !3150, !3154, !3158, !3162, !3166}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2938, file: !208, line: 1823, baseType: !334, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2938, file: !208, line: 1824, baseType: !2942, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!748, !580, !748, !315}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2938, file: !208, line: 1825, baseType: !2946, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!446, !580, !352, !549, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2938, file: !208, line: 1826, baseType: !2951, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!446, !580, !330, !549, !2949}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2938, file: !208, line: 1827, baseType: !1061, size: 64, offset: 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2938, file: !208, line: 1828, baseType: !1061, size: 64, offset: 320)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2938, file: !208, line: 1829, baseType: !2957, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!315, !1064, !707}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2938, file: !208, line: 1830, baseType: !2961, size: 64, offset: 448)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!315, !580, !2964}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !2966)
!2966 = !{!2967, !2972}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2965, file: !208, line: 1777, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !2969)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!315, !2964, !330, !315, !748, !319, !7}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2965, file: !208, line: 1778, baseType: !748, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2938, file: !208, line: 1831, baseType: !2961, size: 64, offset: 512)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2938, file: !208, line: 1832, baseType: !2975, size: 64, offset: 576)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!2978, !580, !2980}
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2979, line: 52, baseType: !7)
!2979 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2982, line: 43, size: 128, elements: !2983)
!2982 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2983 = !{!2984, !2990}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2981, file: !2982, line: 44, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2982, line: 37, baseType: !2986)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !580, !2989, !2980}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2981, file: !2982, line: 45, baseType: !2978, size: 32, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2938, file: !208, line: 1833, baseType: !2992, size: 64, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!450, !580, !7, !552}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2938, file: !208, line: 1834, baseType: !2992, size: 64, offset: 704)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2938, file: !208, line: 1835, baseType: !2997, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!315, !580, !1196}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2938, file: !208, line: 1836, baseType: !552, size: 64, offset: 832)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2938, file: !208, line: 1837, baseType: !3002, size: 64, offset: 896)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!315, !649, !580}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2938, file: !208, line: 1838, baseType: !3006, size: 64, offset: 960)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!315, !580, !3009}
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !298)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2938, file: !208, line: 1839, baseType: !3002, size: 64, offset: 1024)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2938, file: !208, line: 1840, baseType: !3012, size: 64, offset: 1088)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!315, !580, !748, !748, !315}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2938, file: !208, line: 1841, baseType: !3016, size: 64, offset: 1152)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!315, !315, !580, !315}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2938, file: !208, line: 1842, baseType: !3020, size: 64, offset: 1216)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!315, !580, !315, !3023}
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3057, !3058, !3059, !3072, !3103}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3024, file: !208, line: 1063, baseType: !3023, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3024, file: !208, line: 1064, baseType: !461, size: 128, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3024, file: !208, line: 1065, baseType: !856, size: 128, offset: 192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3024, file: !208, line: 1066, baseType: !461, size: 128, offset: 320)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3024, file: !208, line: 1069, baseType: !461, size: 128, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3024, file: !208, line: 1072, baseType: !3009, size: 64, offset: 576)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3024, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3024, file: !208, line: 1074, baseType: !307, size: 8, offset: 672)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3024, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3024, file: !208, line: 1076, baseType: !315, size: 32, offset: 736)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3024, file: !208, line: 1077, baseType: !1614, size: 128, offset: 768)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3024, file: !208, line: 1078, baseType: !580, size: 64, offset: 896)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3024, file: !208, line: 1079, baseType: !748, size: 64, offset: 960)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3024, file: !208, line: 1080, baseType: !748, size: 64, offset: 1024)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3024, file: !208, line: 1082, baseType: !3041, size: 64, offset: 1088)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3043)
!3043 = !{!3044, !3052, !3053, !3054, !3055, !3056}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3042, file: !208, line: 1315, baseType: !3045)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3046, line: 20, baseType: !3047)
!3046 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3046, line: 11, elements: !3048)
!3048 = !{!3049}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3047, file: !3046, line: 12, baseType: !3050)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !486, line: 33, baseType: !3051)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 31, elements: !488)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3042, file: !208, line: 1316, baseType: !315, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3042, file: !208, line: 1317, baseType: !315, size: 32, offset: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3042, file: !208, line: 1318, baseType: !3041, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3042, file: !208, line: 1319, baseType: !580, size: 64, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3042, file: !208, line: 1320, baseType: !593, size: 128, align: 64, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3024, file: !208, line: 1084, baseType: !552, size: 64, offset: 1152)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3024, file: !208, line: 1085, baseType: !552, size: 64, offset: 1216)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3024, file: !208, line: 1087, baseType: !3060, size: 64, offset: 1280)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3062)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3063)
!3063 = !{!3064, !3068}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3062, file: !208, line: 1012, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !3023, !3023}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3062, file: !208, line: 1013, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !3023}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3024, file: !208, line: 1088, baseType: !3073, size: 64, offset: 1344)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3075)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3076)
!3076 = !{!3077, !3081, !3085, !3086, !3090, !3094, !3098, !3102}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3075, file: !208, line: 1017, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!3009, !3009}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3075, file: !208, line: 1018, baseType: !3082, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !3009}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3075, file: !208, line: 1019, baseType: !3069, size: 64, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3075, file: !208, line: 1020, baseType: !3087, size: 64, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!315, !3023, !315}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3075, file: !208, line: 1021, baseType: !3091, size: 64, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!707, !3023}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3075, file: !208, line: 1022, baseType: !3095, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!315, !3023, !315, !464}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3075, file: !208, line: 1023, baseType: !3099, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !3023, !1038}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3075, file: !208, line: 1024, baseType: !3091, size: 64, offset: 448)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3024, file: !208, line: 1097, baseType: !3104, size: 256, offset: 1408)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3024, file: !208, line: 1089, size: 256, elements: !3105)
!3105 = !{!3106, !3115, !3121}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3104, file: !208, line: 1090, baseType: !3107, size: 256)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3108, line: 10, size: 256, elements: !3109)
!3108 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3109 = !{!3110, !3111, !3114}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3107, file: !3108, line: 11, baseType: !316, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3107, file: !3108, line: 12, baseType: !3112, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3108, line: 5, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3107, file: !3108, line: 13, baseType: !461, size: 128, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3104, file: !208, line: 1091, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3108, line: 17, size: 64, elements: !3117)
!3117 = !{!3118}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3116, file: !3108, line: 18, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3108, line: 16, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3104, file: !208, line: 1096, baseType: !3122, size: 192)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3104, file: !208, line: 1092, size: 192, elements: !3123)
!3123 = !{!3124, !3125, !3126}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3122, file: !208, line: 1093, baseType: !461, size: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3122, file: !208, line: 1094, baseType: !315, size: 32, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3122, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2938, file: !208, line: 1843, baseType: !3128, size: 64, offset: 1280)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!446, !580, !938, !315, !549, !2949, !315}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2938, file: !208, line: 1844, baseType: !1236, size: 64, offset: 1344)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2938, file: !208, line: 1845, baseType: !3133, size: 64, offset: 1408)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!315, !315}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2938, file: !208, line: 1846, baseType: !3020, size: 64, offset: 1472)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2938, file: !208, line: 1847, baseType: !3138, size: 64, offset: 1536)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!446, !2233, !580, !2949, !549, !7}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2938, file: !208, line: 1848, baseType: !3142, size: 64, offset: 1600)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!446, !580, !2949, !2233, !549, !7}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2938, file: !208, line: 1849, baseType: !3146, size: 64, offset: 1664)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!315, !580, !450, !3149, !1038}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2938, file: !208, line: 1850, baseType: !3151, size: 64, offset: 1728)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!450, !580, !315, !748, !748}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2938, file: !208, line: 1852, baseType: !3155, size: 64, offset: 1792)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !928, !580}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2938, file: !208, line: 1856, baseType: !3159, size: 64, offset: 1856)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!446, !580, !748, !580, !748, !549, !7}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2938, file: !208, line: 1858, baseType: !3163, size: 64, offset: 1920)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!748, !580, !748, !580, !748, !748, !7}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2938, file: !208, line: 1861, baseType: !3012, size: 64, offset: 1984)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2933, file: !208, line: 692, baseType: !881, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !650, file: !208, line: 694, baseType: !3169, size: 64, offset: 2560)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3171)
!3171 = !{!3172, !3173, !3174, !3175}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3170, file: !208, line: 1101, baseType: !474)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3170, file: !208, line: 1102, baseType: !461, size: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3170, file: !208, line: 1103, baseType: !461, size: 128, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3170, file: !208, line: 1104, baseType: !461, size: 128, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !650, file: !208, line: 695, baseType: !952, size: 1216, align: 64, offset: 2624)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !650, file: !208, line: 696, baseType: !461, size: 128, offset: 3840)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !208, line: 697, baseType: !3179, size: 64, offset: 3968)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !208, line: 697, size: 64, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3194, !3195}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3179, file: !208, line: 698, baseType: !2233, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3179, file: !208, line: 699, baseType: !2689, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3179, file: !208, line: 700, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3186, line: 14, size: 832, elements: !3187)
!3186 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3185, file: !3186, line: 15, baseType: !456, size: 512)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3185, file: !3186, line: 16, baseType: !334, size: 64, offset: 512)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3185, file: !3186, line: 17, baseType: !2936, size: 64, offset: 576)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3185, file: !3186, line: 18, baseType: !461, size: 128, offset: 640)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3185, file: !3186, line: 19, baseType: !730, size: 32, offset: 768)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3185, file: !3186, line: 20, baseType: !7, size: 32, offset: 800)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3179, file: !208, line: 701, baseType: !352, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3179, file: !208, line: 702, baseType: !7, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !650, file: !208, line: 705, baseType: !317, size: 32, offset: 4032)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !650, file: !208, line: 708, baseType: !317, size: 32, offset: 4064)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !650, file: !208, line: 709, baseType: !2770, size: 64, offset: 4096)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !650, file: !208, line: 720, baseType: !298, size: 64, offset: 4160)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !611, file: !608, line: 98, baseType: !3201, size: 256, offset: 448)
!3201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !2365)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !611, file: !608, line: 101, baseType: !3203, size: 32, offset: 704)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3204, line: 25, size: 32, elements: !3205)
!3204 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3205 = !{!3206}
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !3203, file: !3204, line: 26, baseType: !3207, size: 32)
!3207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3203, file: !3204, line: 26, size: 32, elements: !3208)
!3208 = !{!3209}
!3209 = !DIDerivedType(tag: DW_TAG_member, scope: !3207, file: !3204, line: 30, baseType: !3210, size: 32)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3207, file: !3204, line: 30, size: 32, elements: !3211)
!3211 = !{!3212, !3213}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3210, file: !3204, line: 31, baseType: !474)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3210, file: !3204, line: 32, baseType: !315, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !611, file: !608, line: 102, baseType: !2787, size: 64, offset: 768)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !611, file: !608, line: 103, baseType: !816, size: 64, offset: 832)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !611, file: !608, line: 104, baseType: !552, size: 64, offset: 896)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !611, file: !608, line: 105, baseType: !298, size: 64, offset: 960)
!3218 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !608, line: 107, baseType: !3219, size: 128, offset: 1024)
!3219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !608, line: 107, size: 128, elements: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3219, file: !608, line: 108, baseType: !461, size: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3219, file: !608, line: 109, baseType: !2989, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !611, file: !608, line: 111, baseType: !461, size: 128, offset: 1152)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !611, file: !608, line: 112, baseType: !461, size: 128, offset: 1280)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !611, file: !608, line: 120, baseType: !3226, size: 128, offset: 1408)
!3226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !608, line: 116, size: 128, elements: !3227)
!3227 = !{!3228, !3229, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3226, file: !608, line: 117, baseType: !856, size: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3226, file: !608, line: 118, baseType: !625, size: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3226, file: !608, line: 119, baseType: !593, size: 128, align: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !581, file: !208, line: 922, baseType: !649, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !581, file: !208, line: 923, baseType: !2936, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !581, file: !208, line: 929, baseType: !474, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !581, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !581, file: !208, line: 931, baseType: !988, size: 64, offset: 448)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !581, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !581, file: !208, line: 933, baseType: !2783, size: 32, offset: 544)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !581, file: !208, line: 934, baseType: !1308, size: 192, offset: 576)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !581, file: !208, line: 935, baseType: !748, size: 64, offset: 768)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !581, file: !208, line: 936, baseType: !3241, size: 192, offset: 832)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3248}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3241, file: !208, line: 886, baseType: !3045)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3241, file: !208, line: 887, baseType: !1604, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3241, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3241, file: !208, line: 889, baseType: !655, size: 32, offset: 96)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3241, file: !208, line: 889, baseType: !655, size: 32, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3241, file: !208, line: 890, baseType: !315, size: 32, offset: 160)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !581, file: !208, line: 937, baseType: !1680, size: 64, offset: 1024)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !581, file: !208, line: 938, baseType: !3251, size: 256, offset: 1088)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3251, file: !208, line: 897, baseType: !552, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3251, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3251, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3251, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3251, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3251, file: !208, line: 904, baseType: !748, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !581, file: !208, line: 940, baseType: !319, size: 64, offset: 1344)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !581, file: !208, line: 945, baseType: !298, size: 64, offset: 1408)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !581, file: !208, line: 949, baseType: !461, size: 128, offset: 1472)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !581, file: !208, line: 950, baseType: !461, size: 128, offset: 1600)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !581, file: !208, line: 952, baseType: !951, size: 64, offset: 1728)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !581, file: !208, line: 953, baseType: !1124, size: 32, offset: 1792)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !581, file: !208, line: 954, baseType: !1124, size: 32, offset: 1824)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !571, file: !437, line: 174, baseType: !577, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !571, file: !437, line: 176, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!315, !580, !467, !570, !1196}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !559, file: !437, line: 90, baseType: !554, size: 64, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !559, file: !437, line: 91, baseType: !3273, size: 64, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !529, file: !457, line: 143, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!3278, !467}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3281)
!3281 = !{!3282, !3283, !3287, !3291, !3297, !3301}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3280, file: !225, line: 40, baseType: !224, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3280, file: !225, line: 41, baseType: !3284, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!707}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3280, file: !225, line: 42, baseType: !3288, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!298}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3280, file: !225, line: 43, baseType: !3292, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!2262, !3295}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3280, file: !225, line: 44, baseType: !3298, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!2262}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3280, file: !225, line: 45, baseType: !354, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !529, file: !457, line: 144, baseType: !3303, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!2262, !467}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !529, file: !457, line: 145, baseType: !3307, size: 64, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !467, !3310, !3311}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !456, file: !457, line: 70, baseType: !3313, size: 64, offset: 384)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !836, line: 123, size: 1024, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3444, !3445, !3446, !3447, !3448}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3314, file: !836, line: 124, baseType: !964, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3314, file: !836, line: 125, baseType: !964, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3314, file: !836, line: 135, baseType: !3313, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3314, file: !836, line: 136, baseType: !330, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3314, file: !836, line: 138, baseType: !977, size: 192, align: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3314, file: !836, line: 140, baseType: !2262, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3314, file: !836, line: 141, baseType: !7, size: 32, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !836, line: 142, baseType: !3324, size: 256, offset: 512)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3314, file: !836, line: 142, size: 256, elements: !3325)
!3325 = !{!3326, !3372, !3376}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3324, file: !836, line: 143, baseType: !3327, size: 192)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !836, line: 91, size: 192, elements: !3328)
!3328 = !{!3329, !3330, !3331}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3327, file: !836, line: 92, baseType: !552, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3327, file: !836, line: 94, baseType: !973, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3327, file: !836, line: 100, baseType: !3332, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !836, line: 180, size: 704, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3344, !3345, !3346, !3370, !3371}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3333, file: !836, line: 182, baseType: !3313, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3333, file: !836, line: 183, baseType: !7, size: 32, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3333, file: !836, line: 186, baseType: !3338, size: 192, offset: 128)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3339, line: 19, size: 192, elements: !3340)
!3339 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3340 = !{!3341, !3342, !3343}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3338, file: !3339, line: 20, baseType: !956, size: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3338, file: !3339, line: 21, baseType: !7, size: 32, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3338, file: !3339, line: 22, baseType: !7, size: 32, offset: 160)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3333, file: !836, line: 187, baseType: !316, size: 32, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3333, file: !836, line: 188, baseType: !316, size: 32, offset: 352)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3333, file: !836, line: 189, baseType: !3347, size: 64, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !836, line: 168, size: 320, elements: !3349)
!3349 = !{!3350, !3354, !3358, !3362, !3366}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3348, file: !836, line: 169, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!315, !928, !3332}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3348, file: !836, line: 171, baseType: !3355, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!315, !3313, !330, !441}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3348, file: !836, line: 173, baseType: !3359, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!315, !3313}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3348, file: !836, line: 174, baseType: !3363, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!315, !3313, !3313, !330}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3348, file: !836, line: 176, baseType: !3367, size: 64, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!315, !928, !3313, !3332}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3333, file: !836, line: 192, baseType: !461, size: 128, offset: 448)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3333, file: !836, line: 194, baseType: !1614, size: 128, offset: 576)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3324, file: !836, line: 144, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !836, line: 103, size: 64, elements: !3374)
!3374 = !{!3375}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3373, file: !836, line: 104, baseType: !3313, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3324, file: !836, line: 145, baseType: !3377, size: 256)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !836, line: 107, size: 256, elements: !3378)
!3378 = !{!3379, !3439, !3442, !3443}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3377, file: !836, line: 108, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3382)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !836, line: 217, size: 768, elements: !3383)
!3383 = !{!3384, !3404, !3408, !3412, !3416, !3420, !3424, !3428, !3429, !3430, !3431, !3435}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3382, file: !836, line: 222, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!315, !3388}
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !836, line: 197, size: 1088, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3389, file: !836, line: 199, baseType: !3313, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3389, file: !836, line: 200, baseType: !580, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3389, file: !836, line: 201, baseType: !928, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3389, file: !836, line: 202, baseType: !298, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3389, file: !836, line: 205, baseType: !1308, size: 192, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3389, file: !836, line: 206, baseType: !1308, size: 192, offset: 448)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3389, file: !836, line: 207, baseType: !315, size: 32, offset: 640)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3389, file: !836, line: 208, baseType: !461, size: 128, offset: 704)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3389, file: !836, line: 209, baseType: !352, size: 64, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3389, file: !836, line: 211, baseType: !549, size: 64, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3389, file: !836, line: 212, baseType: !707, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3389, file: !836, line: 213, baseType: !707, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3389, file: !836, line: 214, baseType: !1224, size: 64, offset: 1024)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3382, file: !836, line: 223, baseType: !3405, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3388}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3382, file: !836, line: 236, baseType: !3409, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!315, !928, !298}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3382, file: !836, line: 238, baseType: !3413, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!298, !928, !2949}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3382, file: !836, line: 239, baseType: !3417, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!298, !928, !298, !2949}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3382, file: !836, line: 240, baseType: !3421, size: 64, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{null, !928, !298}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3382, file: !836, line: 242, baseType: !3425, size: 64, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!446, !3388, !352, !549, !748}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3382, file: !836, line: 252, baseType: !549, size: 64, offset: 448)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3382, file: !836, line: 259, baseType: !707, size: 8, offset: 512)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3382, file: !836, line: 260, baseType: !3425, size: 64, offset: 576)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3382, file: !836, line: 263, baseType: !3432, size: 64, offset: 640)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!2978, !3388, !2980}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3382, file: !836, line: 266, baseType: !3436, size: 64, offset: 704)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!315, !3388, !1196}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3377, file: !836, line: 109, baseType: !3440, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !836, line: 31, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3377, file: !836, line: 110, baseType: !748, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3377, file: !836, line: 111, baseType: !3313, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3314, file: !836, line: 148, baseType: !298, size: 64, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3314, file: !836, line: 154, baseType: !319, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3314, file: !836, line: 156, baseType: !361, size: 16, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3314, file: !836, line: 157, baseType: !441, size: 16, offset: 912)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3314, file: !836, line: 158, baseType: !3449, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !836, line: 32, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !456, file: !457, line: 71, baseType: !3452, size: 32, offset: 448)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3453, line: 19, size: 32, elements: !3454)
!3453 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3454 = !{!3455}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3452, file: !3453, line: 20, baseType: !1362, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !456, file: !457, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !456, file: !457, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !456, file: !457, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !456, file: !457, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !456, file: !457, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !453, file: !430, line: 48, baseType: !334, size: 64, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !453, file: !430, line: 49, baseType: !467, size: 64, offset: 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !453, file: !430, line: 50, baseType: !3464, size: 64, offset: 640)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !430, line: 50, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !453, file: !430, line: 51, baseType: !1634, size: 64, offset: 704)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !433, file: !430, line: 58, baseType: !3468, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!446, !451, !452, !330, !549}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !433, file: !430, line: 60, baseType: !3472, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !334, !330}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !433, file: !430, line: 61, baseType: !3476, size: 64, offset: 320)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!315, !334}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !433, file: !430, line: 62, baseType: !3480, size: 64, offset: 384)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !334}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "module_name", scope: !429, file: !430, line: 67, baseType: !330, size: 64, offset: 448)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !429, file: !430, line: 68, baseType: !330, size: 64, offset: 512)
!3485 = !DIGlobalVariableExpression(var: !3486, expr: !DIExpression())
!3486 = distinct !DIGlobalVariable(name: "m88rs2000_debug", scope: !2, file: !3, line: 37, type: !315, isLocal: true, isDefinition: true)
!3487 = !DIGlobalVariableExpression(var: !3488, expr: !DIExpression())
!3488 = distinct !DIGlobalVariable(name: "m88rs2000_ops", scope: !2, file: !3, line: 746, type: !3489, isLocal: true, isDefinition: true)
!3489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !3491)
!3491 = !{!3492, !3507, !3509, !4183, !4184, !4185, !4189, !4190, !4196, !4201, !4205, !4206, !4216, !4221, !4225, !4229, !4234, !4235, !4236, !4237, !4247, !4258, !4262, !4266, !4270, !4274, !4278, !4282, !4283, !4284, !4288, !4342}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3490, file: !51, line: 436, baseType: !3493, size: 1280)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !3494)
!3494 = !{!3495, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !51, line: 339, baseType: !3496, size: 1024)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 1024, elements: !3497)
!3497 = !{!3498}
!3498 = !DISubrange(count: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !3493, file: !51, line: 340, baseType: !316, size: 32, offset: 1024)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !3493, file: !51, line: 341, baseType: !316, size: 32, offset: 1056)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !3493, file: !51, line: 342, baseType: !316, size: 32, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !3493, file: !51, line: 343, baseType: !316, size: 32, offset: 1120)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !3493, file: !51, line: 344, baseType: !316, size: 32, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !3493, file: !51, line: 345, baseType: !316, size: 32, offset: 1184)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !3493, file: !51, line: 346, baseType: !316, size: 32, offset: 1216)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !3493, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !3490, file: !51, line: 438, baseType: !3508, size: 64, offset: 1280)
!3508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 64, elements: !1462)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3490, file: !51, line: 440, baseType: !3510, size: 64, offset: 1344)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{null, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !3515)
!3515 = !{!3516, !3517, !3518, !4099, !4100, !4101, !4102, !4103, !4104, !4177, !4181, !4182}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3514, file: !51, line: 687, baseType: !3452, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3514, file: !51, line: 688, baseType: !3490, size: 6016, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !3514, file: !51, line: 689, baseType: !3519, size: 64, offset: 6080)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3528, !3529, !4077, !4078, !4079, !4098}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3520, file: !272, line: 102, baseType: !315, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !3520, file: !272, line: 103, baseType: !461, size: 128, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !3520, file: !272, line: 104, baseType: !461, size: 128, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3520, file: !272, line: 105, baseType: !330, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !3520, file: !272, line: 106, baseType: !3527, size: 48, offset: 384)
!3527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 48, elements: !1758)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3520, file: !272, line: 107, baseType: !298, size: 64, offset: 448)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3520, file: !272, line: 109, baseType: !3530, size: 64, offset: 512)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3538, !3539, !3590, !3678, !3679, !3680, !3681, !3682, !3691, !3796, !3809, !4004, !4005, !4009, !4011, !4012, !4013, !4017, !4023, !4024, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4065, !4066, !4067, !4070, !4073, !4074, !4075, !4076}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3531, file: !237, line: 462, baseType: !456, size: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3531, file: !237, line: 463, baseType: !3530, size: 64, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3531, file: !237, line: 465, baseType: !3536, size: 64, offset: 576)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3531, file: !237, line: 467, baseType: !330, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3531, file: !237, line: 468, baseType: !3540, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3542)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3550, !3555, !3559}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3542, file: !237, line: 88, baseType: !330, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3542, file: !237, line: 89, baseType: !556, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3542, file: !237, line: 90, baseType: !3547, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!315, !3530, !510}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3542, file: !237, line: 91, baseType: !3551, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!352, !3530, !3554, !3310, !3311}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3542, file: !237, line: 93, baseType: !3556, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !3530}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3542, file: !237, line: 95, baseType: !3560, size: 64, offset: 320)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3562)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3563)
!3563 = !{!3564, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3562, file: !244, line: 279, baseType: !3565, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!315, !3530}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3562, file: !244, line: 280, baseType: !3556, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3562, file: !244, line: 281, baseType: !3565, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3562, file: !244, line: 282, baseType: !3565, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3562, file: !244, line: 283, baseType: !3565, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3562, file: !244, line: 284, baseType: !3565, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3562, file: !244, line: 285, baseType: !3565, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3562, file: !244, line: 286, baseType: !3565, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3562, file: !244, line: 287, baseType: !3565, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3562, file: !244, line: 288, baseType: !3565, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3562, file: !244, line: 289, baseType: !3565, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3562, file: !244, line: 290, baseType: !3565, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3562, file: !244, line: 291, baseType: !3565, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3562, file: !244, line: 292, baseType: !3565, size: 64, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3562, file: !244, line: 293, baseType: !3565, size: 64, offset: 896)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3562, file: !244, line: 294, baseType: !3565, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3562, file: !244, line: 295, baseType: !3565, size: 64, offset: 1024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3562, file: !244, line: 296, baseType: !3565, size: 64, offset: 1088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3562, file: !244, line: 297, baseType: !3565, size: 64, offset: 1152)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3562, file: !244, line: 298, baseType: !3565, size: 64, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3562, file: !244, line: 299, baseType: !3565, size: 64, offset: 1280)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3562, file: !244, line: 300, baseType: !3565, size: 64, offset: 1344)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3562, file: !244, line: 301, baseType: !3565, size: 64, offset: 1408)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3531, file: !237, line: 470, baseType: !3591, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3593, line: 82, size: 1408, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3600, !3601, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3673, !3676, !3677}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3592, file: !3593, line: 83, baseType: !330, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3592, file: !3593, line: 84, baseType: !330, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3592, file: !3593, line: 85, baseType: !3530, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3592, file: !3593, line: 86, baseType: !556, size: 64, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3592, file: !3593, line: 87, baseType: !556, size: 64, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3592, file: !3593, line: 88, baseType: !556, size: 64, offset: 320)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3592, file: !3593, line: 90, baseType: !3602, size: 64, offset: 384)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!315, !3530, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3624, !3637, !3638, !3639, !3640, !3641, !3649, !3650, !3651, !3652, !3653, !3654}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3606, file: !231, line: 96, baseType: !330, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3606, file: !231, line: 97, baseType: !3591, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3606, file: !231, line: 99, baseType: !334, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3606, file: !231, line: 100, baseType: !330, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3606, file: !231, line: 102, baseType: !707, size: 8, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3606, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3606, file: !231, line: 105, baseType: !3615, size: 64, offset: 320)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3618, line: 262, size: 1600, elements: !3619)
!3618 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3619 = !{!3620, !3621, !3622, !3623}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3617, file: !3618, line: 263, baseType: !2773, size: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3617, file: !3618, line: 264, baseType: !2773, size: 256, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3617, file: !3618, line: 265, baseType: !3496, size: 1024, offset: 512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3617, file: !3618, line: 266, baseType: !2262, size: 64, offset: 1536)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3606, file: !231, line: 106, baseType: !3625, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3627)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3618, line: 210, size: 256, elements: !3628)
!3628 = !{!3629, !3633, !3635, !3636}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3627, file: !3618, line: 211, baseType: !3630, size: 72)
!3630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 72, elements: !3631)
!3631 = !{!3632}
!3632 = !DISubrange(count: 9)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3627, file: !3618, line: 212, baseType: !3634, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3618, line: 14, baseType: !552)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3627, file: !3618, line: 213, baseType: !317, size: 32, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3627, file: !3618, line: 214, baseType: !317, size: 32, offset: 224)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3606, file: !231, line: 108, baseType: !3565, size: 64, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3606, file: !231, line: 109, baseType: !3556, size: 64, offset: 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3606, file: !231, line: 110, baseType: !3565, size: 64, offset: 576)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3606, file: !231, line: 111, baseType: !3556, size: 64, offset: 640)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3606, file: !231, line: 112, baseType: !3642, size: 64, offset: 704)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!315, !3530, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3647)
!3647 = !{!3648}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3646, file: !244, line: 51, baseType: !315, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3606, file: !231, line: 113, baseType: !3565, size: 64, offset: 768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3606, file: !231, line: 114, baseType: !556, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3606, file: !231, line: 115, baseType: !556, size: 64, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3606, file: !231, line: 117, baseType: !3560, size: 64, offset: 960)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3606, file: !231, line: 118, baseType: !3556, size: 64, offset: 1024)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3606, file: !231, line: 120, baseType: !3655, size: 64, offset: 1088)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3592, file: !3593, line: 91, baseType: !3547, size: 64, offset: 448)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3592, file: !3593, line: 92, baseType: !3565, size: 64, offset: 512)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3592, file: !3593, line: 93, baseType: !3556, size: 64, offset: 576)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3592, file: !3593, line: 94, baseType: !3565, size: 64, offset: 640)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3592, file: !3593, line: 95, baseType: !3556, size: 64, offset: 704)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3592, file: !3593, line: 97, baseType: !3565, size: 64, offset: 768)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3592, file: !3593, line: 98, baseType: !3565, size: 64, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3592, file: !3593, line: 100, baseType: !3642, size: 64, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3592, file: !3593, line: 101, baseType: !3565, size: 64, offset: 960)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3592, file: !3593, line: 103, baseType: !3565, size: 64, offset: 1024)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3592, file: !3593, line: 105, baseType: !3565, size: 64, offset: 1088)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3592, file: !3593, line: 107, baseType: !3560, size: 64, offset: 1152)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3592, file: !3593, line: 109, baseType: !3670, size: 64, offset: 1216)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3593, line: 109, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3592, file: !3593, line: 111, baseType: !3674, size: 64, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3593, line: 111, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3592, file: !3593, line: 112, baseType: !862, offset: 1344)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3592, file: !3593, line: 114, baseType: !707, size: 8, offset: 1344)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3531, file: !237, line: 471, baseType: !3605, size: 64, offset: 832)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3531, file: !237, line: 473, baseType: !298, size: 64, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3531, file: !237, line: 475, baseType: !298, size: 64, offset: 960)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3531, file: !237, line: 480, baseType: !1308, size: 192, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3531, file: !237, line: 484, baseType: !3683, size: 576, offset: 1216)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3684)
!3684 = !{!3685, !3686, !3687, !3688, !3689, !3690}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3683, file: !237, line: 362, baseType: !461, size: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3683, file: !237, line: 363, baseType: !461, size: 128, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3683, file: !237, line: 364, baseType: !461, size: 128, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3683, file: !237, line: 365, baseType: !461, size: 128, offset: 384)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3683, file: !237, line: 366, baseType: !707, size: 8, offset: 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3683, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3531, file: !237, line: 485, baseType: !3692, size: 2304, offset: 1792)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3693)
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3789, !3793}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3692, file: !244, line: 566, baseType: !3645, size: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3692, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3692, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3692, file: !244, line: 569, baseType: !707, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3692, file: !244, line: 570, baseType: !707, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3692, file: !244, line: 571, baseType: !707, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3692, file: !244, line: 572, baseType: !707, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3692, file: !244, line: 573, baseType: !707, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3692, file: !244, line: 574, baseType: !707, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3692, file: !244, line: 575, baseType: !707, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3692, file: !244, line: 576, baseType: !707, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3692, file: !244, line: 577, baseType: !316, size: 32, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3692, file: !244, line: 578, baseType: !474, offset: 96)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3692, file: !244, line: 580, baseType: !461, size: 128, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3692, file: !244, line: 581, baseType: !1635, size: 192, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3692, file: !244, line: 582, baseType: !3710, size: 64, offset: 448)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3712, line: 43, size: 1472, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3721, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3711, file: !3712, line: 44, baseType: !330, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3711, file: !3712, line: 45, baseType: !315, size: 32, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3711, file: !3712, line: 46, baseType: !461, size: 128, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3711, file: !3712, line: 47, baseType: !474, offset: 256)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3711, file: !3712, line: 48, baseType: !3719, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3711, file: !3712, line: 49, baseType: !3722, size: 320, offset: 320)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3723, line: 11, size: 320, elements: !3724)
!3723 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3724 = !{!3725, !3726, !3727, !3732}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3722, file: !3723, line: 16, baseType: !856, size: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3722, file: !3723, line: 17, baseType: !552, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3722, file: !3723, line: 18, baseType: !3728, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3722, file: !3723, line: 19, baseType: !316, size: 32, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3711, file: !3712, line: 50, baseType: !552, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3711, file: !3712, line: 51, baseType: !1432, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3711, file: !3712, line: 52, baseType: !1432, size: 64, offset: 768)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3711, file: !3712, line: 53, baseType: !1432, size: 64, offset: 832)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3711, file: !3712, line: 54, baseType: !1432, size: 64, offset: 896)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3711, file: !3712, line: 55, baseType: !1432, size: 64, offset: 960)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3711, file: !3712, line: 56, baseType: !552, size: 64, offset: 1024)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3711, file: !3712, line: 57, baseType: !552, size: 64, offset: 1088)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3711, file: !3712, line: 58, baseType: !552, size: 64, offset: 1152)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3711, file: !3712, line: 59, baseType: !552, size: 64, offset: 1216)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3711, file: !3712, line: 60, baseType: !552, size: 64, offset: 1280)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3711, file: !3712, line: 61, baseType: !3530, size: 64, offset: 1344)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3711, file: !3712, line: 62, baseType: !707, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3711, file: !3712, line: 63, baseType: !707, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3692, file: !244, line: 583, baseType: !707, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3692, file: !244, line: 584, baseType: !707, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3692, file: !244, line: 585, baseType: !707, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3692, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3692, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3692, file: !244, line: 592, baseType: !1424, size: 512, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3692, file: !244, line: 593, baseType: !319, size: 64, offset: 1088)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3692, file: !244, line: 594, baseType: !2092, size: 256, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3692, file: !244, line: 595, baseType: !1614, size: 128, offset: 1408)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3692, file: !244, line: 596, baseType: !3719, size: 64, offset: 1536)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3692, file: !244, line: 597, baseType: !964, size: 32, offset: 1600)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3692, file: !244, line: 598, baseType: !964, size: 32, offset: 1632)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3692, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3692, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3692, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3692, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3692, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3692, file: !244, line: 604, baseType: !707, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3692, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3692, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3692, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3692, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3692, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3692, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3692, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3692, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3692, file: !244, line: 613, baseType: !315, size: 32, offset: 1792)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3692, file: !244, line: 614, baseType: !315, size: 32, offset: 1824)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3692, file: !244, line: 615, baseType: !319, size: 64, offset: 1856)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3692, file: !244, line: 616, baseType: !319, size: 64, offset: 1920)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3692, file: !244, line: 617, baseType: !319, size: 64, offset: 1984)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3692, file: !244, line: 618, baseType: !319, size: 64, offset: 2048)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3692, file: !244, line: 620, baseType: !3780, size: 64, offset: 2112)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3782)
!3782 = !{!3783, !3784, !3785, !3786}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3781, file: !244, line: 537, baseType: !474)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3781, file: !244, line: 538, baseType: !7, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3781, file: !244, line: 540, baseType: !461, size: 128, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3781, file: !244, line: 543, baseType: !3787, size: 64, offset: 192)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3692, file: !244, line: 621, baseType: !3790, size: 64, offset: 2176)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !3530, !313}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3692, file: !244, line: 622, baseType: !3794, size: 64, offset: 2240)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3531, file: !237, line: 486, baseType: !3797, size: 64, offset: 4096)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3806, !3807, !3808}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3798, file: !244, line: 643, baseType: !3562, size: 1472)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3798, file: !244, line: 644, baseType: !3565, size: 64, offset: 1472)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3798, file: !244, line: 645, baseType: !3803, size: 64, offset: 1536)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3530, !707}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3798, file: !244, line: 646, baseType: !3565, size: 64, offset: 1600)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3798, file: !244, line: 647, baseType: !3556, size: 64, offset: 1664)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3798, file: !244, line: 648, baseType: !3556, size: 64, offset: 1728)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3531, file: !237, line: 493, baseType: !3810, size: 64, offset: 4160)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3988, !3989, !3990, !3991, !3992, !3993, !3996, !3997, !3998, !3999, !4000, !4001, !4002}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3811, file: !258, line: 163, baseType: !461, size: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3811, file: !258, line: 164, baseType: !330, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3811, file: !258, line: 165, baseType: !3816, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3818)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3819)
!3819 = !{!3820, !3938, !3949, !3954, !3958, !3965, !3969, !3973, !3980, !3984}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3818, file: !258, line: 106, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!315, !3810, !3824, !257}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3826, line: 51, size: 1344, elements: !3827)
!3826 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3827 = !{!3828, !3829, !3831, !3832, !3922, !3931, !3932, !3933, !3934, !3935, !3936, !3937}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3825, file: !3826, line: 52, baseType: !330, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3825, file: !3826, line: 53, baseType: !3830, size: 32, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3826, line: 28, baseType: !316)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3825, file: !3826, line: 54, baseType: !330, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3825, file: !3826, line: 55, baseType: !3833, size: 192, offset: 192)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3834, line: 17, size: 192, elements: !3835)
!3834 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3835 = !{!3836, !3838, !3921}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3833, file: !3834, line: 18, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3833, file: !3834, line: 19, baseType: !3839, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3841)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3834, line: 110, size: 1152, elements: !3842)
!3842 = !{!3843, !3847, !3851, !3857, !3863, !3867, !3871, !3876, !3880, !3881, !3885, !3889, !3893, !3904, !3905, !3906, !3907, !3917}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3841, file: !3834, line: 111, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!3837, !3837}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3841, file: !3834, line: 112, baseType: !3848, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !3837}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3841, file: !3834, line: 113, baseType: !3852, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!707, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3833)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3841, file: !3834, line: 114, baseType: !3858, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!2262, !3855, !3861}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3531)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3841, file: !3834, line: 116, baseType: !3864, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!707, !3855, !330}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3841, file: !3834, line: 118, baseType: !3868, size: 64, offset: 320)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!315, !3855, !330, !7, !298, !549}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3841, file: !3834, line: 123, baseType: !3872, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!315, !3855, !330, !3875, !549}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3841, file: !3834, line: 126, baseType: !3877, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!330, !3855}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3841, file: !3834, line: 127, baseType: !3877, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3841, file: !3834, line: 128, baseType: !3882, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!3837, !3855}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3841, file: !3834, line: 130, baseType: !3886, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!3837, !3855, !3837}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3841, file: !3834, line: 133, baseType: !3890, size: 64, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!3837, !3855, !330}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3841, file: !3834, line: 135, baseType: !3894, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!315, !3855, !330, !330, !7, !7, !3897}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3834, line: 43, size: 640, elements: !3899)
!3899 = !{!3900, !3901, !3902}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3898, file: !3834, line: 44, baseType: !3837, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3898, file: !3834, line: 45, baseType: !7, size: 32, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3898, file: !3834, line: 46, baseType: !3903, size: 512, offset: 128)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 512, elements: !1462)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3841, file: !3834, line: 140, baseType: !3886, size: 64, offset: 832)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3841, file: !3834, line: 143, baseType: !3882, size: 64, offset: 896)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3841, file: !3834, line: 145, baseType: !3844, size: 64, offset: 960)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3841, file: !3834, line: 146, baseType: !3908, size: 64, offset: 1024)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!315, !3855, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3834, line: 29, size: 128, elements: !3913)
!3913 = !{!3914, !3915, !3916}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3912, file: !3834, line: 30, baseType: !7, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3912, file: !3834, line: 31, baseType: !7, size: 32, offset: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3912, file: !3834, line: 32, baseType: !3855, size: 64, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3841, file: !3834, line: 148, baseType: !3918, size: 64, offset: 1088)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!315, !3855, !3530}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3833, file: !3834, line: 20, baseType: !3530, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3825, file: !3826, line: 57, baseType: !3923, size: 64, offset: 384)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3826, line: 31, size: 704, elements: !3925)
!3925 = !{!3926, !3927, !3928, !3929, !3930}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3924, file: !3826, line: 32, baseType: !352, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3924, file: !3826, line: 33, baseType: !315, size: 32, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3924, file: !3826, line: 34, baseType: !298, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3924, file: !3826, line: 35, baseType: !3923, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3924, file: !3826, line: 43, baseType: !571, size: 448, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3825, file: !3826, line: 58, baseType: !3923, size: 64, offset: 448)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3825, file: !3826, line: 59, baseType: !3824, size: 64, offset: 512)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3825, file: !3826, line: 60, baseType: !3824, size: 64, offset: 576)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3825, file: !3826, line: 61, baseType: !3824, size: 64, offset: 640)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3825, file: !3826, line: 63, baseType: !456, size: 512, offset: 704)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3825, file: !3826, line: 65, baseType: !552, size: 64, offset: 1216)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3825, file: !3826, line: 66, baseType: !298, size: 64, offset: 1280)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3818, file: !258, line: 108, baseType: !3939, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!315, !3810, !3942, !257}
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3944)
!3944 = !{!3945, !3946, !3947}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3943, file: !258, line: 64, baseType: !3837, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3943, file: !258, line: 65, baseType: !315, size: 32, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3943, file: !258, line: 66, baseType: !3948, size: 512, offset: 96)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 512, elements: !1868)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3818, file: !258, line: 110, baseType: !3950, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!315, !3810, !7, !3953}
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !297, line: 164, baseType: !552)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3818, file: !258, line: 111, baseType: !3955, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !3810, !7}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3818, file: !258, line: 112, baseType: !3959, size: 64, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!315, !3810, !3824, !3962, !7, !3964, !386}
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3818, file: !258, line: 117, baseType: !3966, size: 64, offset: 320)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!315, !3810, !7, !7, !298}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3818, file: !258, line: 119, baseType: !3970, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3810, !7, !7}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3818, file: !258, line: 121, baseType: !3974, size: 64, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!315, !3810, !3977, !707}
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3979, line: 11, flags: DIFlagFwdDecl)
!3979 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3818, file: !258, line: 122, baseType: !3981, size: 64, offset: 512)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3810, !3977}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3818, file: !258, line: 123, baseType: !3985, size: 64, offset: 576)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!315, !3810, !3942, !3964, !386}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3811, file: !258, line: 166, baseType: !298, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3811, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3811, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3811, file: !258, line: 171, baseType: !3837, size: 64, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3811, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3811, file: !258, line: 173, baseType: !3994, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3811, file: !258, line: 175, baseType: !3810, size: 64, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3811, file: !258, line: 182, baseType: !3953, size: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3811, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3811, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3811, file: !258, line: 185, baseType: !956, size: 128, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3811, file: !258, line: 186, baseType: !1308, size: 192, offset: 896)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3811, file: !258, line: 187, baseType: !4003, offset: 1088)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2466)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3531, file: !237, line: 499, baseType: !461, size: 128, offset: 4224)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3531, file: !237, line: 502, baseType: !4006, size: 64, offset: 4352)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4008)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3531, file: !237, line: 504, baseType: !4010, size: 64, offset: 4416)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3531, file: !237, line: 505, baseType: !319, size: 64, offset: 4480)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3531, file: !237, line: 510, baseType: !319, size: 64, offset: 4544)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3531, file: !237, line: 511, baseType: !4014, size: 64, offset: 4608)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4016)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3531, file: !237, line: 513, baseType: !4018, size: 64, offset: 4672)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4020)
!4020 = !{!4021, !4022}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4019, file: !237, line: 293, baseType: !7, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4019, file: !237, line: 294, baseType: !552, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3531, file: !237, line: 515, baseType: !461, size: 128, offset: 4736)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3531, file: !237, line: 526, baseType: !4025, offset: 4864)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4026, line: 5, elements: !488)
!4026 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3531, file: !237, line: 528, baseType: !3824, size: 64, offset: 4864)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3531, file: !237, line: 529, baseType: !3837, size: 64, offset: 4928)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3531, file: !237, line: 534, baseType: !730, size: 32, offset: 4992)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3531, file: !237, line: 535, baseType: !316, size: 32, offset: 5024)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3531, file: !237, line: 537, baseType: !474, offset: 5056)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3531, file: !237, line: 538, baseType: !461, size: 128, offset: 5056)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3531, file: !237, line: 540, baseType: !4034, size: 64, offset: 5184)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4036, line: 54, size: 960, elements: !4037)
!4036 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044, !4048, !4052, !4053, !4054, !4055, !4059, !4063, !4064}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4035, file: !4036, line: 55, baseType: !330, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4035, file: !4036, line: 56, baseType: !334, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4035, file: !4036, line: 58, baseType: !556, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4035, file: !4036, line: 59, baseType: !556, size: 64, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4035, file: !4036, line: 60, baseType: !467, size: 64, offset: 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4035, file: !4036, line: 62, baseType: !3547, size: 64, offset: 320)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4035, file: !4036, line: 63, baseType: !4045, size: 64, offset: 384)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!352, !3530, !3554}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4035, file: !4036, line: 65, baseType: !4049, size: 64, offset: 448)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !4034}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4035, file: !4036, line: 66, baseType: !3556, size: 64, offset: 512)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4035, file: !4036, line: 68, baseType: !3565, size: 64, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4035, file: !4036, line: 70, baseType: !3278, size: 64, offset: 640)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4035, file: !4036, line: 71, baseType: !4056, size: 64, offset: 704)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!2262, !3530}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4035, file: !4036, line: 73, baseType: !4060, size: 64, offset: 768)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !3530, !3310, !3311}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4035, file: !4036, line: 75, baseType: !3560, size: 64, offset: 832)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4035, file: !4036, line: 77, baseType: !3674, size: 64, offset: 896)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3531, file: !237, line: 541, baseType: !556, size: 64, offset: 5248)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3531, file: !237, line: 543, baseType: !3556, size: 64, offset: 5312)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3531, file: !237, line: 544, baseType: !4068, size: 64, offset: 5376)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3531, file: !237, line: 545, baseType: !4071, size: 64, offset: 5440)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3531, file: !237, line: 547, baseType: !707, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3531, file: !237, line: 548, baseType: !707, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3531, file: !237, line: 549, baseType: !707, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3531, file: !237, line: 550, baseType: !707, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3520, file: !272, line: 111, baseType: !334, size: 64, offset: 576)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !3520, file: !272, line: 113, baseType: !315, size: 32, offset: 640)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !3520, file: !272, line: 114, baseType: !4080, size: 64, offset: 704)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4097}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4081, file: !272, line: 158, baseType: !461, size: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4081, file: !272, line: 159, baseType: !2936, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4081, file: !272, line: 160, baseType: !3519, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4081, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4081, file: !272, line: 162, baseType: !315, size: 32, offset: 288)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4081, file: !272, line: 163, baseType: !316, size: 32, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4081, file: !272, line: 167, baseType: !315, size: 32, offset: 352)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4081, file: !272, line: 168, baseType: !315, size: 32, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4081, file: !272, line: 169, baseType: !315, size: 32, offset: 416)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4081, file: !272, line: 171, baseType: !1614, size: 128, offset: 448)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4081, file: !272, line: 173, baseType: !4094, size: 64, offset: 576)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!315, !580, !7, !298}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4081, file: !272, line: 187, baseType: !298, size: 64, offset: 640)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !3520, file: !272, line: 115, baseType: !1308, size: 192, offset: 768)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !3514, file: !51, line: 690, baseType: !298, size: 64, offset: 6144)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !3514, file: !51, line: 691, baseType: !298, size: 64, offset: 6208)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !3514, file: !51, line: 692, baseType: !298, size: 64, offset: 6272)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !3514, file: !51, line: 693, baseType: !298, size: 64, offset: 6336)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !3514, file: !51, line: 694, baseType: !298, size: 64, offset: 6400)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !3514, file: !51, line: 695, baseType: !4105, size: 3648, offset: 6464)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4106)
!4106 = !{!4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4105, file: !51, line: 587, baseType: !316, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4105, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4105, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4105, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4105, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4105, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4105, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4105, file: !51, line: 595, baseType: !316, size: 32, offset: 224)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4105, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4105, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4105, file: !51, line: 598, baseType: !316, size: 32, offset: 320)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4105, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4105, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4105, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4105, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4105, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4105, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4105, file: !51, line: 610, baseType: !303, size: 8, offset: 544)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4105, file: !51, line: 611, baseType: !303, size: 8, offset: 552)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4105, file: !51, line: 612, baseType: !303, size: 8, offset: 560)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4105, file: !51, line: 613, baseType: !316, size: 32, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4105, file: !51, line: 614, baseType: !316, size: 32, offset: 608)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4105, file: !51, line: 615, baseType: !303, size: 8, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4105, file: !51, line: 621, baseType: !4131, size: 384, offset: 672)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4132, size: 384, elements: !515)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4105, file: !51, line: 616, size: 128, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4132, file: !51, line: 617, baseType: !303, size: 8)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4132, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4132, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4132, file: !51, line: 620, baseType: !303, size: 8, offset: 96)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4105, file: !51, line: 624, baseType: !316, size: 32, offset: 1056)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4105, file: !51, line: 627, baseType: !316, size: 32, offset: 1088)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4105, file: !51, line: 630, baseType: !303, size: 8, offset: 1120)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4105, file: !51, line: 631, baseType: !303, size: 8, offset: 1128)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4105, file: !51, line: 632, baseType: !303, size: 8, offset: 1136)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4105, file: !51, line: 633, baseType: !303, size: 8, offset: 1144)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4105, file: !51, line: 634, baseType: !303, size: 8, offset: 1152)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4105, file: !51, line: 635, baseType: !303, size: 8, offset: 1160)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4105, file: !51, line: 637, baseType: !303, size: 8, offset: 1168)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4105, file: !51, line: 638, baseType: !303, size: 8, offset: 1176)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4105, file: !51, line: 639, baseType: !303, size: 8, offset: 1184)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4105, file: !51, line: 640, baseType: !303, size: 8, offset: 1192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4105, file: !51, line: 641, baseType: !303, size: 8, offset: 1200)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4105, file: !51, line: 642, baseType: !303, size: 8, offset: 1208)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4105, file: !51, line: 643, baseType: !303, size: 8, offset: 1216)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4105, file: !51, line: 644, baseType: !303, size: 8, offset: 1224)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4105, file: !51, line: 645, baseType: !303, size: 8, offset: 1232)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4105, file: !51, line: 647, baseType: !316, size: 32, offset: 1248)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4105, file: !51, line: 650, baseType: !4157, size: 296, offset: 1280)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4158)
!4158 = !{!4159, !4160}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4157, file: !6, line: 826, baseType: !305, size: 8)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4157, file: !6, line: 827, baseType: !4161, size: 288, offset: 8)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4162, size: 288, elements: !1290)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4163)
!4163 = !{!4164, !4165}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4162, file: !6, line: 804, baseType: !305, size: 8)
!4165 = !DIDerivedType(tag: DW_TAG_member, scope: !4162, file: !6, line: 805, baseType: !4166, size: 64, offset: 8)
!4166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !6, line: 805, size: 64, elements: !4167)
!4167 = !{!4168, !4169}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4166, file: !6, line: 806, baseType: !320, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4166, file: !6, line: 807, baseType: !757, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4105, file: !51, line: 651, baseType: !4157, size: 296, offset: 1576)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4105, file: !51, line: 652, baseType: !4157, size: 296, offset: 1872)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4105, file: !51, line: 653, baseType: !4157, size: 296, offset: 2168)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4105, file: !51, line: 654, baseType: !4157, size: 296, offset: 2464)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4105, file: !51, line: 655, baseType: !4157, size: 296, offset: 2760)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4105, file: !51, line: 656, baseType: !4157, size: 296, offset: 3056)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4105, file: !51, line: 657, baseType: !4157, size: 296, offset: 3352)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3514, file: !51, line: 698, baseType: !4178, size: 64, offset: 10112)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!315, !298, !315, !315, !315}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3514, file: !51, line: 699, baseType: !315, size: 32, offset: 10176)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3514, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3490, file: !51, line: 441, baseType: !3510, size: 64, offset: 1408)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !3490, file: !51, line: 442, baseType: !3510, size: 64, offset: 1472)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3490, file: !51, line: 444, baseType: !4186, size: 64, offset: 1536)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!315, !3513}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !3490, file: !51, line: 445, baseType: !4186, size: 64, offset: 1600)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3490, file: !51, line: 447, baseType: !4191, size: 64, offset: 1664)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!315, !3513, !4194, !315}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !3490, file: !51, line: 450, baseType: !4197, size: 64, offset: 1728)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!315, !3513, !707, !7, !386, !4200}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !3490, file: !51, line: 457, baseType: !4202, size: 64, offset: 1792)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!50, !3513}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !3490, file: !51, line: 460, baseType: !4186, size: 64, offset: 1856)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !3490, file: !51, line: 461, baseType: !4207, size: 64, offset: 1920)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!315, !3513, !4210}
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4212)
!4212 = !{!4213, !4214, !4215}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4211, file: !51, line: 70, baseType: !315, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4211, file: !51, line: 71, baseType: !315, size: 32, offset: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4211, file: !51, line: 72, baseType: !315, size: 32, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !3490, file: !51, line: 463, baseType: !4217, size: 64, offset: 1984)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!315, !3513, !4220}
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !3490, file: !51, line: 466, baseType: !4222, size: 64, offset: 2048)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!315, !3513, !4200}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !3490, file: !51, line: 467, baseType: !4226, size: 64, offset: 2112)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!315, !3513, !1545}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !3490, file: !51, line: 468, baseType: !4230, size: 64, offset: 2176)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!315, !3513, !4233}
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !3490, file: !51, line: 469, baseType: !4230, size: 64, offset: 2240)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !3490, file: !51, line: 470, baseType: !4226, size: 64, offset: 2304)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !3490, file: !51, line: 472, baseType: !4186, size: 64, offset: 2368)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !3490, file: !51, line: 473, baseType: !4238, size: 64, offset: 2432)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!315, !3513, !4241}
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4243)
!4243 = !{!4244, !4246}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4242, file: !6, line: 174, baseType: !4245, size: 48)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 48, elements: !1758)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4242, file: !6, line: 175, baseType: !305, size: 8, offset: 48)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !3490, file: !51, line: 474, baseType: !4248, size: 64, offset: 2496)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!315, !3513, !4251}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4253)
!4253 = !{!4254, !4256, !4257}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4252, file: !6, line: 196, baseType: !4255, size: 32)
!4255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 32, elements: !1290)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4252, file: !6, line: 197, baseType: !305, size: 8, offset: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4252, file: !6, line: 198, baseType: !315, size: 32, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !3490, file: !51, line: 475, baseType: !4259, size: 64, offset: 2560)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!315, !3513, !171}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !3490, file: !51, line: 477, baseType: !4263, size: 64, offset: 2624)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!315, !3513, !78}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !3490, file: !51, line: 478, baseType: !4267, size: 64, offset: 2688)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!315, !3513, !73}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !3490, file: !51, line: 480, baseType: !4271, size: 64, offset: 2752)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!315, !3513, !450}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !3490, file: !51, line: 481, baseType: !4275, size: 64, offset: 2816)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!315, !3513, !552}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !3490, file: !51, line: 482, baseType: !4279, size: 64, offset: 2880)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!315, !3513, !315}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !3490, file: !51, line: 483, baseType: !4279, size: 64, offset: 2944)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !3490, file: !51, line: 484, baseType: !4186, size: 64, offset: 3008)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !3490, file: !51, line: 490, baseType: !4285, size: 64, offset: 3072)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!175, !3513}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !3490, file: !51, line: 492, baseType: !4289, size: 2304, offset: 3136)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4290)
!4290 = !{!4291, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4318, !4322, !4323, !4324, !4325, !4326, !4327, !4332, !4337, !4341}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4289, file: !51, line: 228, baseType: !4292, size: 1216)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4293)
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4292, file: !51, line: 89, baseType: !3496, size: 1024)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4292, file: !51, line: 91, baseType: !316, size: 32, offset: 1024)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4292, file: !51, line: 92, baseType: !316, size: 32, offset: 1056)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4292, file: !51, line: 93, baseType: !316, size: 32, offset: 1088)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4292, file: !51, line: 95, baseType: !316, size: 32, offset: 1120)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4292, file: !51, line: 96, baseType: !316, size: 32, offset: 1152)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4292, file: !51, line: 97, baseType: !316, size: 32, offset: 1184)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4289, file: !51, line: 230, baseType: !3510, size: 64, offset: 1216)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4289, file: !51, line: 231, baseType: !4186, size: 64, offset: 1280)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4289, file: !51, line: 232, baseType: !4186, size: 64, offset: 1344)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4289, file: !51, line: 233, baseType: !4186, size: 64, offset: 1408)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4289, file: !51, line: 234, baseType: !4186, size: 64, offset: 1472)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4289, file: !51, line: 237, baseType: !4186, size: 64, offset: 1536)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4289, file: !51, line: 238, baseType: !4308, size: 64, offset: 1600)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!315, !3513, !4311}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4317}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4312, file: !51, line: 115, baseType: !7, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4312, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4312, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4312, file: !51, line: 118, baseType: !319, size: 64, offset: 128)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4289, file: !51, line: 240, baseType: !4319, size: 64, offset: 1664)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!315, !3513, !298}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4289, file: !51, line: 242, baseType: !4226, size: 64, offset: 1728)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4289, file: !51, line: 243, baseType: !4226, size: 64, offset: 1792)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4289, file: !51, line: 244, baseType: !4226, size: 64, offset: 1856)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4289, file: !51, line: 248, baseType: !4226, size: 64, offset: 1920)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4289, file: !51, line: 249, baseType: !4230, size: 64, offset: 1984)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4289, file: !51, line: 250, baseType: !4328, size: 64, offset: 2048)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!315, !3513, !4331}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4289, file: !51, line: 258, baseType: !4333, size: 64, offset: 2112)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!315, !3513, !4336, !315}
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4289, file: !51, line: 267, baseType: !4338, size: 64, offset: 2176)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!315, !3513, !316}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4289, file: !51, line: 268, baseType: !4338, size: 64, offset: 2240)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !3490, file: !51, line: 493, baseType: !4343, size: 576, offset: 5440)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4344)
!4344 = !{!4345, !4349, !4353, !4354, !4355, !4356, !4357, !4358, !4359}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4343, file: !51, line: 304, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4347)
!4347 = !{!4348}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4346, file: !51, line: 277, baseType: !352, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4343, file: !51, line: 306, baseType: !4350, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{null, !3513, !4311}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4343, file: !51, line: 308, baseType: !4230, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4343, file: !51, line: 309, baseType: !4328, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4343, file: !51, line: 310, baseType: !3510, size: 64, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4343, file: !51, line: 311, baseType: !3510, size: 64, offset: 320)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4343, file: !51, line: 312, baseType: !3510, size: 64, offset: 384)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4343, file: !51, line: 313, baseType: !4279, size: 64, offset: 448)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4343, file: !51, line: 316, baseType: !4319, size: 64, offset: 512)
!4360 = !DIGlobalVariableExpression(var: !4361, expr: !DIExpression())
!4361 = distinct !DIGlobalVariable(name: "m88rs2000_setup", scope: !2, file: !3, line: 289, type: !4362, isLocal: true, isDefinition: true)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 360, elements: !4363)
!4363 = !{!4364}
!4364 = !DISubrange(count: 15)
!4365 = !DIGlobalVariableExpression(var: !4366, expr: !DIExpression())
!4366 = distinct !DIGlobalVariable(name: "m88rs2000_shutdown", scope: !2, file: !3, line: 307, type: !4367, isLocal: true, isDefinition: true)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 168, elements: !4368)
!4368 = !{!4369}
!4369 = !DISubrange(count: 7)
!4370 = !DIGlobalVariableExpression(var: !4371, expr: !DIExpression())
!4371 = distinct !DIGlobalVariable(name: "fe_reset", scope: !2, file: !3, line: 317, type: !4372, isLocal: true, isDefinition: true)
!4372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 840, elements: !4373)
!4373 = !{!4374}
!4374 = !DISubrange(count: 35)
!4375 = !DIGlobalVariableExpression(var: !4376, expr: !DIExpression())
!4376 = distinct !DIGlobalVariable(name: "fe_trigger", scope: !2, file: !3, line: 355, type: !4377, isLocal: true, isDefinition: true)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 336, elements: !4378)
!4378 = !{!4379}
!4379 = !DISubrange(count: 14)
!4380 = !DIGlobalVariableExpression(var: !4381, expr: !DIExpression())
!4381 = distinct !DIGlobalVariable(name: "___modver_attr", scope: !2, file: !3, line: 815, type: !429, isLocal: true, isDefinition: true)
!4382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !1868)
!4383 = !{i32 7, !"Dwarf Version", i32 4}
!4384 = !{i32 2, !"Debug Info Version", i32 3}
!4385 = !{i32 1, !"wchar_size", i32 2}
!4386 = !{i32 1, !"Code Model", i32 2}
!4387 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4388 = distinct !DISubprogram(name: "m88rs2000_attach", scope: !3, file: !3, line: 782, type: !4389, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!3513, !4391, !4399}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4393)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "m88rs2000_config", file: !291, line: 14, size: 256, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4398}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "demod_addr", scope: !4393, file: !291, line: 16, baseType: !303, size: 8)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "inittab", scope: !4393, file: !291, line: 18, baseType: !4336, size: 64, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4393, file: !291, line: 21, baseType: !315, size: 32, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "set_ts_params", scope: !4393, file: !291, line: 23, baseType: !4279, size: 64, offset: 192)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4401, line: 695, size: 7552, elements: !4402)
!4401 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4402 = !{!4403, !4404, !4405, !4442, !4443, !4457, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4474, !4475, !4476, !4477, !4509, !4520}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4400, file: !4401, line: 696, baseType: !334, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4400, file: !4401, line: 697, baseType: !7, size: 32, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4400, file: !4401, line: 698, baseType: !4406, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4408)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4401, line: 519, size: 320, elements: !4409)
!4409 = !{!4410, !4423, !4424, !4437, !4438}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4408, file: !4401, line: 529, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!315, !4399, !4414, !315}
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4416, line: 69, size: 128, elements: !4417)
!4416 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4417 = !{!4418, !4419, !4420, !4421}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4415, file: !4416, line: 70, baseType: !360, size: 16)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4415, file: !4416, line: 71, baseType: !360, size: 16, offset: 16)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4415, file: !4416, line: 84, baseType: !360, size: 16, offset: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4415, file: !4416, line: 85, baseType: !4422, size: 64, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4408, file: !4401, line: 531, baseType: !4411, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4408, file: !4401, line: 533, baseType: !4425, size: 64, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!315, !4399, !359, !361, !332, !303, !315, !4428}
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4416, line: 135, size: 272, elements: !4430)
!4430 = !{!4431, !4432, !4433}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4429, file: !4416, line: 136, baseType: !305, size: 8)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4429, file: !4416, line: 137, baseType: !360, size: 16)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4429, file: !4416, line: 138, baseType: !4434, size: 272)
!4434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 272, elements: !4435)
!4435 = !{!4436}
!4436 = !DISubrange(count: 34)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4408, file: !4401, line: 536, baseType: !4425, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4408, file: !4401, line: 541, baseType: !4439, size: 64, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!316, !4399}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4400, file: !4401, line: 699, baseType: !298, size: 64, offset: 192)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4400, file: !4401, line: 702, baseType: !4444, size: 64, offset: 256)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4446)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4401, line: 557, size: 192, elements: !4447)
!4447 = !{!4448, !4452, !4456}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4446, file: !4401, line: 558, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !4399, !7}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4446, file: !4401, line: 559, baseType: !4453, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!315, !4399, !7}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4446, file: !4401, line: 560, baseType: !4449, size: 64, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4400, file: !4401, line: 703, baseType: !4458, size: 192, offset: 320)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4459, line: 30, size: 192, elements: !4460)
!4459 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4460 = !{!4461, !4462, !4463}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4458, file: !4459, line: 31, baseType: !997)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4458, file: !4459, line: 32, baseType: !969, size: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4458, file: !4459, line: 33, baseType: !1348, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4400, file: !4401, line: 704, baseType: !4458, size: 192, offset: 512)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4400, file: !4401, line: 706, baseType: !315, size: 32, offset: 704)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4400, file: !4401, line: 707, baseType: !315, size: 32, offset: 736)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4400, file: !4401, line: 708, baseType: !3531, size: 5568, offset: 768)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4400, file: !4401, line: 709, baseType: !552, size: 64, offset: 6336)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4400, file: !4401, line: 713, baseType: !315, size: 32, offset: 6400)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4400, file: !4401, line: 714, baseType: !4471, size: 384, offset: 6432)
!4471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 384, elements: !4472)
!4472 = !{!4473}
!4473 = !DISubrange(count: 48)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4400, file: !4401, line: 715, baseType: !1635, size: 192, offset: 6848)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4400, file: !4401, line: 717, baseType: !1308, size: 192, offset: 7040)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4400, file: !4401, line: 718, baseType: !461, size: 128, offset: 7232)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4400, file: !4401, line: 720, baseType: !4478, size: 64, offset: 7360)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4401, line: 618, size: 832, elements: !4480)
!4480 = !{!4481, !4485, !4486, !4490, !4491, !4492, !4493, !4497, !4498, !4501, !4502, !4505, !4508}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4479, file: !4401, line: 619, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!315, !4399}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4479, file: !4401, line: 621, baseType: !4482, size: 64, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4479, file: !4401, line: 622, baseType: !4487, size: 64, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4399, !315}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4479, file: !4401, line: 623, baseType: !4482, size: 64, offset: 192)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4479, file: !4401, line: 624, baseType: !4487, size: 64, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4479, file: !4401, line: 625, baseType: !4482, size: 64, offset: 320)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4479, file: !4401, line: 627, baseType: !4494, size: 64, offset: 384)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{null, !4399}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4479, file: !4401, line: 628, baseType: !4494, size: 64, offset: 448)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4479, file: !4401, line: 631, baseType: !4499, size: 64, offset: 512)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4401, line: 631, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4479, file: !4401, line: 632, baseType: !4499, size: 64, offset: 576)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4479, file: !4401, line: 633, baseType: !4503, size: 64, offset: 640)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4401, line: 633, flags: DIFlagFwdDecl)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4479, file: !4401, line: 634, baseType: !4506, size: 64, offset: 704)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4401, line: 634, flags: DIFlagFwdDecl)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4479, file: !4401, line: 635, baseType: !4506, size: 64, offset: 768)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4400, file: !4401, line: 721, baseType: !4510, size: 64, offset: 7424)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4512)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4401, line: 664, size: 192, elements: !4513)
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4512, file: !4401, line: 665, baseType: !319, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4512, file: !4401, line: 666, baseType: !315, size: 32, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4512, file: !4401, line: 667, baseType: !359, size: 16, offset: 96)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4512, file: !4401, line: 668, baseType: !359, size: 16, offset: 112)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4512, file: !4401, line: 669, baseType: !359, size: 16, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4512, file: !4401, line: 670, baseType: !359, size: 16, offset: 144)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4400, file: !4401, line: 723, baseType: !3810, size: 64, offset: 7488)
!4521 = !DILocalVariable(name: "config", arg: 1, scope: !4388, file: !3, line: 782, type: !4391)
!4522 = !DILocation(line: 782, column: 70, scope: !4388)
!4523 = !DILocalVariable(name: "i2c", arg: 2, scope: !4388, file: !3, line: 783, type: !4399)
!4524 = !DILocation(line: 783, column: 29, scope: !4388)
!4525 = !DILocalVariable(name: "state", scope: !4388, file: !3, line: 785, type: !4526)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "m88rs2000_state", file: !3, line: 25, size: 10560, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4527, file: !3, line: 26, baseType: !4399, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4527, file: !3, line: 27, baseType: !4391, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4527, file: !3, line: 28, baseType: !3514, size: 10240, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "no_lock_count", scope: !4527, file: !3, line: 29, baseType: !303, size: 8, offset: 10368)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_frequency", scope: !4527, file: !3, line: 30, baseType: !316, size: 32, offset: 10400)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4527, file: !3, line: 31, baseType: !316, size: 32, offset: 10432)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4527, file: !3, line: 32, baseType: !87, size: 32, offset: 10464)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_level", scope: !4527, file: !3, line: 33, baseType: !303, size: 8, offset: 10496)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "errmode", scope: !4527, file: !3, line: 34, baseType: !315, size: 32, offset: 10528)
!4538 = !DILocation(line: 785, column: 26, scope: !4388)
!4539 = !DILocation(line: 788, column: 10, scope: !4388)
!4540 = !DILocation(line: 788, column: 8, scope: !4388)
!4541 = !DILocation(line: 789, column: 6, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 789, column: 6)
!4543 = !DILocation(line: 789, column: 12, scope: !4542)
!4544 = !DILocation(line: 789, column: 6, scope: !4388)
!4545 = !DILocation(line: 790, column: 3, scope: !4542)
!4546 = !DILocation(line: 793, column: 18, scope: !4388)
!4547 = !DILocation(line: 793, column: 2, scope: !4388)
!4548 = !DILocation(line: 793, column: 9, scope: !4388)
!4549 = !DILocation(line: 793, column: 16, scope: !4388)
!4550 = !DILocation(line: 794, column: 15, scope: !4388)
!4551 = !DILocation(line: 794, column: 2, scope: !4388)
!4552 = !DILocation(line: 794, column: 9, scope: !4388)
!4553 = !DILocation(line: 794, column: 13, scope: !4388)
!4554 = !DILocation(line: 795, column: 2, scope: !4388)
!4555 = !DILocation(line: 795, column: 9, scope: !4388)
!4556 = !DILocation(line: 795, column: 25, scope: !4388)
!4557 = !DILocation(line: 796, column: 2, scope: !4388)
!4558 = !DILocation(line: 796, column: 9, scope: !4388)
!4559 = !DILocation(line: 796, column: 21, scope: !4388)
!4560 = !DILocation(line: 797, column: 2, scope: !4388)
!4561 = !DILocation(line: 797, column: 9, scope: !4388)
!4562 = !DILocation(line: 797, column: 19, scope: !4388)
!4563 = !DILocation(line: 800, column: 10, scope: !4388)
!4564 = !DILocation(line: 800, column: 17, scope: !4388)
!4565 = !DILocation(line: 800, column: 26, scope: !4388)
!4566 = !DILocation(line: 800, column: 2, scope: !4388)
!4567 = !DILocation(line: 802, column: 37, scope: !4388)
!4568 = !DILocation(line: 802, column: 2, scope: !4388)
!4569 = !DILocation(line: 802, column: 9, scope: !4388)
!4570 = !DILocation(line: 802, column: 18, scope: !4388)
!4571 = !DILocation(line: 802, column: 35, scope: !4388)
!4572 = !DILocation(line: 803, column: 10, scope: !4388)
!4573 = !DILocation(line: 803, column: 17, scope: !4388)
!4574 = !DILocation(line: 803, column: 2, scope: !4388)
!4575 = !DILabel(scope: !4388, name: "error", file: !3, line: 805)
!4576 = !DILocation(line: 805, column: 1, scope: !4388)
!4577 = !DILocation(line: 806, column: 8, scope: !4388)
!4578 = !DILocation(line: 806, column: 2, scope: !4388)
!4579 = !DILocation(line: 808, column: 2, scope: !4388)
!4580 = !DILocation(line: 809, column: 1, scope: !4388)
!4581 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4582, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!298, !549, !296}
!4584 = !DILocalVariable(name: "s", arg: 1, scope: !4585, file: !284, line: 445, type: !1150)
!4585 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4586, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!298, !1150, !296, !549}
!4588 = !DILocation(line: 445, column: 72, scope: !4585, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 552, column: 10, scope: !4590, inlinedAt: !4593)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !284, line: 540, column: 34)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !284, line: 540, column: 6)
!4592 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4582, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4593 = distinct !DILocation(line: 664, column: 9, scope: !4581)
!4594 = !DILocalVariable(name: "flags", arg: 2, scope: !4585, file: !284, line: 446, type: !296)
!4595 = !DILocation(line: 446, column: 9, scope: !4585, inlinedAt: !4589)
!4596 = !DILocalVariable(name: "size", arg: 3, scope: !4585, file: !284, line: 446, type: !549)
!4597 = !DILocation(line: 446, column: 23, scope: !4585, inlinedAt: !4589)
!4598 = !DILocalVariable(name: "ret", scope: !4585, file: !284, line: 448, type: !298)
!4599 = !DILocation(line: 448, column: 8, scope: !4585, inlinedAt: !4589)
!4600 = !DILocalVariable(name: "flags", arg: 1, scope: !4601, file: !284, line: 318, type: !296)
!4601 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4602, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!283, !296}
!4604 = !DILocation(line: 318, column: 67, scope: !4601, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 553, column: 20, scope: !4590, inlinedAt: !4593)
!4606 = !DILocalVariable(name: "size", arg: 1, scope: !4607, file: !284, line: 346, type: !549)
!4607 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4608, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!7, !549}
!4610 = !DILocation(line: 346, column: 58, scope: !4607, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 547, column: 11, scope: !4590, inlinedAt: !4593)
!4612 = !DILocalVariable(name: "size", arg: 1, scope: !4613, file: !284, line: 472, type: !549)
!4613 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4614, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!298, !549, !296, !7}
!4616 = !DILocation(line: 472, column: 28, scope: !4613, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 481, column: 9, scope: !4618, inlinedAt: !4619)
!4618 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4582, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4619 = distinct !DILocation(line: 545, column: 11, scope: !4620, inlinedAt: !4593)
!4620 = distinct !DILexicalBlock(scope: !4590, file: !284, line: 544, column: 7)
!4621 = !DILocalVariable(name: "flags", arg: 2, scope: !4613, file: !284, line: 472, type: !296)
!4622 = !DILocation(line: 472, column: 40, scope: !4613, inlinedAt: !4617)
!4623 = !DILocalVariable(name: "order", arg: 3, scope: !4613, file: !284, line: 472, type: !7)
!4624 = !DILocation(line: 472, column: 60, scope: !4613, inlinedAt: !4617)
!4625 = !DILocalVariable(name: "size", arg: 1, scope: !4618, file: !284, line: 478, type: !549)
!4626 = !DILocation(line: 478, column: 51, scope: !4618, inlinedAt: !4619)
!4627 = !DILocalVariable(name: "flags", arg: 2, scope: !4618, file: !284, line: 478, type: !296)
!4628 = !DILocation(line: 478, column: 63, scope: !4618, inlinedAt: !4619)
!4629 = !DILocalVariable(name: "order", scope: !4618, file: !284, line: 480, type: !7)
!4630 = !DILocation(line: 480, column: 15, scope: !4618, inlinedAt: !4619)
!4631 = !DILocalVariable(name: "size", arg: 1, scope: !4592, file: !284, line: 538, type: !549)
!4632 = !DILocation(line: 538, column: 45, scope: !4592, inlinedAt: !4593)
!4633 = !DILocalVariable(name: "flags", arg: 2, scope: !4592, file: !284, line: 538, type: !296)
!4634 = !DILocation(line: 538, column: 57, scope: !4592, inlinedAt: !4593)
!4635 = !DILocalVariable(name: "index", scope: !4590, file: !284, line: 542, type: !7)
!4636 = !DILocation(line: 542, column: 16, scope: !4590, inlinedAt: !4593)
!4637 = !DILocalVariable(name: "size", arg: 1, scope: !4581, file: !284, line: 662, type: !549)
!4638 = !DILocation(line: 662, column: 36, scope: !4581)
!4639 = !DILocalVariable(name: "flags", arg: 2, scope: !4581, file: !284, line: 662, type: !296)
!4640 = !DILocation(line: 662, column: 48, scope: !4581)
!4641 = !DILocation(line: 664, column: 17, scope: !4581)
!4642 = !DILocation(line: 664, column: 23, scope: !4581)
!4643 = !DILocation(line: 664, column: 29, scope: !4581)
!4644 = !DILocation(line: 540, column: 27, scope: !4591, inlinedAt: !4593)
!4645 = !DILocation(line: 540, column: 6, scope: !4591, inlinedAt: !4593)
!4646 = !DILocation(line: 540, column: 6, scope: !4592, inlinedAt: !4593)
!4647 = !DILocation(line: 544, column: 7, scope: !4620, inlinedAt: !4593)
!4648 = !DILocation(line: 544, column: 12, scope: !4620, inlinedAt: !4593)
!4649 = !DILocation(line: 544, column: 7, scope: !4590, inlinedAt: !4593)
!4650 = !DILocation(line: 545, column: 25, scope: !4620, inlinedAt: !4593)
!4651 = !DILocation(line: 545, column: 31, scope: !4620, inlinedAt: !4593)
!4652 = !DILocation(line: 480, column: 33, scope: !4618, inlinedAt: !4619)
!4653 = !DILocation(line: 480, column: 23, scope: !4618, inlinedAt: !4619)
!4654 = !DILocation(line: 481, column: 29, scope: !4618, inlinedAt: !4619)
!4655 = !DILocation(line: 481, column: 35, scope: !4618, inlinedAt: !4619)
!4656 = !DILocation(line: 481, column: 42, scope: !4618, inlinedAt: !4619)
!4657 = !DILocation(line: 474, column: 23, scope: !4613, inlinedAt: !4617)
!4658 = !DILocation(line: 474, column: 29, scope: !4613, inlinedAt: !4617)
!4659 = !DILocation(line: 474, column: 36, scope: !4613, inlinedAt: !4617)
!4660 = !DILocation(line: 474, column: 9, scope: !4613, inlinedAt: !4617)
!4661 = !DILocation(line: 545, column: 4, scope: !4620, inlinedAt: !4593)
!4662 = !DILocation(line: 547, column: 25, scope: !4590, inlinedAt: !4593)
!4663 = !DILocation(line: 348, column: 7, scope: !4664, inlinedAt: !4611)
!4664 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 348, column: 6)
!4665 = !DILocation(line: 348, column: 6, scope: !4607, inlinedAt: !4611)
!4666 = !DILocation(line: 349, column: 3, scope: !4664, inlinedAt: !4611)
!4667 = !DILocation(line: 351, column: 6, scope: !4668, inlinedAt: !4611)
!4668 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 351, column: 6)
!4669 = !DILocation(line: 351, column: 11, scope: !4668, inlinedAt: !4611)
!4670 = !DILocation(line: 351, column: 6, scope: !4607, inlinedAt: !4611)
!4671 = !DILocation(line: 352, column: 3, scope: !4668, inlinedAt: !4611)
!4672 = !DILocation(line: 354, column: 32, scope: !4673, inlinedAt: !4611)
!4673 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 354, column: 6)
!4674 = !DILocation(line: 354, column: 37, scope: !4673, inlinedAt: !4611)
!4675 = !DILocation(line: 354, column: 42, scope: !4673, inlinedAt: !4611)
!4676 = !DILocation(line: 354, column: 45, scope: !4673, inlinedAt: !4611)
!4677 = !DILocation(line: 354, column: 50, scope: !4673, inlinedAt: !4611)
!4678 = !DILocation(line: 354, column: 6, scope: !4607, inlinedAt: !4611)
!4679 = !DILocation(line: 355, column: 3, scope: !4673, inlinedAt: !4611)
!4680 = !DILocation(line: 356, column: 32, scope: !4681, inlinedAt: !4611)
!4681 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 356, column: 6)
!4682 = !DILocation(line: 356, column: 37, scope: !4681, inlinedAt: !4611)
!4683 = !DILocation(line: 356, column: 43, scope: !4681, inlinedAt: !4611)
!4684 = !DILocation(line: 356, column: 46, scope: !4681, inlinedAt: !4611)
!4685 = !DILocation(line: 356, column: 51, scope: !4681, inlinedAt: !4611)
!4686 = !DILocation(line: 356, column: 6, scope: !4607, inlinedAt: !4611)
!4687 = !DILocation(line: 357, column: 3, scope: !4681, inlinedAt: !4611)
!4688 = !DILocation(line: 358, column: 6, scope: !4689, inlinedAt: !4611)
!4689 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 358, column: 6)
!4690 = !DILocation(line: 358, column: 11, scope: !4689, inlinedAt: !4611)
!4691 = !DILocation(line: 358, column: 6, scope: !4607, inlinedAt: !4611)
!4692 = !DILocation(line: 358, column: 26, scope: !4689, inlinedAt: !4611)
!4693 = !DILocation(line: 359, column: 6, scope: !4694, inlinedAt: !4611)
!4694 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 359, column: 6)
!4695 = !DILocation(line: 359, column: 11, scope: !4694, inlinedAt: !4611)
!4696 = !DILocation(line: 359, column: 6, scope: !4607, inlinedAt: !4611)
!4697 = !DILocation(line: 359, column: 26, scope: !4694, inlinedAt: !4611)
!4698 = !DILocation(line: 360, column: 6, scope: !4699, inlinedAt: !4611)
!4699 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 360, column: 6)
!4700 = !DILocation(line: 360, column: 11, scope: !4699, inlinedAt: !4611)
!4701 = !DILocation(line: 360, column: 6, scope: !4607, inlinedAt: !4611)
!4702 = !DILocation(line: 360, column: 26, scope: !4699, inlinedAt: !4611)
!4703 = !DILocation(line: 361, column: 6, scope: !4704, inlinedAt: !4611)
!4704 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 361, column: 6)
!4705 = !DILocation(line: 361, column: 11, scope: !4704, inlinedAt: !4611)
!4706 = !DILocation(line: 361, column: 6, scope: !4607, inlinedAt: !4611)
!4707 = !DILocation(line: 361, column: 26, scope: !4704, inlinedAt: !4611)
!4708 = !DILocation(line: 362, column: 6, scope: !4709, inlinedAt: !4611)
!4709 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 362, column: 6)
!4710 = !DILocation(line: 362, column: 11, scope: !4709, inlinedAt: !4611)
!4711 = !DILocation(line: 362, column: 6, scope: !4607, inlinedAt: !4611)
!4712 = !DILocation(line: 362, column: 26, scope: !4709, inlinedAt: !4611)
!4713 = !DILocation(line: 363, column: 6, scope: !4714, inlinedAt: !4611)
!4714 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 363, column: 6)
!4715 = !DILocation(line: 363, column: 11, scope: !4714, inlinedAt: !4611)
!4716 = !DILocation(line: 363, column: 6, scope: !4607, inlinedAt: !4611)
!4717 = !DILocation(line: 363, column: 26, scope: !4714, inlinedAt: !4611)
!4718 = !DILocation(line: 364, column: 6, scope: !4719, inlinedAt: !4611)
!4719 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 364, column: 6)
!4720 = !DILocation(line: 364, column: 11, scope: !4719, inlinedAt: !4611)
!4721 = !DILocation(line: 364, column: 6, scope: !4607, inlinedAt: !4611)
!4722 = !DILocation(line: 364, column: 26, scope: !4719, inlinedAt: !4611)
!4723 = !DILocation(line: 365, column: 6, scope: !4724, inlinedAt: !4611)
!4724 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 365, column: 6)
!4725 = !DILocation(line: 365, column: 11, scope: !4724, inlinedAt: !4611)
!4726 = !DILocation(line: 365, column: 6, scope: !4607, inlinedAt: !4611)
!4727 = !DILocation(line: 365, column: 26, scope: !4724, inlinedAt: !4611)
!4728 = !DILocation(line: 366, column: 6, scope: !4729, inlinedAt: !4611)
!4729 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 366, column: 6)
!4730 = !DILocation(line: 366, column: 11, scope: !4729, inlinedAt: !4611)
!4731 = !DILocation(line: 366, column: 6, scope: !4607, inlinedAt: !4611)
!4732 = !DILocation(line: 366, column: 26, scope: !4729, inlinedAt: !4611)
!4733 = !DILocation(line: 367, column: 6, scope: !4734, inlinedAt: !4611)
!4734 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 367, column: 6)
!4735 = !DILocation(line: 367, column: 11, scope: !4734, inlinedAt: !4611)
!4736 = !DILocation(line: 367, column: 6, scope: !4607, inlinedAt: !4611)
!4737 = !DILocation(line: 367, column: 26, scope: !4734, inlinedAt: !4611)
!4738 = !DILocation(line: 368, column: 6, scope: !4739, inlinedAt: !4611)
!4739 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 368, column: 6)
!4740 = !DILocation(line: 368, column: 11, scope: !4739, inlinedAt: !4611)
!4741 = !DILocation(line: 368, column: 6, scope: !4607, inlinedAt: !4611)
!4742 = !DILocation(line: 368, column: 26, scope: !4739, inlinedAt: !4611)
!4743 = !DILocation(line: 369, column: 6, scope: !4744, inlinedAt: !4611)
!4744 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 369, column: 6)
!4745 = !DILocation(line: 369, column: 11, scope: !4744, inlinedAt: !4611)
!4746 = !DILocation(line: 369, column: 6, scope: !4607, inlinedAt: !4611)
!4747 = !DILocation(line: 369, column: 26, scope: !4744, inlinedAt: !4611)
!4748 = !DILocation(line: 370, column: 6, scope: !4749, inlinedAt: !4611)
!4749 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 370, column: 6)
!4750 = !DILocation(line: 370, column: 11, scope: !4749, inlinedAt: !4611)
!4751 = !DILocation(line: 370, column: 6, scope: !4607, inlinedAt: !4611)
!4752 = !DILocation(line: 370, column: 26, scope: !4749, inlinedAt: !4611)
!4753 = !DILocation(line: 371, column: 6, scope: !4754, inlinedAt: !4611)
!4754 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 371, column: 6)
!4755 = !DILocation(line: 371, column: 11, scope: !4754, inlinedAt: !4611)
!4756 = !DILocation(line: 371, column: 6, scope: !4607, inlinedAt: !4611)
!4757 = !DILocation(line: 371, column: 26, scope: !4754, inlinedAt: !4611)
!4758 = !DILocation(line: 372, column: 6, scope: !4759, inlinedAt: !4611)
!4759 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 372, column: 6)
!4760 = !DILocation(line: 372, column: 11, scope: !4759, inlinedAt: !4611)
!4761 = !DILocation(line: 372, column: 6, scope: !4607, inlinedAt: !4611)
!4762 = !DILocation(line: 372, column: 26, scope: !4759, inlinedAt: !4611)
!4763 = !DILocation(line: 373, column: 6, scope: !4764, inlinedAt: !4611)
!4764 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 373, column: 6)
!4765 = !DILocation(line: 373, column: 11, scope: !4764, inlinedAt: !4611)
!4766 = !DILocation(line: 373, column: 6, scope: !4607, inlinedAt: !4611)
!4767 = !DILocation(line: 373, column: 26, scope: !4764, inlinedAt: !4611)
!4768 = !DILocation(line: 374, column: 6, scope: !4769, inlinedAt: !4611)
!4769 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 374, column: 6)
!4770 = !DILocation(line: 374, column: 11, scope: !4769, inlinedAt: !4611)
!4771 = !DILocation(line: 374, column: 6, scope: !4607, inlinedAt: !4611)
!4772 = !DILocation(line: 374, column: 26, scope: !4769, inlinedAt: !4611)
!4773 = !DILocation(line: 375, column: 6, scope: !4774, inlinedAt: !4611)
!4774 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 375, column: 6)
!4775 = !DILocation(line: 375, column: 11, scope: !4774, inlinedAt: !4611)
!4776 = !DILocation(line: 375, column: 6, scope: !4607, inlinedAt: !4611)
!4777 = !DILocation(line: 375, column: 27, scope: !4774, inlinedAt: !4611)
!4778 = !DILocation(line: 376, column: 6, scope: !4779, inlinedAt: !4611)
!4779 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 376, column: 6)
!4780 = !DILocation(line: 376, column: 11, scope: !4779, inlinedAt: !4611)
!4781 = !DILocation(line: 376, column: 6, scope: !4607, inlinedAt: !4611)
!4782 = !DILocation(line: 376, column: 32, scope: !4779, inlinedAt: !4611)
!4783 = !DILocation(line: 377, column: 6, scope: !4784, inlinedAt: !4611)
!4784 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 377, column: 6)
!4785 = !DILocation(line: 377, column: 11, scope: !4784, inlinedAt: !4611)
!4786 = !DILocation(line: 377, column: 6, scope: !4607, inlinedAt: !4611)
!4787 = !DILocation(line: 377, column: 32, scope: !4784, inlinedAt: !4611)
!4788 = !DILocation(line: 378, column: 6, scope: !4789, inlinedAt: !4611)
!4789 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 378, column: 6)
!4790 = !DILocation(line: 378, column: 11, scope: !4789, inlinedAt: !4611)
!4791 = !DILocation(line: 378, column: 6, scope: !4607, inlinedAt: !4611)
!4792 = !DILocation(line: 378, column: 32, scope: !4789, inlinedAt: !4611)
!4793 = !DILocation(line: 379, column: 6, scope: !4794, inlinedAt: !4611)
!4794 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 379, column: 6)
!4795 = !DILocation(line: 379, column: 11, scope: !4794, inlinedAt: !4611)
!4796 = !DILocation(line: 379, column: 6, scope: !4607, inlinedAt: !4611)
!4797 = !DILocation(line: 379, column: 33, scope: !4794, inlinedAt: !4611)
!4798 = !DILocation(line: 380, column: 6, scope: !4799, inlinedAt: !4611)
!4799 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 380, column: 6)
!4800 = !DILocation(line: 380, column: 11, scope: !4799, inlinedAt: !4611)
!4801 = !DILocation(line: 380, column: 6, scope: !4607, inlinedAt: !4611)
!4802 = !DILocation(line: 380, column: 33, scope: !4799, inlinedAt: !4611)
!4803 = !DILocation(line: 381, column: 6, scope: !4804, inlinedAt: !4611)
!4804 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 381, column: 6)
!4805 = !DILocation(line: 381, column: 11, scope: !4804, inlinedAt: !4611)
!4806 = !DILocation(line: 381, column: 6, scope: !4607, inlinedAt: !4611)
!4807 = !DILocation(line: 381, column: 33, scope: !4804, inlinedAt: !4611)
!4808 = !DILocation(line: 382, column: 2, scope: !4809, inlinedAt: !4611)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !284, line: 382, column: 2)
!4810 = distinct !DILexicalBlock(scope: !4607, file: !284, line: 382, column: 2)
!4811 = !{i32 -2143552985, i32 -2143552956, i32 -2143552910, i32 -2143552852, i32 -2143552798, i32 -2143552744, i32 -2143552689, i32 -2143552658}
!4812 = !DILocation(line: 382, column: 2, scope: !4813, inlinedAt: !4611)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !284, line: 382, column: 2)
!4814 = distinct !DILexicalBlock(scope: !4810, file: !284, line: 382, column: 2)
!4815 = !{i32 -2143552215, i32 -2143552208, i32 -2143552154, i32 -2143552123, i32 -2143552093}
!4816 = !DILocation(line: 382, column: 2, scope: !4814, inlinedAt: !4611)
!4817 = !DILocation(line: 386, column: 1, scope: !4607, inlinedAt: !4611)
!4818 = !DILocation(line: 547, column: 9, scope: !4590, inlinedAt: !4593)
!4819 = !DILocation(line: 549, column: 8, scope: !4820, inlinedAt: !4593)
!4820 = distinct !DILexicalBlock(scope: !4590, file: !284, line: 549, column: 7)
!4821 = !DILocation(line: 549, column: 7, scope: !4590, inlinedAt: !4593)
!4822 = !DILocation(line: 550, column: 4, scope: !4820, inlinedAt: !4593)
!4823 = !DILocation(line: 553, column: 33, scope: !4590, inlinedAt: !4593)
!4824 = !DILocation(line: 325, column: 6, scope: !4825, inlinedAt: !4605)
!4825 = distinct !DILexicalBlock(scope: !4601, file: !284, line: 325, column: 6)
!4826 = !DILocation(line: 325, column: 6, scope: !4601, inlinedAt: !4605)
!4827 = !DILocation(line: 326, column: 3, scope: !4825, inlinedAt: !4605)
!4828 = !DILocation(line: 332, column: 9, scope: !4601, inlinedAt: !4605)
!4829 = !DILocation(line: 332, column: 15, scope: !4601, inlinedAt: !4605)
!4830 = !DILocation(line: 332, column: 2, scope: !4601, inlinedAt: !4605)
!4831 = !DILocation(line: 336, column: 1, scope: !4601, inlinedAt: !4605)
!4832 = !DILocation(line: 553, column: 5, scope: !4590, inlinedAt: !4593)
!4833 = !DILocation(line: 553, column: 41, scope: !4590, inlinedAt: !4593)
!4834 = !DILocation(line: 554, column: 5, scope: !4590, inlinedAt: !4593)
!4835 = !DILocation(line: 554, column: 12, scope: !4590, inlinedAt: !4593)
!4836 = !DILocation(line: 448, column: 31, scope: !4585, inlinedAt: !4589)
!4837 = !DILocation(line: 448, column: 34, scope: !4585, inlinedAt: !4589)
!4838 = !DILocation(line: 448, column: 14, scope: !4585, inlinedAt: !4589)
!4839 = !DILocation(line: 450, column: 22, scope: !4585, inlinedAt: !4589)
!4840 = !DILocation(line: 450, column: 25, scope: !4585, inlinedAt: !4589)
!4841 = !DILocation(line: 450, column: 30, scope: !4585, inlinedAt: !4589)
!4842 = !DILocation(line: 450, column: 36, scope: !4585, inlinedAt: !4589)
!4843 = !DILocation(line: 450, column: 8, scope: !4585, inlinedAt: !4589)
!4844 = !DILocation(line: 450, column: 6, scope: !4585, inlinedAt: !4589)
!4845 = !DILocation(line: 451, column: 9, scope: !4585, inlinedAt: !4589)
!4846 = !DILocation(line: 552, column: 3, scope: !4590, inlinedAt: !4593)
!4847 = !DILocation(line: 557, column: 19, scope: !4592, inlinedAt: !4593)
!4848 = !DILocation(line: 557, column: 25, scope: !4592, inlinedAt: !4593)
!4849 = !DILocation(line: 557, column: 9, scope: !4592, inlinedAt: !4593)
!4850 = !DILocation(line: 557, column: 2, scope: !4592, inlinedAt: !4593)
!4851 = !DILocation(line: 558, column: 1, scope: !4592, inlinedAt: !4593)
!4852 = !DILocation(line: 664, column: 2, scope: !4581)
!4853 = distinct !DISubprogram(name: "get_order", scope: !4854, file: !4854, line: 29, type: !4855, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4854 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!315, !552}
!4857 = !DILocalVariable(name: "x", arg: 1, scope: !4858, file: !4859, line: 366, type: !320)
!4858 = distinct !DISubprogram(name: "fls64", scope: !4859, file: !4859, line: 366, type: !4860, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4859 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!315, !320}
!4862 = !DILocation(line: 366, column: 40, scope: !4858, inlinedAt: !4863)
!4863 = distinct !DILocation(line: 46, column: 9, scope: !4853)
!4864 = !DILocalVariable(name: "bitpos", scope: !4858, file: !4859, line: 368, type: !315)
!4865 = !DILocation(line: 368, column: 6, scope: !4858, inlinedAt: !4863)
!4866 = !DILocalVariable(name: "size", arg: 1, scope: !4853, file: !4854, line: 29, type: !552)
!4867 = !DILocation(line: 29, column: 63, scope: !4853)
!4868 = !DILocation(line: 31, column: 27, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4853, file: !4854, line: 31, column: 6)
!4870 = !DILocation(line: 31, column: 6, scope: !4869)
!4871 = !DILocation(line: 31, column: 6, scope: !4853)
!4872 = !DILocation(line: 32, column: 8, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4874, file: !4854, line: 32, column: 7)
!4874 = distinct !DILexicalBlock(scope: !4869, file: !4854, line: 31, column: 34)
!4875 = !DILocation(line: 32, column: 7, scope: !4874)
!4876 = !DILocation(line: 33, column: 4, scope: !4873)
!4877 = !DILocation(line: 35, column: 7, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4874, file: !4854, line: 35, column: 7)
!4879 = !DILocation(line: 35, column: 12, scope: !4878)
!4880 = !DILocation(line: 35, column: 7, scope: !4874)
!4881 = !DILocation(line: 36, column: 4, scope: !4878)
!4882 = !DILocation(line: 38, column: 10, scope: !4874)
!4883 = !DILocation(line: 38, column: 28, scope: !4874)
!4884 = !DILocation(line: 38, column: 41, scope: !4874)
!4885 = !DILocation(line: 38, column: 3, scope: !4874)
!4886 = !DILocation(line: 41, column: 6, scope: !4853)
!4887 = !DILocation(line: 42, column: 7, scope: !4853)
!4888 = !DILocation(line: 46, column: 15, scope: !4853)
!4889 = !DILocation(line: 374, column: 2, scope: !4858, inlinedAt: !4863)
!4890 = !DILocation(line: 376, column: 14, scope: !4858, inlinedAt: !4863)
!4891 = !{i32 325488}
!4892 = !DILocation(line: 377, column: 9, scope: !4858, inlinedAt: !4863)
!4893 = !DILocation(line: 377, column: 16, scope: !4858, inlinedAt: !4863)
!4894 = !DILocation(line: 46, column: 2, scope: !4853)
!4895 = !DILocation(line: 48, column: 1, scope: !4853)
!4896 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4897, file: !4897, line: 30, type: !4898, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4897 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!315, !319}
!4900 = !DILocation(line: 366, column: 40, scope: !4858, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 32, column: 9, scope: !4896)
!4902 = !DILocation(line: 368, column: 6, scope: !4858, inlinedAt: !4901)
!4903 = !DILocalVariable(name: "n", arg: 1, scope: !4896, file: !4897, line: 30, type: !319)
!4904 = !DILocation(line: 30, column: 21, scope: !4896)
!4905 = !DILocation(line: 32, column: 15, scope: !4896)
!4906 = !DILocation(line: 374, column: 2, scope: !4858, inlinedAt: !4901)
!4907 = !DILocation(line: 376, column: 14, scope: !4858, inlinedAt: !4901)
!4908 = !DILocation(line: 377, column: 9, scope: !4858, inlinedAt: !4901)
!4909 = !DILocation(line: 377, column: 16, scope: !4858, inlinedAt: !4901)
!4910 = !DILocation(line: 32, column: 18, scope: !4896)
!4911 = !DILocation(line: 32, column: 2, scope: !4896)
!4912 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4913, file: !4913, line: 137, type: !4914, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4913 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!298, !1150, !2262, !549, !296}
!4916 = !DILocalVariable(name: "s", arg: 1, scope: !4912, file: !4913, line: 137, type: !1150)
!4917 = !DILocation(line: 137, column: 54, scope: !4912)
!4918 = !DILocalVariable(name: "object", arg: 2, scope: !4912, file: !4913, line: 137, type: !2262)
!4919 = !DILocation(line: 137, column: 69, scope: !4912)
!4920 = !DILocalVariable(name: "size", arg: 3, scope: !4912, file: !4913, line: 138, type: !549)
!4921 = !DILocation(line: 138, column: 12, scope: !4912)
!4922 = !DILocalVariable(name: "flags", arg: 4, scope: !4912, file: !4913, line: 138, type: !296)
!4923 = !DILocation(line: 138, column: 24, scope: !4912)
!4924 = !DILocation(line: 140, column: 17, scope: !4912)
!4925 = !DILocation(line: 140, column: 2, scope: !4912)
!4926 = distinct !DISubprogram(name: "m88rs2000_release", scope: !3, file: !3, line: 740, type: !3511, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4927 = !DILocalVariable(name: "fe", arg: 1, scope: !4926, file: !3, line: 740, type: !3513)
!4928 = !DILocation(line: 740, column: 52, scope: !4926)
!4929 = !DILocalVariable(name: "state", scope: !4926, file: !3, line: 742, type: !4526)
!4930 = !DILocation(line: 742, column: 26, scope: !4926)
!4931 = !DILocation(line: 742, column: 34, scope: !4926)
!4932 = !DILocation(line: 742, column: 38, scope: !4926)
!4933 = !DILocation(line: 743, column: 8, scope: !4926)
!4934 = !DILocation(line: 743, column: 2, scope: !4926)
!4935 = !DILocation(line: 744, column: 1, scope: !4926)
!4936 = distinct !DISubprogram(name: "m88rs2000_init", scope: !3, file: !3, line: 430, type: !4187, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4937 = !DILocalVariable(name: "fe", arg: 1, scope: !4936, file: !3, line: 430, type: !3513)
!4938 = !DILocation(line: 430, column: 48, scope: !4936)
!4939 = !DILocalVariable(name: "state", scope: !4936, file: !3, line: 432, type: !4526)
!4940 = !DILocation(line: 432, column: 26, scope: !4936)
!4941 = !DILocation(line: 432, column: 34, scope: !4936)
!4942 = !DILocation(line: 432, column: 38, scope: !4936)
!4943 = !DILocalVariable(name: "ret", scope: !4936, file: !3, line: 433, type: !315)
!4944 = !DILocation(line: 433, column: 6, scope: !4936)
!4945 = !DILocation(line: 435, column: 2, scope: !4936)
!4946 = !DILocation(line: 435, column: 2, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 435, column: 2)
!4948 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 435, column: 2)
!4949 = !DILocation(line: 435, column: 2, scope: !4948)
!4950 = !DILocation(line: 437, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 437, column: 6)
!4952 = !DILocation(line: 437, column: 13, scope: !4951)
!4953 = !DILocation(line: 437, column: 21, scope: !4951)
!4954 = !DILocation(line: 437, column: 6, scope: !4936)
!4955 = !DILocation(line: 438, column: 27, scope: !4951)
!4956 = !DILocation(line: 439, column: 23, scope: !4951)
!4957 = !DILocation(line: 439, column: 30, scope: !4951)
!4958 = !DILocation(line: 439, column: 38, scope: !4951)
!4959 = !DILocation(line: 439, column: 5, scope: !4951)
!4960 = !DILocation(line: 438, column: 9, scope: !4951)
!4961 = !DILocation(line: 438, column: 7, scope: !4951)
!4962 = !DILocation(line: 438, column: 3, scope: !4951)
!4963 = !DILocation(line: 441, column: 27, scope: !4951)
!4964 = !DILocation(line: 441, column: 9, scope: !4951)
!4965 = !DILocation(line: 441, column: 7, scope: !4951)
!4966 = !DILocation(line: 443, column: 9, scope: !4936)
!4967 = !DILocation(line: 443, column: 2, scope: !4936)
!4968 = distinct !DISubprogram(name: "m88rs2000_sleep", scope: !3, file: !3, line: 446, type: !4187, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4969 = !DILocalVariable(name: "fe", arg: 1, scope: !4968, file: !3, line: 446, type: !3513)
!4970 = !DILocation(line: 446, column: 49, scope: !4968)
!4971 = !DILocalVariable(name: "state", scope: !4968, file: !3, line: 448, type: !4526)
!4972 = !DILocation(line: 448, column: 26, scope: !4968)
!4973 = !DILocation(line: 448, column: 34, scope: !4968)
!4974 = !DILocation(line: 448, column: 38, scope: !4968)
!4975 = !DILocalVariable(name: "ret", scope: !4968, file: !3, line: 449, type: !315)
!4976 = !DILocation(line: 449, column: 6, scope: !4968)
!4977 = !DILocation(line: 451, column: 26, scope: !4968)
!4978 = !DILocation(line: 451, column: 8, scope: !4968)
!4979 = !DILocation(line: 451, column: 6, scope: !4968)
!4980 = !DILocation(line: 452, column: 9, scope: !4968)
!4981 = !DILocation(line: 452, column: 2, scope: !4968)
!4982 = distinct !DISubprogram(name: "m88rs2000_set_frontend", scope: !3, file: !3, line: 596, type: !4187, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!4983 = !DILocalVariable(name: "fe", arg: 1, scope: !4982, file: !3, line: 596, type: !3513)
!4984 = !DILocation(line: 596, column: 56, scope: !4982)
!4985 = !DILocalVariable(name: "state", scope: !4982, file: !3, line: 598, type: !4526)
!4986 = !DILocation(line: 598, column: 26, scope: !4982)
!4987 = !DILocation(line: 598, column: 34, scope: !4982)
!4988 = !DILocation(line: 598, column: 38, scope: !4982)
!4989 = !DILocalVariable(name: "c", scope: !4982, file: !3, line: 599, type: !4220)
!4990 = !DILocation(line: 599, column: 34, scope: !4982)
!4991 = !DILocation(line: 599, column: 39, scope: !4982)
!4992 = !DILocation(line: 599, column: 43, scope: !4982)
!4993 = !DILocalVariable(name: "status", scope: !4982, file: !3, line: 600, type: !40)
!4994 = !DILocation(line: 600, column: 17, scope: !4982)
!4995 = !DILocalVariable(name: "i", scope: !4982, file: !3, line: 601, type: !315)
!4996 = !DILocation(line: 601, column: 6, scope: !4982)
!4997 = !DILocalVariable(name: "ret", scope: !4982, file: !3, line: 601, type: !315)
!4998 = !DILocation(line: 601, column: 9, scope: !4982)
!4999 = !DILocalVariable(name: "tuner_freq", scope: !4982, file: !3, line: 602, type: !316)
!5000 = !DILocation(line: 602, column: 6, scope: !4982)
!5001 = !DILocalVariable(name: "offset", scope: !4982, file: !3, line: 603, type: !310)
!5002 = !DILocation(line: 603, column: 6, scope: !4982)
!5003 = !DILocalVariable(name: "reg", scope: !4982, file: !3, line: 604, type: !303)
!5004 = !DILocation(line: 604, column: 5, scope: !4982)
!5005 = !DILocation(line: 606, column: 2, scope: !4982)
!5006 = !DILocation(line: 606, column: 9, scope: !4982)
!5007 = !DILocation(line: 606, column: 23, scope: !4982)
!5008 = !DILocation(line: 608, column: 6, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 608, column: 6)
!5010 = !DILocation(line: 608, column: 9, scope: !5009)
!5011 = !DILocation(line: 608, column: 25, scope: !5009)
!5012 = !DILocation(line: 608, column: 6, scope: !4982)
!5013 = !DILocation(line: 609, column: 3, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 608, column: 38)
!5015 = !DILocation(line: 609, column: 3, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 609, column: 3)
!5017 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 609, column: 3)
!5018 = !DILocation(line: 609, column: 3, scope: !5017)
!5019 = !DILocation(line: 611, column: 3, scope: !5014)
!5020 = !DILocation(line: 615, column: 6, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 615, column: 6)
!5022 = !DILocation(line: 615, column: 10, scope: !5021)
!5023 = !DILocation(line: 615, column: 14, scope: !5021)
!5024 = !DILocation(line: 615, column: 24, scope: !5021)
!5025 = !DILocation(line: 615, column: 6, scope: !4982)
!5026 = !DILocation(line: 616, column: 9, scope: !5021)
!5027 = !DILocation(line: 616, column: 13, scope: !5021)
!5028 = !DILocation(line: 616, column: 17, scope: !5021)
!5029 = !DILocation(line: 616, column: 27, scope: !5021)
!5030 = !DILocation(line: 616, column: 38, scope: !5021)
!5031 = !DILocation(line: 616, column: 7, scope: !5021)
!5032 = !DILocation(line: 616, column: 3, scope: !5021)
!5033 = !DILocation(line: 618, column: 6, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 618, column: 6)
!5035 = !DILocation(line: 618, column: 10, scope: !5034)
!5036 = !DILocation(line: 618, column: 6, scope: !4982)
!5037 = !DILocation(line: 619, column: 3, scope: !5034)
!5038 = !DILocation(line: 621, column: 6, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 621, column: 6)
!5040 = !DILocation(line: 621, column: 10, scope: !5039)
!5041 = !DILocation(line: 621, column: 14, scope: !5039)
!5042 = !DILocation(line: 621, column: 24, scope: !5039)
!5043 = !DILocation(line: 621, column: 6, scope: !4982)
!5044 = !DILocation(line: 622, column: 9, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 621, column: 39)
!5046 = !DILocation(line: 622, column: 13, scope: !5045)
!5047 = !DILocation(line: 622, column: 17, scope: !5045)
!5048 = !DILocation(line: 622, column: 27, scope: !5045)
!5049 = !DILocation(line: 622, column: 41, scope: !5045)
!5050 = !DILocation(line: 622, column: 7, scope: !5045)
!5051 = !DILocation(line: 624, column: 7, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 624, column: 7)
!5053 = !DILocation(line: 624, column: 11, scope: !5052)
!5054 = !DILocation(line: 624, column: 7, scope: !5045)
!5055 = !DILocation(line: 625, column: 4, scope: !5052)
!5056 = !DILocation(line: 627, column: 23, scope: !5045)
!5057 = !DILocation(line: 627, column: 36, scope: !5045)
!5058 = !DILocation(line: 627, column: 39, scope: !5045)
!5059 = !DILocation(line: 627, column: 34, scope: !5045)
!5060 = !DILocation(line: 627, column: 12, scope: !5045)
!5061 = !DILocation(line: 627, column: 10, scope: !5045)
!5062 = !DILocation(line: 628, column: 2, scope: !5045)
!5063 = !DILocation(line: 629, column: 10, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 628, column: 9)
!5065 = !DILocation(line: 633, column: 8, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 633, column: 6)
!5067 = !DILocation(line: 633, column: 11, scope: !5066)
!5068 = !DILocation(line: 633, column: 21, scope: !5066)
!5069 = !DILocation(line: 633, column: 31, scope: !5066)
!5070 = !DILocation(line: 633, column: 51, scope: !5066)
!5071 = !DILocation(line: 634, column: 6, scope: !5066)
!5072 = !DILocation(line: 634, column: 9, scope: !5066)
!5073 = !DILocation(line: 634, column: 19, scope: !5066)
!5074 = !DILocation(line: 634, column: 29, scope: !5066)
!5075 = !DILocation(line: 633, column: 6, scope: !4982)
!5076 = !DILocation(line: 635, column: 28, scope: !5066)
!5077 = !DILocation(line: 635, column: 9, scope: !5066)
!5078 = !DILocation(line: 635, column: 7, scope: !5066)
!5079 = !DILocation(line: 635, column: 3, scope: !5066)
!5080 = !DILocation(line: 637, column: 28, scope: !5066)
!5081 = !DILocation(line: 637, column: 9, scope: !5066)
!5082 = !DILocation(line: 637, column: 7, scope: !5066)
!5083 = !DILocation(line: 639, column: 37, scope: !4982)
!5084 = !DILocation(line: 639, column: 41, scope: !4982)
!5085 = !DILocation(line: 639, column: 9, scope: !4982)
!5086 = !DILocation(line: 639, column: 6, scope: !4982)
!5087 = !DILocation(line: 640, column: 6, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 640, column: 6)
!5089 = !DILocation(line: 640, column: 10, scope: !5088)
!5090 = !DILocation(line: 640, column: 6, scope: !4982)
!5091 = !DILocation(line: 641, column: 3, scope: !5088)
!5092 = !DILocation(line: 644, column: 6, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 644, column: 6)
!5094 = !DILocation(line: 644, column: 9, scope: !5093)
!5095 = !DILocation(line: 644, column: 21, scope: !5093)
!5096 = !DILocation(line: 644, column: 6, scope: !4982)
!5097 = !DILocation(line: 645, column: 28, scope: !5093)
!5098 = !DILocation(line: 645, column: 9, scope: !5093)
!5099 = !DILocation(line: 645, column: 7, scope: !5093)
!5100 = !DILocation(line: 645, column: 3, scope: !5093)
!5101 = !DILocation(line: 647, column: 28, scope: !5093)
!5102 = !DILocation(line: 647, column: 9, scope: !5093)
!5103 = !DILocation(line: 647, column: 7, scope: !5093)
!5104 = !DILocation(line: 649, column: 27, scope: !4982)
!5105 = !DILocation(line: 649, column: 9, scope: !4982)
!5106 = !DILocation(line: 649, column: 6, scope: !4982)
!5107 = !DILocation(line: 650, column: 6, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 650, column: 6)
!5109 = !DILocation(line: 650, column: 10, scope: !5108)
!5110 = !DILocation(line: 650, column: 6, scope: !4982)
!5111 = !DILocation(line: 651, column: 3, scope: !5108)
!5112 = !DILocation(line: 654, column: 26, scope: !4982)
!5113 = !DILocation(line: 654, column: 33, scope: !4982)
!5114 = !DILocation(line: 654, column: 36, scope: !4982)
!5115 = !DILocation(line: 654, column: 8, scope: !4982)
!5116 = !DILocation(line: 654, column: 6, scope: !4982)
!5117 = !DILocation(line: 655, column: 28, scope: !4982)
!5118 = !DILocation(line: 655, column: 9, scope: !4982)
!5119 = !DILocation(line: 655, column: 6, scope: !4982)
!5120 = !DILocation(line: 656, column: 28, scope: !4982)
!5121 = !DILocation(line: 656, column: 9, scope: !4982)
!5122 = !DILocation(line: 656, column: 6, scope: !4982)
!5123 = !DILocation(line: 657, column: 28, scope: !4982)
!5124 = !DILocation(line: 657, column: 9, scope: !4982)
!5125 = !DILocation(line: 657, column: 6, scope: !4982)
!5126 = !DILocation(line: 658, column: 28, scope: !4982)
!5127 = !DILocation(line: 658, column: 9, scope: !4982)
!5128 = !DILocation(line: 658, column: 6, scope: !4982)
!5129 = !DILocation(line: 659, column: 28, scope: !4982)
!5130 = !DILocation(line: 659, column: 9, scope: !4982)
!5131 = !DILocation(line: 659, column: 6, scope: !4982)
!5132 = !DILocation(line: 661, column: 6, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 661, column: 6)
!5134 = !DILocation(line: 661, column: 10, scope: !5133)
!5135 = !DILocation(line: 661, column: 6, scope: !4982)
!5136 = !DILocation(line: 662, column: 3, scope: !5133)
!5137 = !DILocation(line: 665, column: 33, scope: !4982)
!5138 = !DILocation(line: 665, column: 37, scope: !4982)
!5139 = !DILocation(line: 665, column: 40, scope: !4982)
!5140 = !DILocation(line: 665, column: 8, scope: !4982)
!5141 = !DILocation(line: 665, column: 6, scope: !4982)
!5142 = !DILocation(line: 666, column: 6, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 666, column: 6)
!5144 = !DILocation(line: 666, column: 10, scope: !5143)
!5145 = !DILocation(line: 666, column: 6, scope: !4982)
!5146 = !DILocation(line: 667, column: 3, scope: !5143)
!5147 = !DILocation(line: 670, column: 26, scope: !4982)
!5148 = !DILocation(line: 670, column: 8, scope: !4982)
!5149 = !DILocation(line: 670, column: 6, scope: !4982)
!5150 = !DILocation(line: 671, column: 6, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 671, column: 6)
!5152 = !DILocation(line: 671, column: 10, scope: !5151)
!5153 = !DILocation(line: 671, column: 6, scope: !4982)
!5154 = !DILocation(line: 672, column: 3, scope: !5151)
!5155 = !DILocation(line: 674, column: 9, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 674, column: 2)
!5157 = !DILocation(line: 674, column: 7, scope: !5156)
!5158 = !DILocation(line: 674, column: 14, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 674, column: 2)
!5160 = !DILocation(line: 674, column: 16, scope: !5159)
!5161 = !DILocation(line: 674, column: 2, scope: !5156)
!5162 = !DILocation(line: 675, column: 27, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 674, column: 27)
!5164 = !DILocation(line: 675, column: 9, scope: !5163)
!5165 = !DILocation(line: 675, column: 7, scope: !5163)
!5166 = !DILocation(line: 676, column: 8, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 676, column: 7)
!5168 = !DILocation(line: 676, column: 12, scope: !5167)
!5169 = !DILocation(line: 676, column: 20, scope: !5167)
!5170 = !DILocation(line: 676, column: 7, scope: !5163)
!5171 = !DILocation(line: 677, column: 11, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 676, column: 29)
!5173 = !DILocation(line: 678, column: 4, scope: !5172)
!5174 = !DILocation(line: 680, column: 3, scope: !5163)
!5175 = !DILocation(line: 680, column: 10, scope: !5163)
!5176 = !DILocation(line: 680, column: 23, scope: !5163)
!5177 = !DILocation(line: 681, column: 7, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 681, column: 7)
!5179 = !DILocation(line: 681, column: 14, scope: !5178)
!5180 = !DILocation(line: 681, column: 28, scope: !5178)
!5181 = !DILocation(line: 681, column: 7, scope: !5163)
!5182 = !DILocation(line: 682, column: 28, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 681, column: 35)
!5184 = !DILocation(line: 682, column: 10, scope: !5183)
!5185 = !DILocation(line: 682, column: 8, scope: !5183)
!5186 = !DILocation(line: 683, column: 8, scope: !5183)
!5187 = !DILocation(line: 684, column: 23, scope: !5183)
!5188 = !DILocation(line: 684, column: 36, scope: !5183)
!5189 = !DILocation(line: 684, column: 4, scope: !5183)
!5190 = !DILocation(line: 685, column: 4, scope: !5183)
!5191 = !DILocation(line: 685, column: 11, scope: !5183)
!5192 = !DILocation(line: 685, column: 25, scope: !5183)
!5193 = !DILocation(line: 686, column: 3, scope: !5183)
!5194 = !DILocation(line: 687, column: 3, scope: !5163)
!5195 = !DILocation(line: 688, column: 2, scope: !5163)
!5196 = !DILocation(line: 674, column: 23, scope: !5159)
!5197 = !DILocation(line: 674, column: 2, scope: !5159)
!5198 = distinct !{!5198, !5161, !5199}
!5199 = !DILocation(line: 688, column: 2, scope: !5156)
!5200 = !DILocation(line: 690, column: 6, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 690, column: 6)
!5202 = !DILocation(line: 690, column: 13, scope: !5201)
!5203 = !DILocation(line: 690, column: 6, scope: !4982)
!5204 = !DILocation(line: 691, column: 40, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 690, column: 28)
!5206 = !DILocation(line: 691, column: 22, scope: !5205)
!5207 = !DILocation(line: 691, column: 3, scope: !5205)
!5208 = !DILocation(line: 691, column: 10, scope: !5205)
!5209 = !DILocation(line: 691, column: 20, scope: !5205)
!5210 = !DILocation(line: 693, column: 27, scope: !5205)
!5211 = !DILocation(line: 693, column: 9, scope: !5205)
!5212 = !DILocation(line: 693, column: 7, scope: !5205)
!5213 = !DILocation(line: 694, column: 2, scope: !5205)
!5214 = !DILocation(line: 696, column: 27, scope: !4982)
!5215 = !DILocation(line: 696, column: 30, scope: !4982)
!5216 = !DILocation(line: 696, column: 2, scope: !4982)
!5217 = !DILocation(line: 696, column: 9, scope: !4982)
!5218 = !DILocation(line: 696, column: 25, scope: !4982)
!5219 = !DILocation(line: 697, column: 23, scope: !4982)
!5220 = !DILocation(line: 697, column: 26, scope: !4982)
!5221 = !DILocation(line: 697, column: 2, scope: !4982)
!5222 = !DILocation(line: 697, column: 9, scope: !4982)
!5223 = !DILocation(line: 697, column: 21, scope: !4982)
!5224 = !DILocation(line: 698, column: 2, scope: !4982)
!5225 = !DILocation(line: 699, column: 1, scope: !4982)
!5226 = distinct !DISubprogram(name: "m88rs2000_get_tune_settings", scope: !3, file: !3, line: 712, type: !4208, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5227 = !DILocalVariable(name: "fe", arg: 1, scope: !5226, file: !3, line: 712, type: !3513)
!5228 = !DILocation(line: 712, column: 61, scope: !5226)
!5229 = !DILocalVariable(name: "tune", arg: 2, scope: !5226, file: !3, line: 713, type: !4210)
!5230 = !DILocation(line: 713, column: 37, scope: !5226)
!5231 = !DILocalVariable(name: "c", scope: !5226, file: !3, line: 715, type: !4220)
!5232 = !DILocation(line: 715, column: 34, scope: !5226)
!5233 = !DILocation(line: 715, column: 39, scope: !5226)
!5234 = !DILocation(line: 715, column: 43, scope: !5226)
!5235 = !DILocation(line: 717, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 717, column: 6)
!5237 = !DILocation(line: 717, column: 9, scope: !5236)
!5238 = !DILocation(line: 717, column: 21, scope: !5236)
!5239 = !DILocation(line: 717, column: 6, scope: !5226)
!5240 = !DILocation(line: 718, column: 3, scope: !5236)
!5241 = !DILocation(line: 718, column: 9, scope: !5236)
!5242 = !DILocation(line: 718, column: 22, scope: !5236)
!5243 = !DILocation(line: 720, column: 3, scope: !5236)
!5244 = !DILocation(line: 720, column: 9, scope: !5236)
!5245 = !DILocation(line: 720, column: 22, scope: !5236)
!5246 = !DILocation(line: 722, column: 20, scope: !5226)
!5247 = !DILocation(line: 722, column: 23, scope: !5226)
!5248 = !DILocation(line: 722, column: 35, scope: !5226)
!5249 = !DILocation(line: 722, column: 2, scope: !5226)
!5250 = !DILocation(line: 722, column: 8, scope: !5226)
!5251 = !DILocation(line: 722, column: 18, scope: !5226)
!5252 = !DILocation(line: 723, column: 20, scope: !5226)
!5253 = !DILocation(line: 723, column: 23, scope: !5226)
!5254 = !DILocation(line: 723, column: 35, scope: !5226)
!5255 = !DILocation(line: 723, column: 2, scope: !5226)
!5256 = !DILocation(line: 723, column: 8, scope: !5226)
!5257 = !DILocation(line: 723, column: 18, scope: !5226)
!5258 = !DILocation(line: 725, column: 2, scope: !5226)
!5259 = distinct !DISubprogram(name: "m88rs2000_get_frontend", scope: !3, file: !3, line: 701, type: !4218, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5260 = !DILocalVariable(name: "fe", arg: 1, scope: !5259, file: !3, line: 701, type: !3513)
!5261 = !DILocation(line: 701, column: 56, scope: !5259)
!5262 = !DILocalVariable(name: "c", arg: 2, scope: !5259, file: !3, line: 702, type: !4220)
!5263 = !DILocation(line: 702, column: 39, scope: !5259)
!5264 = !DILocalVariable(name: "state", scope: !5259, file: !3, line: 704, type: !4526)
!5265 = !DILocation(line: 704, column: 26, scope: !5259)
!5266 = !DILocation(line: 704, column: 34, scope: !5259)
!5267 = !DILocation(line: 704, column: 38, scope: !5259)
!5268 = !DILocation(line: 706, column: 17, scope: !5259)
!5269 = !DILocation(line: 706, column: 24, scope: !5259)
!5270 = !DILocation(line: 706, column: 2, scope: !5259)
!5271 = !DILocation(line: 706, column: 5, scope: !5259)
!5272 = !DILocation(line: 706, column: 15, scope: !5259)
!5273 = !DILocation(line: 707, column: 17, scope: !5259)
!5274 = !DILocation(line: 707, column: 24, scope: !5259)
!5275 = !DILocation(line: 707, column: 2, scope: !5259)
!5276 = !DILocation(line: 707, column: 5, scope: !5259)
!5277 = !DILocation(line: 707, column: 15, scope: !5259)
!5278 = !DILocation(line: 708, column: 19, scope: !5259)
!5279 = !DILocation(line: 708, column: 26, scope: !5259)
!5280 = !DILocation(line: 708, column: 2, scope: !5259)
!5281 = !DILocation(line: 708, column: 5, scope: !5259)
!5282 = !DILocation(line: 708, column: 17, scope: !5259)
!5283 = !DILocation(line: 709, column: 2, scope: !5259)
!5284 = distinct !DISubprogram(name: "m88rs2000_read_status", scope: !3, file: !3, line: 455, type: !4223, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5285 = !DILocalVariable(name: "fe", arg: 1, scope: !5284, file: !3, line: 455, type: !3513)
!5286 = !DILocation(line: 455, column: 55, scope: !5284)
!5287 = !DILocalVariable(name: "status", arg: 2, scope: !5284, file: !3, line: 456, type: !4200)
!5288 = !DILocation(line: 456, column: 22, scope: !5284)
!5289 = !DILocalVariable(name: "state", scope: !5284, file: !3, line: 458, type: !4526)
!5290 = !DILocation(line: 458, column: 26, scope: !5284)
!5291 = !DILocation(line: 458, column: 34, scope: !5284)
!5292 = !DILocation(line: 458, column: 38, scope: !5284)
!5293 = !DILocalVariable(name: "reg", scope: !5284, file: !3, line: 459, type: !303)
!5294 = !DILocation(line: 459, column: 5, scope: !5284)
!5295 = !DILocation(line: 459, column: 29, scope: !5284)
!5296 = !DILocation(line: 459, column: 11, scope: !5284)
!5297 = !DILocation(line: 461, column: 3, scope: !5284)
!5298 = !DILocation(line: 461, column: 10, scope: !5284)
!5299 = !DILocation(line: 463, column: 7, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 463, column: 6)
!5301 = !DILocation(line: 463, column: 11, scope: !5300)
!5302 = !DILocation(line: 463, column: 19, scope: !5300)
!5303 = !DILocation(line: 463, column: 6, scope: !5284)
!5304 = !DILocation(line: 464, column: 4, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 463, column: 28)
!5306 = !DILocation(line: 464, column: 11, scope: !5305)
!5307 = !DILocation(line: 466, column: 7, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 466, column: 7)
!5309 = !DILocation(line: 466, column: 14, scope: !5308)
!5310 = !DILocation(line: 466, column: 22, scope: !5308)
!5311 = !DILocation(line: 466, column: 7, scope: !5305)
!5312 = !DILocation(line: 467, column: 4, scope: !5308)
!5313 = !DILocation(line: 467, column: 11, scope: !5308)
!5314 = !DILocation(line: 467, column: 19, scope: !5308)
!5315 = !DILocation(line: 467, column: 33, scope: !5308)
!5316 = !DILocation(line: 468, column: 2, scope: !5305)
!5317 = !DILocation(line: 469, column: 2, scope: !5284)
!5318 = distinct !DISubprogram(name: "m88rs2000_read_ber", scope: !3, file: !3, line: 472, type: !4227, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5319 = !DILocalVariable(name: "fe", arg: 1, scope: !5318, file: !3, line: 472, type: !3513)
!5320 = !DILocation(line: 472, column: 52, scope: !5318)
!5321 = !DILocalVariable(name: "ber", arg: 2, scope: !5318, file: !3, line: 472, type: !1545)
!5322 = !DILocation(line: 472, column: 61, scope: !5318)
!5323 = !DILocalVariable(name: "state", scope: !5318, file: !3, line: 474, type: !4526)
!5324 = !DILocation(line: 474, column: 26, scope: !5318)
!5325 = !DILocation(line: 474, column: 34, scope: !5318)
!5326 = !DILocation(line: 474, column: 38, scope: !5318)
!5327 = !DILocalVariable(name: "tmp0", scope: !5318, file: !3, line: 475, type: !303)
!5328 = !DILocation(line: 475, column: 5, scope: !5318)
!5329 = !DILocalVariable(name: "tmp1", scope: !5318, file: !3, line: 475, type: !303)
!5330 = !DILocation(line: 475, column: 11, scope: !5318)
!5331 = !DILocation(line: 477, column: 21, scope: !5318)
!5332 = !DILocation(line: 477, column: 2, scope: !5318)
!5333 = !DILocation(line: 478, column: 27, scope: !5318)
!5334 = !DILocation(line: 478, column: 9, scope: !5318)
!5335 = !DILocation(line: 478, column: 7, scope: !5318)
!5336 = !DILocation(line: 479, column: 7, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 479, column: 6)
!5338 = !DILocation(line: 479, column: 12, scope: !5337)
!5339 = !DILocation(line: 479, column: 20, scope: !5337)
!5340 = !DILocation(line: 479, column: 6, scope: !5318)
!5341 = !DILocation(line: 480, column: 22, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 479, column: 26)
!5343 = !DILocation(line: 480, column: 3, scope: !5342)
!5344 = !DILocation(line: 481, column: 4, scope: !5342)
!5345 = !DILocation(line: 481, column: 8, scope: !5342)
!5346 = !DILocation(line: 482, column: 3, scope: !5342)
!5347 = !DILocation(line: 485, column: 28, scope: !5318)
!5348 = !DILocation(line: 485, column: 10, scope: !5318)
!5349 = !DILocation(line: 485, column: 41, scope: !5318)
!5350 = !DILocation(line: 486, column: 21, scope: !5318)
!5351 = !DILocation(line: 486, column: 3, scope: !5318)
!5352 = !DILocation(line: 485, column: 47, scope: !5318)
!5353 = !DILocation(line: 485, column: 3, scope: !5318)
!5354 = !DILocation(line: 485, column: 7, scope: !5318)
!5355 = !DILocation(line: 488, column: 27, scope: !5318)
!5356 = !DILocation(line: 488, column: 9, scope: !5318)
!5357 = !DILocation(line: 488, column: 7, scope: !5318)
!5358 = !DILocation(line: 489, column: 21, scope: !5318)
!5359 = !DILocation(line: 489, column: 35, scope: !5318)
!5360 = !DILocation(line: 489, column: 40, scope: !5318)
!5361 = !DILocation(line: 489, column: 46, scope: !5318)
!5362 = !DILocation(line: 489, column: 34, scope: !5318)
!5363 = !DILocation(line: 489, column: 2, scope: !5318)
!5364 = !DILocation(line: 491, column: 21, scope: !5318)
!5365 = !DILocation(line: 491, column: 35, scope: !5318)
!5366 = !DILocation(line: 491, column: 40, scope: !5318)
!5367 = !DILocation(line: 491, column: 46, scope: !5318)
!5368 = !DILocation(line: 491, column: 34, scope: !5318)
!5369 = !DILocation(line: 491, column: 2, scope: !5318)
!5370 = !DILocation(line: 492, column: 21, scope: !5318)
!5371 = !DILocation(line: 492, column: 35, scope: !5318)
!5372 = !DILocation(line: 492, column: 40, scope: !5318)
!5373 = !DILocation(line: 492, column: 46, scope: !5318)
!5374 = !DILocation(line: 492, column: 34, scope: !5318)
!5375 = !DILocation(line: 492, column: 2, scope: !5318)
!5376 = !DILocation(line: 493, column: 21, scope: !5318)
!5377 = !DILocation(line: 493, column: 2, scope: !5318)
!5378 = !DILocation(line: 495, column: 2, scope: !5318)
!5379 = !DILocation(line: 496, column: 1, scope: !5318)
!5380 = distinct !DISubprogram(name: "m88rs2000_read_signal_strength", scope: !3, file: !3, line: 498, type: !4231, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5381 = !DILocalVariable(name: "fe", arg: 1, scope: !5380, file: !3, line: 498, type: !3513)
!5382 = !DILocation(line: 498, column: 64, scope: !5380)
!5383 = !DILocalVariable(name: "strength", arg: 2, scope: !5380, file: !3, line: 499, type: !4233)
!5384 = !DILocation(line: 499, column: 7, scope: !5380)
!5385 = !DILocation(line: 501, column: 6, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 501, column: 6)
!5387 = !DILocation(line: 501, column: 10, scope: !5386)
!5388 = !DILocation(line: 501, column: 14, scope: !5386)
!5389 = !DILocation(line: 501, column: 24, scope: !5386)
!5390 = !DILocation(line: 501, column: 6, scope: !5380)
!5391 = !DILocation(line: 502, column: 3, scope: !5386)
!5392 = !DILocation(line: 502, column: 7, scope: !5386)
!5393 = !DILocation(line: 502, column: 11, scope: !5386)
!5394 = !DILocation(line: 502, column: 21, scope: !5386)
!5395 = !DILocation(line: 502, column: 37, scope: !5386)
!5396 = !DILocation(line: 502, column: 41, scope: !5386)
!5397 = !DILocation(line: 504, column: 2, scope: !5380)
!5398 = distinct !DISubprogram(name: "m88rs2000_read_snr", scope: !3, file: !3, line: 507, type: !4231, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5399 = !DILocalVariable(name: "fe", arg: 1, scope: !5398, file: !3, line: 507, type: !3513)
!5400 = !DILocation(line: 507, column: 52, scope: !5398)
!5401 = !DILocalVariable(name: "snr", arg: 2, scope: !5398, file: !3, line: 507, type: !4233)
!5402 = !DILocation(line: 507, column: 61, scope: !5398)
!5403 = !DILocalVariable(name: "state", scope: !5398, file: !3, line: 509, type: !4526)
!5404 = !DILocation(line: 509, column: 26, scope: !5398)
!5405 = !DILocation(line: 509, column: 34, scope: !5398)
!5406 = !DILocation(line: 509, column: 38, scope: !5398)
!5407 = !DILocation(line: 511, column: 33, scope: !5398)
!5408 = !DILocation(line: 511, column: 15, scope: !5398)
!5409 = !DILocation(line: 511, column: 13, scope: !5398)
!5410 = !DILocation(line: 511, column: 9, scope: !5398)
!5411 = !DILocation(line: 511, column: 3, scope: !5398)
!5412 = !DILocation(line: 511, column: 7, scope: !5398)
!5413 = !DILocation(line: 513, column: 2, scope: !5398)
!5414 = distinct !DISubprogram(name: "m88rs2000_read_ucblocks", scope: !3, file: !3, line: 516, type: !4227, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5415 = !DILocalVariable(name: "fe", arg: 1, scope: !5414, file: !3, line: 516, type: !3513)
!5416 = !DILocation(line: 516, column: 57, scope: !5414)
!5417 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5414, file: !3, line: 516, type: !1545)
!5418 = !DILocation(line: 516, column: 66, scope: !5414)
!5419 = !DILocalVariable(name: "state", scope: !5414, file: !3, line: 518, type: !4526)
!5420 = !DILocation(line: 518, column: 26, scope: !5414)
!5421 = !DILocation(line: 518, column: 34, scope: !5414)
!5422 = !DILocation(line: 518, column: 38, scope: !5414)
!5423 = !DILocalVariable(name: "tmp", scope: !5414, file: !3, line: 519, type: !303)
!5424 = !DILocation(line: 519, column: 5, scope: !5414)
!5425 = !DILocation(line: 521, column: 33, scope: !5414)
!5426 = !DILocation(line: 521, column: 15, scope: !5414)
!5427 = !DILocation(line: 521, column: 46, scope: !5414)
!5428 = !DILocation(line: 522, column: 22, scope: !5414)
!5429 = !DILocation(line: 522, column: 4, scope: !5414)
!5430 = !DILocation(line: 521, column: 52, scope: !5414)
!5431 = !DILocation(line: 521, column: 3, scope: !5414)
!5432 = !DILocation(line: 521, column: 12, scope: !5414)
!5433 = !DILocation(line: 523, column: 26, scope: !5414)
!5434 = !DILocation(line: 523, column: 8, scope: !5414)
!5435 = !DILocation(line: 523, column: 6, scope: !5414)
!5436 = !DILocation(line: 524, column: 21, scope: !5414)
!5437 = !DILocation(line: 524, column: 34, scope: !5414)
!5438 = !DILocation(line: 524, column: 38, scope: !5414)
!5439 = !DILocation(line: 524, column: 2, scope: !5414)
!5440 = !DILocation(line: 526, column: 21, scope: !5414)
!5441 = !DILocation(line: 526, column: 34, scope: !5414)
!5442 = !DILocation(line: 526, column: 38, scope: !5414)
!5443 = !DILocation(line: 526, column: 2, scope: !5414)
!5444 = !DILocation(line: 527, column: 21, scope: !5414)
!5445 = !DILocation(line: 527, column: 34, scope: !5414)
!5446 = !DILocation(line: 527, column: 38, scope: !5414)
!5447 = !DILocation(line: 527, column: 2, scope: !5414)
!5448 = !DILocation(line: 529, column: 2, scope: !5414)
!5449 = distinct !DISubprogram(name: "m88rs2000_send_diseqc_msg", scope: !3, file: !3, line: 193, type: !4239, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5450 = !DILocalVariable(name: "fe", arg: 1, scope: !5449, file: !3, line: 193, type: !3513)
!5451 = !DILocation(line: 193, column: 59, scope: !5449)
!5452 = !DILocalVariable(name: "m", arg: 2, scope: !5449, file: !3, line: 194, type: !4241)
!5453 = !DILocation(line: 194, column: 39, scope: !5449)
!5454 = !DILocalVariable(name: "state", scope: !5449, file: !3, line: 196, type: !4526)
!5455 = !DILocation(line: 196, column: 26, scope: !5449)
!5456 = !DILocation(line: 196, column: 34, scope: !5449)
!5457 = !DILocation(line: 196, column: 38, scope: !5449)
!5458 = !DILocalVariable(name: "i", scope: !5449, file: !3, line: 198, type: !315)
!5459 = !DILocation(line: 198, column: 6, scope: !5449)
!5460 = !DILocalVariable(name: "reg", scope: !5449, file: !3, line: 199, type: !303)
!5461 = !DILocation(line: 199, column: 5, scope: !5449)
!5462 = !DILocation(line: 200, column: 2, scope: !5449)
!5463 = !DILocation(line: 200, column: 2, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 200, column: 2)
!5465 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 200, column: 2)
!5466 = !DILocation(line: 200, column: 2, scope: !5465)
!5467 = !DILocation(line: 201, column: 21, scope: !5449)
!5468 = !DILocation(line: 201, column: 2, scope: !5449)
!5469 = !DILocation(line: 202, column: 26, scope: !5449)
!5470 = !DILocation(line: 202, column: 8, scope: !5449)
!5471 = !DILocation(line: 202, column: 6, scope: !5449)
!5472 = !DILocation(line: 203, column: 6, scope: !5449)
!5473 = !DILocation(line: 204, column: 21, scope: !5449)
!5474 = !DILocation(line: 204, column: 34, scope: !5449)
!5475 = !DILocation(line: 204, column: 2, scope: !5449)
!5476 = !DILocation(line: 205, column: 9, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 205, column: 2)
!5478 = !DILocation(line: 205, column: 7, scope: !5477)
!5479 = !DILocation(line: 205, column: 14, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 205, column: 2)
!5481 = !DILocation(line: 205, column: 19, scope: !5480)
!5482 = !DILocation(line: 205, column: 22, scope: !5480)
!5483 = !DILocation(line: 205, column: 16, scope: !5480)
!5484 = !DILocation(line: 205, column: 2, scope: !5477)
!5485 = !DILocation(line: 206, column: 22, scope: !5480)
!5486 = !DILocation(line: 206, column: 36, scope: !5480)
!5487 = !DILocation(line: 206, column: 34, scope: !5480)
!5488 = !DILocation(line: 206, column: 29, scope: !5480)
!5489 = !DILocation(line: 206, column: 39, scope: !5480)
!5490 = !DILocation(line: 206, column: 42, scope: !5480)
!5491 = !DILocation(line: 206, column: 46, scope: !5480)
!5492 = !DILocation(line: 206, column: 3, scope: !5480)
!5493 = !DILocation(line: 205, column: 32, scope: !5480)
!5494 = !DILocation(line: 205, column: 2, scope: !5480)
!5495 = distinct !{!5495, !5484, !5496}
!5496 = !DILocation(line: 206, column: 48, scope: !5477)
!5497 = !DILocation(line: 208, column: 26, scope: !5449)
!5498 = !DILocation(line: 208, column: 8, scope: !5449)
!5499 = !DILocation(line: 208, column: 6, scope: !5449)
!5500 = !DILocation(line: 209, column: 6, scope: !5449)
!5501 = !DILocation(line: 210, column: 11, scope: !5449)
!5502 = !DILocation(line: 210, column: 14, scope: !5449)
!5503 = !DILocation(line: 210, column: 22, scope: !5449)
!5504 = !DILocation(line: 210, column: 27, scope: !5449)
!5505 = !DILocation(line: 210, column: 33, scope: !5449)
!5506 = !DILocation(line: 210, column: 6, scope: !5449)
!5507 = !DILocation(line: 211, column: 6, scope: !5449)
!5508 = !DILocation(line: 212, column: 21, scope: !5449)
!5509 = !DILocation(line: 212, column: 34, scope: !5449)
!5510 = !DILocation(line: 212, column: 2, scope: !5449)
!5511 = !DILocation(line: 214, column: 9, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 214, column: 2)
!5513 = !DILocation(line: 214, column: 7, scope: !5512)
!5514 = !DILocation(line: 214, column: 14, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 214, column: 2)
!5516 = !DILocation(line: 214, column: 16, scope: !5515)
!5517 = !DILocation(line: 214, column: 2, scope: !5512)
!5518 = !DILocation(line: 215, column: 26, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 215, column: 7)
!5520 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 214, column: 27)
!5521 = !DILocation(line: 215, column: 8, scope: !5519)
!5522 = !DILocation(line: 215, column: 39, scope: !5519)
!5523 = !DILocation(line: 215, column: 47, scope: !5519)
!5524 = !DILocation(line: 215, column: 7, scope: !5520)
!5525 = !DILocation(line: 216, column: 4, scope: !5519)
!5526 = !DILocation(line: 217, column: 3, scope: !5520)
!5527 = !DILocation(line: 218, column: 2, scope: !5520)
!5528 = !DILocation(line: 214, column: 23, scope: !5515)
!5529 = !DILocation(line: 214, column: 2, scope: !5515)
!5530 = distinct !{!5530, !5517, !5531}
!5531 = !DILocation(line: 218, column: 2, scope: !5512)
!5532 = !DILocation(line: 220, column: 26, scope: !5449)
!5533 = !DILocation(line: 220, column: 8, scope: !5449)
!5534 = !DILocation(line: 220, column: 6, scope: !5449)
!5535 = !DILocation(line: 221, column: 7, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 221, column: 6)
!5537 = !DILocation(line: 221, column: 11, scope: !5536)
!5538 = !DILocation(line: 221, column: 19, scope: !5536)
!5539 = !DILocation(line: 221, column: 6, scope: !5449)
!5540 = !DILocation(line: 222, column: 7, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5536, file: !3, line: 221, column: 26)
!5542 = !DILocation(line: 223, column: 7, scope: !5541)
!5543 = !DILocation(line: 224, column: 22, scope: !5541)
!5544 = !DILocation(line: 224, column: 35, scope: !5541)
!5545 = !DILocation(line: 224, column: 3, scope: !5541)
!5546 = !DILocation(line: 225, column: 2, scope: !5541)
!5547 = !DILocation(line: 227, column: 26, scope: !5449)
!5548 = !DILocation(line: 227, column: 8, scope: !5449)
!5549 = !DILocation(line: 227, column: 6, scope: !5449)
!5550 = !DILocation(line: 228, column: 6, scope: !5449)
!5551 = !DILocation(line: 229, column: 6, scope: !5449)
!5552 = !DILocation(line: 230, column: 21, scope: !5449)
!5553 = !DILocation(line: 230, column: 34, scope: !5449)
!5554 = !DILocation(line: 230, column: 2, scope: !5449)
!5555 = !DILocation(line: 231, column: 21, scope: !5449)
!5556 = !DILocation(line: 231, column: 2, scope: !5449)
!5557 = !DILocation(line: 234, column: 2, scope: !5449)
!5558 = distinct !DISubprogram(name: "m88rs2000_send_diseqc_burst", scope: !3, file: !3, line: 237, type: !4260, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5559 = !DILocalVariable(name: "fe", arg: 1, scope: !5558, file: !3, line: 237, type: !3513)
!5560 = !DILocation(line: 237, column: 61, scope: !5558)
!5561 = !DILocalVariable(name: "burst", arg: 2, scope: !5558, file: !3, line: 238, type: !171)
!5562 = !DILocation(line: 238, column: 33, scope: !5558)
!5563 = !DILocalVariable(name: "state", scope: !5558, file: !3, line: 240, type: !4526)
!5564 = !DILocation(line: 240, column: 26, scope: !5558)
!5565 = !DILocation(line: 240, column: 34, scope: !5558)
!5566 = !DILocation(line: 240, column: 38, scope: !5558)
!5567 = !DILocalVariable(name: "reg0", scope: !5558, file: !3, line: 241, type: !303)
!5568 = !DILocation(line: 241, column: 5, scope: !5558)
!5569 = !DILocalVariable(name: "reg1", scope: !5558, file: !3, line: 241, type: !303)
!5570 = !DILocation(line: 241, column: 11, scope: !5558)
!5571 = !DILocation(line: 242, column: 2, scope: !5558)
!5572 = !DILocation(line: 242, column: 2, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 242, column: 2)
!5574 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 242, column: 2)
!5575 = !DILocation(line: 242, column: 2, scope: !5574)
!5576 = !DILocation(line: 243, column: 21, scope: !5558)
!5577 = !DILocation(line: 243, column: 2, scope: !5558)
!5578 = !DILocation(line: 244, column: 2, scope: !5558)
!5579 = !DILocation(line: 245, column: 27, scope: !5558)
!5580 = !DILocation(line: 245, column: 9, scope: !5558)
!5581 = !DILocation(line: 245, column: 7, scope: !5558)
!5582 = !DILocation(line: 246, column: 27, scope: !5558)
!5583 = !DILocation(line: 246, column: 9, scope: !5558)
!5584 = !DILocation(line: 246, column: 7, scope: !5558)
!5585 = !DILocation(line: 248, column: 21, scope: !5558)
!5586 = !DILocation(line: 248, column: 34, scope: !5558)
!5587 = !DILocation(line: 248, column: 2, scope: !5558)
!5588 = !DILocation(line: 249, column: 21, scope: !5558)
!5589 = !DILocation(line: 249, column: 34, scope: !5558)
!5590 = !DILocation(line: 249, column: 2, scope: !5558)
!5591 = !DILocation(line: 250, column: 21, scope: !5558)
!5592 = !DILocation(line: 250, column: 2, scope: !5558)
!5593 = !DILocation(line: 252, column: 2, scope: !5558)
!5594 = distinct !DISubprogram(name: "m88rs2000_set_tone", scope: !3, file: !3, line: 255, type: !4264, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5595 = !DILocalVariable(name: "fe", arg: 1, scope: !5594, file: !3, line: 255, type: !3513)
!5596 = !DILocation(line: 255, column: 52, scope: !5594)
!5597 = !DILocalVariable(name: "tone", arg: 2, scope: !5594, file: !3, line: 256, type: !78)
!5598 = !DILocation(line: 256, column: 32, scope: !5594)
!5599 = !DILocalVariable(name: "state", scope: !5594, file: !3, line: 258, type: !4526)
!5600 = !DILocation(line: 258, column: 26, scope: !5594)
!5601 = !DILocation(line: 258, column: 34, scope: !5594)
!5602 = !DILocation(line: 258, column: 38, scope: !5594)
!5603 = !DILocalVariable(name: "reg0", scope: !5594, file: !3, line: 259, type: !303)
!5604 = !DILocation(line: 259, column: 5, scope: !5594)
!5605 = !DILocalVariable(name: "reg1", scope: !5594, file: !3, line: 259, type: !303)
!5606 = !DILocation(line: 259, column: 11, scope: !5594)
!5607 = !DILocation(line: 260, column: 21, scope: !5594)
!5608 = !DILocation(line: 260, column: 2, scope: !5594)
!5609 = !DILocation(line: 261, column: 27, scope: !5594)
!5610 = !DILocation(line: 261, column: 9, scope: !5594)
!5611 = !DILocation(line: 261, column: 7, scope: !5594)
!5612 = !DILocation(line: 262, column: 27, scope: !5594)
!5613 = !DILocation(line: 262, column: 9, scope: !5594)
!5614 = !DILocation(line: 262, column: 7, scope: !5594)
!5615 = !DILocation(line: 264, column: 7, scope: !5594)
!5616 = !DILocation(line: 266, column: 10, scope: !5594)
!5617 = !DILocation(line: 266, column: 2, scope: !5594)
!5618 = !DILocation(line: 268, column: 8, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 266, column: 16)
!5620 = !DILocation(line: 269, column: 8, scope: !5619)
!5621 = !DILocation(line: 270, column: 3, scope: !5619)
!5622 = !DILocation(line: 272, column: 8, scope: !5619)
!5623 = !DILocation(line: 273, column: 3, scope: !5619)
!5624 = !DILocation(line: 275, column: 3, scope: !5619)
!5625 = !DILocation(line: 277, column: 21, scope: !5594)
!5626 = !DILocation(line: 277, column: 34, scope: !5594)
!5627 = !DILocation(line: 277, column: 2, scope: !5594)
!5628 = !DILocation(line: 278, column: 21, scope: !5594)
!5629 = !DILocation(line: 278, column: 34, scope: !5594)
!5630 = !DILocation(line: 278, column: 2, scope: !5594)
!5631 = !DILocation(line: 279, column: 21, scope: !5594)
!5632 = !DILocation(line: 279, column: 2, scope: !5594)
!5633 = !DILocation(line: 280, column: 2, scope: !5594)
!5634 = distinct !DISubprogram(name: "m88rs2000_set_voltage", scope: !3, file: !3, line: 404, type: !4268, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5635 = !DILocalVariable(name: "fe", arg: 1, scope: !5634, file: !3, line: 404, type: !3513)
!5636 = !DILocation(line: 404, column: 55, scope: !5634)
!5637 = !DILocalVariable(name: "volt", arg: 2, scope: !5634, file: !3, line: 405, type: !73)
!5638 = !DILocation(line: 405, column: 26, scope: !5634)
!5639 = !DILocalVariable(name: "state", scope: !5634, file: !3, line: 407, type: !4526)
!5640 = !DILocation(line: 407, column: 26, scope: !5634)
!5641 = !DILocation(line: 407, column: 34, scope: !5634)
!5642 = !DILocation(line: 407, column: 38, scope: !5634)
!5643 = !DILocalVariable(name: "data", scope: !5634, file: !3, line: 408, type: !303)
!5644 = !DILocation(line: 408, column: 5, scope: !5634)
!5645 = !DILocation(line: 410, column: 27, scope: !5634)
!5646 = !DILocation(line: 410, column: 9, scope: !5634)
!5647 = !DILocation(line: 410, column: 7, scope: !5634)
!5648 = !DILocation(line: 411, column: 7, scope: !5634)
!5649 = !DILocation(line: 413, column: 10, scope: !5634)
!5650 = !DILocation(line: 413, column: 2, scope: !5634)
!5651 = !DILocation(line: 415, column: 8, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 413, column: 16)
!5653 = !DILocation(line: 416, column: 3, scope: !5652)
!5654 = !DILocation(line: 418, column: 8, scope: !5652)
!5655 = !DILocation(line: 419, column: 8, scope: !5652)
!5656 = !DILocation(line: 420, column: 3, scope: !5652)
!5657 = !DILocation(line: 422, column: 3, scope: !5652)
!5658 = !DILocation(line: 425, column: 21, scope: !5634)
!5659 = !DILocation(line: 425, column: 34, scope: !5634)
!5660 = !DILocation(line: 425, column: 2, scope: !5634)
!5661 = !DILocation(line: 427, column: 2, scope: !5634)
!5662 = distinct !DISubprogram(name: "m88rs2000_i2c_gate_ctrl", scope: !3, file: !3, line: 728, type: !4280, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5663 = !DILocalVariable(name: "fe", arg: 1, scope: !5662, file: !3, line: 728, type: !3513)
!5664 = !DILocation(line: 728, column: 57, scope: !5662)
!5665 = !DILocalVariable(name: "enable", arg: 2, scope: !5662, file: !3, line: 728, type: !315)
!5666 = !DILocation(line: 728, column: 65, scope: !5662)
!5667 = !DILocalVariable(name: "state", scope: !5662, file: !3, line: 730, type: !4526)
!5668 = !DILocation(line: 730, column: 26, scope: !5662)
!5669 = !DILocation(line: 730, column: 34, scope: !5662)
!5670 = !DILocation(line: 730, column: 38, scope: !5662)
!5671 = !DILocation(line: 732, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 732, column: 6)
!5673 = !DILocation(line: 732, column: 6, scope: !5662)
!5674 = !DILocation(line: 733, column: 22, scope: !5672)
!5675 = !DILocation(line: 733, column: 3, scope: !5672)
!5676 = !DILocation(line: 735, column: 22, scope: !5672)
!5677 = !DILocation(line: 735, column: 3, scope: !5672)
!5678 = !DILocation(line: 736, column: 2, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 736, column: 2)
!5680 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 736, column: 2)
!5681 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 736, column: 2)
!5682 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 736, column: 2)
!5683 = !DILocation(line: 737, column: 2, scope: !5662)
!5684 = distinct !DISubprogram(name: "m88rs2000_tab_set", scope: !3, file: !3, line: 372, type: !5685, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!315, !4526, !299}
!5687 = !DILocalVariable(name: "state", arg: 1, scope: !5684, file: !3, line: 372, type: !4526)
!5688 = !DILocation(line: 372, column: 54, scope: !5684)
!5689 = !DILocalVariable(name: "tab", arg: 2, scope: !5684, file: !3, line: 373, type: !299)
!5690 = !DILocation(line: 373, column: 19, scope: !5684)
!5691 = !DILocalVariable(name: "ret", scope: !5684, file: !3, line: 375, type: !315)
!5692 = !DILocation(line: 375, column: 6, scope: !5684)
!5693 = !DILocalVariable(name: "i", scope: !5684, file: !3, line: 376, type: !303)
!5694 = !DILocation(line: 376, column: 5, scope: !5684)
!5695 = !DILocation(line: 377, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 377, column: 6)
!5697 = !DILocation(line: 377, column: 10, scope: !5696)
!5698 = !DILocation(line: 377, column: 6, scope: !5684)
!5699 = !DILocation(line: 378, column: 3, scope: !5696)
!5700 = !DILocation(line: 380, column: 9, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 380, column: 2)
!5702 = !DILocation(line: 380, column: 7, scope: !5701)
!5703 = !DILocation(line: 380, column: 14, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 380, column: 2)
!5705 = !DILocation(line: 380, column: 16, scope: !5704)
!5706 = !DILocation(line: 380, column: 2, scope: !5701)
!5707 = !DILocation(line: 381, column: 11, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 380, column: 28)
!5709 = !DILocation(line: 381, column: 15, scope: !5708)
!5710 = !DILocation(line: 381, column: 18, scope: !5708)
!5711 = !DILocation(line: 381, column: 3, scope: !5708)
!5712 = !DILocation(line: 383, column: 29, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 381, column: 23)
!5714 = !DILocation(line: 383, column: 36, scope: !5713)
!5715 = !DILocation(line: 383, column: 40, scope: !5713)
!5716 = !DILocation(line: 383, column: 43, scope: !5713)
!5717 = !DILocation(line: 384, column: 5, scope: !5713)
!5718 = !DILocation(line: 384, column: 9, scope: !5713)
!5719 = !DILocation(line: 384, column: 12, scope: !5713)
!5720 = !DILocation(line: 383, column: 10, scope: !5713)
!5721 = !DILocation(line: 383, column: 8, scope: !5713)
!5722 = !DILocation(line: 385, column: 4, scope: !5713)
!5723 = !DILocation(line: 387, column: 8, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 387, column: 8)
!5725 = !DILocation(line: 387, column: 12, scope: !5724)
!5726 = !DILocation(line: 387, column: 15, scope: !5724)
!5727 = !DILocation(line: 387, column: 19, scope: !5724)
!5728 = !DILocation(line: 387, column: 8, scope: !5713)
!5729 = !DILocation(line: 388, column: 5, scope: !5724)
!5730 = !DILocation(line: 388, column: 5, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 388, column: 5)
!5732 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 388, column: 5)
!5733 = !DILocation(line: 388, column: 5, scope: !5732)
!5734 = !DILocation(line: 388, column: 5, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 388, column: 5)
!5736 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 388, column: 5)
!5737 = !DILocation(line: 388, column: 5, scope: !5736)
!5738 = !DILocation(line: 388, column: 5, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 388, column: 5)
!5740 = !DILocalVariable(name: "__ms", scope: !5741, file: !3, line: 388, type: !552)
!5741 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 388, column: 5)
!5742 = !DILocation(line: 388, column: 5, scope: !5741)
!5743 = !DILocation(line: 388, column: 5, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 388, column: 5)
!5745 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 388, column: 5)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 388, column: 5)
!5747 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 388, column: 5)
!5748 = distinct !{!5748, !5742, !5742}
!5749 = !DILocation(line: 389, column: 4, scope: !5713)
!5750 = !DILocation(line: 391, column: 8, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 391, column: 8)
!5752 = !DILocation(line: 391, column: 12, scope: !5751)
!5753 = !DILocation(line: 391, column: 15, scope: !5751)
!5754 = !DILocation(line: 391, column: 19, scope: !5751)
!5755 = !DILocation(line: 391, column: 27, scope: !5751)
!5756 = !DILocation(line: 391, column: 30, scope: !5751)
!5757 = !DILocation(line: 391, column: 34, scope: !5751)
!5758 = !DILocation(line: 391, column: 37, scope: !5751)
!5759 = !DILocation(line: 391, column: 41, scope: !5751)
!5760 = !DILocation(line: 391, column: 8, scope: !5713)
!5761 = !DILocation(line: 392, column: 5, scope: !5751)
!5762 = !DILocation(line: 391, column: 44, scope: !5751)
!5763 = !DILocation(line: 394, column: 4, scope: !5713)
!5764 = !DILocation(line: 396, column: 4, scope: !5713)
!5765 = !DILocation(line: 398, column: 7, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 398, column: 7)
!5767 = !DILocation(line: 398, column: 11, scope: !5766)
!5768 = !DILocation(line: 398, column: 7, scope: !5708)
!5769 = !DILocation(line: 399, column: 4, scope: !5766)
!5770 = !DILocation(line: 400, column: 2, scope: !5708)
!5771 = !DILocation(line: 380, column: 24, scope: !5704)
!5772 = !DILocation(line: 380, column: 2, scope: !5704)
!5773 = distinct !{!5773, !5706, !5774}
!5774 = !DILocation(line: 400, column: 2, scope: !5701)
!5775 = !DILocation(line: 401, column: 2, scope: !5684)
!5776 = !DILocation(line: 402, column: 1, scope: !5684)
!5777 = distinct !DISubprogram(name: "m88rs2000_writereg", scope: !3, file: !3, line: 51, type: !5778, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!315, !4526, !303, !303}
!5780 = !DILocalVariable(name: "state", arg: 1, scope: !5777, file: !3, line: 51, type: !4526)
!5781 = !DILocation(line: 51, column: 55, scope: !5777)
!5782 = !DILocalVariable(name: "reg", arg: 2, scope: !5777, file: !3, line: 52, type: !303)
!5783 = !DILocation(line: 52, column: 5, scope: !5777)
!5784 = !DILocalVariable(name: "data", arg: 3, scope: !5777, file: !3, line: 52, type: !303)
!5785 = !DILocation(line: 52, column: 13, scope: !5777)
!5786 = !DILocalVariable(name: "ret", scope: !5777, file: !3, line: 54, type: !315)
!5787 = !DILocation(line: 54, column: 6, scope: !5777)
!5788 = !DILocalVariable(name: "buf", scope: !5777, file: !3, line: 55, type: !5789)
!5789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 16, elements: !1702)
!5790 = !DILocation(line: 55, column: 5, scope: !5777)
!5791 = !DILocation(line: 55, column: 13, scope: !5777)
!5792 = !DILocation(line: 55, column: 15, scope: !5777)
!5793 = !DILocation(line: 55, column: 20, scope: !5777)
!5794 = !DILocalVariable(name: "msg", scope: !5777, file: !3, line: 56, type: !4415)
!5795 = !DILocation(line: 56, column: 17, scope: !5777)
!5796 = !DILocation(line: 56, column: 23, scope: !5777)
!5797 = !DILocation(line: 57, column: 11, scope: !5777)
!5798 = !DILocation(line: 57, column: 18, scope: !5777)
!5799 = !DILocation(line: 57, column: 26, scope: !5777)
!5800 = !DILocation(line: 59, column: 10, scope: !5777)
!5801 = !DILocation(line: 63, column: 21, scope: !5777)
!5802 = !DILocation(line: 63, column: 28, scope: !5777)
!5803 = !DILocation(line: 63, column: 8, scope: !5777)
!5804 = !DILocation(line: 63, column: 6, scope: !5777)
!5805 = !DILocation(line: 65, column: 6, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 65, column: 6)
!5807 = !DILocation(line: 65, column: 10, scope: !5806)
!5808 = !DILocation(line: 65, column: 6, scope: !5777)
!5809 = !DILocation(line: 66, column: 3, scope: !5806)
!5810 = !DILocation(line: 66, column: 3, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 66, column: 3)
!5812 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 66, column: 3)
!5813 = !DILocation(line: 66, column: 3, scope: !5812)
!5814 = !DILocation(line: 69, column: 10, scope: !5777)
!5815 = !DILocation(line: 69, column: 14, scope: !5777)
!5816 = !DILocation(line: 69, column: 9, scope: !5777)
!5817 = !DILocation(line: 69, column: 2, scope: !5777)
!5818 = distinct !DISubprogram(name: "m88rs2000_set_carrieroffset", scope: !3, file: !3, line: 119, type: !5819, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!315, !3513, !310}
!5821 = !DILocalVariable(name: "fe", arg: 1, scope: !5818, file: !3, line: 119, type: !3513)
!5822 = !DILocation(line: 119, column: 61, scope: !5818)
!5823 = !DILocalVariable(name: "offset", arg: 2, scope: !5818, file: !3, line: 119, type: !310)
!5824 = !DILocation(line: 119, column: 69, scope: !5818)
!5825 = !DILocalVariable(name: "state", scope: !5818, file: !3, line: 121, type: !4526)
!5826 = !DILocation(line: 121, column: 26, scope: !5818)
!5827 = !DILocation(line: 121, column: 34, scope: !5818)
!5828 = !DILocation(line: 121, column: 38, scope: !5818)
!5829 = !DILocalVariable(name: "mclk", scope: !5818, file: !3, line: 122, type: !316)
!5830 = !DILocation(line: 122, column: 6, scope: !5818)
!5831 = !DILocalVariable(name: "tmp", scope: !5818, file: !3, line: 123, type: !313)
!5832 = !DILocation(line: 123, column: 6, scope: !5818)
!5833 = !DILocalVariable(name: "reg", scope: !5818, file: !3, line: 124, type: !303)
!5834 = !DILocation(line: 124, column: 5, scope: !5818)
!5835 = !DILocalVariable(name: "ret", scope: !5818, file: !3, line: 125, type: !315)
!5836 = !DILocation(line: 125, column: 6, scope: !5818)
!5837 = !DILocation(line: 127, column: 28, scope: !5818)
!5838 = !DILocation(line: 127, column: 9, scope: !5818)
!5839 = !DILocation(line: 127, column: 7, scope: !5818)
!5840 = !DILocation(line: 128, column: 7, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 128, column: 6)
!5842 = !DILocation(line: 128, column: 6, scope: !5818)
!5843 = !DILocation(line: 129, column: 3, scope: !5841)
!5844 = !DILocation(line: 131, column: 9, scope: !5818)
!5845 = !DILocation(line: 131, column: 16, scope: !5818)
!5846 = !DILocation(line: 131, column: 30, scope: !5818)
!5847 = !DILocation(line: 131, column: 35, scope: !5818)
!5848 = !DILocation(line: 131, column: 23, scope: !5818)
!5849 = !DILocation(line: 131, column: 47, scope: !5818)
!5850 = !DILocation(line: 131, column: 40, scope: !5818)
!5851 = !DILocation(line: 131, column: 6, scope: !5818)
!5852 = !DILocation(line: 132, column: 6, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 132, column: 6)
!5854 = !DILocation(line: 132, column: 10, scope: !5853)
!5855 = !DILocation(line: 132, column: 6, scope: !5818)
!5856 = !DILocation(line: 133, column: 7, scope: !5853)
!5857 = !DILocation(line: 133, column: 3, scope: !5853)
!5858 = !DILocation(line: 136, column: 27, scope: !5818)
!5859 = !DILocation(line: 136, column: 45, scope: !5818)
!5860 = !DILocation(line: 136, column: 49, scope: !5818)
!5861 = !DILocation(line: 136, column: 40, scope: !5818)
!5862 = !DILocation(line: 136, column: 8, scope: !5818)
!5863 = !DILocation(line: 136, column: 6, scope: !5818)
!5864 = !DILocation(line: 138, column: 26, scope: !5818)
!5865 = !DILocation(line: 138, column: 8, scope: !5818)
!5866 = !DILocation(line: 138, column: 6, scope: !5818)
!5867 = !DILocation(line: 139, column: 6, scope: !5818)
!5868 = !DILocation(line: 140, column: 14, scope: !5818)
!5869 = !DILocation(line: 140, column: 18, scope: !5818)
!5870 = !DILocation(line: 140, column: 9, scope: !5818)
!5871 = !DILocation(line: 140, column: 25, scope: !5818)
!5872 = !DILocation(line: 140, column: 6, scope: !5818)
!5873 = !DILocation(line: 142, column: 28, scope: !5818)
!5874 = !DILocation(line: 142, column: 41, scope: !5818)
!5875 = !DILocation(line: 142, column: 9, scope: !5818)
!5876 = !DILocation(line: 142, column: 6, scope: !5818)
!5877 = !DILocation(line: 144, column: 9, scope: !5818)
!5878 = !DILocation(line: 144, column: 2, scope: !5818)
!5879 = !DILocation(line: 145, column: 1, scope: !5818)
!5880 = distinct !DISubprogram(name: "m88rs2000_set_fec", scope: !3, file: !3, line: 532, type: !5881, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!315, !4526, !87}
!5883 = !DILocalVariable(name: "state", arg: 1, scope: !5880, file: !3, line: 532, type: !4526)
!5884 = !DILocation(line: 532, column: 54, scope: !5880)
!5885 = !DILocalVariable(name: "fec", arg: 2, scope: !5880, file: !3, line: 533, type: !87)
!5886 = !DILocation(line: 533, column: 27, scope: !5880)
!5887 = !DILocalVariable(name: "fec_set", scope: !5880, file: !3, line: 535, type: !303)
!5888 = !DILocation(line: 535, column: 5, scope: !5880)
!5889 = !DILocalVariable(name: "reg", scope: !5880, file: !3, line: 535, type: !303)
!5890 = !DILocation(line: 535, column: 14, scope: !5880)
!5891 = !DILocalVariable(name: "ret", scope: !5880, file: !3, line: 536, type: !315)
!5892 = !DILocation(line: 536, column: 6, scope: !5880)
!5893 = !DILocation(line: 538, column: 10, scope: !5880)
!5894 = !DILocation(line: 538, column: 2, scope: !5880)
!5895 = !DILocation(line: 540, column: 11, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 538, column: 15)
!5897 = !DILocation(line: 541, column: 3, scope: !5896)
!5898 = !DILocation(line: 543, column: 11, scope: !5896)
!5899 = !DILocation(line: 544, column: 3, scope: !5896)
!5900 = !DILocation(line: 546, column: 11, scope: !5896)
!5901 = !DILocation(line: 547, column: 3, scope: !5896)
!5902 = !DILocation(line: 549, column: 11, scope: !5896)
!5903 = !DILocation(line: 550, column: 3, scope: !5896)
!5904 = !DILocation(line: 552, column: 11, scope: !5896)
!5905 = !DILocation(line: 553, column: 3, scope: !5896)
!5906 = !DILocation(line: 556, column: 11, scope: !5896)
!5907 = !DILocation(line: 557, column: 2, scope: !5896)
!5908 = !DILocation(line: 559, column: 26, scope: !5880)
!5909 = !DILocation(line: 559, column: 8, scope: !5880)
!5910 = !DILocation(line: 559, column: 6, scope: !5880)
!5911 = !DILocation(line: 560, column: 6, scope: !5880)
!5912 = !DILocation(line: 561, column: 27, scope: !5880)
!5913 = !DILocation(line: 561, column: 40, scope: !5880)
!5914 = !DILocation(line: 561, column: 46, scope: !5880)
!5915 = !DILocation(line: 561, column: 44, scope: !5880)
!5916 = !DILocation(line: 561, column: 8, scope: !5880)
!5917 = !DILocation(line: 561, column: 6, scope: !5880)
!5918 = !DILocation(line: 563, column: 28, scope: !5880)
!5919 = !DILocation(line: 563, column: 9, scope: !5880)
!5920 = !DILocation(line: 563, column: 6, scope: !5880)
!5921 = !DILocation(line: 565, column: 9, scope: !5880)
!5922 = !DILocation(line: 565, column: 2, scope: !5880)
!5923 = distinct !DISubprogram(name: "m88rs2000_set_symbolrate", scope: !3, file: !3, line: 147, type: !4339, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!5924 = !DILocalVariable(name: "fe", arg: 1, scope: !5923, file: !3, line: 147, type: !3513)
!5925 = !DILocation(line: 147, column: 58, scope: !5923)
!5926 = !DILocalVariable(name: "srate", arg: 2, scope: !5923, file: !3, line: 147, type: !316)
!5927 = !DILocation(line: 147, column: 66, scope: !5923)
!5928 = !DILocalVariable(name: "state", scope: !5923, file: !3, line: 149, type: !4526)
!5929 = !DILocation(line: 149, column: 26, scope: !5923)
!5930 = !DILocation(line: 149, column: 34, scope: !5923)
!5931 = !DILocation(line: 149, column: 38, scope: !5923)
!5932 = !DILocalVariable(name: "ret", scope: !5923, file: !3, line: 150, type: !315)
!5933 = !DILocation(line: 150, column: 6, scope: !5923)
!5934 = !DILocalVariable(name: "temp", scope: !5923, file: !3, line: 151, type: !319)
!5935 = !DILocation(line: 151, column: 6, scope: !5923)
!5936 = !DILocalVariable(name: "mclk", scope: !5923, file: !3, line: 152, type: !316)
!5937 = !DILocation(line: 152, column: 6, scope: !5923)
!5938 = !DILocalVariable(name: "b", scope: !5923, file: !3, line: 153, type: !5939)
!5939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 24, elements: !515)
!5940 = !DILocation(line: 153, column: 5, scope: !5923)
!5941 = !DILocation(line: 155, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 155, column: 6)
!5943 = !DILocation(line: 155, column: 13, scope: !5942)
!5944 = !DILocation(line: 155, column: 24, scope: !5942)
!5945 = !DILocation(line: 155, column: 28, scope: !5942)
!5946 = !DILocation(line: 155, column: 34, scope: !5942)
!5947 = !DILocation(line: 155, column: 6, scope: !5923)
!5948 = !DILocation(line: 156, column: 3, scope: !5942)
!5949 = !DILocation(line: 158, column: 28, scope: !5923)
!5950 = !DILocation(line: 158, column: 9, scope: !5923)
!5951 = !DILocation(line: 158, column: 7, scope: !5923)
!5952 = !DILocation(line: 159, column: 7, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 159, column: 6)
!5954 = !DILocation(line: 159, column: 6, scope: !5923)
!5955 = !DILocation(line: 160, column: 3, scope: !5953)
!5956 = !DILocation(line: 162, column: 9, scope: !5923)
!5957 = !DILocation(line: 162, column: 15, scope: !5923)
!5958 = !DILocation(line: 162, column: 7, scope: !5923)
!5959 = !DILocation(line: 163, column: 7, scope: !5923)
!5960 = !DILocalVariable(name: "__base", scope: !5961, file: !3, line: 165, type: !776)
!5961 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 165, column: 2)
!5962 = !DILocation(line: 165, column: 2, scope: !5961)
!5963 = !DILocalVariable(name: "__rem", scope: !5961, file: !3, line: 165, type: !776)
!5964 = !DILocation(line: 167, column: 15, scope: !5923)
!5965 = !DILocation(line: 167, column: 20, scope: !5923)
!5966 = !DILocation(line: 167, column: 9, scope: !5923)
!5967 = !DILocation(line: 167, column: 27, scope: !5923)
!5968 = !DILocation(line: 167, column: 2, scope: !5923)
!5969 = !DILocation(line: 167, column: 7, scope: !5923)
!5970 = !DILocation(line: 168, column: 15, scope: !5923)
!5971 = !DILocation(line: 168, column: 20, scope: !5923)
!5972 = !DILocation(line: 168, column: 9, scope: !5923)
!5973 = !DILocation(line: 168, column: 26, scope: !5923)
!5974 = !DILocation(line: 168, column: 2, scope: !5923)
!5975 = !DILocation(line: 168, column: 7, scope: !5923)
!5976 = !DILocation(line: 169, column: 14, scope: !5923)
!5977 = !DILocation(line: 169, column: 9, scope: !5923)
!5978 = !DILocation(line: 169, column: 19, scope: !5923)
!5979 = !DILocation(line: 169, column: 2, scope: !5923)
!5980 = !DILocation(line: 169, column: 7, scope: !5923)
!5981 = !DILocation(line: 171, column: 27, scope: !5923)
!5982 = !DILocation(line: 171, column: 40, scope: !5923)
!5983 = !DILocation(line: 171, column: 8, scope: !5923)
!5984 = !DILocation(line: 171, column: 6, scope: !5923)
!5985 = !DILocation(line: 172, column: 28, scope: !5923)
!5986 = !DILocation(line: 172, column: 41, scope: !5923)
!5987 = !DILocation(line: 172, column: 9, scope: !5923)
!5988 = !DILocation(line: 172, column: 6, scope: !5923)
!5989 = !DILocation(line: 173, column: 28, scope: !5923)
!5990 = !DILocation(line: 173, column: 41, scope: !5923)
!5991 = !DILocation(line: 173, column: 9, scope: !5923)
!5992 = !DILocation(line: 173, column: 6, scope: !5923)
!5993 = !DILocation(line: 175, column: 6, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 175, column: 6)
!5995 = !DILocation(line: 175, column: 12, scope: !5994)
!5996 = !DILocation(line: 175, column: 6, scope: !5923)
!5997 = !DILocation(line: 176, column: 29, scope: !5994)
!5998 = !DILocation(line: 176, column: 10, scope: !5994)
!5999 = !DILocation(line: 176, column: 7, scope: !5994)
!6000 = !DILocation(line: 176, column: 3, scope: !5994)
!6001 = !DILocation(line: 178, column: 29, scope: !5994)
!6002 = !DILocation(line: 178, column: 10, scope: !5994)
!6003 = !DILocation(line: 178, column: 7, scope: !5994)
!6004 = !DILocation(line: 180, column: 28, scope: !5923)
!6005 = !DILocation(line: 180, column: 9, scope: !5923)
!6006 = !DILocation(line: 180, column: 6, scope: !5923)
!6007 = !DILocation(line: 182, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 182, column: 6)
!6009 = !DILocation(line: 182, column: 12, scope: !6008)
!6010 = !DILocation(line: 182, column: 6, scope: !5923)
!6011 = !DILocation(line: 183, column: 29, scope: !6008)
!6012 = !DILocation(line: 183, column: 10, scope: !6008)
!6013 = !DILocation(line: 183, column: 7, scope: !6008)
!6014 = !DILocation(line: 183, column: 3, scope: !6008)
!6015 = !DILocation(line: 184, column: 11, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 184, column: 11)
!6017 = !DILocation(line: 184, column: 17, scope: !6016)
!6018 = !DILocation(line: 184, column: 11, scope: !6008)
!6019 = !DILocation(line: 185, column: 29, scope: !6016)
!6020 = !DILocation(line: 185, column: 10, scope: !6016)
!6021 = !DILocation(line: 185, column: 7, scope: !6016)
!6022 = !DILocation(line: 185, column: 3, scope: !6016)
!6023 = !DILocation(line: 187, column: 29, scope: !6016)
!6024 = !DILocation(line: 187, column: 10, scope: !6016)
!6025 = !DILocation(line: 187, column: 7, scope: !6016)
!6026 = !DILocation(line: 189, column: 2, scope: !5923)
!6027 = !DILocation(line: 189, column: 2, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 189, column: 2)
!6029 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 189, column: 2)
!6030 = !DILocation(line: 189, column: 2, scope: !6029)
!6031 = !DILocation(line: 190, column: 9, scope: !5923)
!6032 = !DILocation(line: 190, column: 2, scope: !5923)
!6033 = !DILocation(line: 191, column: 1, scope: !5923)
!6034 = distinct !DISubprogram(name: "m88rs2000_readreg", scope: !3, file: !3, line: 72, type: !6035, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!303, !4526, !303}
!6037 = !DILocalVariable(name: "state", arg: 1, scope: !6034, file: !3, line: 72, type: !4526)
!6038 = !DILocation(line: 72, column: 53, scope: !6034)
!6039 = !DILocalVariable(name: "reg", arg: 2, scope: !6034, file: !3, line: 72, type: !303)
!6040 = !DILocation(line: 72, column: 63, scope: !6034)
!6041 = !DILocalVariable(name: "ret", scope: !6034, file: !3, line: 74, type: !315)
!6042 = !DILocation(line: 74, column: 6, scope: !6034)
!6043 = !DILocalVariable(name: "b0", scope: !6034, file: !3, line: 75, type: !6044)
!6044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 8, elements: !1501)
!6045 = !DILocation(line: 75, column: 5, scope: !6034)
!6046 = !DILocation(line: 75, column: 12, scope: !6034)
!6047 = !DILocation(line: 75, column: 14, scope: !6034)
!6048 = !DILocalVariable(name: "b1", scope: !6034, file: !3, line: 76, type: !6044)
!6049 = !DILocation(line: 76, column: 5, scope: !6034)
!6050 = !DILocalVariable(name: "msg", scope: !6034, file: !3, line: 78, type: !6051)
!6051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4415, size: 256, elements: !1702)
!6052 = !DILocation(line: 78, column: 17, scope: !6034)
!6053 = !DILocation(line: 78, column: 25, scope: !6034)
!6054 = !DILocation(line: 79, column: 3, scope: !6034)
!6055 = !DILocation(line: 80, column: 12, scope: !6034)
!6056 = !DILocation(line: 80, column: 19, scope: !6034)
!6057 = !DILocation(line: 80, column: 27, scope: !6034)
!6058 = !DILocation(line: 82, column: 11, scope: !6034)
!6059 = !DILocation(line: 84, column: 6, scope: !6034)
!6060 = !DILocation(line: 85, column: 12, scope: !6034)
!6061 = !DILocation(line: 85, column: 19, scope: !6034)
!6062 = !DILocation(line: 85, column: 27, scope: !6034)
!6063 = !DILocation(line: 87, column: 11, scope: !6034)
!6064 = !DILocation(line: 92, column: 21, scope: !6034)
!6065 = !DILocation(line: 92, column: 28, scope: !6034)
!6066 = !DILocation(line: 92, column: 33, scope: !6034)
!6067 = !DILocation(line: 92, column: 8, scope: !6034)
!6068 = !DILocation(line: 92, column: 6, scope: !6034)
!6069 = !DILocation(line: 94, column: 6, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 94, column: 6)
!6071 = !DILocation(line: 94, column: 10, scope: !6070)
!6072 = !DILocation(line: 94, column: 6, scope: !6034)
!6073 = !DILocation(line: 95, column: 3, scope: !6070)
!6074 = !DILocation(line: 95, column: 3, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 95, column: 3)
!6076 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 95, column: 3)
!6077 = !DILocation(line: 95, column: 3, scope: !6076)
!6078 = !DILocation(line: 98, column: 9, scope: !6034)
!6079 = !DILocation(line: 98, column: 2, scope: !6034)
!6080 = distinct !DISubprogram(name: "m88rs2000_get_fec", scope: !3, file: !3, line: 568, type: !6081, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!87, !4526}
!6083 = !DILocalVariable(name: "state", arg: 1, scope: !6080, file: !3, line: 568, type: !4526)
!6084 = !DILocation(line: 568, column: 68, scope: !6080)
!6085 = !DILocalVariable(name: "reg", scope: !6080, file: !3, line: 570, type: !303)
!6086 = !DILocation(line: 570, column: 5, scope: !6080)
!6087 = !DILocation(line: 571, column: 21, scope: !6080)
!6088 = !DILocation(line: 571, column: 2, scope: !6080)
!6089 = !DILocation(line: 572, column: 26, scope: !6080)
!6090 = !DILocation(line: 572, column: 8, scope: !6080)
!6091 = !DILocation(line: 572, column: 6, scope: !6080)
!6092 = !DILocation(line: 573, column: 21, scope: !6080)
!6093 = !DILocation(line: 573, column: 2, scope: !6080)
!6094 = !DILocation(line: 575, column: 6, scope: !6080)
!6095 = !DILocation(line: 576, column: 6, scope: !6080)
!6096 = !DILocation(line: 578, column: 10, scope: !6080)
!6097 = !DILocation(line: 578, column: 2, scope: !6080)
!6098 = !DILocation(line: 580, column: 3, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 578, column: 15)
!6100 = !DILocation(line: 582, column: 3, scope: !6099)
!6101 = !DILocation(line: 584, column: 3, scope: !6099)
!6102 = !DILocation(line: 586, column: 3, scope: !6099)
!6103 = !DILocation(line: 588, column: 3, scope: !6099)
!6104 = !DILocation(line: 590, column: 3, scope: !6099)
!6105 = !DILocation(line: 593, column: 2, scope: !6080)
!6106 = !DILocation(line: 594, column: 1, scope: !6080)
!6107 = distinct !DISubprogram(name: "m88rs2000_get_mclk", scope: !3, file: !3, line: 101, type: !6108, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !488)
!6108 = !DISubroutineType(types: !6109)
!6109 = !{!316, !3513}
!6110 = !DILocalVariable(name: "fe", arg: 1, scope: !6107, file: !3, line: 101, type: !3513)
!6111 = !DILocation(line: 101, column: 52, scope: !6107)
!6112 = !DILocalVariable(name: "state", scope: !6107, file: !3, line: 103, type: !4526)
!6113 = !DILocation(line: 103, column: 26, scope: !6107)
!6114 = !DILocation(line: 103, column: 34, scope: !6107)
!6115 = !DILocation(line: 103, column: 38, scope: !6107)
!6116 = !DILocalVariable(name: "mclk", scope: !6107, file: !3, line: 104, type: !316)
!6117 = !DILocation(line: 104, column: 6, scope: !6107)
!6118 = !DILocalVariable(name: "reg", scope: !6107, file: !3, line: 105, type: !303)
!6119 = !DILocation(line: 105, column: 5, scope: !6107)
!6120 = !DILocation(line: 107, column: 26, scope: !6107)
!6121 = !DILocation(line: 107, column: 8, scope: !6107)
!6122 = !DILocation(line: 107, column: 6, scope: !6107)
!6123 = !DILocation(line: 108, column: 7, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 108, column: 6)
!6125 = !DILocation(line: 108, column: 11, scope: !6124)
!6126 = !DILocation(line: 108, column: 14, scope: !6124)
!6127 = !DILocation(line: 108, column: 18, scope: !6124)
!6128 = !DILocation(line: 108, column: 6, scope: !6107)
!6129 = !DILocation(line: 109, column: 3, scope: !6124)
!6130 = !DILocation(line: 111, column: 6, scope: !6107)
!6131 = !DILocation(line: 112, column: 6, scope: !6107)
!6132 = !DILocation(line: 114, column: 15, scope: !6107)
!6133 = !DILocation(line: 114, column: 19, scope: !6107)
!6134 = !DILocation(line: 114, column: 43, scope: !6107)
!6135 = !DILocation(line: 114, column: 53, scope: !6107)
!6136 = !DILocation(line: 114, column: 7, scope: !6107)
!6137 = !DILocation(line: 116, column: 9, scope: !6107)
!6138 = !DILocation(line: 116, column: 2, scope: !6107)
!6139 = !DILocation(line: 117, column: 1, scope: !6107)
