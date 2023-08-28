; ModuleID = '../bcout/drivers/media/dvb-frontends/bcm3510.llvm.bc'
source_filename = "drivers/media/dvb-frontends/bcm3510.c"
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
%struct.bcm3510_config = type { i8, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)* }
%struct.firmware = type { i64, i8*, i8* }
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
%struct.bcm3510_state = type { %struct.i2c_adapter*, %struct.bcm3510_config*, %struct.dvb_frontend, %struct.mutex, i8, i64, i64, %struct.bcm3510_hab_cmd_status1, %struct.bcm3510_hab_cmd_status2 }
%struct.bcm3510_hab_cmd_status1 = type { %struct.anon.67, %struct.anon.68, %struct.anon.69, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.67 = type { i8 }
%struct.anon.68 = type { i8 }
%struct.anon.69 = type { i8 }
%struct.bcm3510_hab_cmd_status2 = type { %struct.anon.70, %struct.anon.71, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.72, i8, i8, i8 }
%struct.anon.70 = type { i8 }
%struct.anon.71 = type { i8 }
%struct.anon.72 = type { i8 }
%union.bcm3510_register_value = type { i8 }
%struct.anon.81 = type { i8 }
%struct.anon.74 = type { i8 }
%struct.anon.76 = type { i8 }
%struct.bcm3510_hab_cmd_set_agc = type { i8 }
%struct.anon.80 = type { i8 }
%struct.bcm3510_hab_cmd_ext_acquire = type { %struct.anon.85, %struct.anon.86, i8, i8, i8, i8, i8, i8 }
%struct.anon.85 = type { i8 }
%struct.anon.86 = type { i8 }
%struct.bcm3510_hab_cmd_bert_control = type { i8 }
%struct.anon.73 = type { i8 }
%struct.bcm3510_hab_cmd_get_version_info = type { i8, i8, i8, i8 }
%struct.anon.79 = type { i8 }
%struct.anon.78 = type { i8 }
%struct.anon.82 = type { i8 }
%struct.bcm3510_hab_cmd_tune = type { i8, i8, i8, i8, [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair] }
%struct.bcm3510_hab_cmd_tune_ctrl_data_pair = type { %struct.anon.87, i8 }
%struct.anon.87 = type { i8 }

@__param_str_debug = internal constant [14 x i8] c"bcm3510.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !4437
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !307
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"bcm3510.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !372
@__UNIQUE_ID_debug221 = internal constant [64 x i8] c"bcm3510.parm=debug:set debugging level (1=info,2=i2c (|-able)).\00", section ".modinfo", align 1, !dbg !377
@bcm3510_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Broadcom BCM3510 VSB/QAM frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 803000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6351534 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @bcm3510_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @bcm3510_init, i32 (%struct.dvb_frontend*)* @bcm3510_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @bcm3510_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @bcm3510_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @bcm3510_read_status, i32 (%struct.dvb_frontend*, i32*)* @bcm3510_read_ber, i32 (%struct.dvb_frontend*, i16*)* @bcm3510_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @bcm3510_read_snr, i32 (%struct.dvb_frontend*, i32*)* @bcm3510_read_unc, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4439
@bcm3510_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !382
@.str = private unnamed_addr constant [18 x i8] c"&state->hab_mutex\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Revision: 0x%1x, Layer: 0x%1x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\016bcm3510: Revision: 0x%1x, Layer: 0x%1x.\0A\00", align 1
@__UNIQUE_ID_description222 = internal constant [105 x i8] c"bcm3510.description=Broadcom BCM3510 ATSC (8VSB/16VSB & ITU J83 AnnexB FEC QAM64/256) demodulator driver\00", section ".modinfo", align 1, !dbg !4419
@__UNIQUE_ID_author223 = internal constant [63 x i8] c"bcm3510.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1, !dbg !4424
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"bcm3510.file=drivers/media/dvb-frontends/bcm3510\00", section ".modinfo", align 1, !dbg !4429
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"bcm3510.license=GPL\00", section ".modinfo", align 1, !dbg !4434
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: i2c read error (addr %02x, reg %02x, err == %i)\0A\00", align 1
@__func__.bcm3510_readbytes = private unnamed_addr constant [18 x i8] c"bcm3510_readbytes\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"i2c rd %02x: \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"reset timed out\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"i2c wr %02x: \00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"%s: i2c write error (addr %02x, reg %02x, err == %i)\0A\00", align 1
@__func__.bcm3510_writebytes = private unnamed_addr constant [19 x i8] c"bcm3510_writebytes\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"JDEC: %02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"attempting to download firmware\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"firmware is loaded\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"AP is already running - firmware already loaded.\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"reset?\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"tristate?\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"firmware?\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"requesting firmware\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"dvb-fe-bcm3510-01.fw\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"\013bcm3510: could not load firmware (%s): %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"got firmware: %zu\0A\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"firmware chunk, addr: 0x%04x, len: 0x%04x, total length: 0x%04zx\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"\013bcm3510: firmware download failed: %d\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"firmware download successfully completed\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"reset clear timed out\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"Version information: 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"version check failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"do_hab_cmd: ilen=%d is too big!\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"do_hab_cmd: olen=%d is too big!\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"hab snd: \00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"hab get: \00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"HAB is running already - clearing it.\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"waiting for HAB to complete\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"send_request execution timed out.\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"%dkHz:\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c" BC1_2_3_4: %x, N: %x A: %x\0A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"real_status: %02x\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @bcm3510_attach(%struct.bcm3510_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !384 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.bcm3510_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.bcm3510_state*, align 8
  %ret = alloca i32, align 4
  %v = alloca %union.bcm3510_register_value, align 1
  store %struct.bcm3510_config* %config, %struct.bcm3510_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_config** %config.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %state, metadata !4454, metadata !DIExpression()), !dbg !4569
  store %struct.bcm3510_state* null, %struct.bcm3510_state** %state, align 8, !dbg !4569
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4570, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %v, metadata !4572, metadata !DIExpression()), !dbg !4693
  %call = call i8* @kzalloc(i64 1408, i32 3264) #8, !dbg !4694
  %0 = bitcast i8* %call to %struct.bcm3510_state*, !dbg !4694
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %state, align 8, !dbg !4695
  %1 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4696
  %cmp = icmp eq %struct.bcm3510_state* %1, null, !dbg !4698
  br i1 %cmp, label %if.then, label %if.end, !dbg !4699

if.then:                                          ; preds = %entry
  br label %error, !dbg !4700

if.end:                                           ; preds = %entry
  %2 = load %struct.bcm3510_config*, %struct.bcm3510_config** %config.addr, align 8, !dbg !4701
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4702
  %config1 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %3, i32 0, i32 1, !dbg !4703
  store %struct.bcm3510_config* %2, %struct.bcm3510_config** %config1, align 8, !dbg !4704
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4705
  %5 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4706
  %i2c2 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %5, i32 0, i32 0, !dbg !4707
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4708
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4709
  %frontend = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %6, i32 0, i32 2, !dbg !4710
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4711
  %7 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @bcm3510_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4712
  %8 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4713
  %9 = bitcast %struct.bcm3510_state* %8 to i8*, !dbg !4713
  %10 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4714
  %frontend3 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %10, i32 0, i32 2, !dbg !4715
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend3, i32 0, i32 3, !dbg !4716
  store i8* %9, i8** %demodulator_priv, align 8, !dbg !4717
  br label %do.body, !dbg !4718

do.body:                                          ; preds = %if.end
  %11 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4719
  %hab_mutex = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %11, i32 0, i32 3, !dbg !4719
  call void @__mutex_init(%struct.mutex* %hab_mutex, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @bcm3510_attach.__key) #8, !dbg !4719
  br label %do.end, !dbg !4719

do.end:                                           ; preds = %do.body
  %12 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4721
  %call4 = call i32 @bcm3510_readB(%struct.bcm3510_state* %12, i8 zeroext -32, %union.bcm3510_register_value* %v) #8, !dbg !4723
  store i32 %call4, i32* %ret, align 4, !dbg !4724
  %cmp5 = icmp slt i32 %call4, 0, !dbg !4725
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4726

if.then6:                                         ; preds = %do.end
  br label %error, !dbg !4727

if.end7:                                          ; preds = %do.end
  %13 = load i32, i32* @debug, align 4, !dbg !4728
  %and = and i32 1, %13, !dbg !4728
  %tobool = icmp ne i32 %and, 0, !dbg !4728
  br i1 %tobool, label %if.then8, label %if.end13, !dbg !4730

if.then8:                                         ; preds = %if.end7
  %REVID_e0 = bitcast %union.bcm3510_register_value* %v to %struct.anon.81*, !dbg !4728
  %14 = bitcast %struct.anon.81* %REVID_e0 to i8*, !dbg !4728
  %bf.load = load i8, i8* %14, align 1, !dbg !4728
  %bf.clear = and i8 %bf.load, 15, !dbg !4728
  %conv = zext i8 %bf.clear to i32, !dbg !4728
  %REVID_e09 = bitcast %union.bcm3510_register_value* %v to %struct.anon.81*, !dbg !4728
  %15 = bitcast %struct.anon.81* %REVID_e09 to i8*, !dbg !4728
  %bf.load10 = load i8, i8* %15, align 1, !dbg !4728
  %bf.lshr = lshr i8 %bf.load10, 4, !dbg !4728
  %conv11 = zext i8 %bf.lshr to i32, !dbg !4728
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %conv, i32 %conv11) #9, !dbg !4728
  br label %if.end13, !dbg !4728

if.end13:                                         ; preds = %if.then8, %if.end7
  %REVID_e014 = bitcast %union.bcm3510_register_value* %v to %struct.anon.81*, !dbg !4731
  %16 = bitcast %struct.anon.81* %REVID_e014 to i8*, !dbg !4733
  %bf.load15 = load i8, i8* %16, align 1, !dbg !4733
  %bf.clear16 = and i8 %bf.load15, 15, !dbg !4733
  %conv17 = zext i8 %bf.clear16 to i32, !dbg !4734
  %cmp18 = icmp ne i32 %conv17, 1, !dbg !4735
  br i1 %cmp18, label %land.lhs.true, label %if.end41, !dbg !4736

land.lhs.true:                                    ; preds = %if.end13
  %REVID_e020 = bitcast %union.bcm3510_register_value* %v to %struct.anon.81*, !dbg !4737
  %17 = bitcast %struct.anon.81* %REVID_e020 to i8*, !dbg !4738
  %bf.load21 = load i8, i8* %17, align 1, !dbg !4738
  %bf.lshr22 = lshr i8 %bf.load21, 4, !dbg !4738
  %conv23 = zext i8 %bf.lshr22 to i32, !dbg !4739
  %cmp24 = icmp ne i32 %conv23, 11, !dbg !4740
  br i1 %cmp24, label %land.lhs.true26, label %if.end41, !dbg !4741

land.lhs.true26:                                  ; preds = %land.lhs.true
  %REVID_e027 = bitcast %union.bcm3510_register_value* %v to %struct.anon.81*, !dbg !4742
  %18 = bitcast %struct.anon.81* %REVID_e027 to i8*, !dbg !4743
  %bf.load28 = load i8, i8* %18, align 1, !dbg !4743
  %bf.clear29 = and i8 %bf.load28, 15, !dbg !4743
  %conv30 = zext i8 %bf.clear29 to i32, !dbg !4744
  %cmp31 = icmp ne i32 %conv30, 8, !dbg !4745
  br i1 %cmp31, label %land.lhs.true33, label %if.end41, !dbg !4746

land.lhs.true33:                                  ; preds = %land.lhs.true26
  %REVID_e034 = bitcast %union.bcm3510_register_value* %v to %struct.anon.81*, !dbg !4747
  %19 = bitcast %struct.anon.81* %REVID_e034 to i8*, !dbg !4748
  %bf.load35 = load i8, i8* %19, align 1, !dbg !4748
  %bf.lshr36 = lshr i8 %bf.load35, 4, !dbg !4748
  %conv37 = zext i8 %bf.lshr36 to i32, !dbg !4749
  %cmp38 = icmp ne i32 %conv37, 0, !dbg !4750
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4751

if.then40:                                        ; preds = %land.lhs.true33
  br label %error, !dbg !4752

if.end41:                                         ; preds = %land.lhs.true33, %land.lhs.true26, %land.lhs.true, %if.end13
  %REVID_e042 = bitcast %union.bcm3510_register_value* %v to %struct.anon.81*, !dbg !4753
  %20 = bitcast %struct.anon.81* %REVID_e042 to i8*, !dbg !4753
  %bf.load43 = load i8, i8* %20, align 1, !dbg !4753
  %bf.clear44 = and i8 %bf.load43, 15, !dbg !4753
  %conv45 = zext i8 %bf.clear44 to i32, !dbg !4753
  %REVID_e046 = bitcast %union.bcm3510_register_value* %v to %struct.anon.81*, !dbg !4753
  %21 = bitcast %struct.anon.81* %REVID_e046 to i8*, !dbg !4753
  %bf.load47 = load i8, i8* %21, align 1, !dbg !4753
  %bf.lshr48 = lshr i8 %bf.load47, 4, !dbg !4753
  %conv49 = zext i8 %bf.lshr48 to i32, !dbg !4753
  %call50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %conv45, i32 %conv49) #9, !dbg !4753
  %22 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4754
  %call51 = call i32 @bcm3510_reset(%struct.bcm3510_state* %22) #8, !dbg !4755
  %23 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4756
  %frontend52 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %23, i32 0, i32 2, !dbg !4757
  store %struct.dvb_frontend* %frontend52, %struct.dvb_frontend** %retval, align 8, !dbg !4758
  br label %return, !dbg !4758

error:                                            ; preds = %if.then40, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4759), !dbg !4760
  %24 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !4761
  %25 = bitcast %struct.bcm3510_state* %24 to i8*, !dbg !4761
  call void @kfree(i8* %25) #8, !dbg !4762
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4763
  br label %return, !dbg !4763

return:                                           ; preds = %error, %if.end41
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4764
  ret %struct.dvb_frontend* %26, !dbg !4764
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4765 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4768, metadata !DIExpression()), !dbg !4772
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4778, metadata !DIExpression()), !dbg !4779
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4780, metadata !DIExpression()), !dbg !4781
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4782, metadata !DIExpression()), !dbg !4783
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4784, metadata !DIExpression()), !dbg !4788
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4790, metadata !DIExpression()), !dbg !4794
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4796, metadata !DIExpression()), !dbg !4800
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4805, metadata !DIExpression()), !dbg !4806
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4807, metadata !DIExpression()), !dbg !4808
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4809, metadata !DIExpression()), !dbg !4810
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4811, metadata !DIExpression()), !dbg !4812
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4813, metadata !DIExpression()), !dbg !4814
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4815, metadata !DIExpression()), !dbg !4816
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4817, metadata !DIExpression()), !dbg !4818
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4819, metadata !DIExpression()), !dbg !4820
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4821, metadata !DIExpression()), !dbg !4822
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  %0 = load i64, i64* %size.addr, align 8, !dbg !4825
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4826
  %or = or i32 %1, 256, !dbg !4827
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4828
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4829
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4830

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4831
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4832
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4833

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4834
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4835
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4836
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4837
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4814
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4838
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4839
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4840
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4841
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4842
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4843
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4844
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4844
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4844
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4844
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4844
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4845
  br label %kmalloc.exit, !dbg !4845

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4846
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4847
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4847
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4849

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4850
  br label %kmalloc_index.exit.i, !dbg !4850

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4851
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4853
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4854

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4855
  br label %kmalloc_index.exit.i, !dbg !4855

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4856
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4858
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4859

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4860
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4861
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4862

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4863
  br label %kmalloc_index.exit.i, !dbg !4863

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4864
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4866
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4867

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4869
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4870

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4871
  br label %kmalloc_index.exit.i, !dbg !4871

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4872
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4874
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4875

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4876
  br label %kmalloc_index.exit.i, !dbg !4876

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4877
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4879
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4880

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4881
  br label %kmalloc_index.exit.i, !dbg !4881

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4882
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4884
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4885

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4886
  br label %kmalloc_index.exit.i, !dbg !4886

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4887
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4889
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4890

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4891
  br label %kmalloc_index.exit.i, !dbg !4891

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4892
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4894
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4895

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4896
  br label %kmalloc_index.exit.i, !dbg !4896

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4897
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4899
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4900

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4901
  br label %kmalloc_index.exit.i, !dbg !4901

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4902
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4904
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4905

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4906
  br label %kmalloc_index.exit.i, !dbg !4906

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4907
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4909
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4910

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4911
  br label %kmalloc_index.exit.i, !dbg !4911

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4912
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4914
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4915

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4916
  br label %kmalloc_index.exit.i, !dbg !4916

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4917
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4919
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4920

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4921
  br label %kmalloc_index.exit.i, !dbg !4921

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4922
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4924
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4925

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4926
  br label %kmalloc_index.exit.i, !dbg !4926

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4927
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4929
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4930

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4931
  br label %kmalloc_index.exit.i, !dbg !4931

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4932
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4934
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4935

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4936
  br label %kmalloc_index.exit.i, !dbg !4936

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4937
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4939
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4940

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4941
  br label %kmalloc_index.exit.i, !dbg !4941

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4942
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4944
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4945

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4946
  br label %kmalloc_index.exit.i, !dbg !4946

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4947
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4949
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4950

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4951
  br label %kmalloc_index.exit.i, !dbg !4951

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4952
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4954
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4955

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4956
  br label %kmalloc_index.exit.i, !dbg !4956

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4957
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4959
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4960

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4961
  br label %kmalloc_index.exit.i, !dbg !4961

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4962
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4964
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4965

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4966
  br label %kmalloc_index.exit.i, !dbg !4966

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4967
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4969
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4970

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4971
  br label %kmalloc_index.exit.i, !dbg !4971

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4972
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4974
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4975

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4976
  br label %kmalloc_index.exit.i, !dbg !4976

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4977
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4979
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4980

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4981
  br label %kmalloc_index.exit.i, !dbg !4981

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4982
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4984
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4985

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4986
  br label %kmalloc_index.exit.i, !dbg !4986

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4987
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4989
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4990

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4991
  br label %kmalloc_index.exit.i, !dbg !4991

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4992, !srcloc !4995
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !4996, !srcloc !4999
  unreachable, !dbg !5000

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5001
  store i32 %45, i32* %index.i, align 4, !dbg !5002
  %46 = load i32, i32* %index.i, align 4, !dbg !5003
  %tobool.i = icmp ne i32 %46, 0, !dbg !5003
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5005

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5006
  br label %kmalloc.exit, !dbg !5006

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5007
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5008
  %and.i.i = and i32 %48, 17, !dbg !5008
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5008
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5008
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5008
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5008
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5010

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5011
  br label %kmalloc_type.exit.i, !dbg !5011

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5012
  %and2.i.i = and i32 %49, 1, !dbg !5013
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5012
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5012
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5012
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5014
  br label %kmalloc_type.exit.i, !dbg !5014

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5015
  %idxprom.i = zext i32 %51 to i64, !dbg !5016
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5016
  %52 = load i32, i32* %index.i, align 4, !dbg !5017
  %idxprom6.i = zext i32 %52 to i64, !dbg !5016
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5016
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5016
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5018
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5019
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5020
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5021
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5022
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5022
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5022
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5022
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5022
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4783
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5023
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5024
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5025
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5026
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5027
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5028
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5029
  store i8* %62, i8** %retval.i, align 8, !dbg !5030
  br label %kmalloc.exit, !dbg !5030

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5031
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5032
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5033
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5033
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5033
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5033
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5033
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5034
  br label %kmalloc.exit, !dbg !5034

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5035
  ret i8* %65, !dbg !5036
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_readB(%struct.bcm3510_state* %state, i8 zeroext %reg, %union.bcm3510_register_value* %v) #0 !dbg !5037 {
entry:
  %state.addr = alloca %struct.bcm3510_state*, align 8
  %reg.addr = alloca i8, align 1
  %v.addr = alloca %union.bcm3510_register_value*, align 8
  store %struct.bcm3510_state* %state, %struct.bcm3510_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %state.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  store %union.bcm3510_register_value* %v, %union.bcm3510_register_value** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value** %v.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5047
  %1 = load i8, i8* %reg.addr, align 1, !dbg !5048
  %2 = load %union.bcm3510_register_value*, %union.bcm3510_register_value** %v.addr, align 8, !dbg !5049
  %raw = bitcast %union.bcm3510_register_value* %2 to i8*, !dbg !5050
  %call = call i32 @bcm3510_readbytes(%struct.bcm3510_state* %0, i8 zeroext %1, i8* %raw, i8 zeroext 1) #8, !dbg !5051
  ret i32 %call, !dbg !5052
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_reset(%struct.bcm3510_state* %st) #0 !dbg !5053 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %ret = alloca i32, align 4
  %t = alloca i64, align 8
  %v = alloca %union.bcm3510_register_value, align 1
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5058, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.declare(metadata i64* %t, metadata !5060, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %v, metadata !5062, metadata !DIExpression()), !dbg !5063
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5064
  %call = call i32 @bcm3510_readB(%struct.bcm3510_state* %0, i8 zeroext -96, %union.bcm3510_register_value* %v) #8, !dbg !5065
  %HCTL1_a0 = bitcast %union.bcm3510_register_value* %v to %struct.anon.74*, !dbg !5066
  %1 = bitcast %struct.anon.74* %HCTL1_a0 to i8*, !dbg !5067
  %bf.load = load i8, i8* %1, align 1, !dbg !5068
  %bf.clear = and i8 %bf.load, -2, !dbg !5068
  %bf.set = or i8 %bf.clear, 1, !dbg !5068
  store i8 %bf.set, i8* %1, align 1, !dbg !5068
  %2 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5069
  %coerce.dive = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %v, i32 0, i32 0, !dbg !5071
  %3 = load i8, i8* %coerce.dive, align 1, !dbg !5071
  %call1 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %2, i8 zeroext -96, i8 %3) #8, !dbg !5071
  store i32 %call1, i32* %ret, align 4, !dbg !5072
  %cmp = icmp slt i32 %call1, 0, !dbg !5073
  br i1 %cmp, label %if.then, label %if.end, !dbg !5074

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !5075
  store i32 %4, i32* %retval, align 4, !dbg !5076
  br label %return, !dbg !5076

if.end:                                           ; preds = %entry
  %5 = load volatile i64, i64* @jiffies, align 8, !dbg !5077
  %add = add i64 %5, 750, !dbg !5078
  store i64 %add, i64* %t, align 8, !dbg !5079
  br label %while.cond, !dbg !5080

while.cond:                                       ; preds = %if.end10, %if.end
  %6 = load volatile i64, i64* @jiffies, align 8, !dbg !5081
  %7 = load i64, i64* %t, align 8, !dbg !5081
  %sub = sub i64 %6, %7, !dbg !5081
  %cmp2 = icmp slt i64 %sub, 0, !dbg !5081
  br i1 %cmp2, label %while.body, label %while.end, !dbg !5080

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 10) #8, !dbg !5082
  %8 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5084
  %call3 = call i32 @bcm3510_readB(%struct.bcm3510_state* %8, i8 zeroext -94, %union.bcm3510_register_value* %v) #8, !dbg !5086
  store i32 %call3, i32* %ret, align 4, !dbg !5087
  %cmp4 = icmp slt i32 %call3, 0, !dbg !5088
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5089

if.then5:                                         ; preds = %while.body
  %9 = load i32, i32* %ret, align 4, !dbg !5090
  store i32 %9, i32* %retval, align 4, !dbg !5091
  br label %return, !dbg !5091

if.end6:                                          ; preds = %while.body
  %APSTAT1_a2 = bitcast %union.bcm3510_register_value* %v to %struct.anon.76*, !dbg !5092
  %10 = bitcast %struct.anon.76* %APSTAT1_a2 to i8*, !dbg !5094
  %bf.load7 = load i8, i8* %10, align 1, !dbg !5094
  %bf.clear8 = and i8 %bf.load7, 1, !dbg !5094
  %tobool = icmp ne i8 %bf.clear8, 0, !dbg !5095
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5096

if.then9:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4, !dbg !5097
  br label %return, !dbg !5097

if.end10:                                         ; preds = %if.end6
  br label %while.cond, !dbg !5080, !llvm.loop !5098

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* @debug, align 4, !dbg !5100
  %and = and i32 1, %11, !dbg !5100
  %tobool11 = icmp ne i32 %and, 0, !dbg !5100
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5102

if.then12:                                        ; preds = %while.end
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !5100
  br label %if.end14, !dbg !5100

if.end14:                                         ; preds = %if.then12, %while.end
  store i32 -110, i32* %retval, align 4, !dbg !5103
  br label %return, !dbg !5103

return:                                           ; preds = %if.end14, %if.then9, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5104
  ret i32 %12, !dbg !5104
}

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
define internal i32 @get_order(i64 %size) #7 !dbg !5105 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5109, metadata !DIExpression()), !dbg !5114
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5116, metadata !DIExpression()), !dbg !5117
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load i64, i64* %size.addr, align 8, !dbg !5120
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5122
  br i1 %1, label %if.then, label %if.end447, !dbg !5123

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5124
  %tobool = icmp ne i64 %2, 0, !dbg !5124
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5127

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5129
  %cmp = icmp ult i64 %3, 4096, !dbg !5131
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5132

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub = sub i64 %4, 1, !dbg !5134
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5134
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5134

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub4 = sub i64 %6, 1, !dbg !5134
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5134
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5134

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub6 = sub i64 %8, 1, !dbg !5134
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5134
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5134

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5134

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub9 = sub i64 %9, 1, !dbg !5134
  %and = and i64 %sub9, -9223372036854775808, !dbg !5134
  %tobool10 = icmp ne i64 %and, 0, !dbg !5134
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5134

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5134

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub13 = sub i64 %10, 1, !dbg !5134
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5134
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5134
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5134

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5134

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub18 = sub i64 %11, 1, !dbg !5134
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5134
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5134
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5134

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5134

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub23 = sub i64 %12, 1, !dbg !5134
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5134
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5134
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5134

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5134

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub28 = sub i64 %13, 1, !dbg !5134
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5134
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5134
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5134

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5134

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub33 = sub i64 %14, 1, !dbg !5134
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5134
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5134
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5134

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5134

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub38 = sub i64 %15, 1, !dbg !5134
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5134
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5134
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5134

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5134

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub43 = sub i64 %16, 1, !dbg !5134
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5134
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5134
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5134

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5134

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub48 = sub i64 %17, 1, !dbg !5134
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5134
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5134
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5134

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5134

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub53 = sub i64 %18, 1, !dbg !5134
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5134
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5134
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5134

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5134

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub58 = sub i64 %19, 1, !dbg !5134
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5134
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5134
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5134

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5134

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub63 = sub i64 %20, 1, !dbg !5134
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5134
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5134
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5134

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5134

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub68 = sub i64 %21, 1, !dbg !5134
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5134
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5134
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5134

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5134

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub73 = sub i64 %22, 1, !dbg !5134
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5134
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5134
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5134

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5134

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub78 = sub i64 %23, 1, !dbg !5134
  %and79 = and i64 %sub78, 562949953421312, !dbg !5134
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5134
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5134

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5134

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub83 = sub i64 %24, 1, !dbg !5134
  %and84 = and i64 %sub83, 281474976710656, !dbg !5134
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5134
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5134

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5134

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub88 = sub i64 %25, 1, !dbg !5134
  %and89 = and i64 %sub88, 140737488355328, !dbg !5134
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5134
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5134

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5134

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub93 = sub i64 %26, 1, !dbg !5134
  %and94 = and i64 %sub93, 70368744177664, !dbg !5134
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5134
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5134

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5134

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub98 = sub i64 %27, 1, !dbg !5134
  %and99 = and i64 %sub98, 35184372088832, !dbg !5134
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5134
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5134

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5134

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub103 = sub i64 %28, 1, !dbg !5134
  %and104 = and i64 %sub103, 17592186044416, !dbg !5134
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5134
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5134

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5134

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub108 = sub i64 %29, 1, !dbg !5134
  %and109 = and i64 %sub108, 8796093022208, !dbg !5134
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5134
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5134

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5134

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub113 = sub i64 %30, 1, !dbg !5134
  %and114 = and i64 %sub113, 4398046511104, !dbg !5134
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5134
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5134

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5134

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub118 = sub i64 %31, 1, !dbg !5134
  %and119 = and i64 %sub118, 2199023255552, !dbg !5134
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5134
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5134

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5134

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub123 = sub i64 %32, 1, !dbg !5134
  %and124 = and i64 %sub123, 1099511627776, !dbg !5134
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5134
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5134

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5134

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub128 = sub i64 %33, 1, !dbg !5134
  %and129 = and i64 %sub128, 549755813888, !dbg !5134
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5134
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5134

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5134

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub133 = sub i64 %34, 1, !dbg !5134
  %and134 = and i64 %sub133, 274877906944, !dbg !5134
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5134
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5134

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5134

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub138 = sub i64 %35, 1, !dbg !5134
  %and139 = and i64 %sub138, 137438953472, !dbg !5134
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5134
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5134

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5134

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub143 = sub i64 %36, 1, !dbg !5134
  %and144 = and i64 %sub143, 68719476736, !dbg !5134
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5134
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5134

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5134

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub148 = sub i64 %37, 1, !dbg !5134
  %and149 = and i64 %sub148, 34359738368, !dbg !5134
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5134
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5134

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5134

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub153 = sub i64 %38, 1, !dbg !5134
  %and154 = and i64 %sub153, 17179869184, !dbg !5134
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5134
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5134

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5134

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub158 = sub i64 %39, 1, !dbg !5134
  %and159 = and i64 %sub158, 8589934592, !dbg !5134
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5134
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5134

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5134

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub163 = sub i64 %40, 1, !dbg !5134
  %and164 = and i64 %sub163, 4294967296, !dbg !5134
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5134
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5134

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5134

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub168 = sub i64 %41, 1, !dbg !5134
  %and169 = and i64 %sub168, 2147483648, !dbg !5134
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5134
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5134

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5134

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub173 = sub i64 %42, 1, !dbg !5134
  %and174 = and i64 %sub173, 1073741824, !dbg !5134
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5134
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5134

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5134

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub178 = sub i64 %43, 1, !dbg !5134
  %and179 = and i64 %sub178, 536870912, !dbg !5134
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5134
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5134

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5134

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub183 = sub i64 %44, 1, !dbg !5134
  %and184 = and i64 %sub183, 268435456, !dbg !5134
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5134
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5134

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5134

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub188 = sub i64 %45, 1, !dbg !5134
  %and189 = and i64 %sub188, 134217728, !dbg !5134
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5134
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5134

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5134

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub193 = sub i64 %46, 1, !dbg !5134
  %and194 = and i64 %sub193, 67108864, !dbg !5134
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5134
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5134

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5134

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub198 = sub i64 %47, 1, !dbg !5134
  %and199 = and i64 %sub198, 33554432, !dbg !5134
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5134
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5134

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5134

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub203 = sub i64 %48, 1, !dbg !5134
  %and204 = and i64 %sub203, 16777216, !dbg !5134
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5134
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5134

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5134

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub208 = sub i64 %49, 1, !dbg !5134
  %and209 = and i64 %sub208, 8388608, !dbg !5134
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5134
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5134

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5134

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub213 = sub i64 %50, 1, !dbg !5134
  %and214 = and i64 %sub213, 4194304, !dbg !5134
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5134
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5134

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5134

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub218 = sub i64 %51, 1, !dbg !5134
  %and219 = and i64 %sub218, 2097152, !dbg !5134
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5134
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5134

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5134

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub223 = sub i64 %52, 1, !dbg !5134
  %and224 = and i64 %sub223, 1048576, !dbg !5134
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5134
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5134

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5134

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub228 = sub i64 %53, 1, !dbg !5134
  %and229 = and i64 %sub228, 524288, !dbg !5134
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5134
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5134

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5134

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub233 = sub i64 %54, 1, !dbg !5134
  %and234 = and i64 %sub233, 262144, !dbg !5134
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5134
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5134

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5134

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub238 = sub i64 %55, 1, !dbg !5134
  %and239 = and i64 %sub238, 131072, !dbg !5134
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5134
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5134

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5134

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub243 = sub i64 %56, 1, !dbg !5134
  %and244 = and i64 %sub243, 65536, !dbg !5134
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5134
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5134

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5134

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub248 = sub i64 %57, 1, !dbg !5134
  %and249 = and i64 %sub248, 32768, !dbg !5134
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5134
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5134

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5134

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub253 = sub i64 %58, 1, !dbg !5134
  %and254 = and i64 %sub253, 16384, !dbg !5134
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5134
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5134

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5134

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub258 = sub i64 %59, 1, !dbg !5134
  %and259 = and i64 %sub258, 8192, !dbg !5134
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5134
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5134

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5134

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub263 = sub i64 %60, 1, !dbg !5134
  %and264 = and i64 %sub263, 4096, !dbg !5134
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5134
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5134

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5134

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub268 = sub i64 %61, 1, !dbg !5134
  %and269 = and i64 %sub268, 2048, !dbg !5134
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5134
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5134

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5134

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub273 = sub i64 %62, 1, !dbg !5134
  %and274 = and i64 %sub273, 1024, !dbg !5134
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5134
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5134

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5134

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub278 = sub i64 %63, 1, !dbg !5134
  %and279 = and i64 %sub278, 512, !dbg !5134
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5134
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5134

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5134

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub283 = sub i64 %64, 1, !dbg !5134
  %and284 = and i64 %sub283, 256, !dbg !5134
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5134
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5134

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5134

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub288 = sub i64 %65, 1, !dbg !5134
  %and289 = and i64 %sub288, 128, !dbg !5134
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5134
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5134

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5134

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub293 = sub i64 %66, 1, !dbg !5134
  %and294 = and i64 %sub293, 64, !dbg !5134
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5134
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5134

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5134

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub298 = sub i64 %67, 1, !dbg !5134
  %and299 = and i64 %sub298, 32, !dbg !5134
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5134
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5134

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5134

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub303 = sub i64 %68, 1, !dbg !5134
  %and304 = and i64 %sub303, 16, !dbg !5134
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5134
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5134

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5134

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub308 = sub i64 %69, 1, !dbg !5134
  %and309 = and i64 %sub308, 8, !dbg !5134
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5134
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5134

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5134

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub313 = sub i64 %70, 1, !dbg !5134
  %and314 = and i64 %sub313, 4, !dbg !5134
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5134
  %71 = zext i1 %tobool315 to i64, !dbg !5134
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5134
  br label %cond.end, !dbg !5134

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5134
  br label %cond.end317, !dbg !5134

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5134
  br label %cond.end319, !dbg !5134

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5134
  br label %cond.end321, !dbg !5134

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5134
  br label %cond.end323, !dbg !5134

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5134
  br label %cond.end325, !dbg !5134

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5134
  br label %cond.end327, !dbg !5134

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5134
  br label %cond.end329, !dbg !5134

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5134
  br label %cond.end331, !dbg !5134

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5134
  br label %cond.end333, !dbg !5134

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5134
  br label %cond.end335, !dbg !5134

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5134
  br label %cond.end337, !dbg !5134

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5134
  br label %cond.end339, !dbg !5134

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5134
  br label %cond.end341, !dbg !5134

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5134
  br label %cond.end343, !dbg !5134

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5134
  br label %cond.end345, !dbg !5134

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5134
  br label %cond.end347, !dbg !5134

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5134
  br label %cond.end349, !dbg !5134

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5134
  br label %cond.end351, !dbg !5134

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5134
  br label %cond.end353, !dbg !5134

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5134
  br label %cond.end355, !dbg !5134

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5134
  br label %cond.end357, !dbg !5134

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5134
  br label %cond.end359, !dbg !5134

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5134
  br label %cond.end361, !dbg !5134

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5134
  br label %cond.end363, !dbg !5134

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5134
  br label %cond.end365, !dbg !5134

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5134
  br label %cond.end367, !dbg !5134

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5134
  br label %cond.end369, !dbg !5134

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5134
  br label %cond.end371, !dbg !5134

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5134
  br label %cond.end373, !dbg !5134

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5134
  br label %cond.end375, !dbg !5134

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5134
  br label %cond.end377, !dbg !5134

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5134
  br label %cond.end379, !dbg !5134

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5134
  br label %cond.end381, !dbg !5134

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5134
  br label %cond.end383, !dbg !5134

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5134
  br label %cond.end385, !dbg !5134

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5134
  br label %cond.end387, !dbg !5134

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5134
  br label %cond.end389, !dbg !5134

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5134
  br label %cond.end391, !dbg !5134

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5134
  br label %cond.end393, !dbg !5134

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5134
  br label %cond.end395, !dbg !5134

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5134
  br label %cond.end397, !dbg !5134

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5134
  br label %cond.end399, !dbg !5134

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5134
  br label %cond.end401, !dbg !5134

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5134
  br label %cond.end403, !dbg !5134

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5134
  br label %cond.end405, !dbg !5134

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5134
  br label %cond.end407, !dbg !5134

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5134
  br label %cond.end409, !dbg !5134

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5134
  br label %cond.end411, !dbg !5134

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5134
  br label %cond.end413, !dbg !5134

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5134
  br label %cond.end415, !dbg !5134

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5134
  br label %cond.end417, !dbg !5134

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5134
  br label %cond.end419, !dbg !5134

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5134
  br label %cond.end421, !dbg !5134

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5134
  br label %cond.end423, !dbg !5134

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5134
  br label %cond.end425, !dbg !5134

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5134
  br label %cond.end427, !dbg !5134

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5134
  br label %cond.end429, !dbg !5134

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5134
  br label %cond.end431, !dbg !5134

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5134
  br label %cond.end433, !dbg !5134

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5134
  br label %cond.end435, !dbg !5134

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5134
  br label %cond.end437, !dbg !5134

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5134
  br label %cond.end440, !dbg !5134

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5134

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5134
  br label %cond.end444, !dbg !5134

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5134
  %sub443 = sub i64 %72, 1, !dbg !5134
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5134
  br label %cond.end444, !dbg !5134

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5134
  %sub446 = sub i32 %cond445, 12, !dbg !5135
  %add = add i32 %sub446, 1, !dbg !5136
  store i32 %add, i32* %retval, align 4, !dbg !5137
  br label %return, !dbg !5137

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5138
  %dec = add i64 %73, -1, !dbg !5138
  store i64 %dec, i64* %size.addr, align 8, !dbg !5138
  %74 = load i64, i64* %size.addr, align 8, !dbg !5139
  %shr = lshr i64 %74, 12, !dbg !5139
  store i64 %shr, i64* %size.addr, align 8, !dbg !5139
  %75 = load i64, i64* %size.addr, align 8, !dbg !5140
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5117
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5141
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5142
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5141, !srcloc !5143
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5141
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5144
  %add.i = add i32 %79, 1, !dbg !5145
  store i32 %add.i, i32* %retval, align 4, !dbg !5146
  br label %return, !dbg !5146

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5147
  ret i32 %80, !dbg !5147
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5148 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5109, metadata !DIExpression()), !dbg !5152
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5116, metadata !DIExpression()), !dbg !5154
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5155, metadata !DIExpression()), !dbg !5156
  %0 = load i64, i64* %n.addr, align 8, !dbg !5157
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5154
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5158
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5159
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5158, !srcloc !5143
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5158
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5160
  %add.i = add i32 %4, 1, !dbg !5161
  %sub = sub i32 %add.i, 1, !dbg !5162
  ret i32 %sub, !dbg !5163
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5164 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5176
  ret i8* %0, !dbg !5177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_readbytes(%struct.bcm3510_state* %state, i8 zeroext %reg, i8* %buf, i8 zeroext %len) #0 !dbg !5178 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.bcm3510_state*, align 8
  %reg.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.bcm3510_state* %state, %struct.bcm3510_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %state.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !5189, metadata !DIExpression()), !dbg !5191
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5192
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !5193
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5194
  %config = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %0, i32 0, i32 1, !dbg !5195
  %1 = load %struct.bcm3510_config*, %struct.bcm3510_config** %config, align 8, !dbg !5195
  %demod_address = getelementptr inbounds %struct.bcm3510_config, %struct.bcm3510_config* %1, i32 0, i32 0, !dbg !5196
  %2 = load i8, i8* %demod_address, align 8, !dbg !5196
  %conv = zext i8 %2 to i16, !dbg !5194
  store i16 %conv, i16* %addr, align 16, !dbg !5193
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !5193
  store i16 0, i16* %flags, align 2, !dbg !5193
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !5193
  store i16 1, i16* %len1, align 4, !dbg !5193
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !5193
  store i8* %reg.addr, i8** %buf2, align 8, !dbg !5193
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !5192
  %addr3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !5197
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5198
  %config4 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %3, i32 0, i32 1, !dbg !5199
  %4 = load %struct.bcm3510_config*, %struct.bcm3510_config** %config4, align 8, !dbg !5199
  %demod_address5 = getelementptr inbounds %struct.bcm3510_config, %struct.bcm3510_config* %4, i32 0, i32 0, !dbg !5200
  %5 = load i8, i8* %demod_address5, align 8, !dbg !5200
  %conv6 = zext i8 %5 to i16, !dbg !5198
  store i16 %conv6, i16* %addr3, align 16, !dbg !5197
  %flags7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !5197
  store i16 1, i16* %flags7, align 2, !dbg !5197
  %len8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !5197
  %6 = load i8, i8* %len.addr, align 1, !dbg !5201
  %conv9 = zext i8 %6 to i16, !dbg !5201
  store i16 %conv9, i16* %len8, align 4, !dbg !5197
  %buf10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !5197
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5202
  store i8* %7, i8** %buf10, align 8, !dbg !5197
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5203, metadata !DIExpression()), !dbg !5204
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5205
  %9 = load i8, i8* %len.addr, align 1, !dbg !5206
  %conv11 = zext i8 %9 to i64, !dbg !5206
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 %conv11, i1 false), !dbg !5207
  %10 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5208
  %i2c = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %10, i32 0, i32 0, !dbg !5210
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5210
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !5211
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %11, %struct.i2c_msg* %arraydecay, i32 2) #8, !dbg !5212
  store i32 %call, i32* %err, align 4, !dbg !5213
  %cmp = icmp ne i32 %call, 2, !dbg !5214
  br i1 %cmp, label %if.then, label %if.end19, !dbg !5215

if.then:                                          ; preds = %entry
  %12 = load i32, i32* @debug, align 4, !dbg !5216
  %and = and i32 1, %12, !dbg !5216
  %tobool = icmp ne i32 %and, 0, !dbg !5216
  br i1 %tobool, label %if.then13, label %if.end, !dbg !5219

if.then13:                                        ; preds = %if.then
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5216
  %config14 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %13, i32 0, i32 1, !dbg !5216
  %14 = load %struct.bcm3510_config*, %struct.bcm3510_config** %config14, align 8, !dbg !5216
  %demod_address15 = getelementptr inbounds %struct.bcm3510_config, %struct.bcm3510_config* %14, i32 0, i32 0, !dbg !5216
  %15 = load i8, i8* %demod_address15, align 8, !dbg !5216
  %conv16 = zext i8 %15 to i32, !dbg !5216
  %16 = load i8, i8* %reg.addr, align 1, !dbg !5216
  %conv17 = zext i8 %16 to i32, !dbg !5216
  %17 = load i32, i32* %err, align 4, !dbg !5216
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.bcm3510_readbytes, i64 0, i64 0), i32 %conv16, i32 %conv17, i32 %17) #9, !dbg !5216
  br label %if.end, !dbg !5216

if.end:                                           ; preds = %if.then13, %if.then
  store i32 -121, i32* %retval, align 4, !dbg !5220
  br label %return, !dbg !5220

if.end19:                                         ; preds = %entry
  %18 = load i32, i32* @debug, align 4, !dbg !5221
  %and20 = and i32 2, %18, !dbg !5221
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5221
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !5223

if.then22:                                        ; preds = %if.end19
  %19 = load i8, i8* %reg.addr, align 1, !dbg !5221
  %conv23 = zext i8 %19 to i32, !dbg !5221
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %conv23) #9, !dbg !5221
  br label %if.end25, !dbg !5221

if.end25:                                         ; preds = %if.then22, %if.end19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5224, metadata !DIExpression()), !dbg !5226
  store i32 0, i32* %i, align 4, !dbg !5227
  br label %for.cond, !dbg !5227

for.cond:                                         ; preds = %for.inc, %if.end25
  %20 = load i32, i32* %i, align 4, !dbg !5229
  %21 = load i8, i8* %len.addr, align 1, !dbg !5229
  %conv26 = zext i8 %21 to i32, !dbg !5229
  %cmp27 = icmp slt i32 %20, %conv26, !dbg !5229
  br i1 %cmp27, label %for.body, label %for.end, !dbg !5227

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* @debug, align 4, !dbg !5231
  %and29 = and i32 2, %22, !dbg !5231
  %tobool30 = icmp ne i32 %and29, 0, !dbg !5231
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !5229

if.then31:                                        ; preds = %for.body
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !5231
  %24 = load i32, i32* %i, align 4, !dbg !5231
  %idxprom = sext i32 %24 to i64, !dbg !5231
  %arrayidx = getelementptr i8, i8* %23, i64 %idxprom, !dbg !5231
  %25 = load i8, i8* %arrayidx, align 1, !dbg !5231
  %conv32 = zext i8 %25 to i32, !dbg !5231
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %conv32) #9, !dbg !5231
  br label %if.end34, !dbg !5231

if.end34:                                         ; preds = %if.then31, %for.body
  br label %for.inc, !dbg !5231

for.inc:                                          ; preds = %if.end34
  %26 = load i32, i32* %i, align 4, !dbg !5229
  %inc = add i32 %26, 1, !dbg !5229
  store i32 %inc, i32* %i, align 4, !dbg !5229
  br label %for.cond, !dbg !5229, !llvm.loop !5233

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* @debug, align 4, !dbg !5234
  %and35 = and i32 2, %27, !dbg !5234
  %tobool36 = icmp ne i32 %and35, 0, !dbg !5234
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !5236

if.then37:                                        ; preds = %for.end
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5234
  br label %if.end39, !dbg !5234

if.end39:                                         ; preds = %if.then37, %for.end
  store i32 0, i32* %retval, align 4, !dbg !5237
  br label %return, !dbg !5237

return:                                           ; preds = %if.end39, %if.end
  %28 = load i32, i32* %retval, align 4, !dbg !5238
  ret i32 %28, !dbg !5238
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_writeB(%struct.bcm3510_state* %state, i8 zeroext %reg, i8 %v.coerce) #0 !dbg !5239 {
entry:
  %v = alloca %union.bcm3510_register_value, align 1
  %state.addr = alloca %struct.bcm3510_state*, align 8
  %reg.addr = alloca i8, align 1
  %coerce.dive = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %v, i32 0, i32 0
  store i8 %v.coerce, i8* %coerce.dive, align 1
  store %struct.bcm3510_state* %state, %struct.bcm3510_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %state.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %v, metadata !5246, metadata !DIExpression()), !dbg !5247
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5248
  %1 = load i8, i8* %reg.addr, align 1, !dbg !5249
  %raw = bitcast %union.bcm3510_register_value* %v to i8*, !dbg !5250
  %call = call i32 @bcm3510_writebytes(%struct.bcm3510_state* %0, i8 zeroext %1, i8* %raw, i8 zeroext 1) #8, !dbg !5251
  ret i32 %call, !dbg !5252
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_writebytes(%struct.bcm3510_state* %state, i8 zeroext %reg, i8* %buf, i8 zeroext %len) #0 !dbg !5253 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.bcm3510_state*, align 8
  %reg.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i8, align 1
  %b = alloca [256 x i8], align 16
  %err = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %i = alloca i32, align 4
  store %struct.bcm3510_state* %state, %struct.bcm3510_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %state.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5256, metadata !DIExpression()), !dbg !5257
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5258, metadata !DIExpression()), !dbg !5259
  store i8 %len, i8* %len.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %len.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.declare(metadata [256 x i8]* %b, metadata !5262, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5267, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5269, metadata !DIExpression()), !dbg !5270
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5271
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5272
  %config = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %0, i32 0, i32 1, !dbg !5273
  %1 = load %struct.bcm3510_config*, %struct.bcm3510_config** %config, align 8, !dbg !5273
  %demod_address = getelementptr inbounds %struct.bcm3510_config, %struct.bcm3510_config* %1, i32 0, i32 0, !dbg !5274
  %2 = load i8, i8* %demod_address, align 8, !dbg !5274
  %conv = zext i8 %2 to i16, !dbg !5272
  store i16 %conv, i16* %addr, align 8, !dbg !5271
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5271
  store i16 0, i16* %flags, align 2, !dbg !5271
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5271
  %3 = load i8, i8* %len.addr, align 1, !dbg !5275
  %conv2 = zext i8 %3 to i32, !dbg !5275
  %add = add i32 %conv2, 1, !dbg !5276
  %conv3 = trunc i32 %add to i16, !dbg !5275
  store i16 %conv3, i16* %len1, align 4, !dbg !5271
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5271
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %b, i64 0, i64 0, !dbg !5277
  store i8* %arraydecay, i8** %buf4, align 8, !dbg !5271
  %4 = load i8, i8* %reg.addr, align 1, !dbg !5278
  %arrayidx = getelementptr [256 x i8], [256 x i8]* %b, i64 0, i64 0, !dbg !5279
  store i8 %4, i8* %arrayidx, align 16, !dbg !5280
  %arrayidx5 = getelementptr [256 x i8], [256 x i8]* %b, i64 0, i64 1, !dbg !5281
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5282
  %6 = load i8, i8* %len.addr, align 1, !dbg !5283
  %conv6 = zext i8 %6 to i64, !dbg !5283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx5, i8* align 1 %5, i64 %conv6, i1 false), !dbg !5284
  %7 = load i32, i32* @debug, align 4, !dbg !5285
  %and = and i32 2, %7, !dbg !5285
  %tobool = icmp ne i32 %and, 0, !dbg !5285
  br i1 %tobool, label %if.then, label %if.end, !dbg !5287

if.then:                                          ; preds = %entry
  %8 = load i8, i8* %reg.addr, align 1, !dbg !5285
  %conv7 = zext i8 %8 to i32, !dbg !5285
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %conv7) #9, !dbg !5285
  br label %if.end, !dbg !5285

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5288, metadata !DIExpression()), !dbg !5290
  store i32 0, i32* %i, align 4, !dbg !5291
  br label %for.cond, !dbg !5291

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !5293
  %10 = load i8, i8* %len.addr, align 1, !dbg !5293
  %conv8 = zext i8 %10 to i32, !dbg !5293
  %cmp = icmp slt i32 %9, %conv8, !dbg !5293
  br i1 %cmp, label %for.body, label %for.end, !dbg !5291

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* @debug, align 4, !dbg !5295
  %and10 = and i32 2, %11, !dbg !5295
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5295
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !5293

if.then12:                                        ; preds = %for.body
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !5295
  %13 = load i32, i32* %i, align 4, !dbg !5295
  %idxprom = sext i32 %13 to i64, !dbg !5295
  %arrayidx13 = getelementptr i8, i8* %12, i64 %idxprom, !dbg !5295
  %14 = load i8, i8* %arrayidx13, align 1, !dbg !5295
  %conv14 = zext i8 %14 to i32, !dbg !5295
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %conv14) #9, !dbg !5295
  br label %if.end16, !dbg !5295

if.end16:                                         ; preds = %if.then12, %for.body
  br label %for.inc, !dbg !5295

for.inc:                                          ; preds = %if.end16
  %15 = load i32, i32* %i, align 4, !dbg !5293
  %inc = add i32 %15, 1, !dbg !5293
  store i32 %inc, i32* %i, align 4, !dbg !5293
  br label %for.cond, !dbg !5293, !llvm.loop !5297

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* @debug, align 4, !dbg !5298
  %and17 = and i32 2, %16, !dbg !5298
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5298
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !5300

if.then19:                                        ; preds = %for.end
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5298
  br label %if.end21, !dbg !5298

if.end21:                                         ; preds = %if.then19, %for.end
  %17 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5301
  %i2c = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %17, i32 0, i32 0, !dbg !5303
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5303
  %call22 = call i32 @i2c_transfer(%struct.i2c_adapter* %18, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5304
  store i32 %call22, i32* %err, align 4, !dbg !5305
  %cmp23 = icmp ne i32 %call22, 1, !dbg !5306
  br i1 %cmp23, label %if.then25, label %if.end35, !dbg !5307

if.then25:                                        ; preds = %if.end21
  %19 = load i32, i32* @debug, align 4, !dbg !5308
  %and26 = and i32 1, %19, !dbg !5308
  %tobool27 = icmp ne i32 %and26, 0, !dbg !5308
  br i1 %tobool27, label %if.then28, label %if.end34, !dbg !5311

if.then28:                                        ; preds = %if.then25
  %20 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state.addr, align 8, !dbg !5308
  %config29 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %20, i32 0, i32 1, !dbg !5308
  %21 = load %struct.bcm3510_config*, %struct.bcm3510_config** %config29, align 8, !dbg !5308
  %demod_address30 = getelementptr inbounds %struct.bcm3510_config, %struct.bcm3510_config* %21, i32 0, i32 0, !dbg !5308
  %22 = load i8, i8* %demod_address30, align 8, !dbg !5308
  %conv31 = zext i8 %22 to i32, !dbg !5308
  %23 = load i8, i8* %reg.addr, align 1, !dbg !5308
  %conv32 = zext i8 %23 to i32, !dbg !5308
  %24 = load i32, i32* %err, align 4, !dbg !5308
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.bcm3510_writebytes, i64 0, i64 0), i32 %conv31, i32 %conv32, i32 %24) #9, !dbg !5308
  br label %if.end34, !dbg !5308

if.end34:                                         ; preds = %if.then28, %if.then25
  store i32 -121, i32* %retval, align 4, !dbg !5312
  br label %return, !dbg !5312

if.end35:                                         ; preds = %if.end21
  store i32 0, i32* %retval, align 4, !dbg !5313
  br label %return, !dbg !5313

return:                                           ; preds = %if.end35, %if.end34
  %25 = load i32, i32* %retval, align 4, !dbg !5314
  ret i32 %25, !dbg !5314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bcm3510_release(%struct.dvb_frontend* %fe) #0 !dbg !5315 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.bcm3510_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5316, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %state, metadata !5318, metadata !DIExpression()), !dbg !5319
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5320
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5321
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5321
  %2 = bitcast i8* %1 to %struct.bcm3510_state*, !dbg !5320
  store %struct.bcm3510_state* %2, %struct.bcm3510_state** %state, align 8, !dbg !5319
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %state, align 8, !dbg !5322
  %4 = bitcast %struct.bcm3510_state* %3 to i8*, !dbg !5322
  call void @kfree(i8* %4) #8, !dbg !5323
  ret void, !dbg !5324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_init(%struct.dvb_frontend* %fe) #0 !dbg !5325 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %st = alloca %struct.bcm3510_state*, align 8
  %j = alloca %union.bcm3510_register_value, align 1
  %c = alloca %struct.bcm3510_hab_cmd_set_agc, align 1
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st, metadata !5328, metadata !DIExpression()), !dbg !5329
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5330
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5331
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5331
  %2 = bitcast i8* %1 to %struct.bcm3510_state*, !dbg !5330
  store %struct.bcm3510_state* %2, %struct.bcm3510_state** %st, align 8, !dbg !5329
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %j, metadata !5332, metadata !DIExpression()), !dbg !5333
  call void @llvm.dbg.declare(metadata %struct.bcm3510_hab_cmd_set_agc* %c, metadata !5334, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5341, metadata !DIExpression()), !dbg !5342
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5343
  %call = call i32 @bcm3510_readB(%struct.bcm3510_state* %3, i8 zeroext -54, %union.bcm3510_register_value* %j) #8, !dbg !5345
  store i32 %call, i32* %ret, align 4, !dbg !5346
  %cmp = icmp slt i32 %call, 0, !dbg !5347
  br i1 %cmp, label %if.then, label %if.end, !dbg !5348

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !5349
  store i32 %4, i32* %retval, align 4, !dbg !5350
  br label %return, !dbg !5350

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5351
  %and = and i32 1, %5, !dbg !5351
  %tobool = icmp ne i32 %and, 0, !dbg !5351
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !5353

if.then1:                                         ; preds = %if.end
  %raw = bitcast %union.bcm3510_register_value* %j to i8*, !dbg !5351
  %6 = load i8, i8* %raw, align 1, !dbg !5351
  %conv = zext i8 %6 to i32, !dbg !5351
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %conv) #9, !dbg !5351
  br label %if.end3, !dbg !5351

if.end3:                                          ; preds = %if.then1, %if.end
  %JDEC_ca = bitcast %union.bcm3510_register_value* %j to %struct.anon.80*, !dbg !5354
  %7 = bitcast %struct.anon.80* %JDEC_ca to i8*, !dbg !5355
  %bf.load = load i8, i8* %7, align 1, !dbg !5355
  %bf.clear = and i8 %bf.load, 7, !dbg !5355
  %conv4 = zext i8 %bf.clear to i32, !dbg !5356
  switch i32 %conv4, label %sw.default [
    i32 7, label %sw.bb
    i32 4, label %sw.bb15
  ], !dbg !5357

sw.bb:                                            ; preds = %if.end3
  %8 = load i32, i32* @debug, align 4, !dbg !5358
  %and5 = and i32 1, %8, !dbg !5358
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5358
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5361

if.then7:                                         ; preds = %sw.bb
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !5358
  br label %if.end9, !dbg !5358

if.end9:                                          ; preds = %if.then7, %sw.bb
  %9 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5362
  %call10 = call i32 @bcm3510_init_cold(%struct.bcm3510_state* %9) #8, !dbg !5364
  store i32 %call10, i32* %ret, align 4, !dbg !5365
  %cmp11 = icmp slt i32 %call10, 0, !dbg !5366
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5367

if.then13:                                        ; preds = %if.end9
  %10 = load i32, i32* %ret, align 4, !dbg !5368
  store i32 %10, i32* %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

if.end14:                                         ; preds = %if.end9
  br label %sw.bb15, !dbg !5370

sw.bb15:                                          ; preds = %if.end3, %if.end14
  %11 = load i32, i32* @debug, align 4, !dbg !5371
  %and16 = and i32 1, %11, !dbg !5371
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5371
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !5373

if.then18:                                        ; preds = %sw.bb15
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !5371
  br label %if.end20, !dbg !5371

if.end20:                                         ; preds = %if.then18, %sw.bb15
  %12 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5374
  %call21 = call i32 @bcm3510_check_firmware_version(%struct.bcm3510_state* %12) #8, !dbg !5375
  br label %sw.epilog, !dbg !5376

sw.default:                                       ; preds = %if.end3
  store i32 -19, i32* %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

sw.epilog:                                        ; preds = %if.end20
  %13 = bitcast %struct.bcm3510_hab_cmd_set_agc* %c to i8*, !dbg !5378
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 1, i1 false), !dbg !5378
  %14 = bitcast %struct.bcm3510_hab_cmd_set_agc* %c to i8*, !dbg !5379
  %bf.load22 = load i8, i8* %14, align 1, !dbg !5380
  %bf.clear23 = and i8 %bf.load22, 127, !dbg !5380
  %bf.set = or i8 %bf.clear23, -128, !dbg !5380
  store i8 %bf.set, i8* %14, align 1, !dbg !5380
  %15 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5381
  %16 = bitcast %struct.bcm3510_hab_cmd_set_agc* %c to i8*, !dbg !5382
  %call24 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %15, i8 zeroext 42, i8 zeroext 18, i8* %16, i8 zeroext 1, i8* null, i8 zeroext 0) #8, !dbg !5383
  store i32 0, i32* %retval, align 4, !dbg !5384
  br label %return, !dbg !5384

return:                                           ; preds = %sw.epilog, %sw.default, %if.then13, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5385
  ret i32 %17, !dbg !5385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5386 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  ret i32 0, !dbg !5389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5390 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %st = alloca %struct.bcm3510_state*, align 8
  %cmd = alloca %struct.bcm3510_hab_cmd_ext_acquire, align 1
  %bert = alloca %struct.bcm3510_hab_cmd_bert_control, align 1
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5391, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5393, metadata !DIExpression()), !dbg !5394
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5395
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5396
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5394
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st, metadata !5397, metadata !DIExpression()), !dbg !5398
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5399
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5400
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5400
  %3 = bitcast i8* %2 to %struct.bcm3510_state*, !dbg !5399
  store %struct.bcm3510_state* %3, %struct.bcm3510_state** %st, align 8, !dbg !5398
  call void @llvm.dbg.declare(metadata %struct.bcm3510_hab_cmd_ext_acquire* %cmd, metadata !5401, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.declare(metadata %struct.bcm3510_hab_cmd_bert_control* %bert, metadata !5426, metadata !DIExpression()), !dbg !5431
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5432, metadata !DIExpression()), !dbg !5433
  %4 = bitcast %struct.bcm3510_hab_cmd_ext_acquire* %cmd to i8*, !dbg !5434
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 0, i64 8, i1 false), !dbg !5434
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5435
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 1, !dbg !5436
  %6 = load i32, i32* %modulation, align 4, !dbg !5436
  switch i32 %6, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb8
    i32 7, label %sw.bb21
    i32 8, label %sw.bb32
  ], !dbg !5437

sw.bb:                                            ; preds = %entry
  %ACQUIRE0 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 0, !dbg !5438
  %7 = bitcast %struct.anon.85* %ACQUIRE0 to i8*, !dbg !5440
  %bf.load = load i8, i8* %7, align 1, !dbg !5441
  %bf.clear = and i8 %bf.load, -16, !dbg !5441
  %bf.set = or i8 %bf.clear, 1, !dbg !5441
  store i8 %bf.set, i8* %7, align 1, !dbg !5441
  %ACQUIRE1 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 1, !dbg !5442
  %8 = bitcast %struct.anon.86* %ACQUIRE1 to i8*, !dbg !5443
  %bf.load1 = load i8, i8* %8, align 1, !dbg !5444
  %bf.clear2 = and i8 %bf.load1, -113, !dbg !5444
  %bf.set3 = or i8 %bf.clear2, 16, !dbg !5444
  store i8 %bf.set3, i8* %8, align 1, !dbg !5444
  %ACQUIRE14 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 1, !dbg !5445
  %9 = bitcast %struct.anon.86* %ACQUIRE14 to i8*, !dbg !5446
  %bf.load5 = load i8, i8* %9, align 1, !dbg !5447
  %bf.clear6 = and i8 %bf.load5, -8, !dbg !5447
  %bf.set7 = or i8 %bf.clear6, 1, !dbg !5447
  store i8 %bf.set7, i8* %9, align 1, !dbg !5447
  br label %sw.epilog, !dbg !5448

sw.bb8:                                           ; preds = %entry
  %ACQUIRE09 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 0, !dbg !5449
  %10 = bitcast %struct.anon.85* %ACQUIRE09 to i8*, !dbg !5450
  %bf.load10 = load i8, i8* %10, align 1, !dbg !5451
  %bf.clear11 = and i8 %bf.load10, -16, !dbg !5451
  %bf.set12 = or i8 %bf.clear11, 2, !dbg !5451
  store i8 %bf.set12, i8* %10, align 1, !dbg !5451
  %ACQUIRE113 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 1, !dbg !5452
  %11 = bitcast %struct.anon.86* %ACQUIRE113 to i8*, !dbg !5453
  %bf.load14 = load i8, i8* %11, align 1, !dbg !5454
  %bf.clear15 = and i8 %bf.load14, -113, !dbg !5454
  %bf.set16 = or i8 %bf.clear15, 32, !dbg !5454
  store i8 %bf.set16, i8* %11, align 1, !dbg !5454
  %ACQUIRE117 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 1, !dbg !5455
  %12 = bitcast %struct.anon.86* %ACQUIRE117 to i8*, !dbg !5456
  %bf.load18 = load i8, i8* %12, align 1, !dbg !5457
  %bf.clear19 = and i8 %bf.load18, -8, !dbg !5457
  %bf.set20 = or i8 %bf.clear19, 1, !dbg !5457
  store i8 %bf.set20, i8* %12, align 1, !dbg !5457
  br label %sw.epilog, !dbg !5458

sw.bb21:                                          ; preds = %entry
  %ACQUIRE022 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 0, !dbg !5459
  %13 = bitcast %struct.anon.85* %ACQUIRE022 to i8*, !dbg !5460
  %bf.load23 = load i8, i8* %13, align 1, !dbg !5461
  %bf.clear24 = and i8 %bf.load23, -16, !dbg !5461
  %bf.set25 = or i8 %bf.clear24, 8, !dbg !5461
  store i8 %bf.set25, i8* %13, align 1, !dbg !5461
  %ACQUIRE126 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 1, !dbg !5462
  %14 = bitcast %struct.anon.86* %ACQUIRE126 to i8*, !dbg !5463
  %bf.load27 = load i8, i8* %14, align 1, !dbg !5464
  %bf.clear28 = and i8 %bf.load27, -113, !dbg !5464
  store i8 %bf.clear28, i8* %14, align 1, !dbg !5464
  %ACQUIRE129 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 1, !dbg !5465
  %15 = bitcast %struct.anon.86* %ACQUIRE129 to i8*, !dbg !5466
  %bf.load30 = load i8, i8* %15, align 1, !dbg !5467
  %bf.clear31 = and i8 %bf.load30, -8, !dbg !5467
  store i8 %bf.clear31, i8* %15, align 1, !dbg !5467
  br label %sw.epilog, !dbg !5468

sw.bb32:                                          ; preds = %entry
  %ACQUIRE033 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 0, !dbg !5469
  %16 = bitcast %struct.anon.85* %ACQUIRE033 to i8*, !dbg !5470
  %bf.load34 = load i8, i8* %16, align 1, !dbg !5471
  %bf.clear35 = and i8 %bf.load34, -16, !dbg !5471
  %bf.set36 = or i8 %bf.clear35, 9, !dbg !5471
  store i8 %bf.set36, i8* %16, align 1, !dbg !5471
  %ACQUIRE137 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 1, !dbg !5472
  %17 = bitcast %struct.anon.86* %ACQUIRE137 to i8*, !dbg !5473
  %bf.load38 = load i8, i8* %17, align 1, !dbg !5474
  %bf.clear39 = and i8 %bf.load38, -113, !dbg !5474
  store i8 %bf.clear39, i8* %17, align 1, !dbg !5474
  %ACQUIRE140 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 1, !dbg !5475
  %18 = bitcast %struct.anon.86* %ACQUIRE140 to i8*, !dbg !5476
  %bf.load41 = load i8, i8* %18, align 1, !dbg !5477
  %bf.clear42 = and i8 %bf.load41, -8, !dbg !5477
  store i8 %bf.clear42, i8* %18, align 1, !dbg !5477
  br label %sw.epilog, !dbg !5478

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5479
  br label %return, !dbg !5479

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb21, %sw.bb8, %sw.bb
  %ACQUIRE043 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 0, !dbg !5480
  %19 = bitcast %struct.anon.85* %ACQUIRE043 to i8*, !dbg !5481
  %bf.load44 = load i8, i8* %19, align 1, !dbg !5482
  %bf.clear45 = and i8 %bf.load44, 127, !dbg !5482
  store i8 %bf.clear45, i8* %19, align 1, !dbg !5482
  %ACQUIRE046 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 0, !dbg !5483
  %20 = bitcast %struct.anon.85* %ACQUIRE046 to i8*, !dbg !5484
  %bf.load47 = load i8, i8* %20, align 1, !dbg !5485
  %bf.clear48 = and i8 %bf.load47, -65, !dbg !5485
  %bf.set49 = or i8 %bf.clear48, 64, !dbg !5485
  store i8 %bf.set49, i8* %20, align 1, !dbg !5485
  %ACQUIRE050 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 0, !dbg !5486
  %21 = bitcast %struct.anon.85* %ACQUIRE050 to i8*, !dbg !5487
  %bf.load51 = load i8, i8* %21, align 1, !dbg !5488
  %bf.clear52 = and i8 %bf.load51, -33, !dbg !5488
  %bf.set53 = or i8 %bf.clear52, 32, !dbg !5488
  store i8 %bf.set53, i8* %21, align 1, !dbg !5488
  %ACQUIRE054 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, %struct.bcm3510_hab_cmd_ext_acquire* %cmd, i32 0, i32 0, !dbg !5489
  %22 = bitcast %struct.anon.85* %ACQUIRE054 to i8*, !dbg !5490
  %bf.load55 = load i8, i8* %22, align 1, !dbg !5491
  %bf.clear56 = and i8 %bf.load55, -17, !dbg !5491
  store i8 %bf.clear56, i8* %22, align 1, !dbg !5491
  %23 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5492
  %24 = bitcast %struct.bcm3510_hab_cmd_ext_acquire* %cmd to i8*, !dbg !5493
  %call = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %23, i8 zeroext 56, i8 zeroext 10, i8* %24, i8 zeroext 8, i8* null, i8 zeroext 0) #8, !dbg !5494
  %25 = bitcast %struct.bcm3510_hab_cmd_bert_control* %bert to i8*, !dbg !5495
  %bf.load57 = load i8, i8* %25, align 1, !dbg !5496
  %bf.clear58 = and i8 %bf.load57, -2, !dbg !5496
  store i8 %bf.clear58, i8* %25, align 1, !dbg !5496
  %26 = bitcast %struct.bcm3510_hab_cmd_bert_control* %bert to i8*, !dbg !5497
  %bf.load59 = load i8, i8* %26, align 1, !dbg !5498
  %bf.clear60 = and i8 %bf.load59, 1, !dbg !5498
  store i8 %bf.clear60, i8* %26, align 1, !dbg !5498
  %27 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5499
  %28 = bitcast %struct.bcm3510_hab_cmd_bert_control* %bert to i8*, !dbg !5500
  %call61 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %27, i8 zeroext 18, i8 zeroext 14, i8* %28, i8 zeroext 1, i8* null, i8 zeroext 0) #8, !dbg !5501
  %29 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5502
  %30 = bitcast %struct.bcm3510_hab_cmd_bert_control* %bert to i8*, !dbg !5503
  %call62 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %29, i8 zeroext 18, i8 zeroext -6, i8* %30, i8 zeroext 1, i8* null, i8 zeroext 0) #8, !dbg !5504
  %31 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5505
  %call63 = call i32 @bcm3510_bert_reset(%struct.bcm3510_state* %31) #8, !dbg !5506
  %32 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5507
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5508
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 0, !dbg !5509
  %34 = load i32, i32* %frequency, align 4, !dbg !5509
  %call64 = call i32 @bcm3510_set_freq(%struct.bcm3510_state* %32, i32 %34) #8, !dbg !5510
  store i32 %call64, i32* %ret, align 4, !dbg !5511
  %35 = load i32, i32* %ret, align 4, !dbg !5512
  %cmp = icmp slt i32 %35, 0, !dbg !5514
  br i1 %cmp, label %if.then, label %if.end, !dbg !5515

if.then:                                          ; preds = %sw.epilog
  %36 = load i32, i32* %ret, align 4, !dbg !5516
  store i32 %36, i32* %retval, align 4, !dbg !5517
  br label %return, !dbg !5517

if.end:                                           ; preds = %sw.epilog
  %37 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5518
  %status1 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %37, i32 0, i32 7, !dbg !5519
  %38 = bitcast %struct.bcm3510_hab_cmd_status1* %status1 to i8*, !dbg !5520
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 38, i1 false), !dbg !5520
  %39 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5521
  %status2 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %39, i32 0, i32 8, !dbg !5522
  %40 = bitcast %struct.bcm3510_hab_cmd_status2* %status2 to i8*, !dbg !5523
  call void @llvm.memset.p0i8.i64(i8* align 2 %40, i8 0, i64 22, i1 false), !dbg !5523
  %41 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5524
  %status_check_interval = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %41, i32 0, i32 6, !dbg !5525
  store i64 500, i64* %status_check_interval, align 8, !dbg !5526
  call void @msleep(i32 200) #8, !dbg !5527
  store i32 0, i32* %retval, align 4, !dbg !5528
  br label %return, !dbg !5528

return:                                           ; preds = %if.end, %if.then, %sw.default
  %42 = load i32, i32* %retval, align 4, !dbg !5529
  ret i32 %42, !dbg !5529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %s) #0 !dbg !5530 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %s.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  store %struct.dvb_frontend_tune_settings* %s, %struct.dvb_frontend_tune_settings** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %s.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !5535
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5536
  store i32 1000, i32* %min_delay_ms, align 4, !dbg !5537
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !5538
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5539
  store i32 0, i32* %step_size, align 4, !dbg !5540
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %s.addr, align 8, !dbg !5541
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5542
  store i32 0, i32* %max_drift, align 4, !dbg !5543
  ret i32 0, !dbg !5544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5545 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %st = alloca %struct.bcm3510_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st, metadata !5550, metadata !DIExpression()), !dbg !5551
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5552
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5553
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5553
  %2 = bitcast i8* %1 to %struct.bcm3510_state*, !dbg !5552
  store %struct.bcm3510_state* %2, %struct.bcm3510_state** %st, align 8, !dbg !5551
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5554
  %call = call i32 @bcm3510_refresh_state(%struct.bcm3510_state* %3) #8, !dbg !5555
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5556
  store i32 0, i32* %4, align 4, !dbg !5557
  %5 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5558
  %status1 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %5, i32 0, i32 7, !dbg !5560
  %STATUS1 = getelementptr inbounds %struct.bcm3510_hab_cmd_status1, %struct.bcm3510_hab_cmd_status1* %status1, i32 0, i32 1, !dbg !5561
  %6 = bitcast %struct.anon.68* %STATUS1 to i8*, !dbg !5562
  %bf.load = load i8, i8* %6, align 1, !dbg !5562
  %bf.clear = and i8 %bf.load, 1, !dbg !5562
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5558
  br i1 %tobool, label %if.then, label %if.end, !dbg !5563

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %status.addr, align 8, !dbg !5564
  %8 = load i32, i32* %7, align 4, !dbg !5565
  %or = or i32 %8, 24, !dbg !5565
  store i32 %or, i32* %7, align 4, !dbg !5565
  br label %if.end, !dbg !5566

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5567
  %status11 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %9, i32 0, i32 7, !dbg !5569
  %STATUS12 = getelementptr inbounds %struct.bcm3510_hab_cmd_status1, %struct.bcm3510_hab_cmd_status1* %status11, i32 0, i32 1, !dbg !5570
  %10 = bitcast %struct.anon.68* %STATUS12 to i8*, !dbg !5571
  %bf.load3 = load i8, i8* %10, align 1, !dbg !5571
  %bf.lshr = lshr i8 %bf.load3, 1, !dbg !5571
  %bf.clear4 = and i8 %bf.lshr, 1, !dbg !5571
  %tobool5 = icmp ne i8 %bf.clear4, 0, !dbg !5567
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5572

if.then6:                                         ; preds = %if.end
  %11 = load i32*, i32** %status.addr, align 8, !dbg !5573
  %12 = load i32, i32* %11, align 4, !dbg !5574
  %or7 = or i32 %12, 4, !dbg !5574
  store i32 %or7, i32* %11, align 4, !dbg !5574
  br label %if.end8, !dbg !5575

if.end8:                                          ; preds = %if.then6, %if.end
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5576
  %status19 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %13, i32 0, i32 7, !dbg !5578
  %STATUS110 = getelementptr inbounds %struct.bcm3510_hab_cmd_status1, %struct.bcm3510_hab_cmd_status1* %status19, i32 0, i32 1, !dbg !5579
  %14 = bitcast %struct.anon.68* %STATUS110 to i8*, !dbg !5580
  %bf.load11 = load i8, i8* %14, align 1, !dbg !5580
  %bf.lshr12 = lshr i8 %bf.load11, 2, !dbg !5580
  %bf.clear13 = and i8 %bf.lshr12, 1, !dbg !5580
  %tobool14 = icmp ne i8 %bf.clear13, 0, !dbg !5576
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !5581

if.then15:                                        ; preds = %if.end8
  %15 = load i32*, i32** %status.addr, align 8, !dbg !5582
  %16 = load i32, i32* %15, align 4, !dbg !5583
  %or16 = or i32 %16, 3, !dbg !5583
  store i32 %or16, i32* %15, align 4, !dbg !5583
  br label %if.end17, !dbg !5584

if.end17:                                         ; preds = %if.then15, %if.end8
  %17 = load i32*, i32** %status.addr, align 8, !dbg !5585
  %18 = load i32, i32* %17, align 4, !dbg !5587
  %and = and i32 %18, 16, !dbg !5588
  %tobool18 = icmp ne i32 %and, 0, !dbg !5588
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !5589

if.then19:                                        ; preds = %if.end17
  %19 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5590
  %status_check_interval = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %19, i32 0, i32 6, !dbg !5591
  store i64 1500, i64* %status_check_interval, align 8, !dbg !5592
  br label %if.end21, !dbg !5590

if.else:                                          ; preds = %if.end17
  %20 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5593
  %status_check_interval20 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %20, i32 0, i32 6, !dbg !5594
  store i64 500, i64* %status_check_interval20, align 8, !dbg !5595
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %21 = load i32, i32* @debug, align 4, !dbg !5596
  %and22 = and i32 1, %21, !dbg !5596
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5596
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !5598

if.then24:                                        ; preds = %if.end21
  %22 = load i32*, i32** %status.addr, align 8, !dbg !5596
  %23 = load i32, i32* %22, align 4, !dbg !5596
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0), i32 %23) #9, !dbg !5596
  br label %if.end26, !dbg !5596

if.end26:                                         ; preds = %if.then24, %if.end21
  ret i32 0, !dbg !5599
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5600 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %st = alloca %struct.bcm3510_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5601, metadata !DIExpression()), !dbg !5602
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5603, metadata !DIExpression()), !dbg !5604
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st, metadata !5605, metadata !DIExpression()), !dbg !5606
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5607
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5608
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5608
  %2 = bitcast i8* %1 to %struct.bcm3510_state*, !dbg !5607
  store %struct.bcm3510_state* %2, %struct.bcm3510_state** %st, align 8, !dbg !5606
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5609
  %call = call i32 @bcm3510_refresh_state(%struct.bcm3510_state* %3) #8, !dbg !5610
  %4 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5611
  %status2 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %4, i32 0, i32 8, !dbg !5612
  %LDBER0 = getelementptr inbounds %struct.bcm3510_hab_cmd_status2, %struct.bcm3510_hab_cmd_status2* %status2, i32 0, i32 14, !dbg !5613
  %5 = load i8, i8* %LDBER0, align 2, !dbg !5613
  %conv = zext i8 %5 to i32, !dbg !5611
  %shl = shl i32 %conv, 16, !dbg !5614
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5615
  %status21 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %6, i32 0, i32 8, !dbg !5616
  %LDBER1 = getelementptr inbounds %struct.bcm3510_hab_cmd_status2, %struct.bcm3510_hab_cmd_status2* %status21, i32 0, i32 15, !dbg !5617
  %7 = load i8, i8* %LDBER1, align 1, !dbg !5617
  %conv2 = zext i8 %7 to i32, !dbg !5615
  %shl3 = shl i32 %conv2, 8, !dbg !5618
  %or = or i32 %shl, %shl3, !dbg !5619
  %8 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5620
  %status24 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %8, i32 0, i32 8, !dbg !5621
  %LDBER2 = getelementptr inbounds %struct.bcm3510_hab_cmd_status2, %struct.bcm3510_hab_cmd_status2* %status24, i32 0, i32 16, !dbg !5622
  %9 = load i8, i8* %LDBER2, align 2, !dbg !5622
  %conv5 = zext i8 %9 to i32, !dbg !5620
  %or6 = or i32 %or, %conv5, !dbg !5623
  %10 = load i32*, i32** %ber.addr, align 8, !dbg !5624
  store i32 %or6, i32* %10, align 4, !dbg !5625
  ret i32 0, !dbg !5626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5627 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %st = alloca %struct.bcm3510_state*, align 8
  %t = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5630, metadata !DIExpression()), !dbg !5631
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st, metadata !5632, metadata !DIExpression()), !dbg !5633
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5634
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5635
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5635
  %2 = bitcast i8* %1 to %struct.bcm3510_state*, !dbg !5634
  store %struct.bcm3510_state* %2, %struct.bcm3510_state** %st, align 8, !dbg !5633
  call void @llvm.dbg.declare(metadata i32* %t, metadata !5636, metadata !DIExpression()), !dbg !5637
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5638
  %call = call i32 @bcm3510_refresh_state(%struct.bcm3510_state* %3) #8, !dbg !5639
  %4 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5640
  %status2 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %4, i32 0, i32 8, !dbg !5641
  %SIGNAL = getelementptr inbounds %struct.bcm3510_hab_cmd_status2, %struct.bcm3510_hab_cmd_status2* %status2, i32 0, i32 21, !dbg !5642
  %5 = load i8, i8* %SIGNAL, align 1, !dbg !5642
  %conv = zext i8 %5 to i32, !dbg !5640
  store i32 %conv, i32* %t, align 4, !dbg !5643
  %6 = load i32, i32* %t, align 4, !dbg !5644
  %cmp = icmp sgt i32 %6, 190, !dbg !5646
  br i1 %cmp, label %if.then, label %if.end, !dbg !5647

if.then:                                          ; preds = %entry
  store i32 190, i32* %t, align 4, !dbg !5648
  br label %if.end, !dbg !5649

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %t, align 4, !dbg !5650
  %cmp2 = icmp slt i32 %7, 90, !dbg !5652
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !5653

if.then4:                                         ; preds = %if.end
  store i32 90, i32* %t, align 4, !dbg !5654
  br label %if.end5, !dbg !5655

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load i32, i32* %t, align 4, !dbg !5656
  %sub = sub i32 %8, 90, !dbg !5656
  store i32 %sub, i32* %t, align 4, !dbg !5656
  %9 = load i32, i32* %t, align 4, !dbg !5657
  %mul = mul i32 %9, 255, !dbg !5658
  %div = sdiv i32 %mul, 100, !dbg !5659
  store i32 %div, i32* %t, align 4, !dbg !5660
  %10 = load i32, i32* %t, align 4, !dbg !5661
  %shl = shl i32 %10, 8, !dbg !5662
  %11 = load i32, i32* %t, align 4, !dbg !5663
  %or = or i32 %shl, %11, !dbg !5664
  %conv6 = trunc i32 %or to i16, !dbg !5665
  %12 = load i16*, i16** %strength.addr, align 8, !dbg !5666
  store i16 %conv6, i16* %12, align 2, !dbg !5667
  ret i32 0, !dbg !5668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5669 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %st = alloca %struct.bcm3510_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5670, metadata !DIExpression()), !dbg !5671
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5672, metadata !DIExpression()), !dbg !5673
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st, metadata !5674, metadata !DIExpression()), !dbg !5675
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5676
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5677
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5677
  %2 = bitcast i8* %1 to %struct.bcm3510_state*, !dbg !5676
  store %struct.bcm3510_state* %2, %struct.bcm3510_state** %st, align 8, !dbg !5675
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5678
  %call = call i32 @bcm3510_refresh_state(%struct.bcm3510_state* %3) #8, !dbg !5679
  %4 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5680
  %status1 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %4, i32 0, i32 7, !dbg !5681
  %SNR_EST0 = getelementptr inbounds %struct.bcm3510_hab_cmd_status1, %struct.bcm3510_hab_cmd_status1* %status1, i32 0, i32 4, !dbg !5682
  %5 = load i8, i8* %SNR_EST0, align 4, !dbg !5682
  %conv = zext i8 %5 to i32, !dbg !5680
  %mul = mul i32 %conv, 1000, !dbg !5683
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5684
  %status11 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %6, i32 0, i32 7, !dbg !5685
  %SNR_EST1 = getelementptr inbounds %struct.bcm3510_hab_cmd_status1, %struct.bcm3510_hab_cmd_status1* %status11, i32 0, i32 5, !dbg !5686
  %7 = load i8, i8* %SNR_EST1, align 1, !dbg !5686
  %conv2 = zext i8 %7 to i32, !dbg !5684
  %mul3 = mul i32 %conv2, 1000, !dbg !5687
  %shr = ashr i32 %mul3, 8, !dbg !5688
  %add = add i32 %mul, %shr, !dbg !5689
  %conv4 = trunc i32 %add to i16, !dbg !5680
  %8 = load i16*, i16** %snr.addr, align 8, !dbg !5690
  store i16 %conv4, i16* %8, align 2, !dbg !5691
  ret i32 0, !dbg !5692
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_read_unc(%struct.dvb_frontend* %fe, i32* %unc) #0 !dbg !5693 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %unc.addr = alloca i32*, align 8
  %st = alloca %struct.bcm3510_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  store i32* %unc, i32** %unc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %unc.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st, metadata !5698, metadata !DIExpression()), !dbg !5699
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5700
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5701
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5701
  %2 = bitcast i8* %1 to %struct.bcm3510_state*, !dbg !5700
  store %struct.bcm3510_state* %2, %struct.bcm3510_state** %st, align 8, !dbg !5699
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5702
  %call = call i32 @bcm3510_refresh_state(%struct.bcm3510_state* %3) #8, !dbg !5703
  %4 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5704
  %status2 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %4, i32 0, i32 8, !dbg !5705
  %LDUERC0 = getelementptr inbounds %struct.bcm3510_hab_cmd_status2, %struct.bcm3510_hab_cmd_status2* %status2, i32 0, i32 10, !dbg !5706
  %5 = load i8, i8* %LDUERC0, align 2, !dbg !5706
  %conv = zext i8 %5 to i32, !dbg !5704
  %shl = shl i32 %conv, 8, !dbg !5707
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5708
  %status21 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %6, i32 0, i32 8, !dbg !5709
  %LDUERC1 = getelementptr inbounds %struct.bcm3510_hab_cmd_status2, %struct.bcm3510_hab_cmd_status2* %status21, i32 0, i32 11, !dbg !5710
  %7 = load i8, i8* %LDUERC1, align 1, !dbg !5710
  %conv2 = zext i8 %7 to i32, !dbg !5708
  %or = or i32 %shl, %conv2, !dbg !5711
  %8 = load i32*, i32** %unc.addr, align 8, !dbg !5712
  store i32 %or, i32* %8, align 4, !dbg !5713
  ret i32 0, !dbg !5714
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_init_cold(%struct.bcm3510_state* %st) #0 !dbg !5715 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %ret = alloca i32, align 4
  %v = alloca %union.bcm3510_register_value, align 1
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !5716, metadata !DIExpression()), !dbg !5717
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5718, metadata !DIExpression()), !dbg !5719
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %v, metadata !5720, metadata !DIExpression()), !dbg !5721
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5722
  %call = call i32 @bcm3510_readB(%struct.bcm3510_state* %0, i8 zeroext -94, %union.bcm3510_register_value* %v) #8, !dbg !5724
  store i32 %call, i32* %ret, align 4, !dbg !5725
  %cmp = icmp slt i32 %call, 0, !dbg !5726
  br i1 %cmp, label %if.then, label %if.end, !dbg !5727

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4, !dbg !5728
  store i32 %1, i32* %retval, align 4, !dbg !5729
  br label %return, !dbg !5729

if.end:                                           ; preds = %entry
  %APSTAT1_a2 = bitcast %union.bcm3510_register_value* %v to %struct.anon.76*, !dbg !5730
  %2 = bitcast %struct.anon.76* %APSTAT1_a2 to i8*, !dbg !5732
  %bf.load = load i8, i8* %2, align 1, !dbg !5732
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !5732
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5732
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !5733
  br i1 %tobool, label %if.then1, label %if.end6, !dbg !5734

if.then1:                                         ; preds = %if.end
  %3 = load i32, i32* @debug, align 4, !dbg !5735
  %and = and i32 1, %3, !dbg !5735
  %tobool2 = icmp ne i32 %and, 0, !dbg !5735
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5738

if.then3:                                         ; preds = %if.then1
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !5735
  br label %if.end5, !dbg !5735

if.end5:                                          ; preds = %if.then3, %if.then1
  store i32 0, i32* %retval, align 4, !dbg !5739
  br label %return, !dbg !5739

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* @debug, align 4, !dbg !5740
  %and7 = and i32 1, %4, !dbg !5740
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5740
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5742

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !5740
  br label %if.end11, !dbg !5740

if.end11:                                         ; preds = %if.then9, %if.end6
  %5 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5743
  %call12 = call i32 @bcm3510_reset(%struct.bcm3510_state* %5) #8, !dbg !5745
  store i32 %call12, i32* %ret, align 4, !dbg !5746
  %cmp13 = icmp slt i32 %call12, 0, !dbg !5747
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !5748

if.then14:                                        ; preds = %if.end11
  %6 = load i32, i32* %ret, align 4, !dbg !5749
  store i32 %6, i32* %retval, align 4, !dbg !5750
  br label %return, !dbg !5750

if.end15:                                         ; preds = %if.end11
  %7 = load i32, i32* @debug, align 4, !dbg !5751
  %and16 = and i32 1, %7, !dbg !5751
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5751
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !5753

if.then18:                                        ; preds = %if.end15
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !5751
  br label %if.end20, !dbg !5751

if.end20:                                         ; preds = %if.then18, %if.end15
  %TSTCTL_2e = bitcast %union.bcm3510_register_value* %v to %struct.anon.73*, !dbg !5754
  %8 = bitcast %struct.anon.73* %TSTCTL_2e to i8*, !dbg !5755
  store i8 0, i8* %8, align 1, !dbg !5756
  %9 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5757
  %coerce.dive = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %v, i32 0, i32 0, !dbg !5759
  %10 = load i8, i8* %coerce.dive, align 1, !dbg !5759
  %call21 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %9, i8 zeroext 46, i8 %10) #8, !dbg !5759
  store i32 %call21, i32* %ret, align 4, !dbg !5760
  %cmp22 = icmp slt i32 %call21, 0, !dbg !5761
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5762

if.then23:                                        ; preds = %if.end20
  %11 = load i32, i32* %ret, align 4, !dbg !5763
  store i32 %11, i32* %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

if.end24:                                         ; preds = %if.end20
  %12 = load i32, i32* @debug, align 4, !dbg !5765
  %and25 = and i32 1, %12, !dbg !5765
  %tobool26 = icmp ne i32 %and25, 0, !dbg !5765
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !5767

if.then27:                                        ; preds = %if.end24
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !5765
  br label %if.end29, !dbg !5765

if.end29:                                         ; preds = %if.then27, %if.end24
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5768
  %frontend = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %13, i32 0, i32 2, !dbg !5770
  %call30 = call i32 @bcm3510_download_firmware(%struct.dvb_frontend* %frontend) #8, !dbg !5771
  store i32 %call30, i32* %ret, align 4, !dbg !5772
  %cmp31 = icmp slt i32 %call30, 0, !dbg !5773
  br i1 %cmp31, label %if.then34, label %lor.lhs.false, !dbg !5774

lor.lhs.false:                                    ; preds = %if.end29
  %14 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5775
  %call32 = call i32 @bcm3510_clear_reset(%struct.bcm3510_state* %14) #8, !dbg !5776
  store i32 %call32, i32* %ret, align 4, !dbg !5777
  %cmp33 = icmp slt i32 %call32, 0, !dbg !5778
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5779

if.then34:                                        ; preds = %lor.lhs.false, %if.end29
  %15 = load i32, i32* %ret, align 4, !dbg !5780
  store i32 %15, i32* %retval, align 4, !dbg !5781
  br label %return, !dbg !5781

if.end35:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5782
  br label %return, !dbg !5782

return:                                           ; preds = %if.end35, %if.then34, %if.then23, %if.then14, %if.end5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !5783
  ret i32 %16, !dbg !5783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_check_firmware_version(%struct.bcm3510_state* %st) #0 !dbg !5784 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %ver = alloca %struct.bcm3510_hab_cmd_get_version_info, align 1
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !5785, metadata !DIExpression()), !dbg !5786
  call void @llvm.dbg.declare(metadata %struct.bcm3510_hab_cmd_get_version_info* %ver, metadata !5787, metadata !DIExpression()), !dbg !5794
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5795
  %1 = bitcast %struct.bcm3510_hab_cmd_get_version_info* %ver to i8*, !dbg !5796
  %call = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %0, i8 zeroext 61, i8 zeroext 21, i8* null, i8 zeroext 0, i8* %1, i8 zeroext 4) #8, !dbg !5797
  %2 = load i32, i32* @debug, align 4, !dbg !5798
  %and = and i32 1, %2, !dbg !5798
  %tobool = icmp ne i32 %and, 0, !dbg !5798
  br i1 %tobool, label %if.then, label %if.end, !dbg !5800

if.then:                                          ; preds = %entry
  %microcode_version = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %ver, i32 0, i32 0, !dbg !5798
  %3 = load i8, i8* %microcode_version, align 1, !dbg !5798
  %conv = zext i8 %3 to i32, !dbg !5798
  %script_version = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %ver, i32 0, i32 1, !dbg !5798
  %4 = load i8, i8* %script_version, align 1, !dbg !5798
  %conv1 = zext i8 %4 to i32, !dbg !5798
  %config_version = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %ver, i32 0, i32 2, !dbg !5798
  %5 = load i8, i8* %config_version, align 1, !dbg !5798
  %conv2 = zext i8 %5 to i32, !dbg !5798
  %demod_version = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %ver, i32 0, i32 3, !dbg !5798
  %6 = load i8, i8* %demod_version, align 1, !dbg !5798
  %conv3 = zext i8 %6 to i32, !dbg !5798
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i32 %conv, i32 %conv1, i32 %conv2, i32 %conv3) #9, !dbg !5798
  br label %if.end, !dbg !5798

if.end:                                           ; preds = %if.then, %entry
  %script_version5 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %ver, i32 0, i32 1, !dbg !5801
  %7 = load i8, i8* %script_version5, align 1, !dbg !5801
  %conv6 = zext i8 %7 to i32, !dbg !5803
  %cmp = icmp eq i32 %conv6, 6, !dbg !5804
  br i1 %cmp, label %land.lhs.true, label %if.end18, !dbg !5805

land.lhs.true:                                    ; preds = %if.end
  %config_version8 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %ver, i32 0, i32 2, !dbg !5806
  %8 = load i8, i8* %config_version8, align 1, !dbg !5806
  %conv9 = zext i8 %8 to i32, !dbg !5807
  %cmp10 = icmp eq i32 %conv9, 1, !dbg !5808
  br i1 %cmp10, label %land.lhs.true12, label %if.end18, !dbg !5809

land.lhs.true12:                                  ; preds = %land.lhs.true
  %demod_version13 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %ver, i32 0, i32 3, !dbg !5810
  %9 = load i8, i8* %demod_version13, align 1, !dbg !5810
  %conv14 = zext i8 %9 to i32, !dbg !5811
  %cmp15 = icmp eq i32 %conv14, 177, !dbg !5812
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !5813

if.then17:                                        ; preds = %land.lhs.true12
  store i32 0, i32* %retval, align 4, !dbg !5814
  br label %return, !dbg !5814

if.end18:                                         ; preds = %land.lhs.true12, %land.lhs.true, %if.end
  %10 = load i32, i32* @debug, align 4, !dbg !5815
  %and19 = and i32 1, %10, !dbg !5815
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5815
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !5817

if.then21:                                        ; preds = %if.end18
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !5815
  br label %if.end23, !dbg !5815

if.end23:                                         ; preds = %if.then21, %if.end18
  store i32 -19, i32* %retval, align 4, !dbg !5818
  br label %return, !dbg !5818

return:                                           ; preds = %if.end23, %if.then17
  %11 = load i32, i32* %retval, align 4, !dbg !5819
  ret i32 %11, !dbg !5819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %st, i8 zeroext %cmd, i8 zeroext %msgid, i8* %obuf, i8 zeroext %olen, i8* %ibuf, i8 zeroext %ilen) #0 !dbg !5820 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %cmd.addr = alloca i8, align 1
  %msgid.addr = alloca i8, align 1
  %obuf.addr = alloca i8*, align 8
  %olen.addr = alloca i8, align 1
  %ibuf.addr = alloca i8*, align 8
  %ilen.addr = alloca i8, align 1
  %ob = alloca [128 x i8], align 16
  %ib = alloca [128 x i8], align 16
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %i66 = alloca i32, align 4
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  store i8 %msgid, i8* %msgid.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %msgid.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  store i8* %obuf, i8** %obuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obuf.addr, metadata !5829, metadata !DIExpression()), !dbg !5830
  store i8 %olen, i8* %olen.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %olen.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  store i8* %ibuf, i8** %ibuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ibuf.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  store i8 %ilen, i8* %ilen.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ilen.addr, metadata !5835, metadata !DIExpression()), !dbg !5836
  call void @llvm.dbg.declare(metadata [128 x i8]* %ob, metadata !5837, metadata !DIExpression()), !dbg !5839
  call void @llvm.dbg.declare(metadata [128 x i8]* %ib, metadata !5840, metadata !DIExpression()), !dbg !5841
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5842, metadata !DIExpression()), !dbg !5843
  store i32 0, i32* %ret, align 4, !dbg !5843
  %0 = load i8, i8* %ilen.addr, align 1, !dbg !5844
  %conv = zext i8 %0 to i32, !dbg !5844
  %add = add i32 %conv, 2, !dbg !5846
  %conv1 = sext i32 %add to i64, !dbg !5844
  %cmp = icmp ugt i64 %conv1, 128, !dbg !5847
  br i1 %cmp, label %if.then, label %if.end5, !dbg !5848

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !5849
  %and = and i32 4, %1, !dbg !5849
  %tobool = icmp ne i32 %and, 0, !dbg !5849
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5852

if.then3:                                         ; preds = %if.then
  %2 = load i8, i8* %ilen.addr, align 1, !dbg !5849
  %conv4 = zext i8 %2 to i32, !dbg !5849
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i32 %conv4) #9, !dbg !5849
  br label %if.end, !dbg !5849

if.end:                                           ; preds = %if.then3, %if.then
  store i32 -22, i32* %retval, align 4, !dbg !5853
  br label %return, !dbg !5853

if.end5:                                          ; preds = %entry
  %3 = load i8, i8* %olen.addr, align 1, !dbg !5854
  %conv6 = zext i8 %3 to i32, !dbg !5854
  %add7 = add i32 %conv6, 2, !dbg !5856
  %conv8 = sext i32 %add7 to i64, !dbg !5854
  %cmp9 = icmp ugt i64 %conv8, 128, !dbg !5857
  br i1 %cmp9, label %if.then11, label %if.end18, !dbg !5858

if.then11:                                        ; preds = %if.end5
  %4 = load i32, i32* @debug, align 4, !dbg !5859
  %and12 = and i32 4, %4, !dbg !5859
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5859
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !5862

if.then14:                                        ; preds = %if.then11
  %5 = load i8, i8* %olen.addr, align 1, !dbg !5859
  %conv15 = zext i8 %5 to i32, !dbg !5859
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i32 %conv15) #9, !dbg !5859
  br label %if.end17, !dbg !5859

if.end17:                                         ; preds = %if.then14, %if.then11
  store i32 -22, i32* %retval, align 4, !dbg !5863
  br label %return, !dbg !5863

if.end18:                                         ; preds = %if.end5
  %6 = load i8, i8* %cmd.addr, align 1, !dbg !5864
  %arrayidx = getelementptr [128 x i8], [128 x i8]* %ob, i64 0, i64 0, !dbg !5865
  store i8 %6, i8* %arrayidx, align 16, !dbg !5866
  %7 = load i8, i8* %msgid.addr, align 1, !dbg !5867
  %arrayidx19 = getelementptr [128 x i8], [128 x i8]* %ob, i64 0, i64 1, !dbg !5868
  store i8 %7, i8* %arrayidx19, align 1, !dbg !5869
  %arrayidx20 = getelementptr [128 x i8], [128 x i8]* %ob, i64 0, i64 2, !dbg !5870
  %8 = load i8*, i8** %obuf.addr, align 8, !dbg !5871
  %9 = load i8, i8* %olen.addr, align 1, !dbg !5872
  %conv21 = zext i8 %9 to i64, !dbg !5872
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %arrayidx20, i8* align 1 %8, i64 %conv21, i1 false), !dbg !5873
  %10 = load i32, i32* @debug, align 4, !dbg !5874
  %and22 = and i32 4, %10, !dbg !5874
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5874
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !5876

if.then24:                                        ; preds = %if.end18
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !5874
  br label %if.end26, !dbg !5874

if.end26:                                         ; preds = %if.then24, %if.end18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5877, metadata !DIExpression()), !dbg !5879
  store i32 0, i32* %i, align 4, !dbg !5880
  br label %for.cond, !dbg !5880

for.cond:                                         ; preds = %for.inc, %if.end26
  %11 = load i32, i32* %i, align 4, !dbg !5882
  %12 = load i8, i8* %olen.addr, align 1, !dbg !5882
  %conv27 = zext i8 %12 to i32, !dbg !5882
  %add28 = add i32 %conv27, 2, !dbg !5882
  %cmp29 = icmp slt i32 %11, %add28, !dbg !5882
  br i1 %cmp29, label %for.body, label %for.end, !dbg !5880

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* @debug, align 4, !dbg !5884
  %and31 = and i32 4, %13, !dbg !5884
  %tobool32 = icmp ne i32 %and31, 0, !dbg !5884
  br i1 %tobool32, label %if.then33, label %if.end37, !dbg !5882

if.then33:                                        ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !5884
  %idxprom = sext i32 %14 to i64, !dbg !5884
  %arrayidx34 = getelementptr [128 x i8], [128 x i8]* %ob, i64 0, i64 %idxprom, !dbg !5884
  %15 = load i8, i8* %arrayidx34, align 1, !dbg !5884
  %conv35 = zext i8 %15 to i32, !dbg !5884
  %call36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %conv35) #9, !dbg !5884
  br label %if.end37, !dbg !5884

if.end37:                                         ; preds = %if.then33, %for.body
  br label %for.inc, !dbg !5884

for.inc:                                          ; preds = %if.end37
  %16 = load i32, i32* %i, align 4, !dbg !5882
  %inc = add i32 %16, 1, !dbg !5882
  store i32 %inc, i32* %i, align 4, !dbg !5882
  br label %for.cond, !dbg !5882, !llvm.loop !5886

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* @debug, align 4, !dbg !5887
  %and38 = and i32 4, %17, !dbg !5887
  %tobool39 = icmp ne i32 %and38, 0, !dbg !5887
  br i1 %tobool39, label %if.then40, label %if.end42, !dbg !5889

if.then40:                                        ; preds = %for.end
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5887
  br label %if.end42, !dbg !5887

if.end42:                                         ; preds = %if.then40, %for.end
  %18 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5890
  %hab_mutex = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %18, i32 0, i32 3, !dbg !5892
  %call43 = call i32 @mutex_lock_interruptible(%struct.mutex* %hab_mutex) #8, !dbg !5893
  %cmp44 = icmp slt i32 %call43, 0, !dbg !5894
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !5895

if.then46:                                        ; preds = %if.end42
  store i32 -11, i32* %retval, align 4, !dbg !5896
  br label %return, !dbg !5896

if.end47:                                         ; preds = %if.end42
  %19 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5897
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %ob, i64 0, i64 0, !dbg !5899
  %20 = load i8, i8* %olen.addr, align 1, !dbg !5900
  %conv48 = zext i8 %20 to i32, !dbg !5900
  %add49 = add i32 %conv48, 2, !dbg !5901
  %call50 = call i32 @bcm3510_hab_send_request(%struct.bcm3510_state* %19, i8* %arraydecay, i32 %add49) #8, !dbg !5902
  store i32 %call50, i32* %ret, align 4, !dbg !5903
  %cmp51 = icmp slt i32 %call50, 0, !dbg !5904
  br i1 %cmp51, label %if.then59, label %lor.lhs.false, !dbg !5905

lor.lhs.false:                                    ; preds = %if.end47
  %21 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5906
  %arraydecay53 = getelementptr inbounds [128 x i8], [128 x i8]* %ib, i64 0, i64 0, !dbg !5907
  %22 = load i8, i8* %ilen.addr, align 1, !dbg !5908
  %conv54 = zext i8 %22 to i32, !dbg !5908
  %add55 = add i32 %conv54, 2, !dbg !5909
  %call56 = call i32 @bcm3510_hab_get_response(%struct.bcm3510_state* %21, i8* %arraydecay53, i32 %add55) #8, !dbg !5910
  store i32 %call56, i32* %ret, align 4, !dbg !5911
  %cmp57 = icmp slt i32 %call56, 0, !dbg !5912
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !5913

if.then59:                                        ; preds = %lor.lhs.false, %if.end47
  br label %error, !dbg !5914

if.end60:                                         ; preds = %lor.lhs.false
  %23 = load i32, i32* @debug, align 4, !dbg !5915
  %and61 = and i32 4, %23, !dbg !5915
  %tobool62 = icmp ne i32 %and61, 0, !dbg !5915
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !5917

if.then63:                                        ; preds = %if.end60
  %call64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !5915
  br label %if.end65, !dbg !5915

if.end65:                                         ; preds = %if.then63, %if.end60
  call void @llvm.dbg.declare(metadata i32* %i66, metadata !5918, metadata !DIExpression()), !dbg !5920
  store i32 0, i32* %i66, align 4, !dbg !5921
  br label %for.cond67, !dbg !5921

for.cond67:                                       ; preds = %for.inc81, %if.end65
  %24 = load i32, i32* %i66, align 4, !dbg !5923
  %25 = load i8, i8* %ilen.addr, align 1, !dbg !5923
  %conv68 = zext i8 %25 to i32, !dbg !5923
  %add69 = add i32 %conv68, 2, !dbg !5923
  %cmp70 = icmp slt i32 %24, %add69, !dbg !5923
  br i1 %cmp70, label %for.body72, label %for.end83, !dbg !5921

for.body72:                                       ; preds = %for.cond67
  %26 = load i32, i32* @debug, align 4, !dbg !5925
  %and73 = and i32 4, %26, !dbg !5925
  %tobool74 = icmp ne i32 %and73, 0, !dbg !5925
  br i1 %tobool74, label %if.then75, label %if.end80, !dbg !5923

if.then75:                                        ; preds = %for.body72
  %27 = load i32, i32* %i66, align 4, !dbg !5925
  %idxprom76 = sext i32 %27 to i64, !dbg !5925
  %arrayidx77 = getelementptr [128 x i8], [128 x i8]* %ib, i64 0, i64 %idxprom76, !dbg !5925
  %28 = load i8, i8* %arrayidx77, align 1, !dbg !5925
  %conv78 = zext i8 %28 to i32, !dbg !5925
  %call79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %conv78) #9, !dbg !5925
  br label %if.end80, !dbg !5925

if.end80:                                         ; preds = %if.then75, %for.body72
  br label %for.inc81, !dbg !5925

for.inc81:                                        ; preds = %if.end80
  %29 = load i32, i32* %i66, align 4, !dbg !5923
  %inc82 = add i32 %29, 1, !dbg !5923
  store i32 %inc82, i32* %i66, align 4, !dbg !5923
  br label %for.cond67, !dbg !5923, !llvm.loop !5927

for.end83:                                        ; preds = %for.cond67
  %30 = load i32, i32* @debug, align 4, !dbg !5928
  %and84 = and i32 4, %30, !dbg !5928
  %tobool85 = icmp ne i32 %and84, 0, !dbg !5928
  br i1 %tobool85, label %if.then86, label %if.end88, !dbg !5930

if.then86:                                        ; preds = %for.end83
  %call87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5928
  br label %if.end88, !dbg !5928

if.end88:                                         ; preds = %if.then86, %for.end83
  %31 = load i8*, i8** %ibuf.addr, align 8, !dbg !5931
  %arrayidx89 = getelementptr [128 x i8], [128 x i8]* %ib, i64 0, i64 2, !dbg !5932
  %32 = load i8, i8* %ilen.addr, align 1, !dbg !5933
  %conv90 = zext i8 %32 to i64, !dbg !5933
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 2 %arrayidx89, i64 %conv90, i1 false), !dbg !5934
  br label %error, !dbg !5934

error:                                            ; preds = %if.end88, %if.then59
  call void @llvm.dbg.label(metadata !5935), !dbg !5936
  %33 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !5937
  %hab_mutex91 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %33, i32 0, i32 3, !dbg !5938
  call void @mutex_unlock(%struct.mutex* %hab_mutex91) #8, !dbg !5939
  %34 = load i32, i32* %ret, align 4, !dbg !5940
  store i32 %34, i32* %retval, align 4, !dbg !5941
  br label %return, !dbg !5941

return:                                           ; preds = %error, %if.then46, %if.end17, %if.end
  %35 = load i32, i32* %retval, align 4, !dbg !5942
  ret i32 %35, !dbg !5942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_download_firmware(%struct.dvb_frontend* %fe) #0 !dbg !5943 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %st = alloca %struct.bcm3510_state*, align 8
  %fw = alloca %struct.firmware*, align 8
  %addr = alloca i16, align 2
  %len = alloca i16, align 2
  %b = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st, metadata !5946, metadata !DIExpression()), !dbg !5947
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5948
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5949
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5949
  %2 = bitcast i8* %1 to %struct.bcm3510_state*, !dbg !5948
  store %struct.bcm3510_state* %2, %struct.bcm3510_state** %st, align 8, !dbg !5947
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !5950, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.declare(metadata i16* %addr, metadata !5952, metadata !DIExpression()), !dbg !5953
  call void @llvm.dbg.declare(metadata i16* %len, metadata !5954, metadata !DIExpression()), !dbg !5955
  call void @llvm.dbg.declare(metadata i8** %b, metadata !5956, metadata !DIExpression()), !dbg !5957
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5958, metadata !DIExpression()), !dbg !5959
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5960, metadata !DIExpression()), !dbg !5961
  %3 = load i32, i32* @debug, align 4, !dbg !5962
  %and = and i32 1, %3, !dbg !5962
  %tobool = icmp ne i32 %and, 0, !dbg !5962
  br i1 %tobool, label %if.then, label %if.end, !dbg !5964

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !5962
  br label %if.end, !dbg !5962

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !5965
  %config = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %4, i32 0, i32 1, !dbg !5967
  %5 = load %struct.bcm3510_config*, %struct.bcm3510_config** %config, align 8, !dbg !5967
  %request_firmware = getelementptr inbounds %struct.bcm3510_config, %struct.bcm3510_config* %5, i32 0, i32 1, !dbg !5968
  %6 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)** %request_firmware, align 8, !dbg !5968
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5969
  %call1 = call i32 %6(%struct.dvb_frontend* %7, %struct.firmware** %fw, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !5965
  store i32 %call1, i32* %ret, align 4, !dbg !5970
  %cmp = icmp slt i32 %call1, 0, !dbg !5971
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !5972

if.then2:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4, !dbg !5973
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %8) #9, !dbg !5973
  %9 = load i32, i32* %ret, align 4, !dbg !5975
  store i32 %9, i32* %retval, align 4, !dbg !5976
  br label %return, !dbg !5976

if.end4:                                          ; preds = %if.end
  %10 = load i32, i32* @debug, align 4, !dbg !5977
  %and5 = and i32 1, %10, !dbg !5977
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5977
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5979

if.then7:                                         ; preds = %if.end4
  %11 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5977
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %11, i32 0, i32 0, !dbg !5977
  %12 = load i64, i64* %size, align 8, !dbg !5977
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i64 %12) #9, !dbg !5977
  br label %if.end9, !dbg !5977

if.end9:                                          ; preds = %if.then7, %if.end4
  %13 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5980
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %13, i32 0, i32 1, !dbg !5981
  %14 = load i8*, i8** %data, align 8, !dbg !5981
  store i8* %14, i8** %b, align 8, !dbg !5982
  store i32 0, i32* %i, align 4, !dbg !5983
  br label %for.cond, !dbg !5985

for.cond:                                         ; preds = %if.end31, %if.end9
  %15 = load i32, i32* %i, align 4, !dbg !5986
  %conv = sext i32 %15 to i64, !dbg !5986
  %16 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5988
  %size10 = getelementptr inbounds %struct.firmware, %struct.firmware* %16, i32 0, i32 0, !dbg !5989
  %17 = load i64, i64* %size10, align 8, !dbg !5989
  %cmp11 = icmp ult i64 %conv, %17, !dbg !5990
  br i1 %cmp11, label %for.body, label %for.end, !dbg !5991

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %b, align 8, !dbg !5992
  %19 = load i32, i32* %i, align 4, !dbg !5992
  %idxprom = sext i32 %19 to i64, !dbg !5992
  %arrayidx = getelementptr i8, i8* %18, i64 %idxprom, !dbg !5992
  %20 = bitcast i8* %arrayidx to i16*, !dbg !5992
  %21 = load i16, i16* %20, align 2, !dbg !5992
  store i16 %21, i16* %addr, align 2, !dbg !5994
  %22 = load i8*, i8** %b, align 8, !dbg !5995
  %23 = load i32, i32* %i, align 4, !dbg !5995
  %add = add i32 %23, 2, !dbg !5995
  %idxprom13 = sext i32 %add to i64, !dbg !5995
  %arrayidx14 = getelementptr i8, i8* %22, i64 %idxprom13, !dbg !5995
  %24 = bitcast i8* %arrayidx14 to i16*, !dbg !5995
  %25 = load i16, i16* %24, align 2, !dbg !5995
  store i16 %25, i16* %len, align 2, !dbg !5996
  %26 = load i32, i32* @debug, align 4, !dbg !5997
  %and15 = and i32 1, %26, !dbg !5997
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5997
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !5999

if.then17:                                        ; preds = %for.body
  %27 = load i16, i16* %addr, align 2, !dbg !5997
  %conv18 = zext i16 %27 to i32, !dbg !5997
  %28 = load i16, i16* %len, align 2, !dbg !5997
  %conv19 = zext i16 %28 to i32, !dbg !5997
  %29 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5997
  %size20 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 0, !dbg !5997
  %30 = load i64, i64* %size20, align 8, !dbg !5997
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i64 0, i64 0), i32 %conv18, i32 %conv19, i64 %30) #9, !dbg !5997
  br label %if.end22, !dbg !5997

if.end22:                                         ; preds = %if.then17, %for.body
  %31 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st, align 8, !dbg !6000
  %32 = load i16, i16* %addr, align 2, !dbg !6002
  %33 = load i8*, i8** %b, align 8, !dbg !6003
  %34 = load i32, i32* %i, align 4, !dbg !6004
  %add23 = add i32 %34, 4, !dbg !6005
  %idxprom24 = sext i32 %add23 to i64, !dbg !6003
  %arrayidx25 = getelementptr i8, i8* %33, i64 %idxprom24, !dbg !6003
  %35 = load i16, i16* %len, align 2, !dbg !6006
  %call26 = call i32 @bcm3510_write_ram(%struct.bcm3510_state* %31, i16 zeroext %32, i8* %arrayidx25, i16 zeroext %35) #8, !dbg !6007
  store i32 %call26, i32* %ret, align 4, !dbg !6008
  %cmp27 = icmp slt i32 %call26, 0, !dbg !6009
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !6010

if.then29:                                        ; preds = %if.end22
  %36 = load i32, i32* %ret, align 4, !dbg !6011
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i32 %36) #9, !dbg !6011
  %37 = load i32, i32* %ret, align 4, !dbg !6013
  store i32 %37, i32* %retval, align 4, !dbg !6014
  br label %return, !dbg !6014

if.end31:                                         ; preds = %if.end22
  %38 = load i16, i16* %len, align 2, !dbg !6015
  %conv32 = zext i16 %38 to i32, !dbg !6015
  %add33 = add i32 4, %conv32, !dbg !6016
  %39 = load i32, i32* %i, align 4, !dbg !6017
  %add34 = add i32 %39, %add33, !dbg !6017
  store i32 %add34, i32* %i, align 4, !dbg !6017
  br label %for.cond, !dbg !6018, !llvm.loop !6019

for.end:                                          ; preds = %for.cond
  %40 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6021
  call void @release_firmware(%struct.firmware* %40) #8, !dbg !6022
  %41 = load i32, i32* @debug, align 4, !dbg !6023
  %and35 = and i32 1, %41, !dbg !6023
  %tobool36 = icmp ne i32 %and35, 0, !dbg !6023
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !6025

if.then37:                                        ; preds = %for.end
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !6023
  br label %if.end39, !dbg !6023

if.end39:                                         ; preds = %if.then37, %for.end
  store i32 0, i32* %retval, align 4, !dbg !6026
  br label %return, !dbg !6026

return:                                           ; preds = %if.end39, %if.then29, %if.then2
  %42 = load i32, i32* %retval, align 4, !dbg !6027
  ret i32 %42, !dbg !6027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_clear_reset(%struct.bcm3510_state* %st) #0 !dbg !6028 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %v = alloca %union.bcm3510_register_value, align 1
  %ret = alloca i32, align 4
  %t = alloca i64, align 8
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %v, metadata !6031, metadata !DIExpression()), !dbg !6032
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6033, metadata !DIExpression()), !dbg !6034
  call void @llvm.dbg.declare(metadata i64* %t, metadata !6035, metadata !DIExpression()), !dbg !6036
  %raw = bitcast %union.bcm3510_register_value* %v to i8*, !dbg !6037
  store i8 0, i8* %raw, align 1, !dbg !6038
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6039
  %coerce.dive = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %v, i32 0, i32 0, !dbg !6041
  %1 = load i8, i8* %coerce.dive, align 1, !dbg !6041
  %call = call i32 @bcm3510_writeB(%struct.bcm3510_state* %0, i8 zeroext -96, i8 %1) #8, !dbg !6041
  store i32 %call, i32* %ret, align 4, !dbg !6042
  %cmp = icmp slt i32 %call, 0, !dbg !6043
  br i1 %cmp, label %if.then, label %if.end, !dbg !6044

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !6045
  store i32 %2, i32* %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

if.end:                                           ; preds = %entry
  %3 = load volatile i64, i64* @jiffies, align 8, !dbg !6047
  %add = add i64 %3, 750, !dbg !6048
  store i64 %add, i64* %t, align 8, !dbg !6049
  br label %while.cond, !dbg !6050

while.cond:                                       ; preds = %if.end7, %if.end
  %4 = load volatile i64, i64* @jiffies, align 8, !dbg !6051
  %5 = load i64, i64* %t, align 8, !dbg !6051
  %sub = sub i64 %4, %5, !dbg !6051
  %cmp1 = icmp slt i64 %sub, 0, !dbg !6051
  br i1 %cmp1, label %while.body, label %while.end, !dbg !6050

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 10) #8, !dbg !6052
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6054
  %call2 = call i32 @bcm3510_readB(%struct.bcm3510_state* %6, i8 zeroext -94, %union.bcm3510_register_value* %v) #8, !dbg !6056
  store i32 %call2, i32* %ret, align 4, !dbg !6057
  %cmp3 = icmp slt i32 %call2, 0, !dbg !6058
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6059

if.then4:                                         ; preds = %while.body
  %7 = load i32, i32* %ret, align 4, !dbg !6060
  store i32 %7, i32* %retval, align 4, !dbg !6061
  br label %return, !dbg !6061

if.end5:                                          ; preds = %while.body
  %APSTAT1_a2 = bitcast %union.bcm3510_register_value* %v to %struct.anon.76*, !dbg !6062
  %8 = bitcast %struct.anon.76* %APSTAT1_a2 to i8*, !dbg !6064
  %bf.load = load i8, i8* %8, align 1, !dbg !6064
  %bf.clear = and i8 %bf.load, 1, !dbg !6064
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !6065
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !6066

if.then6:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !6067
  br label %return, !dbg !6067

if.end7:                                          ; preds = %if.end5
  br label %while.cond, !dbg !6050, !llvm.loop !6068

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* @debug, align 4, !dbg !6070
  %and = and i32 1, %9, !dbg !6070
  %tobool8 = icmp ne i32 %and, 0, !dbg !6070
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6072

if.then9:                                         ; preds = %while.end
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !6070
  br label %if.end11, !dbg !6070

if.end11:                                         ; preds = %if.then9, %while.end
  store i32 -110, i32* %retval, align 4, !dbg !6073
  br label %return, !dbg !6073

return:                                           ; preds = %if.end11, %if.then6, %if.then4, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6074
  ret i32 %10, !dbg !6074
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_write_ram(%struct.bcm3510_state* %st, i16 zeroext %addr, i8* %b, i16 zeroext %len) #0 !dbg !6075 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %addr.addr = alloca i16, align 2
  %b.addr = alloca i8*, align 8
  %len.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %vH = alloca %union.bcm3510_register_value, align 1
  %vL = alloca %union.bcm3510_register_value, align 1
  %vD = alloca %union.bcm3510_register_value, align 1
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !6078, metadata !DIExpression()), !dbg !6079
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !6080, metadata !DIExpression()), !dbg !6081
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !6082, metadata !DIExpression()), !dbg !6083
  store i16 %len, i16* %len.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %len.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6086, metadata !DIExpression()), !dbg !6087
  store i32 0, i32* %ret, align 4, !dbg !6087
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6088, metadata !DIExpression()), !dbg !6089
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %vH, metadata !6090, metadata !DIExpression()), !dbg !6091
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %vL, metadata !6092, metadata !DIExpression()), !dbg !6093
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %vD, metadata !6094, metadata !DIExpression()), !dbg !6095
  %0 = load i16, i16* %addr.addr, align 2, !dbg !6096
  %conv = zext i16 %0 to i32, !dbg !6096
  %shr = ashr i32 %conv, 8, !dbg !6097
  %conv1 = trunc i32 %shr to i8, !dbg !6096
  %MADRH_a9 = bitcast %union.bcm3510_register_value* %vH to i8*, !dbg !6098
  store i8 %conv1, i8* %MADRH_a9, align 1, !dbg !6099
  %1 = load i16, i16* %addr.addr, align 2, !dbg !6100
  %conv2 = trunc i16 %1 to i8, !dbg !6100
  %MADRL_aa = bitcast %union.bcm3510_register_value* %vL to i8*, !dbg !6101
  store i8 %conv2, i8* %MADRL_aa, align 1, !dbg !6102
  %2 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6103
  %coerce.dive = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %vH, i32 0, i32 0, !dbg !6105
  %3 = load i8, i8* %coerce.dive, align 1, !dbg !6105
  %call = call i32 @bcm3510_writeB(%struct.bcm3510_state* %2, i8 zeroext -87, i8 %3) #8, !dbg !6105
  store i32 %call, i32* %ret, align 4, !dbg !6106
  %cmp = icmp slt i32 %call, 0, !dbg !6107
  br i1 %cmp, label %if.then, label %if.end, !dbg !6108

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !6109
  store i32 %4, i32* %retval, align 4, !dbg !6110
  br label %return, !dbg !6110

if.end:                                           ; preds = %entry
  %5 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6111
  %coerce.dive4 = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %vL, i32 0, i32 0, !dbg !6113
  %6 = load i8, i8* %coerce.dive4, align 1, !dbg !6113
  %call5 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %5, i8 zeroext -86, i8 %6) #8, !dbg !6113
  store i32 %call5, i32* %ret, align 4, !dbg !6114
  %cmp6 = icmp slt i32 %call5, 0, !dbg !6115
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !6116

if.then8:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !6117
  store i32 %7, i32* %retval, align 4, !dbg !6118
  br label %return, !dbg !6118

if.end9:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !6119
  br label %for.cond, !dbg !6121

for.cond:                                         ; preds = %for.inc, %if.end9
  %8 = load i32, i32* %i, align 4, !dbg !6122
  %9 = load i16, i16* %len.addr, align 2, !dbg !6124
  %conv10 = zext i16 %9 to i32, !dbg !6124
  %cmp11 = icmp slt i32 %8, %conv10, !dbg !6125
  br i1 %cmp11, label %for.body, label %for.end, !dbg !6126

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %b.addr, align 8, !dbg !6127
  %11 = load i32, i32* %i, align 4, !dbg !6129
  %idxprom = sext i32 %11 to i64, !dbg !6127
  %arrayidx = getelementptr i8, i8* %10, i64 %idxprom, !dbg !6127
  %12 = load i8, i8* %arrayidx, align 1, !dbg !6127
  %MDATA_ab = bitcast %union.bcm3510_register_value* %vD to i8*, !dbg !6130
  store i8 %12, i8* %MDATA_ab, align 1, !dbg !6131
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6132
  %coerce.dive13 = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %vD, i32 0, i32 0, !dbg !6134
  %14 = load i8, i8* %coerce.dive13, align 1, !dbg !6134
  %call14 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %13, i8 zeroext -85, i8 %14) #8, !dbg !6134
  store i32 %call14, i32* %ret, align 4, !dbg !6135
  %cmp15 = icmp slt i32 %call14, 0, !dbg !6136
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !6137

if.then17:                                        ; preds = %for.body
  %15 = load i32, i32* %ret, align 4, !dbg !6138
  store i32 %15, i32* %retval, align 4, !dbg !6139
  br label %return, !dbg !6139

if.end18:                                         ; preds = %for.body
  br label %for.inc, !dbg !6140

for.inc:                                          ; preds = %if.end18
  %16 = load i32, i32* %i, align 4, !dbg !6141
  %inc = add i32 %16, 1, !dbg !6141
  store i32 %inc, i32* %i, align 4, !dbg !6141
  br label %for.cond, !dbg !6142, !llvm.loop !6143

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6145
  br label %return, !dbg !6145

return:                                           ; preds = %for.end, %if.then17, %if.then8, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !6146
  ret i32 %17, !dbg !6146
}

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #3

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_hab_send_request(%struct.bcm3510_state* %st, i8* %buf, i32 %len) #0 !dbg !6147 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %v = alloca %union.bcm3510_register_value, align 1
  %hab = alloca %union.bcm3510_register_value, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %v, metadata !6156, metadata !DIExpression()), !dbg !6157
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %hab, metadata !6158, metadata !DIExpression()), !dbg !6159
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6160, metadata !DIExpression()), !dbg !6161
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6162, metadata !DIExpression()), !dbg !6163
  call void @llvm.dbg.declare(metadata i64* %t, metadata !6164, metadata !DIExpression()), !dbg !6165
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6166
  %call = call i32 @bcm3510_readB(%struct.bcm3510_state* %0, i8 zeroext -88, %union.bcm3510_register_value* %v) #8, !dbg !6168
  store i32 %call, i32* %ret, align 4, !dbg !6169
  %cmp = icmp slt i32 %call, 0, !dbg !6170
  br i1 %cmp, label %if.then, label %if.end, !dbg !6171

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4, !dbg !6172
  store i32 %1, i32* %retval, align 4, !dbg !6173
  br label %return, !dbg !6173

if.end:                                           ; preds = %entry
  %HABSTAT_a8 = bitcast %union.bcm3510_register_value* %v to %struct.anon.79*, !dbg !6174
  %2 = bitcast %struct.anon.79* %HABSTAT_a8 to i8*, !dbg !6176
  %bf.load = load i8, i8* %2, align 1, !dbg !6176
  %bf.clear = and i8 %bf.load, 1, !dbg !6176
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !6177
  br i1 %tobool, label %if.then1, label %if.end10, !dbg !6178

if.then1:                                         ; preds = %if.end
  %3 = load i32, i32* @debug, align 4, !dbg !6179
  %and = and i32 1, %3, !dbg !6179
  %tobool2 = icmp ne i32 %and, 0, !dbg !6179
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6182

if.then3:                                         ; preds = %if.then1
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !6179
  br label %if.end5, !dbg !6179

if.end5:                                          ; preds = %if.then3, %if.then1
  %HABSTAT_a86 = bitcast %union.bcm3510_register_value* %v to %struct.anon.79*, !dbg !6183
  %4 = bitcast %struct.anon.79* %HABSTAT_a86 to i8*, !dbg !6184
  %bf.load7 = load i8, i8* %4, align 1, !dbg !6185
  %bf.clear8 = and i8 %bf.load7, -2, !dbg !6185
  store i8 %bf.clear8, i8* %4, align 1, !dbg !6185
  %5 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6186
  %coerce.dive = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %v, i32 0, i32 0, !dbg !6187
  %6 = load i8, i8* %coerce.dive, align 1, !dbg !6187
  %call9 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %5, i8 zeroext -88, i8 %6) #8, !dbg !6187
  br label %if.end10, !dbg !6188

if.end10:                                         ; preds = %if.end5, %if.end
  %HABADR_a6 = bitcast %union.bcm3510_register_value* %hab to %struct.anon.78*, !dbg !6189
  %7 = bitcast %struct.anon.78* %HABADR_a6 to i8*, !dbg !6190
  %bf.load11 = load i8, i8* %7, align 1, !dbg !6191
  %bf.clear12 = and i8 %bf.load11, -128, !dbg !6191
  store i8 %bf.clear12, i8* %7, align 1, !dbg !6191
  %8 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6192
  %coerce.dive13 = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %hab, i32 0, i32 0, !dbg !6194
  %9 = load i8, i8* %coerce.dive13, align 1, !dbg !6194
  %call14 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %8, i8 zeroext -90, i8 %9) #8, !dbg !6194
  store i32 %call14, i32* %ret, align 4, !dbg !6195
  %cmp15 = icmp slt i32 %call14, 0, !dbg !6196
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6197

if.then16:                                        ; preds = %if.end10
  %10 = load i32, i32* %ret, align 4, !dbg !6198
  store i32 %10, i32* %retval, align 4, !dbg !6199
  br label %return, !dbg !6199

if.end17:                                         ; preds = %if.end10
  store i32 0, i32* %i, align 4, !dbg !6200
  br label %for.cond, !dbg !6202

for.cond:                                         ; preds = %for.inc, %if.end17
  %11 = load i32, i32* %i, align 4, !dbg !6203
  %12 = load i32, i32* %len.addr, align 4, !dbg !6205
  %cmp18 = icmp slt i32 %11, %12, !dbg !6206
  br i1 %cmp18, label %for.body, label %for.end, !dbg !6207

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !6208
  %14 = load i32, i32* %i, align 4, !dbg !6210
  %idxprom = sext i32 %14 to i64, !dbg !6208
  %arrayidx = getelementptr i8, i8* %13, i64 %idxprom, !dbg !6208
  %15 = load i8, i8* %arrayidx, align 1, !dbg !6208
  %HABDATA_a7 = bitcast %union.bcm3510_register_value* %hab to i8*, !dbg !6211
  store i8 %15, i8* %HABDATA_a7, align 1, !dbg !6212
  %16 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6213
  %coerce.dive19 = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %hab, i32 0, i32 0, !dbg !6215
  %17 = load i8, i8* %coerce.dive19, align 1, !dbg !6215
  %call20 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %16, i8 zeroext -89, i8 %17) #8, !dbg !6215
  store i32 %call20, i32* %ret, align 4, !dbg !6216
  %cmp21 = icmp slt i32 %call20, 0, !dbg !6217
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6218

if.then22:                                        ; preds = %for.body
  %18 = load i32, i32* %ret, align 4, !dbg !6219
  store i32 %18, i32* %retval, align 4, !dbg !6220
  br label %return, !dbg !6220

if.end23:                                         ; preds = %for.body
  br label %for.inc, !dbg !6221

for.inc:                                          ; preds = %if.end23
  %19 = load i32, i32* %i, align 4, !dbg !6222
  %inc = add i32 %19, 1, !dbg !6222
  store i32 %inc, i32* %i, align 4, !dbg !6222
  br label %for.cond, !dbg !6223, !llvm.loop !6224

for.end:                                          ; preds = %for.cond
  %raw = bitcast %union.bcm3510_register_value* %v to i8*, !dbg !6226
  store i8 0, i8* %raw, align 1, !dbg !6227
  %HABSTAT_a824 = bitcast %union.bcm3510_register_value* %v to %struct.anon.79*, !dbg !6228
  %20 = bitcast %struct.anon.79* %HABSTAT_a824 to i8*, !dbg !6229
  %bf.load25 = load i8, i8* %20, align 1, !dbg !6230
  %bf.clear26 = and i8 %bf.load25, -2, !dbg !6230
  %bf.set = or i8 %bf.clear26, 1, !dbg !6230
  store i8 %bf.set, i8* %20, align 1, !dbg !6230
  %HABSTAT_a827 = bitcast %union.bcm3510_register_value* %v to %struct.anon.79*, !dbg !6231
  %21 = bitcast %struct.anon.79* %HABSTAT_a827 to i8*, !dbg !6232
  %bf.load28 = load i8, i8* %21, align 1, !dbg !6233
  %bf.clear29 = and i8 %bf.load28, -3, !dbg !6233
  %bf.set30 = or i8 %bf.clear29, 2, !dbg !6233
  store i8 %bf.set30, i8* %21, align 1, !dbg !6233
  %22 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6234
  %coerce.dive31 = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %v, i32 0, i32 0, !dbg !6236
  %23 = load i8, i8* %coerce.dive31, align 1, !dbg !6236
  %call32 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %22, i8 zeroext -88, i8 %23) #8, !dbg !6236
  store i32 %call32, i32* %ret, align 4, !dbg !6237
  %cmp33 = icmp slt i32 %call32, 0, !dbg !6238
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6239

if.then34:                                        ; preds = %for.end
  %24 = load i32, i32* %ret, align 4, !dbg !6240
  store i32 %24, i32* %retval, align 4, !dbg !6241
  br label %return, !dbg !6241

if.end35:                                         ; preds = %for.end
  %25 = load volatile i64, i64* @jiffies, align 8, !dbg !6242
  %add = add i64 %25, 250, !dbg !6243
  store i64 %add, i64* %t, align 8, !dbg !6244
  br label %while.cond, !dbg !6245

while.cond:                                       ; preds = %if.end51, %if.end35
  %26 = load volatile i64, i64* @jiffies, align 8, !dbg !6246
  %27 = load i64, i64* %t, align 8, !dbg !6246
  %sub = sub i64 %26, %27, !dbg !6246
  %cmp36 = icmp slt i64 %sub, 0, !dbg !6246
  br i1 %cmp36, label %while.body, label %while.end, !dbg !6245

while.body:                                       ; preds = %while.cond
  %28 = load i32, i32* @debug, align 4, !dbg !6247
  %and37 = and i32 1, %28, !dbg !6247
  %tobool38 = icmp ne i32 %and37, 0, !dbg !6247
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !6250

if.then39:                                        ; preds = %while.body
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !6247
  br label %if.end41, !dbg !6247

if.end41:                                         ; preds = %if.then39, %while.body
  call void @msleep(i32 10) #8, !dbg !6251
  %29 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6252
  %call42 = call i32 @bcm3510_readB(%struct.bcm3510_state* %29, i8 zeroext -88, %union.bcm3510_register_value* %v) #8, !dbg !6254
  store i32 %call42, i32* %ret, align 4, !dbg !6255
  %cmp43 = icmp slt i32 %call42, 0, !dbg !6256
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !6257

if.then44:                                        ; preds = %if.end41
  %30 = load i32, i32* %ret, align 4, !dbg !6258
  store i32 %30, i32* %retval, align 4, !dbg !6259
  br label %return, !dbg !6259

if.end45:                                         ; preds = %if.end41
  %HABSTAT_a846 = bitcast %union.bcm3510_register_value* %v to %struct.anon.79*, !dbg !6260
  %31 = bitcast %struct.anon.79* %HABSTAT_a846 to i8*, !dbg !6262
  %bf.load47 = load i8, i8* %31, align 1, !dbg !6262
  %bf.clear48 = and i8 %bf.load47, 1, !dbg !6262
  %tobool49 = icmp ne i8 %bf.clear48, 0, !dbg !6263
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !6264

if.then50:                                        ; preds = %if.end45
  store i32 0, i32* %retval, align 4, !dbg !6265
  br label %return, !dbg !6265

if.end51:                                         ; preds = %if.end45
  br label %while.cond, !dbg !6245, !llvm.loop !6266

while.end:                                        ; preds = %while.cond
  %32 = load i32, i32* @debug, align 4, !dbg !6268
  %and52 = and i32 1, %32, !dbg !6268
  %tobool53 = icmp ne i32 %and52, 0, !dbg !6268
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !6270

if.then54:                                        ; preds = %while.end
  %call55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !6268
  br label %if.end56, !dbg !6268

if.end56:                                         ; preds = %if.then54, %while.end
  store i32 -110, i32* %retval, align 4, !dbg !6271
  br label %return, !dbg !6271

return:                                           ; preds = %if.end56, %if.then50, %if.then44, %if.then34, %if.then22, %if.then16, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !6272
  ret i32 %33, !dbg !6272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_hab_get_response(%struct.bcm3510_state* %st, i8* %buf, i32 %len) #0 !dbg !6273 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %v = alloca %union.bcm3510_register_value, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6276, metadata !DIExpression()), !dbg !6277
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %v, metadata !6280, metadata !DIExpression()), !dbg !6281
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6282, metadata !DIExpression()), !dbg !6283
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6284, metadata !DIExpression()), !dbg !6285
  %HABADR_a6 = bitcast %union.bcm3510_register_value* %v to %struct.anon.78*, !dbg !6286
  %0 = bitcast %struct.anon.78* %HABADR_a6 to i8*, !dbg !6287
  %bf.load = load i8, i8* %0, align 1, !dbg !6288
  %bf.clear = and i8 %bf.load, -128, !dbg !6288
  store i8 %bf.clear, i8* %0, align 1, !dbg !6288
  %1 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6289
  %coerce.dive = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %v, i32 0, i32 0, !dbg !6291
  %2 = load i8, i8* %coerce.dive, align 1, !dbg !6291
  %call = call i32 @bcm3510_writeB(%struct.bcm3510_state* %1, i8 zeroext -90, i8 %2) #8, !dbg !6291
  store i32 %call, i32* %ret, align 4, !dbg !6292
  %cmp = icmp slt i32 %call, 0, !dbg !6293
  br i1 %cmp, label %if.then, label %if.end, !dbg !6294

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !6295
  store i32 %3, i32* %retval, align 4, !dbg !6296
  br label %return, !dbg !6296

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !6297
  br label %for.cond, !dbg !6299

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !6300
  %5 = load i32, i32* %len.addr, align 4, !dbg !6302
  %cmp1 = icmp slt i32 %4, %5, !dbg !6303
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6304

for.body:                                         ; preds = %for.cond
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6305
  %call2 = call i32 @bcm3510_readB(%struct.bcm3510_state* %6, i8 zeroext -89, %union.bcm3510_register_value* %v) #8, !dbg !6308
  store i32 %call2, i32* %ret, align 4, !dbg !6309
  %cmp3 = icmp slt i32 %call2, 0, !dbg !6310
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6311

if.then4:                                         ; preds = %for.body
  %7 = load i32, i32* %ret, align 4, !dbg !6312
  store i32 %7, i32* %retval, align 4, !dbg !6313
  br label %return, !dbg !6313

if.end5:                                          ; preds = %for.body
  %HABDATA_a7 = bitcast %union.bcm3510_register_value* %v to i8*, !dbg !6314
  %8 = load i8, i8* %HABDATA_a7, align 1, !dbg !6314
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !6315
  %10 = load i32, i32* %i, align 4, !dbg !6316
  %idxprom = sext i32 %10 to i64, !dbg !6315
  %arrayidx = getelementptr i8, i8* %9, i64 %idxprom, !dbg !6315
  store i8 %8, i8* %arrayidx, align 1, !dbg !6317
  br label %for.inc, !dbg !6318

for.inc:                                          ; preds = %if.end5
  %11 = load i32, i32* %i, align 4, !dbg !6319
  %inc = add i32 %11, 1, !dbg !6319
  store i32 %inc, i32* %i, align 4, !dbg !6319
  br label %for.cond, !dbg !6320, !llvm.loop !6321

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6323
  br label %return, !dbg !6323

return:                                           ; preds = %for.end, %if.then4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !6324
  ret i32 %12, !dbg !6324
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_bert_reset(%struct.bcm3510_state* %st) #0 !dbg !6325 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %b = alloca %union.bcm3510_register_value, align 1
  %ret = alloca i32, align 4
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  call void @llvm.dbg.declare(metadata %union.bcm3510_register_value* %b, metadata !6328, metadata !DIExpression()), !dbg !6329
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6330, metadata !DIExpression()), !dbg !6331
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6332
  %call = call i32 @bcm3510_readB(%struct.bcm3510_state* %0, i8 zeroext -6, %union.bcm3510_register_value* %b) #8, !dbg !6334
  store i32 %call, i32* %ret, align 4, !dbg !6335
  %cmp = icmp slt i32 %call, 0, !dbg !6336
  br i1 %cmp, label %if.then, label %if.end, !dbg !6337

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4, !dbg !6338
  store i32 %1, i32* %retval, align 4, !dbg !6339
  br label %return, !dbg !6339

if.end:                                           ; preds = %entry
  %BERCTL_fa = bitcast %union.bcm3510_register_value* %b to %struct.anon.82*, !dbg !6340
  %2 = bitcast %struct.anon.82* %BERCTL_fa to i8*, !dbg !6341
  %bf.load = load i8, i8* %2, align 1, !dbg !6342
  %bf.clear = and i8 %bf.load, -17, !dbg !6342
  store i8 %bf.clear, i8* %2, align 1, !dbg !6342
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6343
  %coerce.dive = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %b, i32 0, i32 0, !dbg !6344
  %4 = load i8, i8* %coerce.dive, align 1, !dbg !6344
  %call1 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %3, i8 zeroext -6, i8 %4) #8, !dbg !6344
  %BERCTL_fa2 = bitcast %union.bcm3510_register_value* %b to %struct.anon.82*, !dbg !6345
  %5 = bitcast %struct.anon.82* %BERCTL_fa2 to i8*, !dbg !6346
  %bf.load3 = load i8, i8* %5, align 1, !dbg !6347
  %bf.clear4 = and i8 %bf.load3, -17, !dbg !6347
  %bf.set = or i8 %bf.clear4, 16, !dbg !6347
  store i8 %bf.set, i8* %5, align 1, !dbg !6347
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6348
  %coerce.dive5 = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %b, i32 0, i32 0, !dbg !6349
  %7 = load i8, i8* %coerce.dive5, align 1, !dbg !6349
  %call6 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %6, i8 zeroext -6, i8 %7) #8, !dbg !6349
  %BERCTL_fa7 = bitcast %union.bcm3510_register_value* %b to %struct.anon.82*, !dbg !6350
  %8 = bitcast %struct.anon.82* %BERCTL_fa7 to i8*, !dbg !6351
  %bf.load8 = load i8, i8* %8, align 1, !dbg !6352
  %bf.clear9 = and i8 %bf.load8, -17, !dbg !6352
  store i8 %bf.clear9, i8* %8, align 1, !dbg !6352
  %9 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6353
  %coerce.dive10 = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %b, i32 0, i32 0, !dbg !6354
  %10 = load i8, i8* %coerce.dive10, align 1, !dbg !6354
  %call11 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %9, i8 zeroext -6, i8 %10) #8, !dbg !6354
  %BERCTL_fa12 = bitcast %union.bcm3510_register_value* %b to %struct.anon.82*, !dbg !6355
  %11 = bitcast %struct.anon.82* %BERCTL_fa12 to i8*, !dbg !6356
  %bf.load13 = load i8, i8* %11, align 1, !dbg !6357
  %bf.clear14 = and i8 %bf.load13, -3, !dbg !6357
  %bf.set15 = or i8 %bf.clear14, 2, !dbg !6357
  store i8 %bf.set15, i8* %11, align 1, !dbg !6357
  %BERCTL_fa16 = bitcast %union.bcm3510_register_value* %b to %struct.anon.82*, !dbg !6358
  %12 = bitcast %struct.anon.82* %BERCTL_fa16 to i8*, !dbg !6359
  %bf.load17 = load i8, i8* %12, align 1, !dbg !6360
  %bf.clear18 = and i8 %bf.load17, -5, !dbg !6360
  %bf.set19 = or i8 %bf.clear18, 4, !dbg !6360
  store i8 %bf.set19, i8* %12, align 1, !dbg !6360
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6361
  %coerce.dive20 = getelementptr inbounds %union.bcm3510_register_value, %union.bcm3510_register_value* %b, i32 0, i32 0, !dbg !6362
  %14 = load i8, i8* %coerce.dive20, align 1, !dbg !6362
  %call21 = call i32 @bcm3510_writeB(%struct.bcm3510_state* %13, i8 zeroext -6, i8 %14) #8, !dbg !6362
  store i32 0, i32* %retval, align 4, !dbg !6363
  br label %return, !dbg !6363

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !6364
  ret i32 %15, !dbg !6364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_set_freq(%struct.bcm3510_state* %st, i32 %freq) #0 !dbg !6365 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %freq.addr = alloca i32, align 4
  %bc = alloca i8, align 1
  %a = alloca i8, align 1
  %n = alloca i16, align 2
  %YIntercept = alloca i32, align 4
  %Tfvco1 = alloca i32, align 4
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !6368, metadata !DIExpression()), !dbg !6369
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !6370, metadata !DIExpression()), !dbg !6371
  call void @llvm.dbg.declare(metadata i8* %bc, metadata !6372, metadata !DIExpression()), !dbg !6373
  call void @llvm.dbg.declare(metadata i8* %a, metadata !6374, metadata !DIExpression()), !dbg !6375
  call void @llvm.dbg.declare(metadata i16* %n, metadata !6376, metadata !DIExpression()), !dbg !6377
  call void @llvm.dbg.declare(metadata i32* %YIntercept, metadata !6378, metadata !DIExpression()), !dbg !6379
  call void @llvm.dbg.declare(metadata i32* %Tfvco1, metadata !6380, metadata !DIExpression()), !dbg !6381
  %0 = load i32, i32* %freq.addr, align 4, !dbg !6382
  %div = udiv i32 %0, 1000, !dbg !6382
  store i32 %div, i32* %freq.addr, align 4, !dbg !6382
  %1 = load i32, i32* @debug, align 4, !dbg !6383
  %and = and i32 1, %1, !dbg !6383
  %tobool = icmp ne i32 %and, 0, !dbg !6383
  br i1 %tobool, label %if.then, label %if.end, !dbg !6385

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %freq.addr, align 4, !dbg !6383
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 %2) #9, !dbg !6383
  br label %if.end, !dbg !6383

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %freq.addr, align 4, !dbg !6386
  %cmp = icmp ule i32 %3, 168000, !dbg !6388
  br i1 %cmp, label %if.then1, label %if.else, !dbg !6389

if.then1:                                         ; preds = %if.end
  store i8 28, i8* %bc, align 1, !dbg !6390
  br label %if.end6, !dbg !6391

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %freq.addr, align 4, !dbg !6392
  %cmp2 = icmp ule i32 %4, 378000, !dbg !6394
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !6395

if.then3:                                         ; preds = %if.else
  store i8 44, i8* %bc, align 1, !dbg !6396
  br label %if.end5, !dbg !6397

if.else4:                                         ; preds = %if.else
  store i8 48, i8* %bc, align 1, !dbg !6398
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then1
  %5 = load i32, i32* %freq.addr, align 4, !dbg !6399
  %cmp7 = icmp uge i32 %5, 470000, !dbg !6401
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !6402

if.then8:                                         ; preds = %if.end6
  %6 = load i32, i32* %freq.addr, align 4, !dbg !6403
  %sub = sub i32 %6, 470001, !dbg !6403
  store i32 %sub, i32* %freq.addr, align 4, !dbg !6403
  store i32 18805, i32* %YIntercept, align 4, !dbg !6405
  br label %if.end21, !dbg !6406

if.else9:                                         ; preds = %if.end6
  %7 = load i32, i32* %freq.addr, align 4, !dbg !6407
  %cmp10 = icmp uge i32 %7, 90000, !dbg !6409
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !6410

if.then11:                                        ; preds = %if.else9
  %8 = load i32, i32* %freq.addr, align 4, !dbg !6411
  %sub12 = sub i32 %8, 90001, !dbg !6411
  store i32 %sub12, i32* %freq.addr, align 4, !dbg !6411
  store i32 15005, i32* %YIntercept, align 4, !dbg !6413
  br label %if.end20, !dbg !6414

if.else13:                                        ; preds = %if.else9
  %9 = load i32, i32* %freq.addr, align 4, !dbg !6415
  %cmp14 = icmp uge i32 %9, 76000, !dbg !6417
  br i1 %cmp14, label %if.then15, label %if.else17, !dbg !6418

if.then15:                                        ; preds = %if.else13
  %10 = load i32, i32* %freq.addr, align 4, !dbg !6419
  %sub16 = sub i32 %10, 76001, !dbg !6419
  store i32 %sub16, i32* %freq.addr, align 4, !dbg !6419
  store i32 14865, i32* %YIntercept, align 4, !dbg !6421
  br label %if.end19, !dbg !6422

if.else17:                                        ; preds = %if.else13
  %11 = load i32, i32* %freq.addr, align 4, !dbg !6423
  %sub18 = sub i32 %11, 54001, !dbg !6423
  store i32 %sub18, i32* %freq.addr, align 4, !dbg !6423
  store i32 14645, i32* %YIntercept, align 4, !dbg !6425
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then11
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then8
  %12 = load i32, i32* %freq.addr, align 4, !dbg !6426
  %div22 = udiv i32 %12, 6000, !dbg !6427
  %mul = mul i32 %div22, 60, !dbg !6428
  %13 = load i32, i32* %YIntercept, align 4, !dbg !6429
  %add = add i32 %mul, %13, !dbg !6430
  %mul23 = mul i32 %add, 4, !dbg !6431
  %div24 = udiv i32 %mul23, 10, !dbg !6432
  store i32 %div24, i32* %Tfvco1, align 4, !dbg !6433
  %14 = load i32, i32* %Tfvco1, align 4, !dbg !6434
  %shr = ashr i32 %14, 6, !dbg !6435
  %conv = trunc i32 %shr to i16, !dbg !6434
  store i16 %conv, i16* %n, align 2, !dbg !6436
  %15 = load i32, i32* %Tfvco1, align 4, !dbg !6437
  %and25 = and i32 %15, 63, !dbg !6438
  %conv26 = trunc i32 %and25 to i8, !dbg !6437
  store i8 %conv26, i8* %a, align 1, !dbg !6439
  %16 = load i32, i32* @debug, align 4, !dbg !6440
  %and27 = and i32 1, %16, !dbg !6440
  %tobool28 = icmp ne i32 %and27, 0, !dbg !6440
  br i1 %tobool28, label %if.then29, label %if.end34, !dbg !6442

if.then29:                                        ; preds = %if.end21
  %17 = load i8, i8* %bc, align 1, !dbg !6440
  %conv30 = zext i8 %17 to i32, !dbg !6440
  %18 = load i16, i16* %n, align 2, !dbg !6440
  %conv31 = zext i16 %18 to i32, !dbg !6440
  %19 = load i8, i8* %a, align 1, !dbg !6440
  %conv32 = zext i8 %19 to i32, !dbg !6440
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %conv30, i32 %conv31, i32 %conv32) #9, !dbg !6440
  br label %if.end34, !dbg !6440

if.end34:                                         ; preds = %if.then29, %if.end21
  %20 = load i16, i16* %n, align 2, !dbg !6443
  %conv35 = zext i16 %20 to i32, !dbg !6443
  %cmp36 = icmp sge i32 %conv35, 16, !dbg !6445
  br i1 %cmp36, label %land.lhs.true, label %if.end43, !dbg !6446

land.lhs.true:                                    ; preds = %if.end34
  %21 = load i16, i16* %n, align 2, !dbg !6447
  %conv38 = zext i16 %21 to i32, !dbg !6447
  %cmp39 = icmp sle i32 %conv38, 2047, !dbg !6448
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !6449

if.then41:                                        ; preds = %land.lhs.true
  %22 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6450
  %23 = load i8, i8* %bc, align 1, !dbg !6451
  %24 = load i16, i16* %n, align 2, !dbg !6452
  %25 = load i8, i8* %a, align 1, !dbg !6453
  %call42 = call i32 @bcm3510_tuner_cmd(%struct.bcm3510_state* %22, i8 zeroext %23, i16 zeroext %24, i8 zeroext %25) #8, !dbg !6454
  store i32 %call42, i32* %retval, align 4, !dbg !6455
  br label %return, !dbg !6455

if.end43:                                         ; preds = %land.lhs.true, %if.end34
  store i32 -22, i32* %retval, align 4, !dbg !6456
  br label %return, !dbg !6456

return:                                           ; preds = %if.end43, %if.then41
  %26 = load i32, i32* %retval, align 4, !dbg !6457
  ret i32 %26, !dbg !6457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_tuner_cmd(%struct.bcm3510_state* %st, i8 zeroext %bc, i16 zeroext %n, i8 zeroext %a) #0 !dbg !6458 {
entry:
  %st.addr = alloca %struct.bcm3510_state*, align 8
  %bc.addr = alloca i8, align 1
  %n.addr = alloca i16, align 2
  %a.addr = alloca i8, align 1
  %c = alloca %struct.bcm3510_hab_cmd_tune, align 1
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !6461, metadata !DIExpression()), !dbg !6462
  store i8 %bc, i8* %bc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bc.addr, metadata !6463, metadata !DIExpression()), !dbg !6464
  store i16 %n, i16* %n.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %n.addr, metadata !6465, metadata !DIExpression()), !dbg !6466
  store i8 %a, i8* %a.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %a.addr, metadata !6467, metadata !DIExpression()), !dbg !6468
  call void @llvm.dbg.declare(metadata %struct.bcm3510_hab_cmd_tune* %c, metadata !6469, metadata !DIExpression()), !dbg !6489
  %0 = bitcast %struct.bcm3510_hab_cmd_tune* %c to i8*, !dbg !6490
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 36, i1 false), !dbg !6490
  %length = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 0, !dbg !6491
  store i8 16, i8* %length, align 1, !dbg !6492
  %clock_width = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 1, !dbg !6493
  store i8 0, i8* %clock_width, align 1, !dbg !6494
  %misc = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 2, !dbg !6495
  store i8 16, i8* %misc, align 1, !dbg !6496
  %TUNCTL_state = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 3, !dbg !6497
  store i8 64, i8* %TUNCTL_state, align 1, !dbg !6498
  %ctl_dat = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6499
  %arrayidx = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat, i64 0, i64 0, !dbg !6500
  %ctrl = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx, i32 0, i32 0, !dbg !6501
  %1 = bitcast %struct.anon.87* %ctrl to i8*, !dbg !6502
  %bf.load = load i8, i8* %1, align 1, !dbg !6503
  %bf.clear = and i8 %bf.load, -8, !dbg !6503
  %bf.set = or i8 %bf.clear, 7, !dbg !6503
  store i8 %bf.set, i8* %1, align 1, !dbg !6503
  %2 = load i8, i8* %bc.addr, align 1, !dbg !6504
  %conv = zext i8 %2 to i32, !dbg !6504
  %or = or i32 128, %conv, !dbg !6505
  %conv1 = trunc i32 %or to i8, !dbg !6506
  %ctl_dat2 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6507
  %arrayidx3 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat2, i64 0, i64 0, !dbg !6508
  %data = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx3, i32 0, i32 1, !dbg !6509
  store i8 %conv1, i8* %data, align 1, !dbg !6510
  %ctl_dat4 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6511
  %arrayidx5 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat4, i64 0, i64 1, !dbg !6512
  %ctrl6 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx5, i32 0, i32 0, !dbg !6513
  %3 = bitcast %struct.anon.87* %ctrl6 to i8*, !dbg !6514
  %bf.load7 = load i8, i8* %3, align 1, !dbg !6515
  %bf.clear8 = and i8 %bf.load7, -8, !dbg !6515
  %bf.set9 = or i8 %bf.clear8, 7, !dbg !6515
  store i8 %bf.set9, i8* %3, align 1, !dbg !6515
  %ctl_dat10 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6516
  %arrayidx11 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat10, i64 0, i64 1, !dbg !6517
  %data12 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx11, i32 0, i32 1, !dbg !6518
  store i8 4, i8* %data12, align 1, !dbg !6519
  %ctl_dat13 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6520
  %arrayidx14 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat13, i64 0, i64 2, !dbg !6521
  %ctrl15 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx14, i32 0, i32 0, !dbg !6522
  %4 = bitcast %struct.anon.87* %ctrl15 to i8*, !dbg !6523
  %bf.load16 = load i8, i8* %4, align 1, !dbg !6524
  %bf.clear17 = and i8 %bf.load16, -8, !dbg !6524
  %bf.set18 = or i8 %bf.clear17, 2, !dbg !6524
  store i8 %bf.set18, i8* %4, align 1, !dbg !6524
  %ctl_dat19 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6525
  %arrayidx20 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat19, i64 0, i64 2, !dbg !6526
  %data21 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx20, i32 0, i32 1, !dbg !6527
  store i8 32, i8* %data21, align 1, !dbg !6528
  %ctl_dat22 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6529
  %arrayidx23 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat22, i64 0, i64 3, !dbg !6530
  %ctrl24 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx23, i32 0, i32 0, !dbg !6531
  %5 = bitcast %struct.anon.87* %ctrl24 to i8*, !dbg !6532
  %bf.load25 = load i8, i8* %5, align 1, !dbg !6533
  %bf.clear26 = and i8 %bf.load25, -8, !dbg !6533
  %bf.set27 = or i8 %bf.clear26, 2, !dbg !6533
  store i8 %bf.set27, i8* %5, align 1, !dbg !6533
  %ctl_dat28 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6534
  %arrayidx29 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat28, i64 0, i64 3, !dbg !6535
  %ctrl30 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx29, i32 0, i32 0, !dbg !6536
  %6 = bitcast %struct.anon.87* %ctrl30 to i8*, !dbg !6537
  %bf.load31 = load i8, i8* %6, align 1, !dbg !6538
  %bf.clear32 = and i8 %bf.load31, -33, !dbg !6538
  %bf.set33 = or i8 %bf.clear32, 32, !dbg !6538
  store i8 %bf.set33, i8* %6, align 1, !dbg !6538
  %ctl_dat34 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6539
  %arrayidx35 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat34, i64 0, i64 3, !dbg !6540
  %ctrl36 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx35, i32 0, i32 0, !dbg !6541
  %7 = bitcast %struct.anon.87* %ctrl36 to i8*, !dbg !6542
  %bf.load37 = load i8, i8* %7, align 1, !dbg !6543
  %bf.clear38 = and i8 %bf.load37, -65, !dbg !6543
  %bf.set39 = or i8 %bf.clear38, 64, !dbg !6543
  store i8 %bf.set39, i8* %7, align 1, !dbg !6543
  %ctl_dat40 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6544
  %arrayidx41 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat40, i64 0, i64 3, !dbg !6545
  %data42 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx41, i32 0, i32 1, !dbg !6546
  store i8 64, i8* %data42, align 1, !dbg !6547
  %ctl_dat43 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6548
  %arrayidx44 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat43, i64 0, i64 4, !dbg !6549
  %ctrl45 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx44, i32 0, i32 0, !dbg !6550
  %8 = bitcast %struct.anon.87* %ctrl45 to i8*, !dbg !6551
  %bf.load46 = load i8, i8* %8, align 1, !dbg !6552
  %bf.clear47 = and i8 %bf.load46, -8, !dbg !6552
  %bf.set48 = or i8 %bf.clear47, 7, !dbg !6552
  store i8 %bf.set48, i8* %8, align 1, !dbg !6552
  %9 = load i16, i16* %n.addr, align 2, !dbg !6553
  %conv49 = zext i16 %9 to i32, !dbg !6553
  %shr = ashr i32 %conv49, 3, !dbg !6554
  %conv50 = trunc i32 %shr to i8, !dbg !6553
  %ctl_dat51 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6555
  %arrayidx52 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat51, i64 0, i64 4, !dbg !6556
  %data53 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx52, i32 0, i32 1, !dbg !6557
  store i8 %conv50, i8* %data53, align 1, !dbg !6558
  %ctl_dat54 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6559
  %arrayidx55 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat54, i64 0, i64 5, !dbg !6560
  %ctrl56 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx55, i32 0, i32 0, !dbg !6561
  %10 = bitcast %struct.anon.87* %ctrl56 to i8*, !dbg !6562
  %bf.load57 = load i8, i8* %10, align 1, !dbg !6563
  %bf.clear58 = and i8 %bf.load57, -8, !dbg !6563
  %bf.set59 = or i8 %bf.clear58, 7, !dbg !6563
  store i8 %bf.set59, i8* %10, align 1, !dbg !6563
  %11 = load i16, i16* %n.addr, align 2, !dbg !6564
  %conv60 = zext i16 %11 to i32, !dbg !6564
  %and = and i32 %conv60, 7, !dbg !6565
  %shl = shl i32 %and, 5, !dbg !6566
  %12 = load i8, i8* %a.addr, align 1, !dbg !6567
  %conv61 = zext i8 %12 to i32, !dbg !6567
  %shr62 = ashr i32 %conv61, 2, !dbg !6568
  %or63 = or i32 %shl, %shr62, !dbg !6569
  %conv64 = trunc i32 %or63 to i8, !dbg !6570
  %ctl_dat65 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6571
  %arrayidx66 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat65, i64 0, i64 5, !dbg !6572
  %data67 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx66, i32 0, i32 1, !dbg !6573
  store i8 %conv64, i8* %data67, align 1, !dbg !6574
  %ctl_dat68 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6575
  %arrayidx69 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat68, i64 0, i64 6, !dbg !6576
  %ctrl70 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx69, i32 0, i32 0, !dbg !6577
  %13 = bitcast %struct.anon.87* %ctrl70 to i8*, !dbg !6578
  %bf.load71 = load i8, i8* %13, align 1, !dbg !6579
  %bf.clear72 = and i8 %bf.load71, -8, !dbg !6579
  %bf.set73 = or i8 %bf.clear72, 2, !dbg !6579
  store i8 %bf.set73, i8* %13, align 1, !dbg !6579
  %14 = load i8, i8* %a.addr, align 1, !dbg !6580
  %conv74 = zext i8 %14 to i32, !dbg !6580
  %shl75 = shl i32 %conv74, 6, !dbg !6581
  %and76 = and i32 %shl75, 223, !dbg !6582
  %conv77 = trunc i32 %and76 to i8, !dbg !6583
  %ctl_dat78 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6584
  %arrayidx79 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat78, i64 0, i64 6, !dbg !6585
  %data80 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx79, i32 0, i32 1, !dbg !6586
  store i8 %conv77, i8* %data80, align 1, !dbg !6587
  %ctl_dat81 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6588
  %arrayidx82 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat81, i64 0, i64 7, !dbg !6589
  %ctrl83 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx82, i32 0, i32 0, !dbg !6590
  %15 = bitcast %struct.anon.87* %ctrl83 to i8*, !dbg !6591
  %bf.load84 = load i8, i8* %15, align 1, !dbg !6592
  %bf.clear85 = and i8 %bf.load84, -8, !dbg !6592
  %bf.set86 = or i8 %bf.clear85, 2, !dbg !6592
  store i8 %bf.set86, i8* %15, align 1, !dbg !6592
  %ctl_dat87 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6593
  %arrayidx88 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat87, i64 0, i64 7, !dbg !6594
  %ctrl89 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx88, i32 0, i32 0, !dbg !6595
  %16 = bitcast %struct.anon.87* %ctrl89 to i8*, !dbg !6596
  %bf.load90 = load i8, i8* %16, align 1, !dbg !6597
  %bf.clear91 = and i8 %bf.load90, -33, !dbg !6597
  %bf.set92 = or i8 %bf.clear91, 32, !dbg !6597
  store i8 %bf.set92, i8* %16, align 1, !dbg !6597
  %ctl_dat93 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6598
  %arrayidx94 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat93, i64 0, i64 7, !dbg !6599
  %ctrl95 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx94, i32 0, i32 0, !dbg !6600
  %17 = bitcast %struct.anon.87* %ctrl95 to i8*, !dbg !6601
  %bf.load96 = load i8, i8* %17, align 1, !dbg !6602
  %bf.clear97 = and i8 %bf.load96, -65, !dbg !6602
  %bf.set98 = or i8 %bf.clear97, 64, !dbg !6602
  store i8 %bf.set98, i8* %17, align 1, !dbg !6602
  %ctl_dat99 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6603
  %arrayidx100 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat99, i64 0, i64 7, !dbg !6604
  %data101 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx100, i32 0, i32 1, !dbg !6605
  store i8 64, i8* %data101, align 1, !dbg !6606
  %ctl_dat102 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6607
  %arrayidx103 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat102, i64 0, i64 8, !dbg !6608
  %ctrl104 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx103, i32 0, i32 0, !dbg !6609
  %18 = bitcast %struct.anon.87* %ctrl104 to i8*, !dbg !6610
  %bf.load105 = load i8, i8* %18, align 1, !dbg !6611
  %bf.clear106 = and i8 %bf.load105, -8, !dbg !6611
  %bf.set107 = or i8 %bf.clear106, 7, !dbg !6611
  store i8 %bf.set107, i8* %18, align 1, !dbg !6611
  %ctl_dat108 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6612
  %arrayidx109 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat108, i64 0, i64 8, !dbg !6613
  %data110 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx109, i32 0, i32 1, !dbg !6614
  store i8 -128, i8* %data110, align 1, !dbg !6615
  %ctl_dat111 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6616
  %arrayidx112 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat111, i64 0, i64 9, !dbg !6617
  %ctrl113 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx112, i32 0, i32 0, !dbg !6618
  %19 = bitcast %struct.anon.87* %ctrl113 to i8*, !dbg !6619
  %bf.load114 = load i8, i8* %19, align 1, !dbg !6620
  %bf.clear115 = and i8 %bf.load114, -8, !dbg !6620
  %bf.set116 = or i8 %bf.clear115, 7, !dbg !6620
  store i8 %bf.set116, i8* %19, align 1, !dbg !6620
  %ctl_dat117 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6621
  %arrayidx118 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat117, i64 0, i64 9, !dbg !6622
  %data119 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx118, i32 0, i32 1, !dbg !6623
  store i8 16, i8* %data119, align 1, !dbg !6624
  %ctl_dat120 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6625
  %arrayidx121 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat120, i64 0, i64 10, !dbg !6626
  %ctrl122 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx121, i32 0, i32 0, !dbg !6627
  %20 = bitcast %struct.anon.87* %ctrl122 to i8*, !dbg !6628
  %bf.load123 = load i8, i8* %20, align 1, !dbg !6629
  %bf.clear124 = and i8 %bf.load123, -8, !dbg !6629
  %bf.set125 = or i8 %bf.clear124, 2, !dbg !6629
  store i8 %bf.set125, i8* %20, align 1, !dbg !6629
  %ctl_dat126 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6630
  %arrayidx127 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat126, i64 0, i64 10, !dbg !6631
  %data128 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx127, i32 0, i32 1, !dbg !6632
  store i8 32, i8* %data128, align 1, !dbg !6633
  %ctl_dat129 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6634
  %arrayidx130 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat129, i64 0, i64 11, !dbg !6635
  %ctrl131 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx130, i32 0, i32 0, !dbg !6636
  %21 = bitcast %struct.anon.87* %ctrl131 to i8*, !dbg !6637
  %bf.load132 = load i8, i8* %21, align 1, !dbg !6638
  %bf.clear133 = and i8 %bf.load132, -8, !dbg !6638
  %bf.set134 = or i8 %bf.clear133, 2, !dbg !6638
  store i8 %bf.set134, i8* %21, align 1, !dbg !6638
  %ctl_dat135 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6639
  %arrayidx136 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat135, i64 0, i64 11, !dbg !6640
  %ctrl137 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx136, i32 0, i32 0, !dbg !6641
  %22 = bitcast %struct.anon.87* %ctrl137 to i8*, !dbg !6642
  %bf.load138 = load i8, i8* %22, align 1, !dbg !6643
  %bf.clear139 = and i8 %bf.load138, -33, !dbg !6643
  %bf.set140 = or i8 %bf.clear139, 32, !dbg !6643
  store i8 %bf.set140, i8* %22, align 1, !dbg !6643
  %ctl_dat141 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6644
  %arrayidx142 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat141, i64 0, i64 11, !dbg !6645
  %ctrl143 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx142, i32 0, i32 0, !dbg !6646
  %23 = bitcast %struct.anon.87* %ctrl143 to i8*, !dbg !6647
  %bf.load144 = load i8, i8* %23, align 1, !dbg !6648
  %bf.clear145 = and i8 %bf.load144, 127, !dbg !6648
  %bf.set146 = or i8 %bf.clear145, -128, !dbg !6648
  store i8 %bf.set146, i8* %23, align 1, !dbg !6648
  %ctl_dat147 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6649
  %arrayidx148 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat147, i64 0, i64 11, !dbg !6650
  %data149 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx148, i32 0, i32 1, !dbg !6651
  store i8 64, i8* %data149, align 1, !dbg !6652
  %ctl_dat150 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6653
  %arrayidx151 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat150, i64 0, i64 12, !dbg !6654
  %ctrl152 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx151, i32 0, i32 0, !dbg !6655
  %24 = bitcast %struct.anon.87* %ctrl152 to i8*, !dbg !6656
  %bf.load153 = load i8, i8* %24, align 1, !dbg !6657
  %bf.clear154 = and i8 %bf.load153, -8, !dbg !6657
  %bf.set155 = or i8 %bf.clear154, 7, !dbg !6657
  store i8 %bf.set155, i8* %24, align 1, !dbg !6657
  %ctl_dat156 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6658
  %arrayidx157 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat156, i64 0, i64 12, !dbg !6659
  %data158 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx157, i32 0, i32 1, !dbg !6660
  store i8 42, i8* %data158, align 1, !dbg !6661
  %ctl_dat159 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6662
  %arrayidx160 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat159, i64 0, i64 13, !dbg !6663
  %ctrl161 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx160, i32 0, i32 0, !dbg !6664
  %25 = bitcast %struct.anon.87* %ctrl161 to i8*, !dbg !6665
  %bf.load162 = load i8, i8* %25, align 1, !dbg !6666
  %bf.clear163 = and i8 %bf.load162, -8, !dbg !6666
  %bf.set164 = or i8 %bf.clear163, 7, !dbg !6666
  store i8 %bf.set164, i8* %25, align 1, !dbg !6666
  %ctl_dat165 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6667
  %arrayidx166 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat165, i64 0, i64 13, !dbg !6668
  %data167 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx166, i32 0, i32 1, !dbg !6669
  store i8 -114, i8* %data167, align 1, !dbg !6670
  %ctl_dat168 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6671
  %arrayidx169 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat168, i64 0, i64 14, !dbg !6672
  %ctrl170 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx169, i32 0, i32 0, !dbg !6673
  %26 = bitcast %struct.anon.87* %ctrl170 to i8*, !dbg !6674
  %bf.load171 = load i8, i8* %26, align 1, !dbg !6675
  %bf.clear172 = and i8 %bf.load171, -8, !dbg !6675
  %bf.set173 = or i8 %bf.clear172, 2, !dbg !6675
  store i8 %bf.set173, i8* %26, align 1, !dbg !6675
  %ctl_dat174 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6676
  %arrayidx175 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat174, i64 0, i64 14, !dbg !6677
  %data176 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx175, i32 0, i32 1, !dbg !6678
  store i8 0, i8* %data176, align 1, !dbg !6679
  %ctl_dat177 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6680
  %arrayidx178 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat177, i64 0, i64 15, !dbg !6681
  %ctrl179 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx178, i32 0, i32 0, !dbg !6682
  %27 = bitcast %struct.anon.87* %ctrl179 to i8*, !dbg !6683
  %bf.load180 = load i8, i8* %27, align 1, !dbg !6684
  %bf.clear181 = and i8 %bf.load180, -8, !dbg !6684
  %bf.set182 = or i8 %bf.clear181, 2, !dbg !6684
  store i8 %bf.set182, i8* %27, align 1, !dbg !6684
  %ctl_dat183 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6685
  %arrayidx184 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat183, i64 0, i64 15, !dbg !6686
  %ctrl185 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx184, i32 0, i32 0, !dbg !6687
  %28 = bitcast %struct.anon.87* %ctrl185 to i8*, !dbg !6688
  %bf.load186 = load i8, i8* %28, align 1, !dbg !6689
  %bf.clear187 = and i8 %bf.load186, -33, !dbg !6689
  %bf.set188 = or i8 %bf.clear187, 32, !dbg !6689
  store i8 %bf.set188, i8* %28, align 1, !dbg !6689
  %ctl_dat189 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6690
  %arrayidx190 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat189, i64 0, i64 15, !dbg !6691
  %ctrl191 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx190, i32 0, i32 0, !dbg !6692
  %29 = bitcast %struct.anon.87* %ctrl191 to i8*, !dbg !6693
  %bf.load192 = load i8, i8* %29, align 1, !dbg !6694
  %bf.clear193 = and i8 %bf.load192, 127, !dbg !6694
  %bf.set194 = or i8 %bf.clear193, -128, !dbg !6694
  store i8 %bf.set194, i8* %29, align 1, !dbg !6694
  %ctl_dat195 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %c, i32 0, i32 4, !dbg !6695
  %arrayidx196 = getelementptr [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair], [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair]* %ctl_dat195, i64 0, i64 15, !dbg !6696
  %data197 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune_ctrl_data_pair, %struct.bcm3510_hab_cmd_tune_ctrl_data_pair* %arrayidx196, i32 0, i32 1, !dbg !6697
  store i8 64, i8* %data197, align 1, !dbg !6698
  %30 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6699
  %31 = bitcast %struct.bcm3510_hab_cmd_tune* %c to i8*, !dbg !6700
  %call = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %30, i8 zeroext 56, i8 zeroext 22, i8* %31, i8 zeroext 36, i8* null, i8 zeroext 0) #8, !dbg !6701
  ret i32 %call, !dbg !6702
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm3510_refresh_state(%struct.bcm3510_state* %st) #0 !dbg !6703 {
entry:
  %st.addr = alloca %struct.bcm3510_state*, align 8
  store %struct.bcm3510_state* %st, %struct.bcm3510_state** %st.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm3510_state** %st.addr, metadata !6704, metadata !DIExpression()), !dbg !6705
  %0 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6706
  %next_status_check = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %0, i32 0, i32 5, !dbg !6706
  %1 = load i64, i64* %next_status_check, align 8, !dbg !6706
  %2 = load volatile i64, i64* @jiffies, align 8, !dbg !6706
  %sub = sub i64 %1, %2, !dbg !6706
  %cmp = icmp slt i64 %sub, 0, !dbg !6706
  br i1 %cmp, label %if.then, label %if.end, !dbg !6708

if.then:                                          ; preds = %entry
  %3 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6709
  %4 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6711
  %status1 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %4, i32 0, i32 7, !dbg !6712
  %5 = bitcast %struct.bcm3510_hab_cmd_status1* %status1 to i8*, !dbg !6713
  %call = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %3, i8 zeroext 56, i8 zeroext 8, i8* null, i8 zeroext 0, i8* %5, i8 zeroext 38) #8, !dbg !6714
  %6 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6715
  %7 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6716
  %status2 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %7, i32 0, i32 8, !dbg !6717
  %8 = bitcast %struct.bcm3510_hab_cmd_status2* %status2 to i8*, !dbg !6718
  %call1 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %6, i8 zeroext 56, i8 zeroext 20, i8* null, i8 zeroext 0, i8* %8, i8 zeroext 22) #8, !dbg !6719
  %9 = load volatile i64, i64* @jiffies, align 8, !dbg !6720
  %10 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6721
  %status_check_interval = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %10, i32 0, i32 6, !dbg !6722
  %11 = load i64, i64* %status_check_interval, align 8, !dbg !6722
  %mul = mul i64 %11, 250, !dbg !6723
  %div = udiv i64 %mul, 1000, !dbg !6724
  %add = add i64 %9, %div, !dbg !6725
  %12 = load %struct.bcm3510_state*, %struct.bcm3510_state** %st.addr, align 8, !dbg !6726
  %next_status_check2 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %12, i32 0, i32 5, !dbg !6727
  store i64 %add, i64* %next_status_check2, align 8, !dbg !6728
  br label %if.end, !dbg !6729

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !6730
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
!llvm.module.flags = !{!4445, !4446, !4447, !4448}
!llvm.ident = !{!4449}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 67, type: !4442, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !306, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/bcm3510.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !{!291, !293, !294, !295, !301, !303, !305}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !292, line: 148, baseType: !7)
!292 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!294 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !297, line: 17, baseType: !298)
!297 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !299, line: 21, baseType: !300)
!299 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !299, line: 24, baseType: !302)
!302 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !304, line: 29, baseType: !301)
!304 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!306 = !{!307, !372, !377, !382, !4419, !4424, !4429, !4434, !4437, !0, !4439}
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 67, type: !309, isLocal: true, isDefinition: true, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !311, line: 69, size: 320, elements: !312)
!311 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!312 = !{!313, !317, !321, !342, !345, !349, !350}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !311, line: 70, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !310, file: !311, line: 71, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !320, line: 76, flags: DIFlagFwdDecl)
!320 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !310, file: !311, line: 72, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !311, line: 47, size: 256, elements: !325)
!325 = !{!326, !327, !333, !338}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !311, line: 49, baseType: !7, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !324, file: !311, line: 51, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !314, !332}
!331 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !324, file: !311, line: 53, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!331, !337, !332}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !324, file: !311, line: 55, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !293}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !310, file: !311, line: 73, baseType: !343, size: 16, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !297, line: 19, baseType: !301)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !310, file: !311, line: 74, baseType: !346, size: 8, offset: 208)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !297, line: 16, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !299, line: 20, baseType: !348)
!348 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !311, line: 75, baseType: !296, size: 8, offset: 216)
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !311, line: 76, baseType: !351, size: 64, offset: 256)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !311, line: 76, size: 64, elements: !352)
!352 = !{!353, !354, !361}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !351, file: !311, line: 77, baseType: !293, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !351, file: !311, line: 78, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !311, line: 86, size: 128, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !357, file: !311, line: 87, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !357, file: !311, line: 88, baseType: !337, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !351, file: !311, line: 79, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !311, line: 92, size: 256, elements: !365)
!365 = !{!366, !367, !368, !370, !371}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !364, file: !311, line: 94, baseType: !7, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !364, file: !311, line: 95, baseType: !7, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !364, file: !311, line: 96, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !364, file: !311, line: 97, baseType: !322, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !364, file: !311, line: 98, baseType: !293, size: 64, offset: 192)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 67, type: !374, isLocal: true, isDefinition: true, align: 8)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 216, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 27)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 68, type: !379, isLocal: true, isDefinition: true, align: 8)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 512, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 64)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "__key", scope: !384, file: !3, line: 816, type: !1120, isLocal: true, isDefinition: true)
!384 = distinct !DISubprogram(name: "bcm3510_attach", scope: !3, file: !3, line: 795, type: !385, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !745)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !4278, !4297}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !389)
!389 = !{!390, !404, !697, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4276, !4277}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !388, file: !51, line: 687, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !392, line: 19, size: 32, elements: !393)
!392 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !391, file: !392, line: 20, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !396, line: 113, baseType: !397)
!396 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !396, line: 111, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !397, file: !396, line: 112, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !292, line: 168, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 166, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !401, file: !292, line: 167, baseType: !331, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !388, file: !51, line: 688, baseType: !405, size: 6016, offset: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !406)
!406 = !{!407, !424, !428, !432, !433, !434, !438, !439, !445, !452, !456, !457, !467, !552, !556, !561, !566, !567, !568, !569, !581, !592, !596, !600, !604, !608, !613, !617, !618, !619, !623, !679}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !405, file: !51, line: 436, baseType: !408, size: 1280)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !409)
!409 = !{!410, !414, !417, !418, !419, !420, !421, !422, !423}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !51, line: 339, baseType: !411, size: 1024)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 1024, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !408, file: !51, line: 340, baseType: !415, size: 32, offset: 1024)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !297, line: 21, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !299, line: 27, baseType: !7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !408, file: !51, line: 341, baseType: !415, size: 32, offset: 1056)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !408, file: !51, line: 342, baseType: !415, size: 32, offset: 1088)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !408, file: !51, line: 343, baseType: !415, size: 32, offset: 1120)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !408, file: !51, line: 344, baseType: !415, size: 32, offset: 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !408, file: !51, line: 345, baseType: !415, size: 32, offset: 1184)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !408, file: !51, line: 346, baseType: !415, size: 32, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !408, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !405, file: !51, line: 438, baseType: !425, size: 64, offset: 1280)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !405, file: !51, line: 440, baseType: !429, size: 64, offset: 1344)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !387}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !405, file: !51, line: 441, baseType: !429, size: 64, offset: 1408)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !405, file: !51, line: 442, baseType: !429, size: 64, offset: 1472)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !405, file: !51, line: 444, baseType: !435, size: 64, offset: 1536)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!331, !387}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !405, file: !51, line: 445, baseType: !435, size: 64, offset: 1600)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !405, file: !51, line: 447, baseType: !440, size: 64, offset: 1664)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!331, !387, !443, !331}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !405, file: !51, line: 450, baseType: !446, size: 64, offset: 1728)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!331, !387, !449, !7, !369, !451}
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !292, line: 30, baseType: !450)
!450 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !405, file: !51, line: 457, baseType: !453, size: 64, offset: 1792)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!50, !387}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !405, file: !51, line: 460, baseType: !435, size: 64, offset: 1856)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !405, file: !51, line: 461, baseType: !458, size: 64, offset: 1920)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!331, !387, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !462, file: !51, line: 70, baseType: !331, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !462, file: !51, line: 71, baseType: !331, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !462, file: !51, line: 72, baseType: !331, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !405, file: !51, line: 463, baseType: !468, size: 64, offset: 1984)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!331, !387, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !545, !546, !547, !548, !549, !550, !551}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !472, file: !51, line: 587, baseType: !415, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !472, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !472, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !472, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !472, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !472, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !472, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !472, file: !51, line: 595, baseType: !415, size: 32, offset: 224)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !472, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !472, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !472, file: !51, line: 598, baseType: !415, size: 32, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !472, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !472, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !472, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !472, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !472, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !472, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !472, file: !51, line: 610, baseType: !296, size: 8, offset: 544)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !472, file: !51, line: 611, baseType: !296, size: 8, offset: 552)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !472, file: !51, line: 612, baseType: !296, size: 8, offset: 560)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !472, file: !51, line: 613, baseType: !415, size: 32, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !472, file: !51, line: 614, baseType: !415, size: 32, offset: 608)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !472, file: !51, line: 615, baseType: !296, size: 8, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !472, file: !51, line: 621, baseType: !498, size: 384, offset: 672)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 384, elements: !505)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !51, line: 616, size: 128, elements: !500)
!500 = !{!501, !502, !503, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !499, file: !51, line: 617, baseType: !296, size: 8)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !499, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !499, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !499, file: !51, line: 620, baseType: !296, size: 8, offset: 96)
!505 = !{!506}
!506 = !DISubrange(count: 3)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !472, file: !51, line: 624, baseType: !415, size: 32, offset: 1056)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !472, file: !51, line: 627, baseType: !415, size: 32, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !472, file: !51, line: 630, baseType: !296, size: 8, offset: 1120)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !472, file: !51, line: 631, baseType: !296, size: 8, offset: 1128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !472, file: !51, line: 632, baseType: !296, size: 8, offset: 1136)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !472, file: !51, line: 633, baseType: !296, size: 8, offset: 1144)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !472, file: !51, line: 634, baseType: !296, size: 8, offset: 1152)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !472, file: !51, line: 635, baseType: !296, size: 8, offset: 1160)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !472, file: !51, line: 637, baseType: !296, size: 8, offset: 1168)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !472, file: !51, line: 638, baseType: !296, size: 8, offset: 1176)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !472, file: !51, line: 639, baseType: !296, size: 8, offset: 1184)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !472, file: !51, line: 640, baseType: !296, size: 8, offset: 1192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !472, file: !51, line: 641, baseType: !296, size: 8, offset: 1200)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !472, file: !51, line: 642, baseType: !296, size: 8, offset: 1208)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !472, file: !51, line: 643, baseType: !296, size: 8, offset: 1216)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !472, file: !51, line: 644, baseType: !296, size: 8, offset: 1224)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !472, file: !51, line: 645, baseType: !296, size: 8, offset: 1232)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !472, file: !51, line: 647, baseType: !415, size: 32, offset: 1248)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !472, file: !51, line: 650, baseType: !526, size: 296, offset: 1280)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !526, file: !6, line: 826, baseType: !298, size: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !526, file: !6, line: 827, baseType: !530, size: 288, offset: 8)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 288, elements: !543)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !531, file: !6, line: 804, baseType: !298, size: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !6, line: 805, baseType: !535, size: 64, offset: 8)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !6, line: 805, size: 64, elements: !536)
!536 = !{!537, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !535, file: !6, line: 806, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !299, line: 31, baseType: !539)
!539 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !535, file: !6, line: 807, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !299, line: 30, baseType: !542)
!542 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!543 = !{!544}
!544 = !DISubrange(count: 4)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !472, file: !51, line: 651, baseType: !526, size: 296, offset: 1576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !472, file: !51, line: 652, baseType: !526, size: 296, offset: 1872)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !472, file: !51, line: 653, baseType: !526, size: 296, offset: 2168)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !472, file: !51, line: 654, baseType: !526, size: 296, offset: 2464)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !472, file: !51, line: 655, baseType: !526, size: 296, offset: 2760)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !472, file: !51, line: 656, baseType: !526, size: 296, offset: 3056)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !472, file: !51, line: 657, baseType: !526, size: 296, offset: 3352)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !405, file: !51, line: 466, baseType: !553, size: 64, offset: 2048)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!331, !387, !451}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !405, file: !51, line: 467, baseType: !557, size: 64, offset: 2112)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!331, !387, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !405, file: !51, line: 468, baseType: !562, size: 64, offset: 2176)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!331, !387, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !405, file: !51, line: 469, baseType: !562, size: 64, offset: 2240)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !405, file: !51, line: 470, baseType: !557, size: 64, offset: 2304)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !405, file: !51, line: 472, baseType: !435, size: 64, offset: 2368)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !405, file: !51, line: 473, baseType: !570, size: 64, offset: 2432)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!331, !387, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !575)
!575 = !{!576, !580}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !574, file: !6, line: 174, baseType: !577, size: 48)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 48, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 6)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !574, file: !6, line: 175, baseType: !298, size: 8, offset: 48)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !405, file: !51, line: 474, baseType: !582, size: 64, offset: 2496)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!331, !387, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !587)
!587 = !{!588, !590, !591}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !586, file: !6, line: 196, baseType: !589, size: 32)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 32, elements: !543)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !586, file: !6, line: 197, baseType: !298, size: 8, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !586, file: !6, line: 198, baseType: !331, size: 32, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !405, file: !51, line: 475, baseType: !593, size: 64, offset: 2560)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!331, !387, !171}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !405, file: !51, line: 477, baseType: !597, size: 64, offset: 2624)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!331, !387, !78}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !405, file: !51, line: 478, baseType: !601, size: 64, offset: 2688)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!331, !387, !73}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !405, file: !51, line: 480, baseType: !605, size: 64, offset: 2752)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!331, !387, !294}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !405, file: !51, line: 481, baseType: !609, size: 64, offset: 2816)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!331, !387, !612}
!612 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !405, file: !51, line: 482, baseType: !614, size: 64, offset: 2880)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!331, !387, !331}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !405, file: !51, line: 483, baseType: !614, size: 64, offset: 2944)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !405, file: !51, line: 484, baseType: !435, size: 64, offset: 3008)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !405, file: !51, line: 490, baseType: !620, size: 64, offset: 3072)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!175, !387}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !405, file: !51, line: 492, baseType: !624, size: 2304, offset: 3136)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !625)
!625 = !{!626, !636, !637, !638, !639, !640, !641, !642, !654, !658, !659, !660, !661, !662, !663, !670, !674, !678}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !624, file: !51, line: 228, baseType: !627, size: 1216)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !627, file: !51, line: 89, baseType: !411, size: 1024)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !627, file: !51, line: 91, baseType: !415, size: 32, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !627, file: !51, line: 92, baseType: !415, size: 32, offset: 1056)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !627, file: !51, line: 93, baseType: !415, size: 32, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !627, file: !51, line: 95, baseType: !415, size: 32, offset: 1120)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !627, file: !51, line: 96, baseType: !415, size: 32, offset: 1152)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !627, file: !51, line: 97, baseType: !415, size: 32, offset: 1184)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !624, file: !51, line: 230, baseType: !429, size: 64, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !624, file: !51, line: 231, baseType: !435, size: 64, offset: 1280)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !624, file: !51, line: 232, baseType: !435, size: 64, offset: 1344)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !624, file: !51, line: 233, baseType: !435, size: 64, offset: 1408)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !624, file: !51, line: 234, baseType: !435, size: 64, offset: 1472)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !624, file: !51, line: 237, baseType: !435, size: 64, offset: 1536)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !624, file: !51, line: 238, baseType: !643, size: 64, offset: 1600)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!331, !387, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !648)
!648 = !{!649, !650, !651, !652}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !647, file: !51, line: 115, baseType: !7, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !647, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !647, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !647, file: !51, line: 118, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !297, line: 23, baseType: !538)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !624, file: !51, line: 240, baseType: !655, size: 64, offset: 1664)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!331, !387, !293}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !624, file: !51, line: 242, baseType: !557, size: 64, offset: 1728)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !624, file: !51, line: 243, baseType: !557, size: 64, offset: 1792)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !624, file: !51, line: 244, baseType: !557, size: 64, offset: 1856)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !624, file: !51, line: 248, baseType: !557, size: 64, offset: 1920)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !624, file: !51, line: 249, baseType: !562, size: 64, offset: 1984)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !624, file: !51, line: 250, baseType: !664, size: 64, offset: 2048)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!331, !387, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !297, line: 20, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !299, line: 26, baseType: !331)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !624, file: !51, line: 258, baseType: !671, size: 64, offset: 2112)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!331, !387, !295, !331}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !624, file: !51, line: 267, baseType: !675, size: 64, offset: 2176)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!331, !387, !415}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !624, file: !51, line: 268, baseType: !675, size: 64, offset: 2240)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !405, file: !51, line: 493, baseType: !680, size: 576, offset: 5440)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !681)
!681 = !{!682, !686, !690, !691, !692, !693, !694, !695, !696}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !680, file: !51, line: 304, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !683, file: !51, line: 277, baseType: !337, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !680, file: !51, line: 306, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !387, !646}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !680, file: !51, line: 308, baseType: !562, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !680, file: !51, line: 309, baseType: !664, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !680, file: !51, line: 310, baseType: !429, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !680, file: !51, line: 311, baseType: !429, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !680, file: !51, line: 312, baseType: !429, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !680, file: !51, line: 313, baseType: !614, size: 64, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !680, file: !51, line: 316, baseType: !655, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !388, file: !51, line: 689, baseType: !698, size: 64, offset: 6080)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !700)
!700 = !{!701, !702, !708, !709, !710, !712, !713, !4244, !4245, !4246, !4265}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !699, file: !272, line: 102, baseType: !331, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !699, file: !272, line: 103, baseType: !703, size: 128, offset: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !292, line: 178, size: 128, elements: !704)
!704 = !{!705, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !292, line: 179, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !703, file: !292, line: 179, baseType: !706, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !699, file: !272, line: 104, baseType: !703, size: 128, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !699, file: !272, line: 105, baseType: !314, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !699, file: !272, line: 106, baseType: !711, size: 48, offset: 384)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 48, elements: !578)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !699, file: !272, line: 107, baseType: !293, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !699, file: !272, line: 109, baseType: !714, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !716)
!716 = !{!717, !3701, !3702, !3705, !3706, !3757, !3845, !3846, !3847, !3848, !3849, !3858, !3963, !3976, !4171, !4172, !4176, !4178, !4179, !4180, !4184, !4190, !4191, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4232, !4233, !4234, !4237, !4240, !4241, !4242, !4243}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !715, file: !237, line: 462, baseType: !718, size: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !719, line: 64, size: 512, elements: !720)
!719 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !722, !723, !725, !780, !3556, !3695, !3696, !3697, !3698, !3699, !3700}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !718, file: !719, line: 65, baseType: !314, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !718, file: !719, line: 66, baseType: !703, size: 128, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !718, file: !719, line: 67, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !718, file: !719, line: 68, baseType: !726, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !719, line: 192, size: 704, elements: !728)
!728 = !{!729, !730, !746, !747}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !727, file: !719, line: 193, baseType: !703, size: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !727, file: !719, line: 194, baseType: !731, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !732, line: 83, baseType: !733)
!732 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !732, line: 71, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !732, line: 72, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !732, line: 72, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !736, file: !732, line: 73, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !732, line: 20, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !739, file: !732, line: 21, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !743, line: 25, baseType: !744)
!743 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 25, elements: !745)
!745 = !{}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !727, file: !719, line: 195, baseType: !718, size: 512, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !727, file: !719, line: 196, baseType: !748, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !719, line: 156, size: 192, elements: !751)
!751 = !{!752, !757, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !750, file: !719, line: 157, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!331, !726, !724}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !750, file: !719, line: 158, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!314, !726, !724}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !750, file: !719, line: 159, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!331, !726, !724, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !719, line: 148, size: 20736, elements: !769)
!769 = !{!770, !772, !774, !775, !779}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !768, file: !719, line: 149, baseType: !771, size: 192)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 192, elements: !505)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !768, file: !719, line: 150, baseType: !773, size: 4096, offset: 192)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 4096, elements: !380)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !768, file: !719, line: 151, baseType: !331, size: 32, offset: 4288)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !768, file: !719, line: 152, baseType: !776, size: 16384, offset: 4320)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 16384, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 2048)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !768, file: !719, line: 153, baseType: !331, size: 32, offset: 20704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !718, file: !719, line: 69, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !719, line: 138, size: 448, elements: !783)
!783 = !{!784, !788, !815, !817, !3518, !3546, !3550}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !782, file: !719, line: 139, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !724}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !782, file: !719, line: 140, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !792, line: 230, size: 128, elements: !793)
!792 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{!794, !808}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !791, file: !792, line: 231, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!798, !724, !802, !337}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !292, line: 60, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !800, line: 73, baseType: !801)
!800 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !800, line: 15, baseType: !294)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !792, line: 30, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !803, file: !792, line: 31, baseType: !314, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !803, file: !792, line: 32, baseType: !807, size: 16, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !292, line: 19, baseType: !302)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !791, file: !792, line: 232, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!798, !724, !802, !314, !812}
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 55, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !800, line: 72, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !800, line: 16, baseType: !612)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !782, file: !719, line: 141, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !782, file: !719, line: 142, baseType: !818, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !792, line: 84, size: 320, elements: !822)
!822 = !{!823, !824, !828, !3515, !3516}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !821, file: !792, line: 85, baseType: !314, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !821, file: !792, line: 86, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!807, !724, !802, !331}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !821, file: !792, line: 88, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!807, !724, !832, !331}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !792, line: 168, size: 448, elements: !834)
!834 = !{!835, !836, !837, !838, !3510, !3511}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !833, file: !792, line: 169, baseType: !803, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !833, file: !792, line: 170, baseType: !812, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !833, file: !792, line: 171, baseType: !293, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !833, file: !792, line: 172, baseType: !839, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!798, !842, !724, !832, !337, !1008, !812}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !844)
!844 = !{!845, !863, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3493, !3494, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !843, file: !208, line: 920, baseType: !846, size: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !208, line: 917, size: 128, elements: !847)
!847 = !{!848, !854}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !846, file: !208, line: 918, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !850, line: 58, size: 64, elements: !851)
!850 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !850, line: 59, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !846, file: !208, line: 919, baseType: !855, size: 128, align: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !292, line: 216, size: 128, align: 64, elements: !856)
!856 = !{!857, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !855, file: !292, line: 217, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !855, file: !292, line: 218, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !858}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !843, file: !208, line: 921, baseType: !864, size: 128, offset: 128)
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
!904 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !902, file: !870, line: 50, baseType: !415, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !902, file: !870, line: 50, baseType: !415, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !899, file: !870, line: 52, baseType: !653, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !896, file: !870, line: 54, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !873, file: !870, line: 96, baseType: !911, size: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !913)
!913 = !{!914, !915, !916, !924, !931, !932, !1073, !3139, !3140, !3141, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3412, !3420, !3421, !3422, !3440, !3441, !3442, !3443}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !912, file: !208, line: 611, baseType: !807, size: 16)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !912, file: !208, line: 612, baseType: !302, size: 16, offset: 16)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !912, file: !208, line: 613, baseType: !917, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !918, line: 23, baseType: !919)
!918 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 21, size: 32, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !919, file: !918, line: 22, baseType: !922, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 32, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !800, line: 49, baseType: !7)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !912, file: !208, line: 614, baseType: !925, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !918, line: 28, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 26, size: 32, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !926, file: !918, line: 27, baseType: !929, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 33, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !800, line: 50, baseType: !7)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !912, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !912, file: !208, line: 622, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !936)
!936 = !{!937, !941, !951, !955, !961, !965, !969, !973, !977, !981, !985, !986, !992, !996, !1020, !1049, !1053, !1059, !1064, !1068, !1069}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !935, file: !208, line: 1865, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!872, !911, !872, !7}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !935, file: !208, line: 1866, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!314, !872, !911, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !947, line: 10, size: 128, elements: !948)
!947 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !946, file: !947, line: 11, baseType: !339, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !946, file: !947, line: 12, baseType: !293, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !935, file: !208, line: 1867, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!331, !911, !331}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !935, file: !208, line: 1868, baseType: !956, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !911, !331}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !935, file: !208, line: 1870, baseType: !962, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!331, !872, !337, !331}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !935, file: !208, line: 1872, baseType: !966, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!331, !911, !872, !807, !449}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !935, file: !208, line: 1873, baseType: !970, size: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!331, !872, !911, !872}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !935, file: !208, line: 1874, baseType: !974, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!331, !911, !872}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !935, file: !208, line: 1875, baseType: !978, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!331, !911, !872, !314}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !935, file: !208, line: 1876, baseType: !982, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!331, !911, !872, !807}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !935, file: !208, line: 1877, baseType: !974, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !935, file: !208, line: 1878, baseType: !987, size: 64, offset: 704)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!331, !911, !872, !807, !990}
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !292, line: 16, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !292, line: 13, baseType: !415)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !935, file: !208, line: 1879, baseType: !993, size: 64, offset: 768)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!331, !911, !872, !911, !872, !7}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !935, file: !208, line: 1881, baseType: !997, size: 64, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!331, !872, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1010, !1017, !1018, !1019}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1001, file: !208, line: 220, baseType: !7, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1001, file: !208, line: 221, baseType: !807, size: 16, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1001, file: !208, line: 222, baseType: !917, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1001, file: !208, line: 223, baseType: !925, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1001, file: !208, line: 224, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !292, line: 46, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !800, line: 88, baseType: !542)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1001, file: !208, line: 225, baseType: !1011, size: 128, offset: 192)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1012, line: 13, size: 128, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1013 = !{!1014, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1011, file: !1012, line: 14, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1012, line: 8, baseType: !541)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1011, file: !1012, line: 15, baseType: !294, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1001, file: !208, line: 226, baseType: !1011, size: 128, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1001, file: !208, line: 227, baseType: !1011, size: 128, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1001, file: !208, line: 234, baseType: !842, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !935, file: !208, line: 1882, baseType: !1021, size: 64, offset: 896)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!331, !1024, !1026, !415, !7}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1028, line: 22, size: 1152, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !{!1030, !1031, !1032, !1033, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1027, file: !1028, line: 23, baseType: !415, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1027, file: !1028, line: 24, baseType: !807, size: 16, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1027, file: !1028, line: 25, baseType: !7, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1027, file: !1028, line: 26, baseType: !1034, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !292, line: 104, baseType: !415)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1027, file: !1028, line: 27, baseType: !653, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1027, file: !1028, line: 28, baseType: !653, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1027, file: !1028, line: 37, baseType: !653, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1027, file: !1028, line: 38, baseType: !990, size: 32, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1027, file: !1028, line: 39, baseType: !990, size: 32, offset: 352)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1027, file: !1028, line: 40, baseType: !917, size: 32, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1027, file: !1028, line: 41, baseType: !925, size: 32, offset: 416)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1027, file: !1028, line: 42, baseType: !1008, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1027, file: !1028, line: 43, baseType: !1011, size: 128, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1027, file: !1028, line: 44, baseType: !1011, size: 128, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1027, file: !1028, line: 45, baseType: !1011, size: 128, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1027, file: !1028, line: 46, baseType: !1011, size: 128, offset: 896)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1027, file: !1028, line: 47, baseType: !653, size: 64, offset: 1024)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1027, file: !1028, line: 48, baseType: !653, size: 64, offset: 1088)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !935, file: !208, line: 1883, baseType: !1050, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!798, !872, !337, !812}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !935, file: !208, line: 1884, baseType: !1054, size: 64, offset: 1024)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!331, !911, !1057, !653, !653}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !935, file: !208, line: 1886, baseType: !1060, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!331, !911, !1063, !331}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !935, file: !208, line: 1887, baseType: !1065, size: 64, offset: 1152)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!331, !911, !872, !842, !7, !807}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !935, file: !208, line: 1890, baseType: !982, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !935, file: !208, line: 1891, baseType: !1070, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!331, !911, !959, !331}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !912, file: !208, line: 623, baseType: !1074, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1129, !2747, !2829, !2912, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2928, !2932, !2933, !2936, !2937, !2940, !2941, !2942, !2983, !3009, !3010, !3011, !3012, !3013, !3014, !3017, !3019, !3026, !3027, !3029, !3030, !3031, !3090, !3091, !3106, !3107, !3108, !3109, !3110, !3113, !3114, !3115, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1075, file: !208, line: 1417, baseType: !703, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1075, file: !208, line: 1418, baseType: !990, size: 32, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1075, file: !208, line: 1419, baseType: !300, size: 8, offset: 160)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1075, file: !208, line: 1420, baseType: !612, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1075, file: !208, line: 1421, baseType: !1008, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1075, file: !208, line: 1422, baseType: !1083, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1095, !1099, !1103, !1107, !1108, !1109, !1119, !1122, !1123, !1124, !1126, !1127, !1128}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1084, file: !208, line: 2229, baseType: !314, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1084, file: !208, line: 2230, baseType: !331, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1084, file: !208, line: 2238, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!331, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1094, line: 28, flags: DIFlagFwdDecl)
!1094 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1084, file: !208, line: 2239, baseType: !1096, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1084, file: !208, line: 2240, baseType: !1100, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!872, !1083, !331, !314, !293}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1084, file: !208, line: 2242, baseType: !1104, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1074}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1084, file: !208, line: 2243, baseType: !318, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1084, file: !208, line: 2244, baseType: !1083, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1084, file: !208, line: 2245, baseType: !1110, size: 64, offset: 512)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !292, line: 182, size: 64, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1110, file: !292, line: 183, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !292, line: 186, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1114, file: !292, line: 187, baseType: !1113, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1114, file: !292, line: 187, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1084, file: !208, line: 2247, baseType: !1120, offset: 576)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1121, line: 187, elements: !745)
!1121 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1084, file: !208, line: 2248, baseType: !1120, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1084, file: !208, line: 2249, baseType: !1120, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1084, file: !208, line: 2250, baseType: !1125, offset: 576)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1120, elements: !505)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1084, file: !208, line: 2252, baseType: !1120, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1084, file: !208, line: 2253, baseType: !1120, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1084, file: !208, line: 2254, baseType: !1120, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1075, file: !208, line: 1423, baseType: !1130, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1133)
!1133 = !{!1134, !1138, !1142, !1143, !1147, !1153, !1157, !1158, !1159, !1163, !1167, !1168, !1169, !1170, !1176, !1181, !1182, !1189, !1190, !1191, !1192, !2731, !2746}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1132, file: !208, line: 1936, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!911, !1074}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1132, file: !208, line: 1937, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !911}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1132, file: !208, line: 1938, baseType: !1139, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1132, file: !208, line: 1940, baseType: !1144, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !911, !331}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1132, file: !208, line: 1941, baseType: !1148, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!331, !911, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1132, file: !208, line: 1942, baseType: !1154, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!331, !911}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1132, file: !208, line: 1943, baseType: !1139, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1132, file: !208, line: 1944, baseType: !1104, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1132, file: !208, line: 1945, baseType: !1160, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!331, !1074, !331}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1132, file: !208, line: 1946, baseType: !1164, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!331, !1074}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1132, file: !208, line: 1947, baseType: !1164, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1132, file: !208, line: 1948, baseType: !1164, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1132, file: !208, line: 1949, baseType: !1164, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1132, file: !208, line: 1950, baseType: !1171, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!331, !872, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1132, file: !208, line: 1951, baseType: !1177, size: 64, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!331, !1074, !1180, !337}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1132, file: !208, line: 1952, baseType: !1104, size: 64, offset: 960)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1132, file: !208, line: 1954, baseType: !1183, size: 64, offset: 1024)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!331, !1186, !872}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1188, line: 539, flags: DIFlagFwdDecl)
!1188 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1132, file: !208, line: 1955, baseType: !1183, size: 64, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1132, file: !208, line: 1956, baseType: !1183, size: 64, offset: 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1132, file: !208, line: 1957, baseType: !1183, size: 64, offset: 1216)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1132, file: !208, line: 1963, baseType: !1193, size: 64, offset: 1280)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!331, !1074, !1196, !291}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1198, line: 68, size: 512, align: 128, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200, !1201, !2723, !2730}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !1198, line: 69, baseType: !612, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1198, line: 77, baseType: !1202, size: 320, offset: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1198, line: 77, size: 320, elements: !1203)
!1203 = !{!1204, !1385, !1390, !1418, !1426, !1432, !2715, !2722}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 78, baseType: !1205, size: 320)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 78, size: 320, elements: !1206)
!1206 = !{!1207, !1208, !1383, !1384}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1205, file: !1198, line: 84, baseType: !703, size: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1205, file: !1198, line: 86, baseType: !1209, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1211)
!1211 = !{!1212, !1213, !1220, !1221, !1222, !1237, !1253, !1254, !1255, !1256, !1376, !1377, !1380, !1381, !1382}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1210, file: !208, line: 452, baseType: !911, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1210, file: !208, line: 453, baseType: !1214, size: 128, offset: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1215, line: 292, size: 128, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1214, file: !1215, line: 293, baseType: !731)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1214, file: !1215, line: 295, baseType: !291, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1214, file: !1215, line: 296, baseType: !293, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1210, file: !208, line: 454, baseType: !291, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1210, file: !208, line: 455, baseType: !400, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1210, file: !208, line: 460, baseType: !1223, size: 128, offset: 256)
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
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1231, file: !1224, line: 25, baseType: !612, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1231, file: !1224, line: 26, baseType: !1230, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1231, file: !1224, line: 27, baseType: !1230, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1223, file: !1224, line: 127, baseType: !1230, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1210, file: !208, line: 461, baseType: !1238, size: 256, offset: 384)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1239, line: 35, size: 256, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1240 = !{!1241, !1249, !1250, !1252}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1238, file: !1239, line: 36, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1243, line: 13, baseType: !1244)
!1243 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !292, line: 175, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 173, size: 64, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1245, file: !292, line: 174, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !297, line: 22, baseType: !541)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1238, file: !1239, line: 42, baseType: !1242, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1238, file: !1239, line: 46, baseType: !1251, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !732, line: 29, baseType: !739)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1238, file: !1239, line: 47, baseType: !703, size: 128, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1210, file: !208, line: 462, baseType: !612, size: 64, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1210, file: !208, line: 463, baseType: !612, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1210, file: !208, line: 464, baseType: !612, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1210, file: !208, line: 465, baseType: !1257, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1260)
!1260 = !{!1261, !1265, !1269, !1273, !1277, !1281, !1287, !1293, !1297, !1302, !1306, !1310, !1314, !1340, !1344, !1350, !1351, !1352, !1356, !1361, !1365, !1372}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1259, file: !208, line: 368, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!331, !1196, !1151}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1259, file: !208, line: 369, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!331, !842, !1196}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1259, file: !208, line: 372, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!331, !1209, !1151}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1259, file: !208, line: 375, baseType: !1274, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!331, !1196}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1259, file: !208, line: 381, baseType: !1278, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!331, !842, !1209, !706, !7}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1259, file: !208, line: 383, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1285}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1259, file: !208, line: 385, baseType: !1288, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!331, !842, !1209, !1008, !7, !7, !1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1259, file: !208, line: 388, baseType: !1294, size: 64, offset: 448)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!331, !842, !1209, !1008, !7, !7, !1196, !293}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1259, file: !208, line: 393, baseType: !1298, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!1301, !1209, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !292, line: 125, baseType: !653)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1259, file: !208, line: 394, baseType: !1303, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1196, !7, !7}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1259, file: !208, line: 395, baseType: !1307, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!331, !1196, !291}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1259, file: !208, line: 396, baseType: !1311, size: 64, offset: 704)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1196}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1259, file: !208, line: 397, baseType: !1315, size: 64, offset: 768)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!798, !1318, !1338}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1327, !1328, !1329, !1330, !1331}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1319, file: !208, line: 321, baseType: !842, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1319, file: !208, line: 326, baseType: !1008, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1319, file: !208, line: 327, baseType: !1324, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1318, !294, !294}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1319, file: !208, line: 328, baseType: !293, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1319, file: !208, line: 329, baseType: !331, size: 32, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1319, file: !208, line: 330, baseType: !344, size: 16, offset: 288)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1319, file: !208, line: 331, baseType: !344, size: 16, offset: 304)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !208, line: 332, baseType: !1332, size: 64, offset: 320)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !208, line: 332, size: 64, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1332, file: !208, line: 333, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1332, file: !208, line: 334, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1259, file: !208, line: 402, baseType: !1341, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!331, !1209, !1196, !1196, !183}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1259, file: !208, line: 404, baseType: !1345, size: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!449, !1196, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1349, line: 305, baseType: !7)
!1349 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1259, file: !208, line: 405, baseType: !1311, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1259, file: !208, line: 406, baseType: !1274, size: 64, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1259, file: !208, line: 407, baseType: !1353, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!331, !1196, !612, !612}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1259, file: !208, line: 409, baseType: !1357, size: 64, offset: 1152)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !1196, !1360, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1259, file: !208, line: 410, baseType: !1362, size: 64, offset: 1216)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!331, !1209, !1196}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1259, file: !208, line: 413, baseType: !1366, size: 64, offset: 1280)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!331, !1369, !842, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1259, file: !208, line: 415, baseType: !1373, size: 64, offset: 1344)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !842}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !208, line: 466, baseType: !612, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1210, file: !208, line: 467, baseType: !1378, size: 32, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1379, line: 8, baseType: !415)
!1379 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1210, file: !208, line: 468, baseType: !731, offset: 992)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1210, file: !208, line: 469, baseType: !703, size: 128, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1210, file: !208, line: 470, baseType: !293, size: 64, offset: 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1205, file: !1198, line: 87, baseType: !612, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1205, file: !1198, line: 94, baseType: !612, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 96, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 96, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1386, file: !1198, line: 101, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !292, line: 143, baseType: !653)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 103, baseType: !1391, size: 320)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 103, size: 320, elements: !1392)
!1392 = !{!1393, !1403, !1406, !1407}
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !1198, line: 104, baseType: !1394, size: 128)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !1198, line: 104, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1394, file: !1198, line: 105, baseType: !703, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1198, line: 106, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1394, file: !1198, line: 106, size: 128, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1398, file: !1198, line: 107, baseType: !1196, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1398, file: !1198, line: 109, baseType: !331, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1398, file: !1198, line: 110, baseType: !331, size: 32, offset: 96)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1391, file: !1198, line: 117, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1198, line: 117, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1391, file: !1198, line: 119, baseType: !293, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !1198, line: 120, baseType: !1408, size: 64, offset: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !1198, line: 120, size: 64, elements: !1409)
!1409 = !{!1410, !1411, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1408, file: !1198, line: 121, baseType: !293, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1408, file: !1198, line: 122, baseType: !612, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1198, line: 123, baseType: !1413, size: 32)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !1198, line: 123, size: 32, elements: !1414)
!1414 = !{!1415, !1416, !1417}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1413, file: !1198, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1413, file: !1198, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1413, file: !1198, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 130, baseType: !1419, size: 192)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 130, size: 192, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1419, file: !1198, line: 131, baseType: !612, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1419, file: !1198, line: 134, baseType: !300, size: 8, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1419, file: !1198, line: 135, baseType: !300, size: 8, offset: 72)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1419, file: !1198, line: 136, baseType: !400, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1419, file: !1198, line: 137, baseType: !7, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 139, baseType: !1427, size: 256)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 139, size: 256, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1427, file: !1198, line: 140, baseType: !612, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1427, file: !1198, line: 141, baseType: !400, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1427, file: !1198, line: 143, baseType: !703, size: 128, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 145, baseType: !1433, size: 256)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 145, size: 256, elements: !1434)
!1434 = !{!1435, !1436, !1438, !1439, !2714}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1433, file: !1198, line: 146, baseType: !612, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1433, file: !1198, line: 147, baseType: !1437, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1188, line: 509, baseType: !1196)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1433, file: !1198, line: 148, baseType: !612, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1198, line: 149, baseType: !1440, size: 64, offset: 192)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1198, line: 149, size: 64, elements: !1441)
!1441 = !{!1442, !2713}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1440, file: !1198, line: 150, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1198, line: 388, size: 7296, elements: !1445)
!1445 = !{!1446, !2709}
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1198, line: 389, baseType: !1447, size: 7296)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !1198, line: 389, size: 7296, elements: !1448)
!1448 = !{!1449, !1487, !1488, !1489, !1493, !1494, !1495, !1496, !1497, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1538, !1544, !1547, !1593, !1594, !2693, !2694, !2697, !2698, !2699, !2702, !2703, !2704, !2707, !2708}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1447, file: !1198, line: 390, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1198, line: 305, size: 1472, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1467, !1468, !1473, !1474, !1477, !1481, !1482, !1483, !1484, !1485}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1451, file: !1198, line: 308, baseType: !612, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1451, file: !1198, line: 309, baseType: !612, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1451, file: !1198, line: 313, baseType: !1450, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1451, file: !1198, line: 313, baseType: !1450, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1451, file: !1198, line: 315, baseType: !1231, size: 192, align: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1451, file: !1198, line: 323, baseType: !612, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1451, file: !1198, line: 327, baseType: !1443, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1451, file: !1198, line: 333, baseType: !1461, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1188, line: 284, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1188, line: 284, size: 64, elements: !1463)
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1462, file: !1188, line: 284, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1466, line: 19, baseType: !612)
!1466 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1451, file: !1198, line: 334, baseType: !612, size: 64, offset: 640)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1451, file: !1198, line: 343, baseType: !1469, size: 256, offset: 704)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !1198, line: 340, size: 256, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1469, file: !1198, line: 341, baseType: !1231, size: 192, align: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1469, file: !1198, line: 342, baseType: !612, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1451, file: !1198, line: 351, baseType: !703, size: 128, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1451, file: !1198, line: 353, baseType: !1475, size: 64, offset: 1088)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1198, line: 353, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1451, file: !1198, line: 356, baseType: !1478, size: 64, offset: 1152)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1198, line: 356, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1451, file: !1198, line: 359, baseType: !612, size: 64, offset: 1216)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1451, file: !1198, line: 361, baseType: !842, size: 64, offset: 1280)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1451, file: !1198, line: 362, baseType: !293, size: 64, offset: 1344)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1451, file: !1198, line: 365, baseType: !1242, size: 64, offset: 1408)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1451, file: !1198, line: 373, baseType: !1486, offset: 1472)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1198, line: 296, elements: !745)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1447, file: !1198, line: 391, baseType: !1227, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1447, file: !1198, line: 392, baseType: !653, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1447, file: !1198, line: 394, baseType: !1490, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!612, !842, !612, !612, !612, !612}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1447, file: !1198, line: 398, baseType: !612, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1447, file: !1198, line: 399, baseType: !612, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1447, file: !1198, line: 405, baseType: !612, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1447, file: !1198, line: 406, baseType: !612, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1447, file: !1198, line: 407, baseType: !1498, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1188, line: 286, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 286, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1500, file: !1188, line: 286, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1466, line: 18, baseType: !612)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1447, file: !1198, line: 416, baseType: !400, size: 32, offset: 576)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1447, file: !1198, line: 428, baseType: !400, size: 32, offset: 608)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1447, file: !1198, line: 437, baseType: !400, size: 32, offset: 640)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1447, file: !1198, line: 447, baseType: !400, size: 32, offset: 672)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1447, file: !1198, line: 450, baseType: !1242, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1447, file: !1198, line: 452, baseType: !331, size: 32, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1447, file: !1198, line: 454, baseType: !731, offset: 800)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1447, file: !1198, line: 457, baseType: !1238, size: 256, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1447, file: !1198, line: 459, baseType: !703, size: 128, offset: 1088)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1447, file: !1198, line: 466, baseType: !612, size: 64, offset: 1216)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1447, file: !1198, line: 467, baseType: !612, size: 64, offset: 1280)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1447, file: !1198, line: 469, baseType: !612, size: 64, offset: 1344)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1447, file: !1198, line: 470, baseType: !612, size: 64, offset: 1408)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1447, file: !1198, line: 471, baseType: !1244, size: 64, offset: 1472)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1447, file: !1198, line: 472, baseType: !612, size: 64, offset: 1536)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1447, file: !1198, line: 473, baseType: !612, size: 64, offset: 1600)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1447, file: !1198, line: 474, baseType: !612, size: 64, offset: 1664)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1447, file: !1198, line: 475, baseType: !612, size: 64, offset: 1728)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1447, file: !1198, line: 477, baseType: !731, offset: 1792)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1447, file: !1198, line: 478, baseType: !612, size: 64, offset: 1792)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1447, file: !1198, line: 478, baseType: !612, size: 64, offset: 1856)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1447, file: !1198, line: 478, baseType: !612, size: 64, offset: 1920)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1447, file: !1198, line: 478, baseType: !612, size: 64, offset: 1984)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1447, file: !1198, line: 479, baseType: !612, size: 64, offset: 2048)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1447, file: !1198, line: 479, baseType: !612, size: 64, offset: 2112)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1447, file: !1198, line: 479, baseType: !612, size: 64, offset: 2176)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1447, file: !1198, line: 480, baseType: !612, size: 64, offset: 2240)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1447, file: !1198, line: 480, baseType: !612, size: 64, offset: 2304)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1447, file: !1198, line: 480, baseType: !612, size: 64, offset: 2368)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1447, file: !1198, line: 480, baseType: !612, size: 64, offset: 2432)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1447, file: !1198, line: 482, baseType: !1535, size: 2816, offset: 2496)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 2816, elements: !1536)
!1536 = !{!1537}
!1537 = !DISubrange(count: 44)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1447, file: !1198, line: 488, baseType: !1539, size: 256, offset: 5312)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1540, line: 60, size: 256, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1539, file: !1540, line: 61, baseType: !1543, size: 256)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 256, elements: !543)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1447, file: !1198, line: 490, baseType: !1545, size: 64, offset: 5568)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1198, line: 490, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1447, file: !1198, line: 493, baseType: !1548, size: 896, offset: 5632)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1549, line: 53, baseType: !1550)
!1549 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1549, line: 13, size: 896, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1558, !1559, !1566, !1567, !1587, !1588, !1589}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1550, file: !1549, line: 18, baseType: !653, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1550, file: !1549, line: 28, baseType: !1244, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1550, file: !1549, line: 31, baseType: !1238, size: 256, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1550, file: !1549, line: 32, baseType: !1556, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1549, line: 32, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1550, file: !1549, line: 37, baseType: !302, size: 16, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !1549, line: 40, baseType: !1560, size: 192, offset: 512)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1561, line: 53, size: 192, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1560, file: !1561, line: 54, baseType: !1242, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1560, file: !1561, line: 55, baseType: !731, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1560, file: !1561, line: 59, baseType: !703, size: 128, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1550, file: !1549, line: 41, baseType: !293, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1550, file: !1549, line: 42, baseType: !1568, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1571, line: 13, size: 896, elements: !1572)
!1571 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1570, file: !1571, line: 14, baseType: !293, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1570, file: !1571, line: 15, baseType: !612, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1570, file: !1571, line: 17, baseType: !612, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1570, file: !1571, line: 17, baseType: !612, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1570, file: !1571, line: 19, baseType: !294, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1570, file: !1571, line: 21, baseType: !294, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1570, file: !1571, line: 22, baseType: !294, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1570, file: !1571, line: 23, baseType: !294, size: 64, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1570, file: !1571, line: 24, baseType: !294, size: 64, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1570, file: !1571, line: 25, baseType: !294, size: 64, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1570, file: !1571, line: 26, baseType: !294, size: 64, offset: 640)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1570, file: !1571, line: 27, baseType: !294, size: 64, offset: 704)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1570, file: !1571, line: 28, baseType: !294, size: 64, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1570, file: !1571, line: 29, baseType: !294, size: 64, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1550, file: !1549, line: 44, baseType: !400, size: 32, offset: 832)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1550, file: !1549, line: 50, baseType: !344, size: 16, offset: 864)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1550, file: !1549, line: 51, baseType: !1590, size: 16, offset: 880)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !297, line: 18, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !299, line: 23, baseType: !1592)
!1592 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1447, file: !1198, line: 495, baseType: !612, size: 64, offset: 6528)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1447, file: !1198, line: 497, baseType: !1595, size: 64, offset: 6592)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1198, line: 381, size: 384, elements: !1597)
!1597 = !{!1598, !1599, !2692}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1596, file: !1198, line: 382, baseType: !400, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1596, file: !1198, line: 383, baseType: !1600, size: 128, offset: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1198, line: 376, size: 128, elements: !1601)
!1601 = !{!1602, !2690}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1600, file: !1198, line: 377, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1605, line: 640, size: 48640, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1613, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1628, !1646, !1657, !1738, !1739, !1740, !1751, !1752, !1754, !1755, !1756, !1757, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1838, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1876, !1878, !1879, !1880, !1892, !1893, !1894, !1895, !1896, !1897, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1921, !1926, !2108, !2109, !2110, !2111, !2115, !2118, !2121, !2124, !2127, !2131, !2232, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2278, !2279, !2280, !2281, !2282, !2287, !2288, !2289, !2292, !2293, !2296, !2299, !2302, !2305, !2348, !2351, !2352, !2431, !2432, !2435, !2436, !2439, !2440, !2441, !2445, !2446, !2447, !2460, !2461, !2462, !2472, !2477, !2480, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1604, file: !1605, line: 646, baseType: !1608, size: 128)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1609, line: 56, size: 128, elements: !1610)
!1609 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !1609, line: 57, baseType: !612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1608, file: !1609, line: 58, baseType: !415, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1604, file: !1605, line: 649, baseType: !1614, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !294)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1604, file: !1605, line: 657, baseType: !293, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1604, file: !1605, line: 658, baseType: !395, size: 32, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1604, file: !1605, line: 660, baseType: !7, size: 32, offset: 288)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1604, file: !1605, line: 661, baseType: !7, size: 32, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1604, file: !1605, line: 684, baseType: !331, size: 32, offset: 352)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1604, file: !1605, line: 686, baseType: !331, size: 32, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1604, file: !1605, line: 687, baseType: !331, size: 32, offset: 416)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1604, file: !1605, line: 688, baseType: !331, size: 32, offset: 448)
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
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1632, file: !1605, line: 326, baseType: !612, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1632, file: !1605, line: 327, baseType: !415, size: 32, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1629, file: !1605, line: 454, baseType: !1231, size: 192, align: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1629, file: !1605, line: 455, baseType: !703, size: 128, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1629, file: !1605, line: 456, baseType: !7, size: 32, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1629, file: !1605, line: 458, baseType: !653, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1629, file: !1605, line: 459, baseType: !653, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1629, file: !1605, line: 460, baseType: !653, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1629, file: !1605, line: 461, baseType: !653, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1629, file: !1605, line: 463, baseType: !653, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1629, file: !1605, line: 465, baseType: !1645, offset: 832)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1605, line: 415, elements: !745)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1604, file: !1605, line: 693, baseType: !1647, size: 384, offset: 1408)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1605, line: 489, size: 384, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1647, file: !1605, line: 490, baseType: !703, size: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1647, file: !1605, line: 491, baseType: !612, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1647, file: !1605, line: 492, baseType: !612, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1647, file: !1605, line: 493, baseType: !7, size: 32, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1647, file: !1605, line: 494, baseType: !302, size: 16, offset: 288)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1647, file: !1605, line: 495, baseType: !302, size: 16, offset: 304)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1647, file: !1605, line: 497, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1604, file: !1605, line: 697, baseType: !1658, size: 1792, offset: 1792)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1605, line: 507, size: 1792, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1735, !1736}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1658, file: !1605, line: 508, baseType: !1231, size: 192, align: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1658, file: !1605, line: 515, baseType: !653, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1658, file: !1605, line: 516, baseType: !653, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1658, file: !1605, line: 517, baseType: !653, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1658, file: !1605, line: 518, baseType: !653, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1658, file: !1605, line: 519, baseType: !653, size: 64, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1658, file: !1605, line: 526, baseType: !1248, size: 64, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1658, file: !1605, line: 527, baseType: !653, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !1605, line: 528, baseType: !7, size: 32, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1658, file: !1605, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1658, file: !1605, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1658, file: !1605, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1658, file: !1605, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1658, file: !1605, line: 563, baseType: !1674, size: 512, offset: 704)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1675)
!1675 = !{!1676, !1684, !1685, !1690, !1731, !1732, !1733, !1734}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1674, file: !191, line: 119, baseType: !1677, size: 256)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1678, line: 9, size: 256, elements: !1679)
!1678 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1677, file: !1678, line: 10, baseType: !1231, size: 192, align: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1677, file: !1678, line: 11, baseType: !1682, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1683, line: 29, baseType: !1248)
!1683 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1674, file: !191, line: 120, baseType: !1682, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1674, file: !191, line: 121, baseType: !1686, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!190, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1674, file: !191, line: 122, baseType: !1691, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1693)
!1693 = !{!1694, !1712, !1713, !1716, !1721, !1722, !1726, !1730}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1692, file: !191, line: 160, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1696, file: !191, line: 215, baseType: !1251)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1696, file: !191, line: 216, baseType: !7, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1696, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1696, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1696, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1696, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1696, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1696, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1696, file: !191, line: 233, baseType: !1682, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1696, file: !191, line: 234, baseType: !1689, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1696, file: !191, line: 235, baseType: !1682, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1696, file: !191, line: 236, baseType: !1689, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1696, file: !191, line: 237, baseType: !1711, size: 4096, offset: 512)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1692, size: 4096, elements: !426)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1692, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1692, file: !191, line: 162, baseType: !1714, size: 32, offset: 96)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !292, line: 27, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !800, line: 96, baseType: !331)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1692, file: !191, line: 163, baseType: !1717, size: 32, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !878, line: 276, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !878, line: 276, size: 32, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1718, file: !878, line: 276, baseType: !882, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1692, file: !191, line: 164, baseType: !1689, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1692, file: !191, line: 165, baseType: !1723, size: 128, offset: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1678, line: 14, size: 128, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1723, file: !1678, line: 15, baseType: !1223, size: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1692, file: !191, line: 166, baseType: !1727, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!1682}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1692, file: !191, line: 167, baseType: !1682, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1674, file: !191, line: 123, baseType: !296, size: 8, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1674, file: !191, line: 124, baseType: !296, size: 8, offset: 456)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1674, file: !191, line: 125, baseType: !296, size: 8, offset: 464)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1674, file: !191, line: 126, baseType: !296, size: 8, offset: 472)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1658, file: !1605, line: 572, baseType: !1674, size: 512, offset: 1216)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1658, file: !1605, line: 580, baseType: !1737, size: 64, offset: 1728)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1604, file: !1605, line: 721, baseType: !7, size: 32, offset: 3584)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1604, file: !1605, line: 722, baseType: !331, size: 32, offset: 3616)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1604, file: !1605, line: 723, baseType: !1741, size: 64, offset: 3648)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1744, line: 17, baseType: !1745)
!1744 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1744, line: 17, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1745, file: !1744, line: 17, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 64, elements: !1749)
!1749 = !{!1750}
!1750 = !DISubrange(count: 1)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1604, file: !1605, line: 724, baseType: !1743, size: 64, offset: 3712)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1604, file: !1605, line: 749, baseType: !1753, offset: 3776)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1605, line: 290, elements: !745)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1604, file: !1605, line: 751, baseType: !703, size: 128, offset: 3776)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1604, file: !1605, line: 757, baseType: !1443, size: 64, offset: 3904)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1604, file: !1605, line: 758, baseType: !1443, size: 64, offset: 3968)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1604, file: !1605, line: 761, baseType: !1758, size: 320, offset: 4032)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1540, line: 34, size: 320, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1758, file: !1540, line: 35, baseType: !653, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1758, file: !1540, line: 36, baseType: !1762, size: 256, offset: 64)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1450, size: 256, elements: !543)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1604, file: !1605, line: 766, baseType: !331, size: 32, offset: 4352)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1604, file: !1605, line: 767, baseType: !331, size: 32, offset: 4384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1604, file: !1605, line: 768, baseType: !331, size: 32, offset: 4416)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1604, file: !1605, line: 770, baseType: !331, size: 32, offset: 4448)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1604, file: !1605, line: 772, baseType: !612, size: 64, offset: 4480)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1604, file: !1605, line: 775, baseType: !7, size: 32, offset: 4544)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1604, file: !1605, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1604, file: !1605, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1604, file: !1605, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1604, file: !1605, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1604, file: !1605, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1604, file: !1605, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1604, file: !1605, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1604, file: !1605, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1604, file: !1605, line: 831, baseType: !612, size: 64, offset: 4672)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1604, file: !1605, line: 833, baseType: !1779, size: 384, offset: 4736)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1780)
!1780 = !{!1781, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1779, file: !196, line: 26, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!294, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !196, line: 27, baseType: !1787, size: 320, offset: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1779, file: !196, line: 27, size: 320, elements: !1788)
!1788 = !{!1789, !1798, !1823}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1787, file: !196, line: 36, baseType: !1790, size: 320)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1787, file: !196, line: 29, size: 320, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1790, file: !196, line: 30, baseType: !560, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1790, file: !196, line: 31, baseType: !415, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !196, line: 32, baseType: !415, size: 32, offset: 96)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1790, file: !196, line: 33, baseType: !415, size: 32, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1790, file: !196, line: 34, baseType: !653, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1790, file: !196, line: 35, baseType: !560, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1787, file: !196, line: 46, baseType: !1799, size: 192)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1787, file: !196, line: 38, size: 192, elements: !1800)
!1800 = !{!1801, !1802, !1803, !1822}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1799, file: !196, line: 39, baseType: !1714, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1799, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !196, line: 41, baseType: !1804, size: 64, offset: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !196, line: 41, size: 64, elements: !1805)
!1805 = !{!1806, !1814}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1804, file: !196, line: 42, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1809, line: 7, size: 128, elements: !1810)
!1809 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1808, file: !1809, line: 8, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !800, line: 93, baseType: !542)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1808, file: !1809, line: 9, baseType: !542, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1804, file: !196, line: 43, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1817, line: 7, size: 64, elements: !1818)
!1817 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !{!1819, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1816, file: !1817, line: 8, baseType: !1820, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1817, line: 5, baseType: !668)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1816, file: !1817, line: 9, baseType: !668, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1799, file: !196, line: 45, baseType: !653, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1787, file: !196, line: 54, baseType: !1824, size: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1787, file: !196, line: 48, size: 256, elements: !1825)
!1825 = !{!1826, !1834, !1835, !1836, !1837}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1824, file: !196, line: 49, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1829, line: 36, size: 64, elements: !1830)
!1829 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1828, file: !1829, line: 37, baseType: !331, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1828, file: !1829, line: 38, baseType: !1592, size: 16, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1828, file: !1829, line: 39, baseType: !1592, size: 16, offset: 48)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1824, file: !196, line: 50, baseType: !331, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1824, file: !196, line: 51, baseType: !331, size: 32, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1824, file: !196, line: 52, baseType: !612, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1824, file: !196, line: 53, baseType: !612, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1604, file: !1605, line: 835, baseType: !1839, size: 32, offset: 5120)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !292, line: 22, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !800, line: 28, baseType: !331)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1604, file: !1605, line: 836, baseType: !1839, size: 32, offset: 5152)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1604, file: !1605, line: 840, baseType: !612, size: 64, offset: 5184)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1604, file: !1605, line: 849, baseType: !1603, size: 64, offset: 5248)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1604, file: !1605, line: 852, baseType: !1603, size: 64, offset: 5312)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1604, file: !1605, line: 857, baseType: !703, size: 128, offset: 5376)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1604, file: !1605, line: 858, baseType: !703, size: 128, offset: 5504)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1604, file: !1605, line: 859, baseType: !1603, size: 64, offset: 5632)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1604, file: !1605, line: 867, baseType: !703, size: 128, offset: 5696)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1604, file: !1605, line: 868, baseType: !703, size: 128, offset: 5824)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1604, file: !1605, line: 871, baseType: !1851, size: 64, offset: 5952)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1859, !1860, !1867, !1868}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1852, file: !217, line: 61, baseType: !395, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1852, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1852, file: !217, line: 63, baseType: !731, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1852, file: !217, line: 65, baseType: !1858, size: 256, offset: 64)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 256, elements: !543)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1852, file: !217, line: 66, baseType: !1110, size: 64, offset: 320)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1852, file: !217, line: 68, baseType: !1861, size: 128, offset: 384)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1862, line: 40, baseType: !1863)
!1862 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1862, line: 36, size: 128, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1863, file: !1862, line: 37, baseType: !731)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1863, file: !1862, line: 38, baseType: !703, size: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1852, file: !217, line: 69, baseType: !855, size: 128, align: 64, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1852, file: !217, line: 70, baseType: !1869, size: 128, offset: 640)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1870, size: 128, elements: !1749)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1870, file: !217, line: 55, baseType: !331, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1870, file: !217, line: 56, baseType: !1874, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1604, file: !1605, line: 872, baseType: !1877, size: 512, offset: 6016)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 512, elements: !543)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1604, file: !1605, line: 873, baseType: !703, size: 128, offset: 6528)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1604, file: !1605, line: 874, baseType: !703, size: 128, offset: 6656)
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
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1887, file: !1888, line: 45, baseType: !703, size: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1604, file: !1605, line: 879, baseType: !1180, size: 64, offset: 6848)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1604, file: !1605, line: 882, baseType: !1180, size: 64, offset: 6912)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1604, file: !1605, line: 884, baseType: !653, size: 64, offset: 6976)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1604, file: !1605, line: 885, baseType: !653, size: 64, offset: 7040)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1604, file: !1605, line: 890, baseType: !653, size: 64, offset: 7104)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1604, file: !1605, line: 891, baseType: !1898, size: 128, offset: 7168)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1605, line: 242, size: 128, elements: !1899)
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1898, file: !1605, line: 244, baseType: !653, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1898, file: !1605, line: 245, baseType: !653, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1898, file: !1605, line: 246, baseType: !1251, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1604, file: !1605, line: 900, baseType: !612, size: 64, offset: 7296)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1604, file: !1605, line: 901, baseType: !612, size: 64, offset: 7360)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1604, file: !1605, line: 904, baseType: !653, size: 64, offset: 7424)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1604, file: !1605, line: 907, baseType: !653, size: 64, offset: 7488)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1604, file: !1605, line: 910, baseType: !612, size: 64, offset: 7552)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1604, file: !1605, line: 911, baseType: !612, size: 64, offset: 7616)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1604, file: !1605, line: 914, baseType: !1910, size: 640, offset: 7680)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1911, line: 123, size: 640, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1919, !1920}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1910, file: !1911, line: 124, baseType: !1914, size: 576)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1915, size: 576, elements: !505)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1911, line: 108, size: 192, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1915, file: !1911, line: 109, baseType: !653, size: 64)
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
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1929, file: !1930, line: 112, baseType: !400, size: 32)
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
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 64, elements: !1949)
!1949 = !{!1950}
!1950 = !DISubrange(count: 2)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1929, file: !1930, line: 130, baseType: !1943, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1929, file: !1930, line: 131, baseType: !1943, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1929, file: !1930, line: 132, baseType: !1943, size: 64, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1929, file: !1930, line: 133, baseType: !1943, size: 64, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1929, file: !1930, line: 135, baseType: !300, size: 8, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1929, file: !1930, line: 137, baseType: !1957, size: 64, offset: 704)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1959, line: 189, size: 1664, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !{!1961, !1962, !1965, !1970, !1971, !1974, !1975, !1980, !1981, !1982, !1983, !1985, !1986, !1987, !1988, !1989, !2025, !2046}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1958, file: !1959, line: 190, baseType: !395, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1958, file: !1959, line: 191, baseType: !1963, size: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1959, line: 28, baseType: !1964)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !292, line: 98, baseType: !668)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1959, line: 192, baseType: !1966, size: 192, offset: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1959, line: 192, size: 192, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1966, file: !1959, line: 193, baseType: !703, size: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1966, file: !1959, line: 194, baseType: !1231, size: 192, align: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1958, file: !1959, line: 199, baseType: !1238, size: 256, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1958, file: !1959, line: 200, baseType: !1972, size: 64, offset: 512)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1959, line: 200, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1958, file: !1959, line: 201, baseType: !293, size: 64, offset: 576)
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
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1958, file: !1959, line: 210, baseType: !302, size: 16, offset: 864)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1958, file: !1959, line: 211, baseType: !302, size: 16, offset: 880)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1958, file: !1959, line: 215, baseType: !1592, size: 16, offset: 896)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1958, file: !1959, line: 222, baseType: !612, size: 64, offset: 960)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1959, line: 239, baseType: !1990, size: 320, offset: 1024)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1959, line: 239, size: 320, elements: !1991)
!1991 = !{!1992, !2017}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1990, file: !1959, line: 240, baseType: !1993, size: 320)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1959, line: 108, size: 320, elements: !1994)
!1994 = !{!1995, !1996, !2006, !2009, !2016}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1993, file: !1959, line: 110, baseType: !612, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1959, line: 111, baseType: !1997, size: 64, offset: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !1959, line: 111, size: 64, elements: !1998)
!1998 = !{!1999, !2005}
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !1959, line: 112, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1959, line: 112, size: 64, elements: !2001)
!2001 = !{!2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2000, file: !1959, line: 114, baseType: !344, size: 16)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2000, file: !1959, line: 115, baseType: !2004, size: 48, offset: 16)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 48, elements: !578)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1997, file: !1959, line: 121, baseType: !612, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1993, file: !1959, line: 123, baseType: !2007, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1959, line: 96, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1993, file: !1959, line: 124, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1959, line: 102, size: 192, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2011, file: !1959, line: 103, baseType: !855, size: 128, align: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2011, file: !1959, line: 104, baseType: !395, size: 32, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2011, file: !1959, line: 105, baseType: !449, size: 8, offset: 160)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1993, file: !1959, line: 125, baseType: !314, size: 64, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !1959, line: 241, baseType: !2018, size: 320)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1959, line: 241, size: 320, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2018, file: !1959, line: 242, baseType: !612, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2018, file: !1959, line: 243, baseType: !612, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2018, file: !1959, line: 244, baseType: !2007, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2018, file: !1959, line: 245, baseType: !2010, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2018, file: !1959, line: 246, baseType: !337, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1959, line: 254, baseType: !2026, size: 256, offset: 1344)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1959, line: 254, size: 256, elements: !2027)
!2027 = !{!2028, !2034}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2026, file: !1959, line: 255, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1959, line: 128, size: 256, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2029, file: !1959, line: 129, baseType: !293, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2029, file: !1959, line: 130, baseType: !2033, size: 256)
!2033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !543)
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !1959, line: 256, baseType: !2035, size: 256)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !1959, line: 256, size: 256, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2035, file: !1959, line: 258, baseType: !703, size: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2035, file: !1959, line: 259, baseType: !2039, size: 128, offset: 128)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2040, line: 22, size: 128, elements: !2041)
!2040 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2039, file: !2040, line: 23, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2040, line: 23, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2039, file: !2040, line: 24, baseType: !612, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1958, file: !1959, line: 274, baseType: !2047, size: 64, offset: 1600)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1959, line: 170, size: 192, elements: !2049)
!2049 = !{!2050, !2059, !2060}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2048, file: !1959, line: 171, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1959, line: 165, baseType: !2052)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!331, !1957, !2055, !2057, !1957}
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
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2066, file: !2067, line: 14, baseType: !395, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2066, file: !2067, line: 15, baseType: !400, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2066, file: !2067, line: 16, baseType: !400, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2066, file: !2067, line: 21, baseType: !1242, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2066, file: !2067, line: 27, baseType: !612, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2066, file: !2067, line: 28, baseType: !612, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2066, file: !2067, line: 29, baseType: !1242, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2066, file: !2067, line: 32, baseType: !1114, size: 128, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2066, file: !2067, line: 33, baseType: !917, size: 32, offset: 512)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2066, file: !2067, line: 37, baseType: !1242, size: 64, offset: 576)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2066, file: !2067, line: 44, baseType: !2080, size: 256, offset: 640)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2081, line: 15, size: 256, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !2081, line: 16, baseType: !1251)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2080, file: !2081, line: 18, baseType: !331, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2080, file: !2081, line: 19, baseType: !331, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2080, file: !2081, line: 20, baseType: !331, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2080, file: !2081, line: 21, baseType: !331, size: 32, offset: 96)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2080, file: !2081, line: 22, baseType: !612, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2081, line: 23, baseType: !612, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1929, file: !1930, line: 146, baseType: !2091, size: 64, offset: 1024)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !918, line: 18, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1929, file: !1930, line: 147, baseType: !2094, size: 64, offset: 1088)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1930, line: 25, size: 64, elements: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2095, file: !1930, line: 26, baseType: !400, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2095, file: !1930, line: 27, baseType: !331, size: 32, offset: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2095, file: !1930, line: 28, baseType: !2100, offset: 64)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, elements: !2101)
!2101 = !{!2102}
!2102 = !DISubrange(count: 0)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !1930, line: 149, baseType: !2104, size: 128, offset: 1152)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1929, file: !1930, line: 149, size: 128, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2104, file: !1930, line: 150, baseType: !331, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2104, file: !1930, line: 151, baseType: !855, size: 128, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1604, file: !1605, line: 926, baseType: !1927, size: 64, offset: 8576)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1604, file: !1605, line: 929, baseType: !1927, size: 64, offset: 8640)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1604, file: !1605, line: 933, baseType: !1957, size: 64, offset: 8704)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1604, file: !1605, line: 943, baseType: !2112, size: 128, offset: 8768)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 128, elements: !2113)
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
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2130, line: 35, flags: DIFlagFwdDecl)
!2130 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1604, file: !1605, line: 969, baseType: !2132, size: 64, offset: 9216)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2134, line: 82, size: 7296, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2171, !2180, !2181, !2183, !2184, !2185, !2188, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2218, !2219, !2226, !2227, !2228, !2229, !2230, !2231}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2133, file: !2134, line: 83, baseType: !395, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2133, file: !2134, line: 84, baseType: !400, size: 32, offset: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2133, file: !2134, line: 85, baseType: !331, size: 32, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2133, file: !2134, line: 86, baseType: !703, size: 128, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2133, file: !2134, line: 88, baseType: !1861, size: 128, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2133, file: !2134, line: 91, baseType: !1603, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2133, file: !2134, line: 94, baseType: !2143, size: 192, offset: 448)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2144, line: 30, size: 192, elements: !2145)
!2144 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2143, file: !2144, line: 31, baseType: !703, size: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2143, file: !2144, line: 32, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2149, line: 25, baseType: !2150)
!2149 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2149, line: 23, size: 64, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2150, file: !2149, line: 24, baseType: !1748, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2133, file: !2134, line: 97, baseType: !1110, size: 64, offset: 640)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2133, file: !2134, line: 100, baseType: !331, size: 32, offset: 704)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2133, file: !2134, line: 106, baseType: !331, size: 32, offset: 736)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2133, file: !2134, line: 107, baseType: !1603, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2133, file: !2134, line: 110, baseType: !331, size: 32, offset: 832)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2133, file: !2134, line: 111, baseType: !7, size: 32, offset: 864)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2133, file: !2134, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2133, file: !2134, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2133, file: !2134, line: 128, baseType: !331, size: 32, offset: 928)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2133, file: !2134, line: 129, baseType: !703, size: 128, offset: 960)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2133, file: !2134, line: 132, baseType: !1674, size: 512, offset: 1088)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2133, file: !2134, line: 133, baseType: !1682, size: 64, offset: 1600)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2133, file: !2134, line: 140, baseType: !2166, size: 256, offset: 1664)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2167, size: 256, elements: !1949)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2134, line: 38, size: 128, elements: !2168)
!2168 = !{!2169, !2170}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2167, file: !2134, line: 39, baseType: !653, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2167, file: !2134, line: 40, baseType: !653, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2133, file: !2134, line: 146, baseType: !2172, size: 192, offset: 1920)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2134, line: 66, size: 192, elements: !2173)
!2173 = !{!2174}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2172, file: !2134, line: 67, baseType: !2175, size: 192)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2134, line: 47, size: 192, elements: !2176)
!2176 = !{!2177, !2178, !2179}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2175, file: !2134, line: 48, baseType: !1244, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2175, file: !2134, line: 49, baseType: !1244, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2175, file: !2134, line: 50, baseType: !1244, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2133, file: !2134, line: 150, baseType: !1910, size: 640, offset: 2112)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2133, file: !2134, line: 153, baseType: !2182, size: 256, offset: 2752)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1851, size: 256, elements: !543)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2133, file: !2134, line: 159, baseType: !1851, size: 64, offset: 3008)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2133, file: !2134, line: 162, baseType: !331, size: 32, offset: 3072)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2133, file: !2134, line: 164, baseType: !2186, size: 64, offset: 3136)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2134, line: 164, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2133, file: !2134, line: 175, baseType: !2189, size: 32, offset: 3200)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !878, line: 805, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 798, size: 32, elements: !2191)
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2190, file: !878, line: 803, baseType: !877, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2190, file: !878, line: 804, baseType: !731, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2133, file: !2134, line: 176, baseType: !653, size: 64, offset: 3264)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2133, file: !2134, line: 176, baseType: !653, size: 64, offset: 3328)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2133, file: !2134, line: 176, baseType: !653, size: 64, offset: 3392)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2133, file: !2134, line: 176, baseType: !653, size: 64, offset: 3456)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2133, file: !2134, line: 177, baseType: !653, size: 64, offset: 3520)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2133, file: !2134, line: 178, baseType: !653, size: 64, offset: 3584)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2133, file: !2134, line: 179, baseType: !1898, size: 128, offset: 3648)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2133, file: !2134, line: 180, baseType: !612, size: 64, offset: 3776)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2133, file: !2134, line: 180, baseType: !612, size: 64, offset: 3840)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2133, file: !2134, line: 180, baseType: !612, size: 64, offset: 3904)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2133, file: !2134, line: 180, baseType: !612, size: 64, offset: 3968)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2133, file: !2134, line: 181, baseType: !612, size: 64, offset: 4032)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2133, file: !2134, line: 181, baseType: !612, size: 64, offset: 4096)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2133, file: !2134, line: 181, baseType: !612, size: 64, offset: 4160)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2133, file: !2134, line: 181, baseType: !612, size: 64, offset: 4224)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2133, file: !2134, line: 182, baseType: !612, size: 64, offset: 4288)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2133, file: !2134, line: 182, baseType: !612, size: 64, offset: 4352)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2133, file: !2134, line: 182, baseType: !612, size: 64, offset: 4416)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2133, file: !2134, line: 182, baseType: !612, size: 64, offset: 4480)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2133, file: !2134, line: 183, baseType: !612, size: 64, offset: 4544)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2133, file: !2134, line: 183, baseType: !612, size: 64, offset: 4608)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2133, file: !2134, line: 184, baseType: !2216, offset: 4672)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2217, line: 12, elements: !745)
!2217 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2133, file: !2134, line: 192, baseType: !539, size: 64, offset: 4672)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2133, file: !2134, line: 203, baseType: !2220, size: 2048, offset: 4736)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2221, size: 2048, elements: !2113)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2222, line: 43, size: 128, elements: !2223)
!2222 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2221, file: !2222, line: 44, baseType: !814, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2221, file: !2222, line: 45, baseType: !814, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2133, file: !2134, line: 220, baseType: !449, size: 8, offset: 6784)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2133, file: !2134, line: 221, baseType: !1592, size: 16, offset: 6800)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2133, file: !2134, line: 222, baseType: !1592, size: 16, offset: 6816)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2133, file: !2134, line: 224, baseType: !1443, size: 64, offset: 6848)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2133, file: !2134, line: 227, baseType: !1560, size: 192, offset: 6912)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2133, file: !2134, line: 233, baseType: !1560, size: 192, offset: 7104)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1604, file: !1605, line: 970, baseType: !2233, size: 64, offset: 9280)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2134, line: 20, size: 16576, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2234, file: !2134, line: 21, baseType: !731)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2234, file: !2134, line: 22, baseType: !395, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2234, file: !2134, line: 23, baseType: !1861, size: 128, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2234, file: !2134, line: 24, baseType: !2240, size: 16384, offset: 192)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2241, size: 16384, elements: !380)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2144, line: 49, size: 256, elements: !2242)
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2241, file: !2144, line: 50, baseType: !2244, size: 256)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2144, line: 35, size: 256, elements: !2245)
!2245 = !{!2246, !2253, !2254, !2260}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2244, file: !2144, line: 37, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2248, line: 19, baseType: !2249)
!2248 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2248, line: 18, baseType: !2251)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !331}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2244, file: !2144, line: 38, baseType: !612, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2244, file: !2144, line: 44, baseType: !2255, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2248, line: 22, baseType: !2256)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2248, line: 21, baseType: !2258)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2244, file: !2144, line: 46, baseType: !2148, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1604, file: !1605, line: 971, baseType: !2148, size: 64, offset: 9344)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1604, file: !1605, line: 972, baseType: !2148, size: 64, offset: 9408)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1604, file: !1605, line: 974, baseType: !2148, size: 64, offset: 9472)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1604, file: !1605, line: 975, baseType: !2143, size: 192, offset: 9536)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1604, file: !1605, line: 976, baseType: !612, size: 64, offset: 9728)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1604, file: !1605, line: 977, baseType: !812, size: 64, offset: 9792)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1604, file: !1605, line: 978, baseType: !7, size: 32, offset: 9856)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1604, file: !1605, line: 980, baseType: !858, size: 64, offset: 9920)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1604, file: !1605, line: 989, baseType: !2270, size: 128, offset: 9984)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2271, line: 35, size: 128, elements: !2272)
!2271 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2272 = !{!2273, !2274, !2275}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2270, file: !2271, line: 36, baseType: !331, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2270, file: !2271, line: 37, baseType: !400, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2270, file: !2271, line: 38, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2271, line: 23, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1604, file: !1605, line: 992, baseType: !653, size: 64, offset: 10112)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1604, file: !1605, line: 993, baseType: !653, size: 64, offset: 10176)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1604, file: !1605, line: 996, baseType: !731, offset: 10240)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1604, file: !1605, line: 999, baseType: !1251, offset: 10240)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1604, file: !1605, line: 1001, baseType: !2283, size: 64, offset: 10240)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1605, line: 636, size: 64, elements: !2284)
!2284 = !{!2285}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2283, file: !1605, line: 637, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1604, file: !1605, line: 1005, baseType: !1223, size: 128, offset: 10304)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1604, file: !1605, line: 1007, baseType: !1603, size: 64, offset: 10432)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1604, file: !1605, line: 1009, baseType: !2290, size: 64, offset: 10496)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1605, line: 1009, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1604, file: !1605, line: 1043, baseType: !293, size: 64, offset: 10560)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1604, file: !1605, line: 1046, baseType: !2294, size: 64, offset: 10624)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1605, line: 41, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1604, file: !1605, line: 1050, baseType: !2297, size: 64, offset: 10688)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1605, line: 42, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1604, file: !1605, line: 1054, baseType: !2300, size: 64, offset: 10752)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1605, line: 55, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1604, file: !1605, line: 1056, baseType: !2303, size: 64, offset: 10816)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1605, line: 40, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1604, file: !1605, line: 1058, baseType: !2306, size: 64, offset: 10880)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2308, line: 99, size: 704, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2335, !2336}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2307, file: !2308, line: 100, baseType: !1242, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2307, file: !2308, line: 101, baseType: !400, size: 32, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2307, file: !2308, line: 102, baseType: !400, size: 32, offset: 96)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2307, file: !2308, line: 105, baseType: !731, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2307, file: !2308, line: 107, baseType: !302, size: 16, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2307, file: !2308, line: 109, baseType: !1214, size: 128, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2307, file: !2308, line: 110, baseType: !2317, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2308, line: 73, size: 448, elements: !2319)
!2319 = !{!2320, !2323, !2324, !2329, !2334}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2318, file: !2308, line: 74, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2308, line: 74, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2318, file: !2308, line: 75, baseType: !2306, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2318, file: !2308, line: 83, baseType: !2325, size: 128, offset: 128)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2318, file: !2308, line: 83, size: 128, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2325, file: !2308, line: 84, baseType: !703, size: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2325, file: !2308, line: 85, baseType: !1404, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2318, file: !2308, line: 87, baseType: !2330, size: 128, offset: 256)
!2330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2318, file: !2308, line: 87, size: 128, elements: !2331)
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2330, file: !2308, line: 88, baseType: !1114, size: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2330, file: !2308, line: 89, baseType: !855, size: 128, align: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2318, file: !2308, line: 92, baseType: !7, size: 32, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2307, file: !2308, line: 111, baseType: !1110, size: 64, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2307, file: !2308, line: 113, baseType: !2337, size: 256, offset: 448)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2338, line: 102, size: 256, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2339 = !{!2340, !2341, !2342}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2337, file: !2338, line: 103, baseType: !1242, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2337, file: !2338, line: 104, baseType: !703, size: 128, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2337, file: !2338, line: 105, baseType: !2343, size: 64, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2338, line: 21, baseType: !2344)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1604, file: !1605, line: 1061, baseType: !2349, size: 64, offset: 10944)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1605, line: 43, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1604, file: !1605, line: 1064, baseType: !612, size: 64, offset: 11008)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1604, file: !1605, line: 1065, baseType: !2353, size: 64, offset: 11072)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2144, line: 14, baseType: !2355)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2144, line: 12, size: 384, elements: !2356)
!2356 = !{!2357}
!2357 = !DIDerivedType(tag: DW_TAG_member, scope: !2355, file: !2144, line: 13, baseType: !2358, size: 384)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2355, file: !2144, line: 13, size: 384, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2358, file: !2144, line: 13, baseType: !331, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2358, file: !2144, line: 13, baseType: !331, size: 32, offset: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2358, file: !2144, line: 13, baseType: !331, size: 32, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2358, file: !2144, line: 13, baseType: !2364, size: 256, offset: 128)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2365, line: 32, size: 256, elements: !2366)
!2365 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2366 = !{!2367, !2372, !2385, !2391, !2400, !2420, !2425}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2364, file: !2365, line: 37, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2365, line: 34, size: 64, elements: !2369)
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2368, file: !2365, line: 35, baseType: !1840, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2368, file: !2365, line: 36, baseType: !923, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2364, file: !2365, line: 45, baseType: !2373, size: 192)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2365, line: 40, size: 192, elements: !2374)
!2374 = !{!2375, !2377, !2378, !2384}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2373, file: !2365, line: 41, baseType: !2376, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !800, line: 95, baseType: !331)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2373, file: !2365, line: 42, baseType: !331, size: 32, offset: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2373, file: !2365, line: 43, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2365, line: 11, baseType: !2380)
!2380 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2365, line: 8, size: 64, elements: !2381)
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2380, file: !2365, line: 9, baseType: !331, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2380, file: !2365, line: 10, baseType: !293, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2373, file: !2365, line: 44, baseType: !331, size: 32, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2364, file: !2365, line: 52, baseType: !2386, size: 128)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2365, line: 48, size: 128, elements: !2387)
!2387 = !{!2388, !2389, !2390}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2386, file: !2365, line: 49, baseType: !1840, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2386, file: !2365, line: 50, baseType: !923, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2386, file: !2365, line: 51, baseType: !2379, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2364, file: !2365, line: 61, baseType: !2392, size: 256)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2365, line: 55, size: 256, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2397, !2399}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2392, file: !2365, line: 56, baseType: !1840, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2392, file: !2365, line: 57, baseType: !923, size: 32, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2392, file: !2365, line: 58, baseType: !331, size: 32, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2392, file: !2365, line: 59, baseType: !2398, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !800, line: 94, baseType: !801)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2392, file: !2365, line: 60, baseType: !2398, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2364, file: !2365, line: 95, baseType: !2401, size: 256)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2365, line: 64, size: 256, elements: !2402)
!2402 = !{!2403, !2404}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2401, file: !2365, line: 65, baseType: !293, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, scope: !2401, file: !2365, line: 77, baseType: !2405, size: 192, offset: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2401, file: !2365, line: 77, size: 192, elements: !2406)
!2406 = !{!2407, !2408, !2415}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2405, file: !2365, line: 82, baseType: !1592, size: 16)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2405, file: !2365, line: 88, baseType: !2409, size: 192)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2405, file: !2365, line: 84, size: 192, elements: !2410)
!2410 = !{!2411, !2413, !2414}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2409, file: !2365, line: 85, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !426)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2409, file: !2365, line: 86, baseType: !293, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2409, file: !2365, line: 87, baseType: !293, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2405, file: !2365, line: 93, baseType: !2416, size: 96)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2405, file: !2365, line: 90, size: 96, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2416, file: !2365, line: 91, baseType: !2412, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2416, file: !2365, line: 92, baseType: !416, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2364, file: !2365, line: 101, baseType: !2421, size: 128)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2365, line: 98, size: 128, elements: !2422)
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2421, file: !2365, line: 99, baseType: !294, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2421, file: !2365, line: 100, baseType: !331, size: 32, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2364, file: !2365, line: 108, baseType: !2426, size: 128)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2364, file: !2365, line: 104, size: 128, elements: !2427)
!2427 = !{!2428, !2429, !2430}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2426, file: !2365, line: 105, baseType: !293, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2426, file: !2365, line: 106, baseType: !331, size: 32, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2426, file: !2365, line: 107, baseType: !7, size: 32, offset: 96)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1604, file: !1605, line: 1067, baseType: !2216, offset: 11136)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1604, file: !1605, line: 1099, baseType: !2433, size: 64, offset: 11136)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1605, line: 56, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1604, file: !1605, line: 1103, baseType: !703, size: 128, offset: 11200)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1604, file: !1605, line: 1104, baseType: !2437, size: 64, offset: 11328)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1605, line: 46, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1604, file: !1605, line: 1105, baseType: !1560, size: 192, offset: 11392)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1604, file: !1605, line: 1106, baseType: !7, size: 32, offset: 11584)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1604, file: !1605, line: 1109, baseType: !2442, size: 128, offset: 11648)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2443, size: 128, elements: !1949)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1605, line: 51, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1604, file: !1605, line: 1110, baseType: !1560, size: 192, offset: 11776)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1604, file: !1605, line: 1111, baseType: !703, size: 128, offset: 11968)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1604, file: !1605, line: 1173, baseType: !2448, size: 64, offset: 12096)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2450, line: 62, size: 256, align: 256, elements: !2451)
!2450 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2451 = !{!2452, !2453, !2454, !2459}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2449, file: !2450, line: 75, baseType: !416, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2449, file: !2450, line: 90, baseType: !416, size: 32, offset: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2449, file: !2450, line: 124, baseType: !2455, size: 64, offset: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2449, file: !2450, line: 109, size: 64, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2455, file: !2450, line: 110, baseType: !538, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2455, file: !2450, line: 112, baseType: !538, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2449, file: !2450, line: 144, baseType: !416, size: 32, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1604, file: !1605, line: 1174, baseType: !415, size: 32, offset: 12160)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1604, file: !1605, line: 1179, baseType: !612, size: 64, offset: 12224)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1604, file: !1605, line: 1182, baseType: !2463, size: 128, offset: 12288)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1540, line: 76, size: 128, elements: !2464)
!2464 = !{!2465, !2470, !2471}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2463, file: !1540, line: 85, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2467, line: 7, size: 64, elements: !2468)
!2467 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2468 = !{!2469}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2466, file: !2467, line: 12, baseType: !1745, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2463, file: !1540, line: 88, baseType: !449, size: 8, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2463, file: !1540, line: 95, baseType: !449, size: 8, offset: 72)
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 1184, baseType: !2473, size: 128, offset: 12416)
!2473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 1184, size: 128, elements: !2474)
!2474 = !{!2475, !2476}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2473, file: !1605, line: 1185, baseType: !395, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2473, file: !1605, line: 1186, baseType: !855, size: 128, align: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1604, file: !1605, line: 1190, baseType: !2478, size: 64, offset: 12544)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1605, line: 53, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1604, file: !1605, line: 1192, baseType: !2481, size: 128, offset: 12608)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1540, line: 64, size: 128, elements: !2482)
!2482 = !{!2483, !2484, !2485}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2481, file: !1540, line: 65, baseType: !1196, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2481, file: !1540, line: 67, baseType: !416, size: 32, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2481, file: !1540, line: 68, baseType: !416, size: 32, offset: 96)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1604, file: !1605, line: 1206, baseType: !331, size: 32, offset: 12736)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1604, file: !1605, line: 1207, baseType: !331, size: 32, offset: 12768)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1604, file: !1605, line: 1209, baseType: !612, size: 64, offset: 12800)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1604, file: !1605, line: 1219, baseType: !653, size: 64, offset: 12864)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1604, file: !1605, line: 1220, baseType: !653, size: 64, offset: 12928)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1604, file: !1605, line: 1317, baseType: !331, size: 32, offset: 12992)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1604, file: !1605, line: 1319, baseType: !1603, size: 64, offset: 13056)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1604, file: !1605, line: 1322, baseType: !2494, size: 64, offset: 13120)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2496, line: 56, size: 512, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504, !2506}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2495, file: !2496, line: 57, baseType: !2494, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2495, file: !2496, line: 58, baseType: !293, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2495, file: !2496, line: 59, baseType: !612, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2495, file: !2496, line: 60, baseType: !612, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2495, file: !2496, line: 61, baseType: !1291, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2495, file: !2496, line: 62, baseType: !7, size: 32, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2495, file: !2496, line: 63, baseType: !2505, size: 64, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !292, line: 153, baseType: !653)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2495, file: !2496, line: 64, baseType: !2507, size: 64, offset: 448)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1604, file: !1605, line: 1326, baseType: !395, size: 32, offset: 13184)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1604, file: !1605, line: 1342, baseType: !293, size: 64, offset: 13248)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1604, file: !1605, line: 1343, baseType: !538, size: 64, offset: 13312)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1604, file: !1605, line: 1344, baseType: !653, size: 64, offset: 13376)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1604, file: !1605, line: 1345, baseType: !538, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1604, file: !1605, line: 1346, baseType: !538, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1604, file: !1605, line: 1347, baseType: !538, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1604, file: !1605, line: 1348, baseType: !855, size: 128, align: 64, offset: 13504)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1604, file: !1605, line: 1358, baseType: !2518, size: 34816, offset: 13824)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2519, line: 485, size: 34816, elements: !2520)
!2519 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2520 = !{!2521, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2550, !2551, !2552, !2553, !2554, !2555, !2558, !2559, !2560}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2518, file: !2519, line: 487, baseType: !2522, size: 192)
!2522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2523, size: 192, elements: !505)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2524, line: 16, size: 64, elements: !2525)
!2524 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2523, file: !2524, line: 17, baseType: !344, size: 16)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2523, file: !2524, line: 18, baseType: !344, size: 16, offset: 16)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2523, file: !2524, line: 19, baseType: !344, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2523, file: !2524, line: 19, baseType: !344, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2523, file: !2524, line: 19, baseType: !344, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2523, file: !2524, line: 19, baseType: !344, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2523, file: !2524, line: 19, baseType: !344, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2523, file: !2524, line: 20, baseType: !344, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2523, file: !2524, line: 20, baseType: !344, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2523, file: !2524, line: 20, baseType: !344, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2523, file: !2524, line: 20, baseType: !344, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2523, file: !2524, line: 20, baseType: !344, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2523, file: !2524, line: 20, baseType: !344, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2518, file: !2519, line: 491, baseType: !612, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2518, file: !2519, line: 495, baseType: !302, size: 16, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2518, file: !2519, line: 496, baseType: !302, size: 16, offset: 272)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2518, file: !2519, line: 497, baseType: !302, size: 16, offset: 288)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2518, file: !2519, line: 498, baseType: !302, size: 16, offset: 304)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2518, file: !2519, line: 502, baseType: !612, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2518, file: !2519, line: 503, baseType: !612, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2518, file: !2519, line: 514, baseType: !2547, size: 256, offset: 448)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2548, size: 256, elements: !543)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2519, line: 483, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2518, file: !2519, line: 516, baseType: !612, size: 64, offset: 704)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2518, file: !2519, line: 518, baseType: !612, size: 64, offset: 768)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2518, file: !2519, line: 520, baseType: !612, size: 64, offset: 832)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2518, file: !2519, line: 521, baseType: !612, size: 64, offset: 896)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2518, file: !2519, line: 522, baseType: !612, size: 64, offset: 960)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2518, file: !2519, line: 528, baseType: !2556, size: 64, offset: 1024)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2519, line: 10, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2518, file: !2519, line: 535, baseType: !612, size: 64, offset: 1088)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2518, file: !2519, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2518, file: !2519, line: 540, baseType: !2561, size: 33280, offset: 1536)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2562, line: 317, size: 33280, elements: !2563)
!2562 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2563 = !{!2564, !2565, !2566}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2561, file: !2562, line: 330, baseType: !7, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2561, file: !2562, line: 337, baseType: !612, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2561, file: !2562, line: 348, baseType: !2567, size: 32768, offset: 512)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2562, line: 304, size: 32768, elements: !2568)
!2568 = !{!2569, !2584, !2623, !2673, !2686}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2567, file: !2562, line: 305, baseType: !2570, size: 896)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2562, line: 12, size: 896, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2583}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2570, file: !2562, line: 13, baseType: !415, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2570, file: !2562, line: 14, baseType: !415, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2570, file: !2562, line: 15, baseType: !415, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2570, file: !2562, line: 16, baseType: !415, size: 32, offset: 96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2570, file: !2562, line: 17, baseType: !415, size: 32, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2570, file: !2562, line: 18, baseType: !415, size: 32, offset: 160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2570, file: !2562, line: 19, baseType: !415, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2570, file: !2562, line: 22, baseType: !2580, size: 640, offset: 224)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 640, elements: !2581)
!2581 = !{!2582}
!2582 = !DISubrange(count: 20)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2570, file: !2562, line: 25, baseType: !415, size: 32, offset: 864)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2567, file: !2562, line: 306, baseType: !2585, size: 4096, align: 128)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2562, line: 34, size: 4096, align: 128, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2606, !2607, !2608, !2612, !2614, !2618}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2585, file: !2562, line: 35, baseType: !344, size: 16)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2585, file: !2562, line: 36, baseType: !344, size: 16, offset: 16)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2585, file: !2562, line: 37, baseType: !344, size: 16, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2585, file: !2562, line: 38, baseType: !344, size: 16, offset: 48)
!2591 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !2562, line: 39, baseType: !2592, size: 128, offset: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !2562, line: 39, size: 128, elements: !2593)
!2593 = !{!2594, !2599}
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !2562, line: 40, baseType: !2595, size: 128)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2592, file: !2562, line: 40, size: 128, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2595, file: !2562, line: 41, baseType: !653, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2595, file: !2562, line: 42, baseType: !653, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !2562, line: 44, baseType: !2600, size: 128)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2592, file: !2562, line: 44, size: 128, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2600, file: !2562, line: 45, baseType: !415, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2600, file: !2562, line: 46, baseType: !415, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2600, file: !2562, line: 47, baseType: !415, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2600, file: !2562, line: 48, baseType: !415, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2585, file: !2562, line: 51, baseType: !415, size: 32, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2585, file: !2562, line: 52, baseType: !415, size: 32, offset: 224)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2585, file: !2562, line: 55, baseType: !2609, size: 1024, offset: 256)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 1024, elements: !2610)
!2610 = !{!2611}
!2611 = !DISubrange(count: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2585, file: !2562, line: 58, baseType: !2613, size: 2048, offset: 1280)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 2048, elements: !380)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2585, file: !2562, line: 60, baseType: !2615, size: 384, offset: 3328)
!2615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 384, elements: !2616)
!2616 = !{!2617}
!2617 = !DISubrange(count: 12)
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !2562, line: 62, baseType: !2619, size: 384, offset: 3712)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !2562, line: 62, size: 384, elements: !2620)
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2619, file: !2562, line: 63, baseType: !2615, size: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2619, file: !2562, line: 64, baseType: !2615, size: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2567, file: !2562, line: 307, baseType: !2624, size: 1088)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2562, line: 79, size: 1088, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2672}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2624, file: !2562, line: 80, baseType: !415, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2624, file: !2562, line: 81, baseType: !415, size: 32, offset: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2624, file: !2562, line: 82, baseType: !415, size: 32, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2624, file: !2562, line: 83, baseType: !415, size: 32, offset: 96)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2624, file: !2562, line: 84, baseType: !415, size: 32, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2624, file: !2562, line: 85, baseType: !415, size: 32, offset: 160)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2624, file: !2562, line: 86, baseType: !415, size: 32, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2624, file: !2562, line: 88, baseType: !2580, size: 640, offset: 224)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2624, file: !2562, line: 89, baseType: !296, size: 8, offset: 864)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2624, file: !2562, line: 90, baseType: !296, size: 8, offset: 872)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2624, file: !2562, line: 91, baseType: !296, size: 8, offset: 880)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2624, file: !2562, line: 92, baseType: !296, size: 8, offset: 888)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2624, file: !2562, line: 93, baseType: !296, size: 8, offset: 896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2624, file: !2562, line: 94, baseType: !296, size: 8, offset: 904)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2624, file: !2562, line: 95, baseType: !2641, size: 64, offset: 960)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2643, line: 11, size: 128, elements: !2644)
!2643 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2644 = !{!2645, !2646}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2642, file: !2643, line: 12, baseType: !294, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2642, file: !2643, line: 13, baseType: !2647, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2649, line: 56, size: 1344, elements: !2650)
!2649 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2648, file: !2649, line: 61, baseType: !612, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2648, file: !2649, line: 62, baseType: !612, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2648, file: !2649, line: 63, baseType: !612, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2648, file: !2649, line: 64, baseType: !612, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2648, file: !2649, line: 65, baseType: !612, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2648, file: !2649, line: 66, baseType: !612, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2648, file: !2649, line: 68, baseType: !612, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2648, file: !2649, line: 69, baseType: !612, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2648, file: !2649, line: 70, baseType: !612, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2648, file: !2649, line: 71, baseType: !612, size: 64, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2648, file: !2649, line: 72, baseType: !612, size: 64, offset: 640)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2648, file: !2649, line: 73, baseType: !612, size: 64, offset: 704)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2648, file: !2649, line: 74, baseType: !612, size: 64, offset: 768)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2648, file: !2649, line: 75, baseType: !612, size: 64, offset: 832)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2648, file: !2649, line: 76, baseType: !612, size: 64, offset: 896)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2648, file: !2649, line: 81, baseType: !612, size: 64, offset: 960)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2648, file: !2649, line: 83, baseType: !612, size: 64, offset: 1024)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2648, file: !2649, line: 84, baseType: !612, size: 64, offset: 1088)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2648, file: !2649, line: 85, baseType: !612, size: 64, offset: 1152)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2648, file: !2649, line: 86, baseType: !612, size: 64, offset: 1216)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2648, file: !2649, line: 87, baseType: !612, size: 64, offset: 1280)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2624, file: !2562, line: 96, baseType: !415, size: 32, offset: 1024)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2567, file: !2562, line: 308, baseType: !2674, size: 4608, align: 512)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2562, line: 289, size: 4608, align: 512, elements: !2675)
!2675 = !{!2676, !2677, !2684}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2674, file: !2562, line: 290, baseType: !2585, size: 4096, align: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2674, file: !2562, line: 291, baseType: !2678, size: 512, offset: 4096)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2562, line: 268, size: 512, elements: !2679)
!2679 = !{!2680, !2681, !2682}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2678, file: !2562, line: 269, baseType: !653, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2678, file: !2562, line: 270, baseType: !653, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2678, file: !2562, line: 271, baseType: !2683, size: 384, offset: 128)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 384, elements: !578)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2674, file: !2562, line: 292, baseType: !2685, offset: 4608)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, elements: !2101)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2567, file: !2562, line: 309, baseType: !2687, size: 32768)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 32768, elements: !2688)
!2688 = !{!2689}
!2689 = !DISubrange(count: 4096)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1600, file: !1198, line: 378, baseType: !2691, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1596, file: !1198, line: 384, baseType: !1882, size: 192, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1447, file: !1198, line: 500, baseType: !731, offset: 6656)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1447, file: !1198, line: 501, baseType: !2695, size: 64, offset: 6656)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1198, line: 387, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1447, file: !1198, line: 516, baseType: !2091, size: 64, offset: 6720)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1447, file: !1198, line: 519, baseType: !842, size: 64, offset: 6784)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1447, file: !1198, line: 521, baseType: !2700, size: 64, offset: 6848)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1198, line: 521, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1447, file: !1198, line: 545, baseType: !400, size: 32, offset: 6912)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1447, file: !1198, line: 548, baseType: !449, size: 8, offset: 6944)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1447, file: !1198, line: 550, baseType: !2705, offset: 6952)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2706, line: 142, elements: !745)
!2706 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1447, file: !1198, line: 554, baseType: !2337, size: 256, offset: 6976)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1447, file: !1198, line: 557, baseType: !415, size: 32, offset: 7232)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1444, file: !1198, line: 565, baseType: !2710, offset: 7296)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, elements: !2711)
!2711 = !{!2712}
!2712 = !DISubrange(count: -1)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1440, file: !1198, line: 151, baseType: !400, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1433, file: !1198, line: 156, baseType: !731, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 159, baseType: !2716, size: 128)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 159, size: 128, elements: !2717)
!2717 = !{!2718, !2721}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2716, file: !1198, line: 161, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1198, line: 161, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2716, file: !1198, line: 162, baseType: !293, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1202, file: !1198, line: 176, baseType: !855, size: 128, align: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1198, line: 179, baseType: !2724, size: 32, offset: 384)
!2724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1198, line: 179, size: 32, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2729}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2724, file: !1198, line: 184, baseType: !400, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2724, file: !1198, line: 192, baseType: !7, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2724, file: !1198, line: 194, baseType: !7, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2724, file: !1198, line: 195, baseType: !331, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1197, file: !1198, line: 199, baseType: !400, size: 32, offset: 416)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1132, file: !208, line: 1964, baseType: !2732, size: 64, offset: 1344)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!294, !1074, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2737, line: 12, size: 256, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2738 = !{!2739, !2740, !2741, !2742, !2743}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2736, file: !2737, line: 13, baseType: !291, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2736, file: !2737, line: 16, baseType: !331, size: 32, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2736, file: !2737, line: 23, baseType: !612, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2736, file: !2737, line: 30, baseType: !612, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2736, file: !2737, line: 33, baseType: !2744, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1198, line: 27, flags: DIFlagFwdDecl)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1132, file: !208, line: 1966, baseType: !2732, size: 64, offset: 1408)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1075, file: !208, line: 1424, baseType: !2748, size: 64, offset: 448)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2750)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2751)
!2751 = !{!2752, !2798, !2802, !2806, !2807, !2808, !2809, !2810, !2815, !2820, !2824}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2750, file: !202, line: 323, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!331, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2783, !2784, !2785}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2757, file: !202, line: 295, baseType: !1114, size: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2757, file: !202, line: 296, baseType: !703, size: 128, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2757, file: !202, line: 297, baseType: !703, size: 128, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2757, file: !202, line: 298, baseType: !703, size: 128, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2757, file: !202, line: 299, baseType: !1560, size: 192, offset: 512)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2757, file: !202, line: 300, baseType: !731, offset: 704)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2757, file: !202, line: 301, baseType: !400, size: 32, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2757, file: !202, line: 302, baseType: !1074, size: 64, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2757, file: !202, line: 303, baseType: !2768, size: 64, offset: 832)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2769)
!2769 = !{!2770, !2782}
!2770 = !DIDerivedType(tag: DW_TAG_member, scope: !2768, file: !202, line: 69, baseType: !2771, size: 32)
!2771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2768, file: !202, line: 69, size: 32, elements: !2772)
!2772 = !{!2773, !2774, !2775}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2771, file: !202, line: 70, baseType: !917, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2771, file: !202, line: 71, baseType: !925, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2771, file: !202, line: 72, baseType: !2776, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2777, line: 24, baseType: !2778)
!2777 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2777, line: 22, size: 32, elements: !2779)
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2778, file: !2777, line: 23, baseType: !2781, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2777, line: 20, baseType: !923)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2768, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2757, file: !202, line: 304, baseType: !1008, size: 64, offset: 896)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2757, file: !202, line: 305, baseType: !612, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2757, file: !202, line: 306, baseType: !2786, size: 576, offset: 1024)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2787)
!2787 = !{!2788, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2786, file: !202, line: 206, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !542)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2786, file: !202, line: 207, baseType: !2789, size: 64, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2786, file: !202, line: 208, baseType: !2789, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2786, file: !202, line: 209, baseType: !2789, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2786, file: !202, line: 210, baseType: !2789, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2786, file: !202, line: 211, baseType: !2789, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2786, file: !202, line: 212, baseType: !2789, size: 64, offset: 384)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2786, file: !202, line: 213, baseType: !1015, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2786, file: !202, line: 214, baseType: !1015, size: 64, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2750, file: !202, line: 324, baseType: !2799, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!2756, !1074, !331}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2750, file: !202, line: 325, baseType: !2803, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2756}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2750, file: !202, line: 326, baseType: !2753, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2750, file: !202, line: 327, baseType: !2753, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2750, file: !202, line: 328, baseType: !2753, size: 64, offset: 320)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2750, file: !202, line: 329, baseType: !1160, size: 64, offset: 384)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2750, file: !202, line: 332, baseType: !2811, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2814, !911}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2750, file: !202, line: 333, baseType: !2816, size: 64, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!331, !911, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2750, file: !202, line: 335, baseType: !2821, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!331, !911, !2814}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2750, file: !202, line: 337, baseType: !2825, size: 64, offset: 640)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!331, !1074, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1075, file: !208, line: 1425, baseType: !2830, size: 64, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2833)
!2833 = !{!2834, !2838, !2839, !2843, !2844, !2845, !2860, !2883, !2887, !2888, !2911}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2832, file: !202, line: 429, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!331, !1074, !331, !331, !1024}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2832, file: !202, line: 430, baseType: !1160, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2832, file: !202, line: 431, baseType: !2840, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!331, !1074, !7}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2832, file: !202, line: 432, baseType: !2840, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2832, file: !202, line: 433, baseType: !1160, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2832, file: !202, line: 434, baseType: !2846, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!331, !1074, !331, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2850, file: !202, line: 416, baseType: !331, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2850, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2850, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2850, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2850, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2850, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2850, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2850, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2832, file: !202, line: 435, baseType: !2861, size: 64, offset: 384)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!331, !1074, !2768, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2865, file: !202, line: 344, baseType: !331, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2865, file: !202, line: 345, baseType: !653, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2865, file: !202, line: 346, baseType: !653, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2865, file: !202, line: 347, baseType: !653, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2865, file: !202, line: 348, baseType: !653, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2865, file: !202, line: 349, baseType: !653, size: 64, offset: 320)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2865, file: !202, line: 350, baseType: !653, size: 64, offset: 384)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2865, file: !202, line: 351, baseType: !1248, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2865, file: !202, line: 353, baseType: !1248, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2865, file: !202, line: 354, baseType: !331, size: 32, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2865, file: !202, line: 355, baseType: !331, size: 32, offset: 608)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2865, file: !202, line: 356, baseType: !653, size: 64, offset: 640)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2865, file: !202, line: 357, baseType: !653, size: 64, offset: 704)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2865, file: !202, line: 358, baseType: !653, size: 64, offset: 768)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2865, file: !202, line: 359, baseType: !1248, size: 64, offset: 832)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2865, file: !202, line: 360, baseType: !331, size: 32, offset: 896)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2832, file: !202, line: 436, baseType: !2884, size: 64, offset: 448)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!331, !1074, !2828, !2864}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2832, file: !202, line: 438, baseType: !2861, size: 64, offset: 512)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2832, file: !202, line: 439, baseType: !2889, size: 64, offset: 576)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!331, !1074, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2893, file: !202, line: 410, baseType: !7, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2893, file: !202, line: 411, baseType: !2897, size: 1344, offset: 64)
!2897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2898, size: 1344, elements: !505)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2910}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2898, file: !202, line: 396, baseType: !7, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2898, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2898, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2898, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2898, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2898, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2898, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2898, file: !202, line: 404, baseType: !539, size: 64, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2898, file: !202, line: 405, baseType: !2909, size: 64, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !292, line: 126, baseType: !653)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2898, file: !202, line: 406, baseType: !2909, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2832, file: !202, line: 440, baseType: !2840, size: 64, offset: 640)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1075, file: !208, line: 1426, baseType: !2913, size: 64, offset: 576)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2915)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1075, file: !208, line: 1427, baseType: !612, size: 64, offset: 640)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1075, file: !208, line: 1428, baseType: !612, size: 64, offset: 704)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1075, file: !208, line: 1429, baseType: !612, size: 64, offset: 768)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1075, file: !208, line: 1430, baseType: !872, size: 64, offset: 832)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1075, file: !208, line: 1431, baseType: !1238, size: 256, offset: 896)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1075, file: !208, line: 1432, baseType: !331, size: 32, offset: 1152)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1075, file: !208, line: 1433, baseType: !400, size: 32, offset: 1184)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1075, file: !208, line: 1437, baseType: !2924, size: 64, offset: 1216)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1075, file: !208, line: 1449, baseType: !2929, size: 64, offset: 1280)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !888, line: 34, size: 64, elements: !2930)
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2929, file: !888, line: 35, baseType: !891, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1075, file: !208, line: 1450, baseType: !703, size: 128, offset: 1344)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1075, file: !208, line: 1451, baseType: !2934, size: 64, offset: 1472)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1075, file: !208, line: 1452, baseType: !2303, size: 64, offset: 1536)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1075, file: !208, line: 1453, baseType: !2938, size: 64, offset: 1600)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1075, file: !208, line: 1454, baseType: !1114, size: 128, offset: 1664)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1075, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1075, file: !208, line: 1456, baseType: !2943, size: 2432, offset: 1856)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2944)
!2944 = !{!2945, !2946, !2947, !2949, !2981}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2943, file: !202, line: 519, baseType: !7, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2943, file: !202, line: 520, baseType: !1238, size: 256, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2943, file: !202, line: 521, baseType: !2948, size: 192, offset: 320)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 192, elements: !505)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2943, file: !202, line: 522, baseType: !2950, size: 1728, offset: 512)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2951, size: 1728, elements: !505)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2952)
!2952 = !{!2953, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2951, file: !202, line: 223, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2956)
!2956 = !{!2957, !2958, !2971, !2972}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2955, file: !202, line: 444, baseType: !331, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2955, file: !202, line: 445, baseType: !2959, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2961)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2961, file: !202, line: 311, baseType: !1160, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2961, file: !202, line: 312, baseType: !1160, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2961, file: !202, line: 313, baseType: !1160, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2961, file: !202, line: 314, baseType: !1160, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2961, file: !202, line: 315, baseType: !2753, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2961, file: !202, line: 316, baseType: !2753, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2961, file: !202, line: 317, baseType: !2753, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2961, file: !202, line: 318, baseType: !2825, size: 64, offset: 448)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2955, file: !202, line: 446, baseType: !318, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2955, file: !202, line: 447, baseType: !2954, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2951, file: !202, line: 224, baseType: !331, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2951, file: !202, line: 226, baseType: !703, size: 128, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2951, file: !202, line: 227, baseType: !612, size: 64, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2951, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2951, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2951, file: !202, line: 230, baseType: !2789, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2951, file: !202, line: 231, baseType: !2789, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2951, file: !202, line: 232, baseType: !293, size: 64, offset: 512)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2943, file: !202, line: 523, baseType: !2982, size: 192, offset: 2240)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2959, size: 192, elements: !505)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1075, file: !208, line: 1458, baseType: !2984, size: 2112, offset: 4288)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2985)
!2985 = !{!2986, !2987, !2988}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2984, file: !208, line: 1411, baseType: !331, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2984, file: !208, line: 1412, baseType: !1861, size: 128, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2984, file: !208, line: 1413, baseType: !2989, size: 1920, offset: 192)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2990, size: 1920, elements: !505)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2991, line: 12, size: 640, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2992 = !{!2993, !3001, !3002, !3007, !3008}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2990, file: !2991, line: 13, baseType: !2994, size: 320)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2995, line: 17, size: 320, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2994, file: !2995, line: 18, baseType: !331, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2994, file: !2995, line: 19, baseType: !331, size: 32, offset: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2994, file: !2995, line: 20, baseType: !1861, size: 128, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2994, file: !2995, line: 22, baseType: !855, size: 128, align: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2990, file: !2991, line: 14, baseType: !369, size: 64, offset: 320)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2990, file: !2991, line: 15, baseType: !3003, size: 64, offset: 384)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3004, line: 16, size: 64, elements: !3005)
!3004 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3003, file: !3004, line: 17, baseType: !1603, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2990, file: !2991, line: 16, baseType: !1861, size: 128, offset: 448)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2990, file: !2991, line: 17, baseType: !400, size: 32, offset: 576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1075, file: !208, line: 1465, baseType: !293, size: 64, offset: 6400)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1075, file: !208, line: 1468, baseType: !415, size: 32, offset: 6464)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1075, file: !208, line: 1470, baseType: !1015, size: 64, offset: 6528)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1075, file: !208, line: 1471, baseType: !1015, size: 64, offset: 6592)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1075, file: !208, line: 1473, baseType: !416, size: 32, offset: 6656)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1075, file: !208, line: 1474, baseType: !3015, size: 64, offset: 6720)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1075, file: !208, line: 1477, baseType: !3018, size: 256, offset: 6784)
!3018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !2610)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1075, file: !208, line: 1478, baseType: !3020, size: 128, offset: 7040)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3021, line: 18, baseType: !3022)
!3021 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3021, line: 16, size: 128, elements: !3023)
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3022, file: !3021, line: 17, baseType: !3025, size: 128)
!3025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 128, elements: !2113)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1075, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1075, file: !208, line: 1481, baseType: !3028, size: 32, offset: 7200)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !292, line: 150, baseType: !7)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1075, file: !208, line: 1487, baseType: !1560, size: 192, offset: 7232)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1075, file: !208, line: 1493, baseType: !314, size: 64, offset: 7424)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1075, file: !208, line: 1495, baseType: !3032, size: 64, offset: 7488)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3034)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !870, line: 135, size: 1024, align: 512, elements: !3035)
!3035 = !{!3036, !3040, !3041, !3048, !3054, !3058, !3062, !3066, !3067, !3071, !3075, !3080, !3084}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3034, file: !870, line: 136, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!331, !872, !7}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3034, file: !870, line: 137, baseType: !3037, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3034, file: !870, line: 138, baseType: !3042, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!331, !3045, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3034, file: !870, line: 139, baseType: !3049, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!331, !3045, !7, !314, !3052}
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3034, file: !870, line: 141, baseType: !3055, size: 64, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!331, !3045}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3034, file: !870, line: 142, baseType: !3059, size: 64, offset: 320)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!331, !872}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3034, file: !870, line: 143, baseType: !3063, size: 64, offset: 384)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !872}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3034, file: !870, line: 144, baseType: !3063, size: 64, offset: 448)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3034, file: !870, line: 145, baseType: !3068, size: 64, offset: 512)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !872, !911}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3034, file: !870, line: 146, baseType: !3072, size: 64, offset: 576)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!337, !872, !337, !331}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3034, file: !870, line: 147, baseType: !3076, size: 64, offset: 640)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!868, !3079}
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3034, file: !870, line: 148, baseType: !3081, size: 64, offset: 704)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!331, !1024, !449}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3034, file: !870, line: 149, baseType: !3085, size: 64, offset: 768)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!872, !872, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1075, file: !208, line: 1500, baseType: !331, size: 32, offset: 7552)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1075, file: !208, line: 1502, baseType: !3092, size: 448, offset: 7616)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2737, line: 60, size: 448, elements: !3093)
!3093 = !{!3094, !3099, !3100, !3101, !3102, !3103, !3104}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3092, file: !2737, line: 61, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!612, !3098, !2735}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3092, file: !2737, line: 63, baseType: !3095, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3092, file: !2737, line: 66, baseType: !294, size: 64, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3092, file: !2737, line: 67, baseType: !331, size: 32, offset: 192)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3092, file: !2737, line: 68, baseType: !7, size: 32, offset: 224)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3092, file: !2737, line: 71, baseType: !703, size: 128, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3092, file: !2737, line: 77, baseType: !3105, size: 64, offset: 384)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1075, file: !208, line: 1505, baseType: !1242, size: 64, offset: 8064)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1075, file: !208, line: 1508, baseType: !1242, size: 64, offset: 8128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1075, file: !208, line: 1511, baseType: !331, size: 32, offset: 8192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1075, file: !208, line: 1514, baseType: !1378, size: 32, offset: 8224)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1075, file: !208, line: 1517, baseType: !3111, size: 64, offset: 8256)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2338, line: 18, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1075, file: !208, line: 1518, baseType: !1110, size: 64, offset: 8320)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1075, file: !208, line: 1525, baseType: !2091, size: 64, offset: 8384)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1075, file: !208, line: 1532, baseType: !3116, size: 64, offset: 8448)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3117, line: 52, size: 64, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3118 = !{!3119}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3116, file: !3117, line: 53, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3117, line: 40, size: 256, elements: !3122)
!3122 = !{!3123, !3124, !3129}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3121, file: !3117, line: 42, baseType: !731)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3121, file: !3117, line: 44, baseType: !3125, size: 192)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3117, line: 28, size: 192, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3125, file: !3117, line: 29, baseType: !703, size: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3125, file: !3117, line: 31, baseType: !294, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3121, file: !3117, line: 49, baseType: !294, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1075, file: !208, line: 1533, baseType: !3116, size: 64, offset: 8512)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1075, file: !208, line: 1534, baseType: !855, size: 128, align: 64, offset: 8576)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1075, file: !208, line: 1535, baseType: !2337, size: 256, offset: 8704)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1075, file: !208, line: 1537, baseType: !1560, size: 192, offset: 8960)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1075, file: !208, line: 1542, baseType: !331, size: 32, offset: 9152)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1075, file: !208, line: 1545, baseType: !731, offset: 9184)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1075, file: !208, line: 1546, baseType: !703, size: 128, offset: 9216)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1075, file: !208, line: 1548, baseType: !731, offset: 9344)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1075, file: !208, line: 1549, baseType: !703, size: 128, offset: 9344)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !912, file: !208, line: 624, baseType: !1209, size: 64, offset: 256)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !912, file: !208, line: 631, baseType: !612, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !208, line: 639, baseType: !3142, size: 32, offset: 384)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !208, line: 639, size: 32, elements: !3143)
!3143 = !{!3144, !3146}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3142, file: !208, line: 640, baseType: !3145, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3142, file: !208, line: 641, baseType: !7, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !912, file: !208, line: 643, baseType: !990, size: 32, offset: 416)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !912, file: !208, line: 644, baseType: !1008, size: 64, offset: 448)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !912, file: !208, line: 645, baseType: !1011, size: 128, offset: 512)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !912, file: !208, line: 646, baseType: !1011, size: 128, offset: 640)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !912, file: !208, line: 647, baseType: !1011, size: 128, offset: 768)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !912, file: !208, line: 648, baseType: !731, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !912, file: !208, line: 649, baseType: !302, size: 16, offset: 896)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !912, file: !208, line: 650, baseType: !296, size: 8, offset: 912)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !912, file: !208, line: 651, baseType: !296, size: 8, offset: 920)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !912, file: !208, line: 652, baseType: !2909, size: 64, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !912, file: !208, line: 659, baseType: !612, size: 64, offset: 1024)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !912, file: !208, line: 660, baseType: !1238, size: 256, offset: 1088)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !912, file: !208, line: 662, baseType: !612, size: 64, offset: 1344)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !912, file: !208, line: 663, baseType: !612, size: 64, offset: 1408)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !912, file: !208, line: 665, baseType: !1114, size: 128, offset: 1472)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !912, file: !208, line: 666, baseType: !703, size: 128, offset: 1600)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !912, file: !208, line: 675, baseType: !703, size: 128, offset: 1728)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !912, file: !208, line: 676, baseType: !703, size: 128, offset: 1856)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !912, file: !208, line: 677, baseType: !703, size: 128, offset: 1984)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !208, line: 678, baseType: !3167, size: 128, offset: 2112)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !208, line: 678, size: 128, elements: !3168)
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3167, file: !208, line: 679, baseType: !1110, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3167, file: !208, line: 680, baseType: !855, size: 128, align: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !912, file: !208, line: 682, baseType: !1244, size: 64, offset: 2240)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !912, file: !208, line: 683, baseType: !1244, size: 64, offset: 2304)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !912, file: !208, line: 684, baseType: !400, size: 32, offset: 2368)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !912, file: !208, line: 685, baseType: !400, size: 32, offset: 2400)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !912, file: !208, line: 686, baseType: !400, size: 32, offset: 2432)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !912, file: !208, line: 688, baseType: !400, size: 32, offset: 2464)
!3177 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !208, line: 690, baseType: !3178, size: 64, offset: 2496)
!3178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !208, line: 690, size: 64, elements: !3179)
!3179 = !{!3180, !3411}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3178, file: !208, line: 691, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3183)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !3184)
!3184 = !{!3185, !3186, !3190, !3195, !3199, !3200, !3201, !3205, !3218, !3219, !3235, !3239, !3240, !3244, !3245, !3249, !3254, !3255, !3259, !3263, !3371, !3375, !3376, !3380, !3381, !3385, !3389, !3394, !3398, !3402, !3406, !3410}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3183, file: !208, line: 1823, baseType: !318, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3183, file: !208, line: 1824, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!1008, !842, !1008, !331}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3183, file: !208, line: 1825, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!798, !842, !337, !812, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3183, file: !208, line: 1826, baseType: !3196, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!798, !842, !314, !812, !3194}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3183, file: !208, line: 1827, baseType: !1315, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3183, file: !208, line: 1828, baseType: !1315, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3183, file: !208, line: 1829, baseType: !3202, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!331, !1318, !449}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3183, file: !208, line: 1830, baseType: !3206, size: 64, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!331, !842, !3209}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3211)
!3211 = !{!3212, !3217}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3210, file: !208, line: 1777, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3214)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!331, !3209, !314, !331, !1008, !653, !7}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3210, file: !208, line: 1778, baseType: !1008, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3183, file: !208, line: 1831, baseType: !3206, size: 64, offset: 512)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3183, file: !208, line: 1832, baseType: !3220, size: 64, offset: 576)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!3223, !842, !3224}
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !304, line: 52, baseType: !7)
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
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3225, file: !3226, line: 45, baseType: !3223, size: 32, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3183, file: !208, line: 1833, baseType: !3236, size: 64, offset: 640)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!294, !842, !7, !612}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3183, file: !208, line: 1834, baseType: !3236, size: 64, offset: 704)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3183, file: !208, line: 1835, baseType: !3241, size: 64, offset: 768)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!331, !842, !1450}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3183, file: !208, line: 1836, baseType: !612, size: 64, offset: 832)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3183, file: !208, line: 1837, baseType: !3246, size: 64, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!331, !911, !842}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3183, file: !208, line: 1838, baseType: !3250, size: 64, offset: 960)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!331, !842, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !293)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3183, file: !208, line: 1839, baseType: !3246, size: 64, offset: 1024)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3183, file: !208, line: 1840, baseType: !3256, size: 64, offset: 1088)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!331, !842, !1008, !1008, !331}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3183, file: !208, line: 1841, baseType: !3260, size: 64, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!331, !331, !842, !331}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3183, file: !208, line: 1842, baseType: !3264, size: 64, offset: 1216)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!331, !842, !331, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3301, !3302, !3303, !3316, !3347}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3268, file: !208, line: 1063, baseType: !3267, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3268, file: !208, line: 1064, baseType: !703, size: 128, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3268, file: !208, line: 1065, baseType: !1114, size: 128, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3268, file: !208, line: 1066, baseType: !703, size: 128, offset: 320)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3268, file: !208, line: 1069, baseType: !703, size: 128, offset: 448)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3268, file: !208, line: 1072, baseType: !3253, size: 64, offset: 576)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3268, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3268, file: !208, line: 1074, baseType: !300, size: 8, offset: 672)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3268, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3268, file: !208, line: 1076, baseType: !331, size: 32, offset: 736)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3268, file: !208, line: 1077, baseType: !1861, size: 128, offset: 768)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3268, file: !208, line: 1078, baseType: !842, size: 64, offset: 896)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3268, file: !208, line: 1079, baseType: !1008, size: 64, offset: 960)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3268, file: !208, line: 1080, baseType: !1008, size: 64, offset: 1024)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3268, file: !208, line: 1082, baseType: !3285, size: 64, offset: 1088)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3287)
!3287 = !{!3288, !3296, !3297, !3298, !3299, !3300}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3286, file: !208, line: 1315, baseType: !3289)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3290, line: 20, baseType: !3291)
!3290 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3290, line: 11, elements: !3292)
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3291, file: !3290, line: 12, baseType: !3294)
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !743, line: 33, baseType: !3295)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 31, elements: !745)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3286, file: !208, line: 1316, baseType: !331, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3286, file: !208, line: 1317, baseType: !331, size: 32, offset: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3286, file: !208, line: 1318, baseType: !3285, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3286, file: !208, line: 1319, baseType: !842, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3286, file: !208, line: 1320, baseType: !855, size: 128, align: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3268, file: !208, line: 1084, baseType: !612, size: 64, offset: 1152)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3268, file: !208, line: 1085, baseType: !612, size: 64, offset: 1216)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3268, file: !208, line: 1087, baseType: !3304, size: 64, offset: 1280)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3306)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3307)
!3307 = !{!3308, !3312}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3306, file: !208, line: 1012, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3267, !3267}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3306, file: !208, line: 1013, baseType: !3313, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !3267}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3268, file: !208, line: 1088, baseType: !3317, size: 64, offset: 1344)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3320)
!3320 = !{!3321, !3325, !3329, !3330, !3334, !3338, !3342, !3346}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3319, file: !208, line: 1017, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!3253, !3253}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3319, file: !208, line: 1018, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3253}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3319, file: !208, line: 1019, baseType: !3313, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3319, file: !208, line: 1020, baseType: !3331, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!331, !3267, !331}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3319, file: !208, line: 1021, baseType: !3335, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!449, !3267}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3319, file: !208, line: 1022, baseType: !3339, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!331, !3267, !331, !706}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3319, file: !208, line: 1023, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !3267, !1292}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3319, file: !208, line: 1024, baseType: !3335, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3268, file: !208, line: 1097, baseType: !3348, size: 256, offset: 1408)
!3348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !208, line: 1089, size: 256, elements: !3349)
!3349 = !{!3350, !3359, !3365}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3348, file: !208, line: 1090, baseType: !3351, size: 256)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3352, line: 10, size: 256, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3358}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3351, file: !3352, line: 11, baseType: !415, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3351, file: !3352, line: 12, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3352, line: 5, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3351, file: !3352, line: 13, baseType: !703, size: 128, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3348, file: !208, line: 1091, baseType: !3360, size: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3352, line: 17, size: 64, elements: !3361)
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3360, file: !3352, line: 18, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3352, line: 16, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3348, file: !208, line: 1096, baseType: !3366, size: 192)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3348, file: !208, line: 1092, size: 192, elements: !3367)
!3367 = !{!3368, !3369, !3370}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3366, file: !208, line: 1093, baseType: !703, size: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3366, file: !208, line: 1094, baseType: !331, size: 32, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3366, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3183, file: !208, line: 1843, baseType: !3372, size: 64, offset: 1280)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!798, !842, !1196, !331, !812, !3194, !331}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3183, file: !208, line: 1844, baseType: !1490, size: 64, offset: 1344)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3183, file: !208, line: 1845, baseType: !3377, size: 64, offset: 1408)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!331, !331}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3183, file: !208, line: 1846, baseType: !3264, size: 64, offset: 1472)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3183, file: !208, line: 1847, baseType: !3382, size: 64, offset: 1536)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!798, !2478, !842, !3194, !812, !7}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3183, file: !208, line: 1848, baseType: !3386, size: 64, offset: 1600)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!798, !842, !3194, !2478, !812, !7}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3183, file: !208, line: 1849, baseType: !3390, size: 64, offset: 1664)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!331, !842, !294, !3393, !1292}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3183, file: !208, line: 1850, baseType: !3395, size: 64, offset: 1728)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!294, !842, !331, !1008, !1008}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3183, file: !208, line: 1852, baseType: !3399, size: 64, offset: 1792)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !1186, !842}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3183, file: !208, line: 1856, baseType: !3403, size: 64, offset: 1856)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!798, !842, !1008, !842, !1008, !812, !7}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3183, file: !208, line: 1858, baseType: !3407, size: 64, offset: 1920)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!1008, !842, !1008, !842, !1008, !1008, !7}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3183, file: !208, line: 1861, baseType: !3256, size: 64, offset: 1984)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3178, file: !208, line: 692, baseType: !1139, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !912, file: !208, line: 694, baseType: !3413, size: 64, offset: 2560)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3414, file: !208, line: 1101, baseType: !731)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3414, file: !208, line: 1102, baseType: !703, size: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3414, file: !208, line: 1103, baseType: !703, size: 128, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3414, file: !208, line: 1104, baseType: !703, size: 128, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !912, file: !208, line: 695, baseType: !1210, size: 1216, align: 64, offset: 2624)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !912, file: !208, line: 696, baseType: !703, size: 128, offset: 3840)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !208, line: 697, baseType: !3423, size: 64, offset: 3968)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !208, line: 697, size: 64, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3438, !3439}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3423, file: !208, line: 698, baseType: !2478, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3423, file: !208, line: 699, baseType: !2934, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3423, file: !208, line: 700, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3430, line: 14, size: 832, elements: !3431)
!3430 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3429, file: !3430, line: 15, baseType: !718, size: 512)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3429, file: !3430, line: 16, baseType: !318, size: 64, offset: 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3429, file: !3430, line: 17, baseType: !3181, size: 64, offset: 576)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3429, file: !3430, line: 18, baseType: !703, size: 128, offset: 640)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3429, file: !3430, line: 19, baseType: !990, size: 32, offset: 768)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3429, file: !3430, line: 20, baseType: !7, size: 32, offset: 800)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3423, file: !208, line: 701, baseType: !337, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3423, file: !208, line: 702, baseType: !7, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !912, file: !208, line: 705, baseType: !416, size: 32, offset: 4032)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !912, file: !208, line: 708, baseType: !416, size: 32, offset: 4064)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !912, file: !208, line: 709, baseType: !3015, size: 64, offset: 4096)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !912, file: !208, line: 720, baseType: !293, size: 64, offset: 4160)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !873, file: !870, line: 98, baseType: !3445, size: 256, offset: 448)
!3445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !2610)
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
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !3448, line: 31, baseType: !731)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3454, file: !3448, line: 32, baseType: !331, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !873, file: !870, line: 102, baseType: !3032, size: 64, offset: 768)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !873, file: !870, line: 103, baseType: !1074, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !873, file: !870, line: 104, baseType: !612, size: 64, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !873, file: !870, line: 105, baseType: !293, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !870, line: 107, baseType: !3463, size: 128, offset: 1024)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !870, line: 107, size: 128, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3463, file: !870, line: 108, baseType: !703, size: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3463, file: !870, line: 109, baseType: !3233, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !873, file: !870, line: 111, baseType: !703, size: 128, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !873, file: !870, line: 112, baseType: !703, size: 128, offset: 1280)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !873, file: !870, line: 120, baseType: !3470, size: 128, offset: 1408)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !870, line: 116, size: 128, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3470, file: !870, line: 117, baseType: !1114, size: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3470, file: !870, line: 118, baseType: !887, size: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3470, file: !870, line: 119, baseType: !855, size: 128, align: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !843, file: !208, line: 922, baseType: !911, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !843, file: !208, line: 923, baseType: !3181, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !843, file: !208, line: 929, baseType: !731, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !843, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !843, file: !208, line: 931, baseType: !1242, size: 64, offset: 448)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !843, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !843, file: !208, line: 933, baseType: !3028, size: 32, offset: 544)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !843, file: !208, line: 934, baseType: !1560, size: 192, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !843, file: !208, line: 935, baseType: !1008, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !843, file: !208, line: 936, baseType: !3485, size: 192, offset: 832)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3485, file: !208, line: 886, baseType: !3289)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3485, file: !208, line: 887, baseType: !1851, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3485, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3485, file: !208, line: 889, baseType: !917, size: 32, offset: 96)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3485, file: !208, line: 889, baseType: !917, size: 32, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3485, file: !208, line: 890, baseType: !331, size: 32, offset: 160)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !843, file: !208, line: 937, baseType: !1927, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !843, file: !208, line: 938, baseType: !3495, size: 256, offset: 1088)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3495, file: !208, line: 897, baseType: !612, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3495, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3495, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3495, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3495, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3495, file: !208, line: 904, baseType: !1008, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !843, file: !208, line: 940, baseType: !653, size: 64, offset: 1344)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !843, file: !208, line: 945, baseType: !293, size: 64, offset: 1408)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !843, file: !208, line: 949, baseType: !703, size: 128, offset: 1472)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !843, file: !208, line: 950, baseType: !703, size: 128, offset: 1600)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !843, file: !208, line: 952, baseType: !1209, size: 64, offset: 1728)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !843, file: !208, line: 953, baseType: !1378, size: 32, offset: 1792)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !843, file: !208, line: 954, baseType: !1378, size: 32, offset: 1824)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !833, file: !792, line: 174, baseType: !839, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !833, file: !792, line: 176, baseType: !3512, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!331, !842, !724, !832, !1450}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !821, file: !792, line: 90, baseType: !816, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !821, file: !792, line: 91, baseType: !3517, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !782, file: !719, line: 143, baseType: !3519, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!3522, !724}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3525)
!3525 = !{!3526, !3527, !3531, !3535, !3541, !3545}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3524, file: !225, line: 40, baseType: !224, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3524, file: !225, line: 41, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!449}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3524, file: !225, line: 42, baseType: !3532, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!293}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3524, file: !225, line: 43, baseType: !3536, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!2507, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3524, file: !225, line: 44, baseType: !3542, size: 64, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!2507}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3524, file: !225, line: 45, baseType: !339, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !782, file: !719, line: 144, baseType: !3547, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!2507, !724}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !782, file: !719, line: 145, baseType: !3551, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !724, !3554, !3555}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !718, file: !719, line: 70, baseType: !3557, size: 64, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1094, line: 123, size: 1024, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3688, !3689, !3690, !3691, !3692}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3558, file: !1094, line: 124, baseType: !400, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3558, file: !1094, line: 125, baseType: !400, size: 32, offset: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3558, file: !1094, line: 135, baseType: !3557, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3558, file: !1094, line: 136, baseType: !314, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3558, file: !1094, line: 138, baseType: !1231, size: 192, align: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3558, file: !1094, line: 140, baseType: !2507, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3558, file: !1094, line: 141, baseType: !7, size: 32, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !1094, line: 142, baseType: !3568, size: 256, offset: 512)
!3568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3558, file: !1094, line: 142, size: 256, elements: !3569)
!3569 = !{!3570, !3616, !3620}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3568, file: !1094, line: 143, baseType: !3571, size: 192)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1094, line: 91, size: 192, elements: !3572)
!3572 = !{!3573, !3574, !3575}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3571, file: !1094, line: 92, baseType: !612, size: 64)
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
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3577, file: !1094, line: 187, baseType: !415, size: 32, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3577, file: !1094, line: 188, baseType: !415, size: 32, offset: 352)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3577, file: !1094, line: 189, baseType: !3591, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1094, line: 168, size: 320, elements: !3593)
!3593 = !{!3594, !3598, !3602, !3606, !3610}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3592, file: !1094, line: 169, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!331, !1186, !3576}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3592, file: !1094, line: 171, baseType: !3599, size: 64, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!331, !3557, !314, !807}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3592, file: !1094, line: 173, baseType: !3603, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!331, !3557}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3592, file: !1094, line: 174, baseType: !3607, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!331, !3557, !3557, !314}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3592, file: !1094, line: 176, baseType: !3611, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!331, !1186, !3557, !3576}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3577, file: !1094, line: 192, baseType: !703, size: 128, offset: 448)
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
!3631 = !{!331, !3632}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1094, line: 197, size: 1088, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3633, file: !1094, line: 199, baseType: !3557, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3633, file: !1094, line: 200, baseType: !842, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3633, file: !1094, line: 201, baseType: !1186, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3633, file: !1094, line: 202, baseType: !293, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3633, file: !1094, line: 205, baseType: !1560, size: 192, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3633, file: !1094, line: 206, baseType: !1560, size: 192, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3633, file: !1094, line: 207, baseType: !331, size: 32, offset: 640)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3633, file: !1094, line: 208, baseType: !703, size: 128, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3633, file: !1094, line: 209, baseType: !337, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3633, file: !1094, line: 211, baseType: !812, size: 64, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3633, file: !1094, line: 212, baseType: !449, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3633, file: !1094, line: 213, baseType: !449, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3633, file: !1094, line: 214, baseType: !1478, size: 64, offset: 1024)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3626, file: !1094, line: 223, baseType: !3649, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{null, !3632}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3626, file: !1094, line: 236, baseType: !3653, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!331, !1186, !293}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3626, file: !1094, line: 238, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!293, !1186, !3194}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3626, file: !1094, line: 239, baseType: !3661, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!293, !1186, !293, !3194}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3626, file: !1094, line: 240, baseType: !3665, size: 64, offset: 320)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !1186, !293}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3626, file: !1094, line: 242, baseType: !3669, size: 64, offset: 384)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!798, !3632, !337, !812, !1008}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3626, file: !1094, line: 252, baseType: !812, size: 64, offset: 448)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3626, file: !1094, line: 259, baseType: !449, size: 8, offset: 512)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3626, file: !1094, line: 260, baseType: !3669, size: 64, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3626, file: !1094, line: 263, baseType: !3676, size: 64, offset: 640)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3223, !3632, !3224}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3626, file: !1094, line: 266, baseType: !3680, size: 64, offset: 704)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!331, !3632, !1450}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3621, file: !1094, line: 109, baseType: !3684, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1094, line: 31, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3621, file: !1094, line: 110, baseType: !1008, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3621, file: !1094, line: 111, baseType: !3557, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3558, file: !1094, line: 148, baseType: !293, size: 64, offset: 768)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3558, file: !1094, line: 154, baseType: !653, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3558, file: !1094, line: 156, baseType: !302, size: 16, offset: 896)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3558, file: !1094, line: 157, baseType: !807, size: 16, offset: 912)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3558, file: !1094, line: 158, baseType: !3693, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1094, line: 32, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !718, file: !719, line: 71, baseType: !391, size: 32, offset: 448)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !718, file: !719, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !718, file: !719, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !718, file: !719, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !718, file: !719, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !718, file: !719, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !715, file: !237, line: 463, baseType: !714, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !715, file: !237, line: 465, baseType: !3703, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !715, file: !237, line: 467, baseType: !314, size: 64, offset: 640)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !237, line: 468, baseType: !3707, size: 64, offset: 704)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3709)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3710)
!3710 = !{!3711, !3712, !3713, !3717, !3722, !3726}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3709, file: !237, line: 88, baseType: !314, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3709, file: !237, line: 89, baseType: !818, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3709, file: !237, line: 90, baseType: !3714, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!331, !714, !767}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3709, file: !237, line: 91, baseType: !3718, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!337, !714, !3721, !3554, !3555}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3709, file: !237, line: 93, baseType: !3723, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !714}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3709, file: !237, line: 95, baseType: !3727, size: 64, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3730)
!3730 = !{!3731, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3729, file: !244, line: 279, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!331, !714}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3729, file: !244, line: 280, baseType: !3723, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3729, file: !244, line: 281, baseType: !3732, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3729, file: !244, line: 282, baseType: !3732, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3729, file: !244, line: 283, baseType: !3732, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3729, file: !244, line: 284, baseType: !3732, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3729, file: !244, line: 285, baseType: !3732, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3729, file: !244, line: 286, baseType: !3732, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3729, file: !244, line: 287, baseType: !3732, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3729, file: !244, line: 288, baseType: !3732, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3729, file: !244, line: 289, baseType: !3732, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3729, file: !244, line: 290, baseType: !3732, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3729, file: !244, line: 291, baseType: !3732, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3729, file: !244, line: 292, baseType: !3732, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3729, file: !244, line: 293, baseType: !3732, size: 64, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3729, file: !244, line: 294, baseType: !3732, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3729, file: !244, line: 295, baseType: !3732, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3729, file: !244, line: 296, baseType: !3732, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3729, file: !244, line: 297, baseType: !3732, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3729, file: !244, line: 298, baseType: !3732, size: 64, offset: 1216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3729, file: !244, line: 299, baseType: !3732, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3729, file: !244, line: 300, baseType: !3732, size: 64, offset: 1344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3729, file: !244, line: 301, baseType: !3732, size: 64, offset: 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !715, file: !237, line: 470, baseType: !3758, size: 64, offset: 768)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3760, line: 82, size: 1408, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3840, !3843, !3844}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3759, file: !3760, line: 83, baseType: !314, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3759, file: !3760, line: 84, baseType: !314, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3759, file: !3760, line: 85, baseType: !714, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3759, file: !3760, line: 86, baseType: !818, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3759, file: !3760, line: 87, baseType: !818, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3759, file: !3760, line: 88, baseType: !818, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3759, file: !3760, line: 90, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!331, !714, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3774)
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781, !3791, !3804, !3805, !3806, !3807, !3808, !3816, !3817, !3818, !3819, !3820, !3821}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3773, file: !231, line: 96, baseType: !314, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3773, file: !231, line: 97, baseType: !3758, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3773, file: !231, line: 99, baseType: !318, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3773, file: !231, line: 100, baseType: !314, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3773, file: !231, line: 102, baseType: !449, size: 8, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3773, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3773, file: !231, line: 105, baseType: !3782, size: 64, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3785, line: 262, size: 1600, elements: !3786)
!3785 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3784, file: !3785, line: 263, baseType: !3018, size: 256)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3784, file: !3785, line: 264, baseType: !3018, size: 256, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3784, file: !3785, line: 265, baseType: !411, size: 1024, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3784, file: !3785, line: 266, baseType: !2507, size: 64, offset: 1536)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3773, file: !231, line: 106, baseType: !3792, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3794)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3785, line: 210, size: 256, elements: !3795)
!3795 = !{!3796, !3800, !3802, !3803}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3794, file: !3785, line: 211, baseType: !3797, size: 72)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 72, elements: !3798)
!3798 = !{!3799}
!3799 = !DISubrange(count: 9)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3794, file: !3785, line: 212, baseType: !3801, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3785, line: 14, baseType: !612)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3794, file: !3785, line: 213, baseType: !416, size: 32, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3794, file: !3785, line: 214, baseType: !416, size: 32, offset: 224)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3773, file: !231, line: 108, baseType: !3732, size: 64, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3773, file: !231, line: 109, baseType: !3723, size: 64, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3773, file: !231, line: 110, baseType: !3732, size: 64, offset: 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3773, file: !231, line: 111, baseType: !3723, size: 64, offset: 640)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3773, file: !231, line: 112, baseType: !3809, size: 64, offset: 704)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!331, !714, !3812}
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3813)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3814)
!3814 = !{!3815}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3813, file: !244, line: 51, baseType: !331, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3773, file: !231, line: 113, baseType: !3732, size: 64, offset: 768)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3773, file: !231, line: 114, baseType: !818, size: 64, offset: 832)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3773, file: !231, line: 115, baseType: !818, size: 64, offset: 896)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3773, file: !231, line: 117, baseType: !3727, size: 64, offset: 960)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3773, file: !231, line: 118, baseType: !3723, size: 64, offset: 1024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3773, file: !231, line: 120, baseType: !3822, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
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
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3759, file: !3760, line: 114, baseType: !449, size: 8, offset: 1344)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !715, file: !237, line: 471, baseType: !3772, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !715, file: !237, line: 473, baseType: !293, size: 64, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !715, file: !237, line: 475, baseType: !293, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !715, file: !237, line: 480, baseType: !1560, size: 192, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !715, file: !237, line: 484, baseType: !3850, size: 576, offset: 1216)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3850, file: !237, line: 362, baseType: !703, size: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3850, file: !237, line: 363, baseType: !703, size: 128, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3850, file: !237, line: 364, baseType: !703, size: 128, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3850, file: !237, line: 365, baseType: !703, size: 128, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3850, file: !237, line: 366, baseType: !449, size: 8, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3850, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !715, file: !237, line: 485, baseType: !3859, size: 2304, offset: 1792)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3956, !3960}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3859, file: !244, line: 566, baseType: !3812, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3859, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3859, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3859, file: !244, line: 569, baseType: !449, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3859, file: !244, line: 570, baseType: !449, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3859, file: !244, line: 571, baseType: !449, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3859, file: !244, line: 572, baseType: !449, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3859, file: !244, line: 573, baseType: !449, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3859, file: !244, line: 574, baseType: !449, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3859, file: !244, line: 575, baseType: !449, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3859, file: !244, line: 576, baseType: !449, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3859, file: !244, line: 577, baseType: !415, size: 32, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3859, file: !244, line: 578, baseType: !731, offset: 96)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3859, file: !244, line: 580, baseType: !703, size: 128, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3859, file: !244, line: 581, baseType: !1882, size: 192, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3859, file: !244, line: 582, baseType: !3877, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3879, line: 43, size: 1472, elements: !3880)
!3879 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3888, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3878, file: !3879, line: 44, baseType: !314, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3878, file: !3879, line: 45, baseType: !331, size: 32, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3878, file: !3879, line: 46, baseType: !703, size: 128, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3878, file: !3879, line: 47, baseType: !731, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3878, file: !3879, line: 48, baseType: !3886, size: 64, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3878, file: !3879, line: 49, baseType: !3889, size: 320, offset: 320)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3890, line: 11, size: 320, elements: !3891)
!3890 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3891 = !{!3892, !3893, !3894, !3899}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3889, file: !3890, line: 16, baseType: !1114, size: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3889, file: !3890, line: 17, baseType: !612, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3889, file: !3890, line: 18, baseType: !3895, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3898}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3889, file: !3890, line: 19, baseType: !415, size: 32, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3878, file: !3879, line: 50, baseType: !612, size: 64, offset: 640)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3878, file: !3879, line: 51, baseType: !1682, size: 64, offset: 704)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3878, file: !3879, line: 52, baseType: !1682, size: 64, offset: 768)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3878, file: !3879, line: 53, baseType: !1682, size: 64, offset: 832)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3878, file: !3879, line: 54, baseType: !1682, size: 64, offset: 896)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3878, file: !3879, line: 55, baseType: !1682, size: 64, offset: 960)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3878, file: !3879, line: 56, baseType: !612, size: 64, offset: 1024)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3878, file: !3879, line: 57, baseType: !612, size: 64, offset: 1088)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3878, file: !3879, line: 58, baseType: !612, size: 64, offset: 1152)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3878, file: !3879, line: 59, baseType: !612, size: 64, offset: 1216)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3878, file: !3879, line: 60, baseType: !612, size: 64, offset: 1280)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3878, file: !3879, line: 61, baseType: !714, size: 64, offset: 1344)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3878, file: !3879, line: 62, baseType: !449, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3878, file: !3879, line: 63, baseType: !449, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3859, file: !244, line: 583, baseType: !449, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3859, file: !244, line: 584, baseType: !449, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3859, file: !244, line: 585, baseType: !449, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3859, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3859, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3859, file: !244, line: 592, baseType: !1674, size: 512, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3859, file: !244, line: 593, baseType: !653, size: 64, offset: 1088)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3859, file: !244, line: 594, baseType: !2337, size: 256, offset: 1152)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3859, file: !244, line: 595, baseType: !1861, size: 128, offset: 1408)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3859, file: !244, line: 596, baseType: !3886, size: 64, offset: 1536)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3859, file: !244, line: 597, baseType: !400, size: 32, offset: 1600)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3859, file: !244, line: 598, baseType: !400, size: 32, offset: 1632)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3859, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3859, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3859, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3859, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3859, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3859, file: !244, line: 604, baseType: !449, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3859, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3859, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3859, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3859, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3859, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3859, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3859, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3859, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3859, file: !244, line: 613, baseType: !331, size: 32, offset: 1792)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3859, file: !244, line: 614, baseType: !331, size: 32, offset: 1824)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3859, file: !244, line: 615, baseType: !653, size: 64, offset: 1856)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3859, file: !244, line: 616, baseType: !653, size: 64, offset: 1920)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3859, file: !244, line: 617, baseType: !653, size: 64, offset: 1984)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3859, file: !244, line: 618, baseType: !653, size: 64, offset: 2048)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3859, file: !244, line: 620, baseType: !3947, size: 64, offset: 2112)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3948, file: !244, line: 537, baseType: !731)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3948, file: !244, line: 538, baseType: !7, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3948, file: !244, line: 540, baseType: !703, size: 128, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3948, file: !244, line: 543, baseType: !3954, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3859, file: !244, line: 621, baseType: !3957, size: 64, offset: 2176)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{null, !714, !668}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3859, file: !244, line: 622, baseType: !3961, size: 64, offset: 2240)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !715, file: !237, line: 486, baseType: !3964, size: 64, offset: 4096)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3973, !3974, !3975}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3965, file: !244, line: 643, baseType: !3729, size: 1472)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3965, file: !244, line: 644, baseType: !3732, size: 64, offset: 1472)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3965, file: !244, line: 645, baseType: !3970, size: 64, offset: 1536)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !714, !449}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3965, file: !244, line: 646, baseType: !3732, size: 64, offset: 1600)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3965, file: !244, line: 647, baseType: !3723, size: 64, offset: 1664)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3965, file: !244, line: 648, baseType: !3723, size: 64, offset: 1728)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !715, file: !237, line: 493, baseType: !3977, size: 64, offset: 4160)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3979)
!3979 = !{!3980, !3981, !3982, !4155, !4156, !4157, !4158, !4159, !4160, !4163, !4164, !4165, !4166, !4167, !4168, !4169}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3978, file: !258, line: 163, baseType: !703, size: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3978, file: !258, line: 164, baseType: !314, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3978, file: !258, line: 165, baseType: !3983, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3985)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3986)
!3986 = !{!3987, !4105, !4116, !4121, !4125, !4132, !4136, !4140, !4147, !4151}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3985, file: !258, line: 106, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!331, !3977, !3991, !257}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3993, line: 51, size: 1344, elements: !3994)
!3993 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3994 = !{!3995, !3996, !3998, !3999, !4089, !4098, !4099, !4100, !4101, !4102, !4103, !4104}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3992, file: !3993, line: 52, baseType: !314, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3992, file: !3993, line: 53, baseType: !3997, size: 32, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3993, line: 28, baseType: !415)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3992, file: !3993, line: 54, baseType: !314, size: 64, offset: 128)
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
!4021 = !{!449, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4000)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4008, file: !4001, line: 114, baseType: !4025, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!2507, !4022, !4028}
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4008, file: !4001, line: 116, baseType: !4031, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!449, !4022, !314}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4008, file: !4001, line: 118, baseType: !4035, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!331, !4022, !314, !7, !293, !812}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4008, file: !4001, line: 123, baseType: !4039, size: 64, offset: 384)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!331, !4022, !314, !4042, !812}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4008, file: !4001, line: 126, baseType: !4044, size: 64, offset: 448)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!314, !4022}
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
!4059 = !{!4004, !4022, !314}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4008, file: !4001, line: 135, baseType: !4061, size: 64, offset: 768)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!331, !4022, !314, !314, !7, !7, !4064}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4001, line: 43, size: 640, elements: !4066)
!4066 = !{!4067, !4068, !4069}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4065, file: !4001, line: 44, baseType: !4004, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4065, file: !4001, line: 45, baseType: !7, size: 32, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4065, file: !4001, line: 46, baseType: !4070, size: 512, offset: 128)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 512, elements: !426)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4008, file: !4001, line: 140, baseType: !4053, size: 64, offset: 832)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4008, file: !4001, line: 143, baseType: !4049, size: 64, offset: 896)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4008, file: !4001, line: 145, baseType: !4011, size: 64, offset: 960)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4008, file: !4001, line: 146, baseType: !4075, size: 64, offset: 1024)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!331, !4022, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4001, line: 29, size: 128, elements: !4080)
!4080 = !{!4081, !4082, !4083}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4079, file: !4001, line: 30, baseType: !7, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4079, file: !4001, line: 31, baseType: !7, size: 32, offset: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4079, file: !4001, line: 32, baseType: !4022, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4008, file: !4001, line: 148, baseType: !4085, size: 64, offset: 1088)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!331, !4022, !714}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4000, file: !4001, line: 20, baseType: !714, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3992, file: !3993, line: 57, baseType: !4090, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3993, line: 31, size: 704, elements: !4092)
!4092 = !{!4093, !4094, !4095, !4096, !4097}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4091, file: !3993, line: 32, baseType: !337, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4091, file: !3993, line: 33, baseType: !331, size: 32, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4091, file: !3993, line: 34, baseType: !293, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4091, file: !3993, line: 35, baseType: !4090, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4091, file: !3993, line: 43, baseType: !833, size: 448, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3992, file: !3993, line: 58, baseType: !4090, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3992, file: !3993, line: 59, baseType: !3991, size: 64, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3992, file: !3993, line: 60, baseType: !3991, size: 64, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3992, file: !3993, line: 61, baseType: !3991, size: 64, offset: 640)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3992, file: !3993, line: 63, baseType: !718, size: 512, offset: 704)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3992, file: !3993, line: 65, baseType: !612, size: 64, offset: 1216)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3992, file: !3993, line: 66, baseType: !293, size: 64, offset: 1280)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3985, file: !258, line: 108, baseType: !4106, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!331, !3977, !4109, !257}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4111)
!4111 = !{!4112, !4113, !4114}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4110, file: !258, line: 64, baseType: !4004, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4110, file: !258, line: 65, baseType: !331, size: 32, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4110, file: !258, line: 66, baseType: !4115, size: 512, offset: 96)
!4115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 512, elements: !2113)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3985, file: !258, line: 110, baseType: !4117, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!331, !3977, !7, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !292, line: 164, baseType: !612)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3985, file: !258, line: 111, baseType: !4122, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !3977, !7}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3985, file: !258, line: 112, baseType: !4126, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!331, !3977, !3991, !4129, !7, !4131, !369}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3985, file: !258, line: 117, baseType: !4133, size: 64, offset: 320)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!331, !3977, !7, !7, !293}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3985, file: !258, line: 119, baseType: !4137, size: 64, offset: 384)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !3977, !7, !7}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3985, file: !258, line: 121, baseType: !4141, size: 64, offset: 448)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!331, !3977, !4144, !449}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4146, line: 11, flags: DIFlagFwdDecl)
!4146 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3985, file: !258, line: 122, baseType: !4148, size: 64, offset: 512)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !3977, !4144}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3985, file: !258, line: 123, baseType: !4152, size: 64, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!331, !3977, !4109, !4131, !369}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3978, file: !258, line: 166, baseType: !293, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3978, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3978, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3978, file: !258, line: 171, baseType: !4004, size: 64, offset: 384)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3978, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3978, file: !258, line: 173, baseType: !4161, size: 64, offset: 512)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3978, file: !258, line: 175, baseType: !3977, size: 64, offset: 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3978, file: !258, line: 182, baseType: !4120, size: 64, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3978, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3978, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3978, file: !258, line: 185, baseType: !1214, size: 128, offset: 768)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3978, file: !258, line: 186, baseType: !1560, size: 192, offset: 896)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3978, file: !258, line: 187, baseType: !4170, offset: 1088)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2711)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !715, file: !237, line: 499, baseType: !703, size: 128, offset: 4224)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !715, file: !237, line: 502, baseType: !4173, size: 64, offset: 4352)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4175)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !715, file: !237, line: 504, baseType: !4177, size: 64, offset: 4416)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !715, file: !237, line: 505, baseType: !653, size: 64, offset: 4480)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !715, file: !237, line: 510, baseType: !653, size: 64, offset: 4544)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !715, file: !237, line: 511, baseType: !4181, size: 64, offset: 4608)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4183)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !715, file: !237, line: 513, baseType: !4185, size: 64, offset: 4672)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4187)
!4187 = !{!4188, !4189}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4186, file: !237, line: 293, baseType: !7, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4186, file: !237, line: 294, baseType: !612, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !715, file: !237, line: 515, baseType: !703, size: 128, offset: 4736)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !715, file: !237, line: 526, baseType: !4192, offset: 4864)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4193, line: 5, elements: !745)
!4193 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !715, file: !237, line: 528, baseType: !3991, size: 64, offset: 4864)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !715, file: !237, line: 529, baseType: !4004, size: 64, offset: 4928)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !715, file: !237, line: 534, baseType: !990, size: 32, offset: 4992)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !715, file: !237, line: 535, baseType: !415, size: 32, offset: 5024)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !715, file: !237, line: 537, baseType: !731, offset: 5056)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !715, file: !237, line: 538, baseType: !703, size: 128, offset: 5056)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !715, file: !237, line: 540, baseType: !4201, size: 64, offset: 5184)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4203, line: 54, size: 960, elements: !4204)
!4203 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4204 = !{!4205, !4206, !4207, !4208, !4209, !4210, !4211, !4215, !4219, !4220, !4221, !4222, !4226, !4230, !4231}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4202, file: !4203, line: 55, baseType: !314, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4202, file: !4203, line: 56, baseType: !318, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4202, file: !4203, line: 58, baseType: !818, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4202, file: !4203, line: 59, baseType: !818, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4202, file: !4203, line: 60, baseType: !724, size: 64, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4202, file: !4203, line: 62, baseType: !3714, size: 64, offset: 320)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4202, file: !4203, line: 63, baseType: !4212, size: 64, offset: 384)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!337, !714, !3721}
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
!4225 = !{!2507, !714}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4202, file: !4203, line: 73, baseType: !4227, size: 64, offset: 768)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{null, !714, !3554, !3555}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4202, file: !4203, line: 75, baseType: !3727, size: 64, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4202, file: !4203, line: 77, baseType: !3841, size: 64, offset: 896)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !715, file: !237, line: 541, baseType: !818, size: 64, offset: 5248)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !715, file: !237, line: 543, baseType: !3723, size: 64, offset: 5312)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !715, file: !237, line: 544, baseType: !4235, size: 64, offset: 5376)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !715, file: !237, line: 545, baseType: !4238, size: 64, offset: 5440)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !715, file: !237, line: 547, baseType: !449, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !715, file: !237, line: 548, baseType: !449, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !715, file: !237, line: 549, baseType: !449, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !715, file: !237, line: 550, baseType: !449, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !699, file: !272, line: 111, baseType: !318, size: 64, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !699, file: !272, line: 113, baseType: !331, size: 32, offset: 640)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !699, file: !272, line: 114, baseType: !4247, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4249)
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4264}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4248, file: !272, line: 158, baseType: !703, size: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4248, file: !272, line: 159, baseType: !3181, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4248, file: !272, line: 160, baseType: !698, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4248, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4248, file: !272, line: 162, baseType: !331, size: 32, offset: 288)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4248, file: !272, line: 163, baseType: !415, size: 32, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4248, file: !272, line: 167, baseType: !331, size: 32, offset: 352)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4248, file: !272, line: 168, baseType: !331, size: 32, offset: 384)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4248, file: !272, line: 169, baseType: !331, size: 32, offset: 416)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4248, file: !272, line: 171, baseType: !1861, size: 128, offset: 448)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4248, file: !272, line: 173, baseType: !4261, size: 64, offset: 576)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!331, !842, !7, !293}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4248, file: !272, line: 187, baseType: !293, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !699, file: !272, line: 115, baseType: !1560, size: 192, offset: 768)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !388, file: !51, line: 690, baseType: !293, size: 64, offset: 6144)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !388, file: !51, line: 691, baseType: !293, size: 64, offset: 6208)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !388, file: !51, line: 692, baseType: !293, size: 64, offset: 6272)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !388, file: !51, line: 693, baseType: !293, size: 64, offset: 6336)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !388, file: !51, line: 694, baseType: !293, size: 64, offset: 6400)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !388, file: !51, line: 695, baseType: !472, size: 3648, offset: 6464)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !388, file: !51, line: 698, baseType: !4273, size: 64, offset: 10112)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!331, !293, !331, !331, !331}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !388, file: !51, line: 699, baseType: !331, size: 32, offset: 10176)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !388, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4280)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_config", file: !4281, line: 15, size: 128, elements: !4282)
!4281 = !DIFile(filename: "drivers/media/dvb-frontends/bcm3510.h", directory: "/home/lizy2001/genbc/linux")
!4282 = !{!4283, !4284}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4280, file: !4281, line: 18, baseType: !296, size: 8)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "request_firmware", scope: !4280, file: !4281, line: 21, baseType: !4285, size: 64, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!331, !387, !4288, !337}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4291)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !4292, line: 12, size: 192, elements: !4293)
!4292 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!4293 = !{!4294, !4295, !4296}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4291, file: !4292, line: 13, baseType: !812, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4291, file: !4292, line: 14, baseType: !443, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4291, file: !4292, line: 17, baseType: !293, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4299, line: 695, size: 7552, elements: !4300)
!4299 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4300 = !{!4301, !4302, !4303, !4340, !4341, !4355, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4372, !4373, !4374, !4375, !4407, !4418}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4298, file: !4299, line: 696, baseType: !318, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4298, file: !4299, line: 697, baseType: !7, size: 32, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4298, file: !4299, line: 698, baseType: !4304, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4299, line: 519, size: 320, elements: !4307)
!4307 = !{!4308, !4321, !4322, !4335, !4336}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4306, file: !4299, line: 529, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!331, !4297, !4312, !331}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4314, line: 69, size: 128, elements: !4315)
!4314 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4315 = !{!4316, !4317, !4318, !4319}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4313, file: !4314, line: 70, baseType: !301, size: 16)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4313, file: !4314, line: 71, baseType: !301, size: 16, offset: 16)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4313, file: !4314, line: 84, baseType: !301, size: 16, offset: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4313, file: !4314, line: 85, baseType: !4320, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4306, file: !4299, line: 531, baseType: !4309, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4306, file: !4299, line: 533, baseType: !4323, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!331, !4297, !344, !302, !316, !296, !331, !4326}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4314, line: 135, size: 272, elements: !4328)
!4328 = !{!4329, !4330, !4331}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4327, file: !4314, line: 136, baseType: !298, size: 8)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4327, file: !4314, line: 137, baseType: !301, size: 16)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4327, file: !4314, line: 138, baseType: !4332, size: 272)
!4332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 272, elements: !4333)
!4333 = !{!4334}
!4334 = !DISubrange(count: 34)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4306, file: !4299, line: 536, baseType: !4323, size: 64, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4306, file: !4299, line: 541, baseType: !4337, size: 64, offset: 256)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!415, !4297}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4298, file: !4299, line: 699, baseType: !293, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4298, file: !4299, line: 702, baseType: !4342, size: 64, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4299, line: 557, size: 192, elements: !4345)
!4345 = !{!4346, !4350, !4354}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4344, file: !4299, line: 558, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{null, !4297, !7}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4344, file: !4299, line: 559, baseType: !4351, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!331, !4297, !7}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4344, file: !4299, line: 560, baseType: !4347, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4298, file: !4299, line: 703, baseType: !4356, size: 192, offset: 320)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4357, line: 30, size: 192, elements: !4358)
!4357 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4358 = !{!4359, !4360, !4361}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4356, file: !4357, line: 31, baseType: !1251)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4356, file: !4357, line: 32, baseType: !1223, size: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4356, file: !4357, line: 33, baseType: !1603, size: 64, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4298, file: !4299, line: 704, baseType: !4356, size: 192, offset: 512)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4298, file: !4299, line: 706, baseType: !331, size: 32, offset: 704)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4298, file: !4299, line: 707, baseType: !331, size: 32, offset: 736)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4298, file: !4299, line: 708, baseType: !715, size: 5568, offset: 768)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4298, file: !4299, line: 709, baseType: !612, size: 64, offset: 6336)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4298, file: !4299, line: 713, baseType: !331, size: 32, offset: 6400)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4298, file: !4299, line: 714, baseType: !4369, size: 384, offset: 6432)
!4369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 384, elements: !4370)
!4370 = !{!4371}
!4371 = !DISubrange(count: 48)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4298, file: !4299, line: 715, baseType: !1882, size: 192, offset: 6848)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4298, file: !4299, line: 717, baseType: !1560, size: 192, offset: 7040)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4298, file: !4299, line: 718, baseType: !703, size: 128, offset: 7232)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4298, file: !4299, line: 720, baseType: !4376, size: 64, offset: 7360)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4299, line: 618, size: 832, elements: !4378)
!4378 = !{!4379, !4383, !4384, !4388, !4389, !4390, !4391, !4395, !4396, !4399, !4400, !4403, !4406}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4377, file: !4299, line: 619, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!331, !4297}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4377, file: !4299, line: 621, baseType: !4380, size: 64, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4377, file: !4299, line: 622, baseType: !4385, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{null, !4297, !331}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4377, file: !4299, line: 623, baseType: !4380, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4377, file: !4299, line: 624, baseType: !4385, size: 64, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4377, file: !4299, line: 625, baseType: !4380, size: 64, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4377, file: !4299, line: 627, baseType: !4392, size: 64, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !4297}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4377, file: !4299, line: 628, baseType: !4392, size: 64, offset: 448)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4377, file: !4299, line: 631, baseType: !4397, size: 64, offset: 512)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4299, line: 631, flags: DIFlagFwdDecl)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4377, file: !4299, line: 632, baseType: !4397, size: 64, offset: 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4377, file: !4299, line: 633, baseType: !4401, size: 64, offset: 640)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4299, line: 633, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4377, file: !4299, line: 634, baseType: !4404, size: 64, offset: 704)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4299, line: 634, flags: DIFlagFwdDecl)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4377, file: !4299, line: 635, baseType: !4404, size: 64, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4298, file: !4299, line: 721, baseType: !4408, size: 64, offset: 7424)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4410)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4299, line: 664, size: 192, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415, !4416, !4417}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4410, file: !4299, line: 665, baseType: !653, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4410, file: !4299, line: 666, baseType: !331, size: 32, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4410, file: !4299, line: 667, baseType: !344, size: 16, offset: 96)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4410, file: !4299, line: 668, baseType: !344, size: 16, offset: 112)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4410, file: !4299, line: 669, baseType: !344, size: 16, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4410, file: !4299, line: 670, baseType: !344, size: 16, offset: 144)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4298, file: !4299, line: 723, baseType: !3977, size: 64, offset: 7488)
!4419 = !DIGlobalVariableExpression(var: !4420, expr: !DIExpression())
!4420 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 867, type: !4421, isLocal: true, isDefinition: true, align: 8)
!4421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 840, elements: !4422)
!4422 = !{!4423}
!4423 = !DISubrange(count: 105)
!4424 = !DIGlobalVariableExpression(var: !4425, expr: !DIExpression())
!4425 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 868, type: !4426, isLocal: true, isDefinition: true, align: 8)
!4426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 504, elements: !4427)
!4427 = !{!4428}
!4428 = !DISubrange(count: 63)
!4429 = !DIGlobalVariableExpression(var: !4430, expr: !DIExpression())
!4430 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 869, type: !4431, isLocal: true, isDefinition: true, align: 8)
!4431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 392, elements: !4432)
!4432 = !{!4433}
!4433 = !DISubrange(count: 49)
!4434 = !DIGlobalVariableExpression(var: !4435, expr: !DIExpression())
!4435 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 869, type: !4436, isLocal: true, isDefinition: true, align: 8)
!4436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 160, elements: !2581)
!4437 = !DIGlobalVariableExpression(var: !4438, expr: !DIExpression())
!4438 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 66, type: !331, isLocal: true, isDefinition: true)
!4439 = !DIGlobalVariableExpression(var: !4440, expr: !DIExpression())
!4440 = distinct !DIGlobalVariable(name: "bcm3510_ops", scope: !2, file: !3, line: 839, type: !4441, isLocal: true, isDefinition: true)
!4441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!4442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 112, elements: !4443)
!4443 = !{!4444}
!4444 = !DISubrange(count: 14)
!4445 = !{i32 7, !"Dwarf Version", i32 4}
!4446 = !{i32 2, !"Debug Info Version", i32 3}
!4447 = !{i32 1, !"wchar_size", i32 2}
!4448 = !{i32 1, !"Code Model", i32 2}
!4449 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4450 = !DILocalVariable(name: "config", arg: 1, scope: !384, file: !3, line: 795, type: !4278)
!4451 = !DILocation(line: 795, column: 66, scope: !384)
!4452 = !DILocalVariable(name: "i2c", arg: 2, scope: !384, file: !3, line: 796, type: !4297)
!4453 = !DILocation(line: 796, column: 28, scope: !384)
!4454 = !DILocalVariable(name: "state", scope: !384, file: !3, line: 798, type: !4455)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_state", file: !3, line: 50, size: 11264, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4528}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4456, file: !3, line: 52, baseType: !4297, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4456, file: !3, line: 53, baseType: !4278, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4456, file: !3, line: 54, baseType: !388, size: 10240, offset: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "hab_mutex", scope: !4456, file: !3, line: 57, baseType: !1560, size: 192, offset: 10368)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_loaded", scope: !4456, file: !3, line: 58, baseType: !296, size: 1, offset: 10560, flags: DIFlagBitField, extraData: i64 10560)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "next_status_check", scope: !4456, file: !3, line: 60, baseType: !612, size: 64, offset: 10624)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "status_check_interval", scope: !4456, file: !3, line: 61, baseType: !612, size: 64, offset: 10688)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "status1", scope: !4456, file: !3, line: 62, baseType: !4466, size: 304, offset: 10752)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_hab_cmd_status1", file: !4467, line: 343, size: 304, elements: !4468)
!4467 = !DIFile(filename: "drivers/media/dvb-frontends/bcm3510_priv.h", directory: "/home/lizy2001/genbc/linux")
!4468 = !{!4469, !4476, !4483, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "STATUS0", scope: !4466, file: !4467, line: 349, baseType: !4470, size: 8)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4466, file: !4467, line: 344, size: 8, elements: !4471)
!4471 = !{!4472, !4473, !4474, !4475}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "EQ_MODE", scope: !4470, file: !4467, line: 345, baseType: !296, size: 4, flags: DIFlagBitField, extraData: i64 0)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4470, file: !4467, line: 346, baseType: !296, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "QRE", scope: !4470, file: !4467, line: 347, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "QSE", scope: !4470, file: !4467, line: 348, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "STATUS1", scope: !4466, file: !4467, line: 356, baseType: !4477, size: 8, offset: 8)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4466, file: !4467, line: 351, size: 8, elements: !4478)
!4478 = !{!4479, !4480, !4481, !4482}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "RECEIVER_LOCK", scope: !4477, file: !4467, line: 352, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "FEC_LOCK", scope: !4477, file: !4467, line: 353, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "OUT_PLL_LOCK", scope: !4477, file: !4467, line: 354, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4477, file: !4467, line: 355, baseType: !296, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "STATUS2", scope: !4466, file: !4467, line: 366, baseType: !4484, size: 8, offset: 16)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4466, file: !4467, line: 358, size: 8, elements: !4485)
!4485 = !{!4486, !4487, !4488, !4489, !4490, !4491, !4492}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4484, file: !4467, line: 359, baseType: !296, size: 2, flags: DIFlagBitField, extraData: i64 0)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "BW", scope: !4484, file: !4467, line: 360, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "NTE", scope: !4484, file: !4467, line: 361, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "AQI", scope: !4484, file: !4467, line: 362, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "FA", scope: !4484, file: !4467, line: 363, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ARI", scope: !4484, file: !4467, line: 364, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "TI", scope: !4484, file: !4467, line: 365, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "STATUS3", scope: !4466, file: !4467, line: 367, baseType: !296, size: 8, offset: 24)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "SNR_EST0", scope: !4466, file: !4467, line: 368, baseType: !296, size: 8, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "SNR_EST1", scope: !4466, file: !4467, line: 369, baseType: !296, size: 8, offset: 40)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "TUNER_FREQ0", scope: !4466, file: !4467, line: 370, baseType: !296, size: 8, offset: 48)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "TUNER_FREQ1", scope: !4466, file: !4467, line: 371, baseType: !296, size: 8, offset: 56)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "TUNER_FREQ2", scope: !4466, file: !4467, line: 372, baseType: !296, size: 8, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "TUNER_FREQ3", scope: !4466, file: !4467, line: 373, baseType: !296, size: 8, offset: 72)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_RATE0", scope: !4466, file: !4467, line: 374, baseType: !296, size: 8, offset: 80)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_RATE1", scope: !4466, file: !4467, line: 375, baseType: !296, size: 8, offset: 88)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_RATE2", scope: !4466, file: !4467, line: 376, baseType: !296, size: 8, offset: 96)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_RATE3", scope: !4466, file: !4467, line: 377, baseType: !296, size: 8, offset: 104)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_OFFSET0", scope: !4466, file: !4467, line: 378, baseType: !296, size: 8, offset: 112)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_OFFSET1", scope: !4466, file: !4467, line: 379, baseType: !296, size: 8, offset: 120)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_ERROR0", scope: !4466, file: !4467, line: 380, baseType: !296, size: 8, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_ERROR1", scope: !4466, file: !4467, line: 381, baseType: !296, size: 8, offset: 136)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "IF_FREQ0", scope: !4466, file: !4467, line: 382, baseType: !296, size: 8, offset: 144)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "IF_FREQ1", scope: !4466, file: !4467, line: 383, baseType: !296, size: 8, offset: 152)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "IF_FREQ2", scope: !4466, file: !4467, line: 384, baseType: !296, size: 8, offset: 160)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "IF_FREQ3", scope: !4466, file: !4467, line: 385, baseType: !296, size: 8, offset: 168)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "IF_OFFSET0", scope: !4466, file: !4467, line: 386, baseType: !296, size: 8, offset: 176)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "IF_OFFSET1", scope: !4466, file: !4467, line: 387, baseType: !296, size: 8, offset: 184)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "IF_ERROR0", scope: !4466, file: !4467, line: 388, baseType: !296, size: 8, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "IF_ERROR1", scope: !4466, file: !4467, line: 389, baseType: !296, size: 8, offset: 200)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_FILTER0", scope: !4466, file: !4467, line: 390, baseType: !296, size: 8, offset: 208)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_FILTER1", scope: !4466, file: !4467, line: 391, baseType: !296, size: 8, offset: 216)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_FILTER2", scope: !4466, file: !4467, line: 392, baseType: !296, size: 8, offset: 224)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_FILTER3", scope: !4466, file: !4467, line: 393, baseType: !296, size: 8, offset: 232)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_OFFSET0", scope: !4466, file: !4467, line: 394, baseType: !296, size: 8, offset: 240)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_OFFSET1", scope: !4466, file: !4467, line: 395, baseType: !296, size: 8, offset: 248)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_ERROR0", scope: !4466, file: !4467, line: 396, baseType: !296, size: 8, offset: 256)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_ERROR1", scope: !4466, file: !4467, line: 397, baseType: !296, size: 8, offset: 264)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "INT_AGC_LEVEL0", scope: !4466, file: !4467, line: 398, baseType: !296, size: 8, offset: 272)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "INT_AGC_LEVEL1", scope: !4466, file: !4467, line: 399, baseType: !296, size: 8, offset: 280)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "EXT_AGC_LEVEL0", scope: !4466, file: !4467, line: 400, baseType: !296, size: 8, offset: 288)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "EXT_AGC_LEVEL1", scope: !4466, file: !4467, line: 401, baseType: !296, size: 8, offset: 296)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "status2", scope: !4456, file: !3, line: 63, baseType: !4529, size: 176, offset: 11056)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_hab_cmd_status2", file: !4467, line: 405, size: 176, elements: !4530)
!4530 = !{!4531, !4538, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4566, !4567, !4568}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "STATUS0", scope: !4529, file: !4467, line: 411, baseType: !4532, size: 8)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4529, file: !4467, line: 406, size: 8, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "EQ_MODE", scope: !4532, file: !4467, line: 407, baseType: !296, size: 4, flags: DIFlagBitField, extraData: i64 0)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4532, file: !4467, line: 408, baseType: !296, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "QRE", scope: !4532, file: !4467, line: 409, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "QSR", scope: !4532, file: !4467, line: 410, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "STATUS1", scope: !4529, file: !4467, line: 417, baseType: !4539, size: 8, offset: 8)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4529, file: !4467, line: 412, size: 8, elements: !4540)
!4540 = !{!4541, !4542, !4543, !4544}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "RL", scope: !4539, file: !4467, line: 413, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "FL", scope: !4539, file: !4467, line: 414, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "OL", scope: !4539, file: !4467, line: 415, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4539, file: !4467, line: 416, baseType: !296, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "SYMBOL_RATE0", scope: !4529, file: !4467, line: 418, baseType: !296, size: 8, offset: 16)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "SYMBOL_RATE1", scope: !4529, file: !4467, line: 419, baseType: !296, size: 8, offset: 24)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "SYMBOL_RATE2", scope: !4529, file: !4467, line: 420, baseType: !296, size: 8, offset: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "SYMBOL_RATE3", scope: !4529, file: !4467, line: 421, baseType: !296, size: 8, offset: 40)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "LDCERC0", scope: !4529, file: !4467, line: 422, baseType: !296, size: 8, offset: 48)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "LDCERC1", scope: !4529, file: !4467, line: 423, baseType: !296, size: 8, offset: 56)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "LDCERC2", scope: !4529, file: !4467, line: 424, baseType: !296, size: 8, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "LDCERC3", scope: !4529, file: !4467, line: 425, baseType: !296, size: 8, offset: 72)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "LDUERC0", scope: !4529, file: !4467, line: 426, baseType: !296, size: 8, offset: 80)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "LDUERC1", scope: !4529, file: !4467, line: 427, baseType: !296, size: 8, offset: 88)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "LDUERC2", scope: !4529, file: !4467, line: 428, baseType: !296, size: 8, offset: 96)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "LDUERC3", scope: !4529, file: !4467, line: 429, baseType: !296, size: 8, offset: 104)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "LDBER0", scope: !4529, file: !4467, line: 430, baseType: !296, size: 8, offset: 112)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "LDBER1", scope: !4529, file: !4467, line: 431, baseType: !296, size: 8, offset: 120)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "LDBER2", scope: !4529, file: !4467, line: 432, baseType: !296, size: 8, offset: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "LDBER3", scope: !4529, file: !4467, line: 433, baseType: !296, size: 8, offset: 136)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "MODE_TYPE", scope: !4529, file: !4467, line: 437, baseType: !4562, size: 8, offset: 144)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4529, file: !4467, line: 434, size: 8, elements: !4563)
!4563 = !{!4564, !4565}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "MODE_TYPE", scope: !4562, file: !4467, line: 435, baseType: !296, size: 4, flags: DIFlagBitField, extraData: i64 0)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "reservd", scope: !4562, file: !4467, line: 436, baseType: !296, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "SNR_EST0", scope: !4529, file: !4467, line: 438, baseType: !296, size: 8, offset: 152)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "SNR_EST1", scope: !4529, file: !4467, line: 439, baseType: !296, size: 8, offset: 160)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "SIGNAL", scope: !4529, file: !4467, line: 440, baseType: !296, size: 8, offset: 168)
!4569 = !DILocation(line: 798, column: 24, scope: !384)
!4570 = !DILocalVariable(name: "ret", scope: !384, file: !3, line: 799, type: !331)
!4571 = !DILocation(line: 799, column: 6, scope: !384)
!4572 = !DILocalVariable(name: "v", scope: !384, file: !3, line: 800, type: !4573)
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "bcm3510_register_value", file: !4467, line: 151, baseType: !4574)
!4574 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !4467, line: 25, size: 8, elements: !4575)
!4575 = !{!4576, !4577, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4598, !4609, !4620, !4631, !4632, !4633, !4638, !4639, !4648, !4649, !4650, !4651, !4656, !4661, !4670, !4680, !4691, !4692}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4574, file: !4467, line: 26, baseType: !296, size: 8)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "TSTCTL_2e", scope: !4574, file: !4467, line: 30, baseType: !4578, size: 8)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 28, size: 8, elements: !4579)
!4579 = !{!4580}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "CTL", scope: !4578, file: !4467, line: 29, baseType: !296, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "LDCERC_4e", scope: !4574, file: !4467, line: 32, baseType: !296, size: 8)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "LDUERC_4f", scope: !4574, file: !4467, line: 33, baseType: !296, size: 8)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "LD_BER0_65", scope: !4574, file: !4467, line: 34, baseType: !296, size: 8)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "LD_BER1_66", scope: !4574, file: !4467, line: 35, baseType: !296, size: 8)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "LD_BER2_67", scope: !4574, file: !4467, line: 36, baseType: !296, size: 8)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "LD_BER3_68", scope: !4574, file: !4467, line: 37, baseType: !296, size: 8)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "HCTL1_a0", scope: !4574, file: !4467, line: 48, baseType: !4588, size: 8)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 39, size: 8, elements: !4589)
!4589 = !{!4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "RESET", scope: !4588, file: !4467, line: 40, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "IDLE", scope: !4588, file: !4467, line: 41, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "STOP", scope: !4588, file: !4467, line: 42, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "HIRQ0", scope: !4588, file: !4467, line: 43, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "HIRQ1", scope: !4588, file: !4467, line: 44, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "na0", scope: !4588, file: !4467, line: 45, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "HABAV", scope: !4588, file: !4467, line: 46, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "na1", scope: !4588, file: !4467, line: 47, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "HCTLMSK_a1", scope: !4574, file: !4467, line: 59, baseType: !4599, size: 8)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 50, size: 8, elements: !4600)
!4600 = !{!4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "na0", scope: !4599, file: !4467, line: 51, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "IDLMSK", scope: !4599, file: !4467, line: 52, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "STMSK", scope: !4599, file: !4467, line: 53, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "I0MSK", scope: !4599, file: !4467, line: 54, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "I1MSK", scope: !4599, file: !4467, line: 55, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "na1", scope: !4599, file: !4467, line: 56, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "HABMSK", scope: !4599, file: !4467, line: 57, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "na2", scope: !4599, file: !4467, line: 58, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "APSTAT1_a2", scope: !4574, file: !4467, line: 70, baseType: !4610, size: 8)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 61, size: 8, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "RESET", scope: !4610, file: !4467, line: 62, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "IDLE", scope: !4610, file: !4467, line: 63, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "STOP", scope: !4610, file: !4467, line: 64, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "RUN", scope: !4610, file: !4467, line: 65, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "HABAV", scope: !4610, file: !4467, line: 66, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "MEMAV", scope: !4610, file: !4467, line: 67, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "ALDONE", scope: !4610, file: !4467, line: 68, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "REIRQ", scope: !4610, file: !4467, line: 69, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "APMSK1_a3", scope: !4574, file: !4467, line: 81, baseType: !4621, size: 8)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 72, size: 8, elements: !4622)
!4622 = !{!4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "RSTMSK", scope: !4621, file: !4467, line: 73, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "IMSK", scope: !4621, file: !4467, line: 74, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "SMSK", scope: !4621, file: !4467, line: 75, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "RMSK", scope: !4621, file: !4467, line: 76, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "HABMSK", scope: !4621, file: !4467, line: 77, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "MAVMSK", scope: !4621, file: !4467, line: 78, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "ALDMSK", scope: !4621, file: !4467, line: 79, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "REMSK", scope: !4621, file: !4467, line: 80, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "APSTAT2_a4", scope: !4574, file: !4467, line: 83, baseType: !296, size: 8)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "APMSK2_a5", scope: !4574, file: !4467, line: 84, baseType: !296, size: 8)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "HABADR_a6", scope: !4574, file: !4467, line: 89, baseType: !4634, size: 8)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 86, size: 8, elements: !4635)
!4635 = !{!4636, !4637}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "HABADR", scope: !4634, file: !4467, line: 87, baseType: !296, size: 7, flags: DIFlagBitField, extraData: i64 0)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !4634, file: !4467, line: 88, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "HABDATA_a7", scope: !4574, file: !4467, line: 91, baseType: !296, size: 8)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "HABSTAT_a8", scope: !4574, file: !4467, line: 100, baseType: !4640, size: 8)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 93, size: 8, elements: !4641)
!4641 = !{!4642, !4643, !4644, !4645, !4646, !4647}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "HABR", scope: !4640, file: !4467, line: 94, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "LDHABR", scope: !4640, file: !4467, line: 95, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "APMSK", scope: !4640, file: !4467, line: 96, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "HMSK", scope: !4640, file: !4467, line: 97, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "LDMSK", scope: !4640, file: !4467, line: 98, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !4640, file: !4467, line: 99, baseType: !296, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "MADRH_a9", scope: !4574, file: !4467, line: 102, baseType: !296, size: 8)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "MADRL_aa", scope: !4574, file: !4467, line: 103, baseType: !296, size: 8)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "MDATA_ab", scope: !4574, file: !4467, line: 104, baseType: !296, size: 8)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "JDEC_ca", scope: !4574, file: !4467, line: 111, baseType: !4652, size: 8)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 106, size: 8, elements: !4653)
!4653 = !{!4654, !4655}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "JDEC", scope: !4652, file: !4467, line: 109, baseType: !296, size: 3, flags: DIFlagBitField, extraData: i64 0)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !4652, file: !4467, line: 110, baseType: !296, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "REVID_e0", scope: !4574, file: !4467, line: 116, baseType: !4657, size: 8)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 113, size: 8, elements: !4658)
!4658 = !{!4659, !4660}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "REV", scope: !4657, file: !4467, line: 114, baseType: !296, size: 4, flags: DIFlagBitField, extraData: i64 0)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "LAYER", scope: !4657, file: !4467, line: 115, baseType: !296, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "BERCTL_fa", scope: !4574, file: !4467, line: 125, baseType: !4662, size: 8)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 118, size: 8, elements: !4663)
!4663 = !{!4664, !4665, !4666, !4667, !4668, !4669}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "unk0", scope: !4662, file: !4467, line: 119, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "CNTCTL", scope: !4662, file: !4467, line: 120, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "BITCNT", scope: !4662, file: !4467, line: 121, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "unk1", scope: !4662, file: !4467, line: 122, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "RESYNC", scope: !4662, file: !4467, line: 123, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "unk2", scope: !4662, file: !4467, line: 124, baseType: !296, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "TUNSET_fc", scope: !4574, file: !4467, line: 135, baseType: !4671, size: 8)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 127, size: 8, elements: !4672)
!4672 = !{!4673, !4674, !4675, !4676, !4677, !4678, !4679}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "CSEL0", scope: !4671, file: !4467, line: 128, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "CLKED0", scope: !4671, file: !4467, line: 129, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "CSEL1", scope: !4671, file: !4467, line: 130, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "CLKED1", scope: !4671, file: !4467, line: 131, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "CLKLEV", scope: !4671, file: !4467, line: 132, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "SPIVAR", scope: !4671, file: !4467, line: 133, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !4671, file: !4467, line: 134, baseType: !296, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "TUNCTL_fd", scope: !4574, file: !4467, line: 146, baseType: !4681, size: 8)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4574, file: !4467, line: 137, size: 8, elements: !4682)
!4682 = !{!4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "CLK", scope: !4681, file: !4467, line: 138, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "DATA", scope: !4681, file: !4467, line: 139, baseType: !296, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "CS0", scope: !4681, file: !4467, line: 140, baseType: !296, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "CS1", scope: !4681, file: !4467, line: 141, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "AGCSEL", scope: !4681, file: !4467, line: 142, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "na0", scope: !4681, file: !4467, line: 143, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "TUNSEL", scope: !4681, file: !4467, line: 144, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "na1", scope: !4681, file: !4467, line: 145, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "TUNSEL0_fe", scope: !4574, file: !4467, line: 148, baseType: !296, size: 8)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "TUNSEL1_ff", scope: !4574, file: !4467, line: 149, baseType: !296, size: 8)
!4693 = !DILocation(line: 800, column: 25, scope: !384)
!4694 = !DILocation(line: 803, column: 10, scope: !384)
!4695 = !DILocation(line: 803, column: 8, scope: !384)
!4696 = !DILocation(line: 804, column: 6, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !384, file: !3, line: 804, column: 6)
!4698 = !DILocation(line: 804, column: 12, scope: !4697)
!4699 = !DILocation(line: 804, column: 6, scope: !384)
!4700 = !DILocation(line: 805, column: 3, scope: !4697)
!4701 = !DILocation(line: 809, column: 18, scope: !384)
!4702 = !DILocation(line: 809, column: 2, scope: !384)
!4703 = !DILocation(line: 809, column: 9, scope: !384)
!4704 = !DILocation(line: 809, column: 16, scope: !384)
!4705 = !DILocation(line: 810, column: 15, scope: !384)
!4706 = !DILocation(line: 810, column: 2, scope: !384)
!4707 = !DILocation(line: 810, column: 9, scope: !384)
!4708 = !DILocation(line: 810, column: 13, scope: !384)
!4709 = !DILocation(line: 813, column: 10, scope: !384)
!4710 = !DILocation(line: 813, column: 17, scope: !384)
!4711 = !DILocation(line: 813, column: 26, scope: !384)
!4712 = !DILocation(line: 813, column: 2, scope: !384)
!4713 = !DILocation(line: 814, column: 37, scope: !384)
!4714 = !DILocation(line: 814, column: 2, scope: !384)
!4715 = !DILocation(line: 814, column: 9, scope: !384)
!4716 = !DILocation(line: 814, column: 18, scope: !384)
!4717 = !DILocation(line: 814, column: 35, scope: !384)
!4718 = !DILocation(line: 816, column: 2, scope: !384)
!4719 = !DILocation(line: 816, column: 2, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !384, file: !3, line: 816, column: 2)
!4721 = !DILocation(line: 818, column: 27, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !384, file: !3, line: 818, column: 6)
!4723 = !DILocation(line: 818, column: 13, scope: !4722)
!4724 = !DILocation(line: 818, column: 11, scope: !4722)
!4725 = !DILocation(line: 818, column: 43, scope: !4722)
!4726 = !DILocation(line: 818, column: 6, scope: !384)
!4727 = !DILocation(line: 819, column: 3, scope: !4722)
!4728 = !DILocation(line: 821, column: 2, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !384, file: !3, line: 821, column: 2)
!4730 = !DILocation(line: 821, column: 2, scope: !384)
!4731 = !DILocation(line: 823, column: 9, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !384, file: !3, line: 823, column: 6)
!4733 = !DILocation(line: 823, column: 18, scope: !4732)
!4734 = !DILocation(line: 823, column: 7, scope: !4732)
!4735 = !DILocation(line: 823, column: 22, scope: !4732)
!4736 = !DILocation(line: 823, column: 29, scope: !4732)
!4737 = !DILocation(line: 823, column: 34, scope: !4732)
!4738 = !DILocation(line: 823, column: 43, scope: !4732)
!4739 = !DILocation(line: 823, column: 32, scope: !4732)
!4740 = !DILocation(line: 823, column: 49, scope: !4732)
!4741 = !DILocation(line: 823, column: 57, scope: !4732)
!4742 = !DILocation(line: 824, column: 6, scope: !4732)
!4743 = !DILocation(line: 824, column: 15, scope: !4732)
!4744 = !DILocation(line: 824, column: 4, scope: !4732)
!4745 = !DILocation(line: 824, column: 19, scope: !4732)
!4746 = !DILocation(line: 824, column: 26, scope: !4732)
!4747 = !DILocation(line: 824, column: 31, scope: !4732)
!4748 = !DILocation(line: 824, column: 40, scope: !4732)
!4749 = !DILocation(line: 824, column: 29, scope: !4732)
!4750 = !DILocation(line: 824, column: 46, scope: !4732)
!4751 = !DILocation(line: 823, column: 6, scope: !384)
!4752 = !DILocation(line: 825, column: 3, scope: !4732)
!4753 = !DILocation(line: 827, column: 2, scope: !384)
!4754 = !DILocation(line: 829, column: 16, scope: !384)
!4755 = !DILocation(line: 829, column: 2, scope: !384)
!4756 = !DILocation(line: 831, column: 10, scope: !384)
!4757 = !DILocation(line: 831, column: 17, scope: !384)
!4758 = !DILocation(line: 831, column: 2, scope: !384)
!4759 = !DILabel(scope: !384, name: "error", file: !3, line: 833)
!4760 = !DILocation(line: 833, column: 1, scope: !384)
!4761 = !DILocation(line: 834, column: 8, scope: !384)
!4762 = !DILocation(line: 834, column: 2, scope: !384)
!4763 = !DILocation(line: 835, column: 2, scope: !384)
!4764 = !DILocation(line: 836, column: 1, scope: !384)
!4765 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4766, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!293, !812, !291}
!4768 = !DILocalVariable(name: "s", arg: 1, scope: !4769, file: !284, line: 445, type: !1404)
!4769 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4770, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!293, !1404, !291, !812}
!4772 = !DILocation(line: 445, column: 72, scope: !4769, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 552, column: 10, scope: !4774, inlinedAt: !4777)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !284, line: 540, column: 34)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !284, line: 540, column: 6)
!4776 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4766, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!4777 = distinct !DILocation(line: 664, column: 9, scope: !4765)
!4778 = !DILocalVariable(name: "flags", arg: 2, scope: !4769, file: !284, line: 446, type: !291)
!4779 = !DILocation(line: 446, column: 9, scope: !4769, inlinedAt: !4773)
!4780 = !DILocalVariable(name: "size", arg: 3, scope: !4769, file: !284, line: 446, type: !812)
!4781 = !DILocation(line: 446, column: 23, scope: !4769, inlinedAt: !4773)
!4782 = !DILocalVariable(name: "ret", scope: !4769, file: !284, line: 448, type: !293)
!4783 = !DILocation(line: 448, column: 8, scope: !4769, inlinedAt: !4773)
!4784 = !DILocalVariable(name: "flags", arg: 1, scope: !4785, file: !284, line: 318, type: !291)
!4785 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4786, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!283, !291}
!4788 = !DILocation(line: 318, column: 67, scope: !4785, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 553, column: 20, scope: !4774, inlinedAt: !4777)
!4790 = !DILocalVariable(name: "size", arg: 1, scope: !4791, file: !284, line: 346, type: !812)
!4791 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4792, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!7, !812}
!4794 = !DILocation(line: 346, column: 58, scope: !4791, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 547, column: 11, scope: !4774, inlinedAt: !4777)
!4796 = !DILocalVariable(name: "size", arg: 1, scope: !4797, file: !284, line: 472, type: !812)
!4797 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4798, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!293, !812, !291, !7}
!4800 = !DILocation(line: 472, column: 28, scope: !4797, inlinedAt: !4801)
!4801 = distinct !DILocation(line: 481, column: 9, scope: !4802, inlinedAt: !4803)
!4802 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4766, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!4803 = distinct !DILocation(line: 545, column: 11, scope: !4804, inlinedAt: !4777)
!4804 = distinct !DILexicalBlock(scope: !4774, file: !284, line: 544, column: 7)
!4805 = !DILocalVariable(name: "flags", arg: 2, scope: !4797, file: !284, line: 472, type: !291)
!4806 = !DILocation(line: 472, column: 40, scope: !4797, inlinedAt: !4801)
!4807 = !DILocalVariable(name: "order", arg: 3, scope: !4797, file: !284, line: 472, type: !7)
!4808 = !DILocation(line: 472, column: 60, scope: !4797, inlinedAt: !4801)
!4809 = !DILocalVariable(name: "size", arg: 1, scope: !4802, file: !284, line: 478, type: !812)
!4810 = !DILocation(line: 478, column: 51, scope: !4802, inlinedAt: !4803)
!4811 = !DILocalVariable(name: "flags", arg: 2, scope: !4802, file: !284, line: 478, type: !291)
!4812 = !DILocation(line: 478, column: 63, scope: !4802, inlinedAt: !4803)
!4813 = !DILocalVariable(name: "order", scope: !4802, file: !284, line: 480, type: !7)
!4814 = !DILocation(line: 480, column: 15, scope: !4802, inlinedAt: !4803)
!4815 = !DILocalVariable(name: "size", arg: 1, scope: !4776, file: !284, line: 538, type: !812)
!4816 = !DILocation(line: 538, column: 45, scope: !4776, inlinedAt: !4777)
!4817 = !DILocalVariable(name: "flags", arg: 2, scope: !4776, file: !284, line: 538, type: !291)
!4818 = !DILocation(line: 538, column: 57, scope: !4776, inlinedAt: !4777)
!4819 = !DILocalVariable(name: "index", scope: !4774, file: !284, line: 542, type: !7)
!4820 = !DILocation(line: 542, column: 16, scope: !4774, inlinedAt: !4777)
!4821 = !DILocalVariable(name: "size", arg: 1, scope: !4765, file: !284, line: 662, type: !812)
!4822 = !DILocation(line: 662, column: 36, scope: !4765)
!4823 = !DILocalVariable(name: "flags", arg: 2, scope: !4765, file: !284, line: 662, type: !291)
!4824 = !DILocation(line: 662, column: 48, scope: !4765)
!4825 = !DILocation(line: 664, column: 17, scope: !4765)
!4826 = !DILocation(line: 664, column: 23, scope: !4765)
!4827 = !DILocation(line: 664, column: 29, scope: !4765)
!4828 = !DILocation(line: 540, column: 27, scope: !4775, inlinedAt: !4777)
!4829 = !DILocation(line: 540, column: 6, scope: !4775, inlinedAt: !4777)
!4830 = !DILocation(line: 540, column: 6, scope: !4776, inlinedAt: !4777)
!4831 = !DILocation(line: 544, column: 7, scope: !4804, inlinedAt: !4777)
!4832 = !DILocation(line: 544, column: 12, scope: !4804, inlinedAt: !4777)
!4833 = !DILocation(line: 544, column: 7, scope: !4774, inlinedAt: !4777)
!4834 = !DILocation(line: 545, column: 25, scope: !4804, inlinedAt: !4777)
!4835 = !DILocation(line: 545, column: 31, scope: !4804, inlinedAt: !4777)
!4836 = !DILocation(line: 480, column: 33, scope: !4802, inlinedAt: !4803)
!4837 = !DILocation(line: 480, column: 23, scope: !4802, inlinedAt: !4803)
!4838 = !DILocation(line: 481, column: 29, scope: !4802, inlinedAt: !4803)
!4839 = !DILocation(line: 481, column: 35, scope: !4802, inlinedAt: !4803)
!4840 = !DILocation(line: 481, column: 42, scope: !4802, inlinedAt: !4803)
!4841 = !DILocation(line: 474, column: 23, scope: !4797, inlinedAt: !4801)
!4842 = !DILocation(line: 474, column: 29, scope: !4797, inlinedAt: !4801)
!4843 = !DILocation(line: 474, column: 36, scope: !4797, inlinedAt: !4801)
!4844 = !DILocation(line: 474, column: 9, scope: !4797, inlinedAt: !4801)
!4845 = !DILocation(line: 545, column: 4, scope: !4804, inlinedAt: !4777)
!4846 = !DILocation(line: 547, column: 25, scope: !4774, inlinedAt: !4777)
!4847 = !DILocation(line: 348, column: 7, scope: !4848, inlinedAt: !4795)
!4848 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 348, column: 6)
!4849 = !DILocation(line: 348, column: 6, scope: !4791, inlinedAt: !4795)
!4850 = !DILocation(line: 349, column: 3, scope: !4848, inlinedAt: !4795)
!4851 = !DILocation(line: 351, column: 6, scope: !4852, inlinedAt: !4795)
!4852 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 351, column: 6)
!4853 = !DILocation(line: 351, column: 11, scope: !4852, inlinedAt: !4795)
!4854 = !DILocation(line: 351, column: 6, scope: !4791, inlinedAt: !4795)
!4855 = !DILocation(line: 352, column: 3, scope: !4852, inlinedAt: !4795)
!4856 = !DILocation(line: 354, column: 32, scope: !4857, inlinedAt: !4795)
!4857 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 354, column: 6)
!4858 = !DILocation(line: 354, column: 37, scope: !4857, inlinedAt: !4795)
!4859 = !DILocation(line: 354, column: 42, scope: !4857, inlinedAt: !4795)
!4860 = !DILocation(line: 354, column: 45, scope: !4857, inlinedAt: !4795)
!4861 = !DILocation(line: 354, column: 50, scope: !4857, inlinedAt: !4795)
!4862 = !DILocation(line: 354, column: 6, scope: !4791, inlinedAt: !4795)
!4863 = !DILocation(line: 355, column: 3, scope: !4857, inlinedAt: !4795)
!4864 = !DILocation(line: 356, column: 32, scope: !4865, inlinedAt: !4795)
!4865 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 356, column: 6)
!4866 = !DILocation(line: 356, column: 37, scope: !4865, inlinedAt: !4795)
!4867 = !DILocation(line: 356, column: 43, scope: !4865, inlinedAt: !4795)
!4868 = !DILocation(line: 356, column: 46, scope: !4865, inlinedAt: !4795)
!4869 = !DILocation(line: 356, column: 51, scope: !4865, inlinedAt: !4795)
!4870 = !DILocation(line: 356, column: 6, scope: !4791, inlinedAt: !4795)
!4871 = !DILocation(line: 357, column: 3, scope: !4865, inlinedAt: !4795)
!4872 = !DILocation(line: 358, column: 6, scope: !4873, inlinedAt: !4795)
!4873 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 358, column: 6)
!4874 = !DILocation(line: 358, column: 11, scope: !4873, inlinedAt: !4795)
!4875 = !DILocation(line: 358, column: 6, scope: !4791, inlinedAt: !4795)
!4876 = !DILocation(line: 358, column: 26, scope: !4873, inlinedAt: !4795)
!4877 = !DILocation(line: 359, column: 6, scope: !4878, inlinedAt: !4795)
!4878 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 359, column: 6)
!4879 = !DILocation(line: 359, column: 11, scope: !4878, inlinedAt: !4795)
!4880 = !DILocation(line: 359, column: 6, scope: !4791, inlinedAt: !4795)
!4881 = !DILocation(line: 359, column: 26, scope: !4878, inlinedAt: !4795)
!4882 = !DILocation(line: 360, column: 6, scope: !4883, inlinedAt: !4795)
!4883 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 360, column: 6)
!4884 = !DILocation(line: 360, column: 11, scope: !4883, inlinedAt: !4795)
!4885 = !DILocation(line: 360, column: 6, scope: !4791, inlinedAt: !4795)
!4886 = !DILocation(line: 360, column: 26, scope: !4883, inlinedAt: !4795)
!4887 = !DILocation(line: 361, column: 6, scope: !4888, inlinedAt: !4795)
!4888 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 361, column: 6)
!4889 = !DILocation(line: 361, column: 11, scope: !4888, inlinedAt: !4795)
!4890 = !DILocation(line: 361, column: 6, scope: !4791, inlinedAt: !4795)
!4891 = !DILocation(line: 361, column: 26, scope: !4888, inlinedAt: !4795)
!4892 = !DILocation(line: 362, column: 6, scope: !4893, inlinedAt: !4795)
!4893 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 362, column: 6)
!4894 = !DILocation(line: 362, column: 11, scope: !4893, inlinedAt: !4795)
!4895 = !DILocation(line: 362, column: 6, scope: !4791, inlinedAt: !4795)
!4896 = !DILocation(line: 362, column: 26, scope: !4893, inlinedAt: !4795)
!4897 = !DILocation(line: 363, column: 6, scope: !4898, inlinedAt: !4795)
!4898 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 363, column: 6)
!4899 = !DILocation(line: 363, column: 11, scope: !4898, inlinedAt: !4795)
!4900 = !DILocation(line: 363, column: 6, scope: !4791, inlinedAt: !4795)
!4901 = !DILocation(line: 363, column: 26, scope: !4898, inlinedAt: !4795)
!4902 = !DILocation(line: 364, column: 6, scope: !4903, inlinedAt: !4795)
!4903 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 364, column: 6)
!4904 = !DILocation(line: 364, column: 11, scope: !4903, inlinedAt: !4795)
!4905 = !DILocation(line: 364, column: 6, scope: !4791, inlinedAt: !4795)
!4906 = !DILocation(line: 364, column: 26, scope: !4903, inlinedAt: !4795)
!4907 = !DILocation(line: 365, column: 6, scope: !4908, inlinedAt: !4795)
!4908 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 365, column: 6)
!4909 = !DILocation(line: 365, column: 11, scope: !4908, inlinedAt: !4795)
!4910 = !DILocation(line: 365, column: 6, scope: !4791, inlinedAt: !4795)
!4911 = !DILocation(line: 365, column: 26, scope: !4908, inlinedAt: !4795)
!4912 = !DILocation(line: 366, column: 6, scope: !4913, inlinedAt: !4795)
!4913 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 366, column: 6)
!4914 = !DILocation(line: 366, column: 11, scope: !4913, inlinedAt: !4795)
!4915 = !DILocation(line: 366, column: 6, scope: !4791, inlinedAt: !4795)
!4916 = !DILocation(line: 366, column: 26, scope: !4913, inlinedAt: !4795)
!4917 = !DILocation(line: 367, column: 6, scope: !4918, inlinedAt: !4795)
!4918 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 367, column: 6)
!4919 = !DILocation(line: 367, column: 11, scope: !4918, inlinedAt: !4795)
!4920 = !DILocation(line: 367, column: 6, scope: !4791, inlinedAt: !4795)
!4921 = !DILocation(line: 367, column: 26, scope: !4918, inlinedAt: !4795)
!4922 = !DILocation(line: 368, column: 6, scope: !4923, inlinedAt: !4795)
!4923 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 368, column: 6)
!4924 = !DILocation(line: 368, column: 11, scope: !4923, inlinedAt: !4795)
!4925 = !DILocation(line: 368, column: 6, scope: !4791, inlinedAt: !4795)
!4926 = !DILocation(line: 368, column: 26, scope: !4923, inlinedAt: !4795)
!4927 = !DILocation(line: 369, column: 6, scope: !4928, inlinedAt: !4795)
!4928 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 369, column: 6)
!4929 = !DILocation(line: 369, column: 11, scope: !4928, inlinedAt: !4795)
!4930 = !DILocation(line: 369, column: 6, scope: !4791, inlinedAt: !4795)
!4931 = !DILocation(line: 369, column: 26, scope: !4928, inlinedAt: !4795)
!4932 = !DILocation(line: 370, column: 6, scope: !4933, inlinedAt: !4795)
!4933 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 370, column: 6)
!4934 = !DILocation(line: 370, column: 11, scope: !4933, inlinedAt: !4795)
!4935 = !DILocation(line: 370, column: 6, scope: !4791, inlinedAt: !4795)
!4936 = !DILocation(line: 370, column: 26, scope: !4933, inlinedAt: !4795)
!4937 = !DILocation(line: 371, column: 6, scope: !4938, inlinedAt: !4795)
!4938 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 371, column: 6)
!4939 = !DILocation(line: 371, column: 11, scope: !4938, inlinedAt: !4795)
!4940 = !DILocation(line: 371, column: 6, scope: !4791, inlinedAt: !4795)
!4941 = !DILocation(line: 371, column: 26, scope: !4938, inlinedAt: !4795)
!4942 = !DILocation(line: 372, column: 6, scope: !4943, inlinedAt: !4795)
!4943 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 372, column: 6)
!4944 = !DILocation(line: 372, column: 11, scope: !4943, inlinedAt: !4795)
!4945 = !DILocation(line: 372, column: 6, scope: !4791, inlinedAt: !4795)
!4946 = !DILocation(line: 372, column: 26, scope: !4943, inlinedAt: !4795)
!4947 = !DILocation(line: 373, column: 6, scope: !4948, inlinedAt: !4795)
!4948 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 373, column: 6)
!4949 = !DILocation(line: 373, column: 11, scope: !4948, inlinedAt: !4795)
!4950 = !DILocation(line: 373, column: 6, scope: !4791, inlinedAt: !4795)
!4951 = !DILocation(line: 373, column: 26, scope: !4948, inlinedAt: !4795)
!4952 = !DILocation(line: 374, column: 6, scope: !4953, inlinedAt: !4795)
!4953 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 374, column: 6)
!4954 = !DILocation(line: 374, column: 11, scope: !4953, inlinedAt: !4795)
!4955 = !DILocation(line: 374, column: 6, scope: !4791, inlinedAt: !4795)
!4956 = !DILocation(line: 374, column: 26, scope: !4953, inlinedAt: !4795)
!4957 = !DILocation(line: 375, column: 6, scope: !4958, inlinedAt: !4795)
!4958 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 375, column: 6)
!4959 = !DILocation(line: 375, column: 11, scope: !4958, inlinedAt: !4795)
!4960 = !DILocation(line: 375, column: 6, scope: !4791, inlinedAt: !4795)
!4961 = !DILocation(line: 375, column: 27, scope: !4958, inlinedAt: !4795)
!4962 = !DILocation(line: 376, column: 6, scope: !4963, inlinedAt: !4795)
!4963 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 376, column: 6)
!4964 = !DILocation(line: 376, column: 11, scope: !4963, inlinedAt: !4795)
!4965 = !DILocation(line: 376, column: 6, scope: !4791, inlinedAt: !4795)
!4966 = !DILocation(line: 376, column: 32, scope: !4963, inlinedAt: !4795)
!4967 = !DILocation(line: 377, column: 6, scope: !4968, inlinedAt: !4795)
!4968 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 377, column: 6)
!4969 = !DILocation(line: 377, column: 11, scope: !4968, inlinedAt: !4795)
!4970 = !DILocation(line: 377, column: 6, scope: !4791, inlinedAt: !4795)
!4971 = !DILocation(line: 377, column: 32, scope: !4968, inlinedAt: !4795)
!4972 = !DILocation(line: 378, column: 6, scope: !4973, inlinedAt: !4795)
!4973 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 378, column: 6)
!4974 = !DILocation(line: 378, column: 11, scope: !4973, inlinedAt: !4795)
!4975 = !DILocation(line: 378, column: 6, scope: !4791, inlinedAt: !4795)
!4976 = !DILocation(line: 378, column: 32, scope: !4973, inlinedAt: !4795)
!4977 = !DILocation(line: 379, column: 6, scope: !4978, inlinedAt: !4795)
!4978 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 379, column: 6)
!4979 = !DILocation(line: 379, column: 11, scope: !4978, inlinedAt: !4795)
!4980 = !DILocation(line: 379, column: 6, scope: !4791, inlinedAt: !4795)
!4981 = !DILocation(line: 379, column: 33, scope: !4978, inlinedAt: !4795)
!4982 = !DILocation(line: 380, column: 6, scope: !4983, inlinedAt: !4795)
!4983 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 380, column: 6)
!4984 = !DILocation(line: 380, column: 11, scope: !4983, inlinedAt: !4795)
!4985 = !DILocation(line: 380, column: 6, scope: !4791, inlinedAt: !4795)
!4986 = !DILocation(line: 380, column: 33, scope: !4983, inlinedAt: !4795)
!4987 = !DILocation(line: 381, column: 6, scope: !4988, inlinedAt: !4795)
!4988 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 381, column: 6)
!4989 = !DILocation(line: 381, column: 11, scope: !4988, inlinedAt: !4795)
!4990 = !DILocation(line: 381, column: 6, scope: !4791, inlinedAt: !4795)
!4991 = !DILocation(line: 381, column: 33, scope: !4988, inlinedAt: !4795)
!4992 = !DILocation(line: 382, column: 2, scope: !4993, inlinedAt: !4795)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !284, line: 382, column: 2)
!4994 = distinct !DILexicalBlock(scope: !4791, file: !284, line: 382, column: 2)
!4995 = !{i32 -2143545832, i32 -2143545803, i32 -2143545757, i32 -2143545699, i32 -2143545645, i32 -2143545591, i32 -2143545536, i32 -2143545505}
!4996 = !DILocation(line: 382, column: 2, scope: !4997, inlinedAt: !4795)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !284, line: 382, column: 2)
!4998 = distinct !DILexicalBlock(scope: !4994, file: !284, line: 382, column: 2)
!4999 = !{i32 -2143545062, i32 -2143545055, i32 -2143545001, i32 -2143544970, i32 -2143544940}
!5000 = !DILocation(line: 382, column: 2, scope: !4998, inlinedAt: !4795)
!5001 = !DILocation(line: 386, column: 1, scope: !4791, inlinedAt: !4795)
!5002 = !DILocation(line: 547, column: 9, scope: !4774, inlinedAt: !4777)
!5003 = !DILocation(line: 549, column: 8, scope: !5004, inlinedAt: !4777)
!5004 = distinct !DILexicalBlock(scope: !4774, file: !284, line: 549, column: 7)
!5005 = !DILocation(line: 549, column: 7, scope: !4774, inlinedAt: !4777)
!5006 = !DILocation(line: 550, column: 4, scope: !5004, inlinedAt: !4777)
!5007 = !DILocation(line: 553, column: 33, scope: !4774, inlinedAt: !4777)
!5008 = !DILocation(line: 325, column: 6, scope: !5009, inlinedAt: !4789)
!5009 = distinct !DILexicalBlock(scope: !4785, file: !284, line: 325, column: 6)
!5010 = !DILocation(line: 325, column: 6, scope: !4785, inlinedAt: !4789)
!5011 = !DILocation(line: 326, column: 3, scope: !5009, inlinedAt: !4789)
!5012 = !DILocation(line: 332, column: 9, scope: !4785, inlinedAt: !4789)
!5013 = !DILocation(line: 332, column: 15, scope: !4785, inlinedAt: !4789)
!5014 = !DILocation(line: 332, column: 2, scope: !4785, inlinedAt: !4789)
!5015 = !DILocation(line: 336, column: 1, scope: !4785, inlinedAt: !4789)
!5016 = !DILocation(line: 553, column: 5, scope: !4774, inlinedAt: !4777)
!5017 = !DILocation(line: 553, column: 41, scope: !4774, inlinedAt: !4777)
!5018 = !DILocation(line: 554, column: 5, scope: !4774, inlinedAt: !4777)
!5019 = !DILocation(line: 554, column: 12, scope: !4774, inlinedAt: !4777)
!5020 = !DILocation(line: 448, column: 31, scope: !4769, inlinedAt: !4773)
!5021 = !DILocation(line: 448, column: 34, scope: !4769, inlinedAt: !4773)
!5022 = !DILocation(line: 448, column: 14, scope: !4769, inlinedAt: !4773)
!5023 = !DILocation(line: 450, column: 22, scope: !4769, inlinedAt: !4773)
!5024 = !DILocation(line: 450, column: 25, scope: !4769, inlinedAt: !4773)
!5025 = !DILocation(line: 450, column: 30, scope: !4769, inlinedAt: !4773)
!5026 = !DILocation(line: 450, column: 36, scope: !4769, inlinedAt: !4773)
!5027 = !DILocation(line: 450, column: 8, scope: !4769, inlinedAt: !4773)
!5028 = !DILocation(line: 450, column: 6, scope: !4769, inlinedAt: !4773)
!5029 = !DILocation(line: 451, column: 9, scope: !4769, inlinedAt: !4773)
!5030 = !DILocation(line: 552, column: 3, scope: !4774, inlinedAt: !4777)
!5031 = !DILocation(line: 557, column: 19, scope: !4776, inlinedAt: !4777)
!5032 = !DILocation(line: 557, column: 25, scope: !4776, inlinedAt: !4777)
!5033 = !DILocation(line: 557, column: 9, scope: !4776, inlinedAt: !4777)
!5034 = !DILocation(line: 557, column: 2, scope: !4776, inlinedAt: !4777)
!5035 = !DILocation(line: 558, column: 1, scope: !4776, inlinedAt: !4777)
!5036 = !DILocation(line: 664, column: 2, scope: !4765)
!5037 = distinct !DISubprogram(name: "bcm3510_readB", scope: !3, file: !3, line: 131, type: !5038, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!331, !4455, !296, !5040}
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!5041 = !DILocalVariable(name: "state", arg: 1, scope: !5037, file: !3, line: 131, type: !4455)
!5042 = !DILocation(line: 131, column: 48, scope: !5037)
!5043 = !DILocalVariable(name: "reg", arg: 2, scope: !5037, file: !3, line: 131, type: !296)
!5044 = !DILocation(line: 131, column: 58, scope: !5037)
!5045 = !DILocalVariable(name: "v", arg: 3, scope: !5037, file: !3, line: 131, type: !5040)
!5046 = !DILocation(line: 131, column: 87, scope: !5037)
!5047 = !DILocation(line: 133, column: 27, scope: !5037)
!5048 = !DILocation(line: 133, column: 33, scope: !5037)
!5049 = !DILocation(line: 133, column: 38, scope: !5037)
!5050 = !DILocation(line: 133, column: 41, scope: !5037)
!5051 = !DILocation(line: 133, column: 9, scope: !5037)
!5052 = !DILocation(line: 133, column: 2, scope: !5037)
!5053 = distinct !DISubprogram(name: "bcm3510_reset", scope: !3, file: !3, line: 679, type: !5054, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!331, !4455}
!5056 = !DILocalVariable(name: "st", arg: 1, scope: !5053, file: !3, line: 679, type: !4455)
!5057 = !DILocation(line: 679, column: 48, scope: !5053)
!5058 = !DILocalVariable(name: "ret", scope: !5053, file: !3, line: 681, type: !331)
!5059 = !DILocation(line: 681, column: 6, scope: !5053)
!5060 = !DILocalVariable(name: "t", scope: !5053, file: !3, line: 682, type: !612)
!5061 = !DILocation(line: 682, column: 17, scope: !5053)
!5062 = !DILocalVariable(name: "v", scope: !5053, file: !3, line: 683, type: !4573)
!5063 = !DILocation(line: 683, column: 25, scope: !5053)
!5064 = !DILocation(line: 685, column: 16, scope: !5053)
!5065 = !DILocation(line: 685, column: 2, scope: !5053)
!5066 = !DILocation(line: 685, column: 31, scope: !5053)
!5067 = !DILocation(line: 685, column: 40, scope: !5053)
!5068 = !DILocation(line: 685, column: 46, scope: !5053)
!5069 = !DILocation(line: 686, column: 28, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 686, column: 6)
!5071 = !DILocation(line: 686, column: 13, scope: !5070)
!5072 = !DILocation(line: 686, column: 11, scope: !5070)
!5073 = !DILocation(line: 686, column: 40, scope: !5070)
!5074 = !DILocation(line: 686, column: 6, scope: !5053)
!5075 = !DILocation(line: 687, column: 10, scope: !5070)
!5076 = !DILocation(line: 687, column: 3, scope: !5070)
!5077 = !DILocation(line: 689, column: 6, scope: !5053)
!5078 = !DILocation(line: 689, column: 14, scope: !5053)
!5079 = !DILocation(line: 689, column: 4, scope: !5053)
!5080 = !DILocation(line: 690, column: 2, scope: !5053)
!5081 = !DILocation(line: 690, column: 9, scope: !5053)
!5082 = !DILocation(line: 691, column: 3, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 690, column: 34)
!5084 = !DILocation(line: 692, column: 28, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 692, column: 7)
!5086 = !DILocation(line: 692, column: 14, scope: !5085)
!5087 = !DILocation(line: 692, column: 12, scope: !5085)
!5088 = !DILocation(line: 692, column: 41, scope: !5085)
!5089 = !DILocation(line: 692, column: 7, scope: !5083)
!5090 = !DILocation(line: 693, column: 11, scope: !5085)
!5091 = !DILocation(line: 693, column: 4, scope: !5085)
!5092 = !DILocation(line: 695, column: 9, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 695, column: 7)
!5094 = !DILocation(line: 695, column: 20, scope: !5093)
!5095 = !DILocation(line: 695, column: 7, scope: !5093)
!5096 = !DILocation(line: 695, column: 7, scope: !5083)
!5097 = !DILocation(line: 696, column: 4, scope: !5093)
!5098 = distinct !{!5098, !5080, !5099}
!5099 = !DILocation(line: 697, column: 2, scope: !5053)
!5100 = !DILocation(line: 698, column: 2, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 698, column: 2)
!5102 = !DILocation(line: 698, column: 2, scope: !5053)
!5103 = !DILocation(line: 699, column: 2, scope: !5053)
!5104 = !DILocation(line: 700, column: 1, scope: !5053)
!5105 = distinct !DISubprogram(name: "get_order", scope: !5106, file: !5106, line: 29, type: !5107, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5106 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!331, !612}
!5109 = !DILocalVariable(name: "x", arg: 1, scope: !5110, file: !5111, line: 366, type: !538)
!5110 = distinct !DISubprogram(name: "fls64", scope: !5111, file: !5111, line: 366, type: !5112, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5111 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!331, !538}
!5114 = !DILocation(line: 366, column: 40, scope: !5110, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 46, column: 9, scope: !5105)
!5116 = !DILocalVariable(name: "bitpos", scope: !5110, file: !5111, line: 368, type: !331)
!5117 = !DILocation(line: 368, column: 6, scope: !5110, inlinedAt: !5115)
!5118 = !DILocalVariable(name: "size", arg: 1, scope: !5105, file: !5106, line: 29, type: !612)
!5119 = !DILocation(line: 29, column: 63, scope: !5105)
!5120 = !DILocation(line: 31, column: 27, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5105, file: !5106, line: 31, column: 6)
!5122 = !DILocation(line: 31, column: 6, scope: !5121)
!5123 = !DILocation(line: 31, column: 6, scope: !5105)
!5124 = !DILocation(line: 32, column: 8, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !5106, line: 32, column: 7)
!5126 = distinct !DILexicalBlock(scope: !5121, file: !5106, line: 31, column: 34)
!5127 = !DILocation(line: 32, column: 7, scope: !5126)
!5128 = !DILocation(line: 33, column: 4, scope: !5125)
!5129 = !DILocation(line: 35, column: 7, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5126, file: !5106, line: 35, column: 7)
!5131 = !DILocation(line: 35, column: 12, scope: !5130)
!5132 = !DILocation(line: 35, column: 7, scope: !5126)
!5133 = !DILocation(line: 36, column: 4, scope: !5130)
!5134 = !DILocation(line: 38, column: 10, scope: !5126)
!5135 = !DILocation(line: 38, column: 28, scope: !5126)
!5136 = !DILocation(line: 38, column: 41, scope: !5126)
!5137 = !DILocation(line: 38, column: 3, scope: !5126)
!5138 = !DILocation(line: 41, column: 6, scope: !5105)
!5139 = !DILocation(line: 42, column: 7, scope: !5105)
!5140 = !DILocation(line: 46, column: 15, scope: !5105)
!5141 = !DILocation(line: 374, column: 2, scope: !5110, inlinedAt: !5115)
!5142 = !DILocation(line: 376, column: 14, scope: !5110, inlinedAt: !5115)
!5143 = !{i32 329290}
!5144 = !DILocation(line: 377, column: 9, scope: !5110, inlinedAt: !5115)
!5145 = !DILocation(line: 377, column: 16, scope: !5110, inlinedAt: !5115)
!5146 = !DILocation(line: 46, column: 2, scope: !5105)
!5147 = !DILocation(line: 48, column: 1, scope: !5105)
!5148 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5149, file: !5149, line: 30, type: !5150, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5149 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!331, !653}
!5152 = !DILocation(line: 366, column: 40, scope: !5110, inlinedAt: !5153)
!5153 = distinct !DILocation(line: 32, column: 9, scope: !5148)
!5154 = !DILocation(line: 368, column: 6, scope: !5110, inlinedAt: !5153)
!5155 = !DILocalVariable(name: "n", arg: 1, scope: !5148, file: !5149, line: 30, type: !653)
!5156 = !DILocation(line: 30, column: 21, scope: !5148)
!5157 = !DILocation(line: 32, column: 15, scope: !5148)
!5158 = !DILocation(line: 374, column: 2, scope: !5110, inlinedAt: !5153)
!5159 = !DILocation(line: 376, column: 14, scope: !5110, inlinedAt: !5153)
!5160 = !DILocation(line: 377, column: 9, scope: !5110, inlinedAt: !5153)
!5161 = !DILocation(line: 377, column: 16, scope: !5110, inlinedAt: !5153)
!5162 = !DILocation(line: 32, column: 18, scope: !5148)
!5163 = !DILocation(line: 32, column: 2, scope: !5148)
!5164 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5165, file: !5165, line: 137, type: !5166, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5165 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!293, !1404, !2507, !812, !291}
!5168 = !DILocalVariable(name: "s", arg: 1, scope: !5164, file: !5165, line: 137, type: !1404)
!5169 = !DILocation(line: 137, column: 54, scope: !5164)
!5170 = !DILocalVariable(name: "object", arg: 2, scope: !5164, file: !5165, line: 137, type: !2507)
!5171 = !DILocation(line: 137, column: 69, scope: !5164)
!5172 = !DILocalVariable(name: "size", arg: 3, scope: !5164, file: !5165, line: 138, type: !812)
!5173 = !DILocation(line: 138, column: 12, scope: !5164)
!5174 = !DILocalVariable(name: "flags", arg: 4, scope: !5164, file: !5165, line: 138, type: !291)
!5175 = !DILocation(line: 138, column: 24, scope: !5164)
!5176 = !DILocation(line: 140, column: 17, scope: !5164)
!5177 = !DILocation(line: 140, column: 2, scope: !5164)
!5178 = distinct !DISubprogram(name: "bcm3510_readbytes", scope: !3, file: !3, line: 104, type: !5179, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!331, !4455, !296, !295, !296}
!5181 = !DILocalVariable(name: "state", arg: 1, scope: !5178, file: !3, line: 104, type: !4455)
!5182 = !DILocation(line: 104, column: 53, scope: !5178)
!5183 = !DILocalVariable(name: "reg", arg: 2, scope: !5178, file: !3, line: 104, type: !296)
!5184 = !DILocation(line: 104, column: 63, scope: !5178)
!5185 = !DILocalVariable(name: "buf", arg: 3, scope: !5178, file: !3, line: 104, type: !295)
!5186 = !DILocation(line: 104, column: 72, scope: !5178)
!5187 = !DILocalVariable(name: "len", arg: 4, scope: !5178, file: !3, line: 104, type: !296)
!5188 = !DILocation(line: 104, column: 80, scope: !5178)
!5189 = !DILocalVariable(name: "msg", scope: !5178, file: !3, line: 106, type: !5190)
!5190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4313, size: 256, elements: !1949)
!5191 = !DILocation(line: 106, column: 17, scope: !5178)
!5192 = !DILocation(line: 106, column: 25, scope: !5178)
!5193 = !DILocation(line: 107, column: 3, scope: !5178)
!5194 = !DILocation(line: 107, column: 13, scope: !5178)
!5195 = !DILocation(line: 107, column: 20, scope: !5178)
!5196 = !DILocation(line: 107, column: 28, scope: !5178)
!5197 = !DILocation(line: 108, column: 3, scope: !5178)
!5198 = !DILocation(line: 108, column: 13, scope: !5178)
!5199 = !DILocation(line: 108, column: 20, scope: !5178)
!5200 = !DILocation(line: 108, column: 28, scope: !5178)
!5201 = !DILocation(line: 108, column: 82, scope: !5178)
!5202 = !DILocation(line: 108, column: 69, scope: !5178)
!5203 = !DILocalVariable(name: "err", scope: !5178, file: !3, line: 110, type: !331)
!5204 = !DILocation(line: 110, column: 6, scope: !5178)
!5205 = !DILocation(line: 112, column: 9, scope: !5178)
!5206 = !DILocation(line: 112, column: 15, scope: !5178)
!5207 = !DILocation(line: 112, column: 2, scope: !5178)
!5208 = !DILocation(line: 114, column: 27, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 114, column: 6)
!5210 = !DILocation(line: 114, column: 34, scope: !5209)
!5211 = !DILocation(line: 114, column: 39, scope: !5209)
!5212 = !DILocation(line: 114, column: 13, scope: !5209)
!5213 = !DILocation(line: 114, column: 11, scope: !5209)
!5214 = !DILocation(line: 114, column: 48, scope: !5209)
!5215 = !DILocation(line: 114, column: 6, scope: !5178)
!5216 = !DILocation(line: 115, column: 3, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 115, column: 3)
!5218 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 114, column: 54)
!5219 = !DILocation(line: 115, column: 3, scope: !5218)
!5220 = !DILocation(line: 117, column: 3, scope: !5218)
!5221 = !DILocation(line: 119, column: 2, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 119, column: 2)
!5223 = !DILocation(line: 119, column: 2, scope: !5178)
!5224 = !DILocalVariable(name: "i", scope: !5225, file: !3, line: 120, type: !331)
!5225 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 120, column: 2)
!5226 = !DILocation(line: 120, column: 2, scope: !5225)
!5227 = !DILocation(line: 120, column: 2, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 120, column: 2)
!5229 = !DILocation(line: 120, column: 2, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 120, column: 2)
!5231 = !DILocation(line: 120, column: 2, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 120, column: 2)
!5233 = distinct !{!5233, !5227, !5227}
!5234 = !DILocation(line: 121, column: 2, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 121, column: 2)
!5236 = !DILocation(line: 121, column: 2, scope: !5178)
!5237 = !DILocation(line: 123, column: 2, scope: !5178)
!5238 = !DILocation(line: 124, column: 1, scope: !5178)
!5239 = distinct !DISubprogram(name: "bcm3510_writeB", scope: !3, file: !3, line: 126, type: !5240, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!331, !4455, !296, !4573}
!5242 = !DILocalVariable(name: "state", arg: 1, scope: !5239, file: !3, line: 126, type: !4455)
!5243 = !DILocation(line: 126, column: 49, scope: !5239)
!5244 = !DILocalVariable(name: "reg", arg: 2, scope: !5239, file: !3, line: 126, type: !296)
!5245 = !DILocation(line: 126, column: 59, scope: !5239)
!5246 = !DILocalVariable(name: "v", arg: 3, scope: !5239, file: !3, line: 126, type: !4573)
!5247 = !DILocation(line: 126, column: 87, scope: !5239)
!5248 = !DILocation(line: 128, column: 28, scope: !5239)
!5249 = !DILocation(line: 128, column: 34, scope: !5239)
!5250 = !DILocation(line: 128, column: 41, scope: !5239)
!5251 = !DILocation(line: 128, column: 9, scope: !5239)
!5252 = !DILocation(line: 128, column: 2, scope: !5239)
!5253 = distinct !DISubprogram(name: "bcm3510_writebytes", scope: !3, file: !3, line: 81, type: !5179, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5254 = !DILocalVariable(name: "state", arg: 1, scope: !5253, file: !3, line: 81, type: !4455)
!5255 = !DILocation(line: 81, column: 54, scope: !5253)
!5256 = !DILocalVariable(name: "reg", arg: 2, scope: !5253, file: !3, line: 81, type: !296)
!5257 = !DILocation(line: 81, column: 64, scope: !5253)
!5258 = !DILocalVariable(name: "buf", arg: 3, scope: !5253, file: !3, line: 81, type: !295)
!5259 = !DILocation(line: 81, column: 73, scope: !5253)
!5260 = !DILocalVariable(name: "len", arg: 4, scope: !5253, file: !3, line: 81, type: !296)
!5261 = !DILocation(line: 81, column: 81, scope: !5253)
!5262 = !DILocalVariable(name: "b", scope: !5253, file: !3, line: 83, type: !5263)
!5263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 2048, elements: !5264)
!5264 = !{!5265}
!5265 = !DISubrange(count: 256)
!5266 = !DILocation(line: 83, column: 5, scope: !5253)
!5267 = !DILocalVariable(name: "err", scope: !5253, file: !3, line: 84, type: !331)
!5268 = !DILocation(line: 84, column: 6, scope: !5253)
!5269 = !DILocalVariable(name: "msg", scope: !5253, file: !3, line: 85, type: !4313)
!5270 = !DILocation(line: 85, column: 17, scope: !5253)
!5271 = !DILocation(line: 85, column: 23, scope: !5253)
!5272 = !DILocation(line: 85, column: 33, scope: !5253)
!5273 = !DILocation(line: 85, column: 40, scope: !5253)
!5274 = !DILocation(line: 85, column: 48, scope: !5253)
!5275 = !DILocation(line: 85, column: 92, scope: !5253)
!5276 = !DILocation(line: 85, column: 96, scope: !5253)
!5277 = !DILocation(line: 85, column: 82, scope: !5253)
!5278 = !DILocation(line: 87, column: 9, scope: !5253)
!5279 = !DILocation(line: 87, column: 2, scope: !5253)
!5280 = !DILocation(line: 87, column: 7, scope: !5253)
!5281 = !DILocation(line: 88, column: 10, scope: !5253)
!5282 = !DILocation(line: 88, column: 15, scope: !5253)
!5283 = !DILocation(line: 88, column: 19, scope: !5253)
!5284 = !DILocation(line: 88, column: 2, scope: !5253)
!5285 = !DILocation(line: 90, column: 2, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 90, column: 2)
!5287 = !DILocation(line: 90, column: 2, scope: !5253)
!5288 = !DILocalVariable(name: "i", scope: !5289, file: !3, line: 91, type: !331)
!5289 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 91, column: 2)
!5290 = !DILocation(line: 91, column: 2, scope: !5289)
!5291 = !DILocation(line: 91, column: 2, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 91, column: 2)
!5293 = !DILocation(line: 91, column: 2, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 91, column: 2)
!5295 = !DILocation(line: 91, column: 2, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 91, column: 2)
!5297 = distinct !{!5297, !5291, !5291}
!5298 = !DILocation(line: 92, column: 2, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 92, column: 2)
!5300 = !DILocation(line: 92, column: 2, scope: !5253)
!5301 = !DILocation(line: 94, column: 27, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 94, column: 6)
!5303 = !DILocation(line: 94, column: 34, scope: !5302)
!5304 = !DILocation(line: 94, column: 13, scope: !5302)
!5305 = !DILocation(line: 94, column: 11, scope: !5302)
!5306 = !DILocation(line: 94, column: 49, scope: !5302)
!5307 = !DILocation(line: 94, column: 6, scope: !5253)
!5308 = !DILocation(line: 96, column: 3, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 96, column: 3)
!5310 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 94, column: 55)
!5311 = !DILocation(line: 96, column: 3, scope: !5310)
!5312 = !DILocation(line: 98, column: 3, scope: !5310)
!5313 = !DILocation(line: 101, column: 2, scope: !5253)
!5314 = !DILocation(line: 102, column: 1, scope: !5253)
!5315 = distinct !DISubprogram(name: "bcm3510_release", scope: !3, file: !3, line: 598, type: !430, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5316 = !DILocalVariable(name: "fe", arg: 1, scope: !5315, file: !3, line: 598, type: !387)
!5317 = !DILocation(line: 598, column: 50, scope: !5315)
!5318 = !DILocalVariable(name: "state", scope: !5315, file: !3, line: 600, type: !4455)
!5319 = !DILocation(line: 600, column: 24, scope: !5315)
!5320 = !DILocation(line: 600, column: 32, scope: !5315)
!5321 = !DILocation(line: 600, column: 36, scope: !5315)
!5322 = !DILocation(line: 601, column: 8, scope: !5315)
!5323 = !DILocation(line: 601, column: 2, scope: !5315)
!5324 = !DILocation(line: 602, column: 1, scope: !5315)
!5325 = distinct !DISubprogram(name: "bcm3510_init", scope: !3, file: !3, line: 759, type: !436, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5326 = !DILocalVariable(name: "fe", arg: 1, scope: !5325, file: !3, line: 759, type: !387)
!5327 = !DILocation(line: 759, column: 46, scope: !5325)
!5328 = !DILocalVariable(name: "st", scope: !5325, file: !3, line: 761, type: !4455)
!5329 = !DILocation(line: 761, column: 24, scope: !5325)
!5330 = !DILocation(line: 761, column: 29, scope: !5325)
!5331 = !DILocation(line: 761, column: 33, scope: !5325)
!5332 = !DILocalVariable(name: "j", scope: !5325, file: !3, line: 762, type: !4573)
!5333 = !DILocation(line: 762, column: 25, scope: !5325)
!5334 = !DILocalVariable(name: "c", scope: !5325, file: !3, line: 763, type: !5335)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_hab_cmd_set_agc", file: !4467, line: 276, size: 8, elements: !5336)
!5336 = !{!5337, !5338, !5339}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "LVL", scope: !5335, file: !4467, line: 277, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !5335, file: !4467, line: 278, baseType: !296, size: 6, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "SEL", scope: !5335, file: !4467, line: 279, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5340 = !DILocation(line: 763, column: 33, scope: !5325)
!5341 = !DILocalVariable(name: "ret", scope: !5325, file: !3, line: 764, type: !331)
!5342 = !DILocation(line: 764, column: 6, scope: !5325)
!5343 = !DILocation(line: 766, column: 27, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 766, column: 6)
!5345 = !DILocation(line: 766, column: 13, scope: !5344)
!5346 = !DILocation(line: 766, column: 11, scope: !5344)
!5347 = !DILocation(line: 766, column: 40, scope: !5344)
!5348 = !DILocation(line: 766, column: 6, scope: !5325)
!5349 = !DILocation(line: 767, column: 10, scope: !5344)
!5350 = !DILocation(line: 767, column: 3, scope: !5344)
!5351 = !DILocation(line: 769, column: 2, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 769, column: 2)
!5353 = !DILocation(line: 769, column: 2, scope: !5325)
!5354 = !DILocation(line: 771, column: 12, scope: !5325)
!5355 = !DILocation(line: 771, column: 20, scope: !5325)
!5356 = !DILocation(line: 771, column: 10, scope: !5325)
!5357 = !DILocation(line: 771, column: 2, scope: !5325)
!5358 = !DILocation(line: 773, column: 4, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 773, column: 4)
!5360 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 771, column: 26)
!5361 = !DILocation(line: 773, column: 4, scope: !5360)
!5362 = !DILocation(line: 774, column: 33, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 774, column: 8)
!5364 = !DILocation(line: 774, column: 15, scope: !5363)
!5365 = !DILocation(line: 774, column: 13, scope: !5363)
!5366 = !DILocation(line: 774, column: 38, scope: !5363)
!5367 = !DILocation(line: 774, column: 8, scope: !5360)
!5368 = !DILocation(line: 775, column: 12, scope: !5363)
!5369 = !DILocation(line: 775, column: 5, scope: !5363)
!5370 = !DILocation(line: 774, column: 40, scope: !5363)
!5371 = !DILocation(line: 778, column: 4, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 778, column: 4)
!5373 = !DILocation(line: 778, column: 4, scope: !5360)
!5374 = !DILocation(line: 779, column: 35, scope: !5360)
!5375 = !DILocation(line: 779, column: 4, scope: !5360)
!5376 = !DILocation(line: 780, column: 4, scope: !5360)
!5377 = !DILocation(line: 782, column: 4, scope: !5360)
!5378 = !DILocation(line: 785, column: 2, scope: !5325)
!5379 = !DILocation(line: 786, column: 4, scope: !5325)
!5380 = !DILocation(line: 786, column: 8, scope: !5325)
!5381 = !DILocation(line: 787, column: 21, scope: !5325)
!5382 = !DILocation(line: 787, column: 60, scope: !5325)
!5383 = !DILocation(line: 787, column: 2, scope: !5325)
!5384 = !DILocation(line: 789, column: 2, scope: !5325)
!5385 = !DILocation(line: 790, column: 1, scope: !5325)
!5386 = distinct !DISubprogram(name: "bcm3510_sleep", scope: !3, file: !3, line: 585, type: !436, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5387 = !DILocalVariable(name: "fe", arg: 1, scope: !5386, file: !3, line: 585, type: !387)
!5388 = !DILocation(line: 585, column: 47, scope: !5386)
!5389 = !DILocation(line: 587, column: 2, scope: !5386)
!5390 = distinct !DISubprogram(name: "bcm3510_set_frontend", scope: !3, file: !3, line: 495, type: !436, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5391 = !DILocalVariable(name: "fe", arg: 1, scope: !5390, file: !3, line: 495, type: !387)
!5392 = !DILocation(line: 495, column: 54, scope: !5390)
!5393 = !DILocalVariable(name: "c", scope: !5390, file: !3, line: 497, type: !471)
!5394 = !DILocation(line: 497, column: 34, scope: !5390)
!5395 = !DILocation(line: 497, column: 39, scope: !5390)
!5396 = !DILocation(line: 497, column: 43, scope: !5390)
!5397 = !DILocalVariable(name: "st", scope: !5390, file: !3, line: 498, type: !4455)
!5398 = !DILocation(line: 498, column: 24, scope: !5390)
!5399 = !DILocation(line: 498, column: 29, scope: !5390)
!5400 = !DILocation(line: 498, column: 33, scope: !5390)
!5401 = !DILocalVariable(name: "cmd", scope: !5390, file: !3, line: 499, type: !5402)
!5402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_hab_cmd_ext_acquire", file: !4467, line: 174, size: 64, elements: !5403)
!5403 = !{!5404, !5412, !5419, !5420, !5421, !5422, !5423, !5424}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "ACQUIRE0", scope: !5402, file: !4467, line: 181, baseType: !5405, size: 8)
!5405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5402, file: !4467, line: 175, size: 8, elements: !5406)
!5406 = !{!5407, !5408, !5409, !5410, !5411}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "MODE", scope: !5405, file: !4467, line: 176, baseType: !296, size: 4, flags: DIFlagBitField, extraData: i64 0)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "BW", scope: !5405, file: !4467, line: 177, baseType: !296, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "FA", scope: !5405, file: !4467, line: 178, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "NTSCSWEEP", scope: !5405, file: !4467, line: 179, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "OFFSET", scope: !5405, file: !4467, line: 180, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "ACQUIRE1", scope: !5402, file: !4467, line: 188, baseType: !5413, size: 8, offset: 8)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5402, file: !4467, line: 183, size: 8, elements: !5414)
!5414 = !{!5415, !5416, !5417, !5418}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "IF_FREQ", scope: !5413, file: !4467, line: 184, baseType: !296, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "zero0", scope: !5413, file: !4467, line: 185, baseType: !296, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_RATE", scope: !5413, file: !4467, line: 186, baseType: !296, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "zero1", scope: !5413, file: !4467, line: 187, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "IF_OFFSET0", scope: !5402, file: !4467, line: 190, baseType: !296, size: 8, offset: 16)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "IF_OFFSET1", scope: !5402, file: !4467, line: 191, baseType: !296, size: 8, offset: 24)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_OFFSET0", scope: !5402, file: !4467, line: 192, baseType: !296, size: 8, offset: 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "SYM_OFFSET1", scope: !5402, file: !4467, line: 193, baseType: !296, size: 8, offset: 40)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_OFFSET0", scope: !5402, file: !4467, line: 194, baseType: !296, size: 8, offset: 48)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "NTSC_OFFSET1", scope: !5402, file: !4467, line: 195, baseType: !296, size: 8, offset: 56)
!5425 = !DILocation(line: 499, column: 37, scope: !5390)
!5426 = !DILocalVariable(name: "bert", scope: !5390, file: !3, line: 500, type: !5427)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_hab_cmd_bert_control", file: !4467, line: 293, size: 8, elements: !5428)
!5428 = !{!5429, !5430}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "BE", scope: !5427, file: !4467, line: 294, baseType: !296, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !5427, file: !4467, line: 295, baseType: !296, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5431 = !DILocation(line: 500, column: 38, scope: !5390)
!5432 = !DILocalVariable(name: "ret", scope: !5390, file: !3, line: 501, type: !331)
!5433 = !DILocation(line: 501, column: 6, scope: !5390)
!5434 = !DILocation(line: 503, column: 2, scope: !5390)
!5435 = !DILocation(line: 504, column: 10, scope: !5390)
!5436 = !DILocation(line: 504, column: 13, scope: !5390)
!5437 = !DILocation(line: 504, column: 2, scope: !5390)
!5438 = !DILocation(line: 506, column: 8, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 504, column: 25)
!5440 = !DILocation(line: 506, column: 17, scope: !5439)
!5441 = !DILocation(line: 506, column: 22, scope: !5439)
!5442 = !DILocation(line: 507, column: 8, scope: !5439)
!5443 = !DILocation(line: 507, column: 17, scope: !5439)
!5444 = !DILocation(line: 507, column: 26, scope: !5439)
!5445 = !DILocation(line: 508, column: 8, scope: !5439)
!5446 = !DILocation(line: 508, column: 17, scope: !5439)
!5447 = !DILocation(line: 508, column: 25, scope: !5439)
!5448 = !DILocation(line: 509, column: 4, scope: !5439)
!5449 = !DILocation(line: 511, column: 8, scope: !5439)
!5450 = !DILocation(line: 511, column: 17, scope: !5439)
!5451 = !DILocation(line: 511, column: 22, scope: !5439)
!5452 = !DILocation(line: 512, column: 8, scope: !5439)
!5453 = !DILocation(line: 512, column: 17, scope: !5439)
!5454 = !DILocation(line: 512, column: 26, scope: !5439)
!5455 = !DILocation(line: 513, column: 8, scope: !5439)
!5456 = !DILocation(line: 513, column: 17, scope: !5439)
!5457 = !DILocation(line: 513, column: 25, scope: !5439)
!5458 = !DILocation(line: 514, column: 4, scope: !5439)
!5459 = !DILocation(line: 533, column: 8, scope: !5439)
!5460 = !DILocation(line: 533, column: 17, scope: !5439)
!5461 = !DILocation(line: 533, column: 22, scope: !5439)
!5462 = !DILocation(line: 534, column: 8, scope: !5439)
!5463 = !DILocation(line: 534, column: 17, scope: !5439)
!5464 = !DILocation(line: 534, column: 26, scope: !5439)
!5465 = !DILocation(line: 535, column: 8, scope: !5439)
!5466 = !DILocation(line: 535, column: 17, scope: !5439)
!5467 = !DILocation(line: 535, column: 25, scope: !5439)
!5468 = !DILocation(line: 536, column: 4, scope: !5439)
!5469 = !DILocation(line: 538, column: 8, scope: !5439)
!5470 = !DILocation(line: 538, column: 17, scope: !5439)
!5471 = !DILocation(line: 538, column: 22, scope: !5439)
!5472 = !DILocation(line: 539, column: 8, scope: !5439)
!5473 = !DILocation(line: 539, column: 17, scope: !5439)
!5474 = !DILocation(line: 539, column: 26, scope: !5439)
!5475 = !DILocation(line: 540, column: 8, scope: !5439)
!5476 = !DILocation(line: 540, column: 17, scope: !5439)
!5477 = !DILocation(line: 540, column: 25, scope: !5439)
!5478 = !DILocation(line: 541, column: 4, scope: !5439)
!5479 = !DILocation(line: 543, column: 4, scope: !5439)
!5480 = !DILocation(line: 545, column: 6, scope: !5390)
!5481 = !DILocation(line: 545, column: 15, scope: !5390)
!5482 = !DILocation(line: 545, column: 22, scope: !5390)
!5483 = !DILocation(line: 546, column: 6, scope: !5390)
!5484 = !DILocation(line: 546, column: 15, scope: !5390)
!5485 = !DILocation(line: 546, column: 25, scope: !5390)
!5486 = !DILocation(line: 547, column: 6, scope: !5390)
!5487 = !DILocation(line: 547, column: 15, scope: !5390)
!5488 = !DILocation(line: 547, column: 18, scope: !5390)
!5489 = !DILocation(line: 548, column: 6, scope: !5390)
!5490 = !DILocation(line: 548, column: 15, scope: !5390)
!5491 = !DILocation(line: 548, column: 18, scope: !5390)
!5492 = !DILocation(line: 561, column: 21, scope: !5390)
!5493 = !DILocation(line: 561, column: 63, scope: !5390)
!5494 = !DILocation(line: 561, column: 2, scope: !5390)
!5495 = !DILocation(line: 564, column: 7, scope: !5390)
!5496 = !DILocation(line: 564, column: 10, scope: !5390)
!5497 = !DILocation(line: 565, column: 7, scope: !5390)
!5498 = !DILocation(line: 565, column: 14, scope: !5390)
!5499 = !DILocation(line: 566, column: 21, scope: !5390)
!5500 = !DILocation(line: 566, column: 64, scope: !5390)
!5501 = !DILocation(line: 566, column: 2, scope: !5390)
!5502 = !DILocation(line: 567, column: 21, scope: !5390)
!5503 = !DILocation(line: 567, column: 60, scope: !5390)
!5504 = !DILocation(line: 567, column: 2, scope: !5390)
!5505 = !DILocation(line: 569, column: 21, scope: !5390)
!5506 = !DILocation(line: 569, column: 2, scope: !5390)
!5507 = !DILocation(line: 571, column: 25, scope: !5390)
!5508 = !DILocation(line: 571, column: 29, scope: !5390)
!5509 = !DILocation(line: 571, column: 32, scope: !5390)
!5510 = !DILocation(line: 571, column: 8, scope: !5390)
!5511 = !DILocation(line: 571, column: 6, scope: !5390)
!5512 = !DILocation(line: 572, column: 6, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 572, column: 6)
!5514 = !DILocation(line: 572, column: 10, scope: !5513)
!5515 = !DILocation(line: 572, column: 6, scope: !5390)
!5516 = !DILocation(line: 573, column: 10, scope: !5513)
!5517 = !DILocation(line: 573, column: 3, scope: !5513)
!5518 = !DILocation(line: 575, column: 10, scope: !5390)
!5519 = !DILocation(line: 575, column: 14, scope: !5390)
!5520 = !DILocation(line: 575, column: 2, scope: !5390)
!5521 = !DILocation(line: 576, column: 10, scope: !5390)
!5522 = !DILocation(line: 576, column: 14, scope: !5390)
!5523 = !DILocation(line: 576, column: 2, scope: !5390)
!5524 = !DILocation(line: 577, column: 2, scope: !5390)
!5525 = !DILocation(line: 577, column: 6, scope: !5390)
!5526 = !DILocation(line: 577, column: 28, scope: !5390)
!5527 = !DILocation(line: 580, column: 2, scope: !5390)
!5528 = !DILocation(line: 582, column: 2, scope: !5390)
!5529 = !DILocation(line: 583, column: 1, scope: !5390)
!5530 = distinct !DISubprogram(name: "bcm3510_get_tune_settings", scope: !3, file: !3, line: 590, type: !459, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5531 = !DILocalVariable(name: "fe", arg: 1, scope: !5530, file: !3, line: 590, type: !387)
!5532 = !DILocation(line: 590, column: 59, scope: !5530)
!5533 = !DILocalVariable(name: "s", arg: 2, scope: !5530, file: !3, line: 590, type: !461)
!5534 = !DILocation(line: 590, column: 98, scope: !5530)
!5535 = !DILocation(line: 592, column: 2, scope: !5530)
!5536 = !DILocation(line: 592, column: 5, scope: !5530)
!5537 = !DILocation(line: 592, column: 18, scope: !5530)
!5538 = !DILocation(line: 593, column: 2, scope: !5530)
!5539 = !DILocation(line: 593, column: 5, scope: !5530)
!5540 = !DILocation(line: 593, column: 15, scope: !5530)
!5541 = !DILocation(line: 594, column: 2, scope: !5530)
!5542 = !DILocation(line: 594, column: 5, scope: !5530)
!5543 = !DILocation(line: 594, column: 15, scope: !5530)
!5544 = !DILocation(line: 595, column: 2, scope: !5530)
!5545 = distinct !DISubprogram(name: "bcm3510_read_status", scope: !3, file: !3, line: 292, type: !554, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5546 = !DILocalVariable(name: "fe", arg: 1, scope: !5545, file: !3, line: 292, type: !387)
!5547 = !DILocation(line: 292, column: 53, scope: !5545)
!5548 = !DILocalVariable(name: "status", arg: 2, scope: !5545, file: !3, line: 292, type: !451)
!5549 = !DILocation(line: 292, column: 73, scope: !5545)
!5550 = !DILocalVariable(name: "st", scope: !5545, file: !3, line: 294, type: !4455)
!5551 = !DILocation(line: 294, column: 24, scope: !5545)
!5552 = !DILocation(line: 294, column: 29, scope: !5545)
!5553 = !DILocation(line: 294, column: 33, scope: !5545)
!5554 = !DILocation(line: 295, column: 24, scope: !5545)
!5555 = !DILocation(line: 295, column: 2, scope: !5545)
!5556 = !DILocation(line: 297, column: 3, scope: !5545)
!5557 = !DILocation(line: 297, column: 10, scope: !5545)
!5558 = !DILocation(line: 298, column: 6, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 298, column: 6)
!5560 = !DILocation(line: 298, column: 10, scope: !5559)
!5561 = !DILocation(line: 298, column: 18, scope: !5559)
!5562 = !DILocation(line: 298, column: 26, scope: !5559)
!5563 = !DILocation(line: 298, column: 6, scope: !5545)
!5564 = !DILocation(line: 299, column: 4, scope: !5559)
!5565 = !DILocation(line: 299, column: 11, scope: !5559)
!5566 = !DILocation(line: 299, column: 3, scope: !5559)
!5567 = !DILocation(line: 301, column: 6, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 301, column: 6)
!5569 = !DILocation(line: 301, column: 10, scope: !5568)
!5570 = !DILocation(line: 301, column: 18, scope: !5568)
!5571 = !DILocation(line: 301, column: 26, scope: !5568)
!5572 = !DILocation(line: 301, column: 6, scope: !5545)
!5573 = !DILocation(line: 302, column: 4, scope: !5568)
!5574 = !DILocation(line: 302, column: 11, scope: !5568)
!5575 = !DILocation(line: 302, column: 3, scope: !5568)
!5576 = !DILocation(line: 304, column: 6, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 304, column: 6)
!5578 = !DILocation(line: 304, column: 10, scope: !5577)
!5579 = !DILocation(line: 304, column: 18, scope: !5577)
!5580 = !DILocation(line: 304, column: 26, scope: !5577)
!5581 = !DILocation(line: 304, column: 6, scope: !5545)
!5582 = !DILocation(line: 305, column: 4, scope: !5577)
!5583 = !DILocation(line: 305, column: 11, scope: !5577)
!5584 = !DILocation(line: 305, column: 3, scope: !5577)
!5585 = !DILocation(line: 307, column: 7, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 307, column: 6)
!5587 = !DILocation(line: 307, column: 6, scope: !5586)
!5588 = !DILocation(line: 307, column: 14, scope: !5586)
!5589 = !DILocation(line: 307, column: 6, scope: !5545)
!5590 = !DILocation(line: 308, column: 3, scope: !5586)
!5591 = !DILocation(line: 308, column: 7, scope: !5586)
!5592 = !DILocation(line: 308, column: 29, scope: !5586)
!5593 = !DILocation(line: 310, column: 3, scope: !5586)
!5594 = !DILocation(line: 310, column: 7, scope: !5586)
!5595 = !DILocation(line: 310, column: 29, scope: !5586)
!5596 = !DILocation(line: 312, column: 2, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 312, column: 2)
!5598 = !DILocation(line: 312, column: 2, scope: !5545)
!5599 = !DILocation(line: 313, column: 2, scope: !5545)
!5600 = distinct !DISubprogram(name: "bcm3510_read_ber", scope: !3, file: !3, line: 316, type: !558, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5601 = !DILocalVariable(name: "fe", arg: 1, scope: !5600, file: !3, line: 316, type: !387)
!5602 = !DILocation(line: 316, column: 50, scope: !5600)
!5603 = !DILocalVariable(name: "ber", arg: 2, scope: !5600, file: !3, line: 316, type: !560)
!5604 = !DILocation(line: 316, column: 59, scope: !5600)
!5605 = !DILocalVariable(name: "st", scope: !5600, file: !3, line: 318, type: !4455)
!5606 = !DILocation(line: 318, column: 24, scope: !5600)
!5607 = !DILocation(line: 318, column: 29, scope: !5600)
!5608 = !DILocation(line: 318, column: 33, scope: !5600)
!5609 = !DILocation(line: 319, column: 24, scope: !5600)
!5610 = !DILocation(line: 319, column: 2, scope: !5600)
!5611 = !DILocation(line: 321, column: 10, scope: !5600)
!5612 = !DILocation(line: 321, column: 14, scope: !5600)
!5613 = !DILocation(line: 321, column: 22, scope: !5600)
!5614 = !DILocation(line: 321, column: 29, scope: !5600)
!5615 = !DILocation(line: 321, column: 39, scope: !5600)
!5616 = !DILocation(line: 321, column: 43, scope: !5600)
!5617 = !DILocation(line: 321, column: 51, scope: !5600)
!5618 = !DILocation(line: 321, column: 58, scope: !5600)
!5619 = !DILocation(line: 321, column: 36, scope: !5600)
!5620 = !DILocation(line: 321, column: 66, scope: !5600)
!5621 = !DILocation(line: 321, column: 70, scope: !5600)
!5622 = !DILocation(line: 321, column: 78, scope: !5600)
!5623 = !DILocation(line: 321, column: 64, scope: !5600)
!5624 = !DILocation(line: 321, column: 3, scope: !5600)
!5625 = !DILocation(line: 321, column: 7, scope: !5600)
!5626 = !DILocation(line: 322, column: 2, scope: !5600)
!5627 = distinct !DISubprogram(name: "bcm3510_read_signal_strength", scope: !3, file: !3, line: 333, type: !563, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5628 = !DILocalVariable(name: "fe", arg: 1, scope: !5627, file: !3, line: 333, type: !387)
!5629 = !DILocation(line: 333, column: 62, scope: !5627)
!5630 = !DILocalVariable(name: "strength", arg: 2, scope: !5627, file: !3, line: 333, type: !565)
!5631 = !DILocation(line: 333, column: 71, scope: !5627)
!5632 = !DILocalVariable(name: "st", scope: !5627, file: !3, line: 335, type: !4455)
!5633 = !DILocation(line: 335, column: 24, scope: !5627)
!5634 = !DILocation(line: 335, column: 29, scope: !5627)
!5635 = !DILocation(line: 335, column: 33, scope: !5627)
!5636 = !DILocalVariable(name: "t", scope: !5627, file: !3, line: 336, type: !668)
!5637 = !DILocation(line: 336, column: 6, scope: !5627)
!5638 = !DILocation(line: 338, column: 24, scope: !5627)
!5639 = !DILocation(line: 338, column: 2, scope: !5627)
!5640 = !DILocation(line: 339, column: 6, scope: !5627)
!5641 = !DILocation(line: 339, column: 10, scope: !5627)
!5642 = !DILocation(line: 339, column: 18, scope: !5627)
!5643 = !DILocation(line: 339, column: 4, scope: !5627)
!5644 = !DILocation(line: 341, column: 6, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 341, column: 6)
!5646 = !DILocation(line: 341, column: 8, scope: !5645)
!5647 = !DILocation(line: 341, column: 6, scope: !5627)
!5648 = !DILocation(line: 342, column: 5, scope: !5645)
!5649 = !DILocation(line: 342, column: 3, scope: !5645)
!5650 = !DILocation(line: 343, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 343, column: 6)
!5652 = !DILocation(line: 343, column: 8, scope: !5651)
!5653 = !DILocation(line: 343, column: 6, scope: !5627)
!5654 = !DILocation(line: 344, column: 5, scope: !5651)
!5655 = !DILocation(line: 344, column: 3, scope: !5651)
!5656 = !DILocation(line: 346, column: 4, scope: !5627)
!5657 = !DILocation(line: 347, column: 6, scope: !5627)
!5658 = !DILocation(line: 347, column: 8, scope: !5627)
!5659 = !DILocation(line: 347, column: 15, scope: !5627)
!5660 = !DILocation(line: 347, column: 4, scope: !5627)
!5661 = !DILocation(line: 349, column: 15, scope: !5627)
!5662 = !DILocation(line: 349, column: 17, scope: !5627)
!5663 = !DILocation(line: 349, column: 25, scope: !5627)
!5664 = !DILocation(line: 349, column: 23, scope: !5627)
!5665 = !DILocation(line: 349, column: 14, scope: !5627)
!5666 = !DILocation(line: 349, column: 3, scope: !5627)
!5667 = !DILocation(line: 349, column: 12, scope: !5627)
!5668 = !DILocation(line: 350, column: 2, scope: !5627)
!5669 = distinct !DISubprogram(name: "bcm3510_read_snr", scope: !3, file: !3, line: 353, type: !563, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5670 = !DILocalVariable(name: "fe", arg: 1, scope: !5669, file: !3, line: 353, type: !387)
!5671 = !DILocation(line: 353, column: 50, scope: !5669)
!5672 = !DILocalVariable(name: "snr", arg: 2, scope: !5669, file: !3, line: 353, type: !565)
!5673 = !DILocation(line: 353, column: 59, scope: !5669)
!5674 = !DILocalVariable(name: "st", scope: !5669, file: !3, line: 355, type: !4455)
!5675 = !DILocation(line: 355, column: 24, scope: !5669)
!5676 = !DILocation(line: 355, column: 29, scope: !5669)
!5677 = !DILocation(line: 355, column: 33, scope: !5669)
!5678 = !DILocation(line: 356, column: 24, scope: !5669)
!5679 = !DILocation(line: 356, column: 2, scope: !5669)
!5680 = !DILocation(line: 358, column: 9, scope: !5669)
!5681 = !DILocation(line: 358, column: 13, scope: !5669)
!5682 = !DILocation(line: 358, column: 21, scope: !5669)
!5683 = !DILocation(line: 358, column: 29, scope: !5669)
!5684 = !DILocation(line: 358, column: 39, scope: !5669)
!5685 = !DILocation(line: 358, column: 43, scope: !5669)
!5686 = !DILocation(line: 358, column: 51, scope: !5669)
!5687 = !DILocation(line: 358, column: 59, scope: !5669)
!5688 = !DILocation(line: 358, column: 66, scope: !5669)
!5689 = !DILocation(line: 358, column: 35, scope: !5669)
!5690 = !DILocation(line: 358, column: 3, scope: !5669)
!5691 = !DILocation(line: 358, column: 7, scope: !5669)
!5692 = !DILocation(line: 359, column: 2, scope: !5669)
!5693 = distinct !DISubprogram(name: "bcm3510_read_unc", scope: !3, file: !3, line: 325, type: !558, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5694 = !DILocalVariable(name: "fe", arg: 1, scope: !5693, file: !3, line: 325, type: !387)
!5695 = !DILocation(line: 325, column: 50, scope: !5693)
!5696 = !DILocalVariable(name: "unc", arg: 2, scope: !5693, file: !3, line: 325, type: !560)
!5697 = !DILocation(line: 325, column: 59, scope: !5693)
!5698 = !DILocalVariable(name: "st", scope: !5693, file: !3, line: 327, type: !4455)
!5699 = !DILocation(line: 327, column: 24, scope: !5693)
!5700 = !DILocation(line: 327, column: 29, scope: !5693)
!5701 = !DILocation(line: 327, column: 33, scope: !5693)
!5702 = !DILocation(line: 328, column: 24, scope: !5693)
!5703 = !DILocation(line: 328, column: 2, scope: !5693)
!5704 = !DILocation(line: 329, column: 10, scope: !5693)
!5705 = !DILocation(line: 329, column: 14, scope: !5693)
!5706 = !DILocation(line: 329, column: 22, scope: !5693)
!5707 = !DILocation(line: 329, column: 30, scope: !5693)
!5708 = !DILocation(line: 329, column: 38, scope: !5693)
!5709 = !DILocation(line: 329, column: 42, scope: !5693)
!5710 = !DILocation(line: 329, column: 50, scope: !5693)
!5711 = !DILocation(line: 329, column: 36, scope: !5693)
!5712 = !DILocation(line: 329, column: 3, scope: !5693)
!5713 = !DILocation(line: 329, column: 7, scope: !5693)
!5714 = !DILocation(line: 330, column: 2, scope: !5693)
!5715 = distinct !DISubprogram(name: "bcm3510_init_cold", scope: !3, file: !3, line: 726, type: !5054, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5716 = !DILocalVariable(name: "st", arg: 1, scope: !5715, file: !3, line: 726, type: !4455)
!5717 = !DILocation(line: 726, column: 52, scope: !5715)
!5718 = !DILocalVariable(name: "ret", scope: !5715, file: !3, line: 728, type: !331)
!5719 = !DILocation(line: 728, column: 6, scope: !5715)
!5720 = !DILocalVariable(name: "v", scope: !5715, file: !3, line: 729, type: !4573)
!5721 = !DILocation(line: 729, column: 25, scope: !5715)
!5722 = !DILocation(line: 732, column: 27, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 732, column: 6)
!5724 = !DILocation(line: 732, column: 13, scope: !5723)
!5725 = !DILocation(line: 732, column: 11, scope: !5723)
!5726 = !DILocation(line: 732, column: 40, scope: !5723)
!5727 = !DILocation(line: 732, column: 6, scope: !5715)
!5728 = !DILocation(line: 733, column: 10, scope: !5723)
!5729 = !DILocation(line: 733, column: 3, scope: !5723)
!5730 = !DILocation(line: 734, column: 8, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 734, column: 6)
!5732 = !DILocation(line: 734, column: 19, scope: !5731)
!5733 = !DILocation(line: 734, column: 6, scope: !5731)
!5734 = !DILocation(line: 734, column: 6, scope: !5715)
!5735 = !DILocation(line: 735, column: 3, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 735, column: 3)
!5737 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 734, column: 24)
!5738 = !DILocation(line: 735, column: 3, scope: !5737)
!5739 = !DILocation(line: 736, column: 3, scope: !5737)
!5740 = !DILocation(line: 739, column: 2, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 739, column: 2)
!5742 = !DILocation(line: 739, column: 2, scope: !5715)
!5743 = !DILocation(line: 740, column: 27, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 740, column: 6)
!5745 = !DILocation(line: 740, column: 13, scope: !5744)
!5746 = !DILocation(line: 740, column: 11, scope: !5744)
!5747 = !DILocation(line: 740, column: 32, scope: !5744)
!5748 = !DILocation(line: 740, column: 6, scope: !5715)
!5749 = !DILocation(line: 741, column: 10, scope: !5744)
!5750 = !DILocation(line: 741, column: 3, scope: !5744)
!5751 = !DILocation(line: 743, column: 2, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 743, column: 2)
!5753 = !DILocation(line: 743, column: 2, scope: !5715)
!5754 = !DILocation(line: 745, column: 4, scope: !5715)
!5755 = !DILocation(line: 745, column: 14, scope: !5715)
!5756 = !DILocation(line: 745, column: 18, scope: !5715)
!5757 = !DILocation(line: 746, column: 28, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 746, column: 6)
!5759 = !DILocation(line: 746, column: 13, scope: !5758)
!5760 = !DILocation(line: 746, column: 11, scope: !5758)
!5761 = !DILocation(line: 746, column: 40, scope: !5758)
!5762 = !DILocation(line: 746, column: 6, scope: !5715)
!5763 = !DILocation(line: 747, column: 10, scope: !5758)
!5764 = !DILocation(line: 747, column: 3, scope: !5758)
!5765 = !DILocation(line: 749, column: 2, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 749, column: 2)
!5767 = !DILocation(line: 749, column: 2, scope: !5715)
!5768 = !DILocation(line: 750, column: 40, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 750, column: 6)
!5770 = !DILocation(line: 750, column: 44, scope: !5769)
!5771 = !DILocation(line: 750, column: 13, scope: !5769)
!5772 = !DILocation(line: 750, column: 11, scope: !5769)
!5773 = !DILocation(line: 750, column: 55, scope: !5769)
!5774 = !DILocation(line: 750, column: 59, scope: !5769)
!5775 = !DILocation(line: 751, column: 30, scope: !5769)
!5776 = !DILocation(line: 751, column: 10, scope: !5769)
!5777 = !DILocation(line: 751, column: 8, scope: !5769)
!5778 = !DILocation(line: 751, column: 35, scope: !5769)
!5779 = !DILocation(line: 750, column: 6, scope: !5715)
!5780 = !DILocation(line: 752, column: 10, scope: !5769)
!5781 = !DILocation(line: 752, column: 3, scope: !5769)
!5782 = !DILocation(line: 756, column: 2, scope: !5715)
!5783 = !DILocation(line: 757, column: 1, scope: !5715)
!5784 = distinct !DISubprogram(name: "bcm3510_check_firmware_version", scope: !3, file: !3, line: 661, type: !5054, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5785 = !DILocalVariable(name: "st", arg: 1, scope: !5784, file: !3, line: 661, type: !4455)
!5786 = !DILocation(line: 661, column: 65, scope: !5784)
!5787 = !DILocalVariable(name: "ver", scope: !5784, file: !3, line: 663, type: !5788)
!5788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_hab_cmd_get_version_info", file: !4467, line: 158, size: 32, elements: !5789)
!5789 = !{!5790, !5791, !5792, !5793}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "microcode_version", scope: !5788, file: !4467, line: 159, baseType: !296, size: 8)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "script_version", scope: !5788, file: !4467, line: 160, baseType: !296, size: 8, offset: 8)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "config_version", scope: !5788, file: !4467, line: 161, baseType: !296, size: 8, offset: 16)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "demod_version", scope: !5788, file: !4467, line: 162, baseType: !296, size: 8, offset: 24)
!5794 = !DILocation(line: 663, column: 42, scope: !5784)
!5795 = !DILocation(line: 664, column: 21, scope: !5784)
!5796 = !DILocation(line: 664, column: 75, scope: !5784)
!5797 = !DILocation(line: 664, column: 2, scope: !5784)
!5798 = !DILocation(line: 666, column: 2, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 666, column: 2)
!5800 = !DILocation(line: 666, column: 2, scope: !5784)
!5801 = !DILocation(line: 669, column: 10, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 669, column: 6)
!5803 = !DILocation(line: 669, column: 6, scope: !5802)
!5804 = !DILocation(line: 669, column: 25, scope: !5802)
!5805 = !DILocation(line: 669, column: 55, scope: !5802)
!5806 = !DILocation(line: 670, column: 7, scope: !5802)
!5807 = !DILocation(line: 670, column: 3, scope: !5802)
!5808 = !DILocation(line: 670, column: 22, scope: !5802)
!5809 = !DILocation(line: 670, column: 52, scope: !5802)
!5810 = !DILocation(line: 671, column: 7, scope: !5802)
!5811 = !DILocation(line: 671, column: 3, scope: !5802)
!5812 = !DILocation(line: 671, column: 22, scope: !5802)
!5813 = !DILocation(line: 669, column: 6, scope: !5784)
!5814 = !DILocation(line: 672, column: 3, scope: !5802)
!5815 = !DILocation(line: 674, column: 2, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 674, column: 2)
!5817 = !DILocation(line: 674, column: 2, scope: !5784)
!5818 = !DILocation(line: 675, column: 2, scope: !5784)
!5819 = !DILocation(line: 676, column: 1, scope: !5784)
!5820 = distinct !DISubprogram(name: "bcm3510_do_hab_cmd", scope: !3, file: !3, line: 205, type: !5821, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5821 = !DISubroutineType(types: !5822)
!5822 = !{!331, !4455, !296, !296, !295, !296, !295, !296}
!5823 = !DILocalVariable(name: "st", arg: 1, scope: !5820, file: !3, line: 205, type: !4455)
!5824 = !DILocation(line: 205, column: 53, scope: !5820)
!5825 = !DILocalVariable(name: "cmd", arg: 2, scope: !5820, file: !3, line: 205, type: !296)
!5826 = !DILocation(line: 205, column: 60, scope: !5820)
!5827 = !DILocalVariable(name: "msgid", arg: 3, scope: !5820, file: !3, line: 205, type: !296)
!5828 = !DILocation(line: 205, column: 68, scope: !5820)
!5829 = !DILocalVariable(name: "obuf", arg: 4, scope: !5820, file: !3, line: 205, type: !295)
!5830 = !DILocation(line: 205, column: 79, scope: !5820)
!5831 = !DILocalVariable(name: "olen", arg: 5, scope: !5820, file: !3, line: 205, type: !296)
!5832 = !DILocation(line: 205, column: 88, scope: !5820)
!5833 = !DILocalVariable(name: "ibuf", arg: 6, scope: !5820, file: !3, line: 205, type: !295)
!5834 = !DILocation(line: 205, column: 98, scope: !5820)
!5835 = !DILocalVariable(name: "ilen", arg: 7, scope: !5820, file: !3, line: 205, type: !296)
!5836 = !DILocation(line: 205, column: 107, scope: !5820)
!5837 = !DILocalVariable(name: "ob", scope: !5820, file: !3, line: 207, type: !5838)
!5838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 1024, elements: !412)
!5839 = !DILocation(line: 207, column: 5, scope: !5820)
!5840 = !DILocalVariable(name: "ib", scope: !5820, file: !3, line: 207, type: !5838)
!5841 = !DILocation(line: 207, column: 24, scope: !5820)
!5842 = !DILocalVariable(name: "ret", scope: !5820, file: !3, line: 208, type: !331)
!5843 = !DILocation(line: 208, column: 6, scope: !5820)
!5844 = !DILocation(line: 210, column: 6, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 210, column: 6)
!5846 = !DILocation(line: 210, column: 11, scope: !5845)
!5847 = !DILocation(line: 210, column: 15, scope: !5845)
!5848 = !DILocation(line: 210, column: 6, scope: !5820)
!5849 = !DILocation(line: 211, column: 3, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 211, column: 3)
!5851 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 210, column: 29)
!5852 = !DILocation(line: 211, column: 3, scope: !5851)
!5853 = !DILocation(line: 212, column: 3, scope: !5851)
!5854 = !DILocation(line: 215, column: 6, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 215, column: 6)
!5856 = !DILocation(line: 215, column: 11, scope: !5855)
!5857 = !DILocation(line: 215, column: 15, scope: !5855)
!5858 = !DILocation(line: 215, column: 6, scope: !5820)
!5859 = !DILocation(line: 216, column: 3, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 216, column: 3)
!5861 = distinct !DILexicalBlock(scope: !5855, file: !3, line: 215, column: 29)
!5862 = !DILocation(line: 216, column: 3, scope: !5861)
!5863 = !DILocation(line: 217, column: 3, scope: !5861)
!5864 = !DILocation(line: 220, column: 10, scope: !5820)
!5865 = !DILocation(line: 220, column: 2, scope: !5820)
!5866 = !DILocation(line: 220, column: 8, scope: !5820)
!5867 = !DILocation(line: 221, column: 10, scope: !5820)
!5868 = !DILocation(line: 221, column: 2, scope: !5820)
!5869 = !DILocation(line: 221, column: 8, scope: !5820)
!5870 = !DILocation(line: 222, column: 10, scope: !5820)
!5871 = !DILocation(line: 222, column: 16, scope: !5820)
!5872 = !DILocation(line: 222, column: 21, scope: !5820)
!5873 = !DILocation(line: 222, column: 2, scope: !5820)
!5874 = !DILocation(line: 224, column: 2, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 224, column: 2)
!5876 = !DILocation(line: 224, column: 2, scope: !5820)
!5877 = !DILocalVariable(name: "i", scope: !5878, file: !3, line: 225, type: !331)
!5878 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 225, column: 2)
!5879 = !DILocation(line: 225, column: 2, scope: !5878)
!5880 = !DILocation(line: 225, column: 2, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 225, column: 2)
!5882 = !DILocation(line: 225, column: 2, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 225, column: 2)
!5884 = !DILocation(line: 225, column: 2, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 225, column: 2)
!5886 = distinct !{!5886, !5880, !5880}
!5887 = !DILocation(line: 226, column: 2, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 226, column: 2)
!5889 = !DILocation(line: 226, column: 2, scope: !5820)
!5890 = !DILocation(line: 228, column: 32, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 228, column: 6)
!5892 = !DILocation(line: 228, column: 36, scope: !5891)
!5893 = !DILocation(line: 228, column: 6, scope: !5891)
!5894 = !DILocation(line: 228, column: 47, scope: !5891)
!5895 = !DILocation(line: 228, column: 6, scope: !5820)
!5896 = !DILocation(line: 229, column: 3, scope: !5891)
!5897 = !DILocation(line: 231, column: 38, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 231, column: 6)
!5899 = !DILocation(line: 231, column: 42, scope: !5898)
!5900 = !DILocation(line: 231, column: 46, scope: !5898)
!5901 = !DILocation(line: 231, column: 50, scope: !5898)
!5902 = !DILocation(line: 231, column: 13, scope: !5898)
!5903 = !DILocation(line: 231, column: 11, scope: !5898)
!5904 = !DILocation(line: 231, column: 55, scope: !5898)
!5905 = !DILocation(line: 231, column: 59, scope: !5898)
!5906 = !DILocation(line: 232, column: 35, scope: !5898)
!5907 = !DILocation(line: 232, column: 39, scope: !5898)
!5908 = !DILocation(line: 232, column: 43, scope: !5898)
!5909 = !DILocation(line: 232, column: 47, scope: !5898)
!5910 = !DILocation(line: 232, column: 10, scope: !5898)
!5911 = !DILocation(line: 232, column: 8, scope: !5898)
!5912 = !DILocation(line: 232, column: 52, scope: !5898)
!5913 = !DILocation(line: 231, column: 6, scope: !5820)
!5914 = !DILocation(line: 233, column: 3, scope: !5898)
!5915 = !DILocation(line: 235, column: 2, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 235, column: 2)
!5917 = !DILocation(line: 235, column: 2, scope: !5820)
!5918 = !DILocalVariable(name: "i", scope: !5919, file: !3, line: 236, type: !331)
!5919 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 236, column: 2)
!5920 = !DILocation(line: 236, column: 2, scope: !5919)
!5921 = !DILocation(line: 236, column: 2, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 236, column: 2)
!5923 = !DILocation(line: 236, column: 2, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 236, column: 2)
!5925 = !DILocation(line: 236, column: 2, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 236, column: 2)
!5927 = distinct !{!5927, !5921, !5921}
!5928 = !DILocation(line: 237, column: 2, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 237, column: 2)
!5930 = !DILocation(line: 237, column: 2, scope: !5820)
!5931 = !DILocation(line: 239, column: 9, scope: !5820)
!5932 = !DILocation(line: 239, column: 15, scope: !5820)
!5933 = !DILocation(line: 239, column: 21, scope: !5820)
!5934 = !DILocation(line: 239, column: 2, scope: !5820)
!5935 = !DILabel(scope: !5820, name: "error", file: !3, line: 240)
!5936 = !DILocation(line: 240, column: 1, scope: !5820)
!5937 = !DILocation(line: 241, column: 16, scope: !5820)
!5938 = !DILocation(line: 241, column: 20, scope: !5820)
!5939 = !DILocation(line: 241, column: 2, scope: !5820)
!5940 = !DILocation(line: 242, column: 9, scope: !5820)
!5941 = !DILocation(line: 242, column: 2, scope: !5820)
!5942 = !DILocation(line: 243, column: 1, scope: !5820)
!5943 = distinct !DISubprogram(name: "bcm3510_download_firmware", scope: !3, file: !3, line: 630, type: !436, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!5944 = !DILocalVariable(name: "fe", arg: 1, scope: !5943, file: !3, line: 630, type: !387)
!5945 = !DILocation(line: 630, column: 59, scope: !5943)
!5946 = !DILocalVariable(name: "st", scope: !5943, file: !3, line: 632, type: !4455)
!5947 = !DILocation(line: 632, column: 24, scope: !5943)
!5948 = !DILocation(line: 632, column: 29, scope: !5943)
!5949 = !DILocation(line: 632, column: 33, scope: !5943)
!5950 = !DILocalVariable(name: "fw", scope: !5943, file: !3, line: 633, type: !4289)
!5951 = !DILocation(line: 633, column: 25, scope: !5943)
!5952 = !DILocalVariable(name: "addr", scope: !5943, file: !3, line: 634, type: !344)
!5953 = !DILocation(line: 634, column: 6, scope: !5943)
!5954 = !DILocalVariable(name: "len", scope: !5943, file: !3, line: 634, type: !344)
!5955 = !DILocation(line: 634, column: 11, scope: !5943)
!5956 = !DILocalVariable(name: "b", scope: !5943, file: !3, line: 635, type: !443)
!5957 = !DILocation(line: 635, column: 12, scope: !5943)
!5958 = !DILocalVariable(name: "ret", scope: !5943, file: !3, line: 636, type: !331)
!5959 = !DILocation(line: 636, column: 6, scope: !5943)
!5960 = !DILocalVariable(name: "i", scope: !5943, file: !3, line: 636, type: !331)
!5961 = !DILocation(line: 636, column: 10, scope: !5943)
!5962 = !DILocation(line: 638, column: 2, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 638, column: 2)
!5964 = !DILocation(line: 638, column: 2, scope: !5943)
!5965 = !DILocation(line: 639, column: 13, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 639, column: 6)
!5967 = !DILocation(line: 639, column: 17, scope: !5966)
!5968 = !DILocation(line: 639, column: 25, scope: !5966)
!5969 = !DILocation(line: 639, column: 42, scope: !5966)
!5970 = !DILocation(line: 639, column: 11, scope: !5966)
!5971 = !DILocation(line: 639, column: 78, scope: !5966)
!5972 = !DILocation(line: 639, column: 6, scope: !5943)
!5973 = !DILocation(line: 640, column: 3, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 639, column: 83)
!5975 = !DILocation(line: 641, column: 10, scope: !5974)
!5976 = !DILocation(line: 641, column: 3, scope: !5974)
!5977 = !DILocation(line: 643, column: 2, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 643, column: 2)
!5979 = !DILocation(line: 643, column: 2, scope: !5943)
!5980 = !DILocation(line: 645, column: 6, scope: !5943)
!5981 = !DILocation(line: 645, column: 10, scope: !5943)
!5982 = !DILocation(line: 645, column: 4, scope: !5943)
!5983 = !DILocation(line: 646, column: 9, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 646, column: 2)
!5985 = !DILocation(line: 646, column: 7, scope: !5984)
!5986 = !DILocation(line: 646, column: 14, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 646, column: 2)
!5988 = !DILocation(line: 646, column: 18, scope: !5987)
!5989 = !DILocation(line: 646, column: 22, scope: !5987)
!5990 = !DILocation(line: 646, column: 16, scope: !5987)
!5991 = !DILocation(line: 646, column: 2, scope: !5984)
!5992 = !DILocation(line: 647, column: 10, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 646, column: 29)
!5994 = !DILocation(line: 647, column: 8, scope: !5993)
!5995 = !DILocation(line: 648, column: 10, scope: !5993)
!5996 = !DILocation(line: 648, column: 8, scope: !5993)
!5997 = !DILocation(line: 649, column: 3, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 649, column: 3)
!5999 = !DILocation(line: 649, column: 3, scope: !5993)
!6000 = !DILocation(line: 650, column: 32, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 650, column: 7)
!6002 = !DILocation(line: 650, column: 35, scope: !6001)
!6003 = !DILocation(line: 650, column: 41, scope: !6001)
!6004 = !DILocation(line: 650, column: 43, scope: !6001)
!6005 = !DILocation(line: 650, column: 44, scope: !6001)
!6006 = !DILocation(line: 650, column: 48, scope: !6001)
!6007 = !DILocation(line: 650, column: 14, scope: !6001)
!6008 = !DILocation(line: 650, column: 12, scope: !6001)
!6009 = !DILocation(line: 650, column: 54, scope: !6001)
!6010 = !DILocation(line: 650, column: 7, scope: !5993)
!6011 = !DILocation(line: 651, column: 4, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 650, column: 59)
!6013 = !DILocation(line: 652, column: 11, scope: !6012)
!6014 = !DILocation(line: 652, column: 4, scope: !6012)
!6015 = !DILocation(line: 654, column: 12, scope: !5993)
!6016 = !DILocation(line: 654, column: 10, scope: !5993)
!6017 = !DILocation(line: 654, column: 5, scope: !5993)
!6018 = !DILocation(line: 646, column: 2, scope: !5987)
!6019 = distinct !{!6019, !5991, !6020}
!6020 = !DILocation(line: 655, column: 2, scope: !5984)
!6021 = !DILocation(line: 656, column: 19, scope: !5943)
!6022 = !DILocation(line: 656, column: 2, scope: !5943)
!6023 = !DILocation(line: 657, column: 2, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 657, column: 2)
!6025 = !DILocation(line: 657, column: 2, scope: !5943)
!6026 = !DILocation(line: 658, column: 2, scope: !5943)
!6027 = !DILocation(line: 659, column: 1, scope: !5943)
!6028 = distinct !DISubprogram(name: "bcm3510_clear_reset", scope: !3, file: !3, line: 702, type: !5054, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!6029 = !DILocalVariable(name: "st", arg: 1, scope: !6028, file: !3, line: 702, type: !4455)
!6030 = !DILocation(line: 702, column: 54, scope: !6028)
!6031 = !DILocalVariable(name: "v", scope: !6028, file: !3, line: 704, type: !4573)
!6032 = !DILocation(line: 704, column: 25, scope: !6028)
!6033 = !DILocalVariable(name: "ret", scope: !6028, file: !3, line: 705, type: !331)
!6034 = !DILocation(line: 705, column: 6, scope: !6028)
!6035 = !DILocalVariable(name: "t", scope: !6028, file: !3, line: 706, type: !612)
!6036 = !DILocation(line: 706, column: 16, scope: !6028)
!6037 = !DILocation(line: 708, column: 4, scope: !6028)
!6038 = !DILocation(line: 708, column: 8, scope: !6028)
!6039 = !DILocation(line: 709, column: 28, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 709, column: 6)
!6041 = !DILocation(line: 709, column: 13, scope: !6040)
!6042 = !DILocation(line: 709, column: 11, scope: !6040)
!6043 = !DILocation(line: 709, column: 40, scope: !6040)
!6044 = !DILocation(line: 709, column: 6, scope: !6028)
!6045 = !DILocation(line: 710, column: 10, scope: !6040)
!6046 = !DILocation(line: 710, column: 3, scope: !6040)
!6047 = !DILocation(line: 712, column: 6, scope: !6028)
!6048 = !DILocation(line: 712, column: 14, scope: !6028)
!6049 = !DILocation(line: 712, column: 4, scope: !6028)
!6050 = !DILocation(line: 713, column: 2, scope: !6028)
!6051 = !DILocation(line: 713, column: 9, scope: !6028)
!6052 = !DILocation(line: 714, column: 3, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 713, column: 34)
!6054 = !DILocation(line: 715, column: 28, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 715, column: 7)
!6056 = !DILocation(line: 715, column: 14, scope: !6055)
!6057 = !DILocation(line: 715, column: 12, scope: !6055)
!6058 = !DILocation(line: 715, column: 41, scope: !6055)
!6059 = !DILocation(line: 715, column: 7, scope: !6053)
!6060 = !DILocation(line: 716, column: 11, scope: !6055)
!6061 = !DILocation(line: 716, column: 4, scope: !6055)
!6062 = !DILocation(line: 719, column: 10, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 719, column: 7)
!6064 = !DILocation(line: 719, column: 21, scope: !6063)
!6065 = !DILocation(line: 719, column: 8, scope: !6063)
!6066 = !DILocation(line: 719, column: 7, scope: !6053)
!6067 = !DILocation(line: 720, column: 4, scope: !6063)
!6068 = distinct !{!6068, !6050, !6069}
!6069 = !DILocation(line: 721, column: 2, scope: !6028)
!6070 = !DILocation(line: 722, column: 2, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 722, column: 2)
!6072 = !DILocation(line: 722, column: 2, scope: !6028)
!6073 = !DILocation(line: 723, column: 2, scope: !6028)
!6074 = !DILocation(line: 724, column: 1, scope: !6028)
!6075 = distinct !DISubprogram(name: "bcm3510_write_ram", scope: !3, file: !3, line: 610, type: !6076, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!6076 = !DISubroutineType(types: !6077)
!6077 = !{!331, !4455, !344, !443, !344}
!6078 = !DILocalVariable(name: "st", arg: 1, scope: !6075, file: !3, line: 610, type: !4455)
!6079 = !DILocation(line: 610, column: 52, scope: !6075)
!6080 = !DILocalVariable(name: "addr", arg: 2, scope: !6075, file: !3, line: 610, type: !344)
!6081 = !DILocation(line: 610, column: 60, scope: !6075)
!6082 = !DILocalVariable(name: "b", arg: 3, scope: !6075, file: !3, line: 610, type: !443)
!6083 = !DILocation(line: 610, column: 76, scope: !6075)
!6084 = !DILocalVariable(name: "len", arg: 4, scope: !6075, file: !3, line: 611, type: !344)
!6085 = !DILocation(line: 611, column: 13, scope: !6075)
!6086 = !DILocalVariable(name: "ret", scope: !6075, file: !3, line: 613, type: !331)
!6087 = !DILocation(line: 613, column: 6, scope: !6075)
!6088 = !DILocalVariable(name: "i", scope: !6075, file: !3, line: 613, type: !331)
!6089 = !DILocation(line: 613, column: 14, scope: !6075)
!6090 = !DILocalVariable(name: "vH", scope: !6075, file: !3, line: 614, type: !4573)
!6091 = !DILocation(line: 614, column: 25, scope: !6075)
!6092 = !DILocalVariable(name: "vL", scope: !6075, file: !3, line: 614, type: !4573)
!6093 = !DILocation(line: 614, column: 29, scope: !6075)
!6094 = !DILocalVariable(name: "vD", scope: !6075, file: !3, line: 614, type: !4573)
!6095 = !DILocation(line: 614, column: 32, scope: !6075)
!6096 = !DILocation(line: 616, column: 16, scope: !6075)
!6097 = !DILocation(line: 616, column: 21, scope: !6075)
!6098 = !DILocation(line: 616, column: 5, scope: !6075)
!6099 = !DILocation(line: 616, column: 14, scope: !6075)
!6100 = !DILocation(line: 617, column: 16, scope: !6075)
!6101 = !DILocation(line: 617, column: 5, scope: !6075)
!6102 = !DILocation(line: 617, column: 14, scope: !6075)
!6103 = !DILocation(line: 618, column: 28, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 618, column: 6)
!6105 = !DILocation(line: 618, column: 13, scope: !6104)
!6106 = !DILocation(line: 618, column: 11, scope: !6104)
!6107 = !DILocation(line: 618, column: 41, scope: !6104)
!6108 = !DILocation(line: 618, column: 6, scope: !6075)
!6109 = !DILocation(line: 618, column: 53, scope: !6104)
!6110 = !DILocation(line: 618, column: 46, scope: !6104)
!6111 = !DILocation(line: 619, column: 28, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 619, column: 6)
!6113 = !DILocation(line: 619, column: 13, scope: !6112)
!6114 = !DILocation(line: 619, column: 11, scope: !6112)
!6115 = !DILocation(line: 619, column: 41, scope: !6112)
!6116 = !DILocation(line: 619, column: 6, scope: !6075)
!6117 = !DILocation(line: 619, column: 53, scope: !6112)
!6118 = !DILocation(line: 619, column: 46, scope: !6112)
!6119 = !DILocation(line: 621, column: 9, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 621, column: 2)
!6121 = !DILocation(line: 621, column: 7, scope: !6120)
!6122 = !DILocation(line: 621, column: 14, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 621, column: 2)
!6124 = !DILocation(line: 621, column: 18, scope: !6123)
!6125 = !DILocation(line: 621, column: 16, scope: !6123)
!6126 = !DILocation(line: 621, column: 2, scope: !6120)
!6127 = !DILocation(line: 622, column: 17, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 621, column: 28)
!6129 = !DILocation(line: 622, column: 19, scope: !6128)
!6130 = !DILocation(line: 622, column: 6, scope: !6128)
!6131 = !DILocation(line: 622, column: 15, scope: !6128)
!6132 = !DILocation(line: 623, column: 29, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 623, column: 7)
!6134 = !DILocation(line: 623, column: 14, scope: !6133)
!6135 = !DILocation(line: 623, column: 12, scope: !6133)
!6136 = !DILocation(line: 623, column: 42, scope: !6133)
!6137 = !DILocation(line: 623, column: 7, scope: !6128)
!6138 = !DILocation(line: 624, column: 11, scope: !6133)
!6139 = !DILocation(line: 624, column: 4, scope: !6133)
!6140 = !DILocation(line: 625, column: 2, scope: !6128)
!6141 = !DILocation(line: 621, column: 24, scope: !6123)
!6142 = !DILocation(line: 621, column: 2, scope: !6123)
!6143 = distinct !{!6143, !6126, !6144}
!6144 = !DILocation(line: 625, column: 2, scope: !6120)
!6145 = !DILocation(line: 627, column: 2, scope: !6075)
!6146 = !DILocation(line: 628, column: 1, scope: !6075)
!6147 = distinct !DISubprogram(name: "bcm3510_hab_send_request", scope: !3, file: !3, line: 154, type: !6148, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{!331, !4455, !295, !331}
!6150 = !DILocalVariable(name: "st", arg: 1, scope: !6147, file: !3, line: 154, type: !4455)
!6151 = !DILocation(line: 154, column: 59, scope: !6147)
!6152 = !DILocalVariable(name: "buf", arg: 2, scope: !6147, file: !3, line: 154, type: !295)
!6153 = !DILocation(line: 154, column: 67, scope: !6147)
!6154 = !DILocalVariable(name: "len", arg: 3, scope: !6147, file: !3, line: 154, type: !331)
!6155 = !DILocation(line: 154, column: 76, scope: !6147)
!6156 = !DILocalVariable(name: "v", scope: !6147, file: !3, line: 156, type: !4573)
!6157 = !DILocation(line: 156, column: 25, scope: !6147)
!6158 = !DILocalVariable(name: "hab", scope: !6147, file: !3, line: 156, type: !4573)
!6159 = !DILocation(line: 156, column: 27, scope: !6147)
!6160 = !DILocalVariable(name: "ret", scope: !6147, file: !3, line: 157, type: !331)
!6161 = !DILocation(line: 157, column: 6, scope: !6147)
!6162 = !DILocalVariable(name: "i", scope: !6147, file: !3, line: 157, type: !331)
!6163 = !DILocation(line: 157, column: 10, scope: !6147)
!6164 = !DILocalVariable(name: "t", scope: !6147, file: !3, line: 158, type: !612)
!6165 = !DILocation(line: 158, column: 16, scope: !6147)
!6166 = !DILocation(line: 162, column: 27, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 162, column: 6)
!6168 = !DILocation(line: 162, column: 13, scope: !6167)
!6169 = !DILocation(line: 162, column: 11, scope: !6167)
!6170 = !DILocation(line: 162, column: 40, scope: !6167)
!6171 = !DILocation(line: 162, column: 6, scope: !6147)
!6172 = !DILocation(line: 163, column: 10, scope: !6167)
!6173 = !DILocation(line: 163, column: 3, scope: !6167)
!6174 = !DILocation(line: 164, column: 8, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 164, column: 6)
!6176 = !DILocation(line: 164, column: 19, scope: !6175)
!6177 = !DILocation(line: 164, column: 6, scope: !6175)
!6178 = !DILocation(line: 164, column: 6, scope: !6147)
!6179 = !DILocation(line: 165, column: 3, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 165, column: 3)
!6181 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 164, column: 25)
!6182 = !DILocation(line: 165, column: 3, scope: !6181)
!6183 = !DILocation(line: 166, column: 5, scope: !6181)
!6184 = !DILocation(line: 166, column: 16, scope: !6181)
!6185 = !DILocation(line: 166, column: 21, scope: !6181)
!6186 = !DILocation(line: 167, column: 18, scope: !6181)
!6187 = !DILocation(line: 167, column: 3, scope: !6181)
!6188 = !DILocation(line: 169, column: 2, scope: !6181)
!6189 = !DILocation(line: 173, column: 6, scope: !6147)
!6190 = !DILocation(line: 173, column: 16, scope: !6147)
!6191 = !DILocation(line: 173, column: 23, scope: !6147)
!6192 = !DILocation(line: 174, column: 28, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 174, column: 6)
!6194 = !DILocation(line: 174, column: 13, scope: !6193)
!6195 = !DILocation(line: 174, column: 11, scope: !6193)
!6196 = !DILocation(line: 174, column: 42, scope: !6193)
!6197 = !DILocation(line: 174, column: 6, scope: !6147)
!6198 = !DILocation(line: 175, column: 10, scope: !6193)
!6199 = !DILocation(line: 175, column: 3, scope: !6193)
!6200 = !DILocation(line: 177, column: 9, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 177, column: 2)
!6202 = !DILocation(line: 177, column: 7, scope: !6201)
!6203 = !DILocation(line: 177, column: 14, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 177, column: 2)
!6205 = !DILocation(line: 177, column: 18, scope: !6204)
!6206 = !DILocation(line: 177, column: 16, scope: !6204)
!6207 = !DILocation(line: 177, column: 2, scope: !6201)
!6208 = !DILocation(line: 178, column: 20, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 177, column: 28)
!6210 = !DILocation(line: 178, column: 24, scope: !6209)
!6211 = !DILocation(line: 178, column: 7, scope: !6209)
!6212 = !DILocation(line: 178, column: 18, scope: !6209)
!6213 = !DILocation(line: 179, column: 29, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 179, column: 7)
!6215 = !DILocation(line: 179, column: 14, scope: !6214)
!6216 = !DILocation(line: 179, column: 12, scope: !6214)
!6217 = !DILocation(line: 179, column: 43, scope: !6214)
!6218 = !DILocation(line: 179, column: 7, scope: !6209)
!6219 = !DILocation(line: 180, column: 11, scope: !6214)
!6220 = !DILocation(line: 180, column: 4, scope: !6214)
!6221 = !DILocation(line: 181, column: 2, scope: !6209)
!6222 = !DILocation(line: 177, column: 24, scope: !6204)
!6223 = !DILocation(line: 177, column: 2, scope: !6204)
!6224 = distinct !{!6224, !6207, !6225}
!6225 = !DILocation(line: 181, column: 2, scope: !6201)
!6226 = !DILocation(line: 185, column: 4, scope: !6147)
!6227 = !DILocation(line: 185, column: 8, scope: !6147)
!6228 = !DILocation(line: 185, column: 15, scope: !6147)
!6229 = !DILocation(line: 185, column: 26, scope: !6147)
!6230 = !DILocation(line: 185, column: 31, scope: !6147)
!6231 = !DILocation(line: 185, column: 38, scope: !6147)
!6232 = !DILocation(line: 185, column: 49, scope: !6147)
!6233 = !DILocation(line: 185, column: 56, scope: !6147)
!6234 = !DILocation(line: 186, column: 28, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 186, column: 6)
!6236 = !DILocation(line: 186, column: 13, scope: !6235)
!6237 = !DILocation(line: 186, column: 11, scope: !6235)
!6238 = !DILocation(line: 186, column: 40, scope: !6235)
!6239 = !DILocation(line: 186, column: 6, scope: !6147)
!6240 = !DILocation(line: 187, column: 10, scope: !6235)
!6241 = !DILocation(line: 187, column: 3, scope: !6235)
!6242 = !DILocation(line: 190, column: 6, scope: !6147)
!6243 = !DILocation(line: 190, column: 14, scope: !6147)
!6244 = !DILocation(line: 190, column: 4, scope: !6147)
!6245 = !DILocation(line: 191, column: 2, scope: !6147)
!6246 = !DILocation(line: 191, column: 9, scope: !6147)
!6247 = !DILocation(line: 192, column: 3, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 192, column: 3)
!6249 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 191, column: 34)
!6250 = !DILocation(line: 192, column: 3, scope: !6249)
!6251 = !DILocation(line: 193, column: 3, scope: !6249)
!6252 = !DILocation(line: 194, column: 28, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 194, column: 7)
!6254 = !DILocation(line: 194, column: 14, scope: !6253)
!6255 = !DILocation(line: 194, column: 12, scope: !6253)
!6256 = !DILocation(line: 194, column: 41, scope: !6253)
!6257 = !DILocation(line: 194, column: 7, scope: !6249)
!6258 = !DILocation(line: 195, column: 11, scope: !6253)
!6259 = !DILocation(line: 195, column: 4, scope: !6253)
!6260 = !DILocation(line: 197, column: 10, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 197, column: 7)
!6262 = !DILocation(line: 197, column: 21, scope: !6261)
!6263 = !DILocation(line: 197, column: 8, scope: !6261)
!6264 = !DILocation(line: 197, column: 7, scope: !6249)
!6265 = !DILocation(line: 198, column: 4, scope: !6261)
!6266 = distinct !{!6266, !6245, !6267}
!6267 = !DILocation(line: 199, column: 2, scope: !6147)
!6268 = !DILocation(line: 201, column: 2, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 201, column: 2)
!6270 = !DILocation(line: 201, column: 2, scope: !6147)
!6271 = !DILocation(line: 202, column: 2, scope: !6147)
!6272 = !DILocation(line: 203, column: 1, scope: !6147)
!6273 = distinct !DISubprogram(name: "bcm3510_hab_get_response", scope: !3, file: !3, line: 137, type: !6148, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!6274 = !DILocalVariable(name: "st", arg: 1, scope: !6273, file: !3, line: 137, type: !4455)
!6275 = !DILocation(line: 137, column: 59, scope: !6273)
!6276 = !DILocalVariable(name: "buf", arg: 2, scope: !6273, file: !3, line: 137, type: !295)
!6277 = !DILocation(line: 137, column: 67, scope: !6273)
!6278 = !DILocalVariable(name: "len", arg: 3, scope: !6273, file: !3, line: 137, type: !331)
!6279 = !DILocation(line: 137, column: 76, scope: !6273)
!6280 = !DILocalVariable(name: "v", scope: !6273, file: !3, line: 139, type: !4573)
!6281 = !DILocation(line: 139, column: 25, scope: !6273)
!6282 = !DILocalVariable(name: "ret", scope: !6273, file: !3, line: 140, type: !331)
!6283 = !DILocation(line: 140, column: 6, scope: !6273)
!6284 = !DILocalVariable(name: "i", scope: !6273, file: !3, line: 140, type: !331)
!6285 = !DILocation(line: 140, column: 10, scope: !6273)
!6286 = !DILocation(line: 142, column: 4, scope: !6273)
!6287 = !DILocation(line: 142, column: 14, scope: !6273)
!6288 = !DILocation(line: 142, column: 21, scope: !6273)
!6289 = !DILocation(line: 143, column: 28, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 143, column: 6)
!6291 = !DILocation(line: 143, column: 13, scope: !6290)
!6292 = !DILocation(line: 143, column: 11, scope: !6290)
!6293 = !DILocation(line: 143, column: 40, scope: !6290)
!6294 = !DILocation(line: 143, column: 6, scope: !6273)
!6295 = !DILocation(line: 144, column: 10, scope: !6290)
!6296 = !DILocation(line: 144, column: 3, scope: !6290)
!6297 = !DILocation(line: 146, column: 9, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6273, file: !3, line: 146, column: 2)
!6299 = !DILocation(line: 146, column: 7, scope: !6298)
!6300 = !DILocation(line: 146, column: 14, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 146, column: 2)
!6302 = !DILocation(line: 146, column: 18, scope: !6301)
!6303 = !DILocation(line: 146, column: 16, scope: !6301)
!6304 = !DILocation(line: 146, column: 2, scope: !6298)
!6305 = !DILocation(line: 147, column: 28, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 147, column: 7)
!6307 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 146, column: 28)
!6308 = !DILocation(line: 147, column: 14, scope: !6306)
!6309 = !DILocation(line: 147, column: 12, scope: !6306)
!6310 = !DILocation(line: 147, column: 41, scope: !6306)
!6311 = !DILocation(line: 147, column: 7, scope: !6307)
!6312 = !DILocation(line: 148, column: 11, scope: !6306)
!6313 = !DILocation(line: 148, column: 4, scope: !6306)
!6314 = !DILocation(line: 149, column: 14, scope: !6307)
!6315 = !DILocation(line: 149, column: 3, scope: !6307)
!6316 = !DILocation(line: 149, column: 7, scope: !6307)
!6317 = !DILocation(line: 149, column: 10, scope: !6307)
!6318 = !DILocation(line: 150, column: 2, scope: !6307)
!6319 = !DILocation(line: 146, column: 24, scope: !6301)
!6320 = !DILocation(line: 146, column: 2, scope: !6301)
!6321 = distinct !{!6321, !6304, !6322}
!6322 = !DILocation(line: 150, column: 2, scope: !6298)
!6323 = !DILocation(line: 151, column: 2, scope: !6273)
!6324 = !DILocation(line: 152, column: 1, scope: !6273)
!6325 = distinct !DISubprogram(name: "bcm3510_bert_reset", scope: !3, file: !3, line: 265, type: !5054, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!6326 = !DILocalVariable(name: "st", arg: 1, scope: !6325, file: !3, line: 265, type: !4455)
!6327 = !DILocation(line: 265, column: 53, scope: !6325)
!6328 = !DILocalVariable(name: "b", scope: !6325, file: !3, line: 267, type: !4573)
!6329 = !DILocation(line: 267, column: 25, scope: !6325)
!6330 = !DILocalVariable(name: "ret", scope: !6325, file: !3, line: 268, type: !331)
!6331 = !DILocation(line: 268, column: 6, scope: !6325)
!6332 = !DILocation(line: 270, column: 27, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6325, file: !3, line: 270, column: 6)
!6334 = !DILocation(line: 270, column: 13, scope: !6333)
!6335 = !DILocation(line: 270, column: 11, scope: !6333)
!6336 = !DILocation(line: 270, column: 40, scope: !6333)
!6337 = !DILocation(line: 270, column: 6, scope: !6325)
!6338 = !DILocation(line: 271, column: 10, scope: !6333)
!6339 = !DILocation(line: 271, column: 3, scope: !6333)
!6340 = !DILocation(line: 273, column: 4, scope: !6325)
!6341 = !DILocation(line: 273, column: 14, scope: !6325)
!6342 = !DILocation(line: 273, column: 21, scope: !6325)
!6343 = !DILocation(line: 273, column: 41, scope: !6325)
!6344 = !DILocation(line: 273, column: 26, scope: !6325)
!6345 = !DILocation(line: 274, column: 4, scope: !6325)
!6346 = !DILocation(line: 274, column: 14, scope: !6325)
!6347 = !DILocation(line: 274, column: 21, scope: !6325)
!6348 = !DILocation(line: 274, column: 41, scope: !6325)
!6349 = !DILocation(line: 274, column: 26, scope: !6325)
!6350 = !DILocation(line: 275, column: 4, scope: !6325)
!6351 = !DILocation(line: 275, column: 14, scope: !6325)
!6352 = !DILocation(line: 275, column: 21, scope: !6325)
!6353 = !DILocation(line: 275, column: 41, scope: !6325)
!6354 = !DILocation(line: 275, column: 26, scope: !6325)
!6355 = !DILocation(line: 276, column: 4, scope: !6325)
!6356 = !DILocation(line: 276, column: 14, scope: !6325)
!6357 = !DILocation(line: 276, column: 21, scope: !6325)
!6358 = !DILocation(line: 276, column: 28, scope: !6325)
!6359 = !DILocation(line: 276, column: 38, scope: !6325)
!6360 = !DILocation(line: 276, column: 45, scope: !6325)
!6361 = !DILocation(line: 276, column: 65, scope: !6325)
!6362 = !DILocation(line: 276, column: 50, scope: !6325)
!6363 = !DILocation(line: 279, column: 2, scope: !6325)
!6364 = !DILocation(line: 280, column: 1, scope: !6325)
!6365 = distinct !DISubprogram(name: "bcm3510_set_freq", scope: !3, file: !3, line: 452, type: !6366, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!6366 = !DISubroutineType(types: !6367)
!6367 = !{!331, !4455, !415}
!6368 = !DILocalVariable(name: "st", arg: 1, scope: !6365, file: !3, line: 452, type: !4455)
!6369 = !DILocation(line: 452, column: 51, scope: !6365)
!6370 = !DILocalVariable(name: "freq", arg: 2, scope: !6365, file: !3, line: 452, type: !415)
!6371 = !DILocation(line: 452, column: 58, scope: !6365)
!6372 = !DILocalVariable(name: "bc", scope: !6365, file: !3, line: 454, type: !296)
!6373 = !DILocation(line: 454, column: 5, scope: !6365)
!6374 = !DILocalVariable(name: "a", scope: !6365, file: !3, line: 454, type: !296)
!6375 = !DILocation(line: 454, column: 8, scope: !6365)
!6376 = !DILocalVariable(name: "n", scope: !6365, file: !3, line: 455, type: !344)
!6377 = !DILocation(line: 455, column: 6, scope: !6365)
!6378 = !DILocalVariable(name: "YIntercept", scope: !6365, file: !3, line: 456, type: !668)
!6379 = !DILocation(line: 456, column: 6, scope: !6365)
!6380 = !DILocalVariable(name: "Tfvco1", scope: !6365, file: !3, line: 456, type: !668)
!6381 = !DILocation(line: 456, column: 17, scope: !6365)
!6382 = !DILocation(line: 458, column: 7, scope: !6365)
!6383 = !DILocation(line: 460, column: 2, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 460, column: 2)
!6385 = !DILocation(line: 460, column: 2, scope: !6365)
!6386 = !DILocation(line: 462, column: 6, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 462, column: 6)
!6388 = !DILocation(line: 462, column: 11, scope: !6387)
!6389 = !DILocation(line: 462, column: 6, scope: !6365)
!6390 = !DILocation(line: 463, column: 6, scope: !6387)
!6391 = !DILocation(line: 463, column: 3, scope: !6387)
!6392 = !DILocation(line: 464, column: 11, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6387, file: !3, line: 464, column: 11)
!6394 = !DILocation(line: 464, column: 16, scope: !6393)
!6395 = !DILocation(line: 464, column: 11, scope: !6387)
!6396 = !DILocation(line: 465, column: 6, scope: !6393)
!6397 = !DILocation(line: 465, column: 3, scope: !6393)
!6398 = !DILocation(line: 467, column: 6, scope: !6393)
!6399 = !DILocation(line: 469, column: 6, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 469, column: 6)
!6401 = !DILocation(line: 469, column: 11, scope: !6400)
!6402 = !DILocation(line: 469, column: 6, scope: !6365)
!6403 = !DILocation(line: 470, column: 8, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6400, file: !3, line: 469, column: 22)
!6405 = !DILocation(line: 471, column: 14, scope: !6404)
!6406 = !DILocation(line: 472, column: 2, scope: !6404)
!6407 = !DILocation(line: 472, column: 13, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6400, file: !3, line: 472, column: 13)
!6409 = !DILocation(line: 472, column: 18, scope: !6408)
!6410 = !DILocation(line: 472, column: 13, scope: !6400)
!6411 = !DILocation(line: 473, column: 8, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 472, column: 28)
!6413 = !DILocation(line: 474, column: 14, scope: !6412)
!6414 = !DILocation(line: 475, column: 2, scope: !6412)
!6415 = !DILocation(line: 475, column: 13, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 475, column: 13)
!6417 = !DILocation(line: 475, column: 18, scope: !6416)
!6418 = !DILocation(line: 475, column: 13, scope: !6408)
!6419 = !DILocation(line: 476, column: 8, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 475, column: 27)
!6421 = !DILocation(line: 477, column: 14, scope: !6420)
!6422 = !DILocation(line: 478, column: 2, scope: !6420)
!6423 = !DILocation(line: 479, column: 8, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 478, column: 9)
!6425 = !DILocation(line: 480, column: 14, scope: !6424)
!6426 = !DILocation(line: 483, column: 14, scope: !6365)
!6427 = !DILocation(line: 483, column: 18, scope: !6365)
!6428 = !DILocation(line: 483, column: 24, scope: !6365)
!6429 = !DILocation(line: 483, column: 30, scope: !6365)
!6430 = !DILocation(line: 483, column: 28, scope: !6365)
!6431 = !DILocation(line: 483, column: 41, scope: !6365)
!6432 = !DILocation(line: 483, column: 44, scope: !6365)
!6433 = !DILocation(line: 483, column: 9, scope: !6365)
!6434 = !DILocation(line: 485, column: 6, scope: !6365)
!6435 = !DILocation(line: 485, column: 13, scope: !6365)
!6436 = !DILocation(line: 485, column: 4, scope: !6365)
!6437 = !DILocation(line: 486, column: 6, scope: !6365)
!6438 = !DILocation(line: 486, column: 13, scope: !6365)
!6439 = !DILocation(line: 486, column: 4, scope: !6365)
!6440 = !DILocation(line: 488, column: 2, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 488, column: 2)
!6442 = !DILocation(line: 488, column: 2, scope: !6365)
!6443 = !DILocation(line: 489, column: 6, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 489, column: 6)
!6445 = !DILocation(line: 489, column: 8, scope: !6444)
!6446 = !DILocation(line: 489, column: 14, scope: !6444)
!6447 = !DILocation(line: 489, column: 17, scope: !6444)
!6448 = !DILocation(line: 489, column: 19, scope: !6444)
!6449 = !DILocation(line: 489, column: 6, scope: !6365)
!6450 = !DILocation(line: 490, column: 28, scope: !6444)
!6451 = !DILocation(line: 490, column: 31, scope: !6444)
!6452 = !DILocation(line: 490, column: 34, scope: !6444)
!6453 = !DILocation(line: 490, column: 36, scope: !6444)
!6454 = !DILocation(line: 490, column: 10, scope: !6444)
!6455 = !DILocation(line: 490, column: 3, scope: !6444)
!6456 = !DILocation(line: 492, column: 2, scope: !6365)
!6457 = !DILocation(line: 493, column: 1, scope: !6365)
!6458 = distinct !DISubprogram(name: "bcm3510_tuner_cmd", scope: !3, file: !3, line: 363, type: !6459, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!331, !4455, !296, !344, !296}
!6461 = !DILocalVariable(name: "st", arg: 1, scope: !6458, file: !3, line: 363, type: !4455)
!6462 = !DILocation(line: 363, column: 52, scope: !6458)
!6463 = !DILocalVariable(name: "bc", arg: 2, scope: !6458, file: !3, line: 363, type: !296)
!6464 = !DILocation(line: 363, column: 58, scope: !6458)
!6465 = !DILocalVariable(name: "n", arg: 3, scope: !6458, file: !3, line: 363, type: !344)
!6466 = !DILocation(line: 363, column: 66, scope: !6458)
!6467 = !DILocalVariable(name: "a", arg: 4, scope: !6458, file: !3, line: 363, type: !296)
!6468 = !DILocation(line: 363, column: 72, scope: !6458)
!6469 = !DILocalVariable(name: "c", scope: !6458, file: !3, line: 365, type: !6470)
!6470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_hab_cmd_tune", file: !4467, line: 332, size: 288, elements: !6471)
!6471 = !{!6472, !6473, !6474, !6475, !6476}
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6470, file: !4467, line: 333, baseType: !296, size: 8)
!6473 = !DIDerivedType(tag: DW_TAG_member, name: "clock_width", scope: !6470, file: !4467, line: 334, baseType: !296, size: 8, offset: 8)
!6474 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !6470, file: !4467, line: 335, baseType: !296, size: 8, offset: 16)
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "TUNCTL_state", scope: !6470, file: !4467, line: 336, baseType: !296, size: 8, offset: 24)
!6476 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dat", scope: !6470, file: !4467, line: 338, baseType: !6477, size: 256, offset: 32)
!6477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6478, size: 256, elements: !2113)
!6478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm3510_hab_cmd_tune_ctrl_data_pair", file: !4467, line: 311, size: 16, elements: !6479)
!6479 = !{!6480, !6488}
!6480 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !6478, file: !4467, line: 327, baseType: !6481, size: 8)
!6481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6478, file: !4467, line: 312, size: 8, elements: !6482)
!6482 = !{!6483, !6484, !6485, !6486, !6487}
!6483 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6481, file: !4467, line: 321, baseType: !296, size: 3, flags: DIFlagBitField, extraData: i64 0)
!6484 = !DIDerivedType(tag: DW_TAG_member, name: "unk", scope: !6481, file: !4467, line: 322, baseType: !296, size: 2, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6485 = !DIDerivedType(tag: DW_TAG_member, name: "clk_off", scope: !6481, file: !4467, line: 323, baseType: !296, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6486 = !DIDerivedType(tag: DW_TAG_member, name: "cs0", scope: !6481, file: !4467, line: 324, baseType: !296, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "cs1", scope: !6481, file: !4467, line: 325, baseType: !296, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!6488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6478, file: !4467, line: 329, baseType: !296, size: 8, offset: 8)
!6489 = !DILocation(line: 365, column: 30, scope: !6458)
!6490 = !DILocation(line: 366, column: 2, scope: !6458)
!6491 = !DILocation(line: 369, column: 4, scope: !6458)
!6492 = !DILocation(line: 369, column: 11, scope: !6458)
!6493 = !DILocation(line: 370, column: 4, scope: !6458)
!6494 = !DILocation(line: 370, column: 16, scope: !6458)
!6495 = !DILocation(line: 373, column: 4, scope: !6458)
!6496 = !DILocation(line: 373, column: 9, scope: !6458)
!6497 = !DILocation(line: 375, column: 4, scope: !6458)
!6498 = !DILocation(line: 375, column: 17, scope: !6458)
!6499 = !DILocation(line: 378, column: 4, scope: !6458)
!6500 = !DILocation(line: 378, column: 2, scope: !6458)
!6501 = !DILocation(line: 378, column: 15, scope: !6458)
!6502 = !DILocation(line: 378, column: 20, scope: !6458)
!6503 = !DILocation(line: 378, column: 25, scope: !6458)
!6504 = !DILocation(line: 379, column: 34, scope: !6458)
!6505 = !DILocation(line: 379, column: 32, scope: !6458)
!6506 = !DILocation(line: 379, column: 27, scope: !6458)
!6507 = !DILocation(line: 379, column: 4, scope: !6458)
!6508 = !DILocation(line: 379, column: 2, scope: !6458)
!6509 = !DILocation(line: 379, column: 15, scope: !6458)
!6510 = !DILocation(line: 379, column: 25, scope: !6458)
!6511 = !DILocation(line: 382, column: 4, scope: !6458)
!6512 = !DILocation(line: 382, column: 2, scope: !6458)
!6513 = !DILocation(line: 382, column: 15, scope: !6458)
!6514 = !DILocation(line: 382, column: 20, scope: !6458)
!6515 = !DILocation(line: 382, column: 25, scope: !6458)
!6516 = !DILocation(line: 383, column: 4, scope: !6458)
!6517 = !DILocation(line: 383, column: 2, scope: !6458)
!6518 = !DILocation(line: 383, column: 15, scope: !6458)
!6519 = !DILocation(line: 383, column: 25, scope: !6458)
!6520 = !DILocation(line: 386, column: 4, scope: !6458)
!6521 = !DILocation(line: 386, column: 2, scope: !6458)
!6522 = !DILocation(line: 386, column: 15, scope: !6458)
!6523 = !DILocation(line: 386, column: 20, scope: !6458)
!6524 = !DILocation(line: 386, column: 25, scope: !6458)
!6525 = !DILocation(line: 387, column: 4, scope: !6458)
!6526 = !DILocation(line: 387, column: 2, scope: !6458)
!6527 = !DILocation(line: 387, column: 15, scope: !6458)
!6528 = !DILocation(line: 387, column: 25, scope: !6458)
!6529 = !DILocation(line: 390, column: 4, scope: !6458)
!6530 = !DILocation(line: 390, column: 2, scope: !6458)
!6531 = !DILocation(line: 390, column: 15, scope: !6458)
!6532 = !DILocation(line: 390, column: 20, scope: !6458)
!6533 = !DILocation(line: 390, column: 25, scope: !6458)
!6534 = !DILocation(line: 391, column: 4, scope: !6458)
!6535 = !DILocation(line: 391, column: 2, scope: !6458)
!6536 = !DILocation(line: 391, column: 15, scope: !6458)
!6537 = !DILocation(line: 391, column: 20, scope: !6458)
!6538 = !DILocation(line: 391, column: 28, scope: !6458)
!6539 = !DILocation(line: 392, column: 4, scope: !6458)
!6540 = !DILocation(line: 392, column: 2, scope: !6458)
!6541 = !DILocation(line: 392, column: 15, scope: !6458)
!6542 = !DILocation(line: 392, column: 20, scope: !6458)
!6543 = !DILocation(line: 392, column: 25, scope: !6458)
!6544 = !DILocation(line: 393, column: 4, scope: !6458)
!6545 = !DILocation(line: 393, column: 2, scope: !6458)
!6546 = !DILocation(line: 393, column: 15, scope: !6458)
!6547 = !DILocation(line: 393, column: 25, scope: !6458)
!6548 = !DILocation(line: 396, column: 4, scope: !6458)
!6549 = !DILocation(line: 396, column: 2, scope: !6458)
!6550 = !DILocation(line: 396, column: 15, scope: !6458)
!6551 = !DILocation(line: 396, column: 20, scope: !6458)
!6552 = !DILocation(line: 396, column: 25, scope: !6458)
!6553 = !DILocation(line: 397, column: 27, scope: !6458)
!6554 = !DILocation(line: 397, column: 29, scope: !6458)
!6555 = !DILocation(line: 397, column: 4, scope: !6458)
!6556 = !DILocation(line: 397, column: 2, scope: !6458)
!6557 = !DILocation(line: 397, column: 15, scope: !6458)
!6558 = !DILocation(line: 397, column: 25, scope: !6458)
!6559 = !DILocation(line: 400, column: 4, scope: !6458)
!6560 = !DILocation(line: 400, column: 2, scope: !6458)
!6561 = !DILocation(line: 400, column: 15, scope: !6458)
!6562 = !DILocation(line: 400, column: 20, scope: !6458)
!6563 = !DILocation(line: 400, column: 25, scope: !6458)
!6564 = !DILocation(line: 401, column: 29, scope: !6458)
!6565 = !DILocation(line: 401, column: 31, scope: !6458)
!6566 = !DILocation(line: 401, column: 38, scope: !6458)
!6567 = !DILocation(line: 401, column: 47, scope: !6458)
!6568 = !DILocation(line: 401, column: 49, scope: !6458)
!6569 = !DILocation(line: 401, column: 44, scope: !6458)
!6570 = !DILocation(line: 401, column: 27, scope: !6458)
!6571 = !DILocation(line: 401, column: 4, scope: !6458)
!6572 = !DILocation(line: 401, column: 2, scope: !6458)
!6573 = !DILocation(line: 401, column: 15, scope: !6458)
!6574 = !DILocation(line: 401, column: 25, scope: !6458)
!6575 = !DILocation(line: 404, column: 4, scope: !6458)
!6576 = !DILocation(line: 404, column: 2, scope: !6458)
!6577 = !DILocation(line: 404, column: 15, scope: !6458)
!6578 = !DILocation(line: 404, column: 20, scope: !6458)
!6579 = !DILocation(line: 404, column: 25, scope: !6458)
!6580 = !DILocation(line: 405, column: 28, scope: !6458)
!6581 = !DILocation(line: 405, column: 30, scope: !6458)
!6582 = !DILocation(line: 405, column: 36, scope: !6458)
!6583 = !DILocation(line: 405, column: 27, scope: !6458)
!6584 = !DILocation(line: 405, column: 4, scope: !6458)
!6585 = !DILocation(line: 405, column: 2, scope: !6458)
!6586 = !DILocation(line: 405, column: 15, scope: !6458)
!6587 = !DILocation(line: 405, column: 25, scope: !6458)
!6588 = !DILocation(line: 408, column: 4, scope: !6458)
!6589 = !DILocation(line: 408, column: 2, scope: !6458)
!6590 = !DILocation(line: 408, column: 15, scope: !6458)
!6591 = !DILocation(line: 408, column: 20, scope: !6458)
!6592 = !DILocation(line: 408, column: 25, scope: !6458)
!6593 = !DILocation(line: 409, column: 4, scope: !6458)
!6594 = !DILocation(line: 409, column: 2, scope: !6458)
!6595 = !DILocation(line: 409, column: 15, scope: !6458)
!6596 = !DILocation(line: 409, column: 20, scope: !6458)
!6597 = !DILocation(line: 409, column: 28, scope: !6458)
!6598 = !DILocation(line: 410, column: 4, scope: !6458)
!6599 = !DILocation(line: 410, column: 2, scope: !6458)
!6600 = !DILocation(line: 410, column: 15, scope: !6458)
!6601 = !DILocation(line: 410, column: 20, scope: !6458)
!6602 = !DILocation(line: 410, column: 25, scope: !6458)
!6603 = !DILocation(line: 411, column: 4, scope: !6458)
!6604 = !DILocation(line: 411, column: 2, scope: !6458)
!6605 = !DILocation(line: 411, column: 15, scope: !6458)
!6606 = !DILocation(line: 411, column: 25, scope: !6458)
!6607 = !DILocation(line: 414, column: 4, scope: !6458)
!6608 = !DILocation(line: 414, column: 2, scope: !6458)
!6609 = !DILocation(line: 414, column: 15, scope: !6458)
!6610 = !DILocation(line: 414, column: 20, scope: !6458)
!6611 = !DILocation(line: 414, column: 25, scope: !6458)
!6612 = !DILocation(line: 415, column: 4, scope: !6458)
!6613 = !DILocation(line: 415, column: 2, scope: !6458)
!6614 = !DILocation(line: 415, column: 15, scope: !6458)
!6615 = !DILocation(line: 415, column: 25, scope: !6458)
!6616 = !DILocation(line: 418, column: 4, scope: !6458)
!6617 = !DILocation(line: 418, column: 2, scope: !6458)
!6618 = !DILocation(line: 418, column: 15, scope: !6458)
!6619 = !DILocation(line: 418, column: 20, scope: !6458)
!6620 = !DILocation(line: 418, column: 25, scope: !6458)
!6621 = !DILocation(line: 419, column: 4, scope: !6458)
!6622 = !DILocation(line: 419, column: 2, scope: !6458)
!6623 = !DILocation(line: 419, column: 15, scope: !6458)
!6624 = !DILocation(line: 419, column: 25, scope: !6458)
!6625 = !DILocation(line: 422, column: 4, scope: !6458)
!6626 = !DILocation(line: 422, column: 2, scope: !6458)
!6627 = !DILocation(line: 422, column: 16, scope: !6458)
!6628 = !DILocation(line: 422, column: 21, scope: !6458)
!6629 = !DILocation(line: 422, column: 26, scope: !6458)
!6630 = !DILocation(line: 423, column: 4, scope: !6458)
!6631 = !DILocation(line: 423, column: 2, scope: !6458)
!6632 = !DILocation(line: 423, column: 16, scope: !6458)
!6633 = !DILocation(line: 423, column: 26, scope: !6458)
!6634 = !DILocation(line: 426, column: 4, scope: !6458)
!6635 = !DILocation(line: 426, column: 2, scope: !6458)
!6636 = !DILocation(line: 426, column: 16, scope: !6458)
!6637 = !DILocation(line: 426, column: 21, scope: !6458)
!6638 = !DILocation(line: 426, column: 26, scope: !6458)
!6639 = !DILocation(line: 427, column: 4, scope: !6458)
!6640 = !DILocation(line: 427, column: 2, scope: !6458)
!6641 = !DILocation(line: 427, column: 16, scope: !6458)
!6642 = !DILocation(line: 427, column: 21, scope: !6458)
!6643 = !DILocation(line: 427, column: 29, scope: !6458)
!6644 = !DILocation(line: 428, column: 4, scope: !6458)
!6645 = !DILocation(line: 428, column: 2, scope: !6458)
!6646 = !DILocation(line: 428, column: 16, scope: !6458)
!6647 = !DILocation(line: 428, column: 21, scope: !6458)
!6648 = !DILocation(line: 428, column: 26, scope: !6458)
!6649 = !DILocation(line: 429, column: 4, scope: !6458)
!6650 = !DILocation(line: 429, column: 2, scope: !6458)
!6651 = !DILocation(line: 429, column: 16, scope: !6458)
!6652 = !DILocation(line: 429, column: 26, scope: !6458)
!6653 = !DILocation(line: 432, column: 4, scope: !6458)
!6654 = !DILocation(line: 432, column: 2, scope: !6458)
!6655 = !DILocation(line: 432, column: 16, scope: !6458)
!6656 = !DILocation(line: 432, column: 21, scope: !6458)
!6657 = !DILocation(line: 432, column: 26, scope: !6458)
!6658 = !DILocation(line: 433, column: 4, scope: !6458)
!6659 = !DILocation(line: 433, column: 2, scope: !6458)
!6660 = !DILocation(line: 433, column: 16, scope: !6458)
!6661 = !DILocation(line: 433, column: 26, scope: !6458)
!6662 = !DILocation(line: 436, column: 4, scope: !6458)
!6663 = !DILocation(line: 436, column: 2, scope: !6458)
!6664 = !DILocation(line: 436, column: 16, scope: !6458)
!6665 = !DILocation(line: 436, column: 21, scope: !6458)
!6666 = !DILocation(line: 436, column: 26, scope: !6458)
!6667 = !DILocation(line: 437, column: 4, scope: !6458)
!6668 = !DILocation(line: 437, column: 2, scope: !6458)
!6669 = !DILocation(line: 437, column: 16, scope: !6458)
!6670 = !DILocation(line: 437, column: 26, scope: !6458)
!6671 = !DILocation(line: 440, column: 4, scope: !6458)
!6672 = !DILocation(line: 440, column: 2, scope: !6458)
!6673 = !DILocation(line: 440, column: 16, scope: !6458)
!6674 = !DILocation(line: 440, column: 21, scope: !6458)
!6675 = !DILocation(line: 440, column: 26, scope: !6458)
!6676 = !DILocation(line: 441, column: 4, scope: !6458)
!6677 = !DILocation(line: 441, column: 2, scope: !6458)
!6678 = !DILocation(line: 441, column: 16, scope: !6458)
!6679 = !DILocation(line: 441, column: 26, scope: !6458)
!6680 = !DILocation(line: 444, column: 4, scope: !6458)
!6681 = !DILocation(line: 444, column: 2, scope: !6458)
!6682 = !DILocation(line: 444, column: 16, scope: !6458)
!6683 = !DILocation(line: 444, column: 21, scope: !6458)
!6684 = !DILocation(line: 444, column: 26, scope: !6458)
!6685 = !DILocation(line: 445, column: 4, scope: !6458)
!6686 = !DILocation(line: 445, column: 2, scope: !6458)
!6687 = !DILocation(line: 445, column: 16, scope: !6458)
!6688 = !DILocation(line: 445, column: 21, scope: !6458)
!6689 = !DILocation(line: 445, column: 29, scope: !6458)
!6690 = !DILocation(line: 446, column: 4, scope: !6458)
!6691 = !DILocation(line: 446, column: 2, scope: !6458)
!6692 = !DILocation(line: 446, column: 16, scope: !6458)
!6693 = !DILocation(line: 446, column: 21, scope: !6458)
!6694 = !DILocation(line: 446, column: 26, scope: !6458)
!6695 = !DILocation(line: 447, column: 4, scope: !6458)
!6696 = !DILocation(line: 447, column: 2, scope: !6458)
!6697 = !DILocation(line: 447, column: 16, scope: !6458)
!6698 = !DILocation(line: 447, column: 26, scope: !6458)
!6699 = !DILocation(line: 449, column: 28, scope: !6458)
!6700 = !DILocation(line: 449, column: 52, scope: !6458)
!6701 = !DILocation(line: 449, column: 9, scope: !6458)
!6702 = !DILocation(line: 449, column: 2, scope: !6458)
!6703 = distinct !DISubprogram(name: "bcm3510_refresh_state", scope: !3, file: !3, line: 282, type: !5054, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !745)
!6704 = !DILocalVariable(name: "st", arg: 1, scope: !6703, file: !3, line: 282, type: !4455)
!6705 = !DILocation(line: 282, column: 56, scope: !6703)
!6706 = !DILocation(line: 284, column: 6, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6703, file: !3, line: 284, column: 6)
!6708 = !DILocation(line: 284, column: 6, scope: !6703)
!6709 = !DILocation(line: 285, column: 22, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6707, file: !3, line: 284, column: 49)
!6711 = !DILocation(line: 285, column: 68, scope: !6710)
!6712 = !DILocation(line: 285, column: 72, scope: !6710)
!6713 = !DILocation(line: 285, column: 61, scope: !6710)
!6714 = !DILocation(line: 285, column: 3, scope: !6710)
!6715 = !DILocation(line: 286, column: 22, scope: !6710)
!6716 = !DILocation(line: 286, column: 68, scope: !6710)
!6717 = !DILocation(line: 286, column: 72, scope: !6710)
!6718 = !DILocation(line: 286, column: 61, scope: !6710)
!6719 = !DILocation(line: 286, column: 3, scope: !6710)
!6720 = !DILocation(line: 287, column: 27, scope: !6710)
!6721 = !DILocation(line: 287, column: 38, scope: !6710)
!6722 = !DILocation(line: 287, column: 42, scope: !6710)
!6723 = !DILocation(line: 287, column: 63, scope: !6710)
!6724 = !DILocation(line: 287, column: 67, scope: !6710)
!6725 = !DILocation(line: 287, column: 35, scope: !6710)
!6726 = !DILocation(line: 287, column: 3, scope: !6710)
!6727 = !DILocation(line: 287, column: 7, scope: !6710)
!6728 = !DILocation(line: 287, column: 25, scope: !6710)
!6729 = !DILocation(line: 288, column: 2, scope: !6710)
!6730 = !DILocation(line: 289, column: 2, scope: !6703)
