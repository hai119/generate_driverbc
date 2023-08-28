; ModuleID = '../bcout/drivers/media/dvb-frontends/lgs8gxx.llvm.bc'
source_filename = "drivers/media/dvb-frontends/lgs8gxx.c"
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
%struct.lgs8gxx_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8 }
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
%struct.lgs8gxx_state = type { %struct.i2c_adapter*, %struct.lgs8gxx_config*, %struct.dvb_frontend, i16 }
%struct.firmware = type { i64, i8*, i8* }

@__param_str_debug = internal constant [14 x i8] c"lgs8gxx.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !4456
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !4359
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"lgs8gxx.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !4411
@__UNIQUE_ID_debug221 = internal constant [65 x i8] c"lgs8gxx.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !4416
@__param_str_fake_signal_str = internal constant [24 x i8] c"lgs8gxx.fake_signal_str\00", align 16, !dbg !4458
@fake_signal_str = internal global i32 1, align 4, !dbg !4463
@__param_fake_signal_str = internal constant %struct.kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__param_str_fake_signal_str, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @fake_signal_str to i8*) } }, section "__param", align 8, !dbg !4421
@__UNIQUE_ID_fake_signal_strtype222 = internal constant [37 x i8] c"lgs8gxx.parmtype=fake_signal_str:int\00", section ".modinfo", align 1, !dbg !4423
@__UNIQUE_ID_fake_signal_str223 = internal constant [112 x i8] c"lgs8gxx.parm=fake_signal_str:fake signal strength for LGS8913.Signal strength calculation is slow.(default:on).\00", section ".modinfo", align 1, !dbg !4428
@.str = private unnamed_addr constant [17 x i8] c"\017lgs8gxx: %s()\0A\00", align 1
@__func__.lgs8gxx_attach = private unnamed_addr constant [15 x i8] c"lgs8gxx_attach\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\017lgs8gxx: %s lgs8gxx not found at i2c addr 0x%02X\0A\00", align 1
@lgs8gxx_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Legend Silicon LGS8913/LGS8GXX DMB-TH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 474000000, i32 858000000, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 721408 }, [8 x i8] c"\0D\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @lgs8gxx_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @lgs8gxx_init, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* @lgs8gxx_write, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @lgs8gxx_set_fe, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @lgs8gxx_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* null, i32 (%struct.dvb_frontend*, i32*)* @lgs8gxx_read_status, i32 (%struct.dvb_frontend*, i32*)* @lgs8gxx_read_ber, i32 (%struct.dvb_frontend*, i16*)* @lgs8gxx_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @lgs8gxx_read_snr, i32 (%struct.dvb_frontend*, i32*)* @lgs8gxx_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @lgs8gxx_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4465
@.str.2 = private unnamed_addr constant [27 x i8] c"\017lgs8gxx: %s() error_out\0A\00", align 1
@__UNIQUE_ID_description224 = internal constant [77 x i8] c"lgs8gxx.description=Legend Silicon LGS8913/LGS8GXX DMB-TH demodulator driver\00", section ".modinfo", align 1, !dbg !4433
@__UNIQUE_ID_author225 = internal constant [56 x i8] c"lgs8gxx.author=David T. L. Wong <davidtlwong@gmail.com>\00", section ".modinfo", align 1, !dbg !4438
@__UNIQUE_ID_file226 = internal constant [49 x i8] c"lgs8gxx.file=drivers/media/dvb-frontends/lgs8gxx\00", section ".modinfo", align 1, !dbg !4443
@__UNIQUE_ID_license227 = internal constant [20 x i8] c"lgs8gxx.license=GPL\00", section ".modinfo", align 1, !dbg !4448
@__UNIQUE_ID_firmware228 = internal constant [28 x i8] c"lgs8gxx.firmware=lgs8g75.fw\00", section ".modinfo", align 1, !dbg !4451
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\017lgs8gxx: %s: error reg=0x%x, ret=%i\0A\00", align 1
@__func__.lgs8gxx_read_reg = private unnamed_addr constant [17 x i8] c"lgs8gxx_read_reg\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\017lgs8gxx: %s: reg=0x%02X, data=0x%02X\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\017lgs8gxx: %s\0A\00", align 1
@__func__.lgs8gxx_release = private unnamed_addr constant [16 x i8] c"lgs8gxx_release\00", align 1
@__func__.lgs8gxx_init = private unnamed_addr constant [13 x i8] c"lgs8gxx_init\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\017lgs8gxx: reg 0 = 0x%02X\0A\00", align 1
@__func__.lgs8gxx_write_reg = private unnamed_addr constant [18 x i8] c"lgs8gxx_write_reg\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\017lgs8gxx: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\017lgs8gxx: Set IF Freq to %dkHz\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\017lgs8gxx: Set IF Freq to baseband\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\017lgs8gxx: AFC_INIT_FREQ = 0x%08X\0A\00", align 1
@__func__.lgs8gxx_set_fe = private unnamed_addr constant [15 x i8] c"lgs8gxx_set_fe\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"\017lgs8gxx: lgs8gxx_auto_detect failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\017lgs8gxx: detected param = 0x%02X\0A\00", align 1
@__func__.lgs8gxx_auto_detect = private unnamed_addr constant [20 x i8] c"lgs8gxx_auto_detect\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"\017lgs8gxx: GI 945 locked\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"\017lgs8gxx: GI 595 locked\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"\017lgs8gxx: GI 420 locked\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"\017lgs8gxx: try GI 945\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\017lgs8gxx: try GI 595\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"\017lgs8gxx: try GI 420\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"\017lgs8gxx: auto detect finished\0A\00", align 1
@__func__.lgs8gxx_read_status = private unnamed_addr constant [20 x i8] c"lgs8gxx_read_status\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"\017lgs8gxx: Reg 0x4B: 0x%02X\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\017lgs8gxx: %s: fe_status=0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"\017lgs8gxx: AFC = %u kHz\0A\00", align 1
@__func__.lgs8gxx_read_ber = private unnamed_addr constant [17 x i8] c"lgs8gxx_read_ber\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"\017lgs8gxx: error=%d total=%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"\017lgs8gxx: %s: ber=0x%x\0A\00", align 1
@__func__.lgs8913_read_signal_strength = private unnamed_addr constant [29 x i8] c"lgs8913_read_signal_strength\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"\017lgs8gxx: Fake signal strength\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"\017lgs8gxx: gi = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"\017lgs8gxx: %s: signal=0x%02X\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"\017lgs8gxx: %s: AVG Noise=0x%02X\0A\00", align 1
@__func__.lgs8g75_read_signal_strength = private unnamed_addr constant [29 x i8] c"lgs8g75_read_signal_strength\00", align 1
@__func__.lgs8gxx_read_signal_agc = private unnamed_addr constant [24 x i8] c"lgs8gxx_read_signal_agc\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"\017lgs8gxx: agc_lvl: 0x%04X\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"\017lgs8gxx: AVG Noise=0x%02X\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"\017lgs8gxx: snr=0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"\017lgs8gxx: %s: ucblocks=0x%x\0A\00", align 1
@__func__.lgs8gxx_read_ucblocks = private unnamed_addr constant [22 x i8] c"lgs8gxx_read_ucblocks\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"lgs8g75.fw\00", align 1
@llvm.used = appending global [11 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_fake_signal_str to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_fake_signal_strtype222, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @__UNIQUE_ID_fake_signal_str223, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @__UNIQUE_ID_description224, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_author225, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file226, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license227, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_firmware228, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @lgs8gxx_attach(%struct.lgs8gxx_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4476 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.lgs8gxx_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %priv = alloca %struct.lgs8gxx_state*, align 8
  %data = alloca i8, align 1
  store %struct.lgs8gxx_config* %config, %struct.lgs8gxx_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_config** %config.addr, metadata !4479, metadata !DIExpression()), !dbg !4480
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !4483, metadata !DIExpression()), !dbg !4484
  store %struct.lgs8gxx_state* null, %struct.lgs8gxx_state** %priv, align 8, !dbg !4484
  call void @llvm.dbg.declare(metadata i8* %data, metadata !4485, metadata !DIExpression()), !dbg !4486
  store i8 0, i8* %data, align 1, !dbg !4486
  br label %do.body, !dbg !4487

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !4488
  %tobool = icmp ne i32 %0, 0, !dbg !4488
  br i1 %tobool, label %if.then, label %if.end, !dbg !4491

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.lgs8gxx_attach, i64 0, i64 0)) #8, !dbg !4488
  br label %if.end, !dbg !4488

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4491

do.end:                                           ; preds = %if.end
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config.addr, align 8, !dbg !4492
  %cmp = icmp eq %struct.lgs8gxx_config* %1, null, !dbg !4494
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !4495

lor.lhs.false:                                    ; preds = %do.end
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4496
  %cmp1 = icmp eq %struct.i2c_adapter* %2, null, !dbg !4497
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4498

if.then2:                                         ; preds = %lor.lhs.false, %do.end
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4499
  br label %return, !dbg !4499

if.end3:                                          ; preds = %lor.lhs.false
  %call4 = call i8* @kzalloc(i64 1304, i32 3264) #9, !dbg !4500
  %3 = bitcast i8* %call4 to %struct.lgs8gxx_state*, !dbg !4500
  store %struct.lgs8gxx_state* %3, %struct.lgs8gxx_state** %priv, align 8, !dbg !4501
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4502
  %cmp5 = icmp eq %struct.lgs8gxx_state* %4, null, !dbg !4504
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4505

if.then6:                                         ; preds = %if.end3
  br label %error_out, !dbg !4506

if.end7:                                          ; preds = %if.end3
  %5 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config.addr, align 8, !dbg !4507
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4508
  %config8 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %6, i32 0, i32 1, !dbg !4509
  store %struct.lgs8gxx_config* %5, %struct.lgs8gxx_config** %config8, align 8, !dbg !4510
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4511
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4512
  %i2c9 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %8, i32 0, i32 0, !dbg !4513
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %i2c9, align 8, !dbg !4514
  %9 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4515
  %call10 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %9, i8 zeroext 0, i8* %data) #9, !dbg !4517
  %cmp11 = icmp ne i32 %call10, 0, !dbg !4518
  br i1 %cmp11, label %if.then12, label %if.end20, !dbg !4519

if.then12:                                        ; preds = %if.end7
  br label %do.body13, !dbg !4520

do.body13:                                        ; preds = %if.then12
  %10 = load i32, i32* @debug, align 4, !dbg !4522
  %tobool14 = icmp ne i32 %10, 0, !dbg !4522
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !4525

if.then15:                                        ; preds = %do.body13
  %11 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4522
  %config16 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %11, i32 0, i32 1, !dbg !4522
  %12 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config16, align 8, !dbg !4522
  %demod_address = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %12, i32 0, i32 1, !dbg !4522
  %13 = load i8, i8* %demod_address, align 1, !dbg !4522
  %conv = zext i8 %13 to i32, !dbg !4522
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.lgs8gxx_attach, i64 0, i64 0), i32 %conv) #8, !dbg !4522
  br label %if.end18, !dbg !4522

if.end18:                                         ; preds = %if.then15, %do.body13
  br label %do.end19, !dbg !4525

do.end19:                                         ; preds = %if.end18
  br label %error_out, !dbg !4526

if.end20:                                         ; preds = %if.end7
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4527
  %call21 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %14, i8 zeroext 1, i8* %data) #9, !dbg !4528
  %15 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4529
  %frontend = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %15, i32 0, i32 2, !dbg !4530
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4531
  %16 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4532
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @lgs8gxx_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4532
  %17 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4533
  %18 = bitcast %struct.lgs8gxx_state* %17 to i8*, !dbg !4533
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4534
  %frontend22 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %19, i32 0, i32 2, !dbg !4535
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend22, i32 0, i32 3, !dbg !4536
  store i8* %18, i8** %demodulator_priv, align 8, !dbg !4537
  %20 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config.addr, align 8, !dbg !4538
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %20, i32 0, i32 0, !dbg !4540
  %21 = load i8, i8* %prod, align 4, !dbg !4540
  %conv23 = zext i8 %21 to i32, !dbg !4538
  %cmp24 = icmp eq i32 %conv23, 6, !dbg !4541
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !4542

if.then26:                                        ; preds = %if.end20
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4543
  %call27 = call i32 @lgs8g75_init_data(%struct.lgs8gxx_state* %22) #9, !dbg !4544
  br label %if.end28, !dbg !4544

if.end28:                                         ; preds = %if.then26, %if.end20
  %23 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4545
  %frontend29 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %23, i32 0, i32 2, !dbg !4546
  store %struct.dvb_frontend* %frontend29, %struct.dvb_frontend** %retval, align 8, !dbg !4547
  br label %return, !dbg !4547

error_out:                                        ; preds = %do.end19, %if.then6
  call void @llvm.dbg.label(metadata !4548), !dbg !4549
  br label %do.body30, !dbg !4550

do.body30:                                        ; preds = %error_out
  %24 = load i32, i32* @debug, align 4, !dbg !4551
  %tobool31 = icmp ne i32 %24, 0, !dbg !4551
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !4554

if.then32:                                        ; preds = %do.body30
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.lgs8gxx_attach, i64 0, i64 0)) #8, !dbg !4551
  br label %if.end34, !dbg !4551

if.end34:                                         ; preds = %if.then32, %do.body30
  br label %do.end35, !dbg !4554

do.end35:                                         ; preds = %if.end34
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !4555
  %26 = bitcast %struct.lgs8gxx_state* %25 to i8*, !dbg !4555
  call void @kfree(i8* %26) #9, !dbg !4556
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4557
  br label %return, !dbg !4557

return:                                           ; preds = %do.end35, %if.end28, %if.then2
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4558
  ret %struct.dvb_frontend* %27, !dbg !4558
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4559 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4562, metadata !DIExpression()), !dbg !4566
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4572, metadata !DIExpression()), !dbg !4573
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4574, metadata !DIExpression()), !dbg !4575
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4576, metadata !DIExpression()), !dbg !4577
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4578, metadata !DIExpression()), !dbg !4582
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4584, metadata !DIExpression()), !dbg !4588
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4590, metadata !DIExpression()), !dbg !4594
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4599, metadata !DIExpression()), !dbg !4600
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4601, metadata !DIExpression()), !dbg !4602
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4603, metadata !DIExpression()), !dbg !4604
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4605, metadata !DIExpression()), !dbg !4606
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4607, metadata !DIExpression()), !dbg !4608
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4609, metadata !DIExpression()), !dbg !4610
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4611, metadata !DIExpression()), !dbg !4612
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4613, metadata !DIExpression()), !dbg !4614
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  %0 = load i64, i64* %size.addr, align 8, !dbg !4619
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4620
  %or = or i32 %1, 256, !dbg !4621
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4622
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4623
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4624

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4625
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4626
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4627

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4628
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4629
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4630
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4631
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4608
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4632
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4633
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4634
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4635
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4636
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4637
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4638
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4638
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4638
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4638
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4638
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4639
  br label %kmalloc.exit, !dbg !4639

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4640
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4641
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4643

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4644
  br label %kmalloc_index.exit.i, !dbg !4644

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4645
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4647
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4648

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4649
  br label %kmalloc_index.exit.i, !dbg !4649

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4650
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4652
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4653

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4654
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4655
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4656

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4657
  br label %kmalloc_index.exit.i, !dbg !4657

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4658
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4660
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4661

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4663
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4664

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4665
  br label %kmalloc_index.exit.i, !dbg !4665

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4666
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4668
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4669

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4670
  br label %kmalloc_index.exit.i, !dbg !4670

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4671
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4673
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4674

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4678
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4679

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4680
  br label %kmalloc_index.exit.i, !dbg !4680

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4683
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4684

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4685
  br label %kmalloc_index.exit.i, !dbg !4685

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4688
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4689

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4690
  br label %kmalloc_index.exit.i, !dbg !4690

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4691
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4693
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4694

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4695
  br label %kmalloc_index.exit.i, !dbg !4695

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4696
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4698
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4699

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4700
  br label %kmalloc_index.exit.i, !dbg !4700

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4703
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4704

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4708
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4709

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4713
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4714

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4718
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4719

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4720
  br label %kmalloc_index.exit.i, !dbg !4720

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4721
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4723
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4724

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4726
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4728
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4729

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4730
  br label %kmalloc_index.exit.i, !dbg !4730

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4731
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4733
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4734

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4735
  br label %kmalloc_index.exit.i, !dbg !4735

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4736
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4738
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4739

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4740
  br label %kmalloc_index.exit.i, !dbg !4740

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4741
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4743
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4744

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4745
  br label %kmalloc_index.exit.i, !dbg !4745

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4746
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4748
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4749

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4750
  br label %kmalloc_index.exit.i, !dbg !4750

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4751
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4753
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4754

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4755
  br label %kmalloc_index.exit.i, !dbg !4755

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4756
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4758
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4759

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4760
  br label %kmalloc_index.exit.i, !dbg !4760

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4761
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4763
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4764

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4765
  br label %kmalloc_index.exit.i, !dbg !4765

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4766
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4768
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4769

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4770
  br label %kmalloc_index.exit.i, !dbg !4770

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4771
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4773
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4774

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4775
  br label %kmalloc_index.exit.i, !dbg !4775

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4776
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4778
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4779

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4780
  br label %kmalloc_index.exit.i, !dbg !4780

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4781
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4783
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4784

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4785
  br label %kmalloc_index.exit.i, !dbg !4785

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4786, !srcloc !4789
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #10, !dbg !4790, !srcloc !4793
  unreachable, !dbg !4794

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4795
  store i32 %45, i32* %index.i, align 4, !dbg !4796
  %46 = load i32, i32* %index.i, align 4, !dbg !4797
  %tobool.i = icmp ne i32 %46, 0, !dbg !4797
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4799

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4800
  br label %kmalloc.exit, !dbg !4800

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4801
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4802
  %and.i.i = and i32 %48, 17, !dbg !4802
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4802
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4802
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4802
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4802
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4804

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4805
  br label %kmalloc_type.exit.i, !dbg !4805

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4806
  %and2.i.i = and i32 %49, 1, !dbg !4807
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4806
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4806
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4806
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4808
  br label %kmalloc_type.exit.i, !dbg !4808

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4809
  %idxprom.i = zext i32 %51 to i64, !dbg !4810
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4810
  %52 = load i32, i32* %index.i, align 4, !dbg !4811
  %idxprom6.i = zext i32 %52 to i64, !dbg !4810
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4810
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4810
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4812
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4813
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4814
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4815
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4816
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4816
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4816
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4816
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4816
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4577
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4817
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4818
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4819
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4820
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4821
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4822
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4823
  store i8* %62, i8** %retval.i, align 8, !dbg !4824
  br label %kmalloc.exit, !dbg !4824

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4825
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4826
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4827
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4827
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4827
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4827
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4827
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4828
  br label %kmalloc.exit, !dbg !4828

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4829
  ret i8* %65, !dbg !4830
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %priv, i8 zeroext %reg, i8* %p_data) #0 !dbg !4831 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %reg.addr = alloca i8, align 1
  %p_data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %dev_addr = alloca i8, align 1
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  store i8* %p_data, i8** %p_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_data.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4840, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.declare(metadata i8* %dev_addr, metadata !4842, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4844, metadata !DIExpression()), !dbg !4846
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4847
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4848
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4847
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4849, metadata !DIExpression()), !dbg !4850
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4850
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4850
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4851, metadata !DIExpression()), !dbg !4853
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4854
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4855
  store i16 0, i16* %addr, align 16, !dbg !4855
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4855
  store i16 0, i16* %flags, align 2, !dbg !4855
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4855
  store i16 1, i16* %len, align 4, !dbg !4855
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4855
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4856
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4855
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4854
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4857
  store i16 0, i16* %addr2, align 16, !dbg !4857
  %flags3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4857
  store i16 1, i16* %flags3, align 2, !dbg !4857
  %len4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4857
  store i16 1, i16* %len4, align 4, !dbg !4857
  %buf5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4857
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4858
  store i8* %arraydecay6, i8** %buf5, align 8, !dbg !4857
  %2 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4859
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %2, i32 0, i32 1, !dbg !4860
  %3 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !4860
  %demod_address = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %3, i32 0, i32 1, !dbg !4861
  %4 = load i8, i8* %demod_address, align 1, !dbg !4861
  store i8 %4, i8* %dev_addr, align 1, !dbg !4862
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4863
  %config7 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %5, i32 0, i32 1, !dbg !4865
  %6 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config7, align 8, !dbg !4865
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %6, i32 0, i32 0, !dbg !4866
  %7 = load i8, i8* %prod, align 4, !dbg !4866
  %conv = zext i8 %7 to i32, !dbg !4863
  %cmp = icmp ne i32 %conv, 6, !dbg !4867
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4868

land.lhs.true:                                    ; preds = %entry
  %8 = load i8, i8* %reg.addr, align 1, !dbg !4869
  %conv9 = zext i8 %8 to i32, !dbg !4869
  %cmp10 = icmp sge i32 %conv9, 192, !dbg !4870
  br i1 %cmp10, label %if.then, label %if.end, !dbg !4871

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8, i8* %dev_addr, align 1, !dbg !4872
  %conv12 = zext i8 %9 to i32, !dbg !4872
  %add = add i32 %conv12, 2, !dbg !4872
  %conv13 = trunc i32 %add to i8, !dbg !4872
  store i8 %conv13, i8* %dev_addr, align 1, !dbg !4872
  br label %if.end, !dbg !4873

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i8, i8* %dev_addr, align 1, !dbg !4874
  %conv14 = zext i8 %10 to i16, !dbg !4874
  %arrayidx = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4875
  %addr15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 0, !dbg !4876
  store i16 %conv14, i16* %addr15, align 16, !dbg !4877
  %arrayidx16 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !4878
  %addr17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx16, i32 0, i32 0, !dbg !4879
  store i16 %conv14, i16* %addr17, align 16, !dbg !4880
  %11 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4881
  %i2c = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %11, i32 0, i32 0, !dbg !4882
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4882
  %arraydecay18 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4883
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %12, %struct.i2c_msg* %arraydecay18, i32 2) #9, !dbg !4884
  store i32 %call, i32* %ret, align 4, !dbg !4885
  %13 = load i32, i32* %ret, align 4, !dbg !4886
  %cmp19 = icmp ne i32 %13, 2, !dbg !4888
  br i1 %cmp19, label %if.then21, label %if.end26, !dbg !4889

if.then21:                                        ; preds = %if.end
  br label %do.body, !dbg !4890

do.body:                                          ; preds = %if.then21
  %14 = load i32, i32* @debug, align 4, !dbg !4892
  %tobool = icmp ne i32 %14, 0, !dbg !4892
  br i1 %tobool, label %if.then22, label %if.end25, !dbg !4895

if.then22:                                        ; preds = %do.body
  %15 = load i8, i8* %reg.addr, align 1, !dbg !4892
  %conv23 = zext i8 %15 to i32, !dbg !4892
  %16 = load i32, i32* %ret, align 4, !dbg !4892
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.lgs8gxx_read_reg, i64 0, i64 0), i32 %conv23, i32 %16) #8, !dbg !4892
  br label %if.end25, !dbg !4892

if.end25:                                         ; preds = %if.then22, %do.body
  br label %do.end, !dbg !4895

do.end:                                           ; preds = %if.end25
  store i32 -1, i32* %retval, align 4, !dbg !4896
  br label %return, !dbg !4896

if.end26:                                         ; preds = %if.end
  %arrayidx27 = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4897
  %17 = load i8, i8* %arrayidx27, align 1, !dbg !4897
  %18 = load i8*, i8** %p_data.addr, align 8, !dbg !4898
  store i8 %17, i8* %18, align 1, !dbg !4899
  %19 = load i32, i32* @debug, align 4, !dbg !4900
  %cmp28 = icmp sge i32 %19, 2, !dbg !4902
  br i1 %cmp28, label %if.then30, label %if.end40, !dbg !4903

if.then30:                                        ; preds = %if.end26
  br label %do.body31, !dbg !4904

do.body31:                                        ; preds = %if.then30
  %20 = load i32, i32* @debug, align 4, !dbg !4905
  %tobool32 = icmp ne i32 %20, 0, !dbg !4905
  br i1 %tobool32, label %if.then33, label %if.end38, !dbg !4908

if.then33:                                        ; preds = %do.body31
  %21 = load i8, i8* %reg.addr, align 1, !dbg !4905
  %conv34 = zext i8 %21 to i32, !dbg !4905
  %arrayidx35 = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4905
  %22 = load i8, i8* %arrayidx35, align 1, !dbg !4905
  %conv36 = zext i8 %22 to i32, !dbg !4905
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.lgs8gxx_read_reg, i64 0, i64 0), i32 %conv34, i32 %conv36) #8, !dbg !4905
  br label %if.end38, !dbg !4905

if.end38:                                         ; preds = %if.then33, %do.body31
  br label %do.end39, !dbg !4908

do.end39:                                         ; preds = %if.end38
  br label %if.end40, !dbg !4908

if.end40:                                         ; preds = %do.end39, %if.end26
  store i32 0, i32* %retval, align 4, !dbg !4909
  br label %return, !dbg !4909

return:                                           ; preds = %if.end40, %do.end
  %23 = load i32, i32* %retval, align 4, !dbg !4910
  ret i32 %23, !dbg !4910
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8g75_init_data(%struct.lgs8gxx_state* %priv) #0 !dbg !4911 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %fw = alloca %struct.firmware*, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !4916, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4926, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4928, metadata !DIExpression()), !dbg !4929
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4930
  %i2c = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 0, !dbg !4931
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4931
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %1, i32 0, i32 9, !dbg !4932
  %call = call i32 @request_firmware(%struct.firmware** %fw, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), %struct.device* %dev) #9, !dbg !4933
  store i32 %call, i32* %rc, align 4, !dbg !4934
  %2 = load i32, i32* %rc, align 4, !dbg !4935
  %tobool = icmp ne i32 %2, 0, !dbg !4935
  br i1 %tobool, label %if.then, label %if.end, !dbg !4937

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rc, align 4, !dbg !4938
  store i32 %3, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

if.end:                                           ; preds = %entry
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4940
  %call1 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %4, i8 zeroext -58, i8 zeroext 64) #9, !dbg !4941
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4942
  %call2 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %5, i8 zeroext 61, i8 zeroext 4) #9, !dbg !4943
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4944
  %call3 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %6, i8 zeroext 57, i8 zeroext 0) #9, !dbg !4945
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4946
  %call4 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %7, i8 zeroext 58, i8 zeroext 0) #9, !dbg !4947
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4948
  %call5 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %8, i8 zeroext 56, i8 zeroext 0) #9, !dbg !4949
  %9 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4950
  %call6 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %9, i8 zeroext 59, i8 zeroext 0) #9, !dbg !4951
  %10 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4952
  %call7 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %10, i8 zeroext 56, i8 zeroext 0) #9, !dbg !4953
  store i32 0, i32* %i, align 4, !dbg !4954
  br label %for.cond, !dbg !4956

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !4957
  %conv = sext i32 %11 to i64, !dbg !4957
  %12 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !4959
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 0, !dbg !4960
  %13 = load i64, i64* %size, align 8, !dbg !4960
  %cmp = icmp ult i64 %conv, %13, !dbg !4961
  br i1 %cmp, label %for.body, label %for.end, !dbg !4962

for.body:                                         ; preds = %for.cond
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4963
  %call9 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %14, i8 zeroext 56, i8 zeroext 0) #9, !dbg !4965
  %15 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4966
  %16 = load i32, i32* %i, align 4, !dbg !4967
  %and = and i32 %16, 255, !dbg !4968
  %conv10 = trunc i32 %and to i8, !dbg !4969
  %call11 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %15, i8 zeroext 58, i8 zeroext %conv10) #9, !dbg !4970
  %17 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4971
  %18 = load i32, i32* %i, align 4, !dbg !4972
  %shr = ashr i32 %18, 8, !dbg !4973
  %conv12 = trunc i32 %shr to i8, !dbg !4974
  %call13 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %17, i8 zeroext 59, i8 zeroext %conv12) #9, !dbg !4975
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4976
  %20 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !4977
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 1, !dbg !4978
  %21 = load i8*, i8** %data, align 8, !dbg !4978
  %22 = load i32, i32* %i, align 4, !dbg !4979
  %idxprom = sext i32 %22 to i64, !dbg !4977
  %arrayidx = getelementptr i8, i8* %21, i64 %idxprom, !dbg !4977
  %23 = load i8, i8* %arrayidx, align 1, !dbg !4977
  %call14 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %19, i8 zeroext 60, i8 zeroext %23) #9, !dbg !4980
  br label %for.inc, !dbg !4981

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !dbg !4982
  %inc = add i32 %24, 1, !dbg !4982
  store i32 %inc, i32* %i, align 4, !dbg !4982
  br label %for.cond, !dbg !4983, !llvm.loop !4984

for.end:                                          ; preds = %for.cond
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !4986
  %call15 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %25, i8 zeroext 56, i8 zeroext 0) #9, !dbg !4987
  %26 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !4988
  call void @release_firmware(%struct.firmware* %26) #9, !dbg !4989
  store i32 0, i32* %retval, align 4, !dbg !4990
  br label %return, !dbg !4990

return:                                           ; preds = %for.end, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !4991
  ret i32 %27, !dbg !4991
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
define internal i32 @get_order(i64 %size) #7 !dbg !4992 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4996, metadata !DIExpression()), !dbg !5001
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5003, metadata !DIExpression()), !dbg !5004
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  %0 = load i64, i64* %size.addr, align 8, !dbg !5007
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5009
  br i1 %1, label %if.then, label %if.end447, !dbg !5010

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5011
  %tobool = icmp ne i64 %2, 0, !dbg !5011
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5014

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5015
  br label %return, !dbg !5015

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5016
  %cmp = icmp ult i64 %3, 4096, !dbg !5018
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5019

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5020
  br label %return, !dbg !5020

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub = sub i64 %4, 1, !dbg !5021
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5021
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5021

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub4 = sub i64 %6, 1, !dbg !5021
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5021
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5021

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub6 = sub i64 %8, 1, !dbg !5021
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5021
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5021

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5021

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub9 = sub i64 %9, 1, !dbg !5021
  %and = and i64 %sub9, -9223372036854775808, !dbg !5021
  %tobool10 = icmp ne i64 %and, 0, !dbg !5021
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5021

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5021

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub13 = sub i64 %10, 1, !dbg !5021
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5021
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5021
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5021

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5021

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub18 = sub i64 %11, 1, !dbg !5021
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5021
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5021
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5021

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5021

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub23 = sub i64 %12, 1, !dbg !5021
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5021
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5021
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5021

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5021

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub28 = sub i64 %13, 1, !dbg !5021
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5021
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5021
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5021

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5021

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub33 = sub i64 %14, 1, !dbg !5021
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5021
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5021
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5021

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5021

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub38 = sub i64 %15, 1, !dbg !5021
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5021
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5021
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5021

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5021

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub43 = sub i64 %16, 1, !dbg !5021
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5021
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5021
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5021

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5021

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub48 = sub i64 %17, 1, !dbg !5021
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5021
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5021
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5021

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5021

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub53 = sub i64 %18, 1, !dbg !5021
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5021
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5021
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5021

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5021

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub58 = sub i64 %19, 1, !dbg !5021
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5021
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5021
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5021

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5021

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub63 = sub i64 %20, 1, !dbg !5021
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5021
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5021
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5021

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5021

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub68 = sub i64 %21, 1, !dbg !5021
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5021
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5021
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5021

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5021

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub73 = sub i64 %22, 1, !dbg !5021
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5021
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5021
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5021

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5021

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub78 = sub i64 %23, 1, !dbg !5021
  %and79 = and i64 %sub78, 562949953421312, !dbg !5021
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5021
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5021

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5021

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub83 = sub i64 %24, 1, !dbg !5021
  %and84 = and i64 %sub83, 281474976710656, !dbg !5021
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5021
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5021

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5021

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub88 = sub i64 %25, 1, !dbg !5021
  %and89 = and i64 %sub88, 140737488355328, !dbg !5021
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5021
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5021

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5021

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub93 = sub i64 %26, 1, !dbg !5021
  %and94 = and i64 %sub93, 70368744177664, !dbg !5021
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5021
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5021

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5021

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub98 = sub i64 %27, 1, !dbg !5021
  %and99 = and i64 %sub98, 35184372088832, !dbg !5021
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5021
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5021

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5021

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub103 = sub i64 %28, 1, !dbg !5021
  %and104 = and i64 %sub103, 17592186044416, !dbg !5021
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5021
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5021

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5021

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub108 = sub i64 %29, 1, !dbg !5021
  %and109 = and i64 %sub108, 8796093022208, !dbg !5021
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5021
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5021

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5021

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub113 = sub i64 %30, 1, !dbg !5021
  %and114 = and i64 %sub113, 4398046511104, !dbg !5021
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5021
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5021

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5021

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub118 = sub i64 %31, 1, !dbg !5021
  %and119 = and i64 %sub118, 2199023255552, !dbg !5021
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5021
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5021

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5021

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub123 = sub i64 %32, 1, !dbg !5021
  %and124 = and i64 %sub123, 1099511627776, !dbg !5021
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5021
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5021

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5021

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub128 = sub i64 %33, 1, !dbg !5021
  %and129 = and i64 %sub128, 549755813888, !dbg !5021
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5021
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5021

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5021

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub133 = sub i64 %34, 1, !dbg !5021
  %and134 = and i64 %sub133, 274877906944, !dbg !5021
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5021
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5021

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5021

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub138 = sub i64 %35, 1, !dbg !5021
  %and139 = and i64 %sub138, 137438953472, !dbg !5021
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5021
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5021

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5021

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub143 = sub i64 %36, 1, !dbg !5021
  %and144 = and i64 %sub143, 68719476736, !dbg !5021
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5021
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5021

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5021

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub148 = sub i64 %37, 1, !dbg !5021
  %and149 = and i64 %sub148, 34359738368, !dbg !5021
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5021
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5021

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5021

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub153 = sub i64 %38, 1, !dbg !5021
  %and154 = and i64 %sub153, 17179869184, !dbg !5021
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5021
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5021

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5021

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub158 = sub i64 %39, 1, !dbg !5021
  %and159 = and i64 %sub158, 8589934592, !dbg !5021
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5021
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5021

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5021

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub163 = sub i64 %40, 1, !dbg !5021
  %and164 = and i64 %sub163, 4294967296, !dbg !5021
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5021
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5021

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5021

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub168 = sub i64 %41, 1, !dbg !5021
  %and169 = and i64 %sub168, 2147483648, !dbg !5021
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5021
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5021

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5021

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub173 = sub i64 %42, 1, !dbg !5021
  %and174 = and i64 %sub173, 1073741824, !dbg !5021
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5021
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5021

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5021

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub178 = sub i64 %43, 1, !dbg !5021
  %and179 = and i64 %sub178, 536870912, !dbg !5021
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5021
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5021

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5021

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub183 = sub i64 %44, 1, !dbg !5021
  %and184 = and i64 %sub183, 268435456, !dbg !5021
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5021
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5021

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5021

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub188 = sub i64 %45, 1, !dbg !5021
  %and189 = and i64 %sub188, 134217728, !dbg !5021
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5021
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5021

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5021

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub193 = sub i64 %46, 1, !dbg !5021
  %and194 = and i64 %sub193, 67108864, !dbg !5021
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5021
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5021

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5021

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub198 = sub i64 %47, 1, !dbg !5021
  %and199 = and i64 %sub198, 33554432, !dbg !5021
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5021
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5021

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5021

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub203 = sub i64 %48, 1, !dbg !5021
  %and204 = and i64 %sub203, 16777216, !dbg !5021
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5021
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5021

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5021

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub208 = sub i64 %49, 1, !dbg !5021
  %and209 = and i64 %sub208, 8388608, !dbg !5021
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5021
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5021

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5021

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub213 = sub i64 %50, 1, !dbg !5021
  %and214 = and i64 %sub213, 4194304, !dbg !5021
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5021
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5021

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5021

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub218 = sub i64 %51, 1, !dbg !5021
  %and219 = and i64 %sub218, 2097152, !dbg !5021
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5021
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5021

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5021

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub223 = sub i64 %52, 1, !dbg !5021
  %and224 = and i64 %sub223, 1048576, !dbg !5021
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5021
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5021

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5021

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub228 = sub i64 %53, 1, !dbg !5021
  %and229 = and i64 %sub228, 524288, !dbg !5021
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5021
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5021

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5021

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub233 = sub i64 %54, 1, !dbg !5021
  %and234 = and i64 %sub233, 262144, !dbg !5021
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5021
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5021

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5021

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub238 = sub i64 %55, 1, !dbg !5021
  %and239 = and i64 %sub238, 131072, !dbg !5021
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5021
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5021

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5021

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub243 = sub i64 %56, 1, !dbg !5021
  %and244 = and i64 %sub243, 65536, !dbg !5021
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5021
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5021

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5021

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub248 = sub i64 %57, 1, !dbg !5021
  %and249 = and i64 %sub248, 32768, !dbg !5021
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5021
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5021

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5021

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub253 = sub i64 %58, 1, !dbg !5021
  %and254 = and i64 %sub253, 16384, !dbg !5021
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5021
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5021

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5021

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub258 = sub i64 %59, 1, !dbg !5021
  %and259 = and i64 %sub258, 8192, !dbg !5021
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5021
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5021

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5021

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub263 = sub i64 %60, 1, !dbg !5021
  %and264 = and i64 %sub263, 4096, !dbg !5021
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5021
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5021

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5021

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub268 = sub i64 %61, 1, !dbg !5021
  %and269 = and i64 %sub268, 2048, !dbg !5021
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5021
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5021

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5021

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub273 = sub i64 %62, 1, !dbg !5021
  %and274 = and i64 %sub273, 1024, !dbg !5021
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5021
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5021

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5021

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub278 = sub i64 %63, 1, !dbg !5021
  %and279 = and i64 %sub278, 512, !dbg !5021
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5021
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5021

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5021

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub283 = sub i64 %64, 1, !dbg !5021
  %and284 = and i64 %sub283, 256, !dbg !5021
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5021
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5021

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5021

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub288 = sub i64 %65, 1, !dbg !5021
  %and289 = and i64 %sub288, 128, !dbg !5021
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5021
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5021

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5021

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub293 = sub i64 %66, 1, !dbg !5021
  %and294 = and i64 %sub293, 64, !dbg !5021
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5021
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5021

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5021

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub298 = sub i64 %67, 1, !dbg !5021
  %and299 = and i64 %sub298, 32, !dbg !5021
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5021
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5021

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5021

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub303 = sub i64 %68, 1, !dbg !5021
  %and304 = and i64 %sub303, 16, !dbg !5021
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5021
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5021

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5021

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub308 = sub i64 %69, 1, !dbg !5021
  %and309 = and i64 %sub308, 8, !dbg !5021
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5021
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5021

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5021

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub313 = sub i64 %70, 1, !dbg !5021
  %and314 = and i64 %sub313, 4, !dbg !5021
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5021
  %71 = zext i1 %tobool315 to i64, !dbg !5021
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5021
  br label %cond.end, !dbg !5021

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5021
  br label %cond.end317, !dbg !5021

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5021
  br label %cond.end319, !dbg !5021

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5021
  br label %cond.end321, !dbg !5021

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5021
  br label %cond.end323, !dbg !5021

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5021
  br label %cond.end325, !dbg !5021

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5021
  br label %cond.end327, !dbg !5021

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5021
  br label %cond.end329, !dbg !5021

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5021
  br label %cond.end331, !dbg !5021

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5021
  br label %cond.end333, !dbg !5021

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5021
  br label %cond.end335, !dbg !5021

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5021
  br label %cond.end337, !dbg !5021

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5021
  br label %cond.end339, !dbg !5021

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5021
  br label %cond.end341, !dbg !5021

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5021
  br label %cond.end343, !dbg !5021

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5021
  br label %cond.end345, !dbg !5021

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5021
  br label %cond.end347, !dbg !5021

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5021
  br label %cond.end349, !dbg !5021

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5021
  br label %cond.end351, !dbg !5021

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5021
  br label %cond.end353, !dbg !5021

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5021
  br label %cond.end355, !dbg !5021

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5021
  br label %cond.end357, !dbg !5021

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5021
  br label %cond.end359, !dbg !5021

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5021
  br label %cond.end361, !dbg !5021

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5021
  br label %cond.end363, !dbg !5021

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5021
  br label %cond.end365, !dbg !5021

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5021
  br label %cond.end367, !dbg !5021

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5021
  br label %cond.end369, !dbg !5021

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5021
  br label %cond.end371, !dbg !5021

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5021
  br label %cond.end373, !dbg !5021

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5021
  br label %cond.end375, !dbg !5021

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5021
  br label %cond.end377, !dbg !5021

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5021
  br label %cond.end379, !dbg !5021

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5021
  br label %cond.end381, !dbg !5021

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5021
  br label %cond.end383, !dbg !5021

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5021
  br label %cond.end385, !dbg !5021

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5021
  br label %cond.end387, !dbg !5021

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5021
  br label %cond.end389, !dbg !5021

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5021
  br label %cond.end391, !dbg !5021

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5021
  br label %cond.end393, !dbg !5021

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5021
  br label %cond.end395, !dbg !5021

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5021
  br label %cond.end397, !dbg !5021

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5021
  br label %cond.end399, !dbg !5021

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5021
  br label %cond.end401, !dbg !5021

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5021
  br label %cond.end403, !dbg !5021

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5021
  br label %cond.end405, !dbg !5021

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5021
  br label %cond.end407, !dbg !5021

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5021
  br label %cond.end409, !dbg !5021

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5021
  br label %cond.end411, !dbg !5021

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5021
  br label %cond.end413, !dbg !5021

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5021
  br label %cond.end415, !dbg !5021

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5021
  br label %cond.end417, !dbg !5021

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5021
  br label %cond.end419, !dbg !5021

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5021
  br label %cond.end421, !dbg !5021

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5021
  br label %cond.end423, !dbg !5021

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5021
  br label %cond.end425, !dbg !5021

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5021
  br label %cond.end427, !dbg !5021

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5021
  br label %cond.end429, !dbg !5021

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5021
  br label %cond.end431, !dbg !5021

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5021
  br label %cond.end433, !dbg !5021

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5021
  br label %cond.end435, !dbg !5021

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5021
  br label %cond.end437, !dbg !5021

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5021
  br label %cond.end440, !dbg !5021

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5021

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5021
  br label %cond.end444, !dbg !5021

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5021
  %sub443 = sub i64 %72, 1, !dbg !5021
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5021
  br label %cond.end444, !dbg !5021

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5021
  %sub446 = sub i32 %cond445, 12, !dbg !5022
  %add = add i32 %sub446, 1, !dbg !5023
  store i32 %add, i32* %retval, align 4, !dbg !5024
  br label %return, !dbg !5024

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5025
  %dec = add i64 %73, -1, !dbg !5025
  store i64 %dec, i64* %size.addr, align 8, !dbg !5025
  %74 = load i64, i64* %size.addr, align 8, !dbg !5026
  %shr = lshr i64 %74, 12, !dbg !5026
  store i64 %shr, i64* %size.addr, align 8, !dbg !5026
  %75 = load i64, i64* %size.addr, align 8, !dbg !5027
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5004
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5028
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5029
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5028, !srcloc !5030
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5028
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5031
  %add.i = add i32 %79, 1, !dbg !5032
  store i32 %add.i, i32* %retval, align 4, !dbg !5033
  br label %return, !dbg !5033

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5034
  ret i32 %80, !dbg !5034
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5035 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4996, metadata !DIExpression()), !dbg !5039
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5003, metadata !DIExpression()), !dbg !5041
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  %0 = load i64, i64* %n.addr, align 8, !dbg !5044
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5041
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5045
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5046
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5045, !srcloc !5030
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5045
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5047
  %add.i = add i32 %4, 1, !dbg !5048
  %sub = sub i32 %add.i, 1, !dbg !5049
  ret i32 %sub, !dbg !5050
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5051 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5059, metadata !DIExpression()), !dbg !5060
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5061, metadata !DIExpression()), !dbg !5062
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5063
  ret i8* %0, !dbg !5064
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lgs8gxx_release(%struct.dvb_frontend* %fe) #0 !dbg !5065 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.lgs8gxx_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %state, metadata !5068, metadata !DIExpression()), !dbg !5069
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5070
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5071
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5071
  %2 = bitcast i8* %1 to %struct.lgs8gxx_state*, !dbg !5070
  store %struct.lgs8gxx_state* %2, %struct.lgs8gxx_state** %state, align 8, !dbg !5069
  br label %do.body, !dbg !5072

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5073
  %tobool = icmp ne i32 %3, 0, !dbg !5073
  br i1 %tobool, label %if.then, label %if.end, !dbg !5076

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.lgs8gxx_release, i64 0, i64 0)) #8, !dbg !5073
  br label %if.end, !dbg !5073

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5076

do.end:                                           ; preds = %if.end
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %state, align 8, !dbg !5077
  %5 = bitcast %struct.lgs8gxx_state* %4 to i8*, !dbg !5077
  call void @kfree(i8* %5) #9, !dbg !5078
  ret void, !dbg !5079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_init(%struct.dvb_frontend* %fe) #0 !dbg !5080 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.lgs8gxx_state*, align 8
  %config = alloca %struct.lgs8gxx_config*, align 8
  %data = alloca i8, align 1
  %err = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !5083, metadata !DIExpression()), !dbg !5084
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5085
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5086
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5086
  %2 = bitcast i8* %1 to %struct.lgs8gxx_state*, !dbg !5087
  store %struct.lgs8gxx_state* %2, %struct.lgs8gxx_state** %priv, align 8, !dbg !5084
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_config** %config, metadata !5088, metadata !DIExpression()), !dbg !5089
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5090
  %config1 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %3, i32 0, i32 1, !dbg !5091
  %4 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config1, align 8, !dbg !5091
  store %struct.lgs8gxx_config* %4, %struct.lgs8gxx_config** %config, align 8, !dbg !5089
  call void @llvm.dbg.declare(metadata i8* %data, metadata !5092, metadata !DIExpression()), !dbg !5093
  store i8 0, i8* %data, align 1, !dbg !5093
  call void @llvm.dbg.declare(metadata i8* %err, metadata !5094, metadata !DIExpression()), !dbg !5095
  br label %do.body, !dbg !5096

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5097
  %tobool = icmp ne i32 %5, 0, !dbg !5097
  br i1 %tobool, label %if.then, label %if.end, !dbg !5100

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.lgs8gxx_init, i64 0, i64 0)) #8, !dbg !5097
  br label %if.end, !dbg !5097

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5100

do.end:                                           ; preds = %if.end
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5101
  %call2 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %6, i8 zeroext 0, i8* %data) #9, !dbg !5102
  br label %do.body3, !dbg !5103

do.body3:                                         ; preds = %do.end
  %7 = load i32, i32* @debug, align 4, !dbg !5104
  %tobool4 = icmp ne i32 %7, 0, !dbg !5104
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5107

if.then5:                                         ; preds = %do.body3
  %8 = load i8, i8* %data, align 1, !dbg !5104
  %conv = zext i8 %8 to i32, !dbg !5104
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #8, !dbg !5104
  br label %if.end7, !dbg !5104

if.end7:                                          ; preds = %if.then5, %do.body3
  br label %do.end8, !dbg !5107

do.end8:                                          ; preds = %if.end7
  %9 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5108
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %9, i32 0, i32 0, !dbg !5110
  %10 = load i8, i8* %prod, align 4, !dbg !5110
  %conv9 = zext i8 %10 to i32, !dbg !5108
  %cmp = icmp eq i32 %conv9, 6, !dbg !5111
  br i1 %cmp, label %if.then11, label %if.end13, !dbg !5112

if.then11:                                        ; preds = %do.end8
  %11 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5113
  %12 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5114
  %adc_vpp = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %12, i32 0, i32 11, !dbg !5115
  %13 = load i8, i8* %adc_vpp, align 4, !dbg !5115
  %call12 = call i32 @lgs8g75_set_adc_vpp(%struct.lgs8gxx_state* %11, i8 zeroext %13) #9, !dbg !5116
  br label %if.end13, !dbg !5116

if.end13:                                         ; preds = %if.then11, %do.end8
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5117
  %15 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5118
  %serial_ts = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %15, i32 0, i32 2, !dbg !5119
  %16 = load i8, i8* %serial_ts, align 2, !dbg !5119
  %17 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5120
  %ts_clk_pol = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %17, i32 0, i32 3, !dbg !5121
  %18 = load i8, i8* %ts_clk_pol, align 1, !dbg !5121
  %19 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5122
  %ts_clk_gated = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %19, i32 0, i32 4, !dbg !5123
  %20 = load i8, i8* %ts_clk_gated, align 4, !dbg !5123
  %call14 = call i32 @lgs8gxx_set_mpeg_mode(%struct.lgs8gxx_state* %14, i8 zeroext %16, i8 zeroext %18, i8 zeroext %20) #9, !dbg !5124
  %conv15 = trunc i32 %call14 to i8, !dbg !5124
  store i8 %conv15, i8* %err, align 1, !dbg !5125
  %21 = load i8, i8* %err, align 1, !dbg !5126
  %conv16 = sext i8 %21 to i32, !dbg !5126
  %cmp17 = icmp ne i32 %conv16, 0, !dbg !5128
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5129

if.then19:                                        ; preds = %if.end13
  store i32 -5, i32* %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end20:                                         ; preds = %if.end13
  %22 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5131
  %prod21 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %22, i32 0, i32 0, !dbg !5133
  %23 = load i8, i8* %prod21, align 4, !dbg !5133
  %conv22 = zext i8 %23 to i32, !dbg !5131
  %cmp23 = icmp eq i32 %conv22, 0, !dbg !5134
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !5135

if.then25:                                        ; preds = %if.end20
  %24 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5136
  %call26 = call i32 @lgs8913_init(%struct.lgs8gxx_state* %24) #9, !dbg !5137
  br label %if.end27, !dbg !5137

if.end27:                                         ; preds = %if.then25, %if.end20
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5138
  %26 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5139
  %config28 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %26, i32 0, i32 1, !dbg !5140
  %27 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config28, align 8, !dbg !5140
  %if_freq = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %27, i32 0, i32 6, !dbg !5141
  %28 = load i32, i32* %if_freq, align 4, !dbg !5141
  %call29 = call i32 @lgs8gxx_set_if_freq(%struct.lgs8gxx_state* %25, i32 %28) #9, !dbg !5142
  %29 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5143
  %call30 = call i32 @lgs8gxx_set_ad_mode(%struct.lgs8gxx_state* %29) #9, !dbg !5144
  store i32 0, i32* %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

return:                                           ; preds = %if.end27, %if.then19
  %30 = load i32, i32* %retval, align 4, !dbg !5146
  ret i32 %30, !dbg !5146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_write(%struct.dvb_frontend* %fe, i8* %buf, i32 %len) #0 !dbg !5147 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %priv = alloca %struct.lgs8gxx_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5156
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5157
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5157
  %2 = bitcast i8* %1 to %struct.lgs8gxx_state*, !dbg !5156
  store %struct.lgs8gxx_state* %2, %struct.lgs8gxx_state** %priv, align 8, !dbg !5155
  %3 = load i32, i32* %len.addr, align 4, !dbg !5158
  %cmp = icmp ne i32 %3, 2, !dbg !5160
  br i1 %cmp, label %if.then, label %if.end, !dbg !5161

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5162
  br label %return, !dbg !5162

if.end:                                           ; preds = %entry
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5163
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5164
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !5164
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5164
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5165
  %arrayidx1 = getelementptr i8, i8* %7, i64 1, !dbg !5165
  %8 = load i8, i8* %arrayidx1, align 1, !dbg !5165
  %call = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %4, i8 zeroext %6, i8 zeroext %8) #9, !dbg !5166
  store i32 %call, i32* %retval, align 4, !dbg !5167
  br label %return, !dbg !5167

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5168
  ret i32 %9, !dbg !5168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_set_fe(%struct.dvb_frontend* %fe) #0 !dbg !5169 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_params = alloca %struct.dtv_frontend_properties*, align 8
  %priv = alloca %struct.lgs8gxx_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %fe_params, metadata !5172, metadata !DIExpression()), !dbg !5173
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5174
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5175
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5173
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !5176, metadata !DIExpression()), !dbg !5177
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5178
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5179
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5179
  %3 = bitcast i8* %2 to %struct.lgs8gxx_state*, !dbg !5178
  store %struct.lgs8gxx_state* %3, %struct.lgs8gxx_state** %priv, align 8, !dbg !5177
  br label %do.body, !dbg !5180

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5181
  %tobool = icmp ne i32 %4, 0, !dbg !5181
  br i1 %tobool, label %if.then, label %if.end, !dbg !5184

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.lgs8gxx_set_fe, i64 0, i64 0)) #8, !dbg !5181
  br label %if.end, !dbg !5181

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5184

do.end:                                           ; preds = %if.end
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5185
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1, !dbg !5187
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5188
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5189
  %6 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5189
  %tobool1 = icmp ne i32 (%struct.dvb_frontend*)* %6, null, !dbg !5185
  br i1 %tobool1, label %if.then2, label %if.end14, !dbg !5190

if.then2:                                         ; preds = %do.end
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5191
  %ops3 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1, !dbg !5193
  %tuner_ops4 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops3, i32 0, i32 30, !dbg !5194
  %set_params5 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops4, i32 0, i32 6, !dbg !5195
  %8 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params5, align 8, !dbg !5195
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5196
  %call6 = call i32 %8(%struct.dvb_frontend* %9) #9, !dbg !5191
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5197
  %ops7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1, !dbg !5199
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops7, i32 0, i32 26, !dbg !5200
  %11 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5200
  %tobool8 = icmp ne i32 (%struct.dvb_frontend*, i32)* %11, null, !dbg !5197
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !5201

if.then9:                                         ; preds = %if.then2
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5202
  %ops10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1, !dbg !5203
  %i2c_gate_ctrl11 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops10, i32 0, i32 26, !dbg !5204
  %13 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl11, align 8, !dbg !5204
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5205
  %call12 = call i32 %13(%struct.dvb_frontend* %14, i32 0) #9, !dbg !5202
  br label %if.end13, !dbg !5202

if.end13:                                         ; preds = %if.then9, %if.then2
  br label %if.end14, !dbg !5206

if.end14:                                         ; preds = %if.end13, %do.end
  %15 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5207
  call void @lgs8gxx_auto_lock(%struct.lgs8gxx_state* %15) #9, !dbg !5208
  call void @msleep(i32 10) #9, !dbg !5209
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5210
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 7, !dbg !5211
  store i32 8000000, i32* %bandwidth_hz, align 4, !dbg !5212
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5213
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 11, !dbg !5214
  store i32 9, i32* %code_rate_HP, align 4, !dbg !5215
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5216
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 12, !dbg !5217
  store i32 9, i32* %code_rate_LP, align 4, !dbg !5218
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5219
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 1, !dbg !5220
  store i32 6, i32* %modulation, align 4, !dbg !5221
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5222
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 6, !dbg !5223
  store i32 2, i32* %transmission_mode, align 4, !dbg !5224
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5225
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 8, !dbg !5226
  store i32 4, i32* %guard_interval, align 4, !dbg !5227
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5228
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 9, !dbg !5229
  store i32 0, i32* %hierarchy, align 4, !dbg !5230
  ret i32 0, !dbg !5231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5232 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5233, metadata !DIExpression()), !dbg !5234
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5235, metadata !DIExpression()), !dbg !5236
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5237
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5238
  store i32 800, i32* %min_delay_ms, align 4, !dbg !5239
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5240
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5241
  store i32 0, i32* %step_size, align 4, !dbg !5242
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5243
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5244
  store i32 0, i32* %max_drift, align 4, !dbg !5245
  ret i32 0, !dbg !5246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_read_status(%struct.dvb_frontend* %fe, i32* %fe_status) #0 !dbg !5247 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_status.addr = alloca i32*, align 8
  %priv = alloca %struct.lgs8gxx_state*, align 8
  %ret = alloca i8, align 1
  %t = alloca i8, align 1
  %locked = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  store i32* %fe_status, i32** %fe_status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %fe_status.addr, metadata !5250, metadata !DIExpression()), !dbg !5251
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !5252, metadata !DIExpression()), !dbg !5253
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5254
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5255
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5255
  %2 = bitcast i8* %1 to %struct.lgs8gxx_state*, !dbg !5254
  store %struct.lgs8gxx_state* %2, %struct.lgs8gxx_state** %priv, align 8, !dbg !5253
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5256, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.declare(metadata i8* %t, metadata !5258, metadata !DIExpression()), !dbg !5259
  call void @llvm.dbg.declare(metadata i8* %locked, metadata !5260, metadata !DIExpression()), !dbg !5261
  store i8 0, i8* %locked, align 1, !dbg !5261
  br label %do.body, !dbg !5262

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5263
  %tobool = icmp ne i32 %3, 0, !dbg !5263
  br i1 %tobool, label %if.then, label %if.end, !dbg !5266

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.lgs8gxx_read_status, i64 0, i64 0)) #8, !dbg !5263
  br label %if.end, !dbg !5263

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5266

do.end:                                           ; preds = %if.end
  %4 = load i32*, i32** %fe_status.addr, align 8, !dbg !5267
  store i32 0, i32* %4, align 4, !dbg !5268
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5269
  %call1 = call i32 @lgs8gxx_get_afc_phase(%struct.lgs8gxx_state* %5) #9, !dbg !5270
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5271
  %call2 = call i32 @lgs8gxx_is_locked(%struct.lgs8gxx_state* %6, i8* %locked) #9, !dbg !5272
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5273
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %7, i32 0, i32 1, !dbg !5275
  %8 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5275
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %8, i32 0, i32 0, !dbg !5276
  %9 = load i8, i8* %prod, align 4, !dbg !5276
  %conv = zext i8 %9 to i32, !dbg !5273
  %cmp = icmp eq i32 %conv, 6, !dbg !5277
  br i1 %cmp, label %if.then4, label %if.end8, !dbg !5278

if.then4:                                         ; preds = %do.end
  %10 = load i8, i8* %locked, align 1, !dbg !5279
  %tobool5 = icmp ne i8 %10, 0, !dbg !5279
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5282

if.then6:                                         ; preds = %if.then4
  %11 = load i32*, i32** %fe_status.addr, align 8, !dbg !5283
  %12 = load i32, i32* %11, align 4, !dbg !5284
  %or = or i32 %12, 31, !dbg !5284
  store i32 %or, i32* %11, align 4, !dbg !5284
  br label %if.end7, !dbg !5285

if.end7:                                          ; preds = %if.then6, %if.then4
  store i32 0, i32* %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

if.end8:                                          ; preds = %do.end
  %13 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5287
  %call9 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %13, i8 zeroext 75, i8* %t) #9, !dbg !5288
  %conv10 = trunc i32 %call9 to i8, !dbg !5288
  store i8 %conv10, i8* %ret, align 1, !dbg !5289
  %14 = load i8, i8* %ret, align 1, !dbg !5290
  %conv11 = sext i8 %14 to i32, !dbg !5290
  %cmp12 = icmp ne i32 %conv11, 0, !dbg !5292
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5293

if.then14:                                        ; preds = %if.end8
  store i32 -5, i32* %retval, align 4, !dbg !5294
  br label %return, !dbg !5294

if.end15:                                         ; preds = %if.end8
  br label %do.body16, !dbg !5295

do.body16:                                        ; preds = %if.end15
  %15 = load i32, i32* @debug, align 4, !dbg !5296
  %tobool17 = icmp ne i32 %15, 0, !dbg !5296
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !5299

if.then18:                                        ; preds = %do.body16
  %16 = load i8, i8* %t, align 1, !dbg !5296
  %conv19 = zext i8 %16 to i32, !dbg !5296
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %conv19) #8, !dbg !5296
  br label %if.end21, !dbg !5296

if.end21:                                         ; preds = %if.then18, %do.body16
  br label %do.end22, !dbg !5299

do.end22:                                         ; preds = %if.end21
  %17 = load i32*, i32** %fe_status.addr, align 8, !dbg !5300
  store i32 0, i32* %17, align 4, !dbg !5301
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5302
  %config23 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %18, i32 0, i32 1, !dbg !5304
  %19 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config23, align 8, !dbg !5304
  %prod24 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %19, i32 0, i32 0, !dbg !5305
  %20 = load i8, i8* %prod24, align 4, !dbg !5305
  %conv25 = zext i8 %20 to i32, !dbg !5302
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !5306
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !5307

if.then28:                                        ; preds = %do.end22
  %21 = load i8, i8* %t, align 1, !dbg !5308
  %conv29 = zext i8 %21 to i32, !dbg !5308
  %and = and i32 %conv29, 64, !dbg !5311
  %cmp30 = icmp eq i32 %and, 64, !dbg !5312
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !5313

if.then32:                                        ; preds = %if.then28
  %22 = load i32*, i32** %fe_status.addr, align 8, !dbg !5314
  %23 = load i32, i32* %22, align 4, !dbg !5315
  %or33 = or i32 %23, 3, !dbg !5315
  store i32 %or33, i32* %22, align 4, !dbg !5315
  br label %if.end34, !dbg !5316

if.end34:                                         ; preds = %if.then32, %if.then28
  %24 = load i8, i8* %t, align 1, !dbg !5317
  %conv35 = zext i8 %24 to i32, !dbg !5317
  %and36 = and i32 %conv35, 128, !dbg !5319
  %cmp37 = icmp eq i32 %and36, 128, !dbg !5320
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !5321

if.then39:                                        ; preds = %if.end34
  %25 = load i32*, i32** %fe_status.addr, align 8, !dbg !5322
  %26 = load i32, i32* %25, align 4, !dbg !5323
  %or40 = or i32 %26, 28, !dbg !5323
  store i32 %or40, i32* %25, align 4, !dbg !5323
  br label %if.end41, !dbg !5324

if.end41:                                         ; preds = %if.then39, %if.end34
  br label %if.end49, !dbg !5325

if.else:                                          ; preds = %do.end22
  %27 = load i8, i8* %t, align 1, !dbg !5326
  %conv42 = zext i8 %27 to i32, !dbg !5326
  %and43 = and i32 %conv42, 128, !dbg !5329
  %cmp44 = icmp eq i32 %and43, 128, !dbg !5330
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !5331

if.then46:                                        ; preds = %if.else
  %28 = load i32*, i32** %fe_status.addr, align 8, !dbg !5332
  %29 = load i32, i32* %28, align 4, !dbg !5333
  %or47 = or i32 %29, 31, !dbg !5333
  store i32 %or47, i32* %28, align 4, !dbg !5333
  br label %if.end48, !dbg !5334

if.end48:                                         ; preds = %if.then46, %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end41
  br label %do.body50, !dbg !5335

do.body50:                                        ; preds = %if.end49
  %30 = load i32, i32* @debug, align 4, !dbg !5336
  %tobool51 = icmp ne i32 %30, 0, !dbg !5336
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !5339

if.then52:                                        ; preds = %do.body50
  %31 = load i32*, i32** %fe_status.addr, align 8, !dbg !5336
  %32 = load i32, i32* %31, align 4, !dbg !5336
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.lgs8gxx_read_status, i64 0, i64 0), i32 %32) #8, !dbg !5336
  br label %if.end54, !dbg !5336

if.end54:                                         ; preds = %if.then52, %do.body50
  br label %do.end55, !dbg !5339

do.end55:                                         ; preds = %if.end54
  store i32 0, i32* %retval, align 4, !dbg !5340
  br label %return, !dbg !5340

return:                                           ; preds = %do.end55, %if.then14, %if.end7
  %33 = load i32, i32* %retval, align 4, !dbg !5341
  ret i32 %33, !dbg !5341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5342 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %priv = alloca %struct.lgs8gxx_state*, align 8
  %reg_err = alloca i8, align 1
  %reg_total = alloca i8, align 1
  %t = alloca i8, align 1
  %total_cnt = alloca i32, align 4
  %err_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5343, metadata !DIExpression()), !dbg !5344
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !5347, metadata !DIExpression()), !dbg !5348
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5349
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5350
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5350
  %2 = bitcast i8* %1 to %struct.lgs8gxx_state*, !dbg !5349
  store %struct.lgs8gxx_state* %2, %struct.lgs8gxx_state** %priv, align 8, !dbg !5348
  call void @llvm.dbg.declare(metadata i8* %reg_err, metadata !5351, metadata !DIExpression()), !dbg !5352
  call void @llvm.dbg.declare(metadata i8* %reg_total, metadata !5353, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.declare(metadata i8* %t, metadata !5355, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.declare(metadata i32* %total_cnt, metadata !5357, metadata !DIExpression()), !dbg !5358
  store i32 0, i32* %total_cnt, align 4, !dbg !5358
  call void @llvm.dbg.declare(metadata i32* %err_cnt, metadata !5359, metadata !DIExpression()), !dbg !5360
  store i32 0, i32* %err_cnt, align 4, !dbg !5360
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5361, metadata !DIExpression()), !dbg !5362
  br label %do.body, !dbg !5363

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5364
  %tobool = icmp ne i32 %3, 0, !dbg !5364
  br i1 %tobool, label %if.then, label %if.end, !dbg !5367

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.lgs8gxx_read_ber, i64 0, i64 0)) #8, !dbg !5364
  br label %if.end, !dbg !5364

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5367

do.end:                                           ; preds = %if.end
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5368
  call void @packet_counter_start(%struct.lgs8gxx_state* %4) #9, !dbg !5369
  call void @msleep(i32 200) #9, !dbg !5370
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5371
  call void @packet_counter_stop(%struct.lgs8gxx_state* %5) #9, !dbg !5372
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5373
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %6, i32 0, i32 1, !dbg !5375
  %7 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5375
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %7, i32 0, i32 0, !dbg !5376
  %8 = load i8, i8* %prod, align 4, !dbg !5376
  %conv = zext i8 %8 to i32, !dbg !5373
  %cmp = icmp eq i32 %conv, 6, !dbg !5377
  br i1 %cmp, label %if.then2, label %if.else, !dbg !5378

if.then2:                                         ; preds = %do.end
  store i8 40, i8* %reg_total, align 1, !dbg !5379
  store i8 44, i8* %reg_err, align 1, !dbg !5381
  br label %if.end3, !dbg !5382

if.else:                                          ; preds = %do.end
  store i8 -48, i8* %reg_total, align 1, !dbg !5383
  store i8 -44, i8* %reg_err, align 1, !dbg !5385
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  store i32 0, i32* %i, align 4, !dbg !5386
  br label %for.cond, !dbg !5388

for.cond:                                         ; preds = %for.inc, %if.end3
  %9 = load i32, i32* %i, align 4, !dbg !5389
  %cmp4 = icmp slt i32 %9, 4, !dbg !5391
  br i1 %cmp4, label %for.body, label %for.end, !dbg !5392

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %total_cnt, align 4, !dbg !5393
  %shl = shl i32 %10, 8, !dbg !5393
  store i32 %shl, i32* %total_cnt, align 4, !dbg !5393
  %11 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5395
  %12 = load i8, i8* %reg_total, align 1, !dbg !5396
  %conv6 = zext i8 %12 to i32, !dbg !5396
  %add = add i32 %conv6, 3, !dbg !5397
  %13 = load i32, i32* %i, align 4, !dbg !5398
  %sub = sub i32 %add, %13, !dbg !5399
  %conv7 = trunc i32 %sub to i8, !dbg !5396
  %call8 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %11, i8 zeroext %conv7, i8* %t) #9, !dbg !5400
  %14 = load i8, i8* %t, align 1, !dbg !5401
  %conv9 = zext i8 %14 to i32, !dbg !5401
  %15 = load i32, i32* %total_cnt, align 4, !dbg !5402
  %or = or i32 %15, %conv9, !dbg !5402
  store i32 %or, i32* %total_cnt, align 4, !dbg !5402
  br label %for.inc, !dbg !5403

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !5404
  %inc = add i32 %16, 1, !dbg !5404
  store i32 %inc, i32* %i, align 4, !dbg !5404
  br label %for.cond, !dbg !5405, !llvm.loop !5406

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5408
  br label %for.cond10, !dbg !5410

for.cond10:                                       ; preds = %for.inc22, %for.end
  %17 = load i32, i32* %i, align 4, !dbg !5411
  %cmp11 = icmp slt i32 %17, 4, !dbg !5413
  br i1 %cmp11, label %for.body13, label %for.end24, !dbg !5414

for.body13:                                       ; preds = %for.cond10
  %18 = load i32, i32* %err_cnt, align 4, !dbg !5415
  %shl14 = shl i32 %18, 8, !dbg !5415
  store i32 %shl14, i32* %err_cnt, align 4, !dbg !5415
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5417
  %20 = load i8, i8* %reg_err, align 1, !dbg !5418
  %conv15 = zext i8 %20 to i32, !dbg !5418
  %add16 = add i32 %conv15, 3, !dbg !5419
  %21 = load i32, i32* %i, align 4, !dbg !5420
  %sub17 = sub i32 %add16, %21, !dbg !5421
  %conv18 = trunc i32 %sub17 to i8, !dbg !5418
  %call19 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %19, i8 zeroext %conv18, i8* %t) #9, !dbg !5422
  %22 = load i8, i8* %t, align 1, !dbg !5423
  %conv20 = zext i8 %22 to i32, !dbg !5423
  %23 = load i32, i32* %err_cnt, align 4, !dbg !5424
  %or21 = or i32 %23, %conv20, !dbg !5424
  store i32 %or21, i32* %err_cnt, align 4, !dbg !5424
  br label %for.inc22, !dbg !5425

for.inc22:                                        ; preds = %for.body13
  %24 = load i32, i32* %i, align 4, !dbg !5426
  %inc23 = add i32 %24, 1, !dbg !5426
  store i32 %inc23, i32* %i, align 4, !dbg !5426
  br label %for.cond10, !dbg !5427, !llvm.loop !5428

for.end24:                                        ; preds = %for.cond10
  br label %do.body25, !dbg !5430

do.body25:                                        ; preds = %for.end24
  %25 = load i32, i32* @debug, align 4, !dbg !5431
  %tobool26 = icmp ne i32 %25, 0, !dbg !5431
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !5434

if.then27:                                        ; preds = %do.body25
  %26 = load i32, i32* %err_cnt, align 4, !dbg !5431
  %27 = load i32, i32* %total_cnt, align 4, !dbg !5431
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i32 %26, i32 %27) #8, !dbg !5431
  br label %if.end29, !dbg !5431

if.end29:                                         ; preds = %if.then27, %do.body25
  br label %do.end30, !dbg !5434

do.end30:                                         ; preds = %if.end29
  %28 = load i32, i32* %total_cnt, align 4, !dbg !5435
  %cmp31 = icmp eq i32 %28, 0, !dbg !5437
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !5438

if.then33:                                        ; preds = %do.end30
  %29 = load i32*, i32** %ber.addr, align 8, !dbg !5439
  store i32 0, i32* %29, align 4, !dbg !5440
  br label %if.end35, !dbg !5441

if.else34:                                        ; preds = %do.end30
  %30 = load i32, i32* %err_cnt, align 4, !dbg !5442
  %mul = mul i32 %30, 100, !dbg !5443
  %31 = load i32, i32* %total_cnt, align 4, !dbg !5444
  %div = udiv i32 %mul, %31, !dbg !5445
  %32 = load i32*, i32** %ber.addr, align 8, !dbg !5446
  store i32 %div, i32* %32, align 4, !dbg !5447
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then33
  br label %do.body36, !dbg !5448

do.body36:                                        ; preds = %if.end35
  %33 = load i32, i32* @debug, align 4, !dbg !5449
  %tobool37 = icmp ne i32 %33, 0, !dbg !5449
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !5452

if.then38:                                        ; preds = %do.body36
  %34 = load i32*, i32** %ber.addr, align 8, !dbg !5449
  %35 = load i32, i32* %34, align 4, !dbg !5449
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.lgs8gxx_read_ber, i64 0, i64 0), i32 %35) #8, !dbg !5449
  br label %if.end40, !dbg !5449

if.end40:                                         ; preds = %if.then38, %do.body36
  br label %do.end41, !dbg !5452

do.end41:                                         ; preds = %if.end40
  ret i32 0, !dbg !5453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal) #0 !dbg !5454 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal.addr = alloca i16*, align 8
  %priv = alloca %struct.lgs8gxx_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  store i16* %signal, i16** %signal.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !5459, metadata !DIExpression()), !dbg !5460
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5461
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5462
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5462
  %2 = bitcast i8* %1 to %struct.lgs8gxx_state*, !dbg !5461
  store %struct.lgs8gxx_state* %2, %struct.lgs8gxx_state** %priv, align 8, !dbg !5460
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5463
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %3, i32 0, i32 1, !dbg !5465
  %4 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5465
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %4, i32 0, i32 0, !dbg !5466
  %5 = load i8, i8* %prod, align 4, !dbg !5466
  %conv = zext i8 %5 to i32, !dbg !5463
  %cmp = icmp eq i32 %conv, 0, !dbg !5467
  br i1 %cmp, label %if.then, label %if.else, !dbg !5468

if.then:                                          ; preds = %entry
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5469
  %7 = load i16*, i16** %signal.addr, align 8, !dbg !5470
  %call = call i32 @lgs8913_read_signal_strength(%struct.lgs8gxx_state* %6, i16* %7) #9, !dbg !5471
  store i32 %call, i32* %retval, align 4, !dbg !5472
  br label %return, !dbg !5472

if.else:                                          ; preds = %entry
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5473
  %config2 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %8, i32 0, i32 1, !dbg !5475
  %9 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config2, align 8, !dbg !5475
  %prod3 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %9, i32 0, i32 0, !dbg !5476
  %10 = load i8, i8* %prod3, align 4, !dbg !5476
  %conv4 = zext i8 %10 to i32, !dbg !5473
  %cmp5 = icmp eq i32 %conv4, 6, !dbg !5477
  br i1 %cmp5, label %if.then7, label %if.else9, !dbg !5478

if.then7:                                         ; preds = %if.else
  %11 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5479
  %12 = load i16*, i16** %signal.addr, align 8, !dbg !5480
  %call8 = call i32 @lgs8g75_read_signal_strength(%struct.lgs8gxx_state* %11, i16* %12) #9, !dbg !5481
  store i32 %call8, i32* %retval, align 4, !dbg !5482
  br label %return, !dbg !5482

if.else9:                                         ; preds = %if.else
  %13 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5483
  %14 = load i16*, i16** %signal.addr, align 8, !dbg !5484
  %call10 = call i32 @lgs8gxx_read_signal_agc(%struct.lgs8gxx_state* %13, i16* %14) #9, !dbg !5485
  store i32 %call10, i32* %retval, align 4, !dbg !5486
  br label %return, !dbg !5486

return:                                           ; preds = %if.else9, %if.then7, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5487
  ret i32 %15, !dbg !5487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5488 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %priv = alloca %struct.lgs8gxx_state*, align 8
  %t = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5489, metadata !DIExpression()), !dbg !5490
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5491, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !5493, metadata !DIExpression()), !dbg !5494
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5495
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5496
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5496
  %2 = bitcast i8* %1 to %struct.lgs8gxx_state*, !dbg !5495
  store %struct.lgs8gxx_state* %2, %struct.lgs8gxx_state** %priv, align 8, !dbg !5494
  call void @llvm.dbg.declare(metadata i8* %t, metadata !5497, metadata !DIExpression()), !dbg !5498
  %3 = load i16*, i16** %snr.addr, align 8, !dbg !5499
  store i16 0, i16* %3, align 2, !dbg !5500
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5501
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %4, i32 0, i32 1, !dbg !5503
  %5 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5503
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %5, i32 0, i32 0, !dbg !5504
  %6 = load i8, i8* %prod, align 4, !dbg !5504
  %conv = zext i8 %6 to i32, !dbg !5501
  %cmp = icmp eq i32 %conv, 6, !dbg !5505
  br i1 %cmp, label %if.then, label %if.else, !dbg !5506

if.then:                                          ; preds = %entry
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5507
  %call = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %7, i8 zeroext 52, i8* %t) #9, !dbg !5508
  br label %if.end, !dbg !5508

if.else:                                          ; preds = %entry
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5509
  %call2 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %8, i8 zeroext -107, i8* %t) #9, !dbg !5510
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body, !dbg !5511

do.body:                                          ; preds = %if.end
  %9 = load i32, i32* @debug, align 4, !dbg !5512
  %tobool = icmp ne i32 %9, 0, !dbg !5512
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5515

if.then3:                                         ; preds = %do.body
  %10 = load i8, i8* %t, align 1, !dbg !5512
  %conv4 = zext i8 %10 to i32, !dbg !5512
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 %conv4) #8, !dbg !5512
  br label %if.end6, !dbg !5512

if.end6:                                          ; preds = %if.then3, %do.body
  br label %do.end, !dbg !5515

do.end:                                           ; preds = %if.end6
  %11 = load i8, i8* %t, align 1, !dbg !5516
  %conv7 = zext i8 %11 to i32, !dbg !5516
  %sub = sub i32 256, %conv7, !dbg !5517
  %conv8 = trunc i32 %sub to i16, !dbg !5518
  %12 = load i16*, i16** %snr.addr, align 8, !dbg !5519
  store i16 %conv8, i16* %12, align 2, !dbg !5520
  %13 = load i16*, i16** %snr.addr, align 8, !dbg !5521
  %14 = load i16, i16* %13, align 2, !dbg !5522
  %conv9 = zext i16 %14 to i32, !dbg !5522
  %shl = shl i32 %conv9, 8, !dbg !5522
  %conv10 = trunc i32 %shl to i16, !dbg !5522
  store i16 %conv10, i16* %13, align 2, !dbg !5522
  br label %do.body11, !dbg !5523

do.body11:                                        ; preds = %do.end
  %15 = load i32, i32* @debug, align 4, !dbg !5524
  %tobool12 = icmp ne i32 %15, 0, !dbg !5524
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !5527

if.then13:                                        ; preds = %do.body11
  %16 = load i16*, i16** %snr.addr, align 8, !dbg !5524
  %17 = load i16, i16* %16, align 2, !dbg !5524
  %conv14 = zext i16 %17 to i32, !dbg !5524
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i32 %conv14) #8, !dbg !5524
  br label %if.end16, !dbg !5524

if.end16:                                         ; preds = %if.then13, %do.body11
  br label %do.end17, !dbg !5527

do.end17:                                         ; preds = %if.end16
  ret i32 0, !dbg !5528
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5529 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  %0 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5534
  store i32 0, i32* %0, align 4, !dbg !5535
  br label %do.body, !dbg !5536

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !5537
  %tobool = icmp ne i32 %1, 0, !dbg !5537
  br i1 %tobool, label %if.then, label %if.end, !dbg !5540

if.then:                                          ; preds = %do.body
  %2 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5537
  %3 = load i32, i32* %2, align 4, !dbg !5537
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.lgs8gxx_read_ucblocks, i64 0, i64 0), i32 %3) #8, !dbg !5537
  br label %if.end, !dbg !5537

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5540

do.end:                                           ; preds = %if.end
  ret i32 0, !dbg !5541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5542 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %priv = alloca %struct.lgs8gxx_state*, align 8
  %v = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv, metadata !5547, metadata !DIExpression()), !dbg !5548
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5549
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5550
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5550
  %2 = bitcast i8* %1 to %struct.lgs8gxx_state*, !dbg !5549
  store %struct.lgs8gxx_state* %2, %struct.lgs8gxx_state** %priv, align 8, !dbg !5548
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5551
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %3, i32 0, i32 1, !dbg !5553
  %4 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5553
  %tuner_address = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %4, i32 0, i32 12, !dbg !5554
  %5 = load i8, i8* %tuner_address, align 1, !dbg !5554
  %conv = zext i8 %5 to i32, !dbg !5551
  %cmp = icmp eq i32 %conv, 0, !dbg !5555
  br i1 %cmp, label %if.then, label %if.end, !dbg !5556

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5557
  br label %return, !dbg !5557

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %enable.addr, align 4, !dbg !5558
  %tobool = icmp ne i32 %6, 0, !dbg !5558
  br i1 %tobool, label %if.then2, label %if.end7, !dbg !5560

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8* %v, metadata !5561, metadata !DIExpression()), !dbg !5563
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5564
  %config3 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %7, i32 0, i32 1, !dbg !5565
  %8 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config3, align 8, !dbg !5565
  %tuner_address4 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %8, i32 0, i32 12, !dbg !5566
  %9 = load i8, i8* %tuner_address4, align 1, !dbg !5566
  %conv5 = zext i8 %9 to i32, !dbg !5564
  %or = or i32 128, %conv5, !dbg !5567
  %conv6 = trunc i32 %or to i8, !dbg !5568
  store i8 %conv6, i8* %v, align 1, !dbg !5563
  %10 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5569
  %11 = load i8, i8* %v, align 1, !dbg !5570
  %call = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %10, i8 zeroext 1, i8 zeroext %11) #9, !dbg !5571
  store i32 %call, i32* %retval, align 4, !dbg !5572
  br label %return, !dbg !5572

if.end7:                                          ; preds = %if.end
  %12 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv, align 8, !dbg !5573
  %call8 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %12, i8 zeroext 1, i8 zeroext 0) #9, !dbg !5574
  store i32 %call8, i32* %retval, align 4, !dbg !5575
  br label %return, !dbg !5575

return:                                           ; preds = %if.end7, %if.then2, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5576
  ret i32 %13, !dbg !5576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8g75_set_adc_vpp(%struct.lgs8gxx_state* %priv, i8 zeroext %sel) #0 !dbg !5577 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %sel.addr = alloca i8, align 1
  %r26 = alloca i8, align 1
  %r27 = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  store i8 %sel, i8* %sel.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sel.addr, metadata !5582, metadata !DIExpression()), !dbg !5583
  call void @llvm.dbg.declare(metadata i8* %r26, metadata !5584, metadata !DIExpression()), !dbg !5585
  store i8 115, i8* %r26, align 1, !dbg !5585
  call void @llvm.dbg.declare(metadata i8* %r27, metadata !5586, metadata !DIExpression()), !dbg !5587
  store i8 -112, i8* %r27, align 1, !dbg !5587
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5588
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !5590
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5590
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !5591
  %2 = load i8, i8* %prod, align 4, !dbg !5591
  %conv = zext i8 %2 to i32, !dbg !5588
  %cmp = icmp ne i32 %conv, 6, !dbg !5592
  br i1 %cmp, label %if.then, label %if.end, !dbg !5593

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5594
  br label %return, !dbg !5594

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %sel.addr, align 1, !dbg !5595
  %conv2 = zext i8 %3 to i32, !dbg !5595
  %and = and i32 %conv2, 1, !dbg !5596
  %shl = shl i32 %and, 7, !dbg !5597
  %4 = load i8, i8* %r26, align 1, !dbg !5598
  %conv3 = zext i8 %4 to i32, !dbg !5598
  %or = or i32 %conv3, %shl, !dbg !5598
  %conv4 = trunc i32 %or to i8, !dbg !5598
  store i8 %conv4, i8* %r26, align 1, !dbg !5598
  %5 = load i8, i8* %sel.addr, align 1, !dbg !5599
  %conv5 = zext i8 %5 to i32, !dbg !5599
  %and6 = and i32 %conv5, 2, !dbg !5600
  %shr = ashr i32 %and6, 1, !dbg !5601
  %6 = load i8, i8* %r27, align 1, !dbg !5602
  %conv7 = zext i8 %6 to i32, !dbg !5602
  %or8 = or i32 %conv7, %shr, !dbg !5602
  %conv9 = trunc i32 %or8 to i8, !dbg !5602
  store i8 %conv9, i8* %r27, align 1, !dbg !5602
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5603
  %8 = load i8, i8* %r26, align 1, !dbg !5604
  %call = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %7, i8 zeroext 38, i8 zeroext %8) #9, !dbg !5605
  %9 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5606
  %10 = load i8, i8* %r27, align 1, !dbg !5607
  %call10 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %9, i8 zeroext 39, i8 zeroext %10) #9, !dbg !5608
  store i32 0, i32* %retval, align 4, !dbg !5609
  br label %return, !dbg !5609

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5610
  ret i32 %11, !dbg !5610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_set_mpeg_mode(%struct.lgs8gxx_state* %priv, i8 zeroext %serial, i8 zeroext %clk_pol, i8 zeroext %clk_gated) #0 !dbg !5611 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %serial.addr = alloca i8, align 1
  %clk_pol.addr = alloca i8, align 1
  %clk_gated.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %t = alloca i8, align 1
  %reg_addr = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  store i8 %serial, i8* %serial.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %serial.addr, metadata !5616, metadata !DIExpression()), !dbg !5617
  store i8 %clk_pol, i8* %clk_pol.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_pol.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  store i8 %clk_gated, i8* %clk_gated.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clk_gated.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5622, metadata !DIExpression()), !dbg !5623
  store i32 0, i32* %ret, align 4, !dbg !5623
  call void @llvm.dbg.declare(metadata i8* %t, metadata !5624, metadata !DIExpression()), !dbg !5625
  call void @llvm.dbg.declare(metadata i8* %reg_addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5628
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !5629
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5629
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !5630
  %2 = load i8, i8* %prod, align 4, !dbg !5630
  %conv = zext i8 %2 to i32, !dbg !5628
  %cmp = icmp eq i32 %conv, 6, !dbg !5631
  %3 = zext i1 %cmp to i64, !dbg !5632
  %cond = select i1 %cmp, i32 48, i32 194, !dbg !5632
  %conv2 = trunc i32 %cond to i8, !dbg !5632
  store i8 %conv2, i8* %reg_addr, align 1, !dbg !5633
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5634
  %5 = load i8, i8* %reg_addr, align 1, !dbg !5635
  %call = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %4, i8 zeroext %5, i8* %t) #9, !dbg !5636
  store i32 %call, i32* %ret, align 4, !dbg !5637
  %6 = load i32, i32* %ret, align 4, !dbg !5638
  %cmp3 = icmp ne i32 %6, 0, !dbg !5640
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5641

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !5642
  store i32 %7, i32* %retval, align 4, !dbg !5643
  br label %return, !dbg !5643

if.end:                                           ; preds = %entry
  %8 = load i8, i8* %t, align 1, !dbg !5644
  %conv5 = zext i8 %8 to i32, !dbg !5644
  %and = and i32 %conv5, 248, !dbg !5644
  %conv6 = trunc i32 %and to i8, !dbg !5644
  store i8 %conv6, i8* %t, align 1, !dbg !5644
  %9 = load i8, i8* %serial.addr, align 1, !dbg !5645
  %conv7 = zext i8 %9 to i32, !dbg !5645
  %tobool = icmp ne i32 %conv7, 0, !dbg !5645
  %10 = zext i1 %tobool to i64, !dbg !5645
  %cond8 = select i1 %tobool, i32 1, i32 0, !dbg !5645
  %11 = load i8, i8* %t, align 1, !dbg !5646
  %conv9 = zext i8 %11 to i32, !dbg !5646
  %or = or i32 %conv9, %cond8, !dbg !5646
  %conv10 = trunc i32 %or to i8, !dbg !5646
  store i8 %conv10, i8* %t, align 1, !dbg !5646
  %12 = load i8, i8* %clk_pol.addr, align 1, !dbg !5647
  %conv11 = zext i8 %12 to i32, !dbg !5647
  %tobool12 = icmp ne i32 %conv11, 0, !dbg !5647
  %13 = zext i1 %tobool12 to i64, !dbg !5647
  %cond13 = select i1 %tobool12, i32 2, i32 0, !dbg !5647
  %14 = load i8, i8* %t, align 1, !dbg !5648
  %conv14 = zext i8 %14 to i32, !dbg !5648
  %or15 = or i32 %conv14, %cond13, !dbg !5648
  %conv16 = trunc i32 %or15 to i8, !dbg !5648
  store i8 %conv16, i8* %t, align 1, !dbg !5648
  %15 = load i8, i8* %clk_gated.addr, align 1, !dbg !5649
  %conv17 = zext i8 %15 to i32, !dbg !5649
  %tobool18 = icmp ne i32 %conv17, 0, !dbg !5649
  %16 = zext i1 %tobool18 to i64, !dbg !5649
  %cond19 = select i1 %tobool18, i32 0, i32 4, !dbg !5649
  %17 = load i8, i8* %t, align 1, !dbg !5650
  %conv20 = zext i8 %17 to i32, !dbg !5650
  %or21 = or i32 %conv20, %cond19, !dbg !5650
  %conv22 = trunc i32 %or21 to i8, !dbg !5650
  store i8 %conv22, i8* %t, align 1, !dbg !5650
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5651
  %19 = load i8, i8* %reg_addr, align 1, !dbg !5652
  %20 = load i8, i8* %t, align 1, !dbg !5653
  %call23 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %18, i8 zeroext %19, i8 zeroext %20) #9, !dbg !5654
  store i32 %call23, i32* %ret, align 4, !dbg !5655
  %21 = load i32, i32* %ret, align 4, !dbg !5656
  %cmp24 = icmp ne i32 %21, 0, !dbg !5658
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !5659

if.then26:                                        ; preds = %if.end
  %22 = load i32, i32* %ret, align 4, !dbg !5660
  store i32 %22, i32* %retval, align 4, !dbg !5661
  br label %return, !dbg !5661

if.end27:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5662
  br label %return, !dbg !5662

return:                                           ; preds = %if.end27, %if.then26, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5663
  ret i32 %23, !dbg !5663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8913_init(%struct.lgs8gxx_state* %priv) #0 !dbg !5664 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %t = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.declare(metadata i8* %t, metadata !5667, metadata !DIExpression()), !dbg !5668
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5669
  %call = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %0, i8 zeroext -63, i8 zeroext 3) #9, !dbg !5670
  %1 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5671
  %call1 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %1, i8 zeroext 124, i8* %t) #9, !dbg !5672
  %2 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5673
  %3 = load i8, i8* %t, align 1, !dbg !5674
  %conv = zext i8 %3 to i32, !dbg !5674
  %and = and i32 %conv, 140, !dbg !5675
  %or = or i32 %and, 3, !dbg !5676
  %conv2 = trunc i32 %or to i8, !dbg !5677
  %call3 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %2, i8 zeroext 124, i8 zeroext %conv2) #9, !dbg !5678
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5679
  %call4 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %4, i8 zeroext -61, i8* %t) #9, !dbg !5680
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5681
  %6 = load i8, i8* %t, align 1, !dbg !5682
  %conv5 = zext i8 %6 to i32, !dbg !5682
  %and6 = and i32 %conv5, 16, !dbg !5683
  %conv7 = trunc i32 %and6 to i8, !dbg !5682
  %call8 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %5, i8 zeroext -61, i8 zeroext %conv7) #9, !dbg !5684
  ret i32 0, !dbg !5685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_set_if_freq(%struct.lgs8gxx_state* %priv, i32 %freq) #0 !dbg !5686 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %freq.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %v32 = alloca i32, align 4
  %if_clk = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !5689, metadata !DIExpression()), !dbg !5690
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !5691, metadata !DIExpression()), !dbg !5692
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5693, metadata !DIExpression()), !dbg !5694
  call void @llvm.dbg.declare(metadata i32* %v32, metadata !5695, metadata !DIExpression()), !dbg !5696
  call void @llvm.dbg.declare(metadata i32* %if_clk, metadata !5697, metadata !DIExpression()), !dbg !5698
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5699
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !5700
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5700
  %if_clk_freq = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 5, !dbg !5701
  %2 = load i32, i32* %if_clk_freq, align 4, !dbg !5701
  store i32 %2, i32* %if_clk, align 4, !dbg !5702
  %3 = load i32, i32* %freq.addr, align 4, !dbg !5703
  %conv = zext i32 %3 to i64, !dbg !5703
  store i64 %conv, i64* %val, align 8, !dbg !5704
  %4 = load i32, i32* %freq.addr, align 4, !dbg !5705
  %cmp = icmp ne i32 %4, 0, !dbg !5707
  br i1 %cmp, label %if.then, label %if.else, !dbg !5708

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %val, align 8, !dbg !5709
  %shl = shl i64 %5, 32, !dbg !5709
  store i64 %shl, i64* %val, align 8, !dbg !5709
  %6 = load i32, i32* %if_clk, align 4, !dbg !5711
  %cmp2 = icmp ne i32 %6, 0, !dbg !5713
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !5714

if.then4:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5715, metadata !DIExpression()), !dbg !5717
  %7 = load i32, i32* %if_clk, align 4, !dbg !5717
  store i32 %7, i32* %__base, align 4, !dbg !5717
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5718, metadata !DIExpression()), !dbg !5717
  %8 = load i64, i64* %val, align 8, !dbg !5717
  %9 = load i32, i32* %__base, align 4, !dbg !5717
  %conv5 = zext i32 %9 to i64, !dbg !5717
  %rem = urem i64 %8, %conv5, !dbg !5717
  %conv6 = trunc i64 %rem to i32, !dbg !5717
  store i32 %conv6, i32* %__rem, align 4, !dbg !5717
  %10 = load i64, i64* %val, align 8, !dbg !5717
  %11 = load i32, i32* %__base, align 4, !dbg !5717
  %conv7 = zext i32 %11 to i64, !dbg !5717
  %div = udiv i64 %10, %conv7, !dbg !5717
  store i64 %div, i64* %val, align 8, !dbg !5717
  %12 = load i32, i32* %__rem, align 4, !dbg !5717
  store i32 %12, i32* %tmp, align 4, !dbg !5717
  %13 = load i32, i32* %tmp, align 4, !dbg !5717
  br label %if.end, !dbg !5719

if.end:                                           ; preds = %if.then4, %if.then
  %14 = load i64, i64* %val, align 8, !dbg !5720
  %and = and i64 %14, 4294967295, !dbg !5721
  %conv8 = trunc i64 %and to i32, !dbg !5720
  store i32 %conv8, i32* %v32, align 4, !dbg !5722
  br label %do.body, !dbg !5723

do.body:                                          ; preds = %if.end
  %15 = load i32, i32* @debug, align 4, !dbg !5724
  %tobool = icmp ne i32 %15, 0, !dbg !5724
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5727

if.then9:                                         ; preds = %do.body
  %16 = load i32, i32* %freq.addr, align 4, !dbg !5724
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %16) #8, !dbg !5724
  br label %if.end10, !dbg !5724

if.end10:                                         ; preds = %if.then9, %do.body
  br label %do.end, !dbg !5727

do.end:                                           ; preds = %if.end10
  br label %if.end17, !dbg !5728

if.else:                                          ; preds = %entry
  store i32 0, i32* %v32, align 4, !dbg !5729
  br label %do.body11, !dbg !5731

do.body11:                                        ; preds = %if.else
  %17 = load i32, i32* @debug, align 4, !dbg !5732
  %tobool12 = icmp ne i32 %17, 0, !dbg !5732
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !5735

if.then13:                                        ; preds = %do.body11
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !5732
  br label %if.end15, !dbg !5732

if.end15:                                         ; preds = %if.then13, %do.body11
  br label %do.end16, !dbg !5735

do.end16:                                         ; preds = %if.end15
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %do.end
  br label %do.body18, !dbg !5736

do.body18:                                        ; preds = %if.end17
  %18 = load i32, i32* @debug, align 4, !dbg !5737
  %tobool19 = icmp ne i32 %18, 0, !dbg !5737
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5740

if.then20:                                        ; preds = %do.body18
  %19 = load i32, i32* %v32, align 4, !dbg !5737
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %19) #8, !dbg !5737
  br label %if.end22, !dbg !5737

if.end22:                                         ; preds = %if.then20, %do.body18
  br label %do.end23, !dbg !5740

do.end23:                                         ; preds = %if.end22
  %20 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5741
  %config24 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %20, i32 0, i32 1, !dbg !5743
  %21 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config24, align 8, !dbg !5743
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %21, i32 0, i32 0, !dbg !5744
  %22 = load i8, i8* %prod, align 4, !dbg !5744
  %conv25 = zext i8 %22 to i32, !dbg !5741
  %cmp26 = icmp eq i32 %conv25, 6, !dbg !5745
  br i1 %cmp26, label %if.then28, label %if.else43, !dbg !5746

if.then28:                                        ; preds = %do.end23
  %23 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5747
  %24 = load i32, i32* %v32, align 4, !dbg !5749
  %and29 = and i32 255, %24, !dbg !5750
  %conv30 = trunc i32 %and29 to i8, !dbg !5751
  %call31 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %23, i8 zeroext 8, i8 zeroext %conv30) #9, !dbg !5752
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5753
  %26 = load i32, i32* %v32, align 4, !dbg !5754
  %shr = lshr i32 %26, 8, !dbg !5755
  %and32 = and i32 255, %shr, !dbg !5756
  %conv33 = trunc i32 %and32 to i8, !dbg !5757
  %call34 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %25, i8 zeroext 9, i8 zeroext %conv33) #9, !dbg !5758
  %27 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5759
  %28 = load i32, i32* %v32, align 4, !dbg !5760
  %shr35 = lshr i32 %28, 16, !dbg !5761
  %and36 = and i32 255, %shr35, !dbg !5762
  %conv37 = trunc i32 %and36 to i8, !dbg !5763
  %call38 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %27, i8 zeroext 10, i8 zeroext %conv37) #9, !dbg !5764
  %29 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5765
  %30 = load i32, i32* %v32, align 4, !dbg !5766
  %shr39 = lshr i32 %30, 24, !dbg !5767
  %and40 = and i32 255, %shr39, !dbg !5768
  %conv41 = trunc i32 %and40 to i8, !dbg !5769
  %call42 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %29, i8 zeroext 11, i8 zeroext %conv41) #9, !dbg !5770
  br label %if.end59, !dbg !5771

if.else43:                                        ; preds = %do.end23
  %31 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5772
  %32 = load i32, i32* %v32, align 4, !dbg !5774
  %and44 = and i32 255, %32, !dbg !5775
  %conv45 = trunc i32 %and44 to i8, !dbg !5776
  %call46 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %31, i8 zeroext 9, i8 zeroext %conv45) #9, !dbg !5777
  %33 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5778
  %34 = load i32, i32* %v32, align 4, !dbg !5779
  %shr47 = lshr i32 %34, 8, !dbg !5780
  %and48 = and i32 255, %shr47, !dbg !5781
  %conv49 = trunc i32 %and48 to i8, !dbg !5782
  %call50 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %33, i8 zeroext 10, i8 zeroext %conv49) #9, !dbg !5783
  %35 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5784
  %36 = load i32, i32* %v32, align 4, !dbg !5785
  %shr51 = lshr i32 %36, 16, !dbg !5786
  %and52 = and i32 255, %shr51, !dbg !5787
  %conv53 = trunc i32 %and52 to i8, !dbg !5788
  %call54 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %35, i8 zeroext 11, i8 zeroext %conv53) #9, !dbg !5789
  %37 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5790
  %38 = load i32, i32* %v32, align 4, !dbg !5791
  %shr55 = lshr i32 %38, 24, !dbg !5792
  %and56 = and i32 255, %shr55, !dbg !5793
  %conv57 = trunc i32 %and56 to i8, !dbg !5794
  %call58 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %37, i8 zeroext 12, i8 zeroext %conv57) #9, !dbg !5795
  br label %if.end59

if.end59:                                         ; preds = %if.else43, %if.then28
  ret i32 0, !dbg !5796
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_set_ad_mode(%struct.lgs8gxx_state* %priv) #0 !dbg !5797 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %config = alloca %struct.lgs8gxx_config*, align 8
  %if_conf = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_config** %config, metadata !5800, metadata !DIExpression()), !dbg !5801
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5802
  %config1 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !5803
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config1, align 8, !dbg !5803
  store %struct.lgs8gxx_config* %1, %struct.lgs8gxx_config** %config, align 8, !dbg !5801
  call void @llvm.dbg.declare(metadata i8* %if_conf, metadata !5804, metadata !DIExpression()), !dbg !5805
  store i8 16, i8* %if_conf, align 1, !dbg !5806
  %2 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5807
  %ext_adc = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %2, i32 0, i32 7, !dbg !5808
  %3 = load i8, i8* %ext_adc, align 4, !dbg !5808
  %conv = zext i8 %3 to i32, !dbg !5809
  %tobool = icmp ne i32 %conv, 0, !dbg !5809
  %4 = zext i1 %tobool to i64, !dbg !5809
  %cond = select i1 %tobool, i32 128, i32 0, !dbg !5809
  %5 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5810
  %if_neg_center = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %5, i32 0, i32 10, !dbg !5811
  %6 = load i8, i8* %if_neg_center, align 1, !dbg !5811
  %conv2 = zext i8 %6 to i32, !dbg !5812
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !5812
  %7 = zext i1 %tobool3 to i64, !dbg !5812
  %cond4 = select i1 %tobool3, i32 4, i32 0, !dbg !5812
  %or = or i32 %cond, %cond4, !dbg !5813
  %8 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5814
  %if_freq = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %8, i32 0, i32 6, !dbg !5815
  %9 = load i32, i32* %if_freq, align 4, !dbg !5815
  %cmp = icmp eq i32 %9, 0, !dbg !5816
  %10 = zext i1 %cmp to i64, !dbg !5817
  %cond6 = select i1 %cmp, i32 8, i32 0, !dbg !5817
  %or7 = or i32 %or, %cond6, !dbg !5818
  %11 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5819
  %adc_signed = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %11, i32 0, i32 8, !dbg !5820
  %12 = load i8, i8* %adc_signed, align 1, !dbg !5820
  %conv8 = zext i8 %12 to i32, !dbg !5821
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !5821
  %13 = zext i1 %tobool9 to i64, !dbg !5821
  %cond10 = select i1 %tobool9, i32 2, i32 0, !dbg !5821
  %or11 = or i32 %or7, %cond10, !dbg !5822
  %14 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5823
  %if_neg_edge = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %14, i32 0, i32 9, !dbg !5824
  %15 = load i8, i8* %if_neg_edge, align 2, !dbg !5824
  %conv12 = zext i8 %15 to i32, !dbg !5825
  %tobool13 = icmp ne i32 %conv12, 0, !dbg !5825
  %16 = zext i1 %tobool13 to i64, !dbg !5825
  %cond14 = select i1 %tobool13, i32 1, i32 0, !dbg !5825
  %or15 = or i32 %or11, %cond14, !dbg !5826
  %17 = load i8, i8* %if_conf, align 1, !dbg !5827
  %conv16 = zext i8 %17 to i32, !dbg !5827
  %or17 = or i32 %conv16, %or15, !dbg !5827
  %conv18 = trunc i32 %or17 to i8, !dbg !5827
  store i8 %conv18, i8* %if_conf, align 1, !dbg !5827
  %18 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5828
  %ext_adc19 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %18, i32 0, i32 7, !dbg !5830
  %19 = load i8, i8* %ext_adc19, align 4, !dbg !5830
  %conv20 = zext i8 %19 to i32, !dbg !5828
  %tobool21 = icmp ne i32 %conv20, 0, !dbg !5828
  br i1 %tobool21, label %land.lhs.true, label %if.end, !dbg !5831

land.lhs.true:                                    ; preds = %entry
  %20 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5832
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %20, i32 0, i32 0, !dbg !5833
  %21 = load i8, i8* %prod, align 4, !dbg !5833
  %conv22 = zext i8 %21 to i32, !dbg !5832
  %cmp23 = icmp eq i32 %conv22, 4, !dbg !5834
  br i1 %cmp23, label %if.then, label %if.end, !dbg !5835

if.then:                                          ; preds = %land.lhs.true
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5836
  %call = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %22, i8 zeroext -70, i8 zeroext 64) #9, !dbg !5838
  br label %if.end, !dbg !5839

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %23 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5840
  %24 = load i8, i8* %if_conf, align 1, !dbg !5841
  %call25 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %23, i8 zeroext 7, i8 zeroext %24) #9, !dbg !5842
  ret i32 0, !dbg !5843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %priv, i8 zeroext %reg, i8 zeroext %data) #0 !dbg !5844 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5849, metadata !DIExpression()), !dbg !5850
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5853, metadata !DIExpression()), !dbg !5854
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5855, metadata !DIExpression()), !dbg !5857
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5858
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5859
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !5858
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5858
  %1 = load i8, i8* %data.addr, align 1, !dbg !5860
  store i8 %1, i8* %arrayinit.element, align 1, !dbg !5858
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5861, metadata !DIExpression()), !dbg !5862
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5863
  store i16 0, i16* %addr, align 8, !dbg !5863
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5863
  store i16 0, i16* %flags, align 2, !dbg !5863
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5863
  store i16 2, i16* %len, align 4, !dbg !5863
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5863
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5864
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !5863
  %2 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5865
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %2, i32 0, i32 1, !dbg !5866
  %3 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5866
  %demod_address = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %3, i32 0, i32 1, !dbg !5867
  %4 = load i8, i8* %demod_address, align 1, !dbg !5867
  %conv = zext i8 %4 to i16, !dbg !5865
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5868
  store i16 %conv, i16* %addr2, align 8, !dbg !5869
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5870
  %config3 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %5, i32 0, i32 1, !dbg !5872
  %6 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config3, align 8, !dbg !5872
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %6, i32 0, i32 0, !dbg !5873
  %7 = load i8, i8* %prod, align 4, !dbg !5873
  %conv4 = zext i8 %7 to i32, !dbg !5870
  %cmp = icmp ne i32 %conv4, 6, !dbg !5874
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5875

land.lhs.true:                                    ; preds = %entry
  %8 = load i8, i8* %reg.addr, align 1, !dbg !5876
  %conv6 = zext i8 %8 to i32, !dbg !5876
  %cmp7 = icmp sge i32 %conv6, 192, !dbg !5877
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5878

if.then:                                          ; preds = %land.lhs.true
  %addr9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5879
  %9 = load i16, i16* %addr9, align 8, !dbg !5880
  %conv10 = zext i16 %9 to i32, !dbg !5880
  %add = add i32 %conv10, 2, !dbg !5880
  %conv11 = trunc i32 %add to i16, !dbg !5880
  store i16 %conv11, i16* %addr9, align 8, !dbg !5880
  br label %if.end, !dbg !5881

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* @debug, align 4, !dbg !5882
  %cmp12 = icmp sge i32 %10, 2, !dbg !5884
  br i1 %cmp12, label %if.then14, label %if.end19, !dbg !5885

if.then14:                                        ; preds = %if.end
  br label %do.body, !dbg !5886

do.body:                                          ; preds = %if.then14
  %11 = load i32, i32* @debug, align 4, !dbg !5887
  %tobool = icmp ne i32 %11, 0, !dbg !5887
  br i1 %tobool, label %if.then15, label %if.end18, !dbg !5890

if.then15:                                        ; preds = %do.body
  %12 = load i8, i8* %reg.addr, align 1, !dbg !5887
  %conv16 = zext i8 %12 to i32, !dbg !5887
  %13 = load i8, i8* %data.addr, align 1, !dbg !5887
  %conv17 = zext i8 %13 to i32, !dbg !5887
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.lgs8gxx_write_reg, i64 0, i64 0), i32 %conv16, i32 %conv17) #8, !dbg !5887
  br label %if.end18, !dbg !5887

if.end18:                                         ; preds = %if.then15, %do.body
  br label %do.end, !dbg !5890

do.end:                                           ; preds = %if.end18
  br label %if.end19, !dbg !5890

if.end19:                                         ; preds = %do.end, %if.end
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5891
  %i2c = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %14, i32 0, i32 0, !dbg !5892
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5892
  %call20 = call i32 @i2c_transfer(%struct.i2c_adapter* %15, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5893
  store i32 %call20, i32* %ret, align 4, !dbg !5894
  %16 = load i32, i32* %ret, align 4, !dbg !5895
  %cmp21 = icmp ne i32 %16, 1, !dbg !5897
  br i1 %cmp21, label %if.then23, label %if.end32, !dbg !5898

if.then23:                                        ; preds = %if.end19
  br label %do.body24, !dbg !5899

do.body24:                                        ; preds = %if.then23
  %17 = load i32, i32* @debug, align 4, !dbg !5900
  %tobool25 = icmp ne i32 %17, 0, !dbg !5900
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !5903

if.then26:                                        ; preds = %do.body24
  %18 = load i8, i8* %reg.addr, align 1, !dbg !5900
  %conv27 = zext i8 %18 to i32, !dbg !5900
  %19 = load i8, i8* %data.addr, align 1, !dbg !5900
  %conv28 = zext i8 %19 to i32, !dbg !5900
  %20 = load i32, i32* %ret, align 4, !dbg !5900
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.lgs8gxx_write_reg, i64 0, i64 0), i32 %conv27, i32 %conv28, i32 %20) #8, !dbg !5900
  br label %if.end30, !dbg !5900

if.end30:                                         ; preds = %if.then26, %do.body24
  br label %do.end31, !dbg !5903

do.end31:                                         ; preds = %if.end30
  br label %if.end32, !dbg !5903

if.end32:                                         ; preds = %do.end31, %if.end19
  %21 = load i32, i32* %ret, align 4, !dbg !5904
  %cmp33 = icmp ne i32 %21, 1, !dbg !5905
  %22 = zext i1 %cmp33 to i64, !dbg !5906
  %cond = select i1 %cmp33, i32 -1, i32 0, !dbg !5906
  ret i32 %cond, !dbg !5907
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lgs8gxx_auto_lock(%struct.lgs8gxx_state* %priv) #0 !dbg !5908 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %err = alloca i8, align 1
  %gi = alloca i8, align 1
  %detected_param = alloca i8, align 1
  %inter_leave_len = alloca i8, align 1
  %t = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  call void @llvm.dbg.declare(metadata i8* %err, metadata !5913, metadata !DIExpression()), !dbg !5914
  call void @llvm.dbg.declare(metadata i8* %gi, metadata !5915, metadata !DIExpression()), !dbg !5916
  store i8 2, i8* %gi, align 1, !dbg !5916
  call void @llvm.dbg.declare(metadata i8* %detected_param, metadata !5917, metadata !DIExpression()), !dbg !5918
  store i8 0, i8* %detected_param, align 1, !dbg !5918
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5919
  %call = call i32 @lgs8gxx_auto_detect(%struct.lgs8gxx_state* %0, i8* %detected_param, i8* %gi) #9, !dbg !5920
  %conv = trunc i32 %call to i8, !dbg !5920
  store i8 %conv, i8* %err, align 1, !dbg !5921
  %1 = load i8, i8* %err, align 1, !dbg !5922
  %conv1 = sext i8 %1 to i32, !dbg !5922
  %cmp = icmp ne i32 %conv1, 0, !dbg !5924
  br i1 %cmp, label %if.then, label %if.else, !dbg !5925

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5926

do.body:                                          ; preds = %if.then
  %2 = load i32, i32* @debug, align 4, !dbg !5928
  %tobool = icmp ne i32 %2, 0, !dbg !5928
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5931

if.then3:                                         ; preds = %do.body
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !5928
  br label %if.end, !dbg !5928

if.end:                                           ; preds = %if.then3, %do.body
  br label %do.end, !dbg !5931

do.end:                                           ; preds = %if.end
  br label %if.end12, !dbg !5932

if.else:                                          ; preds = %entry
  br label %do.body5, !dbg !5933

do.body5:                                         ; preds = %if.else
  %3 = load i32, i32* @debug, align 4, !dbg !5934
  %tobool6 = icmp ne i32 %3, 0, !dbg !5934
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !5937

if.then7:                                         ; preds = %do.body5
  %4 = load i8, i8* %detected_param, align 1, !dbg !5934
  %conv8 = zext i8 %4 to i32, !dbg !5934
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %conv8) #8, !dbg !5934
  br label %if.end10, !dbg !5934

if.end10:                                         ; preds = %if.then7, %do.body5
  br label %do.end11, !dbg !5937

do.end11:                                         ; preds = %if.end10
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %do.end
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5938
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %5, i32 0, i32 1, !dbg !5940
  %6 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !5940
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %6, i32 0, i32 0, !dbg !5941
  %7 = load i8, i8* %prod, align 4, !dbg !5941
  %conv13 = zext i8 %7 to i32, !dbg !5938
  %cmp14 = icmp eq i32 %conv13, 0, !dbg !5942
  br i1 %cmp14, label %if.then16, label %if.end29, !dbg !5943

if.then16:                                        ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i8* %inter_leave_len, metadata !5944, metadata !DIExpression()), !dbg !5946
  %8 = load i8, i8* %detected_param, align 1, !dbg !5947
  %conv17 = zext i8 %8 to i32, !dbg !5947
  %and = and i32 %conv17, 32, !dbg !5948
  %conv18 = trunc i32 %and to i8, !dbg !5947
  store i8 %conv18, i8* %inter_leave_len, align 1, !dbg !5946
  %9 = load i8, i8* %inter_leave_len, align 1, !dbg !5949
  %conv19 = zext i8 %9 to i32, !dbg !5949
  %cmp20 = icmp eq i32 %conv19, 0, !dbg !5950
  %10 = zext i1 %cmp20 to i64, !dbg !5951
  %cond = select i1 %cmp20, i32 96, i32 64, !dbg !5951
  %conv22 = trunc i32 %cond to i8, !dbg !5951
  store i8 %conv22, i8* %inter_leave_len, align 1, !dbg !5952
  %11 = load i8, i8* %detected_param, align 1, !dbg !5953
  %conv23 = zext i8 %11 to i32, !dbg !5953
  %and24 = and i32 %conv23, 159, !dbg !5953
  %conv25 = trunc i32 %and24 to i8, !dbg !5953
  store i8 %conv25, i8* %detected_param, align 1, !dbg !5953
  %12 = load i8, i8* %inter_leave_len, align 1, !dbg !5954
  %conv26 = zext i8 %12 to i32, !dbg !5954
  %13 = load i8, i8* %detected_param, align 1, !dbg !5955
  %conv27 = zext i8 %13 to i32, !dbg !5955
  %or = or i32 %conv27, %conv26, !dbg !5955
  %conv28 = trunc i32 %or to i8, !dbg !5955
  store i8 %conv28, i8* %detected_param, align 1, !dbg !5955
  br label %if.end29, !dbg !5956

if.end29:                                         ; preds = %if.then16, %if.end12
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5957
  %config30 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %14, i32 0, i32 1, !dbg !5959
  %15 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config30, align 8, !dbg !5959
  %prod31 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %15, i32 0, i32 0, !dbg !5960
  %16 = load i8, i8* %prod31, align 4, !dbg !5960
  %conv32 = zext i8 %16 to i32, !dbg !5957
  %cmp33 = icmp eq i32 %conv32, 6, !dbg !5961
  br i1 %cmp33, label %if.then35, label %if.else45, !dbg !5962

if.then35:                                        ; preds = %if.end29
  call void @llvm.dbg.declare(metadata i8* %t, metadata !5963, metadata !DIExpression()), !dbg !5965
  %17 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5966
  %call36 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %17, i8 zeroext 25, i8* %t) #9, !dbg !5967
  %18 = load i8, i8* %t, align 1, !dbg !5968
  %conv37 = zext i8 %18 to i32, !dbg !5968
  %and38 = and i32 %conv37, 129, !dbg !5968
  %conv39 = trunc i32 %and38 to i8, !dbg !5968
  store i8 %conv39, i8* %t, align 1, !dbg !5968
  %19 = load i8, i8* %detected_param, align 1, !dbg !5969
  %conv40 = zext i8 %19 to i32, !dbg !5969
  %shl = shl i32 %conv40, 1, !dbg !5970
  %20 = load i8, i8* %t, align 1, !dbg !5971
  %conv41 = zext i8 %20 to i32, !dbg !5971
  %or42 = or i32 %conv41, %shl, !dbg !5971
  %conv43 = trunc i32 %or42 to i8, !dbg !5971
  store i8 %conv43, i8* %t, align 1, !dbg !5971
  %21 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5972
  %22 = load i8, i8* %t, align 1, !dbg !5973
  %call44 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %21, i8 zeroext 25, i8 zeroext %22) #9, !dbg !5974
  br label %if.end55, !dbg !5975

if.else45:                                        ; preds = %if.end29
  %23 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5976
  %24 = load i8, i8* %detected_param, align 1, !dbg !5978
  %call46 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %23, i8 zeroext 125, i8 zeroext %24) #9, !dbg !5979
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5980
  %config47 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %25, i32 0, i32 1, !dbg !5982
  %26 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config47, align 8, !dbg !5982
  %prod48 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %26, i32 0, i32 0, !dbg !5983
  %27 = load i8, i8* %prod48, align 4, !dbg !5983
  %conv49 = zext i8 %27 to i32, !dbg !5980
  %cmp50 = icmp eq i32 %conv49, 0, !dbg !5984
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !5985

if.then52:                                        ; preds = %if.else45
  %28 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5986
  %29 = load i8, i8* %detected_param, align 1, !dbg !5987
  %call53 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %28, i8 zeroext -64, i8 zeroext %29) #9, !dbg !5988
  br label %if.end54, !dbg !5988

if.end54:                                         ; preds = %if.then52, %if.else45
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then35
  %30 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5989
  %call56 = call i32 @lgs8gxx_set_mode_manual(%struct.lgs8gxx_state* %30) #9, !dbg !5990
  %31 = load i8, i8* %gi, align 1, !dbg !5991
  %conv57 = zext i8 %31 to i32, !dbg !5991
  switch i32 %conv57, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb58
    i32 0, label %sw.bb60
  ], !dbg !5992

sw.bb:                                            ; preds = %if.end55
  %32 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5993
  %curr_gi = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %32, i32 0, i32 3, !dbg !5995
  store i16 945, i16* %curr_gi, align 8, !dbg !5996
  br label %sw.epilog, !dbg !5997

sw.bb58:                                          ; preds = %if.end55
  %33 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !5998
  %curr_gi59 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %33, i32 0, i32 3, !dbg !5999
  store i16 595, i16* %curr_gi59, align 8, !dbg !6000
  br label %sw.epilog, !dbg !6001

sw.bb60:                                          ; preds = %if.end55
  %34 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6002
  %curr_gi61 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %34, i32 0, i32 3, !dbg !6003
  store i16 420, i16* %curr_gi61, align 8, !dbg !6004
  br label %sw.epilog, !dbg !6005

sw.default:                                       ; preds = %if.end55
  %35 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6006
  %curr_gi62 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %35, i32 0, i32 3, !dbg !6007
  store i16 945, i16* %curr_gi62, align 8, !dbg !6008
  br label %sw.epilog, !dbg !6009

sw.epilog:                                        ; preds = %sw.default, %sw.bb60, %sw.bb58, %sw.bb
  ret void, !dbg !6010
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_auto_detect(%struct.lgs8gxx_state* %priv, i8* %detected_param, i8* %gi) #0 !dbg !6011 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %detected_param.addr = alloca i8*, align 8
  %gi.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %err = alloca i32, align 4
  %locked = alloca i8, align 1
  %tmp_gi = alloca i8, align 1
  %t = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6014, metadata !DIExpression()), !dbg !6015
  store i8* %detected_param, i8** %detected_param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %detected_param.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  store i8* %gi, i8** %gi.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gi.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6020, metadata !DIExpression()), !dbg !6021
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6022, metadata !DIExpression()), !dbg !6023
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6024, metadata !DIExpression()), !dbg !6025
  store i32 0, i32* %err, align 4, !dbg !6025
  call void @llvm.dbg.declare(metadata i8* %locked, metadata !6026, metadata !DIExpression()), !dbg !6027
  store i8 0, i8* %locked, align 1, !dbg !6027
  call void @llvm.dbg.declare(metadata i8* %tmp_gi, metadata !6028, metadata !DIExpression()), !dbg !6029
  br label %do.body, !dbg !6030

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6031
  %tobool = icmp ne i32 %0, 0, !dbg !6031
  br i1 %tobool, label %if.then, label %if.end, !dbg !6034

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.lgs8gxx_auto_detect, i64 0, i64 0)) #8, !dbg !6031
  br label %if.end, !dbg !6031

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6034

do.end:                                           ; preds = %if.end
  %1 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6035
  %call1 = call i32 @lgs8gxx_set_mode_auto(%struct.lgs8gxx_state* %1) #9, !dbg !6036
  %2 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6037
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %2, i32 0, i32 1, !dbg !6039
  %3 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6039
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %3, i32 0, i32 0, !dbg !6040
  %4 = load i8, i8* %prod, align 4, !dbg !6040
  %conv = zext i8 %4 to i32, !dbg !6037
  %cmp = icmp eq i32 %conv, 6, !dbg !6041
  br i1 %cmp, label %if.then3, label %if.else, !dbg !6042

if.then3:                                         ; preds = %do.end
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6043
  %call4 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %5, i8 zeroext 103, i8 zeroext -86) #9, !dbg !6045
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6046
  %call5 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %6, i8 zeroext 110, i8 zeroext 63) #9, !dbg !6047
  br label %if.end7, !dbg !6048

if.else:                                          ; preds = %do.end
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6049
  %call6 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %7, i8 zeroext 3, i8 zeroext 0) #9, !dbg !6051
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  store i32 0, i32* %i, align 4, !dbg !6052
  br label %for.cond, !dbg !6054

for.cond:                                         ; preds = %for.inc44, %if.end7
  %8 = load i32, i32* %i, align 4, !dbg !6055
  %cmp8 = icmp slt i32 %8, 2, !dbg !6057
  br i1 %cmp8, label %for.body, label %for.end46, !dbg !6058

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !6059
  br label %for.cond10, !dbg !6062

for.cond10:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4, !dbg !6063
  %cmp11 = icmp slt i32 %9, 2, !dbg !6065
  br i1 %cmp11, label %for.body13, label %for.end, !dbg !6066

for.body13:                                       ; preds = %for.cond10
  store i8 2, i8* %tmp_gi, align 1, !dbg !6067
  %10 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6069
  %11 = load i32, i32* %j, align 4, !dbg !6070
  %conv14 = trunc i32 %11 to i8, !dbg !6070
  %call15 = call i32 @lgs8gxx_autolock_gi(%struct.lgs8gxx_state* %10, i8 zeroext 2, i8 zeroext %conv14, i8* %locked) #9, !dbg !6071
  store i32 %call15, i32* %err, align 4, !dbg !6072
  %12 = load i32, i32* %err, align 4, !dbg !6073
  %tobool16 = icmp ne i32 %12, 0, !dbg !6073
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6075

if.then17:                                        ; preds = %for.body13
  br label %out, !dbg !6076

if.end18:                                         ; preds = %for.body13
  %13 = load i8, i8* %locked, align 1, !dbg !6077
  %tobool19 = icmp ne i8 %13, 0, !dbg !6077
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6079

if.then20:                                        ; preds = %if.end18
  br label %locked47, !dbg !6080

if.end21:                                         ; preds = %if.end18
  br label %for.inc, !dbg !6081

for.inc:                                          ; preds = %if.end21
  %14 = load i32, i32* %j, align 4, !dbg !6082
  %inc = add i32 %14, 1, !dbg !6082
  store i32 %inc, i32* %j, align 4, !dbg !6082
  br label %for.cond10, !dbg !6083, !llvm.loop !6084

for.end:                                          ; preds = %for.cond10
  store i32 0, i32* %j, align 4, !dbg !6086
  br label %for.cond22, !dbg !6088

for.cond22:                                       ; preds = %for.inc34, %for.end
  %15 = load i32, i32* %j, align 4, !dbg !6089
  %cmp23 = icmp slt i32 %15, 2, !dbg !6091
  br i1 %cmp23, label %for.body25, label %for.end36, !dbg !6092

for.body25:                                       ; preds = %for.cond22
  store i8 0, i8* %tmp_gi, align 1, !dbg !6093
  %16 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6095
  %17 = load i32, i32* %j, align 4, !dbg !6096
  %conv26 = trunc i32 %17 to i8, !dbg !6096
  %call27 = call i32 @lgs8gxx_autolock_gi(%struct.lgs8gxx_state* %16, i8 zeroext 0, i8 zeroext %conv26, i8* %locked) #9, !dbg !6097
  store i32 %call27, i32* %err, align 4, !dbg !6098
  %18 = load i32, i32* %err, align 4, !dbg !6099
  %tobool28 = icmp ne i32 %18, 0, !dbg !6099
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6101

if.then29:                                        ; preds = %for.body25
  br label %out, !dbg !6102

if.end30:                                         ; preds = %for.body25
  %19 = load i8, i8* %locked, align 1, !dbg !6103
  %tobool31 = icmp ne i8 %19, 0, !dbg !6103
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6105

if.then32:                                        ; preds = %if.end30
  br label %locked47, !dbg !6106

if.end33:                                         ; preds = %if.end30
  br label %for.inc34, !dbg !6107

for.inc34:                                        ; preds = %if.end33
  %20 = load i32, i32* %j, align 4, !dbg !6108
  %inc35 = add i32 %20, 1, !dbg !6108
  store i32 %inc35, i32* %j, align 4, !dbg !6108
  br label %for.cond22, !dbg !6109, !llvm.loop !6110

for.end36:                                        ; preds = %for.cond22
  store i8 1, i8* %tmp_gi, align 1, !dbg !6112
  %21 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6113
  %call37 = call i32 @lgs8gxx_autolock_gi(%struct.lgs8gxx_state* %21, i8 zeroext 1, i8 zeroext 1, i8* %locked) #9, !dbg !6114
  store i32 %call37, i32* %err, align 4, !dbg !6115
  %22 = load i32, i32* %err, align 4, !dbg !6116
  %tobool38 = icmp ne i32 %22, 0, !dbg !6116
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !6118

if.then39:                                        ; preds = %for.end36
  br label %out, !dbg !6119

if.end40:                                         ; preds = %for.end36
  %23 = load i8, i8* %locked, align 1, !dbg !6120
  %tobool41 = icmp ne i8 %23, 0, !dbg !6120
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !6122

if.then42:                                        ; preds = %if.end40
  br label %locked47, !dbg !6123

if.end43:                                         ; preds = %if.end40
  br label %for.inc44, !dbg !6124

for.inc44:                                        ; preds = %if.end43
  %24 = load i32, i32* %i, align 4, !dbg !6125
  %inc45 = add i32 %24, 1, !dbg !6125
  store i32 %inc45, i32* %i, align 4, !dbg !6125
  br label %for.cond, !dbg !6126, !llvm.loop !6127

for.end46:                                        ; preds = %for.cond
  br label %locked47, !dbg !6128

locked47:                                         ; preds = %for.end46, %if.then42, %if.then32, %if.then20
  call void @llvm.dbg.label(metadata !6129), !dbg !6130
  %25 = load i32, i32* %err, align 4, !dbg !6131
  %cmp48 = icmp eq i32 %25, 0, !dbg !6133
  br i1 %cmp48, label %land.lhs.true, label %if.end101, !dbg !6134

land.lhs.true:                                    ; preds = %locked47
  %26 = load i8, i8* %locked, align 1, !dbg !6135
  %conv50 = zext i8 %26 to i32, !dbg !6135
  %cmp51 = icmp eq i32 %conv50, 1, !dbg !6136
  br i1 %cmp51, label %if.then53, label %if.end101, !dbg !6137

if.then53:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6138, metadata !DIExpression()), !dbg !6140
  %27 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6141
  %config54 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %27, i32 0, i32 1, !dbg !6143
  %28 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config54, align 8, !dbg !6143
  %prod55 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %28, i32 0, i32 0, !dbg !6144
  %29 = load i8, i8* %prod55, align 4, !dbg !6144
  %conv56 = zext i8 %29 to i32, !dbg !6141
  %cmp57 = icmp ne i32 %conv56, 6, !dbg !6145
  br i1 %cmp57, label %if.then59, label %if.else61, !dbg !6146

if.then59:                                        ; preds = %if.then53
  %30 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6147
  %call60 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %30, i8 zeroext -94, i8* %t) #9, !dbg !6149
  %31 = load i8, i8* %t, align 1, !dbg !6150
  %32 = load i8*, i8** %detected_param.addr, align 8, !dbg !6151
  store i8 %31, i8* %32, align 1, !dbg !6152
  br label %if.end65, !dbg !6153

if.else61:                                        ; preds = %if.then53
  %33 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6154
  %call62 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %33, i8 zeroext 31, i8* %t) #9, !dbg !6156
  %34 = load i8, i8* %t, align 1, !dbg !6157
  %conv63 = zext i8 %34 to i32, !dbg !6157
  %and = and i32 %conv63, 63, !dbg !6158
  %conv64 = trunc i32 %and to i8, !dbg !6157
  %35 = load i8*, i8** %detected_param.addr, align 8, !dbg !6159
  store i8 %conv64, i8* %35, align 1, !dbg !6160
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.then59
  %36 = load i8, i8* %tmp_gi, align 1, !dbg !6161
  %conv66 = zext i8 %36 to i32, !dbg !6161
  %cmp67 = icmp eq i32 %conv66, 2, !dbg !6163
  br i1 %cmp67, label %if.then69, label %if.else76, !dbg !6164

if.then69:                                        ; preds = %if.end65
  br label %do.body70, !dbg !6165

do.body70:                                        ; preds = %if.then69
  %37 = load i32, i32* @debug, align 4, !dbg !6166
  %tobool71 = icmp ne i32 %37, 0, !dbg !6166
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !6169

if.then72:                                        ; preds = %do.body70
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !6166
  br label %if.end74, !dbg !6166

if.end74:                                         ; preds = %if.then72, %do.body70
  br label %do.end75, !dbg !6169

do.end75:                                         ; preds = %if.end74
  br label %if.end100, !dbg !6169

if.else76:                                        ; preds = %if.end65
  %38 = load i8, i8* %tmp_gi, align 1, !dbg !6170
  %conv77 = zext i8 %38 to i32, !dbg !6170
  %cmp78 = icmp eq i32 %conv77, 1, !dbg !6172
  br i1 %cmp78, label %if.then80, label %if.else87, !dbg !6173

if.then80:                                        ; preds = %if.else76
  br label %do.body81, !dbg !6174

do.body81:                                        ; preds = %if.then80
  %39 = load i32, i32* @debug, align 4, !dbg !6175
  %tobool82 = icmp ne i32 %39, 0, !dbg !6175
  br i1 %tobool82, label %if.then83, label %if.end85, !dbg !6178

if.then83:                                        ; preds = %do.body81
  %call84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !6175
  br label %if.end85, !dbg !6175

if.end85:                                         ; preds = %if.then83, %do.body81
  br label %do.end86, !dbg !6178

do.end86:                                         ; preds = %if.end85
  br label %if.end99, !dbg !6178

if.else87:                                        ; preds = %if.else76
  %40 = load i8, i8* %tmp_gi, align 1, !dbg !6179
  %conv88 = zext i8 %40 to i32, !dbg !6179
  %cmp89 = icmp eq i32 %conv88, 0, !dbg !6181
  br i1 %cmp89, label %if.then91, label %if.end98, !dbg !6182

if.then91:                                        ; preds = %if.else87
  br label %do.body92, !dbg !6183

do.body92:                                        ; preds = %if.then91
  %41 = load i32, i32* @debug, align 4, !dbg !6184
  %tobool93 = icmp ne i32 %41, 0, !dbg !6184
  br i1 %tobool93, label %if.then94, label %if.end96, !dbg !6187

if.then94:                                        ; preds = %do.body92
  %call95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !6184
  br label %if.end96, !dbg !6184

if.end96:                                         ; preds = %if.then94, %do.body92
  br label %do.end97, !dbg !6187

do.end97:                                         ; preds = %if.end96
  br label %if.end98, !dbg !6187

if.end98:                                         ; preds = %do.end97, %if.else87
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %do.end86
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %do.end75
  %42 = load i8, i8* %tmp_gi, align 1, !dbg !6188
  %43 = load i8*, i8** %gi.addr, align 8, !dbg !6189
  store i8 %42, i8* %43, align 1, !dbg !6190
  br label %if.end101, !dbg !6191

if.end101:                                        ; preds = %if.end100, %land.lhs.true, %locked47
  %44 = load i8, i8* %locked, align 1, !dbg !6192
  %tobool102 = icmp ne i8 %44, 0, !dbg !6192
  br i1 %tobool102, label %if.end104, label %if.then103, !dbg !6194

if.then103:                                       ; preds = %if.end101
  store i32 -1, i32* %err, align 4, !dbg !6195
  br label %if.end104, !dbg !6196

if.end104:                                        ; preds = %if.then103, %if.end101
  br label %out, !dbg !6192

out:                                              ; preds = %if.end104, %if.then39, %if.then29, %if.then17
  call void @llvm.dbg.label(metadata !6197), !dbg !6198
  %45 = load i32, i32* %err, align 4, !dbg !6199
  ret i32 %45, !dbg !6200
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_set_mode_manual(%struct.lgs8gxx_state* %priv) #0 !dbg !6201 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %t = alloca i8, align 1
  %t2 = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6204, metadata !DIExpression()), !dbg !6205
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6206
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !6208
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6208
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !6209
  %2 = load i8, i8* %prod, align 4, !dbg !6209
  %conv = zext i8 %2 to i32, !dbg !6206
  %cmp = icmp eq i32 %conv, 6, !dbg !6210
  br i1 %cmp, label %if.then, label %if.end24, !dbg !6211

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %t2, metadata !6212, metadata !DIExpression()), !dbg !6214
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6215
  %call = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %3, i8 zeroext 12, i8* %t) #9, !dbg !6216
  %4 = load i8, i8* %t, align 1, !dbg !6217
  %conv2 = zext i8 %4 to i32, !dbg !6217
  %and = and i32 %conv2, -129, !dbg !6217
  %conv3 = trunc i32 %and to i8, !dbg !6217
  store i8 %conv3, i8* %t, align 1, !dbg !6217
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6218
  %6 = load i8, i8* %t, align 1, !dbg !6219
  %call4 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %5, i8 zeroext 12, i8 zeroext %6) #9, !dbg !6220
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6221
  %call5 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %7, i8 zeroext 12, i8* %t) #9, !dbg !6222
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6223
  %call6 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %8, i8 zeroext 25, i8* %t2) #9, !dbg !6224
  %9 = load i8, i8* %t, align 1, !dbg !6225
  %conv7 = zext i8 %9 to i32, !dbg !6225
  %and8 = and i32 %conv7, 3, !dbg !6227
  %cmp9 = icmp eq i32 %and8, 1, !dbg !6228
  br i1 %cmp9, label %land.lhs.true, label %if.else, !dbg !6229

land.lhs.true:                                    ; preds = %if.then
  %10 = load i8, i8* %t2, align 1, !dbg !6230
  %conv11 = zext i8 %10 to i32, !dbg !6230
  %and12 = and i32 %conv11, 1, !dbg !6231
  %tobool = icmp ne i32 %and12, 0, !dbg !6231
  br i1 %tobool, label %if.then13, label %if.else, !dbg !6232

if.then13:                                        ; preds = %land.lhs.true
  %11 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6233
  %call14 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %11, i8 zeroext 110, i8 zeroext 5) #9, !dbg !6235
  %12 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6236
  %call15 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %12, i8 zeroext 57, i8 zeroext 2) #9, !dbg !6237
  %13 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6238
  %call16 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %13, i8 zeroext 57, i8 zeroext 3) #9, !dbg !6239
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6240
  %call17 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %14, i8 zeroext 61, i8 zeroext 5) #9, !dbg !6241
  %15 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6242
  %call18 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %15, i8 zeroext 62, i8 zeroext 40) #9, !dbg !6243
  %16 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6244
  %call19 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %16, i8 zeroext 83, i8 zeroext -128) #9, !dbg !6245
  br label %if.end, !dbg !6246

if.else:                                          ; preds = %land.lhs.true, %if.then
  %17 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6247
  %call20 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %17, i8 zeroext 110, i8 zeroext 63) #9, !dbg !6249
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6250
  %call21 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %18, i8 zeroext 57, i8 zeroext 0) #9, !dbg !6251
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6252
  %call22 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %19, i8 zeroext 61, i8 zeroext 4) #9, !dbg !6253
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then13
  %20 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6254
  %call23 = call i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %20) #9, !dbg !6255
  store i32 0, i32* %retval, align 4, !dbg !6256
  br label %return, !dbg !6256

if.end24:                                         ; preds = %entry
  %21 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6257
  %call25 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %21, i8 zeroext 126, i8 zeroext 0) #9, !dbg !6258
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6259
  %config26 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %22, i32 0, i32 1, !dbg !6261
  %23 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config26, align 8, !dbg !6261
  %prod27 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %23, i32 0, i32 0, !dbg !6262
  %24 = load i8, i8* %prod27, align 4, !dbg !6262
  %conv28 = zext i8 %24 to i32, !dbg !6259
  %cmp29 = icmp eq i32 %conv28, 0, !dbg !6263
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !6264

if.then31:                                        ; preds = %if.end24
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6265
  %call32 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %25, i8 zeroext -63, i8 zeroext 0) #9, !dbg !6266
  br label %if.end33, !dbg !6266

if.end33:                                         ; preds = %if.then31, %if.end24
  %26 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6267
  %call34 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %26, i8 zeroext -59, i8* %t) #9, !dbg !6268
  %27 = load i8, i8* %t, align 1, !dbg !6269
  %conv35 = zext i8 %27 to i32, !dbg !6269
  %and36 = and i32 %conv35, 224, !dbg !6270
  %or = or i32 %and36, 6, !dbg !6271
  %conv37 = trunc i32 %or to i8, !dbg !6272
  store i8 %conv37, i8* %t, align 1, !dbg !6273
  %28 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6274
  %29 = load i8, i8* %t, align 1, !dbg !6275
  %call38 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %28, i8 zeroext -59, i8 zeroext %29) #9, !dbg !6276
  %30 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6277
  %call39 = call i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %30) #9, !dbg !6278
  store i32 0, i32* %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

return:                                           ; preds = %if.end33, %if.end
  %31 = load i32, i32* %retval, align 4, !dbg !6280
  ret i32 %31, !dbg !6280
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_set_mode_auto(%struct.lgs8gxx_state* %priv) #0 !dbg !6281 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %t = alloca i8, align 1
  %prod = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6284, metadata !DIExpression()), !dbg !6285
  call void @llvm.dbg.declare(metadata i8* %prod, metadata !6286, metadata !DIExpression()), !dbg !6287
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6288
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !6289
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6289
  %prod1 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !6290
  %2 = load i8, i8* %prod1, align 4, !dbg !6290
  store i8 %2, i8* %prod, align 1, !dbg !6287
  %3 = load i8, i8* %prod, align 1, !dbg !6291
  %conv = zext i8 %3 to i32, !dbg !6291
  %cmp = icmp eq i32 %conv, 0, !dbg !6293
  br i1 %cmp, label %if.then, label %if.end, !dbg !6294

if.then:                                          ; preds = %entry
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6295
  %call = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %4, i8 zeroext -58, i8 zeroext 1) #9, !dbg !6296
  br label %if.end, !dbg !6296

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %prod, align 1, !dbg !6297
  %conv3 = zext i8 %5 to i32, !dbg !6297
  %cmp4 = icmp eq i32 %conv3, 6, !dbg !6299
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !6300

if.then6:                                         ; preds = %if.end
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6301
  %call7 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %6, i8 zeroext 12, i8* %t) #9, !dbg !6303
  %7 = load i8, i8* %t, align 1, !dbg !6304
  %conv8 = zext i8 %7 to i32, !dbg !6304
  %and = and i32 %conv8, -5, !dbg !6304
  %conv9 = trunc i32 %and to i8, !dbg !6304
  store i8 %conv9, i8* %t, align 1, !dbg !6304
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6305
  %9 = load i8, i8* %t, align 1, !dbg !6306
  %conv10 = zext i8 %9 to i32, !dbg !6306
  %or = or i32 %conv10, 128, !dbg !6307
  %conv11 = trunc i32 %or to i8, !dbg !6306
  %call12 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %8, i8 zeroext 12, i8 zeroext %conv11) #9, !dbg !6308
  %10 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6309
  %call13 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %10, i8 zeroext 57, i8 zeroext 0) #9, !dbg !6310
  %11 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6311
  %call14 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %11, i8 zeroext 61, i8 zeroext 4) #9, !dbg !6312
  br label %if.end45, !dbg !6313

if.else:                                          ; preds = %if.end
  %12 = load i8, i8* %prod, align 1, !dbg !6314
  %conv15 = zext i8 %12 to i32, !dbg !6314
  %cmp16 = icmp eq i32 %conv15, 0, !dbg !6316
  br i1 %cmp16, label %if.then33, label %lor.lhs.false, !dbg !6317

lor.lhs.false:                                    ; preds = %if.else
  %13 = load i8, i8* %prod, align 1, !dbg !6318
  %conv18 = zext i8 %13 to i32, !dbg !6318
  %cmp19 = icmp eq i32 %conv18, 1, !dbg !6319
  br i1 %cmp19, label %if.then33, label %lor.lhs.false21, !dbg !6320

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %14 = load i8, i8* %prod, align 1, !dbg !6321
  %conv22 = zext i8 %14 to i32, !dbg !6321
  %cmp23 = icmp eq i32 %conv22, 3, !dbg !6322
  br i1 %cmp23, label %if.then33, label %lor.lhs.false25, !dbg !6323

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %15 = load i8, i8* %prod, align 1, !dbg !6324
  %conv26 = zext i8 %15 to i32, !dbg !6324
  %cmp27 = icmp eq i32 %conv26, 4, !dbg !6325
  br i1 %cmp27, label %if.then33, label %lor.lhs.false29, !dbg !6326

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %16 = load i8, i8* %prod, align 1, !dbg !6327
  %conv30 = zext i8 %16 to i32, !dbg !6327
  %cmp31 = icmp eq i32 %conv30, 5, !dbg !6328
  br i1 %cmp31, label %if.then33, label %if.end44, !dbg !6329

if.then33:                                        ; preds = %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false, %if.else
  %17 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6330
  %call34 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %17, i8 zeroext 126, i8* %t) #9, !dbg !6332
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6333
  %19 = load i8, i8* %t, align 1, !dbg !6334
  %conv35 = zext i8 %19 to i32, !dbg !6334
  %or36 = or i32 %conv35, 1, !dbg !6335
  %conv37 = trunc i32 %or36 to i8, !dbg !6334
  %call38 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %18, i8 zeroext 126, i8 zeroext %conv37) #9, !dbg !6336
  %20 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6337
  %call39 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %20, i8 zeroext -59, i8* %t) #9, !dbg !6338
  %21 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6339
  %22 = load i8, i8* %t, align 1, !dbg !6340
  %conv40 = zext i8 %22 to i32, !dbg !6340
  %and41 = and i32 %conv40, 224, !dbg !6341
  %conv42 = trunc i32 %and41 to i8, !dbg !6340
  %call43 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %21, i8 zeroext -59, i8 zeroext %conv42) #9, !dbg !6342
  br label %if.end44, !dbg !6343

if.end44:                                         ; preds = %if.then33, %lor.lhs.false29
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then6
  %23 = load i8, i8* %prod, align 1, !dbg !6344
  %conv46 = zext i8 %23 to i32, !dbg !6344
  %cmp47 = icmp eq i32 %conv46, 0, !dbg !6346
  br i1 %cmp47, label %if.then49, label %if.end63, !dbg !6347

if.then49:                                        ; preds = %if.end45
  %24 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6348
  %call50 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %24, i8 zeroext -63, i8 zeroext 3) #9, !dbg !6350
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6351
  %call51 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %25, i8 zeroext 124, i8* %t) #9, !dbg !6352
  %26 = load i8, i8* %t, align 1, !dbg !6353
  %conv52 = zext i8 %26 to i32, !dbg !6353
  %and53 = and i32 %conv52, 140, !dbg !6354
  %or54 = or i32 %and53, 3, !dbg !6355
  %conv55 = trunc i32 %or54 to i8, !dbg !6356
  store i8 %conv55, i8* %t, align 1, !dbg !6357
  %27 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6358
  %28 = load i8, i8* %t, align 1, !dbg !6359
  %call56 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %27, i8 zeroext 124, i8 zeroext %28) #9, !dbg !6360
  %29 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6361
  %call57 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %29, i8 zeroext -61, i8* %t) #9, !dbg !6362
  %30 = load i8, i8* %t, align 1, !dbg !6363
  %conv58 = zext i8 %30 to i32, !dbg !6363
  %and59 = and i32 %conv58, 239, !dbg !6364
  %or60 = or i32 %and59, 16, !dbg !6365
  %conv61 = trunc i32 %or60 to i8, !dbg !6366
  store i8 %conv61, i8* %t, align 1, !dbg !6367
  %31 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6368
  %32 = load i8, i8* %t, align 1, !dbg !6369
  %call62 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %31, i8 zeroext -61, i8 zeroext %32) #9, !dbg !6370
  br label %if.end63, !dbg !6371

if.end63:                                         ; preds = %if.then49, %if.end45
  %33 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6372
  %config64 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %33, i32 0, i32 1, !dbg !6374
  %34 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config64, align 8, !dbg !6374
  %prod65 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %34, i32 0, i32 0, !dbg !6375
  %35 = load i8, i8* %prod65, align 4, !dbg !6375
  %conv66 = zext i8 %35 to i32, !dbg !6372
  %cmp67 = icmp eq i32 %conv66, 4, !dbg !6376
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !6377

if.then69:                                        ; preds = %if.end63
  %36 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6378
  %call70 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %36, i8 zeroext -39, i8 zeroext 64) #9, !dbg !6379
  br label %if.end71, !dbg !6379

if.end71:                                         ; preds = %if.then69, %if.end63
  ret i32 0, !dbg !6380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_autolock_gi(%struct.lgs8gxx_state* %priv, i8 zeroext %gi, i8 zeroext %cpn, i8* %locked) #0 !dbg !6381 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %gi.addr = alloca i8, align 1
  %cpn.addr = alloca i8, align 1
  %locked.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %ad_fini = alloca i8, align 1
  %t1 = alloca i8, align 1
  %t2 = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6384, metadata !DIExpression()), !dbg !6385
  store i8 %gi, i8* %gi.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %gi.addr, metadata !6386, metadata !DIExpression()), !dbg !6387
  store i8 %cpn, i8* %cpn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cpn.addr, metadata !6388, metadata !DIExpression()), !dbg !6389
  store i8* %locked, i8** %locked.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %locked.addr, metadata !6390, metadata !DIExpression()), !dbg !6391
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6392, metadata !DIExpression()), !dbg !6393
  store i32 0, i32* %err, align 4, !dbg !6393
  call void @llvm.dbg.declare(metadata i8* %ad_fini, metadata !6394, metadata !DIExpression()), !dbg !6395
  store i8 0, i8* %ad_fini, align 1, !dbg !6395
  call void @llvm.dbg.declare(metadata i8* %t1, metadata !6396, metadata !DIExpression()), !dbg !6397
  call void @llvm.dbg.declare(metadata i8* %t2, metadata !6398, metadata !DIExpression()), !dbg !6399
  %0 = load i8, i8* %gi.addr, align 1, !dbg !6400
  %conv = zext i8 %0 to i32, !dbg !6400
  %cmp = icmp eq i32 %conv, 2, !dbg !6402
  br i1 %cmp, label %if.then, label %if.else, !dbg !6403

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6404

do.body:                                          ; preds = %if.then
  %1 = load i32, i32* @debug, align 4, !dbg !6405
  %tobool = icmp ne i32 %1, 0, !dbg !6405
  br i1 %tobool, label %if.then2, label %if.end, !dbg !6408

if.then2:                                         ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !6405
  br label %if.end, !dbg !6405

if.end:                                           ; preds = %if.then2, %do.body
  br label %do.end, !dbg !6408

do.end:                                           ; preds = %if.end
  br label %if.end26, !dbg !6408

if.else:                                          ; preds = %entry
  %2 = load i8, i8* %gi.addr, align 1, !dbg !6409
  %conv3 = zext i8 %2 to i32, !dbg !6409
  %cmp4 = icmp eq i32 %conv3, 1, !dbg !6411
  br i1 %cmp4, label %if.then6, label %if.else13, !dbg !6412

if.then6:                                         ; preds = %if.else
  br label %do.body7, !dbg !6413

do.body7:                                         ; preds = %if.then6
  %3 = load i32, i32* @debug, align 4, !dbg !6414
  %tobool8 = icmp ne i32 %3, 0, !dbg !6414
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !6417

if.then9:                                         ; preds = %do.body7
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !6414
  br label %if.end11, !dbg !6414

if.end11:                                         ; preds = %if.then9, %do.body7
  br label %do.end12, !dbg !6417

do.end12:                                         ; preds = %if.end11
  br label %if.end25, !dbg !6417

if.else13:                                        ; preds = %if.else
  %4 = load i8, i8* %gi.addr, align 1, !dbg !6418
  %conv14 = zext i8 %4 to i32, !dbg !6418
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !6420
  br i1 %cmp15, label %if.then17, label %if.end24, !dbg !6421

if.then17:                                        ; preds = %if.else13
  br label %do.body18, !dbg !6422

do.body18:                                        ; preds = %if.then17
  %5 = load i32, i32* @debug, align 4, !dbg !6423
  %tobool19 = icmp ne i32 %5, 0, !dbg !6423
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !6426

if.then20:                                        ; preds = %do.body18
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !6423
  br label %if.end22, !dbg !6423

if.end22:                                         ; preds = %if.then20, %do.body18
  br label %do.end23, !dbg !6426

do.end23:                                         ; preds = %if.end22
  br label %if.end24, !dbg !6426

if.end24:                                         ; preds = %do.end23, %if.else13
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %do.end12
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %do.end
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6427
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %6, i32 0, i32 1, !dbg !6429
  %7 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6429
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %7, i32 0, i32 0, !dbg !6430
  %8 = load i8, i8* %prod, align 4, !dbg !6430
  %conv27 = zext i8 %8 to i32, !dbg !6427
  %cmp28 = icmp eq i32 %conv27, 6, !dbg !6431
  br i1 %cmp28, label %if.then30, label %if.else48, !dbg !6432

if.then30:                                        ; preds = %if.end26
  %9 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6433
  %call31 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %9, i8 zeroext 12, i8* %t1) #9, !dbg !6435
  %10 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6436
  %call32 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %10, i8 zeroext 24, i8* %t2) #9, !dbg !6437
  %11 = load i8, i8* %t1, align 1, !dbg !6438
  %conv33 = zext i8 %11 to i32, !dbg !6438
  %and = and i32 %conv33, -4, !dbg !6438
  %conv34 = trunc i32 %and to i8, !dbg !6438
  store i8 %conv34, i8* %t1, align 1, !dbg !6438
  %12 = load i8, i8* %gi.addr, align 1, !dbg !6439
  %conv35 = zext i8 %12 to i32, !dbg !6439
  %13 = load i8, i8* %t1, align 1, !dbg !6440
  %conv36 = zext i8 %13 to i32, !dbg !6440
  %or = or i32 %conv36, %conv35, !dbg !6440
  %conv37 = trunc i32 %or to i8, !dbg !6440
  store i8 %conv37, i8* %t1, align 1, !dbg !6440
  %14 = load i8, i8* %t2, align 1, !dbg !6441
  %conv38 = zext i8 %14 to i32, !dbg !6441
  %and39 = and i32 %conv38, 254, !dbg !6441
  %conv40 = trunc i32 %and39 to i8, !dbg !6441
  store i8 %conv40, i8* %t2, align 1, !dbg !6441
  %15 = load i8, i8* %cpn.addr, align 1, !dbg !6442
  %conv41 = zext i8 %15 to i32, !dbg !6442
  %tobool42 = icmp ne i32 %conv41, 0, !dbg !6442
  %16 = zext i1 %tobool42 to i64, !dbg !6442
  %cond = select i1 %tobool42, i32 1, i32 0, !dbg !6442
  %17 = load i8, i8* %t2, align 1, !dbg !6443
  %conv43 = zext i8 %17 to i32, !dbg !6443
  %or44 = or i32 %conv43, %cond, !dbg !6443
  %conv45 = trunc i32 %or44 to i8, !dbg !6443
  store i8 %conv45, i8* %t2, align 1, !dbg !6443
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6444
  %19 = load i8, i8* %t1, align 1, !dbg !6445
  %call46 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %18, i8 zeroext 12, i8 zeroext %19) #9, !dbg !6446
  %20 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6447
  %21 = load i8, i8* %t2, align 1, !dbg !6448
  %call47 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %20, i8 zeroext 24, i8 zeroext %21) #9, !dbg !6449
  br label %if.end50, !dbg !6450

if.else48:                                        ; preds = %if.end26
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6451
  %23 = load i8, i8* %gi.addr, align 1, !dbg !6453
  %call49 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %22, i8 zeroext 4, i8 zeroext %23) #9, !dbg !6454
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then30
  %24 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6455
  %call51 = call i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %24) #9, !dbg !6456
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6457
  %26 = load i8*, i8** %locked.addr, align 8, !dbg !6458
  %call52 = call i32 @lgs8gxx_wait_ca_lock(%struct.lgs8gxx_state* %25, i8* %26) #9, !dbg !6459
  store i32 %call52, i32* %err, align 4, !dbg !6460
  %27 = load i32, i32* %err, align 4, !dbg !6461
  %tobool53 = icmp ne i32 %27, 0, !dbg !6461
  br i1 %tobool53, label %if.then55, label %lor.lhs.false, !dbg !6463

lor.lhs.false:                                    ; preds = %if.end50
  %28 = load i8*, i8** %locked.addr, align 8, !dbg !6464
  %29 = load i8, i8* %28, align 1, !dbg !6465
  %tobool54 = icmp ne i8 %29, 0, !dbg !6466
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !6467

if.then55:                                        ; preds = %lor.lhs.false, %if.end50
  %30 = load i32, i32* %err, align 4, !dbg !6468
  store i32 %30, i32* %retval, align 4, !dbg !6469
  br label %return, !dbg !6469

if.end56:                                         ; preds = %lor.lhs.false
  %31 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6470
  %call57 = call i32 @lgs8gxx_is_autodetect_finished(%struct.lgs8gxx_state* %31, i8* %ad_fini) #9, !dbg !6471
  store i32 %call57, i32* %err, align 4, !dbg !6472
  %32 = load i32, i32* %err, align 4, !dbg !6473
  %cmp58 = icmp ne i32 %32, 0, !dbg !6475
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !6476

if.then60:                                        ; preds = %if.end56
  %33 = load i32, i32* %err, align 4, !dbg !6477
  store i32 %33, i32* %retval, align 4, !dbg !6478
  br label %return, !dbg !6478

if.end61:                                         ; preds = %if.end56
  %34 = load i8, i8* %ad_fini, align 1, !dbg !6479
  %tobool62 = icmp ne i8 %34, 0, !dbg !6479
  br i1 %tobool62, label %if.then63, label %if.else70, !dbg !6481

if.then63:                                        ; preds = %if.end61
  br label %do.body64, !dbg !6482

do.body64:                                        ; preds = %if.then63
  %35 = load i32, i32* @debug, align 4, !dbg !6484
  %tobool65 = icmp ne i32 %35, 0, !dbg !6484
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !6487

if.then66:                                        ; preds = %do.body64
  %call67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !6484
  br label %if.end68, !dbg !6484

if.end68:                                         ; preds = %if.then66, %do.body64
  br label %do.end69, !dbg !6487

do.end69:                                         ; preds = %if.end68
  br label %if.end71, !dbg !6488

if.else70:                                        ; preds = %if.end61
  %36 = load i8*, i8** %locked.addr, align 8, !dbg !6489
  store i8 0, i8* %36, align 1, !dbg !6490
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %do.end69
  store i32 0, i32* %retval, align 4, !dbg !6491
  br label %return, !dbg !6491

return:                                           ; preds = %if.end71, %if.then60, %if.then55
  %37 = load i32, i32* %retval, align 4, !dbg !6492
  ret i32 %37, !dbg !6492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %priv) #0 !dbg !6493 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6494, metadata !DIExpression()), !dbg !6495
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6496
  %call = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %0, i8 zeroext 2, i8 zeroext 0) #9, !dbg !6497
  call void @msleep(i32 1) #9, !dbg !6498
  %1 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6499
  %call1 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %1, i8 zeroext 2, i8 zeroext 1) #9, !dbg !6500
  call void @msleep(i32 100) #9, !dbg !6501
  ret i32 0, !dbg !6502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_wait_ca_lock(%struct.lgs8gxx_state* %priv, i8* %locked) #0 !dbg !6503 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %locked.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %reg = alloca i8, align 1
  %mask = alloca i8, align 1
  %val = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6506, metadata !DIExpression()), !dbg !6507
  store i8* %locked, i8** %locked.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %locked.addr, metadata !6508, metadata !DIExpression()), !dbg !6509
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6510, metadata !DIExpression()), !dbg !6511
  store i32 0, i32* %ret, align 4, !dbg !6511
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !6512, metadata !DIExpression()), !dbg !6513
  call void @llvm.dbg.declare(metadata i8* %mask, metadata !6514, metadata !DIExpression()), !dbg !6515
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6516, metadata !DIExpression()), !dbg !6517
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6518
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !6520
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6520
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !6521
  %2 = load i8, i8* %prod, align 4, !dbg !6521
  %conv = zext i8 %2 to i32, !dbg !6518
  %cmp = icmp eq i32 %conv, 6, !dbg !6522
  br i1 %cmp, label %if.then, label %if.else, !dbg !6523

if.then:                                          ; preds = %entry
  store i8 19, i8* %reg, align 1, !dbg !6524
  store i8 -128, i8* %mask, align 1, !dbg !6526
  store i8 -128, i8* %val, align 1, !dbg !6527
  br label %if.end, !dbg !6528

if.else:                                          ; preds = %entry
  store i8 75, i8* %reg, align 1, !dbg !6529
  store i8 -64, i8* %mask, align 1, !dbg !6531
  store i8 -64, i8* %val, align 1, !dbg !6532
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6533
  %4 = load i8, i8* %reg, align 1, !dbg !6534
  %5 = load i8, i8* %mask, align 1, !dbg !6535
  %6 = load i8, i8* %val, align 1, !dbg !6536
  %call = call i32 @wait_reg_mask(%struct.lgs8gxx_state* %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext 50, i8 zeroext 40) #9, !dbg !6537
  store i32 %call, i32* %ret, align 4, !dbg !6538
  %7 = load i32, i32* %ret, align 4, !dbg !6539
  %cmp2 = icmp eq i32 %7, 0, !dbg !6540
  %8 = zext i1 %cmp2 to i64, !dbg !6541
  %cond = select i1 %cmp2, i32 1, i32 0, !dbg !6541
  %conv4 = trunc i32 %cond to i8, !dbg !6541
  %9 = load i8*, i8** %locked.addr, align 8, !dbg !6542
  store i8 %conv4, i8* %9, align 1, !dbg !6543
  ret i32 0, !dbg !6544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_is_autodetect_finished(%struct.lgs8gxx_state* %priv, i8* %finished) #0 !dbg !6545 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %finished.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %reg = alloca i8, align 1
  %mask = alloca i8, align 1
  %val = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6546, metadata !DIExpression()), !dbg !6547
  store i8* %finished, i8** %finished.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %finished.addr, metadata !6548, metadata !DIExpression()), !dbg !6549
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6550, metadata !DIExpression()), !dbg !6551
  store i32 0, i32* %ret, align 4, !dbg !6551
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !6552, metadata !DIExpression()), !dbg !6553
  call void @llvm.dbg.declare(metadata i8* %mask, metadata !6554, metadata !DIExpression()), !dbg !6555
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6556, metadata !DIExpression()), !dbg !6557
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6558
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !6560
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6560
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !6561
  %2 = load i8, i8* %prod, align 4, !dbg !6561
  %conv = zext i8 %2 to i32, !dbg !6558
  %cmp = icmp eq i32 %conv, 6, !dbg !6562
  br i1 %cmp, label %if.then, label %if.else, !dbg !6563

if.then:                                          ; preds = %entry
  store i8 31, i8* %reg, align 1, !dbg !6564
  store i8 -64, i8* %mask, align 1, !dbg !6566
  store i8 -128, i8* %val, align 1, !dbg !6567
  br label %if.end, !dbg !6568

if.else:                                          ; preds = %entry
  store i8 -92, i8* %reg, align 1, !dbg !6569
  store i8 3, i8* %mask, align 1, !dbg !6571
  store i8 1, i8* %val, align 1, !dbg !6572
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6573
  %4 = load i8, i8* %reg, align 1, !dbg !6574
  %5 = load i8, i8* %mask, align 1, !dbg !6575
  %6 = load i8, i8* %val, align 1, !dbg !6576
  %call = call i32 @wait_reg_mask(%struct.lgs8gxx_state* %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6, i8 zeroext 10, i8 zeroext 20) #9, !dbg !6577
  store i32 %call, i32* %ret, align 4, !dbg !6578
  %7 = load i32, i32* %ret, align 4, !dbg !6579
  %cmp2 = icmp eq i32 %7, 0, !dbg !6580
  %8 = zext i1 %cmp2 to i64, !dbg !6581
  %cond = select i1 %cmp2, i32 1, i32 0, !dbg !6581
  %conv4 = trunc i32 %cond to i8, !dbg !6581
  %9 = load i8*, i8** %finished.addr, align 8, !dbg !6582
  store i8 %conv4, i8* %9, align 1, !dbg !6583
  ret i32 0, !dbg !6584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wait_reg_mask(%struct.lgs8gxx_state* %priv, i8 zeroext %reg, i8 zeroext %mask, i8 zeroext %val, i8 zeroext %delay, i8 zeroext %tries) #0 !dbg !6585 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %reg.addr = alloca i8, align 1
  %mask.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  %delay.addr = alloca i8, align 1
  %tries.addr = alloca i8, align 1
  %t = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6588, metadata !DIExpression()), !dbg !6589
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6590, metadata !DIExpression()), !dbg !6591
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !6592, metadata !DIExpression()), !dbg !6593
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6594, metadata !DIExpression()), !dbg !6595
  store i8 %delay, i8* %delay.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %delay.addr, metadata !6596, metadata !DIExpression()), !dbg !6597
  store i8 %tries, i8* %tries.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %tries.addr, metadata !6598, metadata !DIExpression()), !dbg !6599
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6600, metadata !DIExpression()), !dbg !6601
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6602, metadata !DIExpression()), !dbg !6603
  store i32 0, i32* %i, align 4, !dbg !6604
  br label %for.cond, !dbg !6606

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6607
  %1 = load i8, i8* %tries.addr, align 1, !dbg !6609
  %conv = zext i8 %1 to i32, !dbg !6609
  %cmp = icmp slt i32 %0, %conv, !dbg !6610
  br i1 %cmp, label %for.body, label %for.end, !dbg !6611

for.body:                                         ; preds = %for.cond
  %2 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6612
  %3 = load i8, i8* %reg.addr, align 1, !dbg !6614
  %call = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %2, i8 zeroext %3, i8* %t) #9, !dbg !6615
  %4 = load i8, i8* %t, align 1, !dbg !6616
  %conv2 = zext i8 %4 to i32, !dbg !6616
  %5 = load i8, i8* %mask.addr, align 1, !dbg !6618
  %conv3 = zext i8 %5 to i32, !dbg !6618
  %and = and i32 %conv2, %conv3, !dbg !6619
  %6 = load i8, i8* %val.addr, align 1, !dbg !6620
  %conv4 = zext i8 %6 to i32, !dbg !6620
  %cmp5 = icmp eq i32 %and, %conv4, !dbg !6621
  br i1 %cmp5, label %if.then, label %if.end, !dbg !6622

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !6623
  br label %return, !dbg !6623

if.end:                                           ; preds = %for.body
  %7 = load i8, i8* %delay.addr, align 1, !dbg !6624
  %conv7 = zext i8 %7 to i32, !dbg !6624
  call void @msleep(i32 %conv7) #9, !dbg !6625
  br label %for.inc, !dbg !6626

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !6627
  %inc = add i32 %8, 1, !dbg !6627
  store i32 %inc, i32* %i, align 4, !dbg !6627
  br label %for.cond, !dbg !6628, !llvm.loop !6629

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4, !dbg !6631
  br label %return, !dbg !6631

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !6632
  ret i32 %9, !dbg !6632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_get_afc_phase(%struct.lgs8gxx_state* %priv) #0 !dbg !6633 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %val = alloca i64, align 8
  %v32 = alloca i32, align 4
  %reg_addr = alloca i8, align 1
  %t = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6634, metadata !DIExpression()), !dbg !6635
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6636, metadata !DIExpression()), !dbg !6637
  call void @llvm.dbg.declare(metadata i32* %v32, metadata !6638, metadata !DIExpression()), !dbg !6639
  store i32 0, i32* %v32, align 4, !dbg !6639
  call void @llvm.dbg.declare(metadata i8* %reg_addr, metadata !6640, metadata !DIExpression()), !dbg !6641
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6642, metadata !DIExpression()), !dbg !6643
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6644, metadata !DIExpression()), !dbg !6645
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6646
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !6648
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6648
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !6649
  %2 = load i8, i8* %prod, align 4, !dbg !6649
  %conv = zext i8 %2 to i32, !dbg !6646
  %cmp = icmp eq i32 %conv, 6, !dbg !6650
  br i1 %cmp, label %if.then, label %if.else, !dbg !6651

if.then:                                          ; preds = %entry
  store i8 35, i8* %reg_addr, align 1, !dbg !6652
  br label %if.end, !dbg !6653

if.else:                                          ; preds = %entry
  store i8 72, i8* %reg_addr, align 1, !dbg !6654
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4, !dbg !6655
  br label %for.cond, !dbg !6657

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !6658
  %cmp2 = icmp slt i32 %3, 4, !dbg !6660
  br i1 %cmp2, label %for.body, label %for.end, !dbg !6661

for.body:                                         ; preds = %for.cond
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6662
  %5 = load i8, i8* %reg_addr, align 1, !dbg !6664
  %call = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %4, i8 zeroext %5, i8* %t) #9, !dbg !6665
  %6 = load i32, i32* %v32, align 4, !dbg !6666
  %shl = shl i32 %6, 8, !dbg !6666
  store i32 %shl, i32* %v32, align 4, !dbg !6666
  %7 = load i8, i8* %t, align 1, !dbg !6667
  %conv4 = zext i8 %7 to i32, !dbg !6667
  %8 = load i32, i32* %v32, align 4, !dbg !6668
  %or = or i32 %8, %conv4, !dbg !6668
  store i32 %or, i32* %v32, align 4, !dbg !6668
  %9 = load i8, i8* %reg_addr, align 1, !dbg !6669
  %dec = add i8 %9, -1, !dbg !6669
  store i8 %dec, i8* %reg_addr, align 1, !dbg !6669
  br label %for.inc, !dbg !6670

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !6671
  %inc = add i32 %10, 1, !dbg !6671
  store i32 %inc, i32* %i, align 4, !dbg !6671
  br label %for.cond, !dbg !6672, !llvm.loop !6673

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %v32, align 4, !dbg !6675
  %conv5 = zext i32 %11 to i64, !dbg !6675
  store i64 %conv5, i64* %val, align 8, !dbg !6676
  %12 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6677
  %config6 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %12, i32 0, i32 1, !dbg !6678
  %13 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config6, align 8, !dbg !6678
  %if_clk_freq = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %13, i32 0, i32 5, !dbg !6679
  %14 = load i32, i32* %if_clk_freq, align 4, !dbg !6679
  %conv7 = zext i32 %14 to i64, !dbg !6677
  %15 = load i64, i64* %val, align 8, !dbg !6680
  %mul = mul i64 %15, %conv7, !dbg !6680
  store i64 %mul, i64* %val, align 8, !dbg !6680
  %16 = load i64, i64* %val, align 8, !dbg !6681
  %shr = lshr i64 %16, 32, !dbg !6681
  store i64 %shr, i64* %val, align 8, !dbg !6681
  br label %do.body, !dbg !6682

do.body:                                          ; preds = %for.end
  %17 = load i32, i32* @debug, align 4, !dbg !6683
  %tobool = icmp ne i32 %17, 0, !dbg !6683
  br i1 %tobool, label %if.then8, label %if.end11, !dbg !6686

if.then8:                                         ; preds = %do.body
  %18 = load i64, i64* %val, align 8, !dbg !6683
  %conv9 = trunc i64 %18 to i32, !dbg !6683
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %conv9) #8, !dbg !6683
  br label %if.end11, !dbg !6683

if.end11:                                         ; preds = %if.then8, %do.body
  br label %do.end, !dbg !6686

do.end:                                           ; preds = %if.end11
  ret i32 0, !dbg !6687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_is_locked(%struct.lgs8gxx_state* %priv, i8* %locked) #0 !dbg !6688 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %locked.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %t = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6689, metadata !DIExpression()), !dbg !6690
  store i8* %locked, i8** %locked.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %locked.addr, metadata !6691, metadata !DIExpression()), !dbg !6692
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6693, metadata !DIExpression()), !dbg !6694
  store i32 0, i32* %ret, align 4, !dbg !6694
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6695, metadata !DIExpression()), !dbg !6696
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6697
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !6699
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6699
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !6700
  %2 = load i8, i8* %prod, align 4, !dbg !6700
  %conv = zext i8 %2 to i32, !dbg !6697
  %cmp = icmp eq i32 %conv, 6, !dbg !6701
  br i1 %cmp, label %if.then, label %if.else, !dbg !6702

if.then:                                          ; preds = %entry
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6703
  %call = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %3, i8 zeroext 19, i8* %t) #9, !dbg !6704
  store i32 %call, i32* %ret, align 4, !dbg !6705
  br label %if.end, !dbg !6706

if.else:                                          ; preds = %entry
  %4 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6707
  %call2 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %4, i8 zeroext 75, i8* %t) #9, !dbg !6708
  store i32 %call2, i32* %ret, align 4, !dbg !6709
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %ret, align 4, !dbg !6710
  %cmp3 = icmp ne i32 %5, 0, !dbg !6712
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6713

if.then5:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !6714
  store i32 %6, i32* %retval, align 4, !dbg !6715
  br label %return, !dbg !6715

if.end6:                                          ; preds = %if.end
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6716
  %config7 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %7, i32 0, i32 1, !dbg !6718
  %8 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config7, align 8, !dbg !6718
  %prod8 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %8, i32 0, i32 0, !dbg !6719
  %9 = load i8, i8* %prod8, align 4, !dbg !6719
  %conv9 = zext i8 %9 to i32, !dbg !6716
  %cmp10 = icmp eq i32 %conv9, 6, !dbg !6720
  br i1 %cmp10, label %if.then12, label %if.else17, !dbg !6721

if.then12:                                        ; preds = %if.end6
  %10 = load i8, i8* %t, align 1, !dbg !6722
  %conv13 = zext i8 %10 to i32, !dbg !6722
  %and = and i32 %conv13, 128, !dbg !6723
  %cmp14 = icmp eq i32 %and, 128, !dbg !6724
  %11 = zext i1 %cmp14 to i64, !dbg !6725
  %cond = select i1 %cmp14, i32 1, i32 0, !dbg !6725
  %conv16 = trunc i32 %cond to i8, !dbg !6725
  %12 = load i8*, i8** %locked.addr, align 8, !dbg !6726
  store i8 %conv16, i8* %12, align 1, !dbg !6727
  br label %if.end24, !dbg !6728

if.else17:                                        ; preds = %if.end6
  %13 = load i8, i8* %t, align 1, !dbg !6729
  %conv18 = zext i8 %13 to i32, !dbg !6729
  %and19 = and i32 %conv18, 192, !dbg !6730
  %cmp20 = icmp eq i32 %and19, 192, !dbg !6731
  %14 = zext i1 %cmp20 to i64, !dbg !6732
  %cond22 = select i1 %cmp20, i32 1, i32 0, !dbg !6732
  %conv23 = trunc i32 %cond22 to i8, !dbg !6732
  %15 = load i8*, i8** %locked.addr, align 8, !dbg !6733
  store i8 %conv23, i8* %15, align 1, !dbg !6734
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %if.then12
  store i32 0, i32* %retval, align 4, !dbg !6735
  br label %return, !dbg !6735

return:                                           ; preds = %if.end24, %if.then5
  %16 = load i32, i32* %retval, align 4, !dbg !6736
  ret i32 %16, !dbg !6736
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @packet_counter_start(%struct.lgs8gxx_state* %priv) #0 !dbg !6737 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %orig = alloca i8, align 1
  %t = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6738, metadata !DIExpression()), !dbg !6739
  call void @llvm.dbg.declare(metadata i8* %orig, metadata !6740, metadata !DIExpression()), !dbg !6741
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6742, metadata !DIExpression()), !dbg !6743
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6744
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !6746
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6746
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !6747
  %2 = load i8, i8* %prod, align 4, !dbg !6747
  %conv = zext i8 %2 to i32, !dbg !6744
  %cmp = icmp eq i32 %conv, 6, !dbg !6748
  br i1 %cmp, label %if.then, label %if.else, !dbg !6749

if.then:                                          ; preds = %entry
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6750
  %call = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %3, i8 zeroext 48, i8* %orig) #9, !dbg !6752
  %4 = load i8, i8* %orig, align 1, !dbg !6753
  %conv2 = zext i8 %4 to i32, !dbg !6753
  %and = and i32 %conv2, 231, !dbg !6753
  %conv3 = trunc i32 %and to i8, !dbg !6753
  store i8 %conv3, i8* %orig, align 1, !dbg !6753
  %5 = load i8, i8* %orig, align 1, !dbg !6754
  %conv4 = zext i8 %5 to i32, !dbg !6754
  %or = or i32 %conv4, 16, !dbg !6755
  %conv5 = trunc i32 %or to i8, !dbg !6754
  store i8 %conv5, i8* %t, align 1, !dbg !6756
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6757
  %7 = load i8, i8* %t, align 1, !dbg !6758
  %call6 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %6, i8 zeroext 48, i8 zeroext %7) #9, !dbg !6759
  %8 = load i8, i8* %orig, align 1, !dbg !6760
  %conv7 = zext i8 %8 to i32, !dbg !6760
  %or8 = or i32 %conv7, 24, !dbg !6761
  %conv9 = trunc i32 %or8 to i8, !dbg !6760
  store i8 %conv9, i8* %t, align 1, !dbg !6762
  %9 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6763
  %10 = load i8, i8* %t, align 1, !dbg !6764
  %call10 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %9, i8 zeroext 48, i8 zeroext %10) #9, !dbg !6765
  %11 = load i8, i8* %orig, align 1, !dbg !6766
  %conv11 = zext i8 %11 to i32, !dbg !6766
  %or12 = or i32 %conv11, 16, !dbg !6767
  %conv13 = trunc i32 %or12 to i8, !dbg !6766
  store i8 %conv13, i8* %t, align 1, !dbg !6768
  %12 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6769
  %13 = load i8, i8* %t, align 1, !dbg !6770
  %call14 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %12, i8 zeroext 48, i8 zeroext %13) #9, !dbg !6771
  br label %if.end, !dbg !6772

if.else:                                          ; preds = %entry
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6773
  %call15 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %14, i8 zeroext -58, i8 zeroext 1) #9, !dbg !6775
  %15 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6776
  %call16 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %15, i8 zeroext -58, i8 zeroext 65) #9, !dbg !6777
  %16 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6778
  %call17 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %16, i8 zeroext -58, i8 zeroext 1) #9, !dbg !6779
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @packet_counter_stop(%struct.lgs8gxx_state* %priv) #0 !dbg !6781 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %t = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6782, metadata !DIExpression()), !dbg !6783
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6784, metadata !DIExpression()), !dbg !6785
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6786
  %config = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 1, !dbg !6788
  %1 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %config, align 8, !dbg !6788
  %prod = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %1, i32 0, i32 0, !dbg !6789
  %2 = load i8, i8* %prod, align 4, !dbg !6789
  %conv = zext i8 %2 to i32, !dbg !6786
  %cmp = icmp eq i32 %conv, 6, !dbg !6790
  br i1 %cmp, label %if.then, label %if.else, !dbg !6791

if.then:                                          ; preds = %entry
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6792
  %call = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %3, i8 zeroext 48, i8* %t) #9, !dbg !6794
  %4 = load i8, i8* %t, align 1, !dbg !6795
  %conv2 = zext i8 %4 to i32, !dbg !6795
  %and = and i32 %conv2, 231, !dbg !6795
  %conv3 = trunc i32 %and to i8, !dbg !6795
  store i8 %conv3, i8* %t, align 1, !dbg !6795
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6796
  %6 = load i8, i8* %t, align 1, !dbg !6797
  %call4 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %5, i8 zeroext 48, i8 zeroext %6) #9, !dbg !6798
  br label %if.end, !dbg !6799

if.else:                                          ; preds = %entry
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6800
  %call5 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %7, i8 zeroext -58, i8 zeroext -127) #9, !dbg !6802
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6803
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8913_read_signal_strength(%struct.lgs8gxx_state* %priv, i16* %signal) #0 !dbg !6804 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %signal.addr = alloca i16*, align 8
  %t = alloca i8, align 1
  %ret = alloca i8, align 1
  %max_strength = alloca i16, align 2
  %str = alloca i8, align 1
  %i = alloca i16, align 2
  %gi = alloca i16, align 2
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6807, metadata !DIExpression()), !dbg !6808
  store i16* %signal, i16** %signal.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal.addr, metadata !6809, metadata !DIExpression()), !dbg !6810
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6811, metadata !DIExpression()), !dbg !6812
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !6813, metadata !DIExpression()), !dbg !6814
  call void @llvm.dbg.declare(metadata i16* %max_strength, metadata !6815, metadata !DIExpression()), !dbg !6816
  store i16 0, i16* %max_strength, align 2, !dbg !6816
  call void @llvm.dbg.declare(metadata i8* %str, metadata !6817, metadata !DIExpression()), !dbg !6818
  call void @llvm.dbg.declare(metadata i16* %i, metadata !6819, metadata !DIExpression()), !dbg !6820
  call void @llvm.dbg.declare(metadata i16* %gi, metadata !6821, metadata !DIExpression()), !dbg !6822
  %0 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6823
  %curr_gi = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %0, i32 0, i32 3, !dbg !6824
  %1 = load i16, i16* %curr_gi, align 8, !dbg !6824
  store i16 %1, i16* %gi, align 2, !dbg !6822
  br label %do.body, !dbg !6825

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @debug, align 4, !dbg !6826
  %tobool = icmp ne i32 %2, 0, !dbg !6826
  br i1 %tobool, label %if.then, label %if.end, !dbg !6829

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.lgs8913_read_signal_strength, i64 0, i64 0)) #8, !dbg !6826
  br label %if.end, !dbg !6826

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6829

do.end:                                           ; preds = %if.end
  %3 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6830
  %call1 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %3, i8 zeroext 75, i8* %t) #9, !dbg !6831
  %conv = trunc i32 %call1 to i8, !dbg !6831
  store i8 %conv, i8* %ret, align 1, !dbg !6832
  %4 = load i8, i8* %ret, align 1, !dbg !6833
  %conv2 = sext i8 %4 to i32, !dbg !6833
  %cmp = icmp ne i32 %conv2, 0, !dbg !6835
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6836

if.then4:                                         ; preds = %do.end
  store i32 -5, i32* %retval, align 4, !dbg !6837
  br label %return, !dbg !6837

if.end5:                                          ; preds = %do.end
  %5 = load i32, i32* @fake_signal_str, align 4, !dbg !6838
  %tobool6 = icmp ne i32 %5, 0, !dbg !6838
  br i1 %tobool6, label %if.then7, label %if.end19, !dbg !6840

if.then7:                                         ; preds = %if.end5
  %6 = load i8, i8* %t, align 1, !dbg !6841
  %conv8 = zext i8 %6 to i32, !dbg !6841
  %and = and i32 %conv8, 192, !dbg !6844
  %cmp9 = icmp eq i32 %and, 192, !dbg !6845
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !6846

if.then11:                                        ; preds = %if.then7
  br label %do.body12, !dbg !6847

do.body12:                                        ; preds = %if.then11
  %7 = load i32, i32* @debug, align 4, !dbg !6849
  %tobool13 = icmp ne i32 %7, 0, !dbg !6849
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !6852

if.then14:                                        ; preds = %do.body12
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !6849
  br label %if.end16, !dbg !6849

if.end16:                                         ; preds = %if.then14, %do.body12
  br label %do.end17, !dbg !6852

do.end17:                                         ; preds = %if.end16
  %8 = load i16*, i16** %signal.addr, align 8, !dbg !6853
  store i16 32767, i16* %8, align 2, !dbg !6854
  br label %if.end18, !dbg !6855

if.else:                                          ; preds = %if.then7
  %9 = load i16*, i16** %signal.addr, align 8, !dbg !6856
  store i16 0, i16* %9, align 2, !dbg !6857
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.end17
  store i32 0, i32* %retval, align 4, !dbg !6858
  br label %return, !dbg !6858

if.end19:                                         ; preds = %if.end5
  br label %do.body20, !dbg !6859

do.body20:                                        ; preds = %if.end19
  %10 = load i32, i32* @debug, align 4, !dbg !6860
  %tobool21 = icmp ne i32 %10, 0, !dbg !6860
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !6863

if.then22:                                        ; preds = %do.body20
  %11 = load i16, i16* %gi, align 2, !dbg !6860
  %conv23 = zext i16 %11 to i32, !dbg !6860
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 %conv23) #8, !dbg !6860
  br label %if.end25, !dbg !6860

if.end25:                                         ; preds = %if.then22, %do.body20
  br label %do.end26, !dbg !6863

do.end26:                                         ; preds = %if.end25
  store i16 0, i16* %i, align 2, !dbg !6864
  br label %for.cond, !dbg !6866

for.cond:                                         ; preds = %for.inc, %do.end26
  %12 = load i16, i16* %i, align 2, !dbg !6867
  %conv27 = zext i16 %12 to i32, !dbg !6867
  %13 = load i16, i16* %gi, align 2, !dbg !6869
  %conv28 = zext i16 %13 to i32, !dbg !6869
  %cmp29 = icmp slt i32 %conv27, %conv28, !dbg !6870
  br i1 %cmp29, label %for.body, label %for.end, !dbg !6871

for.body:                                         ; preds = %for.cond
  %14 = load i16, i16* %i, align 2, !dbg !6872
  %conv31 = zext i16 %14 to i32, !dbg !6872
  %and32 = and i32 %conv31, 255, !dbg !6875
  %cmp33 = icmp eq i32 %and32, 0, !dbg !6876
  br i1 %cmp33, label %if.then35, label %if.end40, !dbg !6877

if.then35:                                        ; preds = %for.body
  %15 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6878
  %16 = load i16, i16* %i, align 2, !dbg !6879
  %conv36 = zext i16 %16 to i32, !dbg !6879
  %shr = ashr i32 %conv36, 8, !dbg !6880
  %and37 = and i32 3, %shr, !dbg !6881
  %conv38 = trunc i32 %and37 to i8, !dbg !6882
  %call39 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %15, i8 zeroext -124, i8 zeroext %conv38) #9, !dbg !6883
  br label %if.end40, !dbg !6883

if.end40:                                         ; preds = %if.then35, %for.body
  %17 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6884
  %18 = load i16, i16* %i, align 2, !dbg !6885
  %conv41 = zext i16 %18 to i32, !dbg !6885
  %and42 = and i32 %conv41, 255, !dbg !6886
  %conv43 = trunc i32 %and42 to i8, !dbg !6885
  %call44 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %17, i8 zeroext -125, i8 zeroext %conv43) #9, !dbg !6887
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6888
  %call45 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %19, i8 zeroext -108, i8* %str) #9, !dbg !6889
  %20 = load i16, i16* %max_strength, align 2, !dbg !6890
  %conv46 = sext i16 %20 to i32, !dbg !6890
  %21 = load i8, i8* %str, align 1, !dbg !6892
  %conv47 = zext i8 %21 to i32, !dbg !6892
  %cmp48 = icmp slt i32 %conv46, %conv47, !dbg !6893
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !6894

if.then50:                                        ; preds = %if.end40
  %22 = load i8, i8* %str, align 1, !dbg !6895
  %conv51 = zext i8 %22 to i16, !dbg !6895
  store i16 %conv51, i16* %max_strength, align 2, !dbg !6896
  br label %if.end52, !dbg !6897

if.end52:                                         ; preds = %if.then50, %if.end40
  br label %for.inc, !dbg !6898

for.inc:                                          ; preds = %if.end52
  %23 = load i16, i16* %i, align 2, !dbg !6899
  %inc = add i16 %23, 1, !dbg !6899
  store i16 %inc, i16* %i, align 2, !dbg !6899
  br label %for.cond, !dbg !6900, !llvm.loop !6901

for.end:                                          ; preds = %for.cond
  %24 = load i16, i16* %max_strength, align 2, !dbg !6903
  %25 = load i16*, i16** %signal.addr, align 8, !dbg !6904
  store i16 %24, i16* %25, align 2, !dbg !6905
  br label %do.body53, !dbg !6906

do.body53:                                        ; preds = %for.end
  %26 = load i32, i32* @debug, align 4, !dbg !6907
  %tobool54 = icmp ne i32 %26, 0, !dbg !6907
  br i1 %tobool54, label %if.then55, label %if.end58, !dbg !6910

if.then55:                                        ; preds = %do.body53
  %27 = load i16*, i16** %signal.addr, align 8, !dbg !6907
  %28 = load i16, i16* %27, align 2, !dbg !6907
  %conv56 = zext i16 %28 to i32, !dbg !6907
  %call57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.lgs8913_read_signal_strength, i64 0, i64 0), i32 %conv56) #8, !dbg !6907
  br label %if.end58, !dbg !6907

if.end58:                                         ; preds = %if.then55, %do.body53
  br label %do.end59, !dbg !6910

do.end59:                                         ; preds = %if.end58
  %29 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6911
  %call60 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %29, i8 zeroext -107, i8* %t) #9, !dbg !6912
  br label %do.body61, !dbg !6913

do.body61:                                        ; preds = %do.end59
  %30 = load i32, i32* @debug, align 4, !dbg !6914
  %tobool62 = icmp ne i32 %30, 0, !dbg !6914
  br i1 %tobool62, label %if.then63, label %if.end66, !dbg !6917

if.then63:                                        ; preds = %do.body61
  %31 = load i8, i8* %t, align 1, !dbg !6914
  %conv64 = zext i8 %31 to i32, !dbg !6914
  %call65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.lgs8913_read_signal_strength, i64 0, i64 0), i32 %conv64) #8, !dbg !6914
  br label %if.end66, !dbg !6914

if.end66:                                         ; preds = %if.then63, %do.body61
  br label %do.end67, !dbg !6917

do.end67:                                         ; preds = %if.end66
  store i32 0, i32* %retval, align 4, !dbg !6918
  br label %return, !dbg !6918

return:                                           ; preds = %do.end67, %if.end18, %if.then4
  %32 = load i32, i32* %retval, align 4, !dbg !6919
  ret i32 %32, !dbg !6919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8g75_read_signal_strength(%struct.lgs8gxx_state* %priv, i16* %signal) #0 !dbg !6920 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %signal.addr = alloca i16*, align 8
  %t = alloca i8, align 1
  %v = alloca i16, align 2
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6921, metadata !DIExpression()), !dbg !6922
  store i16* %signal, i16** %signal.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal.addr, metadata !6923, metadata !DIExpression()), !dbg !6924
  call void @llvm.dbg.declare(metadata i8* %t, metadata !6925, metadata !DIExpression()), !dbg !6926
  call void @llvm.dbg.declare(metadata i16* %v, metadata !6927, metadata !DIExpression()), !dbg !6928
  store i16 0, i16* %v, align 2, !dbg !6928
  br label %do.body, !dbg !6929

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6930
  %tobool = icmp ne i32 %0, 0, !dbg !6930
  br i1 %tobool, label %if.then, label %if.end, !dbg !6933

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.lgs8g75_read_signal_strength, i64 0, i64 0)) #8, !dbg !6930
  br label %if.end, !dbg !6930

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6933

do.end:                                           ; preds = %if.end
  %1 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6934
  %call1 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %1, i8 zeroext -79, i8* %t) #9, !dbg !6935
  %2 = load i8, i8* %t, align 1, !dbg !6936
  %conv = zext i8 %2 to i32, !dbg !6936
  %3 = load i16, i16* %v, align 2, !dbg !6937
  %conv2 = sext i16 %3 to i32, !dbg !6937
  %or = or i32 %conv2, %conv, !dbg !6937
  %conv3 = trunc i32 %or to i16, !dbg !6937
  store i16 %conv3, i16* %v, align 2, !dbg !6937
  %4 = load i16, i16* %v, align 2, !dbg !6938
  %conv4 = sext i16 %4 to i32, !dbg !6938
  %shl = shl i32 %conv4, 8, !dbg !6938
  %conv5 = trunc i32 %shl to i16, !dbg !6938
  store i16 %conv5, i16* %v, align 2, !dbg !6938
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6939
  %call6 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %5, i8 zeroext -80, i8* %t) #9, !dbg !6940
  %6 = load i8, i8* %t, align 1, !dbg !6941
  %conv7 = zext i8 %6 to i32, !dbg !6941
  %7 = load i16, i16* %v, align 2, !dbg !6942
  %conv8 = sext i16 %7 to i32, !dbg !6942
  %or9 = or i32 %conv8, %conv7, !dbg !6942
  %conv10 = trunc i32 %or9 to i16, !dbg !6942
  store i16 %conv10, i16* %v, align 2, !dbg !6942
  %8 = load i16, i16* %v, align 2, !dbg !6943
  %9 = load i16*, i16** %signal.addr, align 8, !dbg !6944
  store i16 %8, i16* %9, align 2, !dbg !6945
  br label %do.body11, !dbg !6946

do.body11:                                        ; preds = %do.end
  %10 = load i32, i32* @debug, align 4, !dbg !6947
  %tobool12 = icmp ne i32 %10, 0, !dbg !6947
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !6950

if.then13:                                        ; preds = %do.body11
  %11 = load i16*, i16** %signal.addr, align 8, !dbg !6947
  %12 = load i16, i16* %11, align 2, !dbg !6947
  %conv14 = zext i16 %12 to i32, !dbg !6947
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.lgs8g75_read_signal_strength, i64 0, i64 0), i32 %conv14) #8, !dbg !6947
  br label %if.end16, !dbg !6947

if.end16:                                         ; preds = %if.then13, %do.body11
  br label %do.end17, !dbg !6950

do.end17:                                         ; preds = %if.end16
  ret i32 0, !dbg !6951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgs8gxx_read_signal_agc(%struct.lgs8gxx_state* %priv, i16* %signal) #0 !dbg !6952 {
entry:
  %priv.addr = alloca %struct.lgs8gxx_state*, align 8
  %signal.addr = alloca i16*, align 8
  %v = alloca i16, align 2
  %agc_lvl = alloca [2 x i8], align 1
  %cat = alloca i8, align 1
  store %struct.lgs8gxx_state* %priv, %struct.lgs8gxx_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lgs8gxx_state** %priv.addr, metadata !6953, metadata !DIExpression()), !dbg !6954
  store i16* %signal, i16** %signal.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal.addr, metadata !6955, metadata !DIExpression()), !dbg !6956
  call void @llvm.dbg.declare(metadata i16* %v, metadata !6957, metadata !DIExpression()), !dbg !6958
  call void @llvm.dbg.declare(metadata [2 x i8]* %agc_lvl, metadata !6959, metadata !DIExpression()), !dbg !6960
  call void @llvm.dbg.declare(metadata i8* %cat, metadata !6961, metadata !DIExpression()), !dbg !6962
  br label %do.body, !dbg !6963

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6964
  %tobool = icmp ne i32 %0, 0, !dbg !6964
  br i1 %tobool, label %if.then, label %if.end, !dbg !6967

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.lgs8gxx_read_signal_agc, i64 0, i64 0)) #8, !dbg !6964
  br label %if.end, !dbg !6964

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6967

do.end:                                           ; preds = %if.end
  %1 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6968
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %agc_lvl, i64 0, i64 0, !dbg !6969
  %call1 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %1, i8 zeroext 63, i8* %arrayidx) #9, !dbg !6970
  %2 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %priv.addr, align 8, !dbg !6971
  %arrayidx2 = getelementptr [2 x i8], [2 x i8]* %agc_lvl, i64 0, i64 1, !dbg !6972
  %call3 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %2, i8 zeroext 62, i8* %arrayidx2) #9, !dbg !6973
  %arrayidx4 = getelementptr [2 x i8], [2 x i8]* %agc_lvl, i64 0, i64 0, !dbg !6974
  %3 = load i8, i8* %arrayidx4, align 1, !dbg !6974
  %conv = zext i8 %3 to i16, !dbg !6974
  store i16 %conv, i16* %v, align 2, !dbg !6975
  %4 = load i16, i16* %v, align 2, !dbg !6976
  %conv5 = zext i16 %4 to i32, !dbg !6976
  %shl = shl i32 %conv5, 8, !dbg !6976
  %conv6 = trunc i32 %shl to i16, !dbg !6976
  store i16 %conv6, i16* %v, align 2, !dbg !6976
  %arrayidx7 = getelementptr [2 x i8], [2 x i8]* %agc_lvl, i64 0, i64 1, !dbg !6977
  %5 = load i8, i8* %arrayidx7, align 1, !dbg !6977
  %conv8 = zext i8 %5 to i32, !dbg !6977
  %6 = load i16, i16* %v, align 2, !dbg !6978
  %conv9 = zext i16 %6 to i32, !dbg !6978
  %or = or i32 %conv9, %conv8, !dbg !6978
  %conv10 = trunc i32 %or to i16, !dbg !6978
  store i16 %conv10, i16* %v, align 2, !dbg !6978
  br label %do.body11, !dbg !6979

do.body11:                                        ; preds = %do.end
  %7 = load i32, i32* @debug, align 4, !dbg !6980
  %tobool12 = icmp ne i32 %7, 0, !dbg !6980
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !6983

if.then13:                                        ; preds = %do.body11
  %8 = load i16, i16* %v, align 2, !dbg !6980
  %conv14 = zext i16 %8 to i32, !dbg !6980
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i32 %conv14) #8, !dbg !6980
  br label %if.end16, !dbg !6980

if.end16:                                         ; preds = %if.then13, %do.body11
  br label %do.end17, !dbg !6983

do.end17:                                         ; preds = %if.end16
  %9 = load i16, i16* %v, align 2, !dbg !6984
  %conv18 = zext i16 %9 to i32, !dbg !6984
  %cmp = icmp slt i32 %conv18, 256, !dbg !6986
  br i1 %cmp, label %if.then20, label %if.else, !dbg !6987

if.then20:                                        ; preds = %do.end17
  store i8 0, i8* %cat, align 1, !dbg !6988
  br label %if.end51, !dbg !6989

if.else:                                          ; preds = %do.end17
  %10 = load i16, i16* %v, align 2, !dbg !6990
  %conv21 = zext i16 %10 to i32, !dbg !6990
  %cmp22 = icmp slt i32 %conv21, 400, !dbg !6992
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !6993

if.then24:                                        ; preds = %if.else
  store i8 5, i8* %cat, align 1, !dbg !6994
  br label %if.end50, !dbg !6995

if.else25:                                        ; preds = %if.else
  %11 = load i16, i16* %v, align 2, !dbg !6996
  %conv26 = zext i16 %11 to i32, !dbg !6996
  %cmp27 = icmp slt i32 %conv26, 680, !dbg !6998
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !6999

if.then29:                                        ; preds = %if.else25
  store i8 4, i8* %cat, align 1, !dbg !7000
  br label %if.end49, !dbg !7001

if.else30:                                        ; preds = %if.else25
  %12 = load i16, i16* %v, align 2, !dbg !7002
  %conv31 = zext i16 %12 to i32, !dbg !7002
  %cmp32 = icmp slt i32 %conv31, 897, !dbg !7004
  br i1 %cmp32, label %if.then34, label %if.else35, !dbg !7005

if.then34:                                        ; preds = %if.else30
  store i8 3, i8* %cat, align 1, !dbg !7006
  br label %if.end48, !dbg !7007

if.else35:                                        ; preds = %if.else30
  %13 = load i16, i16* %v, align 2, !dbg !7008
  %conv36 = zext i16 %13 to i32, !dbg !7008
  %cmp37 = icmp slt i32 %conv36, 1024, !dbg !7010
  br i1 %cmp37, label %if.then39, label %if.else40, !dbg !7011

if.then39:                                        ; preds = %if.else35
  store i8 2, i8* %cat, align 1, !dbg !7012
  br label %if.end47, !dbg !7013

if.else40:                                        ; preds = %if.else35
  %14 = load i16, i16* %v, align 2, !dbg !7014
  %conv41 = zext i16 %14 to i32, !dbg !7014
  %cmp42 = icmp eq i32 %conv41, 1024, !dbg !7016
  br i1 %cmp42, label %if.then44, label %if.else45, !dbg !7017

if.then44:                                        ; preds = %if.else40
  store i8 1, i8* %cat, align 1, !dbg !7018
  br label %if.end46, !dbg !7019

if.else45:                                        ; preds = %if.else40
  store i8 0, i8* %cat, align 1, !dbg !7020
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then44
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then39
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then34
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then29
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then24
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then20
  %15 = load i8, i8* %cat, align 1, !dbg !7021
  %conv52 = zext i8 %15 to i32, !dbg !7021
  %mul = mul i32 %conv52, 65535, !dbg !7022
  %div = sdiv i32 %mul, 5, !dbg !7023
  %conv53 = trunc i32 %div to i16, !dbg !7021
  %16 = load i16*, i16** %signal.addr, align 8, !dbg !7024
  store i16 %conv53, i16* %16, align 2, !dbg !7025
  ret i32 0, !dbg !7026
}

; Function Attrs: noredzone
declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #4

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #4

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
!llvm.module.flags = !{!4471, !4472, !4473, !4474}
!llvm.ident = !{!4475}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 31, type: !4468, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !4358, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/lgs8gxx.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !{!291, !292, !294, !4357, !355, !340}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !293, line: 148, baseType: !7)
!293 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lgs8gxx_state", file: !296, line: 15, size: 10432, elements: !297)
!296 = !DIFile(filename: "drivers/media/dvb-frontends/lgs8gxx_priv.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !4016, !4035, !4356}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !295, file: !296, line: 16, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !301, line: 695, size: 7552, elements: !302)
!301 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !307, !308, !357, !358, !372, !3409, !3410, !3411, !3412, !3963, !3964, !3965, !3969, !3970, !3971, !3972, !4004, !4015}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !300, file: !301, line: 696, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !306, line: 76, flags: DIFlagFwdDecl)
!306 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!307 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !300, file: !301, line: 697, baseType: !7, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !300, file: !301, line: 698, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !301, line: 519, size: 320, elements: !312)
!312 = !{!313, !332, !333, !350, !351}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !311, file: !301, line: 529, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !299, !318, !317}
!317 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !320, line: 69, size: 128, elements: !321)
!320 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !326, !327, !328}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !319, file: !320, line: 70, baseType: !323, size: 16)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !324, line: 24, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !320, line: 71, baseType: !323, size: 16, offset: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !319, file: !320, line: 84, baseType: !323, size: 16, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !319, file: !320, line: 85, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !324, line: 21, baseType: !331)
!331 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !311, file: !301, line: 531, baseType: !314, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !311, file: !301, line: 533, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!317, !299, !337, !325, !339, !340, !317, !341}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !338, line: 19, baseType: !323)
!338 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!339 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !338, line: 17, baseType: !330)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !320, line: 135, size: 272, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !342, file: !320, line: 136, baseType: !330, size: 8)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !342, file: !320, line: 137, baseType: !323, size: 16)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !342, file: !320, line: 138, baseType: !347, size: 272)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 272, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 34)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !311, file: !301, line: 536, baseType: !334, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !311, file: !301, line: 541, baseType: !352, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !299}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !338, line: 21, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !324, line: 27, baseType: !7)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !300, file: !301, line: 699, baseType: !291, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !300, file: !301, line: 702, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !301, line: 557, size: 192, elements: !362)
!362 = !{!363, !367, !371}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !361, file: !301, line: 558, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !299, !7}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !361, file: !301, line: 559, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!317, !299, !7}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !361, file: !301, line: 560, baseType: !364, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !300, file: !301, line: 703, baseType: !373, size: 192, offset: 320)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !374, line: 30, size: 192, elements: !375)
!374 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376, !386, !402}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !373, file: !374, line: 31, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !378, line: 29, baseType: !379)
!378 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !378, line: 20, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !379, file: !378, line: 21, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !383, line: 25, baseType: !384)
!383 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 25, elements: !385)
!385 = !{}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !373, file: !374, line: 32, baseType: !387, size: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !388, line: 125, size: 128, elements: !389)
!388 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390, !401}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !387, file: !388, line: 126, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !388, line: 31, size: 64, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !391, file: !388, line: 32, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !388, line: 24, size: 192, align: 64, elements: !396)
!396 = !{!397, !399, !400}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !395, file: !388, line: 25, baseType: !398, size: 64)
!398 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !395, file: !388, line: 26, baseType: !394, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !395, file: !388, line: 27, baseType: !394, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !387, file: !388, line: 127, baseType: !394, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !373, file: !374, line: 33, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !405, line: 640, size: 48640, elements: !406)
!405 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !413, !416, !417, !427, !428, !429, !430, !431, !432, !433, !434, !438, !464, !475, !567, !568, !569, !580, !581, !583, !584, !2712, !2713, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2795, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2810, !2811, !2812, !2814, !2815, !2816, !2817, !2818, !2819, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2843, !2848, !2849, !2850, !2851, !2852, !2854, !2857, !2860, !2863, !2866, !2869, !2970, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3016, !3017, !3018, !3019, !3020, !3025, !3026, !3027, !3030, !3031, !3034, !3037, !3040, !3041, !3073, !3076, !3077, !3156, !3157, !3160, !3161, !3164, !3165, !3166, !3170, !3171, !3172, !3185, !3186, !3187, !3197, !3202, !3203, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !404, file: !405, line: 646, baseType: !408, size: 128)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !409, line: 56, size: 128, elements: !410)
!409 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !409, line: 57, baseType: !398, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !408, file: !409, line: 58, baseType: !355, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !404, file: !405, line: 649, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !415)
!415 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !404, file: !405, line: 657, baseType: !291, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !404, file: !405, line: 658, baseType: !418, size: 32, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !419, line: 113, baseType: !420)
!419 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !419, line: 111, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !420, file: !419, line: 112, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !293, line: 168, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 166, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !424, file: !293, line: 167, baseType: !317, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !405, line: 660, baseType: !7, size: 32, offset: 288)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !404, file: !405, line: 661, baseType: !7, size: 32, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !404, file: !405, line: 684, baseType: !317, size: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !404, file: !405, line: 686, baseType: !317, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !404, file: !405, line: 687, baseType: !317, size: 32, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !404, file: !405, line: 688, baseType: !317, size: 32, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !404, file: !405, line: 689, baseType: !7, size: 32, offset: 480)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !404, file: !405, line: 691, baseType: !435, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !405, line: 691, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !404, file: !405, line: 692, baseType: !439, size: 832, offset: 576)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !405, line: 451, size: 832, elements: !440)
!440 = !{!441, !446, !447, !453, !454, !458, !459, !460, !461, !462}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !439, file: !405, line: 453, baseType: !442, size: 128)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !405, line: 325, size: 128, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !442, file: !405, line: 326, baseType: !398, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !442, file: !405, line: 327, baseType: !355, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !439, file: !405, line: 454, baseType: !395, size: 192, align: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !439, file: !405, line: 455, baseType: !448, size: 128, offset: 320)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !293, line: 178, size: 128, elements: !449)
!449 = !{!450, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !293, line: 179, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !448, file: !293, line: 179, baseType: !451, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !439, file: !405, line: 456, baseType: !7, size: 32, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !439, file: !405, line: 458, baseType: !455, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !338, line: 23, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !324, line: 31, baseType: !457)
!457 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !439, file: !405, line: 459, baseType: !455, size: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !439, file: !405, line: 460, baseType: !455, size: 64, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !439, file: !405, line: 461, baseType: !455, size: 64, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !439, file: !405, line: 463, baseType: !455, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !439, file: !405, line: 465, baseType: !463, offset: 832)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !405, line: 415, elements: !385)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !404, file: !405, line: 693, baseType: !465, size: 384, offset: 1408)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !405, line: 489, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !465, file: !405, line: 490, baseType: !448, size: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !465, file: !405, line: 491, baseType: !398, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !465, file: !405, line: 492, baseType: !398, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !465, file: !405, line: 493, baseType: !7, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !465, file: !405, line: 494, baseType: !325, size: 16, offset: 288)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !465, file: !405, line: 495, baseType: !325, size: 16, offset: 304)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !465, file: !405, line: 497, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !404, file: !405, line: 697, baseType: !476, size: 1792, offset: 1792)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !405, line: 507, size: 1792, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !488, !489, !490, !491, !492, !493, !494, !564, !565}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !476, file: !405, line: 508, baseType: !395, size: 192, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !476, file: !405, line: 515, baseType: !455, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !476, file: !405, line: 516, baseType: !455, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !476, file: !405, line: 517, baseType: !455, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !476, file: !405, line: 518, baseType: !455, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !476, file: !405, line: 519, baseType: !455, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !476, file: !405, line: 526, baseType: !485, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !338, line: 22, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !324, line: 30, baseType: !487)
!487 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !476, file: !405, line: 527, baseType: !455, size: 64, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !405, line: 528, baseType: !7, size: 32, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !476, file: !405, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !476, file: !405, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !476, file: !405, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !476, file: !405, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !476, file: !405, line: 563, baseType: !495, size: 512, offset: 704)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !496)
!496 = !{!497, !505, !506, !511, !560, !561, !562, !563}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !191, line: 119, baseType: !498, size: 256)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !499, line: 9, size: 256, elements: !500)
!499 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !499, line: 10, baseType: !395, size: 192, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !498, file: !499, line: 11, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !504, line: 29, baseType: !485)
!504 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !495, file: !191, line: 120, baseType: !503, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !495, file: !191, line: 121, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!190, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !495, file: !191, line: 122, baseType: !512, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !514)
!514 = !{!515, !535, !536, !540, !550, !551, !555, !559}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !513, file: !191, line: 160, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !517, file: !191, line: 215, baseType: !377)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !517, file: !191, line: 216, baseType: !7, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !517, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !517, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !517, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !517, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !517, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !517, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !517, file: !191, line: 233, baseType: !503, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !517, file: !191, line: 234, baseType: !510, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !517, file: !191, line: 235, baseType: !503, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !517, file: !191, line: 236, baseType: !510, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !517, file: !191, line: 237, baseType: !532, size: 4096, offset: 512)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 4096, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 8)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !513, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !513, file: !191, line: 162, baseType: !537, size: 32, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !293, line: 27, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !539, line: 96, baseType: !317)
!539 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!540 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !513, file: !191, line: 163, baseType: !541, size: 32, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !542, line: 276, baseType: !543)
!542 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !542, line: 276, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !543, file: !542, line: 276, baseType: !546, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !542, line: 70, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !542, line: 65, size: 32, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !547, file: !542, line: 66, baseType: !7, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !513, file: !191, line: 164, baseType: !510, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !513, file: !191, line: 165, baseType: !552, size: 128, offset: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !499, line: 14, size: 128, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !552, file: !499, line: 15, baseType: !387, size: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !513, file: !191, line: 166, baseType: !556, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!503}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !513, file: !191, line: 167, baseType: !503, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !495, file: !191, line: 123, baseType: !340, size: 8, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !495, file: !191, line: 124, baseType: !340, size: 8, offset: 456)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !495, file: !191, line: 125, baseType: !340, size: 8, offset: 464)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !495, file: !191, line: 126, baseType: !340, size: 8, offset: 472)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !476, file: !405, line: 572, baseType: !495, size: 512, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !476, file: !405, line: 580, baseType: !566, size: 64, offset: 1728)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !404, file: !405, line: 721, baseType: !7, size: 32, offset: 3584)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !404, file: !405, line: 722, baseType: !317, size: 32, offset: 3616)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !404, file: !405, line: 723, baseType: !570, size: 64, offset: 3648)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !573, line: 17, baseType: !574)
!573 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !573, line: 17, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !574, file: !573, line: 17, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 64, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 1)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !404, file: !405, line: 724, baseType: !572, size: 64, offset: 3712)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !404, file: !405, line: 749, baseType: !582, offset: 3776)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !405, line: 290, elements: !385)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !404, file: !405, line: 751, baseType: !448, size: 128, offset: 3776)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !404, file: !405, line: 757, baseType: !585, size: 64, offset: 3904)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !587, line: 388, size: 7296, elements: !588)
!587 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!588 = !{!589, !2708}
!589 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !587, line: 389, baseType: !590, size: 7296)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !586, file: !587, line: 389, size: 7296, elements: !591)
!591 = !{!592, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2621, !2627, !2630, !2669, !2670, !2692, !2693, !2696, !2697, !2698, !2701, !2702, !2703, !2706, !2707}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !590, file: !587, line: 390, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !587, line: 305, size: 1472, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !611, !612, !617, !618, !621, !625, !626, !2569, !2570, !2571}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !594, file: !587, line: 308, baseType: !398, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !594, file: !587, line: 309, baseType: !398, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !594, file: !587, line: 313, baseType: !593, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !594, file: !587, line: 313, baseType: !593, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !594, file: !587, line: 315, baseType: !395, size: 192, align: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !594, file: !587, line: 323, baseType: !398, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !594, file: !587, line: 327, baseType: !585, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !594, file: !587, line: 333, baseType: !604, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !605, line: 284, baseType: !606)
!605 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !605, line: 284, size: 64, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !606, file: !605, line: 284, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !610, line: 19, baseType: !398)
!610 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !594, file: !587, line: 334, baseType: !398, size: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !594, file: !587, line: 343, baseType: !613, size: 256, offset: 704)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !587, line: 340, size: 256, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !613, file: !587, line: 341, baseType: !395, size: 192, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !613, file: !587, line: 342, baseType: !398, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !594, file: !587, line: 351, baseType: !448, size: 128, offset: 960)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !594, file: !587, line: 353, baseType: !619, size: 64, offset: 1088)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !587, line: 353, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !594, file: !587, line: 356, baseType: !622, size: 64, offset: 1152)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !587, line: 356, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !594, file: !587, line: 359, baseType: !398, size: 64, offset: 1216)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !594, file: !587, line: 361, baseType: !627, size: 64, offset: 1280)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !629)
!629 = !{!630, !648, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2368, !2553, !2562, !2563, !2564, !2565, !2566, !2567, !2568}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !628, file: !208, line: 920, baseType: !631, size: 128)
!631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !628, file: !208, line: 917, size: 128, elements: !632)
!632 = !{!633, !639}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !631, file: !208, line: 918, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !635, line: 58, size: 64, elements: !636)
!635 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !635, line: 59, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !631, file: !208, line: 919, baseType: !640, size: 128, align: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !293, line: 216, size: 128, align: 64, elements: !641)
!641 = !{!642, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !293, line: 217, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !640, file: !293, line: 218, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !643}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !628, file: !208, line: 921, baseType: !649, size: 128, offset: 128)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !650, line: 8, size: 128, elements: !651)
!650 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!651 = !{!652, !656}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !649, file: !650, line: 9, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !655, line: 18, flags: DIFlagFwdDecl)
!655 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !649, file: !650, line: 10, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !655, line: 89, size: 1536, elements: !659)
!659 = !{!660, !661, !666, !674, !675, !690, !2298, !2300, !2312, !2313, !2314, !2315, !2316, !2321, !2322, !2323}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !658, file: !655, line: 91, baseType: !7, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !658, file: !655, line: 92, baseType: !662, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !542, line: 277, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !542, line: 277, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !663, file: !542, line: 277, baseType: !546, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !658, file: !655, line: 93, baseType: !667, size: 128, offset: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !668, line: 38, size: 128, elements: !669)
!668 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!669 = !{!670, !672}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !668, line: 39, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !667, file: !668, line: 39, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !658, file: !655, line: 94, baseType: !657, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !658, file: !655, line: 95, baseType: !676, size: 128, offset: 256)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !655, line: 47, size: 128, elements: !677)
!677 = !{!678, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !655, line: 48, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !655, line: 48, size: 64, elements: !680)
!680 = !{!681, !686}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !655, line: 49, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !655, line: 49, size: 64, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !682, file: !655, line: 50, baseType: !355, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !682, file: !655, line: 50, baseType: !355, size: 32, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !679, file: !655, line: 52, baseType: !455, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !676, file: !655, line: 54, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !658, file: !655, line: 96, baseType: !691, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !693)
!693 = !{!694, !696, !697, !705, !712, !713, !868, !1687, !1688, !1689, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1966, !1974, !1975, !1976, !2294, !2295, !2296, !2297}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !692, file: !208, line: 611, baseType: !695, size: 16)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !293, line: 19, baseType: !325)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !692, file: !208, line: 612, baseType: !325, size: 16, offset: 16)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !692, file: !208, line: 613, baseType: !698, size: 32, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !699, line: 23, baseType: !700)
!699 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 21, size: 32, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !700, file: !699, line: 22, baseType: !703, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !293, line: 32, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !539, line: 49, baseType: !7)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !692, file: !208, line: 614, baseType: !706, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !699, line: 28, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 26, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !707, file: !699, line: 27, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !293, line: 33, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !539, line: 50, baseType: !7)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !692, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !692, file: !208, line: 622, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !717)
!717 = !{!718, !722, !737, !741, !747, !752, !758, !762, !766, !770, !774, !775, !781, !785, !809, !838, !848, !854, !859, !863, !864}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !716, file: !208, line: 1865, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!657, !691, !657, !7}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !716, file: !208, line: 1866, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!726, !657, !691, !728}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !730, line: 10, size: 128, elements: !731)
!730 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !736}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !729, file: !730, line: 11, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !291}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !729, file: !730, line: 12, baseType: !291, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !716, file: !208, line: 1867, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!317, !691, !317}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !716, file: !208, line: 1868, baseType: !742, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!745, !691, !317}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !716, file: !208, line: 1870, baseType: !748, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!317, !657, !751, !317}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !716, file: !208, line: 1872, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!317, !691, !657, !695, !756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !293, line: 30, baseType: !757)
!757 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !716, file: !208, line: 1873, baseType: !759, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!317, !657, !691, !657}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !716, file: !208, line: 1874, baseType: !763, size: 64, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!317, !691, !657}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !716, file: !208, line: 1875, baseType: !767, size: 64, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!317, !691, !657, !726}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !716, file: !208, line: 1876, baseType: !771, size: 64, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!317, !691, !657, !695}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !716, file: !208, line: 1877, baseType: !763, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !716, file: !208, line: 1878, baseType: !776, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!317, !691, !657, !695, !779}
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !293, line: 16, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !293, line: 13, baseType: !355)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !716, file: !208, line: 1879, baseType: !782, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!317, !691, !657, !691, !657, !7}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !716, file: !208, line: 1881, baseType: !786, size: 64, offset: 832)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!317, !657, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !799, !806, !807, !808}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !790, file: !208, line: 220, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !790, file: !208, line: 221, baseType: !695, size: 16, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !790, file: !208, line: 222, baseType: !698, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !790, file: !208, line: 223, baseType: !706, size: 32, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !790, file: !208, line: 224, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !293, line: 46, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !539, line: 88, baseType: !487)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !790, file: !208, line: 225, baseType: !800, size: 128, offset: 192)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !801, line: 13, size: 128, elements: !802)
!801 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !800, file: !801, line: 14, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !801, line: 8, baseType: !486)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !800, file: !801, line: 15, baseType: !415, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !790, file: !208, line: 226, baseType: !800, size: 128, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !790, file: !208, line: 227, baseType: !800, size: 128, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !790, file: !208, line: 234, baseType: !627, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !716, file: !208, line: 1882, baseType: !810, size: 64, offset: 896)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!317, !813, !815, !355, !7}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !817, line: 22, size: 1152, elements: !818)
!817 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!818 = !{!819, !820, !821, !822, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !816, file: !817, line: 23, baseType: !355, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !816, file: !817, line: 24, baseType: !695, size: 16, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !816, file: !817, line: 25, baseType: !7, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !816, file: !817, line: 26, baseType: !823, size: 32, offset: 96)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !293, line: 104, baseType: !355)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !816, file: !817, line: 27, baseType: !455, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !816, file: !817, line: 28, baseType: !455, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !816, file: !817, line: 37, baseType: !455, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !816, file: !817, line: 38, baseType: !779, size: 32, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !816, file: !817, line: 39, baseType: !779, size: 32, offset: 352)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !816, file: !817, line: 40, baseType: !698, size: 32, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !816, file: !817, line: 41, baseType: !706, size: 32, offset: 416)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !816, file: !817, line: 42, baseType: !797, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !816, file: !817, line: 43, baseType: !800, size: 128, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !816, file: !817, line: 44, baseType: !800, size: 128, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !816, file: !817, line: 45, baseType: !800, size: 128, offset: 768)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !816, file: !817, line: 46, baseType: !800, size: 128, offset: 896)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !816, file: !817, line: 47, baseType: !455, size: 64, offset: 1024)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !816, file: !817, line: 48, baseType: !455, size: 64, offset: 1088)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !716, file: !208, line: 1883, baseType: !839, size: 64, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!842, !657, !751, !845}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !293, line: 60, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !539, line: 73, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !539, line: 15, baseType: !415)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !293, line: 55, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !539, line: 72, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !539, line: 16, baseType: !398)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !716, file: !208, line: 1884, baseType: !849, size: 64, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!317, !691, !852, !455, !455}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !716, file: !208, line: 1886, baseType: !855, size: 64, offset: 1088)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!317, !691, !858, !317}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !716, file: !208, line: 1887, baseType: !860, size: 64, offset: 1152)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!317, !691, !657, !627, !7, !695}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !716, file: !208, line: 1890, baseType: !771, size: 64, offset: 1216)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !716, file: !208, line: 1891, baseType: !865, size: 64, offset: 1280)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!317, !691, !745, !317}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !692, file: !208, line: 623, baseType: !869, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !926, !1263, !1351, !1434, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1450, !1454, !1455, !1458, !1461, !1464, !1465, !1466, !1507, !1540, !1541, !1542, !1543, !1544, !1545, !1548, !1552, !1561, !1562, !1564, !1565, !1566, !1625, !1626, !1641, !1642, !1643, !1644, !1645, !1649, !1650, !1653, !1668, !1669, !1670, !1681, !1682, !1683, !1684, !1685, !1686}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !870, file: !208, line: 1417, baseType: !448, size: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !870, file: !208, line: 1418, baseType: !779, size: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !870, file: !208, line: 1419, baseType: !331, size: 8, offset: 160)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !870, file: !208, line: 1420, baseType: !398, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !870, file: !208, line: 1421, baseType: !797, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !870, file: !208, line: 1422, baseType: !878, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !880)
!880 = !{!881, !882, !883, !890, !894, !898, !902, !903, !904, !914, !917, !918, !919, !923, !924, !925}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !208, line: 2229, baseType: !726, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !879, file: !208, line: 2230, baseType: !317, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !879, file: !208, line: 2238, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!317, !887}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !889, line: 28, flags: DIFlagFwdDecl)
!889 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !879, file: !208, line: 2239, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !879, file: !208, line: 2240, baseType: !895, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!657, !878, !317, !726, !291}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !879, file: !208, line: 2242, baseType: !899, size: 64, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !869}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !879, file: !208, line: 2243, baseType: !304, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !879, file: !208, line: 2244, baseType: !878, size: 64, offset: 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !879, file: !208, line: 2245, baseType: !905, size: 64, offset: 512)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !293, line: 182, size: 64, elements: !906)
!906 = !{!907}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !905, file: !293, line: 183, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !293, line: 186, size: 128, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !909, file: !293, line: 187, baseType: !908, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !909, file: !293, line: 187, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !879, file: !208, line: 2247, baseType: !915, offset: 576)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !916, line: 187, elements: !385)
!916 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !879, file: !208, line: 2248, baseType: !915, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !879, file: !208, line: 2249, baseType: !915, offset: 576)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !879, file: !208, line: 2250, baseType: !920, offset: 576)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 3)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !879, file: !208, line: 2252, baseType: !915, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !879, file: !208, line: 2253, baseType: !915, offset: 576)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !879, file: !208, line: 2254, baseType: !915, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !870, file: !208, line: 1423, baseType: !927, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !930)
!930 = !{!931, !935, !939, !940, !944, !950, !954, !955, !956, !960, !964, !965, !966, !967, !973, !978, !979, !985, !986, !987, !988, !1247, !1262}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !929, file: !208, line: 1936, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!691, !869}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !929, file: !208, line: 1937, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !691}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !929, file: !208, line: 1938, baseType: !936, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !929, file: !208, line: 1940, baseType: !941, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !691, !317}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !929, file: !208, line: 1941, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!317, !691, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !929, file: !208, line: 1942, baseType: !951, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!317, !691}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !929, file: !208, line: 1943, baseType: !936, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !929, file: !208, line: 1944, baseType: !899, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !929, file: !208, line: 1945, baseType: !957, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!317, !869, !317}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !929, file: !208, line: 1946, baseType: !961, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!317, !869}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !929, file: !208, line: 1947, baseType: !961, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !929, file: !208, line: 1948, baseType: !961, size: 64, offset: 704)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !929, file: !208, line: 1949, baseType: !961, size: 64, offset: 768)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !929, file: !208, line: 1950, baseType: !968, size: 64, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!317, !657, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !929, file: !208, line: 1951, baseType: !974, size: 64, offset: 896)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!317, !869, !977, !751}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !929, file: !208, line: 1952, baseType: !899, size: 64, offset: 960)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !929, file: !208, line: 1954, baseType: !980, size: 64, offset: 1024)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!317, !983, !657}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !605, line: 539, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !929, file: !208, line: 1955, baseType: !980, size: 64, offset: 1088)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !929, file: !208, line: 1956, baseType: !980, size: 64, offset: 1152)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !929, file: !208, line: 1957, baseType: !980, size: 64, offset: 1216)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !929, file: !208, line: 1963, baseType: !989, size: 64, offset: 1280)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!317, !869, !992, !292}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !587, line: 68, size: 512, align: 128, elements: !994)
!994 = !{!995, !996, !1239, !1246}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !993, file: !587, line: 69, baseType: !398, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !587, line: 77, baseType: !997, size: 320, offset: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !587, line: 77, size: 320, elements: !998)
!998 = !{!999, !1171, !1176, !1204, !1212, !1218, !1231, !1238}
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !587, line: 78, baseType: !1000, size: 320)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !587, line: 78, size: 320, elements: !1001)
!1001 = !{!1002, !1003, !1169, !1170}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1000, file: !587, line: 84, baseType: !448, size: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1000, file: !587, line: 86, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1006)
!1006 = !{!1007, !1008, !1022, !1023, !1024, !1025, !1039, !1040, !1041, !1042, !1162, !1163, !1166, !1167, !1168}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1005, file: !208, line: 452, baseType: !691, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1005, file: !208, line: 453, baseType: !1009, size: 128, offset: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1010, line: 292, size: 128, elements: !1011)
!1010 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1011 = !{!1012, !1020, !1021}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1009, file: !1010, line: 293, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !378, line: 83, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !378, line: 71, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !378, line: 72, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !378, line: 72, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1017, file: !378, line: 73, baseType: !379)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1009, file: !1010, line: 295, baseType: !292, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1009, file: !1010, line: 296, baseType: !291, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1005, file: !208, line: 454, baseType: !292, size: 32, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1005, file: !208, line: 455, baseType: !423, size: 32, offset: 224)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1005, file: !208, line: 460, baseType: !387, size: 128, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1005, file: !208, line: 461, baseType: !1026, size: 256, offset: 384)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1027, line: 35, size: 256, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029, !1036, !1037, !1038}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1026, file: !1027, line: 36, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1031, line: 13, baseType: !1032)
!1031 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !293, line: 175, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 173, size: 64, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1033, file: !293, line: 174, baseType: !485, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1026, file: !1027, line: 42, baseType: !1030, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1026, file: !1027, line: 46, baseType: !377, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1026, file: !1027, line: 47, baseType: !448, size: 128, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1005, file: !208, line: 462, baseType: !398, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1005, file: !208, line: 463, baseType: !398, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1005, file: !208, line: 464, baseType: !398, size: 64, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1005, file: !208, line: 465, baseType: !1043, size: 64, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1046)
!1046 = !{!1047, !1051, !1055, !1059, !1063, !1067, !1073, !1079, !1083, !1088, !1092, !1096, !1100, !1126, !1130, !1136, !1137, !1138, !1142, !1147, !1151, !1158}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1045, file: !208, line: 368, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!317, !992, !948}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1045, file: !208, line: 369, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!317, !627, !992}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1045, file: !208, line: 372, baseType: !1056, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!317, !1004, !948}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1045, file: !208, line: 375, baseType: !1060, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!317, !992}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1045, file: !208, line: 381, baseType: !1064, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!317, !627, !1004, !451, !7}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1045, file: !208, line: 383, baseType: !1068, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1045, file: !208, line: 385, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!317, !627, !1004, !797, !7, !7, !1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1045, file: !208, line: 388, baseType: !1080, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!317, !627, !1004, !797, !7, !7, !992, !291}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1045, file: !208, line: 393, baseType: !1084, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1087, !1004, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !293, line: 125, baseType: !455)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1045, file: !208, line: 394, baseType: !1089, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !992, !7, !7}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1045, file: !208, line: 395, baseType: !1093, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!317, !992, !292}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1045, file: !208, line: 396, baseType: !1097, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !992}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1045, file: !208, line: 397, baseType: !1101, size: 64, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!842, !1104, !1124}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1113, !1114, !1115, !1116, !1117}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1105, file: !208, line: 321, baseType: !627, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1105, file: !208, line: 326, baseType: !797, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1105, file: !208, line: 327, baseType: !1110, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !1104, !415, !415}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1105, file: !208, line: 328, baseType: !291, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1105, file: !208, line: 329, baseType: !317, size: 32, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1105, file: !208, line: 330, baseType: !337, size: 16, offset: 288)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1105, file: !208, line: 331, baseType: !337, size: 16, offset: 304)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !208, line: 332, baseType: !1118, size: 64, offset: 320)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1105, file: !208, line: 332, size: 64, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1118, file: !208, line: 333, baseType: !7, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1118, file: !208, line: 334, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1045, file: !208, line: 402, baseType: !1127, size: 64, offset: 832)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!317, !1004, !992, !992, !183}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1045, file: !208, line: 404, baseType: !1131, size: 64, offset: 896)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!756, !992, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1135, line: 305, baseType: !7)
!1135 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1045, file: !208, line: 405, baseType: !1097, size: 64, offset: 960)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1045, file: !208, line: 406, baseType: !1060, size: 64, offset: 1024)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1045, file: !208, line: 407, baseType: !1139, size: 64, offset: 1088)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!317, !992, !398, !398}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1045, file: !208, line: 409, baseType: !1143, size: 64, offset: 1152)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !992, !1146, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1045, file: !208, line: 410, baseType: !1148, size: 64, offset: 1216)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!317, !1004, !992}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1045, file: !208, line: 413, baseType: !1152, size: 64, offset: 1280)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!317, !1155, !627, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1045, file: !208, line: 415, baseType: !1159, size: 64, offset: 1344)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !627}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1005, file: !208, line: 466, baseType: !398, size: 64, offset: 896)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1005, file: !208, line: 467, baseType: !1164, size: 32, offset: 960)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1165, line: 8, baseType: !355)
!1165 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1005, file: !208, line: 468, baseType: !1013, offset: 992)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1005, file: !208, line: 469, baseType: !448, size: 128, offset: 1024)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1005, file: !208, line: 470, baseType: !291, size: 64, offset: 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1000, file: !587, line: 87, baseType: !398, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1000, file: !587, line: 94, baseType: !398, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !587, line: 96, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !587, line: 96, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1172, file: !587, line: 101, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !293, line: 143, baseType: !455)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !587, line: 103, baseType: !1177, size: 320)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !587, line: 103, size: 320, elements: !1178)
!1178 = !{!1179, !1189, !1192, !1193}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !587, line: 104, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !587, line: 104, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1180, file: !587, line: 105, baseType: !448, size: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !587, line: 106, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !587, line: 106, size: 128, elements: !1185)
!1185 = !{!1186, !1187, !1188}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1184, file: !587, line: 107, baseType: !992, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1184, file: !587, line: 109, baseType: !317, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1184, file: !587, line: 110, baseType: !317, size: 32, offset: 96)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1177, file: !587, line: 117, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !587, line: 117, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1177, file: !587, line: 119, baseType: !291, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !587, line: 120, baseType: !1194, size: 64, offset: 256)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !587, line: 120, size: 64, elements: !1195)
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1194, file: !587, line: 121, baseType: !291, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1194, file: !587, line: 122, baseType: !398, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !587, line: 123, baseType: !1199, size: 32)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !587, line: 123, size: 32, elements: !1200)
!1200 = !{!1201, !1202, !1203}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1199, file: !587, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1199, file: !587, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1199, file: !587, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !587, line: 130, baseType: !1205, size: 192)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !587, line: 130, size: 192, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1205, file: !587, line: 131, baseType: !398, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1205, file: !587, line: 134, baseType: !331, size: 8, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1205, file: !587, line: 135, baseType: !331, size: 8, offset: 72)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1205, file: !587, line: 136, baseType: !423, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1205, file: !587, line: 137, baseType: !7, size: 32, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !587, line: 139, baseType: !1213, size: 256)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !587, line: 139, size: 256, elements: !1214)
!1214 = !{!1215, !1216, !1217}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1213, file: !587, line: 140, baseType: !398, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1213, file: !587, line: 141, baseType: !423, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1213, file: !587, line: 143, baseType: !448, size: 128, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !587, line: 145, baseType: !1219, size: 256)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !587, line: 145, size: 256, elements: !1220)
!1220 = !{!1221, !1222, !1224, !1225, !1230}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1219, file: !587, line: 146, baseType: !398, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1219, file: !587, line: 147, baseType: !1223, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !605, line: 509, baseType: !992)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1219, file: !587, line: 148, baseType: !398, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !587, line: 149, baseType: !1226, size: 64, offset: 192)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1219, file: !587, line: 149, size: 64, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1226, file: !587, line: 150, baseType: !585, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1226, file: !587, line: 151, baseType: !423, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1219, file: !587, line: 156, baseType: !1013, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !587, line: 159, baseType: !1232, size: 128)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !587, line: 159, size: 128, elements: !1233)
!1233 = !{!1234, !1237}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1232, file: !587, line: 161, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !587, line: 161, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1232, file: !587, line: 162, baseType: !291, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !997, file: !587, line: 176, baseType: !640, size: 128, align: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !587, line: 179, baseType: !1240, size: 32, offset: 384)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !587, line: 179, size: 32, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1240, file: !587, line: 184, baseType: !423, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1240, file: !587, line: 192, baseType: !7, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1240, file: !587, line: 194, baseType: !7, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1240, file: !587, line: 195, baseType: !317, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !993, file: !587, line: 199, baseType: !423, size: 32, offset: 416)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !929, file: !208, line: 1964, baseType: !1248, size: 64, offset: 1344)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!415, !869, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1253, line: 12, size: 256, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1256, !1257, !1258, !1259}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1252, file: !1253, line: 13, baseType: !292, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1252, file: !1253, line: 16, baseType: !317, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1252, file: !1253, line: 23, baseType: !398, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1252, file: !1253, line: 30, baseType: !398, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1252, file: !1253, line: 33, baseType: !1260, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !587, line: 27, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !929, file: !208, line: 1966, baseType: !1248, size: 64, offset: 1408)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !870, file: !208, line: 1424, baseType: !1264, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !1267)
!1267 = !{!1268, !1320, !1324, !1328, !1329, !1330, !1331, !1332, !1337, !1342, !1346}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1266, file: !202, line: 323, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!317, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1286, !1287, !1288, !1289, !1305, !1306, !1307}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1273, file: !202, line: 295, baseType: !909, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1273, file: !202, line: 296, baseType: !448, size: 128, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1273, file: !202, line: 297, baseType: !448, size: 128, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1273, file: !202, line: 298, baseType: !448, size: 128, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1273, file: !202, line: 299, baseType: !1280, size: 192, offset: 512)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1281, line: 53, size: 192, elements: !1282)
!1281 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1280, file: !1281, line: 54, baseType: !1030, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1280, file: !1281, line: 55, baseType: !1013, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1280, file: !1281, line: 59, baseType: !448, size: 128, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1273, file: !202, line: 300, baseType: !1013, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1273, file: !202, line: 301, baseType: !423, size: 32, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1273, file: !202, line: 302, baseType: !869, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1273, file: !202, line: 303, baseType: !1290, size: 64, offset: 832)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !1291)
!1291 = !{!1292, !1304}
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !202, line: 69, baseType: !1293, size: 32)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1290, file: !202, line: 69, size: 32, elements: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1293, file: !202, line: 70, baseType: !698, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1293, file: !202, line: 71, baseType: !706, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1293, file: !202, line: 72, baseType: !1298, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1299, line: 24, baseType: !1300)
!1299 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1299, line: 22, size: 32, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1300, file: !1299, line: 23, baseType: !1303, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1299, line: 20, baseType: !704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1290, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1273, file: !202, line: 304, baseType: !797, size: 64, offset: 896)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1273, file: !202, line: 305, baseType: !398, size: 64, offset: 960)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1273, file: !202, line: 306, baseType: !1308, size: 576, offset: 1024)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !1309)
!1309 = !{!1310, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1308, file: !202, line: 206, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !487)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1308, file: !202, line: 207, baseType: !1311, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1308, file: !202, line: 208, baseType: !1311, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1308, file: !202, line: 209, baseType: !1311, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1308, file: !202, line: 210, baseType: !1311, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1308, file: !202, line: 211, baseType: !1311, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1308, file: !202, line: 212, baseType: !1311, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1308, file: !202, line: 213, baseType: !804, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1308, file: !202, line: 214, baseType: !804, size: 64, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1266, file: !202, line: 324, baseType: !1321, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1272, !869, !317}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1266, file: !202, line: 325, baseType: !1325, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !1272}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1266, file: !202, line: 326, baseType: !1269, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1266, file: !202, line: 327, baseType: !1269, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1266, file: !202, line: 328, baseType: !1269, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1266, file: !202, line: 329, baseType: !957, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1266, file: !202, line: 332, baseType: !1333, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1336, !691}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1266, file: !202, line: 333, baseType: !1338, size: 64, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!317, !691, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1266, file: !202, line: 335, baseType: !1343, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!317, !691, !1336}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1266, file: !202, line: 337, baseType: !1347, size: 64, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!317, !869, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !870, file: !208, line: 1425, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !1355)
!1355 = !{!1356, !1360, !1361, !1365, !1366, !1367, !1382, !1405, !1409, !1410, !1433}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1354, file: !202, line: 429, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!317, !869, !317, !317, !813}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1354, file: !202, line: 430, baseType: !957, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1354, file: !202, line: 431, baseType: !1362, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!317, !869, !7}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1354, file: !202, line: 432, baseType: !1362, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1354, file: !202, line: 433, baseType: !957, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1354, file: !202, line: 434, baseType: !1368, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!317, !869, !317, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1372, file: !202, line: 416, baseType: !317, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1372, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1372, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1372, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1372, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1372, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1372, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1372, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1354, file: !202, line: 435, baseType: !1383, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!317, !869, !1290, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1387, file: !202, line: 344, baseType: !317, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1387, file: !202, line: 345, baseType: !455, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1387, file: !202, line: 346, baseType: !455, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1387, file: !202, line: 347, baseType: !455, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1387, file: !202, line: 348, baseType: !455, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1387, file: !202, line: 349, baseType: !455, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1387, file: !202, line: 350, baseType: !455, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1387, file: !202, line: 351, baseType: !485, size: 64, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1387, file: !202, line: 353, baseType: !485, size: 64, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1387, file: !202, line: 354, baseType: !317, size: 32, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1387, file: !202, line: 355, baseType: !317, size: 32, offset: 608)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1387, file: !202, line: 356, baseType: !455, size: 64, offset: 640)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1387, file: !202, line: 357, baseType: !455, size: 64, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1387, file: !202, line: 358, baseType: !455, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1387, file: !202, line: 359, baseType: !485, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1387, file: !202, line: 360, baseType: !317, size: 32, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1354, file: !202, line: 436, baseType: !1406, size: 64, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!317, !869, !1350, !1386}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1354, file: !202, line: 438, baseType: !1383, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1354, file: !202, line: 439, baseType: !1411, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!317, !869, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1415, file: !202, line: 410, baseType: !7, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1415, file: !202, line: 411, baseType: !1419, size: 1344, offset: 64)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 1344, elements: !921)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1432}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !202, line: 396, baseType: !7, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1420, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1420, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1420, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1420, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1420, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1420, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1420, file: !202, line: 404, baseType: !457, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1420, file: !202, line: 405, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !293, line: 126, baseType: !455)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1420, file: !202, line: 406, baseType: !1431, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1354, file: !202, line: 440, baseType: !1362, size: 64, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !870, file: !208, line: 1426, baseType: !1435, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !870, file: !208, line: 1427, baseType: !398, size: 64, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !870, file: !208, line: 1428, baseType: !398, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !870, file: !208, line: 1429, baseType: !398, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !870, file: !208, line: 1430, baseType: !657, size: 64, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !870, file: !208, line: 1431, baseType: !1026, size: 256, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !870, file: !208, line: 1432, baseType: !317, size: 32, offset: 1152)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !870, file: !208, line: 1433, baseType: !423, size: 32, offset: 1184)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !870, file: !208, line: 1437, baseType: !1446, size: 64, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !870, file: !208, line: 1449, baseType: !1451, size: 64, offset: 1280)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !668, line: 34, size: 64, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1451, file: !668, line: 35, baseType: !671, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !870, file: !208, line: 1450, baseType: !448, size: 128, offset: 1344)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !870, file: !208, line: 1451, baseType: !1456, size: 64, offset: 1472)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !870, file: !208, line: 1452, baseType: !1459, size: 64, offset: 1536)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !405, line: 40, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !870, file: !208, line: 1453, baseType: !1462, size: 64, offset: 1600)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !870, file: !208, line: 1454, baseType: !909, size: 128, offset: 1664)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !870, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !870, file: !208, line: 1456, baseType: !1467, size: 2432, offset: 1856)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1473, !1505}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1467, file: !202, line: 519, baseType: !7, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1467, file: !202, line: 520, baseType: !1026, size: 256, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1467, file: !202, line: 521, baseType: !1472, size: 192, offset: 320)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 192, elements: !921)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1467, file: !202, line: 522, baseType: !1474, size: 1728, offset: 512)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1475, size: 1728, elements: !921)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !1476)
!1476 = !{!1477, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1475, file: !202, line: 223, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !1480)
!1480 = !{!1481, !1482, !1495, !1496}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1479, file: !202, line: 444, baseType: !317, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1479, file: !202, line: 445, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1485, file: !202, line: 311, baseType: !957, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1485, file: !202, line: 312, baseType: !957, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1485, file: !202, line: 313, baseType: !957, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1485, file: !202, line: 314, baseType: !957, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1485, file: !202, line: 315, baseType: !1269, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1485, file: !202, line: 316, baseType: !1269, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1485, file: !202, line: 317, baseType: !1269, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1485, file: !202, line: 318, baseType: !1347, size: 64, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1479, file: !202, line: 446, baseType: !304, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1479, file: !202, line: 447, baseType: !1478, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1475, file: !202, line: 224, baseType: !317, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1475, file: !202, line: 226, baseType: !448, size: 128, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1475, file: !202, line: 227, baseType: !398, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1475, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1475, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1475, file: !202, line: 230, baseType: !1311, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1475, file: !202, line: 231, baseType: !1311, size: 64, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1475, file: !202, line: 232, baseType: !291, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1467, file: !202, line: 523, baseType: !1506, size: 192, offset: 2240)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1483, size: 192, elements: !921)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !870, file: !208, line: 1458, baseType: !1508, size: 2112, offset: 4288)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !1509)
!1509 = !{!1510, !1511, !1518}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1508, file: !208, line: 1411, baseType: !317, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1508, file: !208, line: 1412, baseType: !1512, size: 128, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1513, line: 40, baseType: !1514)
!1513 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1513, line: 36, size: 128, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1513, line: 37, baseType: !1013)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1514, file: !1513, line: 38, baseType: !448, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1508, file: !208, line: 1413, baseType: !1519, size: 1920, offset: 192)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, size: 1920, elements: !921)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1521, line: 12, size: 640, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1531, !1533, !1538, !1539}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1520, file: !1521, line: 13, baseType: !1524, size: 320)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1525, line: 17, size: 320, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1526 = !{!1527, !1528, !1529, !1530}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1524, file: !1525, line: 18, baseType: !317, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1524, file: !1525, line: 19, baseType: !317, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1524, file: !1525, line: 20, baseType: !1512, size: 128, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1524, file: !1525, line: 22, baseType: !640, size: 128, align: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1520, file: !1521, line: 14, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1520, file: !1521, line: 15, baseType: !1534, size: 64, offset: 384)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1535, line: 16, size: 64, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1534, file: !1535, line: 17, baseType: !403, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1520, file: !1521, line: 16, baseType: !1512, size: 128, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1520, file: !1521, line: 17, baseType: !423, size: 32, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !870, file: !208, line: 1465, baseType: !291, size: 64, offset: 6400)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !870, file: !208, line: 1468, baseType: !355, size: 32, offset: 6464)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !870, file: !208, line: 1470, baseType: !804, size: 64, offset: 6528)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !870, file: !208, line: 1471, baseType: !804, size: 64, offset: 6592)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !870, file: !208, line: 1473, baseType: !356, size: 32, offset: 6656)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !870, file: !208, line: 1474, baseType: !1546, size: 64, offset: 6720)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !870, file: !208, line: 1477, baseType: !1549, size: 256, offset: 6784)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !870, file: !208, line: 1478, baseType: !1553, size: 128, offset: 7040)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1554, line: 18, baseType: !1555)
!1554 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1554, line: 16, size: 128, elements: !1556)
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1555, file: !1554, line: 17, baseType: !1558, size: 128)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 128, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 16)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !870, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !870, file: !208, line: 1481, baseType: !1563, size: 32, offset: 7200)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !293, line: 150, baseType: !7)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !870, file: !208, line: 1487, baseType: !1280, size: 192, offset: 7232)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !870, file: !208, line: 1493, baseType: !726, size: 64, offset: 7424)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !870, file: !208, line: 1495, baseType: !1567, size: 64, offset: 7488)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !655, line: 135, size: 1024, align: 512, elements: !1570)
!1570 = !{!1571, !1575, !1576, !1583, !1589, !1593, !1597, !1601, !1602, !1606, !1610, !1615, !1619}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1569, file: !655, line: 136, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!317, !657, !7}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1569, file: !655, line: 137, baseType: !1572, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1569, file: !655, line: 138, baseType: !1577, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!317, !1580, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1569, file: !655, line: 139, baseType: !1584, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!317, !1580, !7, !726, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1569, file: !655, line: 141, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!317, !1580}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1569, file: !655, line: 142, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!317, !657}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1569, file: !655, line: 143, baseType: !1598, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !657}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1569, file: !655, line: 144, baseType: !1598, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1569, file: !655, line: 145, baseType: !1603, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !657, !691}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1569, file: !655, line: 146, baseType: !1607, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!751, !657, !751, !317}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1569, file: !655, line: 147, baseType: !1611, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!653, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1569, file: !655, line: 148, baseType: !1616, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!317, !813, !756}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1569, file: !655, line: 149, baseType: !1620, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!657, !657, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !870, file: !208, line: 1500, baseType: !317, size: 32, offset: 7552)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !870, file: !208, line: 1502, baseType: !1627, size: 448, offset: 7616)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1253, line: 60, size: 448, elements: !1628)
!1628 = !{!1629, !1634, !1635, !1636, !1637, !1638, !1639}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1627, file: !1253, line: 61, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!398, !1633, !1251}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1627, file: !1253, line: 63, baseType: !1630, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1627, file: !1253, line: 66, baseType: !415, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1627, file: !1253, line: 67, baseType: !317, size: 32, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1627, file: !1253, line: 68, baseType: !7, size: 32, offset: 224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1627, file: !1253, line: 71, baseType: !448, size: 128, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1627, file: !1253, line: 77, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !870, file: !208, line: 1505, baseType: !1030, size: 64, offset: 8064)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !870, file: !208, line: 1508, baseType: !1030, size: 64, offset: 8128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !870, file: !208, line: 1511, baseType: !317, size: 32, offset: 8192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !870, file: !208, line: 1514, baseType: !1164, size: 32, offset: 8224)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !870, file: !208, line: 1517, baseType: !1646, size: 64, offset: 8256)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1648, line: 18, flags: DIFlagFwdDecl)
!1648 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !870, file: !208, line: 1518, baseType: !905, size: 64, offset: 8320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !870, file: !208, line: 1525, baseType: !1651, size: 64, offset: 8384)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !587, line: 516, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !870, file: !208, line: 1532, baseType: !1654, size: 64, offset: 8448)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1655, line: 52, size: 64, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1654, file: !1655, line: 53, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1655, line: 40, size: 256, elements: !1660)
!1660 = !{!1661, !1662, !1667}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1659, file: !1655, line: 42, baseType: !1013)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1659, file: !1655, line: 44, baseType: !1663, size: 192)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1655, line: 28, size: 192, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1663, file: !1655, line: 29, baseType: !448, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1663, file: !1655, line: 31, baseType: !415, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1659, file: !1655, line: 49, baseType: !415, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !870, file: !208, line: 1533, baseType: !1654, size: 64, offset: 8512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !870, file: !208, line: 1534, baseType: !640, size: 128, align: 64, offset: 8576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !870, file: !208, line: 1535, baseType: !1671, size: 256, offset: 8704)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1648, line: 102, size: 256, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1671, file: !1648, line: 103, baseType: !1030, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1671, file: !1648, line: 104, baseType: !448, size: 128, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1671, file: !1648, line: 105, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1648, line: 21, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !870, file: !208, line: 1537, baseType: !1280, size: 192, offset: 8960)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !870, file: !208, line: 1542, baseType: !317, size: 32, offset: 9152)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !870, file: !208, line: 1545, baseType: !1013, offset: 9184)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !870, file: !208, line: 1546, baseType: !448, size: 128, offset: 9216)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !870, file: !208, line: 1548, baseType: !1013, offset: 9344)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !870, file: !208, line: 1549, baseType: !448, size: 128, offset: 9344)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !692, file: !208, line: 624, baseType: !1004, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !692, file: !208, line: 631, baseType: !398, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !208, line: 639, baseType: !1690, size: 32, offset: 384)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !208, line: 639, size: 32, elements: !1691)
!1691 = !{!1692, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1690, file: !208, line: 640, baseType: !1693, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1690, file: !208, line: 641, baseType: !7, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !692, file: !208, line: 643, baseType: !779, size: 32, offset: 416)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !692, file: !208, line: 644, baseType: !797, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !692, file: !208, line: 645, baseType: !800, size: 128, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !692, file: !208, line: 646, baseType: !800, size: 128, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !692, file: !208, line: 647, baseType: !800, size: 128, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !692, file: !208, line: 648, baseType: !1013, offset: 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !692, file: !208, line: 649, baseType: !325, size: 16, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !692, file: !208, line: 650, baseType: !340, size: 8, offset: 912)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !692, file: !208, line: 651, baseType: !340, size: 8, offset: 920)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !692, file: !208, line: 652, baseType: !1431, size: 64, offset: 960)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !692, file: !208, line: 659, baseType: !398, size: 64, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !692, file: !208, line: 660, baseType: !1026, size: 256, offset: 1088)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !692, file: !208, line: 662, baseType: !398, size: 64, offset: 1344)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !692, file: !208, line: 663, baseType: !398, size: 64, offset: 1408)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !692, file: !208, line: 665, baseType: !909, size: 128, offset: 1472)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !692, file: !208, line: 666, baseType: !448, size: 128, offset: 1600)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !692, file: !208, line: 675, baseType: !448, size: 128, offset: 1728)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !692, file: !208, line: 676, baseType: !448, size: 128, offset: 1856)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !692, file: !208, line: 677, baseType: !448, size: 128, offset: 1984)
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !208, line: 678, baseType: !1715, size: 128, offset: 2112)
!1715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !208, line: 678, size: 128, elements: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1715, file: !208, line: 679, baseType: !905, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1715, file: !208, line: 680, baseType: !640, size: 128, align: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !692, file: !208, line: 682, baseType: !1032, size: 64, offset: 2240)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !692, file: !208, line: 683, baseType: !1032, size: 64, offset: 2304)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !692, file: !208, line: 684, baseType: !423, size: 32, offset: 2368)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !692, file: !208, line: 685, baseType: !423, size: 32, offset: 2400)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !692, file: !208, line: 686, baseType: !423, size: 32, offset: 2432)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !692, file: !208, line: 688, baseType: !423, size: 32, offset: 2464)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !208, line: 690, baseType: !1726, size: 64, offset: 2496)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !208, line: 690, size: 64, elements: !1727)
!1727 = !{!1728, !1965}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1726, file: !208, line: 691, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !1732)
!1732 = !{!1733, !1734, !1738, !1743, !1747, !1748, !1749, !1753, !1766, !1767, !1784, !1788, !1789, !1793, !1794, !1798, !1803, !1804, !1808, !1812, !1920, !1924, !1928, !1932, !1933, !1939, !1943, !1948, !1952, !1956, !1960, !1964}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1731, file: !208, line: 1823, baseType: !304, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1731, file: !208, line: 1824, baseType: !1735, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!797, !627, !797, !317}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1731, file: !208, line: 1825, baseType: !1739, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!842, !627, !751, !845, !1742}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1731, file: !208, line: 1826, baseType: !1744, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!842, !627, !726, !845, !1742}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1731, file: !208, line: 1827, baseType: !1101, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1731, file: !208, line: 1828, baseType: !1101, size: 64, offset: 320)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1731, file: !208, line: 1829, baseType: !1750, size: 64, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!317, !1104, !756}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1731, file: !208, line: 1830, baseType: !1754, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!317, !627, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !1759)
!1759 = !{!1760, !1765}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1758, file: !208, line: 1777, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!317, !1757, !726, !317, !797, !455, !7}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1758, file: !208, line: 1778, baseType: !797, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1731, file: !208, line: 1831, baseType: !1754, size: 64, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1731, file: !208, line: 1832, baseType: !1768, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1771, !627, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1772, line: 52, baseType: !7)
!1772 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1775, line: 43, size: 128, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1776 = !{!1777, !1783}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1774, file: !1775, line: 44, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1775, line: 37, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !627, !1782, !1773}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1774, file: !1775, line: 45, baseType: !1771, size: 32, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1731, file: !208, line: 1833, baseType: !1785, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!415, !627, !7, !398}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1731, file: !208, line: 1834, baseType: !1785, size: 64, offset: 704)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1731, file: !208, line: 1835, baseType: !1790, size: 64, offset: 768)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!317, !627, !593}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1731, file: !208, line: 1836, baseType: !398, size: 64, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1731, file: !208, line: 1837, baseType: !1795, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!317, !691, !627}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1731, file: !208, line: 1838, baseType: !1799, size: 64, offset: 960)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!317, !627, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !291)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1731, file: !208, line: 1839, baseType: !1795, size: 64, offset: 1024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1731, file: !208, line: 1840, baseType: !1805, size: 64, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!317, !627, !797, !797, !317}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1731, file: !208, line: 1841, baseType: !1809, size: 64, offset: 1152)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!317, !317, !627, !317}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !208, line: 1842, baseType: !1813, size: 64, offset: 1216)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!317, !627, !317, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1850, !1851, !1852, !1865, !1896}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1817, file: !208, line: 1063, baseType: !1816, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1817, file: !208, line: 1064, baseType: !448, size: 128, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1817, file: !208, line: 1065, baseType: !909, size: 128, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1817, file: !208, line: 1066, baseType: !448, size: 128, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1817, file: !208, line: 1069, baseType: !448, size: 128, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1817, file: !208, line: 1072, baseType: !1802, size: 64, offset: 576)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1817, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1817, file: !208, line: 1074, baseType: !331, size: 8, offset: 672)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1817, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1817, file: !208, line: 1076, baseType: !317, size: 32, offset: 736)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1817, file: !208, line: 1077, baseType: !1512, size: 128, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1817, file: !208, line: 1078, baseType: !627, size: 64, offset: 896)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1817, file: !208, line: 1079, baseType: !797, size: 64, offset: 960)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1817, file: !208, line: 1080, baseType: !797, size: 64, offset: 1024)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1817, file: !208, line: 1082, baseType: !1834, size: 64, offset: 1088)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !1836)
!1836 = !{!1837, !1845, !1846, !1847, !1848, !1849}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1835, file: !208, line: 1315, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1839, line: 20, baseType: !1840)
!1839 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1839, line: 11, elements: !1841)
!1841 = !{!1842}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1840, file: !1839, line: 12, baseType: !1843)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !383, line: 33, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 31, elements: !385)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1835, file: !208, line: 1316, baseType: !317, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1835, file: !208, line: 1317, baseType: !317, size: 32, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1835, file: !208, line: 1318, baseType: !1834, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1835, file: !208, line: 1319, baseType: !627, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1835, file: !208, line: 1320, baseType: !640, size: 128, align: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1817, file: !208, line: 1084, baseType: !398, size: 64, offset: 1152)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1817, file: !208, line: 1085, baseType: !398, size: 64, offset: 1216)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1817, file: !208, line: 1087, baseType: !1853, size: 64, offset: 1280)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !1856)
!1856 = !{!1857, !1861}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1855, file: !208, line: 1012, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1816, !1816}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1855, file: !208, line: 1013, baseType: !1862, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1816}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1817, file: !208, line: 1088, baseType: !1866, size: 64, offset: 1344)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !1869)
!1869 = !{!1870, !1874, !1878, !1879, !1883, !1887, !1891, !1895}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1868, file: !208, line: 1017, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1802, !1802}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1868, file: !208, line: 1018, baseType: !1875, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1802}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1868, file: !208, line: 1019, baseType: !1862, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1868, file: !208, line: 1020, baseType: !1880, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!317, !1816, !317}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1868, file: !208, line: 1021, baseType: !1884, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!756, !1816}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1868, file: !208, line: 1022, baseType: !1888, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!317, !1816, !317, !451}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1868, file: !208, line: 1023, baseType: !1892, size: 64, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1816, !1078}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1868, file: !208, line: 1024, baseType: !1884, size: 64, offset: 448)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1817, file: !208, line: 1097, baseType: !1897, size: 256, offset: 1408)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1817, file: !208, line: 1089, size: 256, elements: !1898)
!1898 = !{!1899, !1908, !1914}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1897, file: !208, line: 1090, baseType: !1900, size: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1901, line: 10, size: 256, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1904, !1907}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1900, file: !1901, line: 11, baseType: !355, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1900, file: !1901, line: 12, baseType: !1905, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1901, line: 5, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1900, file: !1901, line: 13, baseType: !448, size: 128, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1897, file: !208, line: 1091, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1901, line: 17, size: 64, elements: !1910)
!1910 = !{!1911}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1909, file: !1901, line: 18, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1901, line: 16, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1897, file: !208, line: 1096, baseType: !1915, size: 192)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1897, file: !208, line: 1092, size: 192, elements: !1916)
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1915, file: !208, line: 1093, baseType: !448, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1915, file: !208, line: 1094, baseType: !317, size: 32, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1915, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1731, file: !208, line: 1843, baseType: !1921, size: 64, offset: 1280)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!842, !627, !992, !317, !845, !1742, !317}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1731, file: !208, line: 1844, baseType: !1925, size: 64, offset: 1344)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!398, !627, !398, !398, !398, !398}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1731, file: !208, line: 1845, baseType: !1929, size: 64, offset: 1408)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!317, !317}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1731, file: !208, line: 1846, baseType: !1813, size: 64, offset: 1472)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1731, file: !208, line: 1847, baseType: !1934, size: 64, offset: 1536)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!842, !1937, !627, !1742, !845, !7}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !405, line: 53, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1731, file: !208, line: 1848, baseType: !1940, size: 64, offset: 1600)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!842, !627, !1742, !1937, !845, !7}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1731, file: !208, line: 1849, baseType: !1944, size: 64, offset: 1664)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!317, !627, !415, !1947, !1078}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1731, file: !208, line: 1850, baseType: !1949, size: 64, offset: 1728)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!415, !627, !317, !797, !797}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1731, file: !208, line: 1852, baseType: !1953, size: 64, offset: 1792)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !983, !627}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1731, file: !208, line: 1856, baseType: !1957, size: 64, offset: 1856)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!842, !627, !797, !627, !797, !845, !7}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1731, file: !208, line: 1858, baseType: !1961, size: 64, offset: 1920)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!797, !627, !797, !627, !797, !797, !7}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1731, file: !208, line: 1861, baseType: !1805, size: 64, offset: 1984)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1726, file: !208, line: 692, baseType: !936, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !692, file: !208, line: 694, baseType: !1967, size: 64, offset: 2560)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !1969)
!1969 = !{!1970, !1971, !1972, !1973}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1968, file: !208, line: 1101, baseType: !1013)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1968, file: !208, line: 1102, baseType: !448, size: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1968, file: !208, line: 1103, baseType: !448, size: 128, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1968, file: !208, line: 1104, baseType: !448, size: 128, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !692, file: !208, line: 695, baseType: !1005, size: 1216, align: 64, offset: 2624)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !692, file: !208, line: 696, baseType: !448, size: 128, offset: 3840)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !208, line: 697, baseType: !1977, size: 64, offset: 3968)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !208, line: 697, size: 64, elements: !1978)
!1978 = !{!1979, !1980, !1981, !2292, !2293}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1977, file: !208, line: 698, baseType: !1937, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1977, file: !208, line: 699, baseType: !1456, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1977, file: !208, line: 700, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1984, line: 14, size: 832, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1985 = !{!1986, !2287, !2288, !2289, !2290, !2291}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1983, file: !1984, line: 15, baseType: !1987, size: 512)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1988, line: 64, size: 512, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1989 = !{!1990, !1991, !1992, !1994, !2036, !2138, !2277, !2282, !2283, !2284, !2285, !2286}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1987, file: !1988, line: 65, baseType: !726, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1987, file: !1988, line: 66, baseType: !448, size: 128, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1987, file: !1988, line: 67, baseType: !1993, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1987, file: !1988, line: 68, baseType: !1995, size: 64, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1988, line: 192, size: 704, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1996, file: !1988, line: 193, baseType: !448, size: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1996, file: !1988, line: 194, baseType: !1013, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1996, file: !1988, line: 195, baseType: !1987, size: 512, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1996, file: !1988, line: 196, baseType: !2002, size: 64, offset: 640)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1988, line: 156, size: 192, elements: !2005)
!2005 = !{!2006, !2011, !2016}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2004, file: !1988, line: 157, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!317, !1995, !1993}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !1988, line: 158, baseType: !2012, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!726, !1995, !1993}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2004, file: !1988, line: 159, baseType: !2017, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!317, !1995, !1993, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1988, line: 148, size: 20736, elements: !2023)
!2023 = !{!2024, !2026, !2030, !2031, !2035}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2022, file: !1988, line: 149, baseType: !2025, size: 192)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 192, elements: !921)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2022, file: !1988, line: 150, baseType: !2027, size: 4096, offset: 192)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 4096, elements: !2028)
!2028 = !{!2029}
!2029 = !DISubrange(count: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2022, file: !1988, line: 151, baseType: !317, size: 32, offset: 4288)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2022, file: !1988, line: 152, baseType: !2032, size: 16384, offset: 4320)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 16384, elements: !2033)
!2033 = !{!2034}
!2034 = !DISubrange(count: 2048)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2022, file: !1988, line: 153, baseType: !317, size: 32, offset: 20704)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1987, file: !1988, line: 69, baseType: !2037, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1988, line: 138, size: 448, elements: !2039)
!2039 = !{!2040, !2044, !2063, !2065, !2098, !2128, !2132}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2038, file: !1988, line: 139, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !1993}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2038, file: !1988, line: 140, baseType: !2045, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2048, line: 230, size: 128, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2049 = !{!2050, !2059}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2047, file: !2048, line: 231, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!842, !1993, !2054, !751}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2048, line: 30, size: 128, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2055, file: !2048, line: 31, baseType: !726, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2055, file: !2048, line: 32, baseType: !695, size: 16, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2047, file: !2048, line: 232, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!842, !1993, !2054, !726, !845}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2038, file: !1988, line: 141, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2038, file: !1988, line: 142, baseType: !2066, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2048, line: 84, size: 320, elements: !2070)
!2070 = !{!2071, !2072, !2076, !2095, !2096}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2069, file: !2048, line: 85, baseType: !726, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2069, file: !2048, line: 86, baseType: !2073, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!695, !1993, !2054, !317}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2069, file: !2048, line: 88, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!695, !1993, !2080, !317}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2048, line: 168, size: 448, elements: !2082)
!2082 = !{!2083, !2084, !2085, !2086, !2090, !2091}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2081, file: !2048, line: 169, baseType: !2055, size: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2081, file: !2048, line: 170, baseType: !845, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2081, file: !2048, line: 171, baseType: !291, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2081, file: !2048, line: 172, baseType: !2087, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!842, !627, !1993, !2080, !751, !797, !845}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2081, file: !2048, line: 174, baseType: !2087, size: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2081, file: !2048, line: 176, baseType: !2092, size: 64, offset: 384)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!317, !627, !1993, !2080, !593}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2069, file: !2048, line: 90, baseType: !2064, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2069, file: !2048, line: 91, baseType: !2097, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2038, file: !1988, line: 143, baseType: !2099, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2102, !1993}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !2105)
!2105 = !{!2106, !2107, !2111, !2115, !2123, !2127}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2104, file: !225, line: 40, baseType: !224, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2104, file: !225, line: 41, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!756}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2104, file: !225, line: 42, baseType: !2112, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!291}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2104, file: !225, line: 43, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2119, !2121}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2104, file: !225, line: 44, baseType: !2124, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!2119}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2104, file: !225, line: 45, baseType: !733, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2038, file: !1988, line: 144, baseType: !2129, size: 64, offset: 320)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!2119, !1993}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2038, file: !1988, line: 145, baseType: !2133, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !1993, !2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1987, file: !1988, line: 70, baseType: !2139, size: 64, offset: 384)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !889, line: 123, size: 1024, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2270, !2271, !2272, !2273, !2274}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2140, file: !889, line: 124, baseType: !423, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2140, file: !889, line: 125, baseType: !423, size: 32, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2140, file: !889, line: 135, baseType: !2139, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2140, file: !889, line: 136, baseType: !726, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2140, file: !889, line: 138, baseType: !395, size: 192, align: 64, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2140, file: !889, line: 140, baseType: !2119, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2140, file: !889, line: 141, baseType: !7, size: 32, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !889, line: 142, baseType: !2150, size: 256, offset: 512)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !889, line: 142, size: 256, elements: !2151)
!2151 = !{!2152, !2198, !2202}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2150, file: !889, line: 143, baseType: !2153, size: 192)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !889, line: 91, size: 192, elements: !2154)
!2154 = !{!2155, !2156, !2157}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2153, file: !889, line: 92, baseType: !398, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2153, file: !889, line: 94, baseType: !391, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2153, file: !889, line: 100, baseType: !2158, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !889, line: 180, size: 704, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2170, !2171, !2172, !2196, !2197}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2159, file: !889, line: 182, baseType: !2139, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2159, file: !889, line: 183, baseType: !7, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2159, file: !889, line: 186, baseType: !2164, size: 192, offset: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2165, line: 19, size: 192, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2168, !2169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2164, file: !2165, line: 20, baseType: !1009, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2164, file: !2165, line: 21, baseType: !7, size: 32, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2164, file: !2165, line: 22, baseType: !7, size: 32, offset: 160)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2159, file: !889, line: 187, baseType: !355, size: 32, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2159, file: !889, line: 188, baseType: !355, size: 32, offset: 352)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2159, file: !889, line: 189, baseType: !2173, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !889, line: 168, size: 320, elements: !2175)
!2175 = !{!2176, !2180, !2184, !2188, !2192}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2174, file: !889, line: 169, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!317, !983, !2158}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2174, file: !889, line: 171, baseType: !2181, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!317, !2139, !726, !695}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2174, file: !889, line: 173, baseType: !2185, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!317, !2139}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2174, file: !889, line: 174, baseType: !2189, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!317, !2139, !2139, !726}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2174, file: !889, line: 176, baseType: !2193, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!317, !983, !2139, !2158}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2159, file: !889, line: 192, baseType: !448, size: 128, offset: 448)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2159, file: !889, line: 194, baseType: !1512, size: 128, offset: 576)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2150, file: !889, line: 144, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !889, line: 103, size: 64, elements: !2200)
!2200 = !{!2201}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2199, file: !889, line: 104, baseType: !2139, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2150, file: !889, line: 145, baseType: !2203, size: 256)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !889, line: 107, size: 256, elements: !2204)
!2204 = !{!2205, !2265, !2268, !2269}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2203, file: !889, line: 108, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !889, line: 217, size: 768, elements: !2209)
!2209 = !{!2210, !2230, !2234, !2238, !2242, !2246, !2250, !2254, !2255, !2256, !2257, !2261}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2208, file: !889, line: 222, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!317, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !889, line: 197, size: 1088, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2215, file: !889, line: 199, baseType: !2139, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2215, file: !889, line: 200, baseType: !627, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2215, file: !889, line: 201, baseType: !983, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2215, file: !889, line: 202, baseType: !291, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2215, file: !889, line: 205, baseType: !1280, size: 192, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2215, file: !889, line: 206, baseType: !1280, size: 192, offset: 448)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2215, file: !889, line: 207, baseType: !317, size: 32, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2215, file: !889, line: 208, baseType: !448, size: 128, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2215, file: !889, line: 209, baseType: !751, size: 64, offset: 832)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2215, file: !889, line: 211, baseType: !845, size: 64, offset: 896)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2215, file: !889, line: 212, baseType: !756, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2215, file: !889, line: 213, baseType: !756, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2215, file: !889, line: 214, baseType: !622, size: 64, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2208, file: !889, line: 223, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !2214}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2208, file: !889, line: 236, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!317, !983, !291}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2208, file: !889, line: 238, baseType: !2239, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!291, !983, !1742}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2208, file: !889, line: 239, baseType: !2243, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!291, !983, !291, !1742}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2208, file: !889, line: 240, baseType: !2247, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !983, !291}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2208, file: !889, line: 242, baseType: !2251, size: 64, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!842, !2214, !751, !845, !797}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2208, file: !889, line: 252, baseType: !845, size: 64, offset: 448)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2208, file: !889, line: 259, baseType: !756, size: 8, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2208, file: !889, line: 260, baseType: !2251, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2208, file: !889, line: 263, baseType: !2258, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!1771, !2214, !1773}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2208, file: !889, line: 266, baseType: !2262, size: 64, offset: 704)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!317, !2214, !593}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2203, file: !889, line: 109, baseType: !2266, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !889, line: 31, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2203, file: !889, line: 110, baseType: !797, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2203, file: !889, line: 111, baseType: !2139, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2140, file: !889, line: 148, baseType: !291, size: 64, offset: 768)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2140, file: !889, line: 154, baseType: !455, size: 64, offset: 832)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2140, file: !889, line: 156, baseType: !325, size: 16, offset: 896)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2140, file: !889, line: 157, baseType: !695, size: 16, offset: 912)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2140, file: !889, line: 158, baseType: !2275, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !889, line: 32, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1987, file: !1988, line: 71, baseType: !2278, size: 32, offset: 448)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2279, line: 19, size: 32, elements: !2280)
!2279 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2278, file: !2279, line: 20, baseType: !418, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1987, file: !1988, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1987, file: !1988, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1987, file: !1988, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1987, file: !1988, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1987, file: !1988, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1983, file: !1984, line: 16, baseType: !304, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1983, file: !1984, line: 17, baseType: !1729, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1983, file: !1984, line: 18, baseType: !448, size: 128, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1983, file: !1984, line: 19, baseType: !779, size: 32, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1983, file: !1984, line: 20, baseType: !7, size: 32, offset: 800)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1977, file: !208, line: 701, baseType: !751, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1977, file: !208, line: 702, baseType: !7, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !692, file: !208, line: 705, baseType: !356, size: 32, offset: 4032)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !692, file: !208, line: 708, baseType: !356, size: 32, offset: 4064)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !692, file: !208, line: 709, baseType: !1546, size: 64, offset: 4096)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !692, file: !208, line: 720, baseType: !291, size: 64, offset: 4160)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !658, file: !655, line: 98, baseType: !2299, size: 256, offset: 448)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 256, elements: !1550)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !658, file: !655, line: 101, baseType: !2301, size: 32, offset: 704)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2302, line: 25, size: 32, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2301, file: !2302, line: 26, baseType: !2305, size: 32)
!2305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2301, file: !2302, line: 26, size: 32, elements: !2306)
!2306 = !{!2307}
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !2302, line: 30, baseType: !2308, size: 32)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2305, file: !2302, line: 30, size: 32, elements: !2309)
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2308, file: !2302, line: 31, baseType: !1013)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2308, file: !2302, line: 32, baseType: !317, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !658, file: !655, line: 102, baseType: !1567, size: 64, offset: 768)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !658, file: !655, line: 103, baseType: !869, size: 64, offset: 832)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !658, file: !655, line: 104, baseType: !398, size: 64, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !658, file: !655, line: 105, baseType: !291, size: 64, offset: 960)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !655, line: 107, baseType: !2317, size: 128, offset: 1024)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !655, line: 107, size: 128, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2317, file: !655, line: 108, baseType: !448, size: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2317, file: !655, line: 109, baseType: !1782, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !658, file: !655, line: 111, baseType: !448, size: 128, offset: 1152)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !658, file: !655, line: 112, baseType: !448, size: 128, offset: 1280)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !658, file: !655, line: 120, baseType: !2324, size: 128, offset: 1408)
!2324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !655, line: 116, size: 128, elements: !2325)
!2325 = !{!2326, !2327, !2328}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2324, file: !655, line: 117, baseType: !909, size: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2324, file: !655, line: 118, baseType: !667, size: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2324, file: !655, line: 119, baseType: !640, size: 128, align: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !628, file: !208, line: 922, baseType: !691, size: 64, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !628, file: !208, line: 923, baseType: !1729, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !628, file: !208, line: 929, baseType: !1013, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !628, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !628, file: !208, line: 931, baseType: !1030, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !628, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !628, file: !208, line: 933, baseType: !1563, size: 32, offset: 544)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !628, file: !208, line: 934, baseType: !1280, size: 192, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !628, file: !208, line: 935, baseType: !797, size: 64, offset: 768)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !628, file: !208, line: 936, baseType: !2339, size: 192, offset: 832)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !2340)
!2340 = !{!2341, !2342, !2364, !2365, !2366, !2367}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2339, file: !208, line: 886, baseType: !1838)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2339, file: !208, line: 887, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2353, !2354, !2355, !2356}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2344, file: !217, line: 61, baseType: !418, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2344, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2344, file: !217, line: 63, baseType: !1013, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2344, file: !217, line: 65, baseType: !2350, size: 256, offset: 64)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 256, elements: !2351)
!2351 = !{!2352}
!2352 = !DISubrange(count: 4)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2344, file: !217, line: 66, baseType: !905, size: 64, offset: 320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2344, file: !217, line: 68, baseType: !1512, size: 128, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2344, file: !217, line: 69, baseType: !640, size: 128, align: 64, offset: 512)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2344, file: !217, line: 70, baseType: !2357, size: 128, offset: 640)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2358, size: 128, elements: !578)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !2359)
!2359 = !{!2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2358, file: !217, line: 55, baseType: !317, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2358, file: !217, line: 56, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2339, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2339, file: !208, line: 889, baseType: !698, size: 32, offset: 96)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2339, file: !208, line: 889, baseType: !698, size: 32, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2339, file: !208, line: 890, baseType: !317, size: 32, offset: 160)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !628, file: !208, line: 937, baseType: !2369, size: 64, offset: 1024)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2371)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2372, line: 111, size: 1280, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2393, !2394, !2395, !2396, !2397, !2398, !2508, !2509, !2510, !2511, !2537, !2538, !2548}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2371, file: !2372, line: 112, baseType: !423, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2371, file: !2372, line: 120, baseType: !698, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2371, file: !2372, line: 121, baseType: !706, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2371, file: !2372, line: 122, baseType: !698, size: 32, offset: 96)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2371, file: !2372, line: 123, baseType: !706, size: 32, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2371, file: !2372, line: 124, baseType: !698, size: 32, offset: 160)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2371, file: !2372, line: 125, baseType: !706, size: 32, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2371, file: !2372, line: 126, baseType: !698, size: 32, offset: 224)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2371, file: !2372, line: 127, baseType: !706, size: 32, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2371, file: !2372, line: 128, baseType: !7, size: 32, offset: 288)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2371, file: !2372, line: 129, baseType: !2385, size: 64, offset: 320)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2386, line: 26, baseType: !2387)
!2386 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2386, line: 24, size: 64, elements: !2388)
!2388 = !{!2389}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2387, file: !2386, line: 25, baseType: !2390, size: 64)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 64, elements: !2391)
!2391 = !{!2392}
!2392 = !DISubrange(count: 2)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2371, file: !2372, line: 130, baseType: !2385, size: 64, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2371, file: !2372, line: 131, baseType: !2385, size: 64, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2371, file: !2372, line: 132, baseType: !2385, size: 64, offset: 512)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2371, file: !2372, line: 133, baseType: !2385, size: 64, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2371, file: !2372, line: 135, baseType: !331, size: 8, offset: 640)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2371, file: !2372, line: 137, baseType: !2399, size: 64, offset: 704)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2401, line: 189, size: 1664, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2402 = !{!2403, !2404, !2409, !2414, !2415, !2418, !2419, !2424, !2425, !2426, !2427, !2429, !2430, !2431, !2433, !2434, !2472, !2493}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2400, file: !2401, line: 190, baseType: !418, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2400, file: !2401, line: 191, baseType: !2405, size: 32, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2401, line: 28, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !293, line: 98, baseType: !2407)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !338, line: 20, baseType: !2408)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !324, line: 26, baseType: !317)
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2401, line: 192, baseType: !2410, size: 192, offset: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2401, line: 192, size: 192, elements: !2411)
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2410, file: !2401, line: 193, baseType: !448, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2410, file: !2401, line: 194, baseType: !395, size: 192, align: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2400, file: !2401, line: 199, baseType: !1026, size: 256, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2400, file: !2401, line: 200, baseType: !2416, size: 64, offset: 512)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2401, line: 200, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2400, file: !2401, line: 201, baseType: !291, size: 64, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2401, line: 202, baseType: !2420, size: 64, offset: 640)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2401, line: 202, size: 64, elements: !2421)
!2421 = !{!2422, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2420, file: !2401, line: 203, baseType: !804, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2420, file: !2401, line: 204, baseType: !804, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2400, file: !2401, line: 206, baseType: !804, size: 64, offset: 704)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2400, file: !2401, line: 207, baseType: !698, size: 32, offset: 768)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2400, file: !2401, line: 208, baseType: !706, size: 32, offset: 800)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2400, file: !2401, line: 209, baseType: !2428, size: 32, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2401, line: 31, baseType: !823)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2400, file: !2401, line: 210, baseType: !325, size: 16, offset: 864)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2400, file: !2401, line: 211, baseType: !325, size: 16, offset: 880)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2400, file: !2401, line: 215, baseType: !2432, size: 16, offset: 896)
!2432 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2400, file: !2401, line: 222, baseType: !398, size: 64, offset: 960)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2401, line: 239, baseType: !2435, size: 320, offset: 1024)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2401, line: 239, size: 320, elements: !2436)
!2436 = !{!2437, !2464}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2435, file: !2401, line: 240, baseType: !2438, size: 320)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2401, line: 108, size: 320, elements: !2439)
!2439 = !{!2440, !2441, !2453, !2456, !2463}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2438, file: !2401, line: 110, baseType: !398, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !2438, file: !2401, line: 111, baseType: !2442, size: 64, offset: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2438, file: !2401, line: 111, size: 64, elements: !2443)
!2443 = !{!2444, !2452}
!2444 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !2401, line: 112, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2442, file: !2401, line: 112, size: 64, elements: !2446)
!2446 = !{!2447, !2448}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2445, file: !2401, line: 114, baseType: !337, size: 16)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2445, file: !2401, line: 115, baseType: !2449, size: 48, offset: 16)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 48, elements: !2450)
!2450 = !{!2451}
!2451 = !DISubrange(count: 6)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2442, file: !2401, line: 121, baseType: !398, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2438, file: !2401, line: 123, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2401, line: 96, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2438, file: !2401, line: 124, baseType: !2457, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2401, line: 102, size: 192, elements: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2458, file: !2401, line: 103, baseType: !640, size: 128, align: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2458, file: !2401, line: 104, baseType: !418, size: 32, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2458, file: !2401, line: 105, baseType: !756, size: 8, offset: 160)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2438, file: !2401, line: 125, baseType: !726, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, scope: !2435, file: !2401, line: 241, baseType: !2465, size: 320)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2401, line: 241, size: 320, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2465, file: !2401, line: 242, baseType: !398, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2465, file: !2401, line: 243, baseType: !398, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2465, file: !2401, line: 244, baseType: !2454, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2465, file: !2401, line: 245, baseType: !2457, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2465, file: !2401, line: 246, baseType: !751, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2401, line: 254, baseType: !2473, size: 256, offset: 1344)
!2473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2401, line: 254, size: 256, elements: !2474)
!2474 = !{!2475, !2481}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2473, file: !2401, line: 255, baseType: !2476, size: 256)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2401, line: 128, size: 256, elements: !2477)
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2476, file: !2401, line: 129, baseType: !291, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2476, file: !2401, line: 130, baseType: !2480, size: 256)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !2351)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2473, file: !2401, line: 256, baseType: !2482, size: 256)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !2401, line: 256, size: 256, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2482, file: !2401, line: 258, baseType: !448, size: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2482, file: !2401, line: 259, baseType: !2486, size: 128, offset: 128)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2487, line: 22, size: 128, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2488 = !{!2489, !2492}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2486, file: !2487, line: 23, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2487, line: 23, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2486, file: !2487, line: 24, baseType: !398, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2400, file: !2401, line: 274, baseType: !2494, size: 64, offset: 1600)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2401, line: 170, size: 192, elements: !2496)
!2496 = !{!2497, !2506, !2507}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2495, file: !2401, line: 171, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2401, line: 165, baseType: !2499)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!317, !2399, !2502, !2504, !2399}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2455)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2476)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2495, file: !2401, line: 172, baseType: !2399, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2495, file: !2401, line: 173, baseType: !2454, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2371, file: !2372, line: 138, baseType: !2399, size: 64, offset: 768)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2371, file: !2372, line: 139, baseType: !2399, size: 64, offset: 832)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2371, file: !2372, line: 140, baseType: !2399, size: 64, offset: 896)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2371, file: !2372, line: 145, baseType: !2512, size: 64, offset: 960)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2514, line: 13, size: 896, elements: !2515)
!2514 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2513, file: !2514, line: 14, baseType: !418, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2513, file: !2514, line: 15, baseType: !423, size: 32, offset: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2513, file: !2514, line: 16, baseType: !423, size: 32, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2513, file: !2514, line: 21, baseType: !1030, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2513, file: !2514, line: 27, baseType: !398, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2513, file: !2514, line: 28, baseType: !398, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2513, file: !2514, line: 29, baseType: !1030, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2513, file: !2514, line: 32, baseType: !909, size: 128, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2513, file: !2514, line: 33, baseType: !698, size: 32, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2513, file: !2514, line: 37, baseType: !1030, size: 64, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2513, file: !2514, line: 44, baseType: !2527, size: 256, offset: 640)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2528, line: 15, size: 256, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2527, file: !2528, line: 16, baseType: !377)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2527, file: !2528, line: 18, baseType: !317, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2527, file: !2528, line: 19, baseType: !317, size: 32, offset: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2527, file: !2528, line: 20, baseType: !317, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2527, file: !2528, line: 21, baseType: !317, size: 32, offset: 96)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2527, file: !2528, line: 22, baseType: !398, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2527, file: !2528, line: 23, baseType: !398, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2371, file: !2372, line: 146, baseType: !1651, size: 64, offset: 1024)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2371, file: !2372, line: 147, baseType: !2539, size: 64, offset: 1088)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2372, line: 25, size: 64, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2540, file: !2372, line: 26, baseType: !423, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2540, file: !2372, line: 27, baseType: !317, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2540, file: !2372, line: 28, baseType: !2545, offset: 64)
!2545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, elements: !2546)
!2546 = !{!2547}
!2547 = !DISubrange(count: 0)
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !2372, line: 149, baseType: !2549, size: 128, offset: 1152)
!2549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2371, file: !2372, line: 149, size: 128, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2549, file: !2372, line: 150, baseType: !317, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2549, file: !2372, line: 151, baseType: !640, size: 128, align: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !628, file: !208, line: 938, baseType: !2554, size: 256, offset: 1088)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2554, file: !208, line: 897, baseType: !398, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2554, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2554, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2554, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2554, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2554, file: !208, line: 904, baseType: !797, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !628, file: !208, line: 940, baseType: !455, size: 64, offset: 1344)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !628, file: !208, line: 945, baseType: !291, size: 64, offset: 1408)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !628, file: !208, line: 949, baseType: !448, size: 128, offset: 1472)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !628, file: !208, line: 950, baseType: !448, size: 128, offset: 1600)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !628, file: !208, line: 952, baseType: !1004, size: 64, offset: 1728)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !628, file: !208, line: 953, baseType: !1164, size: 32, offset: 1792)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !628, file: !208, line: 954, baseType: !1164, size: 32, offset: 1824)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !594, file: !587, line: 362, baseType: !291, size: 64, offset: 1344)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !594, file: !587, line: 365, baseType: !1030, size: 64, offset: 1408)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !594, file: !587, line: 373, baseType: !2572, offset: 1472)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !587, line: 296, elements: !385)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !590, file: !587, line: 391, baseType: !391, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !590, file: !587, line: 392, baseType: !455, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !590, file: !587, line: 394, baseType: !1925, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !590, file: !587, line: 398, baseType: !398, size: 64, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !590, file: !587, line: 399, baseType: !398, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !590, file: !587, line: 405, baseType: !398, size: 64, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !590, file: !587, line: 406, baseType: !398, size: 64, offset: 448)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !590, file: !587, line: 407, baseType: !2581, size: 64, offset: 512)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !605, line: 286, baseType: !2583)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 286, size: 64, elements: !2584)
!2584 = !{!2585}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2583, file: !605, line: 286, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !610, line: 18, baseType: !398)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !590, file: !587, line: 416, baseType: !423, size: 32, offset: 576)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !590, file: !587, line: 428, baseType: !423, size: 32, offset: 608)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !590, file: !587, line: 437, baseType: !423, size: 32, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !590, file: !587, line: 447, baseType: !423, size: 32, offset: 672)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !590, file: !587, line: 450, baseType: !1030, size: 64, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !590, file: !587, line: 452, baseType: !317, size: 32, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !590, file: !587, line: 454, baseType: !1013, offset: 800)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !590, file: !587, line: 457, baseType: !1026, size: 256, offset: 832)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !590, file: !587, line: 459, baseType: !448, size: 128, offset: 1088)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !590, file: !587, line: 466, baseType: !398, size: 64, offset: 1216)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !590, file: !587, line: 467, baseType: !398, size: 64, offset: 1280)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !590, file: !587, line: 469, baseType: !398, size: 64, offset: 1344)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !590, file: !587, line: 470, baseType: !398, size: 64, offset: 1408)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !590, file: !587, line: 471, baseType: !1032, size: 64, offset: 1472)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !590, file: !587, line: 472, baseType: !398, size: 64, offset: 1536)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !590, file: !587, line: 473, baseType: !398, size: 64, offset: 1600)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !590, file: !587, line: 474, baseType: !398, size: 64, offset: 1664)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !590, file: !587, line: 475, baseType: !398, size: 64, offset: 1728)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !590, file: !587, line: 477, baseType: !1013, offset: 1792)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !590, file: !587, line: 478, baseType: !398, size: 64, offset: 1792)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !590, file: !587, line: 478, baseType: !398, size: 64, offset: 1856)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !590, file: !587, line: 478, baseType: !398, size: 64, offset: 1920)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !590, file: !587, line: 478, baseType: !398, size: 64, offset: 1984)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !590, file: !587, line: 479, baseType: !398, size: 64, offset: 2048)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !590, file: !587, line: 479, baseType: !398, size: 64, offset: 2112)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !590, file: !587, line: 479, baseType: !398, size: 64, offset: 2176)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !590, file: !587, line: 480, baseType: !398, size: 64, offset: 2240)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !590, file: !587, line: 480, baseType: !398, size: 64, offset: 2304)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !590, file: !587, line: 480, baseType: !398, size: 64, offset: 2368)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !590, file: !587, line: 480, baseType: !398, size: 64, offset: 2432)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !590, file: !587, line: 482, baseType: !2618, size: 2816, offset: 2496)
!2618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 2816, elements: !2619)
!2619 = !{!2620}
!2620 = !DISubrange(count: 44)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !590, file: !587, line: 488, baseType: !2622, size: 256, offset: 5312)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2623, line: 60, size: 256, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2622, file: !2623, line: 61, baseType: !2626, size: 256)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 256, elements: !2351)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !590, file: !587, line: 490, baseType: !2628, size: 64, offset: 5568)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !587, line: 490, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !590, file: !587, line: 493, baseType: !2631, size: 896, offset: 5632)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2632, line: 53, baseType: !2633)
!2632 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2632, line: 13, size: 896, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2641, !2642, !2643, !2644, !2664, !2665, !2666}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2633, file: !2632, line: 18, baseType: !455, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2633, file: !2632, line: 28, baseType: !1032, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2633, file: !2632, line: 31, baseType: !1026, size: 256, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2633, file: !2632, line: 32, baseType: !2639, size: 64, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2632, line: 32, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2633, file: !2632, line: 37, baseType: !325, size: 16, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2633, file: !2632, line: 40, baseType: !1280, size: 192, offset: 512)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2633, file: !2632, line: 41, baseType: !291, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2633, file: !2632, line: 42, baseType: !2645, size: 64, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2648, line: 13, size: 896, elements: !2649)
!2648 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2647, file: !2648, line: 14, baseType: !291, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2647, file: !2648, line: 15, baseType: !398, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2647, file: !2648, line: 17, baseType: !398, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2647, file: !2648, line: 17, baseType: !398, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2647, file: !2648, line: 19, baseType: !415, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2647, file: !2648, line: 21, baseType: !415, size: 64, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2647, file: !2648, line: 22, baseType: !415, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2647, file: !2648, line: 23, baseType: !415, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2647, file: !2648, line: 24, baseType: !415, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2647, file: !2648, line: 25, baseType: !415, size: 64, offset: 576)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2647, file: !2648, line: 26, baseType: !415, size: 64, offset: 640)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2647, file: !2648, line: 27, baseType: !415, size: 64, offset: 704)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2647, file: !2648, line: 28, baseType: !415, size: 64, offset: 768)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2647, file: !2648, line: 29, baseType: !415, size: 64, offset: 832)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2633, file: !2632, line: 44, baseType: !423, size: 32, offset: 832)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2633, file: !2632, line: 50, baseType: !337, size: 16, offset: 864)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2633, file: !2632, line: 51, baseType: !2667, size: 16, offset: 880)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !338, line: 18, baseType: !2668)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !324, line: 23, baseType: !2432)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !587, line: 495, baseType: !398, size: 64, offset: 6528)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !590, file: !587, line: 497, baseType: !2671, size: 64, offset: 6592)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !587, line: 381, size: 384, elements: !2673)
!2673 = !{!2674, !2675, !2681}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2672, file: !587, line: 382, baseType: !423, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2672, file: !587, line: 383, baseType: !2676, size: 128, offset: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !587, line: 376, size: 128, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2676, file: !587, line: 377, baseType: !403, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2676, file: !587, line: 378, baseType: !2680, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2672, file: !587, line: 384, baseType: !2682, size: 192, offset: 192)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2683, line: 26, size: 192, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2682, file: !2683, line: 27, baseType: !7, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2682, file: !2683, line: 28, baseType: !2687, size: 128, offset: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2688, line: 43, size: 128, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2687, file: !2688, line: 44, baseType: !377)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2687, file: !2688, line: 45, baseType: !448, size: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !590, file: !587, line: 500, baseType: !1013, offset: 6656)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !590, file: !587, line: 501, baseType: !2694, size: 64, offset: 6656)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !587, line: 387, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !590, file: !587, line: 516, baseType: !1651, size: 64, offset: 6720)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !590, file: !587, line: 519, baseType: !627, size: 64, offset: 6784)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !590, file: !587, line: 521, baseType: !2699, size: 64, offset: 6848)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !587, line: 521, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !590, file: !587, line: 545, baseType: !423, size: 32, offset: 6912)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !590, file: !587, line: 548, baseType: !756, size: 8, offset: 6944)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !590, file: !587, line: 550, baseType: !2704, offset: 6952)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2705, line: 142, elements: !385)
!2705 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !590, file: !587, line: 554, baseType: !1671, size: 256, offset: 6976)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !590, file: !587, line: 557, baseType: !355, size: 32, offset: 7232)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !586, file: !587, line: 565, baseType: !2709, offset: 7296)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !2710)
!2710 = !{!2711}
!2711 = !DISubrange(count: -1)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !404, file: !405, line: 758, baseType: !585, size: 64, offset: 3968)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !404, file: !405, line: 761, baseType: !2714, size: 320, offset: 4032)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2623, line: 34, size: 320, elements: !2715)
!2715 = !{!2716, !2717}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2714, file: !2623, line: 35, baseType: !455, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2714, file: !2623, line: 36, baseType: !2718, size: 256, offset: 64)
!2718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 256, elements: !2351)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !404, file: !405, line: 766, baseType: !317, size: 32, offset: 4352)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !404, file: !405, line: 767, baseType: !317, size: 32, offset: 4384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !404, file: !405, line: 768, baseType: !317, size: 32, offset: 4416)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !404, file: !405, line: 770, baseType: !317, size: 32, offset: 4448)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !404, file: !405, line: 772, baseType: !398, size: 64, offset: 4480)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !404, file: !405, line: 775, baseType: !7, size: 32, offset: 4544)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !404, file: !405, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !404, file: !405, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !404, file: !405, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !404, file: !405, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !404, file: !405, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !404, file: !405, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !404, file: !405, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !404, file: !405, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !404, file: !405, line: 831, baseType: !398, size: 64, offset: 4672)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !404, file: !405, line: 833, baseType: !2735, size: 384, offset: 4736)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !2736)
!2736 = !{!2737, !2742}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2735, file: !196, line: 26, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!415, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, scope: !2735, file: !196, line: 27, baseType: !2743, size: 320, offset: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2735, file: !196, line: 27, size: 320, elements: !2744)
!2744 = !{!2745, !2755, !2780}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2743, file: !196, line: 36, baseType: !2746, size: 320)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !196, line: 29, size: 320, elements: !2747)
!2747 = !{!2748, !2750, !2751, !2752, !2753, !2754}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2746, file: !196, line: 30, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2746, file: !196, line: 31, baseType: !355, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2746, file: !196, line: 32, baseType: !355, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2746, file: !196, line: 33, baseType: !355, size: 32, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2746, file: !196, line: 34, baseType: !455, size: 64, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2746, file: !196, line: 35, baseType: !2749, size: 64, offset: 256)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2743, file: !196, line: 46, baseType: !2756, size: 192)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !196, line: 38, size: 192, elements: !2757)
!2757 = !{!2758, !2759, !2760, !2779}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2756, file: !196, line: 39, baseType: !537, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2756, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, scope: !2756, file: !196, line: 41, baseType: !2761, size: 64, offset: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2756, file: !196, line: 41, size: 64, elements: !2762)
!2762 = !{!2763, !2771}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2761, file: !196, line: 42, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2766, line: 7, size: 128, elements: !2767)
!2766 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2767 = !{!2768, !2770}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2765, file: !2766, line: 8, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !539, line: 93, baseType: !487)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2765, file: !2766, line: 9, baseType: !487, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2761, file: !196, line: 43, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2774, line: 7, size: 64, elements: !2775)
!2774 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2775 = !{!2776, !2778}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2773, file: !2774, line: 8, baseType: !2777, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2774, line: 5, baseType: !2407)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2773, file: !2774, line: 9, baseType: !2407, size: 32, offset: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2756, file: !196, line: 45, baseType: !455, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2743, file: !196, line: 54, baseType: !2781, size: 256)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !196, line: 48, size: 256, elements: !2782)
!2782 = !{!2783, !2791, !2792, !2793, !2794}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2781, file: !196, line: 49, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2786, line: 36, size: 64, elements: !2787)
!2786 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2787 = !{!2788, !2789, !2790}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2785, file: !2786, line: 37, baseType: !317, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2785, file: !2786, line: 38, baseType: !2432, size: 16, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2785, file: !2786, line: 39, baseType: !2432, size: 16, offset: 48)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2781, file: !196, line: 50, baseType: !317, size: 32, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2781, file: !196, line: 51, baseType: !317, size: 32, offset: 96)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2781, file: !196, line: 52, baseType: !398, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2781, file: !196, line: 53, baseType: !398, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !404, file: !405, line: 835, baseType: !2796, size: 32, offset: 5120)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !293, line: 22, baseType: !2797)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !539, line: 28, baseType: !317)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !404, file: !405, line: 836, baseType: !2796, size: 32, offset: 5152)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !404, file: !405, line: 840, baseType: !398, size: 64, offset: 5184)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !404, file: !405, line: 849, baseType: !403, size: 64, offset: 5248)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !404, file: !405, line: 852, baseType: !403, size: 64, offset: 5312)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !404, file: !405, line: 857, baseType: !448, size: 128, offset: 5376)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !404, file: !405, line: 858, baseType: !448, size: 128, offset: 5504)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !404, file: !405, line: 859, baseType: !403, size: 64, offset: 5632)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !404, file: !405, line: 867, baseType: !448, size: 128, offset: 5696)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !404, file: !405, line: 868, baseType: !448, size: 128, offset: 5824)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !404, file: !405, line: 871, baseType: !2343, size: 64, offset: 5952)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !404, file: !405, line: 872, baseType: !2809, size: 512, offset: 6016)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 512, elements: !2351)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !404, file: !405, line: 873, baseType: !448, size: 128, offset: 6528)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !404, file: !405, line: 874, baseType: !448, size: 128, offset: 6656)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !404, file: !405, line: 876, baseType: !2813, size: 64, offset: 6784)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !404, file: !405, line: 879, baseType: !977, size: 64, offset: 6848)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !404, file: !405, line: 882, baseType: !977, size: 64, offset: 6912)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !404, file: !405, line: 884, baseType: !455, size: 64, offset: 6976)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !404, file: !405, line: 885, baseType: !455, size: 64, offset: 7040)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !404, file: !405, line: 890, baseType: !455, size: 64, offset: 7104)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !404, file: !405, line: 891, baseType: !2820, size: 128, offset: 7168)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !405, line: 242, size: 128, elements: !2821)
!2821 = !{!2822, !2823, !2824}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2820, file: !405, line: 244, baseType: !455, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2820, file: !405, line: 245, baseType: !455, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2820, file: !405, line: 246, baseType: !377, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !404, file: !405, line: 900, baseType: !398, size: 64, offset: 7296)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !404, file: !405, line: 901, baseType: !398, size: 64, offset: 7360)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !404, file: !405, line: 904, baseType: !455, size: 64, offset: 7424)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !404, file: !405, line: 907, baseType: !455, size: 64, offset: 7488)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !404, file: !405, line: 910, baseType: !398, size: 64, offset: 7552)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !404, file: !405, line: 911, baseType: !398, size: 64, offset: 7616)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !404, file: !405, line: 914, baseType: !2832, size: 640, offset: 7680)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2833, line: 123, size: 640, elements: !2834)
!2833 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2834 = !{!2835, !2841, !2842}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2832, file: !2833, line: 124, baseType: !2836, size: 576)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2837, size: 576, elements: !921)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2833, line: 108, size: 192, elements: !2838)
!2838 = !{!2839, !2840}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2837, file: !2833, line: 109, baseType: !455, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2837, file: !2833, line: 110, baseType: !552, size: 128, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2832, file: !2833, line: 125, baseType: !7, size: 32, offset: 576)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2832, file: !2833, line: 126, baseType: !7, size: 32, offset: 608)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !404, file: !405, line: 917, baseType: !2844, size: 192, offset: 8320)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2833, line: 134, size: 192, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2844, file: !2833, line: 135, baseType: !640, size: 128, align: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2844, file: !2833, line: 136, baseType: !7, size: 32, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !404, file: !405, line: 923, baseType: !2369, size: 64, offset: 8512)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !404, file: !405, line: 926, baseType: !2369, size: 64, offset: 8576)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !404, file: !405, line: 929, baseType: !2369, size: 64, offset: 8640)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !404, file: !405, line: 933, baseType: !2399, size: 64, offset: 8704)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !404, file: !405, line: 943, baseType: !2853, size: 128, offset: 8768)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 128, elements: !1559)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !404, file: !405, line: 945, baseType: !2855, size: 64, offset: 8896)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !405, line: 49, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !404, file: !405, line: 956, baseType: !2858, size: 64, offset: 8960)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !405, line: 45, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !404, file: !405, line: 959, baseType: !2861, size: 64, offset: 9024)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !405, line: 959, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !404, file: !405, line: 962, baseType: !2864, size: 64, offset: 9088)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !405, line: 66, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !404, file: !405, line: 966, baseType: !2867, size: 64, offset: 9152)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !405, line: 50, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !404, file: !405, line: 969, baseType: !2870, size: 64, offset: 9216)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2872, line: 82, size: 7296, elements: !2873)
!2872 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2909, !2918, !2919, !2921, !2922, !2923, !2926, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2956, !2957, !2964, !2965, !2966, !2967, !2968, !2969}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2871, file: !2872, line: 83, baseType: !418, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2871, file: !2872, line: 84, baseType: !423, size: 32, offset: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2871, file: !2872, line: 85, baseType: !317, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2871, file: !2872, line: 86, baseType: !448, size: 128, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2871, file: !2872, line: 88, baseType: !1512, size: 128, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2871, file: !2872, line: 91, baseType: !403, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2871, file: !2872, line: 94, baseType: !2881, size: 192, offset: 448)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2882, line: 30, size: 192, elements: !2883)
!2882 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2883 = !{!2884, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2881, file: !2882, line: 31, baseType: !448, size: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2881, file: !2882, line: 32, baseType: !2886, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2887, line: 25, baseType: !2888)
!2887 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2887, line: 23, size: 64, elements: !2889)
!2889 = !{!2890}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2888, file: !2887, line: 24, baseType: !577, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2871, file: !2872, line: 97, baseType: !905, size: 64, offset: 640)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2871, file: !2872, line: 100, baseType: !317, size: 32, offset: 704)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2871, file: !2872, line: 106, baseType: !317, size: 32, offset: 736)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2871, file: !2872, line: 107, baseType: !403, size: 64, offset: 768)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2871, file: !2872, line: 110, baseType: !317, size: 32, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2872, line: 111, baseType: !7, size: 32, offset: 864)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2871, file: !2872, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2871, file: !2872, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2871, file: !2872, line: 128, baseType: !317, size: 32, offset: 928)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2871, file: !2872, line: 129, baseType: !448, size: 128, offset: 960)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2871, file: !2872, line: 132, baseType: !495, size: 512, offset: 1088)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2871, file: !2872, line: 133, baseType: !503, size: 64, offset: 1600)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2871, file: !2872, line: 140, baseType: !2904, size: 256, offset: 1664)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2905, size: 256, elements: !2391)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2872, line: 38, size: 128, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2905, file: !2872, line: 39, baseType: !455, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2905, file: !2872, line: 40, baseType: !455, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2871, file: !2872, line: 146, baseType: !2910, size: 192, offset: 1920)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2872, line: 66, size: 192, elements: !2911)
!2911 = !{!2912}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2910, file: !2872, line: 67, baseType: !2913, size: 192)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2872, line: 47, size: 192, elements: !2914)
!2914 = !{!2915, !2916, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2913, file: !2872, line: 48, baseType: !1032, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2913, file: !2872, line: 49, baseType: !1032, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2913, file: !2872, line: 50, baseType: !1032, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2871, file: !2872, line: 150, baseType: !2832, size: 640, offset: 2112)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2871, file: !2872, line: 153, baseType: !2920, size: 256, offset: 2752)
!2920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2343, size: 256, elements: !2351)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2871, file: !2872, line: 159, baseType: !2343, size: 64, offset: 3008)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2871, file: !2872, line: 162, baseType: !317, size: 32, offset: 3072)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2871, file: !2872, line: 164, baseType: !2924, size: 64, offset: 3136)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2872, line: 164, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2871, file: !2872, line: 175, baseType: !2927, size: 32, offset: 3200)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !542, line: 805, baseType: !2928)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 798, size: 32, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2928, file: !542, line: 803, baseType: !662, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2928, file: !542, line: 804, baseType: !1013, offset: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2871, file: !2872, line: 176, baseType: !455, size: 64, offset: 3264)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2871, file: !2872, line: 176, baseType: !455, size: 64, offset: 3328)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2871, file: !2872, line: 176, baseType: !455, size: 64, offset: 3392)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2871, file: !2872, line: 176, baseType: !455, size: 64, offset: 3456)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2871, file: !2872, line: 177, baseType: !455, size: 64, offset: 3520)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2871, file: !2872, line: 178, baseType: !455, size: 64, offset: 3584)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2871, file: !2872, line: 179, baseType: !2820, size: 128, offset: 3648)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2871, file: !2872, line: 180, baseType: !398, size: 64, offset: 3776)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2871, file: !2872, line: 180, baseType: !398, size: 64, offset: 3840)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2871, file: !2872, line: 180, baseType: !398, size: 64, offset: 3904)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2871, file: !2872, line: 180, baseType: !398, size: 64, offset: 3968)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2871, file: !2872, line: 181, baseType: !398, size: 64, offset: 4032)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2871, file: !2872, line: 181, baseType: !398, size: 64, offset: 4096)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2871, file: !2872, line: 181, baseType: !398, size: 64, offset: 4160)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2871, file: !2872, line: 181, baseType: !398, size: 64, offset: 4224)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2871, file: !2872, line: 182, baseType: !398, size: 64, offset: 4288)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2871, file: !2872, line: 182, baseType: !398, size: 64, offset: 4352)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2871, file: !2872, line: 182, baseType: !398, size: 64, offset: 4416)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2871, file: !2872, line: 182, baseType: !398, size: 64, offset: 4480)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2871, file: !2872, line: 183, baseType: !398, size: 64, offset: 4544)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2871, file: !2872, line: 183, baseType: !398, size: 64, offset: 4608)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2871, file: !2872, line: 184, baseType: !2954, offset: 4672)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2955, line: 12, elements: !385)
!2955 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2871, file: !2872, line: 192, baseType: !457, size: 64, offset: 4672)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2871, file: !2872, line: 203, baseType: !2958, size: 2048, offset: 4736)
!2958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2959, size: 2048, elements: !1559)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2960, line: 43, size: 128, elements: !2961)
!2960 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2959, file: !2960, line: 44, baseType: !847, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2959, file: !2960, line: 45, baseType: !847, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2871, file: !2872, line: 220, baseType: !756, size: 8, offset: 6784)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2871, file: !2872, line: 221, baseType: !2432, size: 16, offset: 6800)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2871, file: !2872, line: 222, baseType: !2432, size: 16, offset: 6816)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2871, file: !2872, line: 224, baseType: !585, size: 64, offset: 6848)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2871, file: !2872, line: 227, baseType: !1280, size: 192, offset: 6912)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2871, file: !2872, line: 233, baseType: !1280, size: 192, offset: 7104)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !404, file: !405, line: 970, baseType: !2971, size: 64, offset: 9280)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2872, line: 20, size: 16576, elements: !2973)
!2973 = !{!2974, !2975, !2976, !2977}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2972, file: !2872, line: 21, baseType: !1013)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2972, file: !2872, line: 22, baseType: !418, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2972, file: !2872, line: 23, baseType: !1512, size: 128, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2972, file: !2872, line: 24, baseType: !2978, size: 16384, offset: 192)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 16384, elements: !2028)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2882, line: 49, size: 256, elements: !2980)
!2980 = !{!2981}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2979, file: !2882, line: 50, baseType: !2982, size: 256)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2882, line: 35, size: 256, elements: !2983)
!2983 = !{!2984, !2991, !2992, !2998}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2982, file: !2882, line: 37, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2986, line: 19, baseType: !2987)
!2986 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2986, line: 18, baseType: !2989)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !317}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2982, file: !2882, line: 38, baseType: !398, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2982, file: !2882, line: 44, baseType: !2993, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2986, line: 22, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2986, line: 21, baseType: !2996)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2982, file: !2882, line: 46, baseType: !2886, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !404, file: !405, line: 971, baseType: !2886, size: 64, offset: 9344)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !404, file: !405, line: 972, baseType: !2886, size: 64, offset: 9408)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !404, file: !405, line: 974, baseType: !2886, size: 64, offset: 9472)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !404, file: !405, line: 975, baseType: !2881, size: 192, offset: 9536)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !404, file: !405, line: 976, baseType: !398, size: 64, offset: 9728)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !404, file: !405, line: 977, baseType: !845, size: 64, offset: 9792)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !404, file: !405, line: 978, baseType: !7, size: 32, offset: 9856)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !404, file: !405, line: 980, baseType: !643, size: 64, offset: 9920)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !404, file: !405, line: 989, baseType: !3008, size: 128, offset: 9984)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3009, line: 35, size: 128, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3012, !3013}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3008, file: !3009, line: 36, baseType: !317, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3008, file: !3009, line: 37, baseType: !423, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3008, file: !3009, line: 38, baseType: !3014, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3009, line: 23, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !404, file: !405, line: 992, baseType: !455, size: 64, offset: 10112)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !404, file: !405, line: 993, baseType: !455, size: 64, offset: 10176)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !404, file: !405, line: 996, baseType: !1013, offset: 10240)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !404, file: !405, line: 999, baseType: !377, offset: 10240)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !404, file: !405, line: 1001, baseType: !3021, size: 64, offset: 10240)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !405, line: 636, size: 64, elements: !3022)
!3022 = !{!3023}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3021, file: !405, line: 637, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !404, file: !405, line: 1005, baseType: !387, size: 128, offset: 10304)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !404, file: !405, line: 1007, baseType: !403, size: 64, offset: 10432)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !404, file: !405, line: 1009, baseType: !3028, size: 64, offset: 10496)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !405, line: 1009, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !404, file: !405, line: 1043, baseType: !291, size: 64, offset: 10560)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !404, file: !405, line: 1046, baseType: !3032, size: 64, offset: 10624)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !405, line: 41, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !404, file: !405, line: 1050, baseType: !3035, size: 64, offset: 10688)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !405, line: 42, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !404, file: !405, line: 1054, baseType: !3038, size: 64, offset: 10752)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !405, line: 55, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !404, file: !405, line: 1056, baseType: !1459, size: 64, offset: 10816)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !404, file: !405, line: 1058, baseType: !3042, size: 64, offset: 10880)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3044, line: 99, size: 704, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052, !3071, !3072}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3043, file: !3044, line: 100, baseType: !1030, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3043, file: !3044, line: 101, baseType: !423, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3043, file: !3044, line: 102, baseType: !423, size: 32, offset: 96)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3043, file: !3044, line: 105, baseType: !1013, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3043, file: !3044, line: 107, baseType: !325, size: 16, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3043, file: !3044, line: 109, baseType: !1009, size: 128, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3043, file: !3044, line: 110, baseType: !3053, size: 64, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3044, line: 73, size: 448, elements: !3055)
!3055 = !{!3056, !3059, !3060, !3065, !3070}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3054, file: !3044, line: 74, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3044, line: 74, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3054, file: !3044, line: 75, baseType: !3042, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, scope: !3054, file: !3044, line: 83, baseType: !3061, size: 128, offset: 128)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3054, file: !3044, line: 83, size: 128, elements: !3062)
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3061, file: !3044, line: 84, baseType: !448, size: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3061, file: !3044, line: 85, baseType: !1190, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, scope: !3054, file: !3044, line: 87, baseType: !3066, size: 128, offset: 256)
!3066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3054, file: !3044, line: 87, size: 128, elements: !3067)
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3066, file: !3044, line: 88, baseType: !909, size: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3066, file: !3044, line: 89, baseType: !640, size: 128, align: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3054, file: !3044, line: 92, baseType: !7, size: 32, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3043, file: !3044, line: 111, baseType: !905, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3043, file: !3044, line: 113, baseType: !1671, size: 256, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !404, file: !405, line: 1061, baseType: !3074, size: 64, offset: 10944)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !405, line: 43, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !404, file: !405, line: 1064, baseType: !398, size: 64, offset: 11008)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !404, file: !405, line: 1065, baseType: !3078, size: 64, offset: 11072)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2882, line: 14, baseType: !3080)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2882, line: 12, size: 384, elements: !3081)
!3081 = !{!3082}
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3080, file: !2882, line: 13, baseType: !3083, size: 384)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3080, file: !2882, line: 13, size: 384, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3083, file: !2882, line: 13, baseType: !317, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3083, file: !2882, line: 13, baseType: !317, size: 32, offset: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3083, file: !2882, line: 13, baseType: !317, size: 32, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3083, file: !2882, line: 13, baseType: !3089, size: 256, offset: 128)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3090, line: 32, size: 256, elements: !3091)
!3090 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3091 = !{!3092, !3097, !3110, !3116, !3125, !3145, !3150}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3089, file: !3090, line: 37, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 34, size: 64, elements: !3094)
!3094 = !{!3095, !3096}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3093, file: !3090, line: 35, baseType: !2797, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3093, file: !3090, line: 36, baseType: !704, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3089, file: !3090, line: 45, baseType: !3098, size: 192)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 40, size: 192, elements: !3099)
!3099 = !{!3100, !3102, !3103, !3109}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3098, file: !3090, line: 41, baseType: !3101, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !539, line: 95, baseType: !317)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3098, file: !3090, line: 42, baseType: !317, size: 32, offset: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3098, file: !3090, line: 43, baseType: !3104, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3090, line: 11, baseType: !3105)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3090, line: 8, size: 64, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3105, file: !3090, line: 9, baseType: !317, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3105, file: !3090, line: 10, baseType: !291, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3098, file: !3090, line: 44, baseType: !317, size: 32, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3089, file: !3090, line: 52, baseType: !3111, size: 128)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 48, size: 128, elements: !3112)
!3112 = !{!3113, !3114, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3111, file: !3090, line: 49, baseType: !2797, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3111, file: !3090, line: 50, baseType: !704, size: 32, offset: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3111, file: !3090, line: 51, baseType: !3104, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3089, file: !3090, line: 61, baseType: !3117, size: 256)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 55, size: 256, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122, !3124}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3117, file: !3090, line: 56, baseType: !2797, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3117, file: !3090, line: 57, baseType: !704, size: 32, offset: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3117, file: !3090, line: 58, baseType: !317, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3117, file: !3090, line: 59, baseType: !3123, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !539, line: 94, baseType: !844)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3117, file: !3090, line: 60, baseType: !3123, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3089, file: !3090, line: 95, baseType: !3126, size: 256)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 64, size: 256, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3126, file: !3090, line: 65, baseType: !291, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !3090, line: 77, baseType: !3130, size: 192, offset: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !3090, line: 77, size: 192, elements: !3131)
!3131 = !{!3132, !3133, !3140}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3130, file: !3090, line: 82, baseType: !2432, size: 16)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3130, file: !3090, line: 88, baseType: !3134, size: 192)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !3090, line: 84, size: 192, elements: !3135)
!3135 = !{!3136, !3138, !3139}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3134, file: !3090, line: 85, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 64, elements: !533)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3134, file: !3090, line: 86, baseType: !291, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3134, file: !3090, line: 87, baseType: !291, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3130, file: !3090, line: 93, baseType: !3141, size: 96)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3130, file: !3090, line: 90, size: 96, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3141, file: !3090, line: 91, baseType: !3137, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3141, file: !3090, line: 92, baseType: !356, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3089, file: !3090, line: 101, baseType: !3146, size: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 98, size: 128, elements: !3147)
!3147 = !{!3148, !3149}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3146, file: !3090, line: 99, baseType: !415, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3146, file: !3090, line: 100, baseType: !317, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3089, file: !3090, line: 108, baseType: !3151, size: 128)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3090, line: 104, size: 128, elements: !3152)
!3152 = !{!3153, !3154, !3155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3151, file: !3090, line: 105, baseType: !291, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3151, file: !3090, line: 106, baseType: !317, size: 32, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3151, file: !3090, line: 107, baseType: !7, size: 32, offset: 96)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !404, file: !405, line: 1067, baseType: !2954, offset: 11136)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !404, file: !405, line: 1099, baseType: !3158, size: 64, offset: 11136)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !405, line: 56, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !404, file: !405, line: 1103, baseType: !448, size: 128, offset: 11200)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !404, file: !405, line: 1104, baseType: !3162, size: 64, offset: 11328)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !405, line: 46, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !404, file: !405, line: 1105, baseType: !1280, size: 192, offset: 11392)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !404, file: !405, line: 1106, baseType: !7, size: 32, offset: 11584)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !404, file: !405, line: 1109, baseType: !3167, size: 128, offset: 11648)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3168, size: 128, elements: !2391)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !405, line: 51, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !404, file: !405, line: 1110, baseType: !1280, size: 192, offset: 11776)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !404, file: !405, line: 1111, baseType: !448, size: 128, offset: 11968)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !404, file: !405, line: 1173, baseType: !3173, size: 64, offset: 12096)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3175, line: 62, size: 256, align: 256, elements: !3176)
!3175 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3176 = !{!3177, !3178, !3179, !3184}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3174, file: !3175, line: 75, baseType: !356, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3174, file: !3175, line: 90, baseType: !356, size: 32, offset: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3174, file: !3175, line: 124, baseType: !3180, size: 64, offset: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3174, file: !3175, line: 109, size: 64, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3180, file: !3175, line: 110, baseType: !456, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3180, file: !3175, line: 112, baseType: !456, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3174, file: !3175, line: 144, baseType: !356, size: 32, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !404, file: !405, line: 1174, baseType: !355, size: 32, offset: 12160)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !404, file: !405, line: 1179, baseType: !398, size: 64, offset: 12224)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !404, file: !405, line: 1182, baseType: !3188, size: 128, offset: 12288)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2623, line: 76, size: 128, elements: !3189)
!3189 = !{!3190, !3195, !3196}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3188, file: !2623, line: 85, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3192, line: 7, size: 64, elements: !3193)
!3192 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3193 = !{!3194}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3191, file: !3192, line: 12, baseType: !574, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3188, file: !2623, line: 88, baseType: !756, size: 8, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3188, file: !2623, line: 95, baseType: !756, size: 8, offset: 72)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !405, line: 1184, baseType: !3198, size: 128, offset: 12416)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !405, line: 1184, size: 128, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3198, file: !405, line: 1185, baseType: !418, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3198, file: !405, line: 1186, baseType: !640, size: 128, align: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !404, file: !405, line: 1190, baseType: !1937, size: 64, offset: 12544)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !404, file: !405, line: 1192, baseType: !3204, size: 128, offset: 12608)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2623, line: 64, size: 128, elements: !3205)
!3205 = !{!3206, !3207, !3208}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3204, file: !2623, line: 65, baseType: !992, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3204, file: !2623, line: 67, baseType: !356, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3204, file: !2623, line: 68, baseType: !356, size: 32, offset: 96)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !404, file: !405, line: 1206, baseType: !317, size: 32, offset: 12736)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !404, file: !405, line: 1207, baseType: !317, size: 32, offset: 12768)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !404, file: !405, line: 1209, baseType: !398, size: 64, offset: 12800)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !404, file: !405, line: 1219, baseType: !455, size: 64, offset: 12864)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !404, file: !405, line: 1220, baseType: !455, size: 64, offset: 12928)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !404, file: !405, line: 1317, baseType: !317, size: 32, offset: 12992)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !404, file: !405, line: 1319, baseType: !403, size: 64, offset: 13056)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !404, file: !405, line: 1322, baseType: !3217, size: 64, offset: 13120)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3219, line: 56, size: 512, elements: !3220)
!3219 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226, !3227, !3229}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3218, file: !3219, line: 57, baseType: !3217, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3218, file: !3219, line: 58, baseType: !291, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3218, file: !3219, line: 59, baseType: !398, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3218, file: !3219, line: 60, baseType: !398, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3218, file: !3219, line: 61, baseType: !1077, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3218, file: !3219, line: 62, baseType: !7, size: 32, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3218, file: !3219, line: 63, baseType: !3228, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !293, line: 153, baseType: !455)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3218, file: !3219, line: 64, baseType: !2119, size: 64, offset: 448)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !404, file: !405, line: 1326, baseType: !418, size: 32, offset: 13184)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !404, file: !405, line: 1342, baseType: !291, size: 64, offset: 13248)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !404, file: !405, line: 1343, baseType: !456, size: 64, offset: 13312)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !404, file: !405, line: 1344, baseType: !455, size: 64, offset: 13376)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !404, file: !405, line: 1345, baseType: !456, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !404, file: !405, line: 1346, baseType: !456, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !404, file: !405, line: 1347, baseType: !456, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !404, file: !405, line: 1348, baseType: !640, size: 128, align: 64, offset: 13504)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !404, file: !405, line: 1358, baseType: !3239, size: 34816, offset: 13824)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3240, line: 485, size: 34816, elements: !3241)
!3240 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3241 = !{!3242, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3271, !3272, !3273, !3274, !3275, !3276, !3279, !3280, !3281}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3239, file: !3240, line: 487, baseType: !3243, size: 192)
!3243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3244, size: 192, elements: !921)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3245, line: 16, size: 64, elements: !3246)
!3245 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3244, file: !3245, line: 17, baseType: !337, size: 16)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3244, file: !3245, line: 18, baseType: !337, size: 16, offset: 16)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3244, file: !3245, line: 19, baseType: !337, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3244, file: !3245, line: 19, baseType: !337, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3244, file: !3245, line: 19, baseType: !337, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3244, file: !3245, line: 19, baseType: !337, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3244, file: !3245, line: 19, baseType: !337, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3244, file: !3245, line: 20, baseType: !337, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3244, file: !3245, line: 20, baseType: !337, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3244, file: !3245, line: 20, baseType: !337, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3244, file: !3245, line: 20, baseType: !337, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3244, file: !3245, line: 20, baseType: !337, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3244, file: !3245, line: 20, baseType: !337, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3239, file: !3240, line: 491, baseType: !398, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3239, file: !3240, line: 495, baseType: !325, size: 16, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3239, file: !3240, line: 496, baseType: !325, size: 16, offset: 272)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3239, file: !3240, line: 497, baseType: !325, size: 16, offset: 288)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3239, file: !3240, line: 498, baseType: !325, size: 16, offset: 304)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3239, file: !3240, line: 502, baseType: !398, size: 64, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3239, file: !3240, line: 503, baseType: !398, size: 64, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3239, file: !3240, line: 514, baseType: !3268, size: 256, offset: 448)
!3268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 256, elements: !2351)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3240, line: 483, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3239, file: !3240, line: 516, baseType: !398, size: 64, offset: 704)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3239, file: !3240, line: 518, baseType: !398, size: 64, offset: 768)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3239, file: !3240, line: 520, baseType: !398, size: 64, offset: 832)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3239, file: !3240, line: 521, baseType: !398, size: 64, offset: 896)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3239, file: !3240, line: 522, baseType: !398, size: 64, offset: 960)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3239, file: !3240, line: 528, baseType: !3277, size: 64, offset: 1024)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3240, line: 10, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3239, file: !3240, line: 535, baseType: !398, size: 64, offset: 1088)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3239, file: !3240, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3239, file: !3240, line: 540, baseType: !3282, size: 33280, offset: 1536)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3283, line: 317, size: 33280, elements: !3284)
!3283 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3282, file: !3283, line: 330, baseType: !7, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3282, file: !3283, line: 337, baseType: !398, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3282, file: !3283, line: 348, baseType: !3288, size: 32768, offset: 512)
!3288 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3283, line: 304, size: 32768, elements: !3289)
!3289 = !{!3290, !3305, !3342, !3392, !3405}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3288, file: !3283, line: 305, baseType: !3291, size: 896)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3283, line: 12, size: 896, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3304}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3291, file: !3283, line: 13, baseType: !355, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3291, file: !3283, line: 14, baseType: !355, size: 32, offset: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3291, file: !3283, line: 15, baseType: !355, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3291, file: !3283, line: 16, baseType: !355, size: 32, offset: 96)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3291, file: !3283, line: 17, baseType: !355, size: 32, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3291, file: !3283, line: 18, baseType: !355, size: 32, offset: 160)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3291, file: !3283, line: 19, baseType: !355, size: 32, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3291, file: !3283, line: 22, baseType: !3301, size: 640, offset: 224)
!3301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 640, elements: !3302)
!3302 = !{!3303}
!3303 = !DISubrange(count: 20)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3291, file: !3283, line: 25, baseType: !355, size: 32, offset: 864)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3288, file: !3283, line: 306, baseType: !3306, size: 4096, align: 128)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3283, line: 34, size: 4096, align: 128, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3327, !3328, !3329, !3331, !3333, !3337}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3306, file: !3283, line: 35, baseType: !337, size: 16)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3306, file: !3283, line: 36, baseType: !337, size: 16, offset: 16)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3306, file: !3283, line: 37, baseType: !337, size: 16, offset: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3306, file: !3283, line: 38, baseType: !337, size: 16, offset: 48)
!3312 = !DIDerivedType(tag: DW_TAG_member, scope: !3306, file: !3283, line: 39, baseType: !3313, size: 128, offset: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3306, file: !3283, line: 39, size: 128, elements: !3314)
!3314 = !{!3315, !3320}
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3283, line: 40, baseType: !3316, size: 128)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3313, file: !3283, line: 40, size: 128, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3316, file: !3283, line: 41, baseType: !455, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3316, file: !3283, line: 42, baseType: !455, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3283, line: 44, baseType: !3321, size: 128)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3313, file: !3283, line: 44, size: 128, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3321, file: !3283, line: 45, baseType: !355, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3321, file: !3283, line: 46, baseType: !355, size: 32, offset: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3321, file: !3283, line: 47, baseType: !355, size: 32, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3321, file: !3283, line: 48, baseType: !355, size: 32, offset: 96)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3306, file: !3283, line: 51, baseType: !355, size: 32, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3306, file: !3283, line: 52, baseType: !355, size: 32, offset: 224)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3306, file: !3283, line: 55, baseType: !3330, size: 1024, offset: 256)
!3330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1024, elements: !1550)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3306, file: !3283, line: 58, baseType: !3332, size: 2048, offset: 1280)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 2048, elements: !2028)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3306, file: !3283, line: 60, baseType: !3334, size: 384, offset: 3328)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, elements: !3335)
!3335 = !{!3336}
!3336 = !DISubrange(count: 12)
!3337 = !DIDerivedType(tag: DW_TAG_member, scope: !3306, file: !3283, line: 62, baseType: !3338, size: 384, offset: 3712)
!3338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3306, file: !3283, line: 62, size: 384, elements: !3339)
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3338, file: !3283, line: 63, baseType: !3334, size: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3338, file: !3283, line: 64, baseType: !3334, size: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3288, file: !3283, line: 307, baseType: !3343, size: 1088)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3283, line: 79, size: 1088, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3391}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3343, file: !3283, line: 80, baseType: !355, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3343, file: !3283, line: 81, baseType: !355, size: 32, offset: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3343, file: !3283, line: 82, baseType: !355, size: 32, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3343, file: !3283, line: 83, baseType: !355, size: 32, offset: 96)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3343, file: !3283, line: 84, baseType: !355, size: 32, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3343, file: !3283, line: 85, baseType: !355, size: 32, offset: 160)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3343, file: !3283, line: 86, baseType: !355, size: 32, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3343, file: !3283, line: 88, baseType: !3301, size: 640, offset: 224)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3343, file: !3283, line: 89, baseType: !340, size: 8, offset: 864)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3343, file: !3283, line: 90, baseType: !340, size: 8, offset: 872)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3343, file: !3283, line: 91, baseType: !340, size: 8, offset: 880)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3343, file: !3283, line: 92, baseType: !340, size: 8, offset: 888)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3343, file: !3283, line: 93, baseType: !340, size: 8, offset: 896)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3343, file: !3283, line: 94, baseType: !340, size: 8, offset: 904)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3343, file: !3283, line: 95, baseType: !3360, size: 64, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3362, line: 11, size: 128, elements: !3363)
!3362 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3363 = !{!3364, !3365}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3361, file: !3362, line: 12, baseType: !415, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3361, file: !3362, line: 13, baseType: !3366, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3368, line: 56, size: 1344, elements: !3369)
!3368 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3367, file: !3368, line: 61, baseType: !398, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3367, file: !3368, line: 62, baseType: !398, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3367, file: !3368, line: 63, baseType: !398, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3367, file: !3368, line: 64, baseType: !398, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3367, file: !3368, line: 65, baseType: !398, size: 64, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3367, file: !3368, line: 66, baseType: !398, size: 64, offset: 320)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3367, file: !3368, line: 68, baseType: !398, size: 64, offset: 384)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3367, file: !3368, line: 69, baseType: !398, size: 64, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3367, file: !3368, line: 70, baseType: !398, size: 64, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3367, file: !3368, line: 71, baseType: !398, size: 64, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3367, file: !3368, line: 72, baseType: !398, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3367, file: !3368, line: 73, baseType: !398, size: 64, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3367, file: !3368, line: 74, baseType: !398, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3367, file: !3368, line: 75, baseType: !398, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3367, file: !3368, line: 76, baseType: !398, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3367, file: !3368, line: 81, baseType: !398, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3367, file: !3368, line: 83, baseType: !398, size: 64, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3367, file: !3368, line: 84, baseType: !398, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3367, file: !3368, line: 85, baseType: !398, size: 64, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3367, file: !3368, line: 86, baseType: !398, size: 64, offset: 1216)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3367, file: !3368, line: 87, baseType: !398, size: 64, offset: 1280)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3343, file: !3283, line: 96, baseType: !355, size: 32, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3288, file: !3283, line: 308, baseType: !3393, size: 4608, align: 512)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3283, line: 289, size: 4608, align: 512, elements: !3394)
!3394 = !{!3395, !3396, !3403}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3393, file: !3283, line: 290, baseType: !3306, size: 4096, align: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3393, file: !3283, line: 291, baseType: !3397, size: 512, offset: 4096)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3283, line: 268, size: 512, elements: !3398)
!3398 = !{!3399, !3400, !3401}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3397, file: !3283, line: 269, baseType: !455, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3397, file: !3283, line: 270, baseType: !455, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3397, file: !3283, line: 271, baseType: !3402, size: 384, offset: 128)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 384, elements: !2450)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3393, file: !3283, line: 292, baseType: !3404, offset: 4608)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !2546)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3288, file: !3283, line: 309, baseType: !3406, size: 32768)
!3406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 32768, elements: !3407)
!3407 = !{!3408}
!3408 = !DISubrange(count: 4096)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !300, file: !301, line: 704, baseType: !373, size: 192, offset: 512)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !300, file: !301, line: 706, baseType: !317, size: 32, offset: 704)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !300, file: !301, line: 707, baseType: !317, size: 32, offset: 736)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !300, file: !301, line: 708, baseType: !3413, size: 5568, offset: 768)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3414)
!3414 = !{!3415, !3416, !3418, !3421, !3422, !3473, !3564, !3565, !3566, !3567, !3568, !3577, !3682, !3695, !3890, !3891, !3895, !3897, !3898, !3899, !3903, !3909, !3910, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3951, !3952, !3953, !3956, !3959, !3960, !3961, !3962}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3413, file: !237, line: 462, baseType: !1987, size: 512)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3413, file: !237, line: 463, baseType: !3417, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3413, file: !237, line: 465, baseType: !3419, size: 64, offset: 576)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3413, file: !237, line: 467, baseType: !726, size: 64, offset: 640)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3413, file: !237, line: 468, baseType: !3423, size: 64, offset: 704)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3433, !3438, !3442}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3425, file: !237, line: 88, baseType: !726, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3425, file: !237, line: 89, baseType: !2066, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3425, file: !237, line: 90, baseType: !3430, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!317, !3417, !2021}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3425, file: !237, line: 91, baseType: !3434, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!751, !3417, !3437, !2136, !2137}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3425, file: !237, line: 93, baseType: !3439, size: 64, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3417}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3425, file: !237, line: 95, baseType: !3443, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3446)
!3446 = !{!3447, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3445, file: !244, line: 279, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!317, !3417}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3445, file: !244, line: 280, baseType: !3439, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3445, file: !244, line: 281, baseType: !3448, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3445, file: !244, line: 282, baseType: !3448, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3445, file: !244, line: 283, baseType: !3448, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3445, file: !244, line: 284, baseType: !3448, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3445, file: !244, line: 285, baseType: !3448, size: 64, offset: 384)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3445, file: !244, line: 286, baseType: !3448, size: 64, offset: 448)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3445, file: !244, line: 287, baseType: !3448, size: 64, offset: 512)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3445, file: !244, line: 288, baseType: !3448, size: 64, offset: 576)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3445, file: !244, line: 289, baseType: !3448, size: 64, offset: 640)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3445, file: !244, line: 290, baseType: !3448, size: 64, offset: 704)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3445, file: !244, line: 291, baseType: !3448, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3445, file: !244, line: 292, baseType: !3448, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3445, file: !244, line: 293, baseType: !3448, size: 64, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3445, file: !244, line: 294, baseType: !3448, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3445, file: !244, line: 295, baseType: !3448, size: 64, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3445, file: !244, line: 296, baseType: !3448, size: 64, offset: 1088)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3445, file: !244, line: 297, baseType: !3448, size: 64, offset: 1152)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3445, file: !244, line: 298, baseType: !3448, size: 64, offset: 1216)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3445, file: !244, line: 299, baseType: !3448, size: 64, offset: 1280)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3445, file: !244, line: 300, baseType: !3448, size: 64, offset: 1344)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3445, file: !244, line: 301, baseType: !3448, size: 64, offset: 1408)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3413, file: !237, line: 470, baseType: !3474, size: 64, offset: 768)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3476, line: 82, size: 1408, elements: !3477)
!3476 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3559, !3562, !3563}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3475, file: !3476, line: 83, baseType: !726, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3475, file: !3476, line: 84, baseType: !726, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3475, file: !3476, line: 85, baseType: !3417, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3475, file: !3476, line: 86, baseType: !2066, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3475, file: !3476, line: 87, baseType: !2066, size: 64, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3475, file: !3476, line: 88, baseType: !2066, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3475, file: !3476, line: 90, baseType: !3485, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!317, !3417, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3510, !3523, !3524, !3525, !3526, !3527, !3535, !3536, !3537, !3538, !3539, !3540}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !231, line: 96, baseType: !726, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3489, file: !231, line: 97, baseType: !3474, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3489, file: !231, line: 99, baseType: !304, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3489, file: !231, line: 100, baseType: !726, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3489, file: !231, line: 102, baseType: !756, size: 8, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3489, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3489, file: !231, line: 105, baseType: !3498, size: 64, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3501, line: 262, size: 1600, elements: !3502)
!3501 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3502 = !{!3503, !3504, !3505, !3509}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3500, file: !3501, line: 263, baseType: !1549, size: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3500, file: !3501, line: 264, baseType: !1549, size: 256, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3500, file: !3501, line: 265, baseType: !3506, size: 1024, offset: 512)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 1024, elements: !3507)
!3507 = !{!3508}
!3508 = !DISubrange(count: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3500, file: !3501, line: 266, baseType: !2119, size: 64, offset: 1536)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3489, file: !231, line: 106, baseType: !3511, size: 64, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3501, line: 210, size: 256, elements: !3514)
!3514 = !{!3515, !3519, !3521, !3522}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3513, file: !3501, line: 211, baseType: !3516, size: 72)
!3516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 72, elements: !3517)
!3517 = !{!3518}
!3518 = !DISubrange(count: 9)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3513, file: !3501, line: 212, baseType: !3520, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3501, line: 14, baseType: !398)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3513, file: !3501, line: 213, baseType: !356, size: 32, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3513, file: !3501, line: 214, baseType: !356, size: 32, offset: 224)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3489, file: !231, line: 108, baseType: !3448, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3489, file: !231, line: 109, baseType: !3439, size: 64, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3489, file: !231, line: 110, baseType: !3448, size: 64, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3489, file: !231, line: 111, baseType: !3439, size: 64, offset: 640)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3489, file: !231, line: 112, baseType: !3528, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!317, !3417, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3532)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3533)
!3533 = !{!3534}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3532, file: !244, line: 51, baseType: !317, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3489, file: !231, line: 113, baseType: !3448, size: 64, offset: 768)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3489, file: !231, line: 114, baseType: !2066, size: 64, offset: 832)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3489, file: !231, line: 115, baseType: !2066, size: 64, offset: 896)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3489, file: !231, line: 117, baseType: !3443, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3489, file: !231, line: 118, baseType: !3439, size: 64, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3489, file: !231, line: 120, baseType: !3541, size: 64, offset: 1088)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3475, file: !3476, line: 91, baseType: !3430, size: 64, offset: 448)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3475, file: !3476, line: 92, baseType: !3448, size: 64, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3475, file: !3476, line: 93, baseType: !3439, size: 64, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3475, file: !3476, line: 94, baseType: !3448, size: 64, offset: 640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3475, file: !3476, line: 95, baseType: !3439, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3475, file: !3476, line: 97, baseType: !3448, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3475, file: !3476, line: 98, baseType: !3448, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3475, file: !3476, line: 100, baseType: !3528, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3475, file: !3476, line: 101, baseType: !3448, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3475, file: !3476, line: 103, baseType: !3448, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3475, file: !3476, line: 105, baseType: !3448, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3475, file: !3476, line: 107, baseType: !3443, size: 64, offset: 1152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3475, file: !3476, line: 109, baseType: !3556, size: 64, offset: 1216)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3558)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3476, line: 109, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3475, file: !3476, line: 111, baseType: !3560, size: 64, offset: 1280)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3476, line: 111, flags: DIFlagFwdDecl)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3475, file: !3476, line: 112, baseType: !915, offset: 1344)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3475, file: !3476, line: 114, baseType: !756, size: 8, offset: 1344)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3413, file: !237, line: 471, baseType: !3488, size: 64, offset: 832)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3413, file: !237, line: 473, baseType: !291, size: 64, offset: 896)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3413, file: !237, line: 475, baseType: !291, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3413, file: !237, line: 480, baseType: !1280, size: 192, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3413, file: !237, line: 484, baseType: !3569, size: 576, offset: 1216)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3569, file: !237, line: 362, baseType: !448, size: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3569, file: !237, line: 363, baseType: !448, size: 128, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3569, file: !237, line: 364, baseType: !448, size: 128, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3569, file: !237, line: 365, baseType: !448, size: 128, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3569, file: !237, line: 366, baseType: !756, size: 8, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3569, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3413, file: !237, line: 485, baseType: !3578, size: 2304, offset: 1792)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3675, !3679}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3578, file: !244, line: 566, baseType: !3531, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3578, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3578, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3578, file: !244, line: 569, baseType: !756, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3578, file: !244, line: 570, baseType: !756, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3578, file: !244, line: 571, baseType: !756, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3578, file: !244, line: 572, baseType: !756, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3578, file: !244, line: 573, baseType: !756, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3578, file: !244, line: 574, baseType: !756, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3578, file: !244, line: 575, baseType: !756, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3578, file: !244, line: 576, baseType: !756, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3578, file: !244, line: 577, baseType: !355, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3578, file: !244, line: 578, baseType: !1013, offset: 96)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3578, file: !244, line: 580, baseType: !448, size: 128, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3578, file: !244, line: 581, baseType: !2682, size: 192, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3578, file: !244, line: 582, baseType: !3596, size: 64, offset: 448)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3598, line: 43, size: 1472, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3607, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3597, file: !3598, line: 44, baseType: !726, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3597, file: !3598, line: 45, baseType: !317, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3597, file: !3598, line: 46, baseType: !448, size: 128, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3597, file: !3598, line: 47, baseType: !1013, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3597, file: !3598, line: 48, baseType: !3605, size: 64, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3597, file: !3598, line: 49, baseType: !3608, size: 320, offset: 320)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3609, line: 11, size: 320, elements: !3610)
!3609 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3610 = !{!3611, !3612, !3613, !3618}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3608, file: !3609, line: 16, baseType: !909, size: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3608, file: !3609, line: 17, baseType: !398, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3608, file: !3609, line: 18, baseType: !3614, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{null, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3608, file: !3609, line: 19, baseType: !355, size: 32, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3597, file: !3598, line: 50, baseType: !398, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3597, file: !3598, line: 51, baseType: !503, size: 64, offset: 704)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3597, file: !3598, line: 52, baseType: !503, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3597, file: !3598, line: 53, baseType: !503, size: 64, offset: 832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3597, file: !3598, line: 54, baseType: !503, size: 64, offset: 896)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3597, file: !3598, line: 55, baseType: !503, size: 64, offset: 960)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3597, file: !3598, line: 56, baseType: !398, size: 64, offset: 1024)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3597, file: !3598, line: 57, baseType: !398, size: 64, offset: 1088)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3597, file: !3598, line: 58, baseType: !398, size: 64, offset: 1152)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3597, file: !3598, line: 59, baseType: !398, size: 64, offset: 1216)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3597, file: !3598, line: 60, baseType: !398, size: 64, offset: 1280)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3597, file: !3598, line: 61, baseType: !3417, size: 64, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3597, file: !3598, line: 62, baseType: !756, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3597, file: !3598, line: 63, baseType: !756, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3578, file: !244, line: 583, baseType: !756, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3578, file: !244, line: 584, baseType: !756, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3578, file: !244, line: 585, baseType: !756, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3578, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3578, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3578, file: !244, line: 592, baseType: !495, size: 512, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3578, file: !244, line: 593, baseType: !455, size: 64, offset: 1088)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3578, file: !244, line: 594, baseType: !1671, size: 256, offset: 1152)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3578, file: !244, line: 595, baseType: !1512, size: 128, offset: 1408)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3578, file: !244, line: 596, baseType: !3605, size: 64, offset: 1536)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3578, file: !244, line: 597, baseType: !423, size: 32, offset: 1600)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3578, file: !244, line: 598, baseType: !423, size: 32, offset: 1632)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3578, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3578, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3578, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3578, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3578, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3578, file: !244, line: 604, baseType: !756, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3578, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3578, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3578, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3578, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3578, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3578, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3578, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3578, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3578, file: !244, line: 613, baseType: !317, size: 32, offset: 1792)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3578, file: !244, line: 614, baseType: !317, size: 32, offset: 1824)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3578, file: !244, line: 615, baseType: !455, size: 64, offset: 1856)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3578, file: !244, line: 616, baseType: !455, size: 64, offset: 1920)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3578, file: !244, line: 617, baseType: !455, size: 64, offset: 1984)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3578, file: !244, line: 618, baseType: !455, size: 64, offset: 2048)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3578, file: !244, line: 620, baseType: !3666, size: 64, offset: 2112)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3667, file: !244, line: 537, baseType: !1013)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3667, file: !244, line: 538, baseType: !7, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3667, file: !244, line: 540, baseType: !448, size: 128, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3667, file: !244, line: 543, baseType: !3673, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3578, file: !244, line: 621, baseType: !3676, size: 64, offset: 2176)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !3417, !2407}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3578, file: !244, line: 622, baseType: !3680, size: 64, offset: 2240)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3413, file: !237, line: 486, baseType: !3683, size: 64, offset: 4096)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3692, !3693, !3694}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3684, file: !244, line: 643, baseType: !3445, size: 1472)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3684, file: !244, line: 644, baseType: !3448, size: 64, offset: 1472)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3684, file: !244, line: 645, baseType: !3689, size: 64, offset: 1536)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !3417, !756}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3684, file: !244, line: 646, baseType: !3448, size: 64, offset: 1600)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3684, file: !244, line: 647, baseType: !3439, size: 64, offset: 1664)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3684, file: !244, line: 648, baseType: !3439, size: 64, offset: 1728)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3413, file: !237, line: 493, baseType: !3696, size: 64, offset: 4160)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3874, !3875, !3876, !3877, !3878, !3879, !3882, !3883, !3884, !3885, !3886, !3887, !3888}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3697, file: !258, line: 163, baseType: !448, size: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3697, file: !258, line: 164, baseType: !726, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3697, file: !258, line: 165, baseType: !3702, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3705)
!3705 = !{!3706, !3824, !3835, !3840, !3844, !3851, !3855, !3859, !3866, !3870}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3704, file: !258, line: 106, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!317, !3696, !3710, !257}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3712, line: 51, size: 1344, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !{!3714, !3715, !3717, !3718, !3808, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3711, file: !3712, line: 52, baseType: !726, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3711, file: !3712, line: 53, baseType: !3716, size: 32, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3712, line: 28, baseType: !355)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3711, file: !3712, line: 54, baseType: !726, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3711, file: !3712, line: 55, baseType: !3719, size: 192, offset: 192)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3720, line: 17, size: 192, elements: !3721)
!3720 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3721 = !{!3722, !3724, !3807}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3719, file: !3720, line: 18, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3719, file: !3720, line: 19, baseType: !3725, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3720, line: 110, size: 1152, elements: !3728)
!3728 = !{!3729, !3733, !3737, !3743, !3749, !3753, !3757, !3762, !3766, !3767, !3771, !3775, !3779, !3790, !3791, !3792, !3793, !3803}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3727, file: !3720, line: 111, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3723, !3723}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3727, file: !3720, line: 112, baseType: !3734, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3723}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3727, file: !3720, line: 113, baseType: !3738, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!756, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3719)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3727, file: !3720, line: 114, baseType: !3744, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!2119, !3741, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3413)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3727, file: !3720, line: 116, baseType: !3750, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!756, !3741, !726}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3727, file: !3720, line: 118, baseType: !3754, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!317, !3741, !726, !7, !291, !845}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3727, file: !3720, line: 123, baseType: !3758, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!317, !3741, !726, !3761, !845}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3727, file: !3720, line: 126, baseType: !3763, size: 64, offset: 448)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!726, !3741}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3727, file: !3720, line: 127, baseType: !3763, size: 64, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3727, file: !3720, line: 128, baseType: !3768, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!3723, !3741}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3727, file: !3720, line: 130, baseType: !3772, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!3723, !3741, !3723}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3727, file: !3720, line: 133, baseType: !3776, size: 64, offset: 704)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!3723, !3741, !726}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3727, file: !3720, line: 135, baseType: !3780, size: 64, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!317, !3741, !726, !726, !7, !7, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3720, line: 43, size: 640, elements: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3784, file: !3720, line: 44, baseType: !3723, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3784, file: !3720, line: 45, baseType: !7, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3784, file: !3720, line: 46, baseType: !3789, size: 512, offset: 128)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 512, elements: !533)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3727, file: !3720, line: 140, baseType: !3772, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3727, file: !3720, line: 143, baseType: !3768, size: 64, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3727, file: !3720, line: 145, baseType: !3730, size: 64, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3727, file: !3720, line: 146, baseType: !3794, size: 64, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!317, !3741, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3720, line: 29, size: 128, elements: !3799)
!3799 = !{!3800, !3801, !3802}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3798, file: !3720, line: 30, baseType: !7, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3798, file: !3720, line: 31, baseType: !7, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3798, file: !3720, line: 32, baseType: !3741, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3727, file: !3720, line: 148, baseType: !3804, size: 64, offset: 1088)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!317, !3741, !3417}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3719, file: !3720, line: 20, baseType: !3417, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3711, file: !3712, line: 57, baseType: !3809, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3712, line: 31, size: 704, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3815, !3816}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3810, file: !3712, line: 32, baseType: !751, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3810, file: !3712, line: 33, baseType: !317, size: 32, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3810, file: !3712, line: 34, baseType: !291, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3810, file: !3712, line: 35, baseType: !3809, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3810, file: !3712, line: 43, baseType: !2081, size: 448, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3711, file: !3712, line: 58, baseType: !3809, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3711, file: !3712, line: 59, baseType: !3710, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3711, file: !3712, line: 60, baseType: !3710, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3711, file: !3712, line: 61, baseType: !3710, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3711, file: !3712, line: 63, baseType: !1987, size: 512, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3711, file: !3712, line: 65, baseType: !398, size: 64, offset: 1216)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3711, file: !3712, line: 66, baseType: !291, size: 64, offset: 1280)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3704, file: !258, line: 108, baseType: !3825, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!317, !3696, !3828, !257}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3830)
!3830 = !{!3831, !3832, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3829, file: !258, line: 64, baseType: !3723, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3829, file: !258, line: 65, baseType: !317, size: 32, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3829, file: !258, line: 66, baseType: !3834, size: 512, offset: 96)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 512, elements: !1559)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3704, file: !258, line: 110, baseType: !3836, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!317, !3696, !7, !3839}
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !293, line: 164, baseType: !398)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3704, file: !258, line: 111, baseType: !3841, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3696, !7}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3704, file: !258, line: 112, baseType: !3845, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!317, !3696, !3710, !3848, !7, !3850, !1532}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3704, file: !258, line: 117, baseType: !3852, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!317, !3696, !7, !7, !291}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3704, file: !258, line: 119, baseType: !3856, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3696, !7, !7}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3704, file: !258, line: 121, baseType: !3860, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!317, !3696, !3863, !756}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3865, line: 11, flags: DIFlagFwdDecl)
!3865 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3704, file: !258, line: 122, baseType: !3867, size: 64, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !3696, !3863}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3704, file: !258, line: 123, baseType: !3871, size: 64, offset: 576)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!317, !3696, !3828, !3850, !1532}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3697, file: !258, line: 166, baseType: !291, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3697, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3697, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3697, file: !258, line: 171, baseType: !3723, size: 64, offset: 384)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3697, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3697, file: !258, line: 173, baseType: !3880, size: 64, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3697, file: !258, line: 175, baseType: !3696, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3697, file: !258, line: 182, baseType: !3839, size: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3697, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3697, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3697, file: !258, line: 185, baseType: !1009, size: 128, offset: 768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3697, file: !258, line: 186, baseType: !1280, size: 192, offset: 896)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3697, file: !258, line: 187, baseType: !3889, offset: 1088)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2710)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3413, file: !237, line: 499, baseType: !448, size: 128, offset: 4224)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3413, file: !237, line: 502, baseType: !3892, size: 64, offset: 4352)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3894)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3413, file: !237, line: 504, baseType: !3896, size: 64, offset: 4416)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3413, file: !237, line: 505, baseType: !455, size: 64, offset: 4480)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3413, file: !237, line: 510, baseType: !455, size: 64, offset: 4544)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3413, file: !237, line: 511, baseType: !3900, size: 64, offset: 4608)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3902)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3413, file: !237, line: 513, baseType: !3904, size: 64, offset: 4672)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3906)
!3906 = !{!3907, !3908}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3905, file: !237, line: 293, baseType: !7, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3905, file: !237, line: 294, baseType: !398, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3413, file: !237, line: 515, baseType: !448, size: 128, offset: 4736)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3413, file: !237, line: 526, baseType: !3911, offset: 4864)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3912, line: 5, elements: !385)
!3912 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3413, file: !237, line: 528, baseType: !3710, size: 64, offset: 4864)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3413, file: !237, line: 529, baseType: !3723, size: 64, offset: 4928)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3413, file: !237, line: 534, baseType: !779, size: 32, offset: 4992)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3413, file: !237, line: 535, baseType: !355, size: 32, offset: 5024)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3413, file: !237, line: 537, baseType: !1013, offset: 5056)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3413, file: !237, line: 538, baseType: !448, size: 128, offset: 5056)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3413, file: !237, line: 540, baseType: !3920, size: 64, offset: 5184)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3922, line: 54, size: 960, elements: !3923)
!3922 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3923 = !{!3924, !3925, !3926, !3927, !3928, !3929, !3930, !3934, !3938, !3939, !3940, !3941, !3945, !3949, !3950}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3921, file: !3922, line: 55, baseType: !726, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3921, file: !3922, line: 56, baseType: !304, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3921, file: !3922, line: 58, baseType: !2066, size: 64, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3921, file: !3922, line: 59, baseType: !2066, size: 64, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3921, file: !3922, line: 60, baseType: !1993, size: 64, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3921, file: !3922, line: 62, baseType: !3430, size: 64, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3921, file: !3922, line: 63, baseType: !3931, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!751, !3417, !3437}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3921, file: !3922, line: 65, baseType: !3935, size: 64, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3920}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3921, file: !3922, line: 66, baseType: !3439, size: 64, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3921, file: !3922, line: 68, baseType: !3448, size: 64, offset: 576)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3921, file: !3922, line: 70, baseType: !2102, size: 64, offset: 640)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3921, file: !3922, line: 71, baseType: !3942, size: 64, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!2119, !3417}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3921, file: !3922, line: 73, baseType: !3946, size: 64, offset: 768)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !3417, !2136, !2137}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3921, file: !3922, line: 75, baseType: !3443, size: 64, offset: 832)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3921, file: !3922, line: 77, baseType: !3560, size: 64, offset: 896)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3413, file: !237, line: 541, baseType: !2066, size: 64, offset: 5248)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3413, file: !237, line: 543, baseType: !3439, size: 64, offset: 5312)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3413, file: !237, line: 544, baseType: !3954, size: 64, offset: 5376)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3413, file: !237, line: 545, baseType: !3957, size: 64, offset: 5440)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3413, file: !237, line: 547, baseType: !756, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3413, file: !237, line: 548, baseType: !756, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3413, file: !237, line: 549, baseType: !756, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3413, file: !237, line: 550, baseType: !756, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !300, file: !301, line: 709, baseType: !398, size: 64, offset: 6336)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !300, file: !301, line: 713, baseType: !317, size: 32, offset: 6400)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 714, baseType: !3966, size: 384, offset: 6432)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 384, elements: !3967)
!3967 = !{!3968}
!3968 = !DISubrange(count: 48)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !300, file: !301, line: 715, baseType: !2682, size: 192, offset: 6848)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !300, file: !301, line: 717, baseType: !1280, size: 192, offset: 7040)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !300, file: !301, line: 718, baseType: !448, size: 128, offset: 7232)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !300, file: !301, line: 720, baseType: !3973, size: 64, offset: 7360)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !301, line: 618, size: 832, elements: !3975)
!3975 = !{!3976, !3980, !3981, !3985, !3986, !3987, !3988, !3992, !3993, !3996, !3997, !4000, !4003}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !3974, file: !301, line: 619, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!317, !299}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !3974, file: !301, line: 621, baseType: !3977, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !3974, file: !301, line: 622, baseType: !3982, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !299, !317}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !3974, file: !301, line: 623, baseType: !3977, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !3974, file: !301, line: 624, baseType: !3982, size: 64, offset: 256)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !3974, file: !301, line: 625, baseType: !3977, size: 64, offset: 320)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !3974, file: !301, line: 627, baseType: !3989, size: 64, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !299}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !3974, file: !301, line: 628, baseType: !3989, size: 64, offset: 448)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !3974, file: !301, line: 631, baseType: !3994, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !301, line: 631, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !3974, file: !301, line: 632, baseType: !3994, size: 64, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !3974, file: !301, line: 633, baseType: !3998, size: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !301, line: 633, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !3974, file: !301, line: 634, baseType: !4001, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !301, line: 634, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !3974, file: !301, line: 635, baseType: !4001, size: 64, offset: 768)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !300, file: !301, line: 721, baseType: !4005, size: 64, offset: 7424)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4007)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !301, line: 664, size: 192, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012, !4013, !4014}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4007, file: !301, line: 665, baseType: !455, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4007, file: !301, line: 666, baseType: !317, size: 32, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4007, file: !301, line: 667, baseType: !337, size: 16, offset: 96)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4007, file: !301, line: 668, baseType: !337, size: 16, offset: 112)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4007, file: !301, line: 669, baseType: !337, size: 16, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4007, file: !301, line: 670, baseType: !337, size: 16, offset: 144)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !300, file: !301, line: 723, baseType: !3696, size: 64, offset: 7488)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !295, file: !296, line: 18, baseType: !4017, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lgs8gxx_config", file: !4020, line: 25, size: 192, elements: !4021)
!4020 = !DIFile(filename: "drivers/media/dvb-frontends/lgs8gxx.h", directory: "/home/lizy2001/genbc/linux")
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "prod", scope: !4019, file: !4020, line: 28, baseType: !340, size: 8)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4019, file: !4020, line: 31, baseType: !340, size: 8, offset: 8)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "serial_ts", scope: !4019, file: !4020, line: 34, baseType: !340, size: 8, offset: 16)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clk_pol", scope: !4019, file: !4020, line: 37, baseType: !340, size: 8, offset: 24)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clk_gated", scope: !4019, file: !4020, line: 40, baseType: !340, size: 8, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "if_clk_freq", scope: !4019, file: !4020, line: 43, baseType: !355, size: 32, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "if_freq", scope: !4019, file: !4020, line: 46, baseType: !355, size: 32, offset: 96)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ext_adc", scope: !4019, file: !4020, line: 49, baseType: !340, size: 8, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "adc_signed", scope: !4019, file: !4020, line: 52, baseType: !340, size: 8, offset: 136)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "if_neg_edge", scope: !4019, file: !4020, line: 55, baseType: !340, size: 8, offset: 144)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "if_neg_center", scope: !4019, file: !4020, line: 58, baseType: !340, size: 8, offset: 152)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "adc_vpp", scope: !4019, file: !4020, line: 62, baseType: !340, size: 8, offset: 160)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_address", scope: !4019, file: !4020, line: 65, baseType: !340, size: 8, offset: 168)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !295, file: !296, line: 19, baseType: !4036, size: 10240, offset: 128)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4037)
!4037 = !{!4038, !4039, !4310, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4354, !4355}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4036, file: !51, line: 687, baseType: !2278, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4036, file: !51, line: 688, baseType: !4040, size: 6016, offset: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4041)
!4041 = !{!4042, !4054, !4056, !4061, !4062, !4063, !4067, !4068, !4074, !4079, !4083, !4084, !4094, !4171, !4175, !4179, !4184, !4185, !4186, !4187, !4197, !4208, !4212, !4216, !4220, !4224, !4228, !4232, !4233, !4234, !4238, !4292}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4040, file: !51, line: 436, baseType: !4043, size: 1280)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4043, file: !51, line: 339, baseType: !3506, size: 1024)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4043, file: !51, line: 340, baseType: !355, size: 32, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4043, file: !51, line: 341, baseType: !355, size: 32, offset: 1056)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4043, file: !51, line: 342, baseType: !355, size: 32, offset: 1088)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4043, file: !51, line: 343, baseType: !355, size: 32, offset: 1120)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4043, file: !51, line: 344, baseType: !355, size: 32, offset: 1152)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4043, file: !51, line: 345, baseType: !355, size: 32, offset: 1184)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4043, file: !51, line: 346, baseType: !355, size: 32, offset: 1216)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4043, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4040, file: !51, line: 438, baseType: !4055, size: 64, offset: 1280)
!4055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !533)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4040, file: !51, line: 440, baseType: !4057, size: 64, offset: 1344)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !4060}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4040, file: !51, line: 441, baseType: !4057, size: 64, offset: 1408)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4040, file: !51, line: 442, baseType: !4057, size: 64, offset: 1472)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4040, file: !51, line: 444, baseType: !4064, size: 64, offset: 1536)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!317, !4060}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4040, file: !51, line: 445, baseType: !4064, size: 64, offset: 1600)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4040, file: !51, line: 447, baseType: !4069, size: 64, offset: 1664)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!317, !4060, !4072, !317}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4040, file: !51, line: 450, baseType: !4075, size: 64, offset: 1728)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!317, !4060, !756, !7, !1532, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4040, file: !51, line: 457, baseType: !4080, size: 64, offset: 1792)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!50, !4060}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4040, file: !51, line: 460, baseType: !4064, size: 64, offset: 1856)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4040, file: !51, line: 461, baseType: !4085, size: 64, offset: 1920)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!317, !4060, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4090)
!4090 = !{!4091, !4092, !4093}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4089, file: !51, line: 70, baseType: !317, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4089, file: !51, line: 71, baseType: !317, size: 32, offset: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4089, file: !51, line: 72, baseType: !317, size: 32, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4040, file: !51, line: 463, baseType: !4095, size: 64, offset: 1984)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!317, !4060, !4098}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4164, !4165, !4166, !4167, !4168, !4169, !4170}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4099, file: !51, line: 587, baseType: !355, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4099, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4099, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4099, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4099, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4099, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4099, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4099, file: !51, line: 595, baseType: !355, size: 32, offset: 224)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4099, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4099, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4099, file: !51, line: 598, baseType: !355, size: 32, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4099, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4099, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4099, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4099, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4099, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4099, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4099, file: !51, line: 610, baseType: !340, size: 8, offset: 544)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4099, file: !51, line: 611, baseType: !340, size: 8, offset: 552)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4099, file: !51, line: 612, baseType: !340, size: 8, offset: 560)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4099, file: !51, line: 613, baseType: !355, size: 32, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4099, file: !51, line: 614, baseType: !355, size: 32, offset: 608)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4099, file: !51, line: 615, baseType: !340, size: 8, offset: 640)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4099, file: !51, line: 621, baseType: !4125, size: 384, offset: 672)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4126, size: 384, elements: !921)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4099, file: !51, line: 616, size: 128, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4126, file: !51, line: 617, baseType: !340, size: 8)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4126, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4126, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4126, file: !51, line: 620, baseType: !340, size: 8, offset: 96)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4099, file: !51, line: 624, baseType: !355, size: 32, offset: 1056)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4099, file: !51, line: 627, baseType: !355, size: 32, offset: 1088)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4099, file: !51, line: 630, baseType: !340, size: 8, offset: 1120)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4099, file: !51, line: 631, baseType: !340, size: 8, offset: 1128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4099, file: !51, line: 632, baseType: !340, size: 8, offset: 1136)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4099, file: !51, line: 633, baseType: !340, size: 8, offset: 1144)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4099, file: !51, line: 634, baseType: !340, size: 8, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4099, file: !51, line: 635, baseType: !340, size: 8, offset: 1160)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4099, file: !51, line: 637, baseType: !340, size: 8, offset: 1168)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4099, file: !51, line: 638, baseType: !340, size: 8, offset: 1176)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4099, file: !51, line: 639, baseType: !340, size: 8, offset: 1184)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4099, file: !51, line: 640, baseType: !340, size: 8, offset: 1192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4099, file: !51, line: 641, baseType: !340, size: 8, offset: 1200)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4099, file: !51, line: 642, baseType: !340, size: 8, offset: 1208)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4099, file: !51, line: 643, baseType: !340, size: 8, offset: 1216)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4099, file: !51, line: 644, baseType: !340, size: 8, offset: 1224)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4099, file: !51, line: 645, baseType: !340, size: 8, offset: 1232)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4099, file: !51, line: 647, baseType: !355, size: 32, offset: 1248)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4099, file: !51, line: 650, baseType: !4151, size: 296, offset: 1280)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4152)
!4152 = !{!4153, !4154}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4151, file: !6, line: 826, baseType: !330, size: 8)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4151, file: !6, line: 827, baseType: !4155, size: 288, offset: 8)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4156, size: 288, elements: !2351)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4157)
!4157 = !{!4158, !4159}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4156, file: !6, line: 804, baseType: !330, size: 8)
!4159 = !DIDerivedType(tag: DW_TAG_member, scope: !4156, file: !6, line: 805, baseType: !4160, size: 64, offset: 8)
!4160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4156, file: !6, line: 805, size: 64, elements: !4161)
!4161 = !{!4162, !4163}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4160, file: !6, line: 806, baseType: !456, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4160, file: !6, line: 807, baseType: !486, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4099, file: !51, line: 651, baseType: !4151, size: 296, offset: 1576)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4099, file: !51, line: 652, baseType: !4151, size: 296, offset: 1872)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4099, file: !51, line: 653, baseType: !4151, size: 296, offset: 2168)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4099, file: !51, line: 654, baseType: !4151, size: 296, offset: 2464)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4099, file: !51, line: 655, baseType: !4151, size: 296, offset: 2760)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4099, file: !51, line: 656, baseType: !4151, size: 296, offset: 3056)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4099, file: !51, line: 657, baseType: !4151, size: 296, offset: 3352)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4040, file: !51, line: 466, baseType: !4172, size: 64, offset: 2048)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!317, !4060, !4078}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4040, file: !51, line: 467, baseType: !4176, size: 64, offset: 2112)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!317, !4060, !2749}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4040, file: !51, line: 468, baseType: !4180, size: 64, offset: 2176)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!317, !4060, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4040, file: !51, line: 469, baseType: !4180, size: 64, offset: 2240)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4040, file: !51, line: 470, baseType: !4176, size: 64, offset: 2304)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4040, file: !51, line: 472, baseType: !4064, size: 64, offset: 2368)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4040, file: !51, line: 473, baseType: !4188, size: 64, offset: 2432)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!317, !4060, !4191}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4193)
!4193 = !{!4194, !4196}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4192, file: !6, line: 174, baseType: !4195, size: 48)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 48, elements: !2450)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4192, file: !6, line: 175, baseType: !330, size: 8, offset: 48)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4040, file: !51, line: 474, baseType: !4198, size: 64, offset: 2496)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!317, !4060, !4201}
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4203)
!4203 = !{!4204, !4206, !4207}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4202, file: !6, line: 196, baseType: !4205, size: 32)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 32, elements: !2351)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4202, file: !6, line: 197, baseType: !330, size: 8, offset: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4202, file: !6, line: 198, baseType: !317, size: 32, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4040, file: !51, line: 475, baseType: !4209, size: 64, offset: 2560)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!317, !4060, !171}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4040, file: !51, line: 477, baseType: !4213, size: 64, offset: 2624)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!317, !4060, !78}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4040, file: !51, line: 478, baseType: !4217, size: 64, offset: 2688)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!317, !4060, !73}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4040, file: !51, line: 480, baseType: !4221, size: 64, offset: 2752)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!317, !4060, !415}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4040, file: !51, line: 481, baseType: !4225, size: 64, offset: 2816)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!317, !4060, !398}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4040, file: !51, line: 482, baseType: !4229, size: 64, offset: 2880)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!317, !4060, !317}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4040, file: !51, line: 483, baseType: !4229, size: 64, offset: 2944)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4040, file: !51, line: 484, baseType: !4064, size: 64, offset: 3008)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4040, file: !51, line: 490, baseType: !4235, size: 64, offset: 3072)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!175, !4060}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4040, file: !51, line: 492, baseType: !4239, size: 2304, offset: 3136)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4240)
!4240 = !{!4241, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4268, !4272, !4273, !4274, !4275, !4276, !4277, !4282, !4287, !4291}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4239, file: !51, line: 228, baseType: !4242, size: 1216)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4247, !4248, !4249, !4250}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4242, file: !51, line: 89, baseType: !3506, size: 1024)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4242, file: !51, line: 91, baseType: !355, size: 32, offset: 1024)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4242, file: !51, line: 92, baseType: !355, size: 32, offset: 1056)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4242, file: !51, line: 93, baseType: !355, size: 32, offset: 1088)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4242, file: !51, line: 95, baseType: !355, size: 32, offset: 1120)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4242, file: !51, line: 96, baseType: !355, size: 32, offset: 1152)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4242, file: !51, line: 97, baseType: !355, size: 32, offset: 1184)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4239, file: !51, line: 230, baseType: !4057, size: 64, offset: 1216)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4239, file: !51, line: 231, baseType: !4064, size: 64, offset: 1280)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4239, file: !51, line: 232, baseType: !4064, size: 64, offset: 1344)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4239, file: !51, line: 233, baseType: !4064, size: 64, offset: 1408)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4239, file: !51, line: 234, baseType: !4064, size: 64, offset: 1472)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4239, file: !51, line: 237, baseType: !4064, size: 64, offset: 1536)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4239, file: !51, line: 238, baseType: !4258, size: 64, offset: 1600)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!317, !4060, !4261}
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4267}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4262, file: !51, line: 115, baseType: !7, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4262, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4262, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4262, file: !51, line: 118, baseType: !455, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4239, file: !51, line: 240, baseType: !4269, size: 64, offset: 1664)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!317, !4060, !291}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4239, file: !51, line: 242, baseType: !4176, size: 64, offset: 1728)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4239, file: !51, line: 243, baseType: !4176, size: 64, offset: 1792)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4239, file: !51, line: 244, baseType: !4176, size: 64, offset: 1856)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4239, file: !51, line: 248, baseType: !4176, size: 64, offset: 1920)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4239, file: !51, line: 249, baseType: !4180, size: 64, offset: 1984)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4239, file: !51, line: 250, baseType: !4278, size: 64, offset: 2048)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!317, !4060, !4281}
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4239, file: !51, line: 258, baseType: !4283, size: 64, offset: 2112)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!317, !4060, !4286, !317}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4239, file: !51, line: 267, baseType: !4288, size: 64, offset: 2176)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!317, !4060, !355}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4239, file: !51, line: 268, baseType: !4288, size: 64, offset: 2240)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4040, file: !51, line: 493, baseType: !4293, size: 576, offset: 5440)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4294)
!4294 = !{!4295, !4299, !4303, !4304, !4305, !4306, !4307, !4308, !4309}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4293, file: !51, line: 304, baseType: !4296, size: 64)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4297)
!4297 = !{!4298}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4296, file: !51, line: 277, baseType: !751, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4293, file: !51, line: 306, baseType: !4300, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !4060, !4261}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4293, file: !51, line: 308, baseType: !4180, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4293, file: !51, line: 309, baseType: !4278, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4293, file: !51, line: 310, baseType: !4057, size: 64, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4293, file: !51, line: 311, baseType: !4057, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4293, file: !51, line: 312, baseType: !4057, size: 64, offset: 384)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4293, file: !51, line: 313, baseType: !4229, size: 64, offset: 448)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4293, file: !51, line: 316, baseType: !4269, size: 64, offset: 512)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4036, file: !51, line: 689, baseType: !4311, size: 64, offset: 6080)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4320, !4321, !4322, !4323, !4324, !4343}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4312, file: !272, line: 102, baseType: !317, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4312, file: !272, line: 103, baseType: !448, size: 128, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4312, file: !272, line: 104, baseType: !448, size: 128, offset: 192)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4312, file: !272, line: 105, baseType: !726, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4312, file: !272, line: 106, baseType: !4319, size: 48, offset: 384)
!4319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 48, elements: !2450)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4312, file: !272, line: 107, baseType: !291, size: 64, offset: 448)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4312, file: !272, line: 109, baseType: !3417, size: 64, offset: 512)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4312, file: !272, line: 111, baseType: !304, size: 64, offset: 576)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4312, file: !272, line: 113, baseType: !317, size: 32, offset: 640)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4312, file: !272, line: 114, baseType: !4325, size: 64, offset: 704)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4327)
!4327 = !{!4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4342}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4326, file: !272, line: 158, baseType: !448, size: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4326, file: !272, line: 159, baseType: !1729, size: 64, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4326, file: !272, line: 160, baseType: !4311, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4326, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4326, file: !272, line: 162, baseType: !317, size: 32, offset: 288)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4326, file: !272, line: 163, baseType: !355, size: 32, offset: 320)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4326, file: !272, line: 167, baseType: !317, size: 32, offset: 352)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4326, file: !272, line: 168, baseType: !317, size: 32, offset: 384)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4326, file: !272, line: 169, baseType: !317, size: 32, offset: 416)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4326, file: !272, line: 171, baseType: !1512, size: 128, offset: 448)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4326, file: !272, line: 173, baseType: !4339, size: 64, offset: 576)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!317, !627, !7, !291}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4326, file: !272, line: 187, baseType: !291, size: 64, offset: 640)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4312, file: !272, line: 115, baseType: !1280, size: 192, offset: 768)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4036, file: !51, line: 690, baseType: !291, size: 64, offset: 6144)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4036, file: !51, line: 691, baseType: !291, size: 64, offset: 6208)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4036, file: !51, line: 692, baseType: !291, size: 64, offset: 6272)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4036, file: !51, line: 693, baseType: !291, size: 64, offset: 6336)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4036, file: !51, line: 694, baseType: !291, size: 64, offset: 6400)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4036, file: !51, line: 695, baseType: !4099, size: 3648, offset: 6464)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4036, file: !51, line: 698, baseType: !4351, size: 64, offset: 10112)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!317, !291, !317, !317, !317}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4036, file: !51, line: 699, baseType: !317, size: 32, offset: 10176)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4036, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "curr_gi", scope: !295, file: !296, line: 20, baseType: !337, size: 16, offset: 10368)
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !293, line: 107, baseType: !455)
!4358 = !{!4359, !4411, !4416, !4421, !4423, !4428, !4433, !4438, !4443, !4448, !4451, !4456, !0, !4458, !4463, !4465}
!4359 = !DIGlobalVariableExpression(var: !4360, expr: !DIExpression())
!4360 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 31, type: !4361, isLocal: true, isDefinition: true, align: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4363, line: 69, size: 320, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4364 = !{!4365, !4366, !4367, !4383, !4385, !4389, !4390}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4362, file: !4363, line: 70, baseType: !726, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4362, file: !4363, line: 71, baseType: !304, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4362, file: !4363, line: 72, baseType: !4368, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4370)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4363, line: 47, size: 256, elements: !4371)
!4371 = !{!4372, !4373, !4378, !4382}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4370, file: !4363, line: 49, baseType: !7, size: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4370, file: !4363, line: 51, baseType: !4374, size: 64, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!317, !726, !4377}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4370, file: !4363, line: 53, baseType: !4379, size: 64, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!317, !751, !4377}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4370, file: !4363, line: 55, baseType: !733, size: 64, offset: 192)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4362, file: !4363, line: 73, baseType: !4384, size: 16, offset: 192)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4362, file: !4363, line: 74, baseType: !4386, size: 8, offset: 208)
!4386 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !338, line: 16, baseType: !4387)
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !324, line: 20, baseType: !4388)
!4388 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4362, file: !4363, line: 75, baseType: !340, size: 8, offset: 216)
!4390 = !DIDerivedType(tag: DW_TAG_member, scope: !4362, file: !4363, line: 76, baseType: !4391, size: 64, offset: 256)
!4391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4362, file: !4363, line: 76, size: 64, elements: !4392)
!4392 = !{!4393, !4394, !4401}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4391, file: !4363, line: 77, baseType: !291, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4391, file: !4363, line: 78, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4397)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4363, line: 86, size: 128, elements: !4398)
!4398 = !{!4399, !4400}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4397, file: !4363, line: 87, baseType: !7, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4397, file: !4363, line: 88, baseType: !751, size: 64, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4391, file: !4363, line: 79, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4404)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4363, line: 92, size: 256, elements: !4405)
!4405 = !{!4406, !4407, !4408, !4409, !4410}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4404, file: !4363, line: 94, baseType: !7, size: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4404, file: !4363, line: 95, baseType: !7, size: 32, offset: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4404, file: !4363, line: 96, baseType: !1532, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4404, file: !4363, line: 97, baseType: !4368, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4404, file: !4363, line: 98, baseType: !291, size: 64, offset: 192)
!4411 = !DIGlobalVariableExpression(var: !4412, expr: !DIExpression())
!4412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 31, type: !4413, isLocal: true, isDefinition: true, align: 8)
!4413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 216, elements: !4414)
!4414 = !{!4415}
!4415 = !DISubrange(count: 27)
!4416 = !DIGlobalVariableExpression(var: !4417, expr: !DIExpression())
!4417 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 32, type: !4418, isLocal: true, isDefinition: true, align: 8)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 520, elements: !4419)
!4419 = !{!4420}
!4420 = !DISubrange(count: 65)
!4421 = !DIGlobalVariableExpression(var: !4422, expr: !DIExpression())
!4422 = distinct !DIGlobalVariable(name: "__param_fake_signal_str", scope: !2, file: !3, line: 34, type: !4361, isLocal: true, isDefinition: true, align: 64)
!4423 = !DIGlobalVariableExpression(var: !4424, expr: !DIExpression())
!4424 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fake_signal_strtype222", scope: !2, file: !3, line: 34, type: !4425, isLocal: true, isDefinition: true, align: 8)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 296, elements: !4426)
!4426 = !{!4427}
!4427 = !DISubrange(count: 37)
!4428 = !DIGlobalVariableExpression(var: !4429, expr: !DIExpression())
!4429 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fake_signal_str223", scope: !2, file: !3, line: 35, type: !4430, isLocal: true, isDefinition: true, align: 8)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 896, elements: !4431)
!4431 = !{!4432}
!4432 = !DISubrange(count: 112)
!4433 = !DIGlobalVariableExpression(var: !4434, expr: !DIExpression())
!4434 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description224", scope: !2, file: !3, line: 1048, type: !4435, isLocal: true, isDefinition: true, align: 8)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 616, elements: !4436)
!4436 = !{!4437}
!4437 = !DISubrange(count: 77)
!4438 = !DIGlobalVariableExpression(var: !4439, expr: !DIExpression())
!4439 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 1049, type: !4440, isLocal: true, isDefinition: true, align: 8)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 448, elements: !4441)
!4441 = !{!4442}
!4442 = !DISubrange(count: 56)
!4443 = !DIGlobalVariableExpression(var: !4444, expr: !DIExpression())
!4444 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file226", scope: !2, file: !3, line: 1050, type: !4445, isLocal: true, isDefinition: true, align: 8)
!4445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 392, elements: !4446)
!4446 = !{!4447}
!4447 = !DISubrange(count: 49)
!4448 = !DIGlobalVariableExpression(var: !4449, expr: !DIExpression())
!4449 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license227", scope: !2, file: !3, line: 1050, type: !4450, isLocal: true, isDefinition: true, align: 8)
!4450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 160, elements: !3302)
!4451 = !DIGlobalVariableExpression(var: !4452, expr: !DIExpression())
!4452 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware228", scope: !2, file: !3, line: 1051, type: !4453, isLocal: true, isDefinition: true, align: 8)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 224, elements: !4454)
!4454 = !{!4455}
!4455 = !DISubrange(count: 28)
!4456 = !DIGlobalVariableExpression(var: !4457, expr: !DIExpression())
!4457 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 26, type: !317, isLocal: true, isDefinition: true)
!4458 = !DIGlobalVariableExpression(var: !4459, expr: !DIExpression())
!4459 = distinct !DIGlobalVariable(name: "__param_str_fake_signal_str", scope: !2, file: !3, line: 34, type: !4460, isLocal: true, isDefinition: true)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 192, elements: !4461)
!4461 = !{!4462}
!4462 = !DISubrange(count: 24)
!4463 = !DIGlobalVariableExpression(var: !4464, expr: !DIExpression())
!4464 = distinct !DIGlobalVariable(name: "fake_signal_str", scope: !2, file: !3, line: 27, type: !317, isLocal: true, isDefinition: true)
!4465 = !DIGlobalVariableExpression(var: !4466, expr: !DIExpression())
!4466 = distinct !DIGlobalVariable(name: "lgs8gxx_ops", scope: !2, file: !3, line: 974, type: !4467, isLocal: true, isDefinition: true)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4040)
!4468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 112, elements: !4469)
!4469 = !{!4470}
!4470 = !DISubrange(count: 14)
!4471 = !{i32 7, !"Dwarf Version", i32 4}
!4472 = !{i32 2, !"Debug Info Version", i32 3}
!4473 = !{i32 1, !"wchar_size", i32 2}
!4474 = !{i32 1, !"Code Model", i32 2}
!4475 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4476 = distinct !DISubprogram(name: "lgs8gxx_attach", scope: !3, file: !3, line: 1004, type: !4477, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!4060, !4017, !299}
!4479 = !DILocalVariable(name: "config", arg: 1, scope: !4476, file: !3, line: 1004, type: !4017)
!4480 = !DILocation(line: 1004, column: 66, scope: !4476)
!4481 = !DILocalVariable(name: "i2c", arg: 2, scope: !4476, file: !3, line: 1005, type: !299)
!4482 = !DILocation(line: 1005, column: 22, scope: !4476)
!4483 = !DILocalVariable(name: "priv", scope: !4476, file: !3, line: 1007, type: !294)
!4484 = !DILocation(line: 1007, column: 24, scope: !4476)
!4485 = !DILocalVariable(name: "data", scope: !4476, file: !3, line: 1008, type: !340)
!4486 = !DILocation(line: 1008, column: 5, scope: !4476)
!4487 = !DILocation(line: 1010, column: 2, scope: !4476)
!4488 = !DILocation(line: 1010, column: 2, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 1010, column: 2)
!4490 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1010, column: 2)
!4491 = !DILocation(line: 1010, column: 2, scope: !4490)
!4492 = !DILocation(line: 1012, column: 6, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1012, column: 6)
!4494 = !DILocation(line: 1012, column: 13, scope: !4493)
!4495 = !DILocation(line: 1012, column: 21, scope: !4493)
!4496 = !DILocation(line: 1012, column: 24, scope: !4493)
!4497 = !DILocation(line: 1012, column: 28, scope: !4493)
!4498 = !DILocation(line: 1012, column: 6, scope: !4476)
!4499 = !DILocation(line: 1013, column: 3, scope: !4493)
!4500 = !DILocation(line: 1015, column: 9, scope: !4476)
!4501 = !DILocation(line: 1015, column: 7, scope: !4476)
!4502 = !DILocation(line: 1016, column: 6, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1016, column: 6)
!4504 = !DILocation(line: 1016, column: 11, scope: !4503)
!4505 = !DILocation(line: 1016, column: 6, scope: !4476)
!4506 = !DILocation(line: 1017, column: 3, scope: !4503)
!4507 = !DILocation(line: 1019, column: 17, scope: !4476)
!4508 = !DILocation(line: 1019, column: 2, scope: !4476)
!4509 = !DILocation(line: 1019, column: 8, scope: !4476)
!4510 = !DILocation(line: 1019, column: 15, scope: !4476)
!4511 = !DILocation(line: 1020, column: 14, scope: !4476)
!4512 = !DILocation(line: 1020, column: 2, scope: !4476)
!4513 = !DILocation(line: 1020, column: 8, scope: !4476)
!4514 = !DILocation(line: 1020, column: 12, scope: !4476)
!4515 = !DILocation(line: 1023, column: 23, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1023, column: 6)
!4517 = !DILocation(line: 1023, column: 6, scope: !4516)
!4518 = !DILocation(line: 1023, column: 39, scope: !4516)
!4519 = !DILocation(line: 1023, column: 6, scope: !4476)
!4520 = !DILocation(line: 1024, column: 3, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 1023, column: 45)
!4522 = !DILocation(line: 1024, column: 3, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 1024, column: 3)
!4524 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 1024, column: 3)
!4525 = !DILocation(line: 1024, column: 3, scope: !4524)
!4526 = !DILocation(line: 1026, column: 3, scope: !4521)
!4527 = !DILocation(line: 1029, column: 19, scope: !4476)
!4528 = !DILocation(line: 1029, column: 2, scope: !4476)
!4529 = !DILocation(line: 1031, column: 10, scope: !4476)
!4530 = !DILocation(line: 1031, column: 16, scope: !4476)
!4531 = !DILocation(line: 1031, column: 25, scope: !4476)
!4532 = !DILocation(line: 1031, column: 2, scope: !4476)
!4533 = !DILocation(line: 1033, column: 36, scope: !4476)
!4534 = !DILocation(line: 1033, column: 2, scope: !4476)
!4535 = !DILocation(line: 1033, column: 8, scope: !4476)
!4536 = !DILocation(line: 1033, column: 17, scope: !4476)
!4537 = !DILocation(line: 1033, column: 34, scope: !4476)
!4538 = !DILocation(line: 1035, column: 6, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1035, column: 6)
!4540 = !DILocation(line: 1035, column: 14, scope: !4539)
!4541 = !DILocation(line: 1035, column: 19, scope: !4539)
!4542 = !DILocation(line: 1035, column: 6, scope: !4476)
!4543 = !DILocation(line: 1036, column: 21, scope: !4539)
!4544 = !DILocation(line: 1036, column: 3, scope: !4539)
!4545 = !DILocation(line: 1038, column: 10, scope: !4476)
!4546 = !DILocation(line: 1038, column: 16, scope: !4476)
!4547 = !DILocation(line: 1038, column: 2, scope: !4476)
!4548 = !DILabel(scope: !4476, name: "error_out", file: !3, line: 1040)
!4549 = !DILocation(line: 1040, column: 1, scope: !4476)
!4550 = !DILocation(line: 1041, column: 2, scope: !4476)
!4551 = !DILocation(line: 1041, column: 2, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 1041, column: 2)
!4553 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1041, column: 2)
!4554 = !DILocation(line: 1041, column: 2, scope: !4553)
!4555 = !DILocation(line: 1042, column: 8, scope: !4476)
!4556 = !DILocation(line: 1042, column: 2, scope: !4476)
!4557 = !DILocation(line: 1043, column: 2, scope: !4476)
!4558 = !DILocation(line: 1045, column: 1, scope: !4476)
!4559 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4560, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!291, !845, !292}
!4562 = !DILocalVariable(name: "s", arg: 1, scope: !4563, file: !284, line: 445, type: !1190)
!4563 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4564, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!291, !1190, !292, !845}
!4566 = !DILocation(line: 445, column: 72, scope: !4563, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 552, column: 10, scope: !4568, inlinedAt: !4571)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !284, line: 540, column: 34)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !284, line: 540, column: 6)
!4570 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4560, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4571 = distinct !DILocation(line: 664, column: 9, scope: !4559)
!4572 = !DILocalVariable(name: "flags", arg: 2, scope: !4563, file: !284, line: 446, type: !292)
!4573 = !DILocation(line: 446, column: 9, scope: !4563, inlinedAt: !4567)
!4574 = !DILocalVariable(name: "size", arg: 3, scope: !4563, file: !284, line: 446, type: !845)
!4575 = !DILocation(line: 446, column: 23, scope: !4563, inlinedAt: !4567)
!4576 = !DILocalVariable(name: "ret", scope: !4563, file: !284, line: 448, type: !291)
!4577 = !DILocation(line: 448, column: 8, scope: !4563, inlinedAt: !4567)
!4578 = !DILocalVariable(name: "flags", arg: 1, scope: !4579, file: !284, line: 318, type: !292)
!4579 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4580, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!283, !292}
!4582 = !DILocation(line: 318, column: 67, scope: !4579, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 553, column: 20, scope: !4568, inlinedAt: !4571)
!4584 = !DILocalVariable(name: "size", arg: 1, scope: !4585, file: !284, line: 346, type: !845)
!4585 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4586, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!7, !845}
!4588 = !DILocation(line: 346, column: 58, scope: !4585, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 547, column: 11, scope: !4568, inlinedAt: !4571)
!4590 = !DILocalVariable(name: "size", arg: 1, scope: !4591, file: !284, line: 472, type: !845)
!4591 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4592, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!291, !845, !292, !7}
!4594 = !DILocation(line: 472, column: 28, scope: !4591, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 481, column: 9, scope: !4596, inlinedAt: !4597)
!4596 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4560, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4597 = distinct !DILocation(line: 545, column: 11, scope: !4598, inlinedAt: !4571)
!4598 = distinct !DILexicalBlock(scope: !4568, file: !284, line: 544, column: 7)
!4599 = !DILocalVariable(name: "flags", arg: 2, scope: !4591, file: !284, line: 472, type: !292)
!4600 = !DILocation(line: 472, column: 40, scope: !4591, inlinedAt: !4595)
!4601 = !DILocalVariable(name: "order", arg: 3, scope: !4591, file: !284, line: 472, type: !7)
!4602 = !DILocation(line: 472, column: 60, scope: !4591, inlinedAt: !4595)
!4603 = !DILocalVariable(name: "size", arg: 1, scope: !4596, file: !284, line: 478, type: !845)
!4604 = !DILocation(line: 478, column: 51, scope: !4596, inlinedAt: !4597)
!4605 = !DILocalVariable(name: "flags", arg: 2, scope: !4596, file: !284, line: 478, type: !292)
!4606 = !DILocation(line: 478, column: 63, scope: !4596, inlinedAt: !4597)
!4607 = !DILocalVariable(name: "order", scope: !4596, file: !284, line: 480, type: !7)
!4608 = !DILocation(line: 480, column: 15, scope: !4596, inlinedAt: !4597)
!4609 = !DILocalVariable(name: "size", arg: 1, scope: !4570, file: !284, line: 538, type: !845)
!4610 = !DILocation(line: 538, column: 45, scope: !4570, inlinedAt: !4571)
!4611 = !DILocalVariable(name: "flags", arg: 2, scope: !4570, file: !284, line: 538, type: !292)
!4612 = !DILocation(line: 538, column: 57, scope: !4570, inlinedAt: !4571)
!4613 = !DILocalVariable(name: "index", scope: !4568, file: !284, line: 542, type: !7)
!4614 = !DILocation(line: 542, column: 16, scope: !4568, inlinedAt: !4571)
!4615 = !DILocalVariable(name: "size", arg: 1, scope: !4559, file: !284, line: 662, type: !845)
!4616 = !DILocation(line: 662, column: 36, scope: !4559)
!4617 = !DILocalVariable(name: "flags", arg: 2, scope: !4559, file: !284, line: 662, type: !292)
!4618 = !DILocation(line: 662, column: 48, scope: !4559)
!4619 = !DILocation(line: 664, column: 17, scope: !4559)
!4620 = !DILocation(line: 664, column: 23, scope: !4559)
!4621 = !DILocation(line: 664, column: 29, scope: !4559)
!4622 = !DILocation(line: 540, column: 27, scope: !4569, inlinedAt: !4571)
!4623 = !DILocation(line: 540, column: 6, scope: !4569, inlinedAt: !4571)
!4624 = !DILocation(line: 540, column: 6, scope: !4570, inlinedAt: !4571)
!4625 = !DILocation(line: 544, column: 7, scope: !4598, inlinedAt: !4571)
!4626 = !DILocation(line: 544, column: 12, scope: !4598, inlinedAt: !4571)
!4627 = !DILocation(line: 544, column: 7, scope: !4568, inlinedAt: !4571)
!4628 = !DILocation(line: 545, column: 25, scope: !4598, inlinedAt: !4571)
!4629 = !DILocation(line: 545, column: 31, scope: !4598, inlinedAt: !4571)
!4630 = !DILocation(line: 480, column: 33, scope: !4596, inlinedAt: !4597)
!4631 = !DILocation(line: 480, column: 23, scope: !4596, inlinedAt: !4597)
!4632 = !DILocation(line: 481, column: 29, scope: !4596, inlinedAt: !4597)
!4633 = !DILocation(line: 481, column: 35, scope: !4596, inlinedAt: !4597)
!4634 = !DILocation(line: 481, column: 42, scope: !4596, inlinedAt: !4597)
!4635 = !DILocation(line: 474, column: 23, scope: !4591, inlinedAt: !4595)
!4636 = !DILocation(line: 474, column: 29, scope: !4591, inlinedAt: !4595)
!4637 = !DILocation(line: 474, column: 36, scope: !4591, inlinedAt: !4595)
!4638 = !DILocation(line: 474, column: 9, scope: !4591, inlinedAt: !4595)
!4639 = !DILocation(line: 545, column: 4, scope: !4598, inlinedAt: !4571)
!4640 = !DILocation(line: 547, column: 25, scope: !4568, inlinedAt: !4571)
!4641 = !DILocation(line: 348, column: 7, scope: !4642, inlinedAt: !4589)
!4642 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 348, column: 6)
!4643 = !DILocation(line: 348, column: 6, scope: !4585, inlinedAt: !4589)
!4644 = !DILocation(line: 349, column: 3, scope: !4642, inlinedAt: !4589)
!4645 = !DILocation(line: 351, column: 6, scope: !4646, inlinedAt: !4589)
!4646 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 351, column: 6)
!4647 = !DILocation(line: 351, column: 11, scope: !4646, inlinedAt: !4589)
!4648 = !DILocation(line: 351, column: 6, scope: !4585, inlinedAt: !4589)
!4649 = !DILocation(line: 352, column: 3, scope: !4646, inlinedAt: !4589)
!4650 = !DILocation(line: 354, column: 32, scope: !4651, inlinedAt: !4589)
!4651 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 354, column: 6)
!4652 = !DILocation(line: 354, column: 37, scope: !4651, inlinedAt: !4589)
!4653 = !DILocation(line: 354, column: 42, scope: !4651, inlinedAt: !4589)
!4654 = !DILocation(line: 354, column: 45, scope: !4651, inlinedAt: !4589)
!4655 = !DILocation(line: 354, column: 50, scope: !4651, inlinedAt: !4589)
!4656 = !DILocation(line: 354, column: 6, scope: !4585, inlinedAt: !4589)
!4657 = !DILocation(line: 355, column: 3, scope: !4651, inlinedAt: !4589)
!4658 = !DILocation(line: 356, column: 32, scope: !4659, inlinedAt: !4589)
!4659 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 356, column: 6)
!4660 = !DILocation(line: 356, column: 37, scope: !4659, inlinedAt: !4589)
!4661 = !DILocation(line: 356, column: 43, scope: !4659, inlinedAt: !4589)
!4662 = !DILocation(line: 356, column: 46, scope: !4659, inlinedAt: !4589)
!4663 = !DILocation(line: 356, column: 51, scope: !4659, inlinedAt: !4589)
!4664 = !DILocation(line: 356, column: 6, scope: !4585, inlinedAt: !4589)
!4665 = !DILocation(line: 357, column: 3, scope: !4659, inlinedAt: !4589)
!4666 = !DILocation(line: 358, column: 6, scope: !4667, inlinedAt: !4589)
!4667 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 358, column: 6)
!4668 = !DILocation(line: 358, column: 11, scope: !4667, inlinedAt: !4589)
!4669 = !DILocation(line: 358, column: 6, scope: !4585, inlinedAt: !4589)
!4670 = !DILocation(line: 358, column: 26, scope: !4667, inlinedAt: !4589)
!4671 = !DILocation(line: 359, column: 6, scope: !4672, inlinedAt: !4589)
!4672 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 359, column: 6)
!4673 = !DILocation(line: 359, column: 11, scope: !4672, inlinedAt: !4589)
!4674 = !DILocation(line: 359, column: 6, scope: !4585, inlinedAt: !4589)
!4675 = !DILocation(line: 359, column: 26, scope: !4672, inlinedAt: !4589)
!4676 = !DILocation(line: 360, column: 6, scope: !4677, inlinedAt: !4589)
!4677 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 360, column: 6)
!4678 = !DILocation(line: 360, column: 11, scope: !4677, inlinedAt: !4589)
!4679 = !DILocation(line: 360, column: 6, scope: !4585, inlinedAt: !4589)
!4680 = !DILocation(line: 360, column: 26, scope: !4677, inlinedAt: !4589)
!4681 = !DILocation(line: 361, column: 6, scope: !4682, inlinedAt: !4589)
!4682 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 361, column: 6)
!4683 = !DILocation(line: 361, column: 11, scope: !4682, inlinedAt: !4589)
!4684 = !DILocation(line: 361, column: 6, scope: !4585, inlinedAt: !4589)
!4685 = !DILocation(line: 361, column: 26, scope: !4682, inlinedAt: !4589)
!4686 = !DILocation(line: 362, column: 6, scope: !4687, inlinedAt: !4589)
!4687 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 362, column: 6)
!4688 = !DILocation(line: 362, column: 11, scope: !4687, inlinedAt: !4589)
!4689 = !DILocation(line: 362, column: 6, scope: !4585, inlinedAt: !4589)
!4690 = !DILocation(line: 362, column: 26, scope: !4687, inlinedAt: !4589)
!4691 = !DILocation(line: 363, column: 6, scope: !4692, inlinedAt: !4589)
!4692 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 363, column: 6)
!4693 = !DILocation(line: 363, column: 11, scope: !4692, inlinedAt: !4589)
!4694 = !DILocation(line: 363, column: 6, scope: !4585, inlinedAt: !4589)
!4695 = !DILocation(line: 363, column: 26, scope: !4692, inlinedAt: !4589)
!4696 = !DILocation(line: 364, column: 6, scope: !4697, inlinedAt: !4589)
!4697 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 364, column: 6)
!4698 = !DILocation(line: 364, column: 11, scope: !4697, inlinedAt: !4589)
!4699 = !DILocation(line: 364, column: 6, scope: !4585, inlinedAt: !4589)
!4700 = !DILocation(line: 364, column: 26, scope: !4697, inlinedAt: !4589)
!4701 = !DILocation(line: 365, column: 6, scope: !4702, inlinedAt: !4589)
!4702 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 365, column: 6)
!4703 = !DILocation(line: 365, column: 11, scope: !4702, inlinedAt: !4589)
!4704 = !DILocation(line: 365, column: 6, scope: !4585, inlinedAt: !4589)
!4705 = !DILocation(line: 365, column: 26, scope: !4702, inlinedAt: !4589)
!4706 = !DILocation(line: 366, column: 6, scope: !4707, inlinedAt: !4589)
!4707 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 366, column: 6)
!4708 = !DILocation(line: 366, column: 11, scope: !4707, inlinedAt: !4589)
!4709 = !DILocation(line: 366, column: 6, scope: !4585, inlinedAt: !4589)
!4710 = !DILocation(line: 366, column: 26, scope: !4707, inlinedAt: !4589)
!4711 = !DILocation(line: 367, column: 6, scope: !4712, inlinedAt: !4589)
!4712 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 367, column: 6)
!4713 = !DILocation(line: 367, column: 11, scope: !4712, inlinedAt: !4589)
!4714 = !DILocation(line: 367, column: 6, scope: !4585, inlinedAt: !4589)
!4715 = !DILocation(line: 367, column: 26, scope: !4712, inlinedAt: !4589)
!4716 = !DILocation(line: 368, column: 6, scope: !4717, inlinedAt: !4589)
!4717 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 368, column: 6)
!4718 = !DILocation(line: 368, column: 11, scope: !4717, inlinedAt: !4589)
!4719 = !DILocation(line: 368, column: 6, scope: !4585, inlinedAt: !4589)
!4720 = !DILocation(line: 368, column: 26, scope: !4717, inlinedAt: !4589)
!4721 = !DILocation(line: 369, column: 6, scope: !4722, inlinedAt: !4589)
!4722 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 369, column: 6)
!4723 = !DILocation(line: 369, column: 11, scope: !4722, inlinedAt: !4589)
!4724 = !DILocation(line: 369, column: 6, scope: !4585, inlinedAt: !4589)
!4725 = !DILocation(line: 369, column: 26, scope: !4722, inlinedAt: !4589)
!4726 = !DILocation(line: 370, column: 6, scope: !4727, inlinedAt: !4589)
!4727 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 370, column: 6)
!4728 = !DILocation(line: 370, column: 11, scope: !4727, inlinedAt: !4589)
!4729 = !DILocation(line: 370, column: 6, scope: !4585, inlinedAt: !4589)
!4730 = !DILocation(line: 370, column: 26, scope: !4727, inlinedAt: !4589)
!4731 = !DILocation(line: 371, column: 6, scope: !4732, inlinedAt: !4589)
!4732 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 371, column: 6)
!4733 = !DILocation(line: 371, column: 11, scope: !4732, inlinedAt: !4589)
!4734 = !DILocation(line: 371, column: 6, scope: !4585, inlinedAt: !4589)
!4735 = !DILocation(line: 371, column: 26, scope: !4732, inlinedAt: !4589)
!4736 = !DILocation(line: 372, column: 6, scope: !4737, inlinedAt: !4589)
!4737 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 372, column: 6)
!4738 = !DILocation(line: 372, column: 11, scope: !4737, inlinedAt: !4589)
!4739 = !DILocation(line: 372, column: 6, scope: !4585, inlinedAt: !4589)
!4740 = !DILocation(line: 372, column: 26, scope: !4737, inlinedAt: !4589)
!4741 = !DILocation(line: 373, column: 6, scope: !4742, inlinedAt: !4589)
!4742 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 373, column: 6)
!4743 = !DILocation(line: 373, column: 11, scope: !4742, inlinedAt: !4589)
!4744 = !DILocation(line: 373, column: 6, scope: !4585, inlinedAt: !4589)
!4745 = !DILocation(line: 373, column: 26, scope: !4742, inlinedAt: !4589)
!4746 = !DILocation(line: 374, column: 6, scope: !4747, inlinedAt: !4589)
!4747 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 374, column: 6)
!4748 = !DILocation(line: 374, column: 11, scope: !4747, inlinedAt: !4589)
!4749 = !DILocation(line: 374, column: 6, scope: !4585, inlinedAt: !4589)
!4750 = !DILocation(line: 374, column: 26, scope: !4747, inlinedAt: !4589)
!4751 = !DILocation(line: 375, column: 6, scope: !4752, inlinedAt: !4589)
!4752 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 375, column: 6)
!4753 = !DILocation(line: 375, column: 11, scope: !4752, inlinedAt: !4589)
!4754 = !DILocation(line: 375, column: 6, scope: !4585, inlinedAt: !4589)
!4755 = !DILocation(line: 375, column: 27, scope: !4752, inlinedAt: !4589)
!4756 = !DILocation(line: 376, column: 6, scope: !4757, inlinedAt: !4589)
!4757 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 376, column: 6)
!4758 = !DILocation(line: 376, column: 11, scope: !4757, inlinedAt: !4589)
!4759 = !DILocation(line: 376, column: 6, scope: !4585, inlinedAt: !4589)
!4760 = !DILocation(line: 376, column: 32, scope: !4757, inlinedAt: !4589)
!4761 = !DILocation(line: 377, column: 6, scope: !4762, inlinedAt: !4589)
!4762 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 377, column: 6)
!4763 = !DILocation(line: 377, column: 11, scope: !4762, inlinedAt: !4589)
!4764 = !DILocation(line: 377, column: 6, scope: !4585, inlinedAt: !4589)
!4765 = !DILocation(line: 377, column: 32, scope: !4762, inlinedAt: !4589)
!4766 = !DILocation(line: 378, column: 6, scope: !4767, inlinedAt: !4589)
!4767 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 378, column: 6)
!4768 = !DILocation(line: 378, column: 11, scope: !4767, inlinedAt: !4589)
!4769 = !DILocation(line: 378, column: 6, scope: !4585, inlinedAt: !4589)
!4770 = !DILocation(line: 378, column: 32, scope: !4767, inlinedAt: !4589)
!4771 = !DILocation(line: 379, column: 6, scope: !4772, inlinedAt: !4589)
!4772 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 379, column: 6)
!4773 = !DILocation(line: 379, column: 11, scope: !4772, inlinedAt: !4589)
!4774 = !DILocation(line: 379, column: 6, scope: !4585, inlinedAt: !4589)
!4775 = !DILocation(line: 379, column: 33, scope: !4772, inlinedAt: !4589)
!4776 = !DILocation(line: 380, column: 6, scope: !4777, inlinedAt: !4589)
!4777 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 380, column: 6)
!4778 = !DILocation(line: 380, column: 11, scope: !4777, inlinedAt: !4589)
!4779 = !DILocation(line: 380, column: 6, scope: !4585, inlinedAt: !4589)
!4780 = !DILocation(line: 380, column: 33, scope: !4777, inlinedAt: !4589)
!4781 = !DILocation(line: 381, column: 6, scope: !4782, inlinedAt: !4589)
!4782 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 381, column: 6)
!4783 = !DILocation(line: 381, column: 11, scope: !4782, inlinedAt: !4589)
!4784 = !DILocation(line: 381, column: 6, scope: !4585, inlinedAt: !4589)
!4785 = !DILocation(line: 381, column: 33, scope: !4782, inlinedAt: !4589)
!4786 = !DILocation(line: 382, column: 2, scope: !4787, inlinedAt: !4589)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !284, line: 382, column: 2)
!4788 = distinct !DILexicalBlock(scope: !4585, file: !284, line: 382, column: 2)
!4789 = !{i32 -2143648259, i32 -2143648230, i32 -2143648184, i32 -2143648126, i32 -2143648072, i32 -2143648018, i32 -2143647963, i32 -2143647932}
!4790 = !DILocation(line: 382, column: 2, scope: !4791, inlinedAt: !4589)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !284, line: 382, column: 2)
!4792 = distinct !DILexicalBlock(scope: !4788, file: !284, line: 382, column: 2)
!4793 = !{i32 -2143647489, i32 -2143647482, i32 -2143647428, i32 -2143647397, i32 -2143647367}
!4794 = !DILocation(line: 382, column: 2, scope: !4792, inlinedAt: !4589)
!4795 = !DILocation(line: 386, column: 1, scope: !4585, inlinedAt: !4589)
!4796 = !DILocation(line: 547, column: 9, scope: !4568, inlinedAt: !4571)
!4797 = !DILocation(line: 549, column: 8, scope: !4798, inlinedAt: !4571)
!4798 = distinct !DILexicalBlock(scope: !4568, file: !284, line: 549, column: 7)
!4799 = !DILocation(line: 549, column: 7, scope: !4568, inlinedAt: !4571)
!4800 = !DILocation(line: 550, column: 4, scope: !4798, inlinedAt: !4571)
!4801 = !DILocation(line: 553, column: 33, scope: !4568, inlinedAt: !4571)
!4802 = !DILocation(line: 325, column: 6, scope: !4803, inlinedAt: !4583)
!4803 = distinct !DILexicalBlock(scope: !4579, file: !284, line: 325, column: 6)
!4804 = !DILocation(line: 325, column: 6, scope: !4579, inlinedAt: !4583)
!4805 = !DILocation(line: 326, column: 3, scope: !4803, inlinedAt: !4583)
!4806 = !DILocation(line: 332, column: 9, scope: !4579, inlinedAt: !4583)
!4807 = !DILocation(line: 332, column: 15, scope: !4579, inlinedAt: !4583)
!4808 = !DILocation(line: 332, column: 2, scope: !4579, inlinedAt: !4583)
!4809 = !DILocation(line: 336, column: 1, scope: !4579, inlinedAt: !4583)
!4810 = !DILocation(line: 553, column: 5, scope: !4568, inlinedAt: !4571)
!4811 = !DILocation(line: 553, column: 41, scope: !4568, inlinedAt: !4571)
!4812 = !DILocation(line: 554, column: 5, scope: !4568, inlinedAt: !4571)
!4813 = !DILocation(line: 554, column: 12, scope: !4568, inlinedAt: !4571)
!4814 = !DILocation(line: 448, column: 31, scope: !4563, inlinedAt: !4567)
!4815 = !DILocation(line: 448, column: 34, scope: !4563, inlinedAt: !4567)
!4816 = !DILocation(line: 448, column: 14, scope: !4563, inlinedAt: !4567)
!4817 = !DILocation(line: 450, column: 22, scope: !4563, inlinedAt: !4567)
!4818 = !DILocation(line: 450, column: 25, scope: !4563, inlinedAt: !4567)
!4819 = !DILocation(line: 450, column: 30, scope: !4563, inlinedAt: !4567)
!4820 = !DILocation(line: 450, column: 36, scope: !4563, inlinedAt: !4567)
!4821 = !DILocation(line: 450, column: 8, scope: !4563, inlinedAt: !4567)
!4822 = !DILocation(line: 450, column: 6, scope: !4563, inlinedAt: !4567)
!4823 = !DILocation(line: 451, column: 9, scope: !4563, inlinedAt: !4567)
!4824 = !DILocation(line: 552, column: 3, scope: !4568, inlinedAt: !4571)
!4825 = !DILocation(line: 557, column: 19, scope: !4570, inlinedAt: !4571)
!4826 = !DILocation(line: 557, column: 25, scope: !4570, inlinedAt: !4571)
!4827 = !DILocation(line: 557, column: 9, scope: !4570, inlinedAt: !4571)
!4828 = !DILocation(line: 557, column: 2, scope: !4570, inlinedAt: !4571)
!4829 = !DILocation(line: 558, column: 1, scope: !4570, inlinedAt: !4571)
!4830 = !DILocation(line: 664, column: 2, scope: !4559)
!4831 = distinct !DISubprogram(name: "lgs8gxx_read_reg", scope: !3, file: !3, line: 62, type: !4832, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!317, !294, !340, !4286}
!4834 = !DILocalVariable(name: "priv", arg: 1, scope: !4831, file: !3, line: 62, type: !294)
!4835 = !DILocation(line: 62, column: 51, scope: !4831)
!4836 = !DILocalVariable(name: "reg", arg: 2, scope: !4831, file: !3, line: 62, type: !340)
!4837 = !DILocation(line: 62, column: 60, scope: !4831)
!4838 = !DILocalVariable(name: "p_data", arg: 3, scope: !4831, file: !3, line: 62, type: !4286)
!4839 = !DILocation(line: 62, column: 69, scope: !4831)
!4840 = !DILocalVariable(name: "ret", scope: !4831, file: !3, line: 64, type: !317)
!4841 = !DILocation(line: 64, column: 6, scope: !4831)
!4842 = !DILocalVariable(name: "dev_addr", scope: !4831, file: !3, line: 65, type: !340)
!4843 = !DILocation(line: 65, column: 5, scope: !4831)
!4844 = !DILocalVariable(name: "b0", scope: !4831, file: !3, line: 67, type: !4845)
!4845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 8, elements: !578)
!4846 = !DILocation(line: 67, column: 5, scope: !4831)
!4847 = !DILocation(line: 67, column: 12, scope: !4831)
!4848 = !DILocation(line: 67, column: 14, scope: !4831)
!4849 = !DILocalVariable(name: "b1", scope: !4831, file: !3, line: 68, type: !4845)
!4850 = !DILocation(line: 68, column: 5, scope: !4831)
!4851 = !DILocalVariable(name: "msg", scope: !4831, file: !3, line: 69, type: !4852)
!4852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !2391)
!4853 = !DILocation(line: 69, column: 17, scope: !4831)
!4854 = !DILocation(line: 69, column: 25, scope: !4831)
!4855 = !DILocation(line: 70, column: 3, scope: !4831)
!4856 = !DILocation(line: 70, column: 24, scope: !4831)
!4857 = !DILocation(line: 71, column: 3, scope: !4831)
!4858 = !DILocation(line: 71, column: 31, scope: !4831)
!4859 = !DILocation(line: 74, column: 13, scope: !4831)
!4860 = !DILocation(line: 74, column: 19, scope: !4831)
!4861 = !DILocation(line: 74, column: 27, scope: !4831)
!4862 = !DILocation(line: 74, column: 11, scope: !4831)
!4863 = !DILocation(line: 75, column: 6, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 75, column: 6)
!4865 = !DILocation(line: 75, column: 12, scope: !4864)
!4866 = !DILocation(line: 75, column: 20, scope: !4864)
!4867 = !DILocation(line: 75, column: 25, scope: !4864)
!4868 = !DILocation(line: 75, column: 49, scope: !4864)
!4869 = !DILocation(line: 75, column: 52, scope: !4864)
!4870 = !DILocation(line: 75, column: 56, scope: !4864)
!4871 = !DILocation(line: 75, column: 6, scope: !4831)
!4872 = !DILocation(line: 76, column: 12, scope: !4864)
!4873 = !DILocation(line: 76, column: 3, scope: !4864)
!4874 = !DILocation(line: 77, column: 31, scope: !4831)
!4875 = !DILocation(line: 77, column: 17, scope: !4831)
!4876 = !DILocation(line: 77, column: 24, scope: !4831)
!4877 = !DILocation(line: 77, column: 29, scope: !4831)
!4878 = !DILocation(line: 77, column: 2, scope: !4831)
!4879 = !DILocation(line: 77, column: 9, scope: !4831)
!4880 = !DILocation(line: 77, column: 14, scope: !4831)
!4881 = !DILocation(line: 79, column: 21, scope: !4831)
!4882 = !DILocation(line: 79, column: 27, scope: !4831)
!4883 = !DILocation(line: 79, column: 32, scope: !4831)
!4884 = !DILocation(line: 79, column: 8, scope: !4831)
!4885 = !DILocation(line: 79, column: 6, scope: !4831)
!4886 = !DILocation(line: 80, column: 6, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 80, column: 6)
!4888 = !DILocation(line: 80, column: 10, scope: !4887)
!4889 = !DILocation(line: 80, column: 6, scope: !4831)
!4890 = !DILocation(line: 81, column: 3, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 80, column: 16)
!4892 = !DILocation(line: 81, column: 3, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 81, column: 3)
!4894 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 81, column: 3)
!4895 = !DILocation(line: 81, column: 3, scope: !4894)
!4896 = !DILocation(line: 82, column: 3, scope: !4891)
!4897 = !DILocation(line: 85, column: 12, scope: !4831)
!4898 = !DILocation(line: 85, column: 3, scope: !4831)
!4899 = !DILocation(line: 85, column: 10, scope: !4831)
!4900 = !DILocation(line: 86, column: 6, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 86, column: 6)
!4902 = !DILocation(line: 86, column: 12, scope: !4901)
!4903 = !DILocation(line: 86, column: 6, scope: !4831)
!4904 = !DILocation(line: 87, column: 3, scope: !4901)
!4905 = !DILocation(line: 87, column: 3, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 87, column: 3)
!4907 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 87, column: 3)
!4908 = !DILocation(line: 87, column: 3, scope: !4907)
!4909 = !DILocation(line: 88, column: 2, scope: !4831)
!4910 = !DILocation(line: 89, column: 1, scope: !4831)
!4911 = distinct !DISubprogram(name: "lgs8g75_init_data", scope: !3, file: !3, line: 577, type: !4912, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!317, !294}
!4914 = !DILocalVariable(name: "priv", arg: 1, scope: !4911, file: !3, line: 577, type: !294)
!4915 = !DILocation(line: 577, column: 52, scope: !4911)
!4916 = !DILocalVariable(name: "fw", scope: !4911, file: !3, line: 579, type: !4917)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4919)
!4919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !4920, line: 12, size: 192, elements: !4921)
!4920 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!4921 = !{!4922, !4923, !4924}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4919, file: !4920, line: 13, baseType: !845, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4919, file: !4920, line: 14, baseType: !4072, size: 64, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4919, file: !4920, line: 17, baseType: !291, size: 64, offset: 128)
!4925 = !DILocation(line: 579, column: 25, scope: !4911)
!4926 = !DILocalVariable(name: "rc", scope: !4911, file: !3, line: 580, type: !317)
!4927 = !DILocation(line: 580, column: 6, scope: !4911)
!4928 = !DILocalVariable(name: "i", scope: !4911, file: !3, line: 581, type: !317)
!4929 = !DILocation(line: 581, column: 6, scope: !4911)
!4930 = !DILocation(line: 583, column: 48, scope: !4911)
!4931 = !DILocation(line: 583, column: 54, scope: !4911)
!4932 = !DILocation(line: 583, column: 59, scope: !4911)
!4933 = !DILocation(line: 583, column: 7, scope: !4911)
!4934 = !DILocation(line: 583, column: 5, scope: !4911)
!4935 = !DILocation(line: 584, column: 6, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 584, column: 6)
!4937 = !DILocation(line: 584, column: 6, scope: !4911)
!4938 = !DILocation(line: 585, column: 10, scope: !4936)
!4939 = !DILocation(line: 585, column: 3, scope: !4936)
!4940 = !DILocation(line: 587, column: 20, scope: !4911)
!4941 = !DILocation(line: 587, column: 2, scope: !4911)
!4942 = !DILocation(line: 589, column: 20, scope: !4911)
!4943 = !DILocation(line: 589, column: 2, scope: !4911)
!4944 = !DILocation(line: 590, column: 20, scope: !4911)
!4945 = !DILocation(line: 590, column: 2, scope: !4911)
!4946 = !DILocation(line: 592, column: 20, scope: !4911)
!4947 = !DILocation(line: 592, column: 2, scope: !4911)
!4948 = !DILocation(line: 593, column: 20, scope: !4911)
!4949 = !DILocation(line: 593, column: 2, scope: !4911)
!4950 = !DILocation(line: 594, column: 20, scope: !4911)
!4951 = !DILocation(line: 594, column: 2, scope: !4911)
!4952 = !DILocation(line: 595, column: 20, scope: !4911)
!4953 = !DILocation(line: 595, column: 2, scope: !4911)
!4954 = !DILocation(line: 597, column: 9, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 597, column: 2)
!4956 = !DILocation(line: 597, column: 7, scope: !4955)
!4957 = !DILocation(line: 597, column: 14, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 597, column: 2)
!4959 = !DILocation(line: 597, column: 18, scope: !4958)
!4960 = !DILocation(line: 597, column: 22, scope: !4958)
!4961 = !DILocation(line: 597, column: 16, scope: !4958)
!4962 = !DILocation(line: 597, column: 2, scope: !4955)
!4963 = !DILocation(line: 598, column: 21, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 597, column: 33)
!4965 = !DILocation(line: 598, column: 3, scope: !4964)
!4966 = !DILocation(line: 599, column: 21, scope: !4964)
!4967 = !DILocation(line: 599, column: 38, scope: !4964)
!4968 = !DILocation(line: 599, column: 39, scope: !4964)
!4969 = !DILocation(line: 599, column: 33, scope: !4964)
!4970 = !DILocation(line: 599, column: 3, scope: !4964)
!4971 = !DILocation(line: 600, column: 21, scope: !4964)
!4972 = !DILocation(line: 600, column: 38, scope: !4964)
!4973 = !DILocation(line: 600, column: 39, scope: !4964)
!4974 = !DILocation(line: 600, column: 33, scope: !4964)
!4975 = !DILocation(line: 600, column: 3, scope: !4964)
!4976 = !DILocation(line: 601, column: 21, scope: !4964)
!4977 = !DILocation(line: 601, column: 33, scope: !4964)
!4978 = !DILocation(line: 601, column: 37, scope: !4964)
!4979 = !DILocation(line: 601, column: 42, scope: !4964)
!4980 = !DILocation(line: 601, column: 3, scope: !4964)
!4981 = !DILocation(line: 602, column: 2, scope: !4964)
!4982 = !DILocation(line: 597, column: 29, scope: !4958)
!4983 = !DILocation(line: 597, column: 2, scope: !4958)
!4984 = distinct !{!4984, !4962, !4985}
!4985 = !DILocation(line: 602, column: 2, scope: !4955)
!4986 = !DILocation(line: 604, column: 20, scope: !4911)
!4987 = !DILocation(line: 604, column: 2, scope: !4911)
!4988 = !DILocation(line: 606, column: 19, scope: !4911)
!4989 = !DILocation(line: 606, column: 2, scope: !4911)
!4990 = !DILocation(line: 607, column: 2, scope: !4911)
!4991 = !DILocation(line: 608, column: 1, scope: !4911)
!4992 = distinct !DISubprogram(name: "get_order", scope: !4993, file: !4993, line: 29, type: !4994, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4993 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!317, !398}
!4996 = !DILocalVariable(name: "x", arg: 1, scope: !4997, file: !4998, line: 366, type: !456)
!4997 = distinct !DISubprogram(name: "fls64", scope: !4998, file: !4998, line: 366, type: !4999, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!4998 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!317, !456}
!5001 = !DILocation(line: 366, column: 40, scope: !4997, inlinedAt: !5002)
!5002 = distinct !DILocation(line: 46, column: 9, scope: !4992)
!5003 = !DILocalVariable(name: "bitpos", scope: !4997, file: !4998, line: 368, type: !317)
!5004 = !DILocation(line: 368, column: 6, scope: !4997, inlinedAt: !5002)
!5005 = !DILocalVariable(name: "size", arg: 1, scope: !4992, file: !4993, line: 29, type: !398)
!5006 = !DILocation(line: 29, column: 63, scope: !4992)
!5007 = !DILocation(line: 31, column: 27, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4992, file: !4993, line: 31, column: 6)
!5009 = !DILocation(line: 31, column: 6, scope: !5008)
!5010 = !DILocation(line: 31, column: 6, scope: !4992)
!5011 = !DILocation(line: 32, column: 8, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !4993, line: 32, column: 7)
!5013 = distinct !DILexicalBlock(scope: !5008, file: !4993, line: 31, column: 34)
!5014 = !DILocation(line: 32, column: 7, scope: !5013)
!5015 = !DILocation(line: 33, column: 4, scope: !5012)
!5016 = !DILocation(line: 35, column: 7, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5013, file: !4993, line: 35, column: 7)
!5018 = !DILocation(line: 35, column: 12, scope: !5017)
!5019 = !DILocation(line: 35, column: 7, scope: !5013)
!5020 = !DILocation(line: 36, column: 4, scope: !5017)
!5021 = !DILocation(line: 38, column: 10, scope: !5013)
!5022 = !DILocation(line: 38, column: 28, scope: !5013)
!5023 = !DILocation(line: 38, column: 41, scope: !5013)
!5024 = !DILocation(line: 38, column: 3, scope: !5013)
!5025 = !DILocation(line: 41, column: 6, scope: !4992)
!5026 = !DILocation(line: 42, column: 7, scope: !4992)
!5027 = !DILocation(line: 46, column: 15, scope: !4992)
!5028 = !DILocation(line: 374, column: 2, scope: !4997, inlinedAt: !5002)
!5029 = !DILocation(line: 376, column: 14, scope: !4997, inlinedAt: !5002)
!5030 = !{i32 315999}
!5031 = !DILocation(line: 377, column: 9, scope: !4997, inlinedAt: !5002)
!5032 = !DILocation(line: 377, column: 16, scope: !4997, inlinedAt: !5002)
!5033 = !DILocation(line: 46, column: 2, scope: !4992)
!5034 = !DILocation(line: 48, column: 1, scope: !4992)
!5035 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5036, file: !5036, line: 30, type: !5037, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5036 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!317, !455}
!5039 = !DILocation(line: 366, column: 40, scope: !4997, inlinedAt: !5040)
!5040 = distinct !DILocation(line: 32, column: 9, scope: !5035)
!5041 = !DILocation(line: 368, column: 6, scope: !4997, inlinedAt: !5040)
!5042 = !DILocalVariable(name: "n", arg: 1, scope: !5035, file: !5036, line: 30, type: !455)
!5043 = !DILocation(line: 30, column: 21, scope: !5035)
!5044 = !DILocation(line: 32, column: 15, scope: !5035)
!5045 = !DILocation(line: 374, column: 2, scope: !4997, inlinedAt: !5040)
!5046 = !DILocation(line: 376, column: 14, scope: !4997, inlinedAt: !5040)
!5047 = !DILocation(line: 377, column: 9, scope: !4997, inlinedAt: !5040)
!5048 = !DILocation(line: 377, column: 16, scope: !4997, inlinedAt: !5040)
!5049 = !DILocation(line: 32, column: 18, scope: !5035)
!5050 = !DILocation(line: 32, column: 2, scope: !5035)
!5051 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5052, file: !5052, line: 137, type: !5053, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5052 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!291, !1190, !2119, !845, !292}
!5055 = !DILocalVariable(name: "s", arg: 1, scope: !5051, file: !5052, line: 137, type: !1190)
!5056 = !DILocation(line: 137, column: 54, scope: !5051)
!5057 = !DILocalVariable(name: "object", arg: 2, scope: !5051, file: !5052, line: 137, type: !2119)
!5058 = !DILocation(line: 137, column: 69, scope: !5051)
!5059 = !DILocalVariable(name: "size", arg: 3, scope: !5051, file: !5052, line: 138, type: !845)
!5060 = !DILocation(line: 138, column: 12, scope: !5051)
!5061 = !DILocalVariable(name: "flags", arg: 4, scope: !5051, file: !5052, line: 138, type: !292)
!5062 = !DILocation(line: 138, column: 24, scope: !5051)
!5063 = !DILocation(line: 140, column: 17, scope: !5051)
!5064 = !DILocation(line: 140, column: 2, scope: !5051)
!5065 = distinct !DISubprogram(name: "lgs8gxx_release", scope: !3, file: !3, line: 640, type: !4058, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5066 = !DILocalVariable(name: "fe", arg: 1, scope: !5065, file: !3, line: 640, type: !4060)
!5067 = !DILocation(line: 640, column: 50, scope: !5065)
!5068 = !DILocalVariable(name: "state", scope: !5065, file: !3, line: 642, type: !294)
!5069 = !DILocation(line: 642, column: 24, scope: !5065)
!5070 = !DILocation(line: 642, column: 32, scope: !5065)
!5071 = !DILocation(line: 642, column: 36, scope: !5065)
!5072 = !DILocation(line: 643, column: 2, scope: !5065)
!5073 = !DILocation(line: 643, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 643, column: 2)
!5075 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 643, column: 2)
!5076 = !DILocation(line: 643, column: 2, scope: !5075)
!5077 = !DILocation(line: 645, column: 8, scope: !5065)
!5078 = !DILocation(line: 645, column: 2, scope: !5065)
!5079 = !DILocation(line: 646, column: 1, scope: !5065)
!5080 = distinct !DISubprogram(name: "lgs8gxx_init", scope: !3, file: !3, line: 610, type: !4065, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5081 = !DILocalVariable(name: "fe", arg: 1, scope: !5080, file: !3, line: 610, type: !4060)
!5082 = !DILocation(line: 610, column: 46, scope: !5080)
!5083 = !DILocalVariable(name: "priv", scope: !5080, file: !3, line: 612, type: !294)
!5084 = !DILocation(line: 612, column: 24, scope: !5080)
!5085 = !DILocation(line: 613, column: 27, scope: !5080)
!5086 = !DILocation(line: 613, column: 31, scope: !5080)
!5087 = !DILocation(line: 613, column: 3, scope: !5080)
!5088 = !DILocalVariable(name: "config", scope: !5080, file: !3, line: 614, type: !4017)
!5089 = !DILocation(line: 614, column: 31, scope: !5080)
!5090 = !DILocation(line: 614, column: 40, scope: !5080)
!5091 = !DILocation(line: 614, column: 46, scope: !5080)
!5092 = !DILocalVariable(name: "data", scope: !5080, file: !3, line: 615, type: !340)
!5093 = !DILocation(line: 615, column: 5, scope: !5080)
!5094 = !DILocalVariable(name: "err", scope: !5080, file: !3, line: 616, type: !4386)
!5095 = !DILocation(line: 616, column: 5, scope: !5080)
!5096 = !DILocation(line: 617, column: 2, scope: !5080)
!5097 = !DILocation(line: 617, column: 2, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 617, column: 2)
!5099 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 617, column: 2)
!5100 = !DILocation(line: 617, column: 2, scope: !5099)
!5101 = !DILocation(line: 619, column: 19, scope: !5080)
!5102 = !DILocation(line: 619, column: 2, scope: !5080)
!5103 = !DILocation(line: 620, column: 2, scope: !5080)
!5104 = !DILocation(line: 620, column: 2, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 620, column: 2)
!5106 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 620, column: 2)
!5107 = !DILocation(line: 620, column: 2, scope: !5106)
!5108 = !DILocation(line: 622, column: 6, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 622, column: 6)
!5110 = !DILocation(line: 622, column: 14, scope: !5109)
!5111 = !DILocation(line: 622, column: 19, scope: !5109)
!5112 = !DILocation(line: 622, column: 6, scope: !5080)
!5113 = !DILocation(line: 623, column: 23, scope: !5109)
!5114 = !DILocation(line: 623, column: 29, scope: !5109)
!5115 = !DILocation(line: 623, column: 37, scope: !5109)
!5116 = !DILocation(line: 623, column: 3, scope: !5109)
!5117 = !DILocation(line: 626, column: 30, scope: !5080)
!5118 = !DILocation(line: 626, column: 36, scope: !5080)
!5119 = !DILocation(line: 626, column: 44, scope: !5080)
!5120 = !DILocation(line: 627, column: 9, scope: !5080)
!5121 = !DILocation(line: 627, column: 17, scope: !5080)
!5122 = !DILocation(line: 628, column: 9, scope: !5080)
!5123 = !DILocation(line: 628, column: 17, scope: !5080)
!5124 = !DILocation(line: 626, column: 8, scope: !5080)
!5125 = !DILocation(line: 626, column: 6, scope: !5080)
!5126 = !DILocation(line: 629, column: 6, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 629, column: 6)
!5128 = !DILocation(line: 629, column: 10, scope: !5127)
!5129 = !DILocation(line: 629, column: 6, scope: !5080)
!5130 = !DILocation(line: 630, column: 3, scope: !5127)
!5131 = !DILocation(line: 632, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 632, column: 6)
!5133 = !DILocation(line: 632, column: 14, scope: !5132)
!5134 = !DILocation(line: 632, column: 19, scope: !5132)
!5135 = !DILocation(line: 632, column: 6, scope: !5080)
!5136 = !DILocation(line: 633, column: 16, scope: !5132)
!5137 = !DILocation(line: 633, column: 3, scope: !5132)
!5138 = !DILocation(line: 634, column: 22, scope: !5080)
!5139 = !DILocation(line: 634, column: 28, scope: !5080)
!5140 = !DILocation(line: 634, column: 34, scope: !5080)
!5141 = !DILocation(line: 634, column: 42, scope: !5080)
!5142 = !DILocation(line: 634, column: 2, scope: !5080)
!5143 = !DILocation(line: 635, column: 22, scope: !5080)
!5144 = !DILocation(line: 635, column: 2, scope: !5080)
!5145 = !DILocation(line: 637, column: 2, scope: !5080)
!5146 = !DILocation(line: 638, column: 1, scope: !5080)
!5147 = distinct !DISubprogram(name: "lgs8gxx_write", scope: !3, file: !3, line: 649, type: !4070, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5148 = !DILocalVariable(name: "fe", arg: 1, scope: !5147, file: !3, line: 649, type: !4060)
!5149 = !DILocation(line: 649, column: 47, scope: !5147)
!5150 = !DILocalVariable(name: "buf", arg: 2, scope: !5147, file: !3, line: 649, type: !4072)
!5151 = !DILocation(line: 649, column: 60, scope: !5147)
!5152 = !DILocalVariable(name: "len", arg: 3, scope: !5147, file: !3, line: 649, type: !317)
!5153 = !DILocation(line: 649, column: 71, scope: !5147)
!5154 = !DILocalVariable(name: "priv", scope: !5147, file: !3, line: 651, type: !294)
!5155 = !DILocation(line: 651, column: 24, scope: !5147)
!5156 = !DILocation(line: 651, column: 31, scope: !5147)
!5157 = !DILocation(line: 651, column: 35, scope: !5147)
!5158 = !DILocation(line: 653, column: 6, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 653, column: 6)
!5160 = !DILocation(line: 653, column: 10, scope: !5159)
!5161 = !DILocation(line: 653, column: 6, scope: !5147)
!5162 = !DILocation(line: 654, column: 3, scope: !5159)
!5163 = !DILocation(line: 656, column: 27, scope: !5147)
!5164 = !DILocation(line: 656, column: 33, scope: !5147)
!5165 = !DILocation(line: 656, column: 41, scope: !5147)
!5166 = !DILocation(line: 656, column: 9, scope: !5147)
!5167 = !DILocation(line: 656, column: 2, scope: !5147)
!5168 = !DILocation(line: 657, column: 1, scope: !5147)
!5169 = distinct !DISubprogram(name: "lgs8gxx_set_fe", scope: !3, file: !3, line: 659, type: !4065, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5170 = !DILocalVariable(name: "fe", arg: 1, scope: !5169, file: !3, line: 659, type: !4060)
!5171 = !DILocation(line: 659, column: 48, scope: !5169)
!5172 = !DILocalVariable(name: "fe_params", scope: !5169, file: !3, line: 661, type: !4098)
!5173 = !DILocation(line: 661, column: 34, scope: !5169)
!5174 = !DILocation(line: 661, column: 47, scope: !5169)
!5175 = !DILocation(line: 661, column: 51, scope: !5169)
!5176 = !DILocalVariable(name: "priv", scope: !5169, file: !3, line: 662, type: !294)
!5177 = !DILocation(line: 662, column: 24, scope: !5169)
!5178 = !DILocation(line: 662, column: 31, scope: !5169)
!5179 = !DILocation(line: 662, column: 35, scope: !5169)
!5180 = !DILocation(line: 664, column: 2, scope: !5169)
!5181 = !DILocation(line: 664, column: 2, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 664, column: 2)
!5183 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 664, column: 2)
!5184 = !DILocation(line: 664, column: 2, scope: !5183)
!5185 = !DILocation(line: 667, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 667, column: 6)
!5187 = !DILocation(line: 667, column: 10, scope: !5186)
!5188 = !DILocation(line: 667, column: 14, scope: !5186)
!5189 = !DILocation(line: 667, column: 24, scope: !5186)
!5190 = !DILocation(line: 667, column: 6, scope: !5169)
!5191 = !DILocation(line: 668, column: 3, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 667, column: 36)
!5193 = !DILocation(line: 668, column: 7, scope: !5192)
!5194 = !DILocation(line: 668, column: 11, scope: !5192)
!5195 = !DILocation(line: 668, column: 21, scope: !5192)
!5196 = !DILocation(line: 668, column: 32, scope: !5192)
!5197 = !DILocation(line: 669, column: 7, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 669, column: 7)
!5199 = !DILocation(line: 669, column: 11, scope: !5198)
!5200 = !DILocation(line: 669, column: 15, scope: !5198)
!5201 = !DILocation(line: 669, column: 7, scope: !5192)
!5202 = !DILocation(line: 670, column: 4, scope: !5198)
!5203 = !DILocation(line: 670, column: 8, scope: !5198)
!5204 = !DILocation(line: 670, column: 12, scope: !5198)
!5205 = !DILocation(line: 670, column: 26, scope: !5198)
!5206 = !DILocation(line: 671, column: 2, scope: !5192)
!5207 = !DILocation(line: 674, column: 20, scope: !5169)
!5208 = !DILocation(line: 674, column: 2, scope: !5169)
!5209 = !DILocation(line: 676, column: 2, scope: !5169)
!5210 = !DILocation(line: 681, column: 2, scope: !5169)
!5211 = !DILocation(line: 681, column: 13, scope: !5169)
!5212 = !DILocation(line: 681, column: 26, scope: !5169)
!5213 = !DILocation(line: 683, column: 2, scope: !5169)
!5214 = !DILocation(line: 683, column: 13, scope: !5169)
!5215 = !DILocation(line: 683, column: 26, scope: !5169)
!5216 = !DILocation(line: 684, column: 2, scope: !5169)
!5217 = !DILocation(line: 684, column: 13, scope: !5169)
!5218 = !DILocation(line: 684, column: 26, scope: !5169)
!5219 = !DILocation(line: 686, column: 2, scope: !5169)
!5220 = !DILocation(line: 686, column: 13, scope: !5169)
!5221 = !DILocation(line: 686, column: 24, scope: !5169)
!5222 = !DILocation(line: 689, column: 2, scope: !5169)
!5223 = !DILocation(line: 689, column: 13, scope: !5169)
!5224 = !DILocation(line: 689, column: 31, scope: !5169)
!5225 = !DILocation(line: 692, column: 2, scope: !5169)
!5226 = !DILocation(line: 692, column: 13, scope: !5169)
!5227 = !DILocation(line: 692, column: 28, scope: !5169)
!5228 = !DILocation(line: 695, column: 2, scope: !5169)
!5229 = !DILocation(line: 695, column: 13, scope: !5169)
!5230 = !DILocation(line: 695, column: 23, scope: !5169)
!5231 = !DILocation(line: 697, column: 2, scope: !5169)
!5232 = distinct !DISubprogram(name: "lgs8gxx_get_tune_settings", scope: !3, file: !3, line: 701, type: !4086, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5233 = !DILocalVariable(name: "fe", arg: 1, scope: !5232, file: !3, line: 701, type: !4060)
!5234 = !DILocation(line: 701, column: 52, scope: !5232)
!5235 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5232, file: !3, line: 702, type: !4088)
!5236 = !DILocation(line: 702, column: 45, scope: !5232)
!5237 = !DILocation(line: 705, column: 2, scope: !5232)
!5238 = !DILocation(line: 705, column: 14, scope: !5232)
!5239 = !DILocation(line: 705, column: 27, scope: !5232)
!5240 = !DILocation(line: 706, column: 2, scope: !5232)
!5241 = !DILocation(line: 706, column: 14, scope: !5232)
!5242 = !DILocation(line: 706, column: 24, scope: !5232)
!5243 = !DILocation(line: 707, column: 2, scope: !5232)
!5244 = !DILocation(line: 707, column: 14, scope: !5232)
!5245 = !DILocation(line: 707, column: 24, scope: !5232)
!5246 = !DILocation(line: 708, column: 2, scope: !5232)
!5247 = distinct !DISubprogram(name: "lgs8gxx_read_status", scope: !3, file: !3, line: 711, type: !4173, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5248 = !DILocalVariable(name: "fe", arg: 1, scope: !5247, file: !3, line: 711, type: !4060)
!5249 = !DILocation(line: 711, column: 53, scope: !5247)
!5250 = !DILocalVariable(name: "fe_status", arg: 2, scope: !5247, file: !3, line: 712, type: !4078)
!5251 = !DILocation(line: 712, column: 27, scope: !5247)
!5252 = !DILocalVariable(name: "priv", scope: !5247, file: !3, line: 714, type: !294)
!5253 = !DILocation(line: 714, column: 24, scope: !5247)
!5254 = !DILocation(line: 714, column: 31, scope: !5247)
!5255 = !DILocation(line: 714, column: 35, scope: !5247)
!5256 = !DILocalVariable(name: "ret", scope: !5247, file: !3, line: 715, type: !4386)
!5257 = !DILocation(line: 715, column: 5, scope: !5247)
!5258 = !DILocalVariable(name: "t", scope: !5247, file: !3, line: 716, type: !340)
!5259 = !DILocation(line: 716, column: 5, scope: !5247)
!5260 = !DILocalVariable(name: "locked", scope: !5247, file: !3, line: 716, type: !340)
!5261 = !DILocation(line: 716, column: 8, scope: !5247)
!5262 = !DILocation(line: 718, column: 2, scope: !5247)
!5263 = !DILocation(line: 718, column: 2, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 718, column: 2)
!5265 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 718, column: 2)
!5266 = !DILocation(line: 718, column: 2, scope: !5265)
!5267 = !DILocation(line: 719, column: 3, scope: !5247)
!5268 = !DILocation(line: 719, column: 13, scope: !5247)
!5269 = !DILocation(line: 721, column: 24, scope: !5247)
!5270 = !DILocation(line: 721, column: 2, scope: !5247)
!5271 = !DILocation(line: 722, column: 20, scope: !5247)
!5272 = !DILocation(line: 722, column: 2, scope: !5247)
!5273 = !DILocation(line: 723, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 723, column: 6)
!5275 = !DILocation(line: 723, column: 12, scope: !5274)
!5276 = !DILocation(line: 723, column: 20, scope: !5274)
!5277 = !DILocation(line: 723, column: 25, scope: !5274)
!5278 = !DILocation(line: 723, column: 6, scope: !5247)
!5279 = !DILocation(line: 724, column: 7, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 724, column: 7)
!5281 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 723, column: 50)
!5282 = !DILocation(line: 724, column: 7, scope: !5281)
!5283 = !DILocation(line: 725, column: 5, scope: !5280)
!5284 = !DILocation(line: 725, column: 15, scope: !5280)
!5285 = !DILocation(line: 725, column: 4, scope: !5280)
!5286 = !DILocation(line: 727, column: 3, scope: !5281)
!5287 = !DILocation(line: 730, column: 25, scope: !5247)
!5288 = !DILocation(line: 730, column: 8, scope: !5247)
!5289 = !DILocation(line: 730, column: 6, scope: !5247)
!5290 = !DILocation(line: 731, column: 6, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 731, column: 6)
!5292 = !DILocation(line: 731, column: 10, scope: !5291)
!5293 = !DILocation(line: 731, column: 6, scope: !5247)
!5294 = !DILocation(line: 732, column: 3, scope: !5291)
!5295 = !DILocation(line: 734, column: 2, scope: !5247)
!5296 = !DILocation(line: 734, column: 2, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 734, column: 2)
!5298 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 734, column: 2)
!5299 = !DILocation(line: 734, column: 2, scope: !5298)
!5300 = !DILocation(line: 736, column: 3, scope: !5247)
!5301 = !DILocation(line: 736, column: 13, scope: !5247)
!5302 = !DILocation(line: 737, column: 6, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 737, column: 6)
!5304 = !DILocation(line: 737, column: 12, scope: !5303)
!5305 = !DILocation(line: 737, column: 20, scope: !5303)
!5306 = !DILocation(line: 737, column: 25, scope: !5303)
!5307 = !DILocation(line: 737, column: 6, scope: !5247)
!5308 = !DILocation(line: 738, column: 8, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 738, column: 7)
!5310 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 737, column: 50)
!5311 = !DILocation(line: 738, column: 10, scope: !5309)
!5312 = !DILocation(line: 738, column: 18, scope: !5309)
!5313 = !DILocation(line: 738, column: 7, scope: !5310)
!5314 = !DILocation(line: 739, column: 5, scope: !5309)
!5315 = !DILocation(line: 739, column: 15, scope: !5309)
!5316 = !DILocation(line: 739, column: 4, scope: !5309)
!5317 = !DILocation(line: 740, column: 8, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 740, column: 7)
!5319 = !DILocation(line: 740, column: 10, scope: !5318)
!5320 = !DILocation(line: 740, column: 18, scope: !5318)
!5321 = !DILocation(line: 740, column: 7, scope: !5310)
!5322 = !DILocation(line: 741, column: 5, scope: !5318)
!5323 = !DILocation(line: 741, column: 15, scope: !5318)
!5324 = !DILocation(line: 741, column: 4, scope: !5318)
!5325 = !DILocation(line: 743, column: 2, scope: !5310)
!5326 = !DILocation(line: 744, column: 8, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 744, column: 7)
!5328 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 743, column: 9)
!5329 = !DILocation(line: 744, column: 10, scope: !5327)
!5330 = !DILocation(line: 744, column: 18, scope: !5327)
!5331 = !DILocation(line: 744, column: 7, scope: !5328)
!5332 = !DILocation(line: 745, column: 5, scope: !5327)
!5333 = !DILocation(line: 745, column: 15, scope: !5327)
!5334 = !DILocation(line: 745, column: 4, scope: !5327)
!5335 = !DILocation(line: 750, column: 2, scope: !5247)
!5336 = !DILocation(line: 750, column: 2, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 750, column: 2)
!5338 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 750, column: 2)
!5339 = !DILocation(line: 750, column: 2, scope: !5338)
!5340 = !DILocation(line: 751, column: 2, scope: !5247)
!5341 = !DILocation(line: 752, column: 1, scope: !5247)
!5342 = distinct !DISubprogram(name: "lgs8gxx_read_ber", scope: !3, file: !3, line: 921, type: !4177, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5343 = !DILocalVariable(name: "fe", arg: 1, scope: !5342, file: !3, line: 921, type: !4060)
!5344 = !DILocation(line: 921, column: 50, scope: !5342)
!5345 = !DILocalVariable(name: "ber", arg: 2, scope: !5342, file: !3, line: 921, type: !2749)
!5346 = !DILocation(line: 921, column: 59, scope: !5342)
!5347 = !DILocalVariable(name: "priv", scope: !5342, file: !3, line: 923, type: !294)
!5348 = !DILocation(line: 923, column: 24, scope: !5342)
!5349 = !DILocation(line: 923, column: 31, scope: !5342)
!5350 = !DILocation(line: 923, column: 35, scope: !5342)
!5351 = !DILocalVariable(name: "reg_err", scope: !5342, file: !3, line: 924, type: !340)
!5352 = !DILocation(line: 924, column: 5, scope: !5342)
!5353 = !DILocalVariable(name: "reg_total", scope: !5342, file: !3, line: 924, type: !340)
!5354 = !DILocation(line: 924, column: 14, scope: !5342)
!5355 = !DILocalVariable(name: "t", scope: !5342, file: !3, line: 924, type: !340)
!5356 = !DILocation(line: 924, column: 25, scope: !5342)
!5357 = !DILocalVariable(name: "total_cnt", scope: !5342, file: !3, line: 925, type: !355)
!5358 = !DILocation(line: 925, column: 6, scope: !5342)
!5359 = !DILocalVariable(name: "err_cnt", scope: !5342, file: !3, line: 925, type: !355)
!5360 = !DILocation(line: 925, column: 21, scope: !5342)
!5361 = !DILocalVariable(name: "i", scope: !5342, file: !3, line: 926, type: !317)
!5362 = !DILocation(line: 926, column: 6, scope: !5342)
!5363 = !DILocation(line: 928, column: 2, scope: !5342)
!5364 = !DILocation(line: 928, column: 2, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 928, column: 2)
!5366 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 928, column: 2)
!5367 = !DILocation(line: 928, column: 2, scope: !5366)
!5368 = !DILocation(line: 930, column: 23, scope: !5342)
!5369 = !DILocation(line: 930, column: 2, scope: !5342)
!5370 = !DILocation(line: 931, column: 2, scope: !5342)
!5371 = !DILocation(line: 932, column: 22, scope: !5342)
!5372 = !DILocation(line: 932, column: 2, scope: !5342)
!5373 = !DILocation(line: 934, column: 6, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 934, column: 6)
!5375 = !DILocation(line: 934, column: 12, scope: !5374)
!5376 = !DILocation(line: 934, column: 20, scope: !5374)
!5377 = !DILocation(line: 934, column: 25, scope: !5374)
!5378 = !DILocation(line: 934, column: 6, scope: !5342)
!5379 = !DILocation(line: 935, column: 13, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 934, column: 50)
!5381 = !DILocation(line: 935, column: 29, scope: !5380)
!5382 = !DILocation(line: 936, column: 2, scope: !5380)
!5383 = !DILocation(line: 937, column: 13, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 936, column: 9)
!5385 = !DILocation(line: 937, column: 29, scope: !5384)
!5386 = !DILocation(line: 940, column: 9, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 940, column: 2)
!5388 = !DILocation(line: 940, column: 7, scope: !5387)
!5389 = !DILocation(line: 940, column: 14, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 940, column: 2)
!5391 = !DILocation(line: 940, column: 16, scope: !5390)
!5392 = !DILocation(line: 940, column: 2, scope: !5387)
!5393 = !DILocation(line: 941, column: 13, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 940, column: 26)
!5395 = !DILocation(line: 942, column: 20, scope: !5394)
!5396 = !DILocation(line: 942, column: 26, scope: !5394)
!5397 = !DILocation(line: 942, column: 35, scope: !5394)
!5398 = !DILocation(line: 942, column: 38, scope: !5394)
!5399 = !DILocation(line: 942, column: 37, scope: !5394)
!5400 = !DILocation(line: 942, column: 3, scope: !5394)
!5401 = !DILocation(line: 943, column: 16, scope: !5394)
!5402 = !DILocation(line: 943, column: 13, scope: !5394)
!5403 = !DILocation(line: 944, column: 2, scope: !5394)
!5404 = !DILocation(line: 940, column: 22, scope: !5390)
!5405 = !DILocation(line: 940, column: 2, scope: !5390)
!5406 = distinct !{!5406, !5392, !5407}
!5407 = !DILocation(line: 944, column: 2, scope: !5387)
!5408 = !DILocation(line: 945, column: 9, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 945, column: 2)
!5410 = !DILocation(line: 945, column: 7, scope: !5409)
!5411 = !DILocation(line: 945, column: 14, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 945, column: 2)
!5413 = !DILocation(line: 945, column: 16, scope: !5412)
!5414 = !DILocation(line: 945, column: 2, scope: !5409)
!5415 = !DILocation(line: 946, column: 11, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 945, column: 26)
!5417 = !DILocation(line: 947, column: 20, scope: !5416)
!5418 = !DILocation(line: 947, column: 26, scope: !5416)
!5419 = !DILocation(line: 947, column: 33, scope: !5416)
!5420 = !DILocation(line: 947, column: 36, scope: !5416)
!5421 = !DILocation(line: 947, column: 35, scope: !5416)
!5422 = !DILocation(line: 947, column: 3, scope: !5416)
!5423 = !DILocation(line: 948, column: 14, scope: !5416)
!5424 = !DILocation(line: 948, column: 11, scope: !5416)
!5425 = !DILocation(line: 949, column: 2, scope: !5416)
!5426 = !DILocation(line: 945, column: 22, scope: !5412)
!5427 = !DILocation(line: 945, column: 2, scope: !5412)
!5428 = distinct !{!5428, !5414, !5429}
!5429 = !DILocation(line: 949, column: 2, scope: !5409)
!5430 = !DILocation(line: 950, column: 2, scope: !5342)
!5431 = !DILocation(line: 950, column: 2, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 950, column: 2)
!5433 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 950, column: 2)
!5434 = !DILocation(line: 950, column: 2, scope: !5433)
!5435 = !DILocation(line: 952, column: 6, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 952, column: 6)
!5437 = !DILocation(line: 952, column: 16, scope: !5436)
!5438 = !DILocation(line: 952, column: 6, scope: !5342)
!5439 = !DILocation(line: 953, column: 4, scope: !5436)
!5440 = !DILocation(line: 953, column: 8, scope: !5436)
!5441 = !DILocation(line: 953, column: 3, scope: !5436)
!5442 = !DILocation(line: 955, column: 10, scope: !5436)
!5443 = !DILocation(line: 955, column: 18, scope: !5436)
!5444 = !DILocation(line: 955, column: 26, scope: !5436)
!5445 = !DILocation(line: 955, column: 24, scope: !5436)
!5446 = !DILocation(line: 955, column: 4, scope: !5436)
!5447 = !DILocation(line: 955, column: 8, scope: !5436)
!5448 = !DILocation(line: 957, column: 2, scope: !5342)
!5449 = !DILocation(line: 957, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 957, column: 2)
!5451 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 957, column: 2)
!5452 = !DILocation(line: 957, column: 2, scope: !5451)
!5453 = !DILocation(line: 958, column: 2, scope: !5342)
!5454 = distinct !DISubprogram(name: "lgs8gxx_read_signal_strength", scope: !3, file: !3, line: 851, type: !4181, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5455 = !DILocalVariable(name: "fe", arg: 1, scope: !5454, file: !3, line: 851, type: !4060)
!5456 = !DILocation(line: 851, column: 62, scope: !5454)
!5457 = !DILocalVariable(name: "signal", arg: 2, scope: !5454, file: !3, line: 851, type: !4183)
!5458 = !DILocation(line: 851, column: 71, scope: !5454)
!5459 = !DILocalVariable(name: "priv", scope: !5454, file: !3, line: 853, type: !294)
!5460 = !DILocation(line: 853, column: 24, scope: !5454)
!5461 = !DILocation(line: 853, column: 31, scope: !5454)
!5462 = !DILocation(line: 853, column: 35, scope: !5454)
!5463 = !DILocation(line: 855, column: 6, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 855, column: 6)
!5465 = !DILocation(line: 855, column: 12, scope: !5464)
!5466 = !DILocation(line: 855, column: 20, scope: !5464)
!5467 = !DILocation(line: 855, column: 25, scope: !5464)
!5468 = !DILocation(line: 855, column: 6, scope: !5454)
!5469 = !DILocation(line: 856, column: 39, scope: !5464)
!5470 = !DILocation(line: 856, column: 45, scope: !5464)
!5471 = !DILocation(line: 856, column: 10, scope: !5464)
!5472 = !DILocation(line: 856, column: 3, scope: !5464)
!5473 = !DILocation(line: 857, column: 11, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 857, column: 11)
!5475 = !DILocation(line: 857, column: 17, scope: !5474)
!5476 = !DILocation(line: 857, column: 25, scope: !5474)
!5477 = !DILocation(line: 857, column: 30, scope: !5474)
!5478 = !DILocation(line: 857, column: 11, scope: !5464)
!5479 = !DILocation(line: 858, column: 39, scope: !5474)
!5480 = !DILocation(line: 858, column: 45, scope: !5474)
!5481 = !DILocation(line: 858, column: 10, scope: !5474)
!5482 = !DILocation(line: 858, column: 3, scope: !5474)
!5483 = !DILocation(line: 860, column: 34, scope: !5474)
!5484 = !DILocation(line: 860, column: 40, scope: !5474)
!5485 = !DILocation(line: 860, column: 10, scope: !5474)
!5486 = !DILocation(line: 860, column: 3, scope: !5474)
!5487 = !DILocation(line: 861, column: 1, scope: !5454)
!5488 = distinct !DISubprogram(name: "lgs8gxx_read_snr", scope: !3, file: !3, line: 863, type: !4181, scopeLine: 864, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5489 = !DILocalVariable(name: "fe", arg: 1, scope: !5488, file: !3, line: 863, type: !4060)
!5490 = !DILocation(line: 863, column: 50, scope: !5488)
!5491 = !DILocalVariable(name: "snr", arg: 2, scope: !5488, file: !3, line: 863, type: !4183)
!5492 = !DILocation(line: 863, column: 59, scope: !5488)
!5493 = !DILocalVariable(name: "priv", scope: !5488, file: !3, line: 865, type: !294)
!5494 = !DILocation(line: 865, column: 24, scope: !5488)
!5495 = !DILocation(line: 865, column: 31, scope: !5488)
!5496 = !DILocation(line: 865, column: 35, scope: !5488)
!5497 = !DILocalVariable(name: "t", scope: !5488, file: !3, line: 866, type: !340)
!5498 = !DILocation(line: 866, column: 5, scope: !5488)
!5499 = !DILocation(line: 867, column: 3, scope: !5488)
!5500 = !DILocation(line: 867, column: 7, scope: !5488)
!5501 = !DILocation(line: 869, column: 6, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 869, column: 6)
!5503 = !DILocation(line: 869, column: 12, scope: !5502)
!5504 = !DILocation(line: 869, column: 20, scope: !5502)
!5505 = !DILocation(line: 869, column: 25, scope: !5502)
!5506 = !DILocation(line: 869, column: 6, scope: !5488)
!5507 = !DILocation(line: 870, column: 20, scope: !5502)
!5508 = !DILocation(line: 870, column: 3, scope: !5502)
!5509 = !DILocation(line: 872, column: 20, scope: !5502)
!5510 = !DILocation(line: 872, column: 3, scope: !5502)
!5511 = !DILocation(line: 873, column: 2, scope: !5488)
!5512 = !DILocation(line: 873, column: 2, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 873, column: 2)
!5514 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 873, column: 2)
!5515 = !DILocation(line: 873, column: 2, scope: !5514)
!5516 = !DILocation(line: 874, column: 15, scope: !5488)
!5517 = !DILocation(line: 874, column: 13, scope: !5488)
!5518 = !DILocation(line: 874, column: 9, scope: !5488)
!5519 = !DILocation(line: 874, column: 3, scope: !5488)
!5520 = !DILocation(line: 874, column: 7, scope: !5488)
!5521 = !DILocation(line: 875, column: 3, scope: !5488)
!5522 = !DILocation(line: 875, column: 7, scope: !5488)
!5523 = !DILocation(line: 876, column: 2, scope: !5488)
!5524 = !DILocation(line: 876, column: 2, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 876, column: 2)
!5526 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 876, column: 2)
!5527 = !DILocation(line: 876, column: 2, scope: !5526)
!5528 = !DILocation(line: 878, column: 2, scope: !5488)
!5529 = distinct !DISubprogram(name: "lgs8gxx_read_ucblocks", scope: !3, file: !3, line: 881, type: !4177, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5530 = !DILocalVariable(name: "fe", arg: 1, scope: !5529, file: !3, line: 881, type: !4060)
!5531 = !DILocation(line: 881, column: 55, scope: !5529)
!5532 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5529, file: !3, line: 881, type: !2749)
!5533 = !DILocation(line: 881, column: 64, scope: !5529)
!5534 = !DILocation(line: 883, column: 3, scope: !5529)
!5535 = !DILocation(line: 883, column: 12, scope: !5529)
!5536 = !DILocation(line: 884, column: 2, scope: !5529)
!5537 = !DILocation(line: 884, column: 2, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 884, column: 2)
!5539 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 884, column: 2)
!5540 = !DILocation(line: 884, column: 2, scope: !5539)
!5541 = !DILocation(line: 885, column: 2, scope: !5529)
!5542 = distinct !DISubprogram(name: "lgs8gxx_i2c_gate_ctrl", scope: !3, file: !3, line: 961, type: !4230, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5543 = !DILocalVariable(name: "fe", arg: 1, scope: !5542, file: !3, line: 961, type: !4060)
!5544 = !DILocation(line: 961, column: 55, scope: !5542)
!5545 = !DILocalVariable(name: "enable", arg: 2, scope: !5542, file: !3, line: 961, type: !317)
!5546 = !DILocation(line: 961, column: 63, scope: !5542)
!5547 = !DILocalVariable(name: "priv", scope: !5542, file: !3, line: 963, type: !294)
!5548 = !DILocation(line: 963, column: 24, scope: !5542)
!5549 = !DILocation(line: 963, column: 31, scope: !5542)
!5550 = !DILocation(line: 963, column: 35, scope: !5542)
!5551 = !DILocation(line: 965, column: 6, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 965, column: 6)
!5553 = !DILocation(line: 965, column: 12, scope: !5552)
!5554 = !DILocation(line: 965, column: 20, scope: !5552)
!5555 = !DILocation(line: 965, column: 34, scope: !5552)
!5556 = !DILocation(line: 965, column: 6, scope: !5542)
!5557 = !DILocation(line: 966, column: 3, scope: !5552)
!5558 = !DILocation(line: 967, column: 6, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 967, column: 6)
!5560 = !DILocation(line: 967, column: 6, scope: !5542)
!5561 = !DILocalVariable(name: "v", scope: !5562, file: !3, line: 968, type: !340)
!5562 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 967, column: 14)
!5563 = !DILocation(line: 968, column: 6, scope: !5562)
!5564 = !DILocation(line: 968, column: 17, scope: !5562)
!5565 = !DILocation(line: 968, column: 23, scope: !5562)
!5566 = !DILocation(line: 968, column: 31, scope: !5562)
!5567 = !DILocation(line: 968, column: 15, scope: !5562)
!5568 = !DILocation(line: 968, column: 10, scope: !5562)
!5569 = !DILocation(line: 969, column: 28, scope: !5562)
!5570 = !DILocation(line: 969, column: 40, scope: !5562)
!5571 = !DILocation(line: 969, column: 10, scope: !5562)
!5572 = !DILocation(line: 969, column: 3, scope: !5562)
!5573 = !DILocation(line: 971, column: 27, scope: !5542)
!5574 = !DILocation(line: 971, column: 9, scope: !5542)
!5575 = !DILocation(line: 971, column: 2, scope: !5542)
!5576 = !DILocation(line: 972, column: 1, scope: !5542)
!5577 = distinct !DISubprogram(name: "lgs8g75_set_adc_vpp", scope: !3, file: !3, line: 541, type: !5578, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!317, !294, !340}
!5580 = !DILocalVariable(name: "priv", arg: 1, scope: !5577, file: !3, line: 541, type: !294)
!5581 = !DILocation(line: 541, column: 54, scope: !5577)
!5582 = !DILocalVariable(name: "sel", arg: 2, scope: !5577, file: !3, line: 542, type: !340)
!5583 = !DILocation(line: 542, column: 5, scope: !5577)
!5584 = !DILocalVariable(name: "r26", scope: !5577, file: !3, line: 544, type: !340)
!5585 = !DILocation(line: 544, column: 5, scope: !5577)
!5586 = !DILocalVariable(name: "r27", scope: !5577, file: !3, line: 544, type: !340)
!5587 = !DILocation(line: 544, column: 17, scope: !5577)
!5588 = !DILocation(line: 546, column: 6, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 546, column: 6)
!5590 = !DILocation(line: 546, column: 12, scope: !5589)
!5591 = !DILocation(line: 546, column: 20, scope: !5589)
!5592 = !DILocation(line: 546, column: 25, scope: !5589)
!5593 = !DILocation(line: 546, column: 6, scope: !5577)
!5594 = !DILocation(line: 547, column: 3, scope: !5589)
!5595 = !DILocation(line: 549, column: 10, scope: !5577)
!5596 = !DILocation(line: 549, column: 14, scope: !5577)
!5597 = !DILocation(line: 549, column: 22, scope: !5577)
!5598 = !DILocation(line: 549, column: 6, scope: !5577)
!5599 = !DILocation(line: 550, column: 10, scope: !5577)
!5600 = !DILocation(line: 550, column: 14, scope: !5577)
!5601 = !DILocation(line: 550, column: 22, scope: !5577)
!5602 = !DILocation(line: 550, column: 6, scope: !5577)
!5603 = !DILocation(line: 551, column: 20, scope: !5577)
!5604 = !DILocation(line: 551, column: 32, scope: !5577)
!5605 = !DILocation(line: 551, column: 2, scope: !5577)
!5606 = !DILocation(line: 552, column: 20, scope: !5577)
!5607 = !DILocation(line: 552, column: 32, scope: !5577)
!5608 = !DILocation(line: 552, column: 2, scope: !5577)
!5609 = !DILocation(line: 554, column: 2, scope: !5577)
!5610 = !DILocation(line: 555, column: 1, scope: !5577)
!5611 = distinct !DISubprogram(name: "lgs8gxx_set_mpeg_mode", scope: !3, file: !3, line: 517, type: !5612, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!317, !294, !340, !340, !340}
!5614 = !DILocalVariable(name: "priv", arg: 1, scope: !5611, file: !3, line: 517, type: !294)
!5615 = !DILocation(line: 517, column: 56, scope: !5611)
!5616 = !DILocalVariable(name: "serial", arg: 2, scope: !5611, file: !3, line: 518, type: !340)
!5617 = !DILocation(line: 518, column: 5, scope: !5611)
!5618 = !DILocalVariable(name: "clk_pol", arg: 3, scope: !5611, file: !3, line: 518, type: !340)
!5619 = !DILocation(line: 518, column: 16, scope: !5611)
!5620 = !DILocalVariable(name: "clk_gated", arg: 4, scope: !5611, file: !3, line: 518, type: !340)
!5621 = !DILocation(line: 518, column: 28, scope: !5611)
!5622 = !DILocalVariable(name: "ret", scope: !5611, file: !3, line: 520, type: !317)
!5623 = !DILocation(line: 520, column: 6, scope: !5611)
!5624 = !DILocalVariable(name: "t", scope: !5611, file: !3, line: 521, type: !340)
!5625 = !DILocation(line: 521, column: 5, scope: !5611)
!5626 = !DILocalVariable(name: "reg_addr", scope: !5611, file: !3, line: 521, type: !340)
!5627 = !DILocation(line: 521, column: 8, scope: !5611)
!5628 = !DILocation(line: 523, column: 14, scope: !5611)
!5629 = !DILocation(line: 523, column: 20, scope: !5611)
!5630 = !DILocation(line: 523, column: 28, scope: !5611)
!5631 = !DILocation(line: 523, column: 33, scope: !5611)
!5632 = !DILocation(line: 523, column: 13, scope: !5611)
!5633 = !DILocation(line: 523, column: 11, scope: !5611)
!5634 = !DILocation(line: 524, column: 25, scope: !5611)
!5635 = !DILocation(line: 524, column: 31, scope: !5611)
!5636 = !DILocation(line: 524, column: 8, scope: !5611)
!5637 = !DILocation(line: 524, column: 6, scope: !5611)
!5638 = !DILocation(line: 525, column: 6, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 525, column: 6)
!5640 = !DILocation(line: 525, column: 10, scope: !5639)
!5641 = !DILocation(line: 525, column: 6, scope: !5611)
!5642 = !DILocation(line: 526, column: 10, scope: !5639)
!5643 = !DILocation(line: 526, column: 3, scope: !5639)
!5644 = !DILocation(line: 528, column: 4, scope: !5611)
!5645 = !DILocation(line: 529, column: 7, scope: !5611)
!5646 = !DILocation(line: 529, column: 4, scope: !5611)
!5647 = !DILocation(line: 530, column: 7, scope: !5611)
!5648 = !DILocation(line: 530, column: 4, scope: !5611)
!5649 = !DILocation(line: 531, column: 7, scope: !5611)
!5650 = !DILocation(line: 531, column: 4, scope: !5611)
!5651 = !DILocation(line: 533, column: 26, scope: !5611)
!5652 = !DILocation(line: 533, column: 32, scope: !5611)
!5653 = !DILocation(line: 533, column: 42, scope: !5611)
!5654 = !DILocation(line: 533, column: 8, scope: !5611)
!5655 = !DILocation(line: 533, column: 6, scope: !5611)
!5656 = !DILocation(line: 534, column: 6, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 534, column: 6)
!5658 = !DILocation(line: 534, column: 10, scope: !5657)
!5659 = !DILocation(line: 534, column: 6, scope: !5611)
!5660 = !DILocation(line: 535, column: 10, scope: !5657)
!5661 = !DILocation(line: 535, column: 3, scope: !5657)
!5662 = !DILocation(line: 537, column: 2, scope: !5611)
!5663 = !DILocation(line: 538, column: 1, scope: !5611)
!5664 = distinct !DISubprogram(name: "lgs8913_init", scope: !3, file: !3, line: 559, type: !4912, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5665 = !DILocalVariable(name: "priv", arg: 1, scope: !5664, file: !3, line: 559, type: !294)
!5666 = !DILocation(line: 559, column: 47, scope: !5664)
!5667 = !DILocalVariable(name: "t", scope: !5664, file: !3, line: 561, type: !340)
!5668 = !DILocation(line: 561, column: 5, scope: !5664)
!5669 = !DILocation(line: 564, column: 20, scope: !5664)
!5670 = !DILocation(line: 564, column: 2, scope: !5664)
!5671 = !DILocation(line: 566, column: 19, scope: !5664)
!5672 = !DILocation(line: 566, column: 2, scope: !5664)
!5673 = !DILocation(line: 567, column: 20, scope: !5664)
!5674 = !DILocation(line: 567, column: 33, scope: !5664)
!5675 = !DILocation(line: 567, column: 34, scope: !5664)
!5676 = !DILocation(line: 567, column: 41, scope: !5664)
!5677 = !DILocation(line: 567, column: 32, scope: !5664)
!5678 = !DILocation(line: 567, column: 2, scope: !5664)
!5679 = !DILocation(line: 570, column: 19, scope: !5664)
!5680 = !DILocation(line: 570, column: 2, scope: !5664)
!5681 = !DILocation(line: 571, column: 20, scope: !5664)
!5682 = !DILocation(line: 571, column: 32, scope: !5664)
!5683 = !DILocation(line: 571, column: 33, scope: !5664)
!5684 = !DILocation(line: 571, column: 2, scope: !5664)
!5685 = !DILocation(line: 574, column: 2, scope: !5664)
!5686 = distinct !DISubprogram(name: "lgs8gxx_set_if_freq", scope: !3, file: !3, line: 142, type: !5687, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{!317, !294, !355}
!5689 = !DILocalVariable(name: "priv", arg: 1, scope: !5686, file: !3, line: 142, type: !294)
!5690 = !DILocation(line: 142, column: 54, scope: !5686)
!5691 = !DILocalVariable(name: "freq", arg: 2, scope: !5686, file: !3, line: 142, type: !355)
!5692 = !DILocation(line: 142, column: 64, scope: !5686)
!5693 = !DILocalVariable(name: "val", scope: !5686, file: !3, line: 144, type: !455)
!5694 = !DILocation(line: 144, column: 6, scope: !5686)
!5695 = !DILocalVariable(name: "v32", scope: !5686, file: !3, line: 145, type: !355)
!5696 = !DILocation(line: 145, column: 6, scope: !5686)
!5697 = !DILocalVariable(name: "if_clk", scope: !5686, file: !3, line: 146, type: !355)
!5698 = !DILocation(line: 146, column: 6, scope: !5686)
!5699 = !DILocation(line: 148, column: 11, scope: !5686)
!5700 = !DILocation(line: 148, column: 17, scope: !5686)
!5701 = !DILocation(line: 148, column: 25, scope: !5686)
!5702 = !DILocation(line: 148, column: 9, scope: !5686)
!5703 = !DILocation(line: 150, column: 8, scope: !5686)
!5704 = !DILocation(line: 150, column: 6, scope: !5686)
!5705 = !DILocation(line: 151, column: 6, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 151, column: 6)
!5707 = !DILocation(line: 151, column: 11, scope: !5706)
!5708 = !DILocation(line: 151, column: 6, scope: !5686)
!5709 = !DILocation(line: 152, column: 7, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 151, column: 17)
!5711 = !DILocation(line: 153, column: 7, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 153, column: 7)
!5713 = !DILocation(line: 153, column: 14, scope: !5712)
!5714 = !DILocation(line: 153, column: 7, scope: !5710)
!5715 = !DILocalVariable(name: "__base", scope: !5716, file: !3, line: 154, type: !823)
!5716 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 154, column: 4)
!5717 = !DILocation(line: 154, column: 4, scope: !5716)
!5718 = !DILocalVariable(name: "__rem", scope: !5716, file: !3, line: 154, type: !823)
!5719 = !DILocation(line: 154, column: 4, scope: !5712)
!5720 = !DILocation(line: 155, column: 9, scope: !5710)
!5721 = !DILocation(line: 155, column: 13, scope: !5710)
!5722 = !DILocation(line: 155, column: 7, scope: !5710)
!5723 = !DILocation(line: 156, column: 3, scope: !5710)
!5724 = !DILocation(line: 156, column: 3, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 156, column: 3)
!5726 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 156, column: 3)
!5727 = !DILocation(line: 156, column: 3, scope: !5726)
!5728 = !DILocation(line: 157, column: 2, scope: !5710)
!5729 = !DILocation(line: 158, column: 7, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 157, column: 9)
!5731 = !DILocation(line: 159, column: 3, scope: !5730)
!5732 = !DILocation(line: 159, column: 3, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 159, column: 3)
!5734 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 159, column: 3)
!5735 = !DILocation(line: 159, column: 3, scope: !5734)
!5736 = !DILocation(line: 161, column: 2, scope: !5686)
!5737 = !DILocation(line: 161, column: 2, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 161, column: 2)
!5739 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 161, column: 2)
!5740 = !DILocation(line: 161, column: 2, scope: !5739)
!5741 = !DILocation(line: 163, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 163, column: 6)
!5743 = !DILocation(line: 163, column: 12, scope: !5742)
!5744 = !DILocation(line: 163, column: 20, scope: !5742)
!5745 = !DILocation(line: 163, column: 25, scope: !5742)
!5746 = !DILocation(line: 163, column: 6, scope: !5686)
!5747 = !DILocation(line: 164, column: 21, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 163, column: 50)
!5749 = !DILocation(line: 164, column: 41, scope: !5748)
!5750 = !DILocation(line: 164, column: 38, scope: !5748)
!5751 = !DILocation(line: 164, column: 33, scope: !5748)
!5752 = !DILocation(line: 164, column: 3, scope: !5748)
!5753 = !DILocation(line: 165, column: 21, scope: !5748)
!5754 = !DILocation(line: 165, column: 41, scope: !5748)
!5755 = !DILocation(line: 165, column: 45, scope: !5748)
!5756 = !DILocation(line: 165, column: 38, scope: !5748)
!5757 = !DILocation(line: 165, column: 33, scope: !5748)
!5758 = !DILocation(line: 165, column: 3, scope: !5748)
!5759 = !DILocation(line: 166, column: 21, scope: !5748)
!5760 = !DILocation(line: 166, column: 41, scope: !5748)
!5761 = !DILocation(line: 166, column: 45, scope: !5748)
!5762 = !DILocation(line: 166, column: 38, scope: !5748)
!5763 = !DILocation(line: 166, column: 33, scope: !5748)
!5764 = !DILocation(line: 166, column: 3, scope: !5748)
!5765 = !DILocation(line: 167, column: 21, scope: !5748)
!5766 = !DILocation(line: 167, column: 41, scope: !5748)
!5767 = !DILocation(line: 167, column: 45, scope: !5748)
!5768 = !DILocation(line: 167, column: 38, scope: !5748)
!5769 = !DILocation(line: 167, column: 33, scope: !5748)
!5770 = !DILocation(line: 167, column: 3, scope: !5748)
!5771 = !DILocation(line: 168, column: 2, scope: !5748)
!5772 = !DILocation(line: 169, column: 21, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 168, column: 9)
!5774 = !DILocation(line: 169, column: 41, scope: !5773)
!5775 = !DILocation(line: 169, column: 38, scope: !5773)
!5776 = !DILocation(line: 169, column: 33, scope: !5773)
!5777 = !DILocation(line: 169, column: 3, scope: !5773)
!5778 = !DILocation(line: 170, column: 21, scope: !5773)
!5779 = !DILocation(line: 170, column: 41, scope: !5773)
!5780 = !DILocation(line: 170, column: 45, scope: !5773)
!5781 = !DILocation(line: 170, column: 38, scope: !5773)
!5782 = !DILocation(line: 170, column: 33, scope: !5773)
!5783 = !DILocation(line: 170, column: 3, scope: !5773)
!5784 = !DILocation(line: 171, column: 21, scope: !5773)
!5785 = !DILocation(line: 171, column: 41, scope: !5773)
!5786 = !DILocation(line: 171, column: 45, scope: !5773)
!5787 = !DILocation(line: 171, column: 38, scope: !5773)
!5788 = !DILocation(line: 171, column: 33, scope: !5773)
!5789 = !DILocation(line: 171, column: 3, scope: !5773)
!5790 = !DILocation(line: 172, column: 21, scope: !5773)
!5791 = !DILocation(line: 172, column: 41, scope: !5773)
!5792 = !DILocation(line: 172, column: 45, scope: !5773)
!5793 = !DILocation(line: 172, column: 38, scope: !5773)
!5794 = !DILocation(line: 172, column: 33, scope: !5773)
!5795 = !DILocation(line: 172, column: 3, scope: !5773)
!5796 = !DILocation(line: 175, column: 2, scope: !5686)
!5797 = distinct !DISubprogram(name: "lgs8gxx_set_ad_mode", scope: !3, file: !3, line: 118, type: !4912, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5798 = !DILocalVariable(name: "priv", arg: 1, scope: !5797, file: !3, line: 118, type: !294)
!5799 = !DILocation(line: 118, column: 54, scope: !5797)
!5800 = !DILocalVariable(name: "config", scope: !5797, file: !3, line: 120, type: !4017)
!5801 = !DILocation(line: 120, column: 31, scope: !5797)
!5802 = !DILocation(line: 120, column: 40, scope: !5797)
!5803 = !DILocation(line: 120, column: 46, scope: !5797)
!5804 = !DILocalVariable(name: "if_conf", scope: !5797, file: !3, line: 121, type: !340)
!5805 = !DILocation(line: 121, column: 5, scope: !5797)
!5806 = !DILocation(line: 123, column: 10, scope: !5797)
!5807 = !DILocation(line: 126, column: 5, scope: !5797)
!5808 = !DILocation(line: 126, column: 13, scope: !5797)
!5809 = !DILocation(line: 126, column: 4, scope: !5797)
!5810 = !DILocation(line: 127, column: 5, scope: !5797)
!5811 = !DILocation(line: 127, column: 13, scope: !5797)
!5812 = !DILocation(line: 127, column: 4, scope: !5797)
!5813 = !DILocation(line: 126, column: 37, scope: !5797)
!5814 = !DILocation(line: 128, column: 5, scope: !5797)
!5815 = !DILocation(line: 128, column: 13, scope: !5797)
!5816 = !DILocation(line: 128, column: 21, scope: !5797)
!5817 = !DILocation(line: 128, column: 4, scope: !5797)
!5818 = !DILocation(line: 127, column: 43, scope: !5797)
!5819 = !DILocation(line: 129, column: 5, scope: !5797)
!5820 = !DILocation(line: 129, column: 13, scope: !5797)
!5821 = !DILocation(line: 129, column: 4, scope: !5797)
!5822 = !DILocation(line: 128, column: 42, scope: !5797)
!5823 = !DILocation(line: 130, column: 5, scope: !5797)
!5824 = !DILocation(line: 130, column: 13, scope: !5797)
!5825 = !DILocation(line: 130, column: 4, scope: !5797)
!5826 = !DILocation(line: 129, column: 40, scope: !5797)
!5827 = !DILocation(line: 125, column: 10, scope: !5797)
!5828 = !DILocation(line: 132, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 132, column: 6)
!5830 = !DILocation(line: 132, column: 14, scope: !5829)
!5831 = !DILocation(line: 132, column: 22, scope: !5829)
!5832 = !DILocation(line: 133, column: 4, scope: !5829)
!5833 = !DILocation(line: 133, column: 12, scope: !5829)
!5834 = !DILocation(line: 133, column: 17, scope: !5829)
!5835 = !DILocation(line: 132, column: 6, scope: !5797)
!5836 = !DILocation(line: 134, column: 21, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 133, column: 43)
!5838 = !DILocation(line: 134, column: 3, scope: !5837)
!5839 = !DILocation(line: 135, column: 2, scope: !5837)
!5840 = !DILocation(line: 137, column: 20, scope: !5797)
!5841 = !DILocation(line: 137, column: 32, scope: !5797)
!5842 = !DILocation(line: 137, column: 2, scope: !5797)
!5843 = !DILocation(line: 139, column: 2, scope: !5797)
!5844 = distinct !DISubprogram(name: "lgs8gxx_write_reg", scope: !3, file: !3, line: 40, type: !5845, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!317, !294, !340, !340}
!5847 = !DILocalVariable(name: "priv", arg: 1, scope: !5844, file: !3, line: 40, type: !294)
!5848 = !DILocation(line: 40, column: 52, scope: !5844)
!5849 = !DILocalVariable(name: "reg", arg: 2, scope: !5844, file: !3, line: 40, type: !340)
!5850 = !DILocation(line: 40, column: 61, scope: !5844)
!5851 = !DILocalVariable(name: "data", arg: 3, scope: !5844, file: !3, line: 40, type: !340)
!5852 = !DILocation(line: 40, column: 69, scope: !5844)
!5853 = !DILocalVariable(name: "ret", scope: !5844, file: !3, line: 42, type: !317)
!5854 = !DILocation(line: 42, column: 6, scope: !5844)
!5855 = !DILocalVariable(name: "buf", scope: !5844, file: !3, line: 43, type: !5856)
!5856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 16, elements: !2391)
!5857 = !DILocation(line: 43, column: 5, scope: !5844)
!5858 = !DILocation(line: 43, column: 13, scope: !5844)
!5859 = !DILocation(line: 43, column: 15, scope: !5844)
!5860 = !DILocation(line: 43, column: 20, scope: !5844)
!5861 = !DILocalVariable(name: "msg", scope: !5844, file: !3, line: 44, type: !319)
!5862 = !DILocation(line: 44, column: 17, scope: !5844)
!5863 = !DILocation(line: 44, column: 23, scope: !5844)
!5864 = !DILocation(line: 44, column: 44, scope: !5844)
!5865 = !DILocation(line: 46, column: 13, scope: !5844)
!5866 = !DILocation(line: 46, column: 19, scope: !5844)
!5867 = !DILocation(line: 46, column: 27, scope: !5844)
!5868 = !DILocation(line: 46, column: 6, scope: !5844)
!5869 = !DILocation(line: 46, column: 11, scope: !5844)
!5870 = !DILocation(line: 47, column: 6, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 47, column: 6)
!5872 = !DILocation(line: 47, column: 12, scope: !5871)
!5873 = !DILocation(line: 47, column: 20, scope: !5871)
!5874 = !DILocation(line: 47, column: 25, scope: !5871)
!5875 = !DILocation(line: 47, column: 49, scope: !5871)
!5876 = !DILocation(line: 47, column: 52, scope: !5871)
!5877 = !DILocation(line: 47, column: 56, scope: !5871)
!5878 = !DILocation(line: 47, column: 6, scope: !5844)
!5879 = !DILocation(line: 48, column: 7, scope: !5871)
!5880 = !DILocation(line: 48, column: 12, scope: !5871)
!5881 = !DILocation(line: 48, column: 3, scope: !5871)
!5882 = !DILocation(line: 50, column: 6, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 50, column: 6)
!5884 = !DILocation(line: 50, column: 12, scope: !5883)
!5885 = !DILocation(line: 50, column: 6, scope: !5844)
!5886 = !DILocation(line: 51, column: 3, scope: !5883)
!5887 = !DILocation(line: 51, column: 3, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 51, column: 3)
!5889 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 51, column: 3)
!5890 = !DILocation(line: 51, column: 3, scope: !5889)
!5891 = !DILocation(line: 53, column: 21, scope: !5844)
!5892 = !DILocation(line: 53, column: 27, scope: !5844)
!5893 = !DILocation(line: 53, column: 8, scope: !5844)
!5894 = !DILocation(line: 53, column: 6, scope: !5844)
!5895 = !DILocation(line: 55, column: 6, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5844, file: !3, line: 55, column: 6)
!5897 = !DILocation(line: 55, column: 10, scope: !5896)
!5898 = !DILocation(line: 55, column: 6, scope: !5844)
!5899 = !DILocation(line: 56, column: 3, scope: !5896)
!5900 = !DILocation(line: 56, column: 3, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 56, column: 3)
!5902 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 56, column: 3)
!5903 = !DILocation(line: 56, column: 3, scope: !5902)
!5904 = !DILocation(line: 59, column: 10, scope: !5844)
!5905 = !DILocation(line: 59, column: 14, scope: !5844)
!5906 = !DILocation(line: 59, column: 9, scope: !5844)
!5907 = !DILocation(line: 59, column: 2, scope: !5844)
!5908 = distinct !DISubprogram(name: "lgs8gxx_auto_lock", scope: !3, file: !3, line: 468, type: !5909, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{null, !294}
!5911 = !DILocalVariable(name: "priv", arg: 1, scope: !5908, file: !3, line: 468, type: !294)
!5912 = !DILocation(line: 468, column: 53, scope: !5908)
!5913 = !DILocalVariable(name: "err", scope: !5908, file: !3, line: 470, type: !4386)
!5914 = !DILocation(line: 470, column: 5, scope: !5908)
!5915 = !DILocalVariable(name: "gi", scope: !5908, file: !3, line: 471, type: !340)
!5916 = !DILocation(line: 471, column: 5, scope: !5908)
!5917 = !DILocalVariable(name: "detected_param", scope: !5908, file: !3, line: 472, type: !340)
!5918 = !DILocation(line: 472, column: 5, scope: !5908)
!5919 = !DILocation(line: 474, column: 28, scope: !5908)
!5920 = !DILocation(line: 474, column: 8, scope: !5908)
!5921 = !DILocation(line: 474, column: 6, scope: !5908)
!5922 = !DILocation(line: 476, column: 6, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 476, column: 6)
!5924 = !DILocation(line: 476, column: 10, scope: !5923)
!5925 = !DILocation(line: 476, column: 6, scope: !5908)
!5926 = !DILocation(line: 477, column: 3, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 476, column: 16)
!5928 = !DILocation(line: 477, column: 3, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 477, column: 3)
!5930 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 477, column: 3)
!5931 = !DILocation(line: 477, column: 3, scope: !5930)
!5932 = !DILocation(line: 478, column: 2, scope: !5927)
!5933 = !DILocation(line: 479, column: 3, scope: !5923)
!5934 = !DILocation(line: 479, column: 3, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 479, column: 3)
!5936 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 479, column: 3)
!5937 = !DILocation(line: 479, column: 3, scope: !5936)
!5938 = !DILocation(line: 482, column: 6, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 482, column: 6)
!5940 = !DILocation(line: 482, column: 12, scope: !5939)
!5941 = !DILocation(line: 482, column: 20, scope: !5939)
!5942 = !DILocation(line: 482, column: 25, scope: !5939)
!5943 = !DILocation(line: 482, column: 6, scope: !5908)
!5944 = !DILocalVariable(name: "inter_leave_len", scope: !5945, file: !3, line: 483, type: !340)
!5945 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 482, column: 50)
!5946 = !DILocation(line: 483, column: 6, scope: !5945)
!5947 = !DILocation(line: 483, column: 24, scope: !5945)
!5948 = !DILocation(line: 483, column: 39, scope: !5945)
!5949 = !DILocation(line: 485, column: 22, scope: !5945)
!5950 = !DILocation(line: 485, column: 38, scope: !5945)
!5951 = !DILocation(line: 485, column: 21, scope: !5945)
!5952 = !DILocation(line: 485, column: 19, scope: !5945)
!5953 = !DILocation(line: 486, column: 18, scope: !5945)
!5954 = !DILocation(line: 487, column: 21, scope: !5945)
!5955 = !DILocation(line: 487, column: 18, scope: !5945)
!5956 = !DILocation(line: 488, column: 2, scope: !5945)
!5957 = !DILocation(line: 489, column: 6, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 489, column: 6)
!5959 = !DILocation(line: 489, column: 12, scope: !5958)
!5960 = !DILocation(line: 489, column: 20, scope: !5958)
!5961 = !DILocation(line: 489, column: 25, scope: !5958)
!5962 = !DILocation(line: 489, column: 6, scope: !5908)
!5963 = !DILocalVariable(name: "t", scope: !5964, file: !3, line: 490, type: !340)
!5964 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 489, column: 50)
!5965 = !DILocation(line: 490, column: 6, scope: !5964)
!5966 = !DILocation(line: 491, column: 20, scope: !5964)
!5967 = !DILocation(line: 491, column: 3, scope: !5964)
!5968 = !DILocation(line: 492, column: 5, scope: !5964)
!5969 = !DILocation(line: 493, column: 8, scope: !5964)
!5970 = !DILocation(line: 493, column: 23, scope: !5964)
!5971 = !DILocation(line: 493, column: 5, scope: !5964)
!5972 = !DILocation(line: 494, column: 21, scope: !5964)
!5973 = !DILocation(line: 494, column: 33, scope: !5964)
!5974 = !DILocation(line: 494, column: 3, scope: !5964)
!5975 = !DILocation(line: 495, column: 2, scope: !5964)
!5976 = !DILocation(line: 496, column: 21, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 495, column: 9)
!5978 = !DILocation(line: 496, column: 33, scope: !5977)
!5979 = !DILocation(line: 496, column: 3, scope: !5977)
!5980 = !DILocation(line: 497, column: 7, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 497, column: 7)
!5982 = !DILocation(line: 497, column: 13, scope: !5981)
!5983 = !DILocation(line: 497, column: 21, scope: !5981)
!5984 = !DILocation(line: 497, column: 26, scope: !5981)
!5985 = !DILocation(line: 497, column: 7, scope: !5977)
!5986 = !DILocation(line: 498, column: 22, scope: !5981)
!5987 = !DILocation(line: 498, column: 34, scope: !5981)
!5988 = !DILocation(line: 498, column: 4, scope: !5981)
!5989 = !DILocation(line: 503, column: 26, scope: !5908)
!5990 = !DILocation(line: 503, column: 2, scope: !5908)
!5991 = !DILocation(line: 505, column: 10, scope: !5908)
!5992 = !DILocation(line: 505, column: 2, scope: !5908)
!5993 = !DILocation(line: 507, column: 3, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 505, column: 14)
!5995 = !DILocation(line: 507, column: 9, scope: !5994)
!5996 = !DILocation(line: 507, column: 17, scope: !5994)
!5997 = !DILocation(line: 507, column: 24, scope: !5994)
!5998 = !DILocation(line: 509, column: 3, scope: !5994)
!5999 = !DILocation(line: 509, column: 9, scope: !5994)
!6000 = !DILocation(line: 509, column: 17, scope: !5994)
!6001 = !DILocation(line: 509, column: 24, scope: !5994)
!6002 = !DILocation(line: 511, column: 3, scope: !5994)
!6003 = !DILocation(line: 511, column: 9, scope: !5994)
!6004 = !DILocation(line: 511, column: 17, scope: !5994)
!6005 = !DILocation(line: 511, column: 24, scope: !5994)
!6006 = !DILocation(line: 513, column: 3, scope: !5994)
!6007 = !DILocation(line: 513, column: 9, scope: !5994)
!6008 = !DILocation(line: 513, column: 17, scope: !5994)
!6009 = !DILocation(line: 513, column: 24, scope: !5994)
!6010 = !DILocation(line: 515, column: 1, scope: !5908)
!6011 = distinct !DISubprogram(name: "lgs8gxx_auto_detect", scope: !3, file: !3, line: 398, type: !6012, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{!317, !294, !4286, !4286}
!6014 = !DILocalVariable(name: "priv", arg: 1, scope: !6011, file: !3, line: 398, type: !294)
!6015 = !DILocation(line: 398, column: 54, scope: !6011)
!6016 = !DILocalVariable(name: "detected_param", arg: 2, scope: !6011, file: !3, line: 399, type: !4286)
!6017 = !DILocation(line: 399, column: 15, scope: !6011)
!6018 = !DILocalVariable(name: "gi", arg: 3, scope: !6011, file: !3, line: 399, type: !4286)
!6019 = !DILocation(line: 399, column: 35, scope: !6011)
!6020 = !DILocalVariable(name: "i", scope: !6011, file: !3, line: 401, type: !317)
!6021 = !DILocation(line: 401, column: 6, scope: !6011)
!6022 = !DILocalVariable(name: "j", scope: !6011, file: !3, line: 401, type: !317)
!6023 = !DILocation(line: 401, column: 9, scope: !6011)
!6024 = !DILocalVariable(name: "err", scope: !6011, file: !3, line: 402, type: !317)
!6025 = !DILocation(line: 402, column: 6, scope: !6011)
!6026 = !DILocalVariable(name: "locked", scope: !6011, file: !3, line: 403, type: !340)
!6027 = !DILocation(line: 403, column: 5, scope: !6011)
!6028 = !DILocalVariable(name: "tmp_gi", scope: !6011, file: !3, line: 403, type: !340)
!6029 = !DILocation(line: 403, column: 17, scope: !6011)
!6030 = !DILocation(line: 405, column: 2, scope: !6011)
!6031 = !DILocation(line: 405, column: 2, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 405, column: 2)
!6033 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 405, column: 2)
!6034 = !DILocation(line: 405, column: 2, scope: !6033)
!6035 = !DILocation(line: 407, column: 24, scope: !6011)
!6036 = !DILocation(line: 407, column: 2, scope: !6011)
!6037 = !DILocation(line: 408, column: 6, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 408, column: 6)
!6039 = !DILocation(line: 408, column: 12, scope: !6038)
!6040 = !DILocation(line: 408, column: 20, scope: !6038)
!6041 = !DILocation(line: 408, column: 25, scope: !6038)
!6042 = !DILocation(line: 408, column: 6, scope: !6011)
!6043 = !DILocation(line: 409, column: 21, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 408, column: 50)
!6045 = !DILocation(line: 409, column: 3, scope: !6044)
!6046 = !DILocation(line: 410, column: 21, scope: !6044)
!6047 = !DILocation(line: 410, column: 3, scope: !6044)
!6048 = !DILocation(line: 411, column: 2, scope: !6044)
!6049 = !DILocation(line: 413, column: 21, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 411, column: 9)
!6051 = !DILocation(line: 413, column: 3, scope: !6050)
!6052 = !DILocation(line: 416, column: 9, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 416, column: 2)
!6054 = !DILocation(line: 416, column: 7, scope: !6053)
!6055 = !DILocation(line: 416, column: 14, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 416, column: 2)
!6057 = !DILocation(line: 416, column: 16, scope: !6056)
!6058 = !DILocation(line: 416, column: 2, scope: !6053)
!6059 = !DILocation(line: 417, column: 10, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 417, column: 3)
!6061 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 416, column: 26)
!6062 = !DILocation(line: 417, column: 8, scope: !6060)
!6063 = !DILocation(line: 417, column: 15, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 417, column: 3)
!6065 = !DILocation(line: 417, column: 17, scope: !6064)
!6066 = !DILocation(line: 417, column: 3, scope: !6060)
!6067 = !DILocation(line: 418, column: 11, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 417, column: 27)
!6069 = !DILocation(line: 419, column: 30, scope: !6068)
!6070 = !DILocation(line: 419, column: 44, scope: !6068)
!6071 = !DILocation(line: 419, column: 10, scope: !6068)
!6072 = !DILocation(line: 419, column: 8, scope: !6068)
!6073 = !DILocation(line: 420, column: 8, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 420, column: 8)
!6075 = !DILocation(line: 420, column: 8, scope: !6068)
!6076 = !DILocation(line: 421, column: 5, scope: !6074)
!6077 = !DILocation(line: 422, column: 8, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 422, column: 8)
!6079 = !DILocation(line: 422, column: 8, scope: !6068)
!6080 = !DILocation(line: 423, column: 5, scope: !6078)
!6081 = !DILocation(line: 424, column: 3, scope: !6068)
!6082 = !DILocation(line: 417, column: 23, scope: !6064)
!6083 = !DILocation(line: 417, column: 3, scope: !6064)
!6084 = distinct !{!6084, !6066, !6085}
!6085 = !DILocation(line: 424, column: 3, scope: !6060)
!6086 = !DILocation(line: 425, column: 10, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 425, column: 3)
!6088 = !DILocation(line: 425, column: 8, scope: !6087)
!6089 = !DILocation(line: 425, column: 15, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 425, column: 3)
!6091 = !DILocation(line: 425, column: 17, scope: !6090)
!6092 = !DILocation(line: 425, column: 3, scope: !6087)
!6093 = !DILocation(line: 426, column: 11, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 425, column: 27)
!6095 = !DILocation(line: 427, column: 30, scope: !6094)
!6096 = !DILocation(line: 427, column: 44, scope: !6094)
!6097 = !DILocation(line: 427, column: 10, scope: !6094)
!6098 = !DILocation(line: 427, column: 8, scope: !6094)
!6099 = !DILocation(line: 428, column: 8, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 428, column: 8)
!6101 = !DILocation(line: 428, column: 8, scope: !6094)
!6102 = !DILocation(line: 429, column: 5, scope: !6100)
!6103 = !DILocation(line: 430, column: 8, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 430, column: 8)
!6105 = !DILocation(line: 430, column: 8, scope: !6094)
!6106 = !DILocation(line: 431, column: 5, scope: !6104)
!6107 = !DILocation(line: 432, column: 3, scope: !6094)
!6108 = !DILocation(line: 425, column: 23, scope: !6090)
!6109 = !DILocation(line: 425, column: 3, scope: !6090)
!6110 = distinct !{!6110, !6092, !6111}
!6111 = !DILocation(line: 432, column: 3, scope: !6087)
!6112 = !DILocation(line: 433, column: 10, scope: !6061)
!6113 = !DILocation(line: 434, column: 29, scope: !6061)
!6114 = !DILocation(line: 434, column: 9, scope: !6061)
!6115 = !DILocation(line: 434, column: 7, scope: !6061)
!6116 = !DILocation(line: 435, column: 7, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 435, column: 7)
!6118 = !DILocation(line: 435, column: 7, scope: !6061)
!6119 = !DILocation(line: 436, column: 4, scope: !6117)
!6120 = !DILocation(line: 437, column: 7, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 437, column: 7)
!6122 = !DILocation(line: 437, column: 7, scope: !6061)
!6123 = !DILocation(line: 438, column: 4, scope: !6121)
!6124 = !DILocation(line: 439, column: 2, scope: !6061)
!6125 = !DILocation(line: 416, column: 22, scope: !6056)
!6126 = !DILocation(line: 416, column: 2, scope: !6056)
!6127 = distinct !{!6127, !6058, !6128}
!6128 = !DILocation(line: 439, column: 2, scope: !6053)
!6129 = !DILabel(scope: !6011, name: "locked", file: !3, line: 441)
!6130 = !DILocation(line: 441, column: 1, scope: !6011)
!6131 = !DILocation(line: 442, column: 7, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 442, column: 6)
!6133 = !DILocation(line: 442, column: 11, scope: !6132)
!6134 = !DILocation(line: 442, column: 17, scope: !6132)
!6135 = !DILocation(line: 442, column: 21, scope: !6132)
!6136 = !DILocation(line: 442, column: 28, scope: !6132)
!6137 = !DILocation(line: 442, column: 6, scope: !6011)
!6138 = !DILocalVariable(name: "t", scope: !6139, file: !3, line: 443, type: !340)
!6139 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 442, column: 35)
!6140 = !DILocation(line: 443, column: 6, scope: !6139)
!6141 = !DILocation(line: 445, column: 7, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 445, column: 7)
!6143 = !DILocation(line: 445, column: 13, scope: !6142)
!6144 = !DILocation(line: 445, column: 21, scope: !6142)
!6145 = !DILocation(line: 445, column: 26, scope: !6142)
!6146 = !DILocation(line: 445, column: 7, scope: !6139)
!6147 = !DILocation(line: 446, column: 21, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 445, column: 51)
!6149 = !DILocation(line: 446, column: 4, scope: !6148)
!6150 = !DILocation(line: 447, column: 22, scope: !6148)
!6151 = !DILocation(line: 447, column: 5, scope: !6148)
!6152 = !DILocation(line: 447, column: 20, scope: !6148)
!6153 = !DILocation(line: 448, column: 3, scope: !6148)
!6154 = !DILocation(line: 449, column: 21, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 448, column: 10)
!6156 = !DILocation(line: 449, column: 4, scope: !6155)
!6157 = !DILocation(line: 450, column: 22, scope: !6155)
!6158 = !DILocation(line: 450, column: 24, scope: !6155)
!6159 = !DILocation(line: 450, column: 5, scope: !6155)
!6160 = !DILocation(line: 450, column: 20, scope: !6155)
!6161 = !DILocation(line: 453, column: 7, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 453, column: 7)
!6163 = !DILocation(line: 453, column: 14, scope: !6162)
!6164 = !DILocation(line: 453, column: 7, scope: !6139)
!6165 = !DILocation(line: 454, column: 4, scope: !6162)
!6166 = !DILocation(line: 454, column: 4, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6168, file: !3, line: 454, column: 4)
!6168 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 454, column: 4)
!6169 = !DILocation(line: 454, column: 4, scope: !6168)
!6170 = !DILocation(line: 455, column: 12, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 455, column: 12)
!6172 = !DILocation(line: 455, column: 19, scope: !6171)
!6173 = !DILocation(line: 455, column: 12, scope: !6162)
!6174 = !DILocation(line: 456, column: 4, scope: !6171)
!6175 = !DILocation(line: 456, column: 4, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 456, column: 4)
!6177 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 456, column: 4)
!6178 = !DILocation(line: 456, column: 4, scope: !6177)
!6179 = !DILocation(line: 457, column: 12, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 457, column: 12)
!6181 = !DILocation(line: 457, column: 19, scope: !6180)
!6182 = !DILocation(line: 457, column: 12, scope: !6171)
!6183 = !DILocation(line: 458, column: 4, scope: !6180)
!6184 = !DILocation(line: 458, column: 4, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 458, column: 4)
!6186 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 458, column: 4)
!6187 = !DILocation(line: 458, column: 4, scope: !6186)
!6188 = !DILocation(line: 459, column: 9, scope: !6139)
!6189 = !DILocation(line: 459, column: 4, scope: !6139)
!6190 = !DILocation(line: 459, column: 7, scope: !6139)
!6191 = !DILocation(line: 460, column: 2, scope: !6139)
!6192 = !DILocation(line: 461, column: 7, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 461, column: 6)
!6194 = !DILocation(line: 461, column: 6, scope: !6011)
!6195 = !DILocation(line: 462, column: 7, scope: !6193)
!6196 = !DILocation(line: 462, column: 3, scope: !6193)
!6197 = !DILabel(scope: !6011, name: "out", file: !3, line: 464)
!6198 = !DILocation(line: 464, column: 1, scope: !6011)
!6199 = !DILocation(line: 465, column: 9, scope: !6011)
!6200 = !DILocation(line: 465, column: 2, scope: !6011)
!6201 = distinct !DISubprogram(name: "lgs8gxx_set_mode_manual", scope: !3, file: !3, line: 251, type: !4912, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6202 = !DILocalVariable(name: "priv", arg: 1, scope: !6201, file: !3, line: 251, type: !294)
!6203 = !DILocation(line: 251, column: 58, scope: !6201)
!6204 = !DILocalVariable(name: "t", scope: !6201, file: !3, line: 253, type: !340)
!6205 = !DILocation(line: 253, column: 5, scope: !6201)
!6206 = !DILocation(line: 255, column: 6, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 255, column: 6)
!6208 = !DILocation(line: 255, column: 12, scope: !6207)
!6209 = !DILocation(line: 255, column: 20, scope: !6207)
!6210 = !DILocation(line: 255, column: 25, scope: !6207)
!6211 = !DILocation(line: 255, column: 6, scope: !6201)
!6212 = !DILocalVariable(name: "t2", scope: !6213, file: !3, line: 256, type: !340)
!6213 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 255, column: 50)
!6214 = !DILocation(line: 256, column: 6, scope: !6213)
!6215 = !DILocation(line: 257, column: 20, scope: !6213)
!6216 = !DILocation(line: 257, column: 3, scope: !6213)
!6217 = !DILocation(line: 258, column: 5, scope: !6213)
!6218 = !DILocation(line: 259, column: 21, scope: !6213)
!6219 = !DILocation(line: 259, column: 33, scope: !6213)
!6220 = !DILocation(line: 259, column: 3, scope: !6213)
!6221 = !DILocation(line: 261, column: 20, scope: !6213)
!6222 = !DILocation(line: 261, column: 3, scope: !6213)
!6223 = !DILocation(line: 262, column: 20, scope: !6213)
!6224 = !DILocation(line: 262, column: 3, scope: !6213)
!6225 = !DILocation(line: 264, column: 9, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 264, column: 7)
!6227 = !DILocation(line: 264, column: 10, scope: !6226)
!6228 = !DILocation(line: 264, column: 17, scope: !6226)
!6229 = !DILocation(line: 264, column: 26, scope: !6226)
!6230 = !DILocation(line: 264, column: 30, scope: !6226)
!6231 = !DILocation(line: 264, column: 32, scope: !6226)
!6232 = !DILocation(line: 264, column: 7, scope: !6213)
!6233 = !DILocation(line: 265, column: 22, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 264, column: 40)
!6235 = !DILocation(line: 265, column: 4, scope: !6234)
!6236 = !DILocation(line: 266, column: 22, scope: !6234)
!6237 = !DILocation(line: 266, column: 4, scope: !6234)
!6238 = !DILocation(line: 267, column: 22, scope: !6234)
!6239 = !DILocation(line: 267, column: 4, scope: !6234)
!6240 = !DILocation(line: 268, column: 22, scope: !6234)
!6241 = !DILocation(line: 268, column: 4, scope: !6234)
!6242 = !DILocation(line: 269, column: 22, scope: !6234)
!6243 = !DILocation(line: 269, column: 4, scope: !6234)
!6244 = !DILocation(line: 270, column: 22, scope: !6234)
!6245 = !DILocation(line: 270, column: 4, scope: !6234)
!6246 = !DILocation(line: 271, column: 3, scope: !6234)
!6247 = !DILocation(line: 272, column: 22, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 271, column: 10)
!6249 = !DILocation(line: 272, column: 4, scope: !6248)
!6250 = !DILocation(line: 273, column: 22, scope: !6248)
!6251 = !DILocation(line: 273, column: 4, scope: !6248)
!6252 = !DILocation(line: 274, column: 22, scope: !6248)
!6253 = !DILocation(line: 274, column: 4, scope: !6248)
!6254 = !DILocation(line: 277, column: 22, scope: !6213)
!6255 = !DILocation(line: 277, column: 3, scope: !6213)
!6256 = !DILocation(line: 278, column: 3, scope: !6213)
!6257 = !DILocation(line: 282, column: 20, scope: !6201)
!6258 = !DILocation(line: 282, column: 2, scope: !6201)
!6259 = !DILocation(line: 283, column: 6, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 283, column: 6)
!6261 = !DILocation(line: 283, column: 12, scope: !6260)
!6262 = !DILocation(line: 283, column: 20, scope: !6260)
!6263 = !DILocation(line: 283, column: 25, scope: !6260)
!6264 = !DILocation(line: 283, column: 6, scope: !6201)
!6265 = !DILocation(line: 284, column: 21, scope: !6260)
!6266 = !DILocation(line: 284, column: 3, scope: !6260)
!6267 = !DILocation(line: 286, column: 19, scope: !6201)
!6268 = !DILocation(line: 286, column: 2, scope: !6201)
!6269 = !DILocation(line: 287, column: 7, scope: !6201)
!6270 = !DILocation(line: 287, column: 9, scope: !6201)
!6271 = !DILocation(line: 287, column: 17, scope: !6201)
!6272 = !DILocation(line: 287, column: 6, scope: !6201)
!6273 = !DILocation(line: 287, column: 4, scope: !6201)
!6274 = !DILocation(line: 288, column: 20, scope: !6201)
!6275 = !DILocation(line: 288, column: 32, scope: !6201)
!6276 = !DILocation(line: 288, column: 2, scope: !6201)
!6277 = !DILocation(line: 290, column: 21, scope: !6201)
!6278 = !DILocation(line: 290, column: 2, scope: !6201)
!6279 = !DILocation(line: 292, column: 2, scope: !6201)
!6280 = !DILocation(line: 293, column: 1, scope: !6201)
!6281 = distinct !DISubprogram(name: "lgs8gxx_set_mode_auto", scope: !3, file: !3, line: 204, type: !4912, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6282 = !DILocalVariable(name: "priv", arg: 1, scope: !6281, file: !3, line: 204, type: !294)
!6283 = !DILocation(line: 204, column: 56, scope: !6281)
!6284 = !DILocalVariable(name: "t", scope: !6281, file: !3, line: 206, type: !340)
!6285 = !DILocation(line: 206, column: 5, scope: !6281)
!6286 = !DILocalVariable(name: "prod", scope: !6281, file: !3, line: 207, type: !340)
!6287 = !DILocation(line: 207, column: 5, scope: !6281)
!6288 = !DILocation(line: 207, column: 12, scope: !6281)
!6289 = !DILocation(line: 207, column: 18, scope: !6281)
!6290 = !DILocation(line: 207, column: 26, scope: !6281)
!6291 = !DILocation(line: 209, column: 6, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 209, column: 6)
!6293 = !DILocation(line: 209, column: 11, scope: !6292)
!6294 = !DILocation(line: 209, column: 6, scope: !6281)
!6295 = !DILocation(line: 210, column: 21, scope: !6292)
!6296 = !DILocation(line: 210, column: 3, scope: !6292)
!6297 = !DILocation(line: 212, column: 6, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 212, column: 6)
!6299 = !DILocation(line: 212, column: 11, scope: !6298)
!6300 = !DILocation(line: 212, column: 6, scope: !6281)
!6301 = !DILocation(line: 213, column: 20, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 212, column: 36)
!6303 = !DILocation(line: 213, column: 3, scope: !6302)
!6304 = !DILocation(line: 214, column: 5, scope: !6302)
!6305 = !DILocation(line: 215, column: 21, scope: !6302)
!6306 = !DILocation(line: 215, column: 33, scope: !6302)
!6307 = !DILocation(line: 215, column: 35, scope: !6302)
!6308 = !DILocation(line: 215, column: 3, scope: !6302)
!6309 = !DILocation(line: 216, column: 21, scope: !6302)
!6310 = !DILocation(line: 216, column: 3, scope: !6302)
!6311 = !DILocation(line: 217, column: 21, scope: !6302)
!6312 = !DILocation(line: 217, column: 3, scope: !6302)
!6313 = !DILocation(line: 218, column: 2, scope: !6302)
!6314 = !DILocation(line: 218, column: 13, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 218, column: 13)
!6316 = !DILocation(line: 218, column: 18, scope: !6315)
!6317 = !DILocation(line: 218, column: 42, scope: !6315)
!6318 = !DILocation(line: 219, column: 3, scope: !6315)
!6319 = !DILocation(line: 219, column: 8, scope: !6315)
!6320 = !DILocation(line: 219, column: 32, scope: !6315)
!6321 = !DILocation(line: 220, column: 3, scope: !6315)
!6322 = !DILocation(line: 220, column: 8, scope: !6315)
!6323 = !DILocation(line: 220, column: 32, scope: !6315)
!6324 = !DILocation(line: 221, column: 3, scope: !6315)
!6325 = !DILocation(line: 221, column: 8, scope: !6315)
!6326 = !DILocation(line: 221, column: 32, scope: !6315)
!6327 = !DILocation(line: 222, column: 3, scope: !6315)
!6328 = !DILocation(line: 222, column: 8, scope: !6315)
!6329 = !DILocation(line: 218, column: 13, scope: !6298)
!6330 = !DILocation(line: 223, column: 20, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 222, column: 33)
!6332 = !DILocation(line: 223, column: 3, scope: !6331)
!6333 = !DILocation(line: 224, column: 21, scope: !6331)
!6334 = !DILocation(line: 224, column: 33, scope: !6331)
!6335 = !DILocation(line: 224, column: 35, scope: !6331)
!6336 = !DILocation(line: 224, column: 3, scope: !6331)
!6337 = !DILocation(line: 227, column: 20, scope: !6331)
!6338 = !DILocation(line: 227, column: 3, scope: !6331)
!6339 = !DILocation(line: 228, column: 21, scope: !6331)
!6340 = !DILocation(line: 228, column: 33, scope: !6331)
!6341 = !DILocation(line: 228, column: 35, scope: !6331)
!6342 = !DILocation(line: 228, column: 3, scope: !6331)
!6343 = !DILocation(line: 229, column: 2, scope: !6331)
!6344 = !DILocation(line: 231, column: 6, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 231, column: 6)
!6346 = !DILocation(line: 231, column: 11, scope: !6345)
!6347 = !DILocation(line: 231, column: 6, scope: !6281)
!6348 = !DILocation(line: 233, column: 21, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6345, file: !3, line: 231, column: 36)
!6350 = !DILocation(line: 233, column: 3, scope: !6349)
!6351 = !DILocation(line: 235, column: 20, scope: !6349)
!6352 = !DILocation(line: 235, column: 3, scope: !6349)
!6353 = !DILocation(line: 236, column: 8, scope: !6349)
!6354 = !DILocation(line: 236, column: 10, scope: !6349)
!6355 = !DILocation(line: 236, column: 18, scope: !6349)
!6356 = !DILocation(line: 236, column: 7, scope: !6349)
!6357 = !DILocation(line: 236, column: 5, scope: !6349)
!6358 = !DILocation(line: 237, column: 21, scope: !6349)
!6359 = !DILocation(line: 237, column: 33, scope: !6349)
!6360 = !DILocation(line: 237, column: 3, scope: !6349)
!6361 = !DILocation(line: 240, column: 20, scope: !6349)
!6362 = !DILocation(line: 240, column: 3, scope: !6349)
!6363 = !DILocation(line: 241, column: 8, scope: !6349)
!6364 = !DILocation(line: 241, column: 10, scope: !6349)
!6365 = !DILocation(line: 241, column: 18, scope: !6349)
!6366 = !DILocation(line: 241, column: 7, scope: !6349)
!6367 = !DILocation(line: 241, column: 5, scope: !6349)
!6368 = !DILocation(line: 242, column: 21, scope: !6349)
!6369 = !DILocation(line: 242, column: 33, scope: !6349)
!6370 = !DILocation(line: 242, column: 3, scope: !6349)
!6371 = !DILocation(line: 243, column: 2, scope: !6349)
!6372 = !DILocation(line: 245, column: 6, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 245, column: 6)
!6374 = !DILocation(line: 245, column: 12, scope: !6373)
!6375 = !DILocation(line: 245, column: 20, scope: !6373)
!6376 = !DILocation(line: 245, column: 25, scope: !6373)
!6377 = !DILocation(line: 245, column: 6, scope: !6281)
!6378 = !DILocation(line: 246, column: 21, scope: !6373)
!6379 = !DILocation(line: 246, column: 3, scope: !6373)
!6380 = !DILocation(line: 248, column: 2, scope: !6281)
!6381 = distinct !DISubprogram(name: "lgs8gxx_autolock_gi", scope: !3, file: !3, line: 358, type: !6382, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6382 = !DISubroutineType(types: !6383)
!6383 = !{!317, !294, !340, !340, !4286}
!6384 = !DILocalVariable(name: "priv", arg: 1, scope: !6381, file: !3, line: 358, type: !294)
!6385 = !DILocation(line: 358, column: 54, scope: !6381)
!6386 = !DILocalVariable(name: "gi", arg: 2, scope: !6381, file: !3, line: 358, type: !340)
!6387 = !DILocation(line: 358, column: 63, scope: !6381)
!6388 = !DILocalVariable(name: "cpn", arg: 3, scope: !6381, file: !3, line: 358, type: !340)
!6389 = !DILocation(line: 358, column: 70, scope: !6381)
!6390 = !DILocalVariable(name: "locked", arg: 4, scope: !6381, file: !3, line: 359, type: !4286)
!6391 = !DILocation(line: 359, column: 6, scope: !6381)
!6392 = !DILocalVariable(name: "err", scope: !6381, file: !3, line: 361, type: !317)
!6393 = !DILocation(line: 361, column: 6, scope: !6381)
!6394 = !DILocalVariable(name: "ad_fini", scope: !6381, file: !3, line: 362, type: !340)
!6395 = !DILocation(line: 362, column: 5, scope: !6381)
!6396 = !DILocalVariable(name: "t1", scope: !6381, file: !3, line: 363, type: !340)
!6397 = !DILocation(line: 363, column: 5, scope: !6381)
!6398 = !DILocalVariable(name: "t2", scope: !6381, file: !3, line: 363, type: !340)
!6399 = !DILocation(line: 363, column: 9, scope: !6381)
!6400 = !DILocation(line: 365, column: 6, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 365, column: 6)
!6402 = !DILocation(line: 365, column: 9, scope: !6401)
!6403 = !DILocation(line: 365, column: 6, scope: !6381)
!6404 = !DILocation(line: 366, column: 3, scope: !6401)
!6405 = !DILocation(line: 366, column: 3, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6407, file: !3, line: 366, column: 3)
!6407 = distinct !DILexicalBlock(scope: !6401, file: !3, line: 366, column: 3)
!6408 = !DILocation(line: 366, column: 3, scope: !6407)
!6409 = !DILocation(line: 367, column: 11, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6401, file: !3, line: 367, column: 11)
!6411 = !DILocation(line: 367, column: 14, scope: !6410)
!6412 = !DILocation(line: 367, column: 11, scope: !6401)
!6413 = !DILocation(line: 368, column: 3, scope: !6410)
!6414 = !DILocation(line: 368, column: 3, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 368, column: 3)
!6416 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 368, column: 3)
!6417 = !DILocation(line: 368, column: 3, scope: !6416)
!6418 = !DILocation(line: 369, column: 11, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 369, column: 11)
!6420 = !DILocation(line: 369, column: 14, scope: !6419)
!6421 = !DILocation(line: 369, column: 11, scope: !6410)
!6422 = !DILocation(line: 370, column: 3, scope: !6419)
!6423 = !DILocation(line: 370, column: 3, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 370, column: 3)
!6425 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 370, column: 3)
!6426 = !DILocation(line: 370, column: 3, scope: !6425)
!6427 = !DILocation(line: 371, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 371, column: 6)
!6429 = !DILocation(line: 371, column: 12, scope: !6428)
!6430 = !DILocation(line: 371, column: 20, scope: !6428)
!6431 = !DILocation(line: 371, column: 25, scope: !6428)
!6432 = !DILocation(line: 371, column: 6, scope: !6381)
!6433 = !DILocation(line: 372, column: 20, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6428, file: !3, line: 371, column: 50)
!6435 = !DILocation(line: 372, column: 3, scope: !6434)
!6436 = !DILocation(line: 373, column: 20, scope: !6434)
!6437 = !DILocation(line: 373, column: 3, scope: !6434)
!6438 = !DILocation(line: 374, column: 6, scope: !6434)
!6439 = !DILocation(line: 375, column: 9, scope: !6434)
!6440 = !DILocation(line: 375, column: 6, scope: !6434)
!6441 = !DILocation(line: 376, column: 6, scope: !6434)
!6442 = !DILocation(line: 377, column: 9, scope: !6434)
!6443 = !DILocation(line: 377, column: 6, scope: !6434)
!6444 = !DILocation(line: 378, column: 21, scope: !6434)
!6445 = !DILocation(line: 378, column: 33, scope: !6434)
!6446 = !DILocation(line: 378, column: 3, scope: !6434)
!6447 = !DILocation(line: 379, column: 21, scope: !6434)
!6448 = !DILocation(line: 379, column: 33, scope: !6434)
!6449 = !DILocation(line: 379, column: 3, scope: !6434)
!6450 = !DILocation(line: 380, column: 2, scope: !6434)
!6451 = !DILocation(line: 381, column: 21, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6428, file: !3, line: 380, column: 9)
!6453 = !DILocation(line: 381, column: 33, scope: !6452)
!6454 = !DILocation(line: 381, column: 3, scope: !6452)
!6455 = !DILocation(line: 383, column: 21, scope: !6381)
!6456 = !DILocation(line: 383, column: 2, scope: !6381)
!6457 = !DILocation(line: 384, column: 29, scope: !6381)
!6458 = !DILocation(line: 384, column: 35, scope: !6381)
!6459 = !DILocation(line: 384, column: 8, scope: !6381)
!6460 = !DILocation(line: 384, column: 6, scope: !6381)
!6461 = !DILocation(line: 385, column: 6, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 385, column: 6)
!6463 = !DILocation(line: 385, column: 10, scope: !6462)
!6464 = !DILocation(line: 385, column: 16, scope: !6462)
!6465 = !DILocation(line: 385, column: 15, scope: !6462)
!6466 = !DILocation(line: 385, column: 14, scope: !6462)
!6467 = !DILocation(line: 385, column: 6, scope: !6381)
!6468 = !DILocation(line: 386, column: 10, scope: !6462)
!6469 = !DILocation(line: 386, column: 3, scope: !6462)
!6470 = !DILocation(line: 387, column: 39, scope: !6381)
!6471 = !DILocation(line: 387, column: 8, scope: !6381)
!6472 = !DILocation(line: 387, column: 6, scope: !6381)
!6473 = !DILocation(line: 388, column: 6, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 388, column: 6)
!6475 = !DILocation(line: 388, column: 10, scope: !6474)
!6476 = !DILocation(line: 388, column: 6, scope: !6381)
!6477 = !DILocation(line: 389, column: 10, scope: !6474)
!6478 = !DILocation(line: 389, column: 3, scope: !6474)
!6479 = !DILocation(line: 390, column: 6, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 390, column: 6)
!6481 = !DILocation(line: 390, column: 6, scope: !6381)
!6482 = !DILocation(line: 391, column: 3, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 390, column: 15)
!6484 = !DILocation(line: 391, column: 3, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6486, file: !3, line: 391, column: 3)
!6486 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 391, column: 3)
!6487 = !DILocation(line: 391, column: 3, scope: !6486)
!6488 = !DILocation(line: 392, column: 2, scope: !6483)
!6489 = !DILocation(line: 393, column: 4, scope: !6480)
!6490 = !DILocation(line: 393, column: 11, scope: !6480)
!6491 = !DILocation(line: 395, column: 2, scope: !6381)
!6492 = !DILocation(line: 396, column: 1, scope: !6381)
!6493 = distinct !DISubprogram(name: "lgs8gxx_soft_reset", scope: !3, file: !3, line: 91, type: !4912, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6494 = !DILocalVariable(name: "priv", arg: 1, scope: !6493, file: !3, line: 91, type: !294)
!6495 = !DILocation(line: 91, column: 53, scope: !6493)
!6496 = !DILocation(line: 93, column: 20, scope: !6493)
!6497 = !DILocation(line: 93, column: 2, scope: !6493)
!6498 = !DILocation(line: 94, column: 2, scope: !6493)
!6499 = !DILocation(line: 95, column: 20, scope: !6493)
!6500 = !DILocation(line: 95, column: 2, scope: !6493)
!6501 = !DILocation(line: 96, column: 2, scope: !6493)
!6502 = !DILocation(line: 98, column: 2, scope: !6493)
!6503 = distinct !DISubprogram(name: "lgs8gxx_wait_ca_lock", scope: !3, file: !3, line: 315, type: !6504, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!317, !294, !4286}
!6506 = !DILocalVariable(name: "priv", arg: 1, scope: !6503, file: !3, line: 315, type: !294)
!6507 = !DILocation(line: 315, column: 55, scope: !6503)
!6508 = !DILocalVariable(name: "locked", arg: 2, scope: !6503, file: !3, line: 315, type: !4286)
!6509 = !DILocation(line: 315, column: 65, scope: !6503)
!6510 = !DILocalVariable(name: "ret", scope: !6503, file: !3, line: 317, type: !317)
!6511 = !DILocation(line: 317, column: 6, scope: !6503)
!6512 = !DILocalVariable(name: "reg", scope: !6503, file: !3, line: 318, type: !340)
!6513 = !DILocation(line: 318, column: 5, scope: !6503)
!6514 = !DILocalVariable(name: "mask", scope: !6503, file: !3, line: 318, type: !340)
!6515 = !DILocation(line: 318, column: 10, scope: !6503)
!6516 = !DILocalVariable(name: "val", scope: !6503, file: !3, line: 318, type: !340)
!6517 = !DILocation(line: 318, column: 16, scope: !6503)
!6518 = !DILocation(line: 320, column: 6, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 320, column: 6)
!6520 = !DILocation(line: 320, column: 12, scope: !6519)
!6521 = !DILocation(line: 320, column: 20, scope: !6519)
!6522 = !DILocation(line: 320, column: 25, scope: !6519)
!6523 = !DILocation(line: 320, column: 6, scope: !6503)
!6524 = !DILocation(line: 321, column: 7, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6519, file: !3, line: 320, column: 50)
!6526 = !DILocation(line: 322, column: 8, scope: !6525)
!6527 = !DILocation(line: 323, column: 7, scope: !6525)
!6528 = !DILocation(line: 324, column: 2, scope: !6525)
!6529 = !DILocation(line: 325, column: 7, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6519, file: !3, line: 324, column: 9)
!6531 = !DILocation(line: 326, column: 8, scope: !6530)
!6532 = !DILocation(line: 327, column: 7, scope: !6530)
!6533 = !DILocation(line: 330, column: 22, scope: !6503)
!6534 = !DILocation(line: 330, column: 28, scope: !6503)
!6535 = !DILocation(line: 330, column: 33, scope: !6503)
!6536 = !DILocation(line: 330, column: 39, scope: !6503)
!6537 = !DILocation(line: 330, column: 8, scope: !6503)
!6538 = !DILocation(line: 330, column: 6, scope: !6503)
!6539 = !DILocation(line: 331, column: 13, scope: !6503)
!6540 = !DILocation(line: 331, column: 17, scope: !6503)
!6541 = !DILocation(line: 331, column: 12, scope: !6503)
!6542 = !DILocation(line: 331, column: 3, scope: !6503)
!6543 = !DILocation(line: 331, column: 10, scope: !6503)
!6544 = !DILocation(line: 333, column: 2, scope: !6503)
!6545 = distinct !DISubprogram(name: "lgs8gxx_is_autodetect_finished", scope: !3, file: !3, line: 336, type: !6504, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6546 = !DILocalVariable(name: "priv", arg: 1, scope: !6545, file: !3, line: 336, type: !294)
!6547 = !DILocation(line: 336, column: 65, scope: !6545)
!6548 = !DILocalVariable(name: "finished", arg: 2, scope: !6545, file: !3, line: 337, type: !4286)
!6549 = !DILocation(line: 337, column: 12, scope: !6545)
!6550 = !DILocalVariable(name: "ret", scope: !6545, file: !3, line: 339, type: !317)
!6551 = !DILocation(line: 339, column: 6, scope: !6545)
!6552 = !DILocalVariable(name: "reg", scope: !6545, file: !3, line: 340, type: !340)
!6553 = !DILocation(line: 340, column: 5, scope: !6545)
!6554 = !DILocalVariable(name: "mask", scope: !6545, file: !3, line: 340, type: !340)
!6555 = !DILocation(line: 340, column: 10, scope: !6545)
!6556 = !DILocalVariable(name: "val", scope: !6545, file: !3, line: 340, type: !340)
!6557 = !DILocation(line: 340, column: 16, scope: !6545)
!6558 = !DILocation(line: 342, column: 6, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6545, file: !3, line: 342, column: 6)
!6560 = !DILocation(line: 342, column: 12, scope: !6559)
!6561 = !DILocation(line: 342, column: 20, scope: !6559)
!6562 = !DILocation(line: 342, column: 25, scope: !6559)
!6563 = !DILocation(line: 342, column: 6, scope: !6545)
!6564 = !DILocation(line: 343, column: 7, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 342, column: 50)
!6566 = !DILocation(line: 344, column: 8, scope: !6565)
!6567 = !DILocation(line: 345, column: 7, scope: !6565)
!6568 = !DILocation(line: 346, column: 2, scope: !6565)
!6569 = !DILocation(line: 347, column: 7, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 346, column: 9)
!6571 = !DILocation(line: 348, column: 8, scope: !6570)
!6572 = !DILocation(line: 349, column: 7, scope: !6570)
!6573 = !DILocation(line: 352, column: 22, scope: !6545)
!6574 = !DILocation(line: 352, column: 28, scope: !6545)
!6575 = !DILocation(line: 352, column: 33, scope: !6545)
!6576 = !DILocation(line: 352, column: 39, scope: !6545)
!6577 = !DILocation(line: 352, column: 8, scope: !6545)
!6578 = !DILocation(line: 352, column: 6, scope: !6545)
!6579 = !DILocation(line: 353, column: 15, scope: !6545)
!6580 = !DILocation(line: 353, column: 19, scope: !6545)
!6581 = !DILocation(line: 353, column: 14, scope: !6545)
!6582 = !DILocation(line: 353, column: 3, scope: !6545)
!6583 = !DILocation(line: 353, column: 12, scope: !6545)
!6584 = !DILocation(line: 355, column: 2, scope: !6545)
!6585 = distinct !DISubprogram(name: "wait_reg_mask", scope: !3, file: !3, line: 101, type: !6586, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6586 = !DISubroutineType(types: !6587)
!6587 = !{!317, !294, !340, !340, !340, !340, !340}
!6588 = !DILocalVariable(name: "priv", arg: 1, scope: !6585, file: !3, line: 101, type: !294)
!6589 = !DILocation(line: 101, column: 48, scope: !6585)
!6590 = !DILocalVariable(name: "reg", arg: 2, scope: !6585, file: !3, line: 101, type: !340)
!6591 = !DILocation(line: 101, column: 57, scope: !6585)
!6592 = !DILocalVariable(name: "mask", arg: 3, scope: !6585, file: !3, line: 101, type: !340)
!6593 = !DILocation(line: 101, column: 65, scope: !6585)
!6594 = !DILocalVariable(name: "val", arg: 4, scope: !6585, file: !3, line: 102, type: !340)
!6595 = !DILocation(line: 102, column: 5, scope: !6585)
!6596 = !DILocalVariable(name: "delay", arg: 5, scope: !6585, file: !3, line: 102, type: !340)
!6597 = !DILocation(line: 102, column: 13, scope: !6585)
!6598 = !DILocalVariable(name: "tries", arg: 6, scope: !6585, file: !3, line: 102, type: !340)
!6599 = !DILocation(line: 102, column: 23, scope: !6585)
!6600 = !DILocalVariable(name: "t", scope: !6585, file: !3, line: 104, type: !340)
!6601 = !DILocation(line: 104, column: 5, scope: !6585)
!6602 = !DILocalVariable(name: "i", scope: !6585, file: !3, line: 105, type: !317)
!6603 = !DILocation(line: 105, column: 6, scope: !6585)
!6604 = !DILocation(line: 107, column: 9, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6585, file: !3, line: 107, column: 2)
!6606 = !DILocation(line: 107, column: 7, scope: !6605)
!6607 = !DILocation(line: 107, column: 14, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 107, column: 2)
!6609 = !DILocation(line: 107, column: 18, scope: !6608)
!6610 = !DILocation(line: 107, column: 16, scope: !6608)
!6611 = !DILocation(line: 107, column: 2, scope: !6605)
!6612 = !DILocation(line: 108, column: 20, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6608, file: !3, line: 107, column: 30)
!6614 = !DILocation(line: 108, column: 26, scope: !6613)
!6615 = !DILocation(line: 108, column: 3, scope: !6613)
!6616 = !DILocation(line: 110, column: 8, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 110, column: 7)
!6618 = !DILocation(line: 110, column: 12, scope: !6617)
!6619 = !DILocation(line: 110, column: 10, scope: !6617)
!6620 = !DILocation(line: 110, column: 21, scope: !6617)
!6621 = !DILocation(line: 110, column: 18, scope: !6617)
!6622 = !DILocation(line: 110, column: 7, scope: !6613)
!6623 = !DILocation(line: 111, column: 4, scope: !6617)
!6624 = !DILocation(line: 112, column: 10, scope: !6613)
!6625 = !DILocation(line: 112, column: 3, scope: !6613)
!6626 = !DILocation(line: 113, column: 2, scope: !6613)
!6627 = !DILocation(line: 107, column: 26, scope: !6608)
!6628 = !DILocation(line: 107, column: 2, scope: !6608)
!6629 = distinct !{!6629, !6611, !6630}
!6630 = !DILocation(line: 113, column: 2, scope: !6605)
!6631 = !DILocation(line: 115, column: 2, scope: !6585)
!6632 = !DILocation(line: 116, column: 1, scope: !6585)
!6633 = distinct !DISubprogram(name: "lgs8gxx_get_afc_phase", scope: !3, file: !3, line: 178, type: !4912, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6634 = !DILocalVariable(name: "priv", arg: 1, scope: !6633, file: !3, line: 178, type: !294)
!6635 = !DILocation(line: 178, column: 56, scope: !6633)
!6636 = !DILocalVariable(name: "val", scope: !6633, file: !3, line: 180, type: !455)
!6637 = !DILocation(line: 180, column: 6, scope: !6633)
!6638 = !DILocalVariable(name: "v32", scope: !6633, file: !3, line: 181, type: !355)
!6639 = !DILocation(line: 181, column: 6, scope: !6633)
!6640 = !DILocalVariable(name: "reg_addr", scope: !6633, file: !3, line: 182, type: !340)
!6641 = !DILocation(line: 182, column: 5, scope: !6633)
!6642 = !DILocalVariable(name: "t", scope: !6633, file: !3, line: 182, type: !340)
!6643 = !DILocation(line: 182, column: 15, scope: !6633)
!6644 = !DILocalVariable(name: "i", scope: !6633, file: !3, line: 183, type: !317)
!6645 = !DILocation(line: 183, column: 6, scope: !6633)
!6646 = !DILocation(line: 185, column: 6, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 185, column: 6)
!6648 = !DILocation(line: 185, column: 12, scope: !6647)
!6649 = !DILocation(line: 185, column: 20, scope: !6647)
!6650 = !DILocation(line: 185, column: 25, scope: !6647)
!6651 = !DILocation(line: 185, column: 6, scope: !6633)
!6652 = !DILocation(line: 186, column: 12, scope: !6647)
!6653 = !DILocation(line: 186, column: 3, scope: !6647)
!6654 = !DILocation(line: 188, column: 12, scope: !6647)
!6655 = !DILocation(line: 190, column: 9, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 190, column: 2)
!6657 = !DILocation(line: 190, column: 7, scope: !6656)
!6658 = !DILocation(line: 190, column: 14, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6656, file: !3, line: 190, column: 2)
!6660 = !DILocation(line: 190, column: 16, scope: !6659)
!6661 = !DILocation(line: 190, column: 2, scope: !6656)
!6662 = !DILocation(line: 191, column: 20, scope: !6663)
!6663 = distinct !DILexicalBlock(scope: !6659, file: !3, line: 190, column: 26)
!6664 = !DILocation(line: 191, column: 26, scope: !6663)
!6665 = !DILocation(line: 191, column: 3, scope: !6663)
!6666 = !DILocation(line: 192, column: 7, scope: !6663)
!6667 = !DILocation(line: 193, column: 10, scope: !6663)
!6668 = !DILocation(line: 193, column: 7, scope: !6663)
!6669 = !DILocation(line: 194, column: 11, scope: !6663)
!6670 = !DILocation(line: 195, column: 2, scope: !6663)
!6671 = !DILocation(line: 190, column: 22, scope: !6659)
!6672 = !DILocation(line: 190, column: 2, scope: !6659)
!6673 = distinct !{!6673, !6661, !6674}
!6674 = !DILocation(line: 195, column: 2, scope: !6656)
!6675 = !DILocation(line: 197, column: 8, scope: !6633)
!6676 = !DILocation(line: 197, column: 6, scope: !6633)
!6677 = !DILocation(line: 198, column: 9, scope: !6633)
!6678 = !DILocation(line: 198, column: 15, scope: !6633)
!6679 = !DILocation(line: 198, column: 23, scope: !6633)
!6680 = !DILocation(line: 198, column: 6, scope: !6633)
!6681 = !DILocation(line: 199, column: 6, scope: !6633)
!6682 = !DILocation(line: 200, column: 2, scope: !6633)
!6683 = !DILocation(line: 200, column: 2, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6685, file: !3, line: 200, column: 2)
!6685 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 200, column: 2)
!6686 = !DILocation(line: 200, column: 2, scope: !6685)
!6687 = !DILocation(line: 201, column: 2, scope: !6633)
!6688 = distinct !DISubprogram(name: "lgs8gxx_is_locked", scope: !3, file: !3, line: 295, type: !6504, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6689 = !DILocalVariable(name: "priv", arg: 1, scope: !6688, file: !3, line: 295, type: !294)
!6690 = !DILocation(line: 295, column: 52, scope: !6688)
!6691 = !DILocalVariable(name: "locked", arg: 2, scope: !6688, file: !3, line: 295, type: !4286)
!6692 = !DILocation(line: 295, column: 62, scope: !6688)
!6693 = !DILocalVariable(name: "ret", scope: !6688, file: !3, line: 297, type: !317)
!6694 = !DILocation(line: 297, column: 6, scope: !6688)
!6695 = !DILocalVariable(name: "t", scope: !6688, file: !3, line: 298, type: !340)
!6696 = !DILocation(line: 298, column: 5, scope: !6688)
!6697 = !DILocation(line: 300, column: 6, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6688, file: !3, line: 300, column: 6)
!6699 = !DILocation(line: 300, column: 12, scope: !6698)
!6700 = !DILocation(line: 300, column: 20, scope: !6698)
!6701 = !DILocation(line: 300, column: 25, scope: !6698)
!6702 = !DILocation(line: 300, column: 6, scope: !6688)
!6703 = !DILocation(line: 301, column: 26, scope: !6698)
!6704 = !DILocation(line: 301, column: 9, scope: !6698)
!6705 = !DILocation(line: 301, column: 7, scope: !6698)
!6706 = !DILocation(line: 301, column: 3, scope: !6698)
!6707 = !DILocation(line: 303, column: 26, scope: !6698)
!6708 = !DILocation(line: 303, column: 9, scope: !6698)
!6709 = !DILocation(line: 303, column: 7, scope: !6698)
!6710 = !DILocation(line: 304, column: 6, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6688, file: !3, line: 304, column: 6)
!6712 = !DILocation(line: 304, column: 10, scope: !6711)
!6713 = !DILocation(line: 304, column: 6, scope: !6688)
!6714 = !DILocation(line: 305, column: 10, scope: !6711)
!6715 = !DILocation(line: 305, column: 3, scope: !6711)
!6716 = !DILocation(line: 307, column: 6, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6688, file: !3, line: 307, column: 6)
!6718 = !DILocation(line: 307, column: 12, scope: !6717)
!6719 = !DILocation(line: 307, column: 20, scope: !6717)
!6720 = !DILocation(line: 307, column: 25, scope: !6717)
!6721 = !DILocation(line: 307, column: 6, scope: !6688)
!6722 = !DILocation(line: 308, column: 15, scope: !6717)
!6723 = !DILocation(line: 308, column: 17, scope: !6717)
!6724 = !DILocation(line: 308, column: 25, scope: !6717)
!6725 = !DILocation(line: 308, column: 13, scope: !6717)
!6726 = !DILocation(line: 308, column: 4, scope: !6717)
!6727 = !DILocation(line: 308, column: 11, scope: !6717)
!6728 = !DILocation(line: 308, column: 3, scope: !6717)
!6729 = !DILocation(line: 310, column: 15, scope: !6717)
!6730 = !DILocation(line: 310, column: 17, scope: !6717)
!6731 = !DILocation(line: 310, column: 25, scope: !6717)
!6732 = !DILocation(line: 310, column: 13, scope: !6717)
!6733 = !DILocation(line: 310, column: 4, scope: !6717)
!6734 = !DILocation(line: 310, column: 11, scope: !6717)
!6735 = !DILocation(line: 311, column: 2, scope: !6688)
!6736 = !DILocation(line: 312, column: 1, scope: !6688)
!6737 = distinct !DISubprogram(name: "packet_counter_start", scope: !3, file: !3, line: 888, type: !5909, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6738 = !DILocalVariable(name: "priv", arg: 1, scope: !6737, file: !3, line: 888, type: !294)
!6739 = !DILocation(line: 888, column: 56, scope: !6737)
!6740 = !DILocalVariable(name: "orig", scope: !6737, file: !3, line: 890, type: !340)
!6741 = !DILocation(line: 890, column: 5, scope: !6737)
!6742 = !DILocalVariable(name: "t", scope: !6737, file: !3, line: 890, type: !340)
!6743 = !DILocation(line: 890, column: 11, scope: !6737)
!6744 = !DILocation(line: 892, column: 6, scope: !6745)
!6745 = distinct !DILexicalBlock(scope: !6737, file: !3, line: 892, column: 6)
!6746 = !DILocation(line: 892, column: 12, scope: !6745)
!6747 = !DILocation(line: 892, column: 20, scope: !6745)
!6748 = !DILocation(line: 892, column: 25, scope: !6745)
!6749 = !DILocation(line: 892, column: 6, scope: !6737)
!6750 = !DILocation(line: 893, column: 20, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6745, file: !3, line: 892, column: 50)
!6752 = !DILocation(line: 893, column: 3, scope: !6751)
!6753 = !DILocation(line: 894, column: 8, scope: !6751)
!6754 = !DILocation(line: 895, column: 7, scope: !6751)
!6755 = !DILocation(line: 895, column: 12, scope: !6751)
!6756 = !DILocation(line: 895, column: 5, scope: !6751)
!6757 = !DILocation(line: 896, column: 21, scope: !6751)
!6758 = !DILocation(line: 896, column: 33, scope: !6751)
!6759 = !DILocation(line: 896, column: 3, scope: !6751)
!6760 = !DILocation(line: 897, column: 7, scope: !6751)
!6761 = !DILocation(line: 897, column: 12, scope: !6751)
!6762 = !DILocation(line: 897, column: 5, scope: !6751)
!6763 = !DILocation(line: 898, column: 21, scope: !6751)
!6764 = !DILocation(line: 898, column: 33, scope: !6751)
!6765 = !DILocation(line: 898, column: 3, scope: !6751)
!6766 = !DILocation(line: 899, column: 7, scope: !6751)
!6767 = !DILocation(line: 899, column: 12, scope: !6751)
!6768 = !DILocation(line: 899, column: 5, scope: !6751)
!6769 = !DILocation(line: 900, column: 21, scope: !6751)
!6770 = !DILocation(line: 900, column: 33, scope: !6751)
!6771 = !DILocation(line: 900, column: 3, scope: !6751)
!6772 = !DILocation(line: 901, column: 2, scope: !6751)
!6773 = !DILocation(line: 902, column: 21, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6745, file: !3, line: 901, column: 9)
!6775 = !DILocation(line: 902, column: 3, scope: !6774)
!6776 = !DILocation(line: 903, column: 21, scope: !6774)
!6777 = !DILocation(line: 903, column: 3, scope: !6774)
!6778 = !DILocation(line: 904, column: 21, scope: !6774)
!6779 = !DILocation(line: 904, column: 3, scope: !6774)
!6780 = !DILocation(line: 906, column: 1, scope: !6737)
!6781 = distinct !DISubprogram(name: "packet_counter_stop", scope: !3, file: !3, line: 908, type: !5909, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6782 = !DILocalVariable(name: "priv", arg: 1, scope: !6781, file: !3, line: 908, type: !294)
!6783 = !DILocation(line: 908, column: 55, scope: !6781)
!6784 = !DILocalVariable(name: "t", scope: !6781, file: !3, line: 910, type: !340)
!6785 = !DILocation(line: 910, column: 5, scope: !6781)
!6786 = !DILocation(line: 912, column: 6, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6781, file: !3, line: 912, column: 6)
!6788 = !DILocation(line: 912, column: 12, scope: !6787)
!6789 = !DILocation(line: 912, column: 20, scope: !6787)
!6790 = !DILocation(line: 912, column: 25, scope: !6787)
!6791 = !DILocation(line: 912, column: 6, scope: !6781)
!6792 = !DILocation(line: 913, column: 20, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6787, file: !3, line: 912, column: 50)
!6794 = !DILocation(line: 913, column: 3, scope: !6793)
!6795 = !DILocation(line: 914, column: 5, scope: !6793)
!6796 = !DILocation(line: 915, column: 21, scope: !6793)
!6797 = !DILocation(line: 915, column: 33, scope: !6793)
!6798 = !DILocation(line: 915, column: 3, scope: !6793)
!6799 = !DILocation(line: 916, column: 2, scope: !6793)
!6800 = !DILocation(line: 917, column: 21, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6787, file: !3, line: 916, column: 9)
!6802 = !DILocation(line: 917, column: 3, scope: !6801)
!6803 = !DILocation(line: 919, column: 1, scope: !6781)
!6804 = distinct !DISubprogram(name: "lgs8913_read_signal_strength", scope: !3, file: !3, line: 789, type: !6805, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6805 = !DISubroutineType(types: !6806)
!6806 = !{!317, !294, !4183}
!6807 = !DILocalVariable(name: "priv", arg: 1, scope: !6804, file: !3, line: 789, type: !294)
!6808 = !DILocation(line: 789, column: 63, scope: !6804)
!6809 = !DILocalVariable(name: "signal", arg: 2, scope: !6804, file: !3, line: 789, type: !4183)
!6810 = !DILocation(line: 789, column: 74, scope: !6804)
!6811 = !DILocalVariable(name: "t", scope: !6804, file: !3, line: 791, type: !340)
!6812 = !DILocation(line: 791, column: 5, scope: !6804)
!6813 = !DILocalVariable(name: "ret", scope: !6804, file: !3, line: 791, type: !4386)
!6814 = !DILocation(line: 791, column: 11, scope: !6804)
!6815 = !DILocalVariable(name: "max_strength", scope: !6804, file: !3, line: 792, type: !2667)
!6816 = !DILocation(line: 792, column: 6, scope: !6804)
!6817 = !DILocalVariable(name: "str", scope: !6804, file: !3, line: 793, type: !340)
!6818 = !DILocation(line: 793, column: 5, scope: !6804)
!6819 = !DILocalVariable(name: "i", scope: !6804, file: !3, line: 794, type: !337)
!6820 = !DILocation(line: 794, column: 6, scope: !6804)
!6821 = !DILocalVariable(name: "gi", scope: !6804, file: !3, line: 794, type: !337)
!6822 = !DILocation(line: 794, column: 9, scope: !6804)
!6823 = !DILocation(line: 794, column: 14, scope: !6804)
!6824 = !DILocation(line: 794, column: 20, scope: !6804)
!6825 = !DILocation(line: 796, column: 2, scope: !6804)
!6826 = !DILocation(line: 796, column: 2, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6828, file: !3, line: 796, column: 2)
!6828 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 796, column: 2)
!6829 = !DILocation(line: 796, column: 2, scope: !6828)
!6830 = !DILocation(line: 798, column: 25, scope: !6804)
!6831 = !DILocation(line: 798, column: 8, scope: !6804)
!6832 = !DILocation(line: 798, column: 6, scope: !6804)
!6833 = !DILocation(line: 799, column: 6, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 799, column: 6)
!6835 = !DILocation(line: 799, column: 10, scope: !6834)
!6836 = !DILocation(line: 799, column: 6, scope: !6804)
!6837 = !DILocation(line: 800, column: 3, scope: !6834)
!6838 = !DILocation(line: 802, column: 6, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 802, column: 6)
!6840 = !DILocation(line: 802, column: 6, scope: !6804)
!6841 = !DILocation(line: 803, column: 8, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6843, file: !3, line: 803, column: 7)
!6843 = distinct !DILexicalBlock(scope: !6839, file: !3, line: 802, column: 23)
!6844 = !DILocation(line: 803, column: 10, scope: !6842)
!6845 = !DILocation(line: 803, column: 18, scope: !6842)
!6846 = !DILocation(line: 803, column: 7, scope: !6843)
!6847 = !DILocation(line: 804, column: 4, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 803, column: 27)
!6849 = !DILocation(line: 804, column: 4, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6851, file: !3, line: 804, column: 4)
!6851 = distinct !DILexicalBlock(scope: !6848, file: !3, line: 804, column: 4)
!6852 = !DILocation(line: 804, column: 4, scope: !6851)
!6853 = !DILocation(line: 805, column: 5, scope: !6848)
!6854 = !DILocation(line: 805, column: 12, scope: !6848)
!6855 = !DILocation(line: 806, column: 3, scope: !6848)
!6856 = !DILocation(line: 807, column: 5, scope: !6842)
!6857 = !DILocation(line: 807, column: 12, scope: !6842)
!6858 = !DILocation(line: 808, column: 3, scope: !6843)
!6859 = !DILocation(line: 811, column: 2, scope: !6804)
!6860 = !DILocation(line: 811, column: 2, scope: !6861)
!6861 = distinct !DILexicalBlock(scope: !6862, file: !3, line: 811, column: 2)
!6862 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 811, column: 2)
!6863 = !DILocation(line: 811, column: 2, scope: !6862)
!6864 = !DILocation(line: 812, column: 9, scope: !6865)
!6865 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 812, column: 2)
!6866 = !DILocation(line: 812, column: 7, scope: !6865)
!6867 = !DILocation(line: 812, column: 14, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6865, file: !3, line: 812, column: 2)
!6869 = !DILocation(line: 812, column: 18, scope: !6868)
!6870 = !DILocation(line: 812, column: 16, scope: !6868)
!6871 = !DILocation(line: 812, column: 2, scope: !6865)
!6872 = !DILocation(line: 814, column: 8, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 814, column: 7)
!6874 = distinct !DILexicalBlock(scope: !6868, file: !3, line: 812, column: 27)
!6875 = !DILocation(line: 814, column: 10, scope: !6873)
!6876 = !DILocation(line: 814, column: 18, scope: !6873)
!6877 = !DILocation(line: 814, column: 7, scope: !6874)
!6878 = !DILocation(line: 815, column: 22, scope: !6873)
!6879 = !DILocation(line: 815, column: 42, scope: !6873)
!6880 = !DILocation(line: 815, column: 44, scope: !6873)
!6881 = !DILocation(line: 815, column: 39, scope: !6873)
!6882 = !DILocation(line: 815, column: 34, scope: !6873)
!6883 = !DILocation(line: 815, column: 4, scope: !6873)
!6884 = !DILocation(line: 816, column: 21, scope: !6874)
!6885 = !DILocation(line: 816, column: 33, scope: !6874)
!6886 = !DILocation(line: 816, column: 35, scope: !6874)
!6887 = !DILocation(line: 816, column: 3, scope: !6874)
!6888 = !DILocation(line: 818, column: 20, scope: !6874)
!6889 = !DILocation(line: 818, column: 3, scope: !6874)
!6890 = !DILocation(line: 819, column: 7, scope: !6891)
!6891 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 819, column: 7)
!6892 = !DILocation(line: 819, column: 22, scope: !6891)
!6893 = !DILocation(line: 819, column: 20, scope: !6891)
!6894 = !DILocation(line: 819, column: 7, scope: !6874)
!6895 = !DILocation(line: 820, column: 19, scope: !6891)
!6896 = !DILocation(line: 820, column: 17, scope: !6891)
!6897 = !DILocation(line: 820, column: 4, scope: !6891)
!6898 = !DILocation(line: 821, column: 2, scope: !6874)
!6899 = !DILocation(line: 812, column: 23, scope: !6868)
!6900 = !DILocation(line: 812, column: 2, scope: !6868)
!6901 = distinct !{!6901, !6871, !6902}
!6902 = !DILocation(line: 821, column: 2, scope: !6865)
!6903 = !DILocation(line: 823, column: 12, scope: !6804)
!6904 = !DILocation(line: 823, column: 3, scope: !6804)
!6905 = !DILocation(line: 823, column: 10, scope: !6804)
!6906 = !DILocation(line: 824, column: 2, scope: !6804)
!6907 = !DILocation(line: 824, column: 2, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6909, file: !3, line: 824, column: 2)
!6909 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 824, column: 2)
!6910 = !DILocation(line: 824, column: 2, scope: !6909)
!6911 = !DILocation(line: 826, column: 19, scope: !6804)
!6912 = !DILocation(line: 826, column: 2, scope: !6804)
!6913 = !DILocation(line: 827, column: 2, scope: !6804)
!6914 = !DILocation(line: 827, column: 2, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6916, file: !3, line: 827, column: 2)
!6916 = distinct !DILexicalBlock(scope: !6804, file: !3, line: 827, column: 2)
!6917 = !DILocation(line: 827, column: 2, scope: !6916)
!6918 = !DILocation(line: 829, column: 2, scope: !6804)
!6919 = !DILocation(line: 830, column: 1, scope: !6804)
!6920 = distinct !DISubprogram(name: "lgs8g75_read_signal_strength", scope: !3, file: !3, line: 832, type: !6805, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6921 = !DILocalVariable(name: "priv", arg: 1, scope: !6920, file: !3, line: 832, type: !294)
!6922 = !DILocation(line: 832, column: 63, scope: !6920)
!6923 = !DILocalVariable(name: "signal", arg: 2, scope: !6920, file: !3, line: 832, type: !4183)
!6924 = !DILocation(line: 832, column: 74, scope: !6920)
!6925 = !DILocalVariable(name: "t", scope: !6920, file: !3, line: 834, type: !340)
!6926 = !DILocation(line: 834, column: 5, scope: !6920)
!6927 = !DILocalVariable(name: "v", scope: !6920, file: !3, line: 835, type: !2667)
!6928 = !DILocation(line: 835, column: 6, scope: !6920)
!6929 = !DILocation(line: 837, column: 2, scope: !6920)
!6930 = !DILocation(line: 837, column: 2, scope: !6931)
!6931 = distinct !DILexicalBlock(scope: !6932, file: !3, line: 837, column: 2)
!6932 = distinct !DILexicalBlock(scope: !6920, file: !3, line: 837, column: 2)
!6933 = !DILocation(line: 837, column: 2, scope: !6932)
!6934 = !DILocation(line: 839, column: 19, scope: !6920)
!6935 = !DILocation(line: 839, column: 2, scope: !6920)
!6936 = !DILocation(line: 840, column: 7, scope: !6920)
!6937 = !DILocation(line: 840, column: 4, scope: !6920)
!6938 = !DILocation(line: 841, column: 4, scope: !6920)
!6939 = !DILocation(line: 842, column: 19, scope: !6920)
!6940 = !DILocation(line: 842, column: 2, scope: !6920)
!6941 = !DILocation(line: 843, column: 7, scope: !6920)
!6942 = !DILocation(line: 843, column: 4, scope: !6920)
!6943 = !DILocation(line: 845, column: 12, scope: !6920)
!6944 = !DILocation(line: 845, column: 3, scope: !6920)
!6945 = !DILocation(line: 845, column: 10, scope: !6920)
!6946 = !DILocation(line: 846, column: 2, scope: !6920)
!6947 = !DILocation(line: 846, column: 2, scope: !6948)
!6948 = distinct !DILexicalBlock(scope: !6949, file: !3, line: 846, column: 2)
!6949 = distinct !DILexicalBlock(scope: !6920, file: !3, line: 846, column: 2)
!6950 = !DILocation(line: 846, column: 2, scope: !6949)
!6951 = !DILocation(line: 848, column: 2, scope: !6920)
!6952 = distinct !DISubprogram(name: "lgs8gxx_read_signal_agc", scope: !3, file: !3, line: 754, type: !6805, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !385)
!6953 = !DILocalVariable(name: "priv", arg: 1, scope: !6952, file: !3, line: 754, type: !294)
!6954 = !DILocation(line: 754, column: 58, scope: !6952)
!6955 = !DILocalVariable(name: "signal", arg: 2, scope: !6952, file: !3, line: 754, type: !4183)
!6956 = !DILocation(line: 754, column: 69, scope: !6952)
!6957 = !DILocalVariable(name: "v", scope: !6952, file: !3, line: 756, type: !337)
!6958 = !DILocation(line: 756, column: 6, scope: !6952)
!6959 = !DILocalVariable(name: "agc_lvl", scope: !6952, file: !3, line: 757, type: !5856)
!6960 = !DILocation(line: 757, column: 5, scope: !6952)
!6961 = !DILocalVariable(name: "cat", scope: !6952, file: !3, line: 757, type: !340)
!6962 = !DILocation(line: 757, column: 17, scope: !6952)
!6963 = !DILocation(line: 759, column: 2, scope: !6952)
!6964 = !DILocation(line: 759, column: 2, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !6966, file: !3, line: 759, column: 2)
!6966 = distinct !DILexicalBlock(scope: !6952, file: !3, line: 759, column: 2)
!6967 = !DILocation(line: 759, column: 2, scope: !6966)
!6968 = !DILocation(line: 760, column: 19, scope: !6952)
!6969 = !DILocation(line: 760, column: 32, scope: !6952)
!6970 = !DILocation(line: 760, column: 2, scope: !6952)
!6971 = !DILocation(line: 761, column: 19, scope: !6952)
!6972 = !DILocation(line: 761, column: 32, scope: !6952)
!6973 = !DILocation(line: 761, column: 2, scope: !6952)
!6974 = !DILocation(line: 763, column: 6, scope: !6952)
!6975 = !DILocation(line: 763, column: 4, scope: !6952)
!6976 = !DILocation(line: 764, column: 4, scope: !6952)
!6977 = !DILocation(line: 765, column: 7, scope: !6952)
!6978 = !DILocation(line: 765, column: 4, scope: !6952)
!6979 = !DILocation(line: 767, column: 2, scope: !6952)
!6980 = !DILocation(line: 767, column: 2, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6982, file: !3, line: 767, column: 2)
!6982 = distinct !DILexicalBlock(scope: !6952, file: !3, line: 767, column: 2)
!6983 = !DILocation(line: 767, column: 2, scope: !6982)
!6984 = !DILocation(line: 769, column: 6, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6952, file: !3, line: 769, column: 6)
!6986 = !DILocation(line: 769, column: 8, scope: !6985)
!6987 = !DILocation(line: 769, column: 6, scope: !6952)
!6988 = !DILocation(line: 770, column: 7, scope: !6985)
!6989 = !DILocation(line: 770, column: 3, scope: !6985)
!6990 = !DILocation(line: 771, column: 11, scope: !6991)
!6991 = distinct !DILexicalBlock(scope: !6985, file: !3, line: 771, column: 11)
!6992 = !DILocation(line: 771, column: 13, scope: !6991)
!6993 = !DILocation(line: 771, column: 11, scope: !6985)
!6994 = !DILocation(line: 772, column: 7, scope: !6991)
!6995 = !DILocation(line: 772, column: 3, scope: !6991)
!6996 = !DILocation(line: 773, column: 11, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !6991, file: !3, line: 773, column: 11)
!6998 = !DILocation(line: 773, column: 13, scope: !6997)
!6999 = !DILocation(line: 773, column: 11, scope: !6991)
!7000 = !DILocation(line: 774, column: 7, scope: !6997)
!7001 = !DILocation(line: 774, column: 3, scope: !6997)
!7002 = !DILocation(line: 775, column: 11, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 775, column: 11)
!7004 = !DILocation(line: 775, column: 13, scope: !7003)
!7005 = !DILocation(line: 775, column: 11, scope: !6997)
!7006 = !DILocation(line: 776, column: 7, scope: !7003)
!7007 = !DILocation(line: 776, column: 3, scope: !7003)
!7008 = !DILocation(line: 777, column: 11, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 777, column: 11)
!7010 = !DILocation(line: 777, column: 13, scope: !7009)
!7011 = !DILocation(line: 777, column: 11, scope: !7003)
!7012 = !DILocation(line: 778, column: 7, scope: !7009)
!7013 = !DILocation(line: 778, column: 3, scope: !7009)
!7014 = !DILocation(line: 779, column: 11, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !7009, file: !3, line: 779, column: 11)
!7016 = !DILocation(line: 779, column: 13, scope: !7015)
!7017 = !DILocation(line: 779, column: 11, scope: !7009)
!7018 = !DILocation(line: 780, column: 7, scope: !7015)
!7019 = !DILocation(line: 780, column: 3, scope: !7015)
!7020 = !DILocation(line: 782, column: 7, scope: !7015)
!7021 = !DILocation(line: 784, column: 12, scope: !6952)
!7022 = !DILocation(line: 784, column: 16, scope: !6952)
!7023 = !DILocation(line: 784, column: 24, scope: !6952)
!7024 = !DILocation(line: 784, column: 3, scope: !6952)
!7025 = !DILocation(line: 784, column: 10, scope: !6952)
!7026 = !DILocation(line: 786, column: 2, scope: !6952)
