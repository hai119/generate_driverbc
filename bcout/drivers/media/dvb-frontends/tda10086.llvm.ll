; ModuleID = '../bcout/drivers/media/dvb-frontends/tda10086.llvm.bc'
source_filename = "drivers/media/dvb-frontends/tda10086.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { i8* }
%struct.kmem_cache = type opaque
%struct.tda10086_config = type { i8, i8, i8, i32 }
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
%struct.tda10086_state = type { %struct.i2c_adapter*, %struct.tda10086_config*, %struct.dvb_frontend, i32, i32, i8 }

@debug = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"\017tda10086: %s\0A\00", align 1
@__func__.tda10086_attach = private unnamed_addr constant [16 x i8] c"tda10086_attach\00", align 1
@tda10086_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10086 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 0, i32 1775 }, [8 x i8] c"\05\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @tda10086_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda10086_init, i32 (%struct.dvb_frontend*)* @tda10086_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda10086_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @tda10086_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tda10086_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @tda10086_read_status, i32 (%struct.dvb_frontend*, i32*)* @tda10086_read_ber, i32 (%struct.dvb_frontend*, i16*)* @tda10086_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @tda10086_read_snr, i32 (%struct.dvb_frontend*, i32*)* @tda10086_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @tda10086_send_master_cmd, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* @tda10086_send_burst, i32 (%struct.dvb_frontend*, i32)* @tda10086_set_tone, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @tda10086_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !412
@__param_str_debug = internal constant [15 x i8] c"tda10086.debug\00", align 1, !dbg !4307
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !313
@__UNIQUE_ID_debugtype220 = internal constant [28 x i8] c"tda10086.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !382
@__UNIQUE_ID_debug221 = internal constant [66 x i8] c"tda10086.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !387
@__UNIQUE_ID_description222 = internal constant [56 x i8] c"tda10086.description=Philips TDA10086 DVB-S Demodulator\00", section ".modinfo", align 1, !dbg !392
@__UNIQUE_ID_author223 = internal constant [34 x i8] c"tda10086.author=Andrew de Quincey\00", section ".modinfo", align 1, !dbg !397
@__UNIQUE_ID_file224 = internal constant [51 x i8] c"tda10086.file=drivers/media/dvb-frontends/tda10086\00", section ".modinfo", align 1, !dbg !402
@__UNIQUE_ID_license225 = internal constant [21 x i8] c"tda10086.license=GPL\00", section ".modinfo", align 1, !dbg !407
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\017tda10086: %s: error reg=0x%x, ret=%i\0A\00", align 1
@__func__.tda10086_read_byte = private unnamed_addr constant [19 x i8] c"tda10086_read_byte\00", align 1
@__func__.tda10086_init = private unnamed_addr constant [14 x i8] c"tda10086_init\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\017tda10086: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@__func__.tda10086_write_byte = private unnamed_addr constant [20 x i8] c"tda10086_write_byte\00", align 1
@__func__.tda10086_sleep = private unnamed_addr constant [15 x i8] c"tda10086_sleep\00", align 1
@__func__.tda10086_set_frontend = private unnamed_addr constant [22 x i8] c"tda10086_set_frontend\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\017tda10086: %s %i %i\0A\00", align 1
@__func__.tda10086_set_inversion = private unnamed_addr constant [23 x i8] c"tda10086_set_inversion\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\017tda10086: %s %i\0A\00", align 1
@__func__.tda10086_set_symbol_rate = private unnamed_addr constant [25 x i8] c"tda10086_set_symbol_rate\00", align 1
@__func__.tda10086_set_fec = private unnamed_addr constant [17 x i8] c"tda10086_set_fec\00", align 1
@__func__.tda10086_get_frontend = private unnamed_addr constant [22 x i8] c"tda10086_get_frontend\00", align 1
@__func__.tda10086_read_status = private unnamed_addr constant [21 x i8] c"tda10086_read_status\00", align 1
@__func__.tda10086_read_ber = private unnamed_addr constant [18 x i8] c"tda10086_read_ber\00", align 1
@__func__.tda10086_read_signal_strength = private unnamed_addr constant [30 x i8] c"tda10086_read_signal_strength\00", align 1
@__func__.tda10086_read_snr = private unnamed_addr constant [18 x i8] c"tda10086_read_snr\00", align 1
@__func__.tda10086_read_ucblocks = private unnamed_addr constant [23 x i8] c"tda10086_read_ucblocks\00", align 1
@__func__.tda10086_send_master_cmd = private unnamed_addr constant [25 x i8] c"tda10086_send_master_cmd\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"%s: diseqc queue not ready, command may be lost.\0A\00", align 1
@__func__.tda10086_diseqc_wait = private unnamed_addr constant [21 x i8] c"tda10086_diseqc_wait\00", align 1
@__func__.tda10086_send_burst = private unnamed_addr constant [20 x i8] c"tda10086_send_burst\00", align 1
@__func__.tda10086_set_tone = private unnamed_addr constant [18 x i8] c"tda10086_set_tone\00", align 1
@__func__.tda10086_i2c_gate_ctrl = private unnamed_addr constant [23 x i8] c"tda10086_i2c_gate_ctrl\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @tda10086_attach(%struct.tda10086_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4317 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.tda10086_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  store %struct.tda10086_config* %config, %struct.tda10086_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10086_config** %config.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !4452, metadata !DIExpression()), !dbg !4462
  br label %do.body, !dbg !4463

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !4464
  %tobool = icmp ne i32 %0, 0, !dbg !4464
  br i1 %tobool, label %if.then, label %if.end, !dbg !4467

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tda10086_attach, i64 0, i64 0)) #8, !dbg !4464
  br label %if.end, !dbg !4464

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4467

do.end:                                           ; preds = %if.end
  %call1 = call i8* @kzalloc(i64 1312, i32 3264) #9, !dbg !4468
  %1 = bitcast i8* %call1 to %struct.tda10086_state*, !dbg !4468
  store %struct.tda10086_state* %1, %struct.tda10086_state** %state, align 8, !dbg !4469
  %2 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4470
  %tobool2 = icmp ne %struct.tda10086_state* %2, null, !dbg !4470
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4472

if.then3:                                         ; preds = %do.end
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4473
  br label %return, !dbg !4473

if.end4:                                          ; preds = %do.end
  %3 = load %struct.tda10086_config*, %struct.tda10086_config** %config.addr, align 8, !dbg !4474
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4475
  %config5 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %4, i32 0, i32 1, !dbg !4476
  store %struct.tda10086_config* %3, %struct.tda10086_config** %config5, align 8, !dbg !4477
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4478
  %6 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4479
  %i2c6 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %6, i32 0, i32 0, !dbg !4480
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %i2c6, align 8, !dbg !4481
  %7 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4482
  %call7 = call i32 @tda10086_read_byte(%struct.tda10086_state* %7, i32 30) #9, !dbg !4484
  %cmp = icmp ne i32 %call7, 225, !dbg !4485
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !4486

if.then8:                                         ; preds = %if.end4
  %8 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4487
  %9 = bitcast %struct.tda10086_state* %8 to i8*, !dbg !4487
  call void @kfree(i8* %9) #9, !dbg !4489
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4490
  br label %return, !dbg !4490

if.end9:                                          ; preds = %if.end4
  %10 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4491
  %frontend = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %10, i32 0, i32 2, !dbg !4492
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4493
  %11 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @tda10086_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4494
  %12 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4495
  %13 = bitcast %struct.tda10086_state* %12 to i8*, !dbg !4495
  %14 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4496
  %frontend10 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %14, i32 0, i32 2, !dbg !4497
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend10, i32 0, i32 3, !dbg !4498
  store i8* %13, i8** %demodulator_priv, align 8, !dbg !4499
  %15 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4500
  %frontend11 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %15, i32 0, i32 2, !dbg !4501
  store %struct.dvb_frontend* %frontend11, %struct.dvb_frontend** %retval, align 8, !dbg !4502
  br label %return, !dbg !4502

return:                                           ; preds = %if.end9, %if.then8, %if.then3
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4503
  ret %struct.dvb_frontend* %16, !dbg !4503
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4504 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4507, metadata !DIExpression()), !dbg !4511
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4517, metadata !DIExpression()), !dbg !4518
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4519, metadata !DIExpression()), !dbg !4520
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4521, metadata !DIExpression()), !dbg !4522
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4523, metadata !DIExpression()), !dbg !4527
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4529, metadata !DIExpression()), !dbg !4533
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4535, metadata !DIExpression()), !dbg !4539
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4544, metadata !DIExpression()), !dbg !4545
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4546, metadata !DIExpression()), !dbg !4547
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4548, metadata !DIExpression()), !dbg !4549
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4550, metadata !DIExpression()), !dbg !4551
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4552, metadata !DIExpression()), !dbg !4553
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4554, metadata !DIExpression()), !dbg !4555
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4556, metadata !DIExpression()), !dbg !4557
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4558, metadata !DIExpression()), !dbg !4559
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4560, metadata !DIExpression()), !dbg !4561
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  %0 = load i64, i64* %size.addr, align 8, !dbg !4564
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4565
  %or = or i32 %1, 256, !dbg !4566
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4567
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4568
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4569

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4570
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4571
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4572

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4573
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4574
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4575
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4576
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4553
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4577
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4578
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4579
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4580
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4581
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4582
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4583
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4583
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4583
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4583
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4583
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4584
  br label %kmalloc.exit, !dbg !4584

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4585
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4586
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4586
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4588

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4589
  br label %kmalloc_index.exit.i, !dbg !4589

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4590
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4592
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4593

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4594
  br label %kmalloc_index.exit.i, !dbg !4594

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4595
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4597
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4598

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4599
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4600
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4601

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4602
  br label %kmalloc_index.exit.i, !dbg !4602

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4603
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4605
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4606

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4607
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4608
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4609

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4610
  br label %kmalloc_index.exit.i, !dbg !4610

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4611
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4613
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4614

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4615
  br label %kmalloc_index.exit.i, !dbg !4615

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4616
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4618
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4619

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4620
  br label %kmalloc_index.exit.i, !dbg !4620

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4621
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4623
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4624

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4625
  br label %kmalloc_index.exit.i, !dbg !4625

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4626
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4628
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4629

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4630
  br label %kmalloc_index.exit.i, !dbg !4630

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4631
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4633
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4634

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4635
  br label %kmalloc_index.exit.i, !dbg !4635

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4636
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4638
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4639

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4640
  br label %kmalloc_index.exit.i, !dbg !4640

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4643
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4644

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4645
  br label %kmalloc_index.exit.i, !dbg !4645

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4646
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4648
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4649

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4650
  br label %kmalloc_index.exit.i, !dbg !4650

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4651
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4653
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4654

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4655
  br label %kmalloc_index.exit.i, !dbg !4655

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4656
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4658
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4659

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4660
  br label %kmalloc_index.exit.i, !dbg !4660

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4661
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4663
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4664

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4665
  br label %kmalloc_index.exit.i, !dbg !4665

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4666
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4668
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4669

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4670
  br label %kmalloc_index.exit.i, !dbg !4670

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4671
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4673
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4674

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4678
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4679

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4680
  br label %kmalloc_index.exit.i, !dbg !4680

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4683
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4684

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4685
  br label %kmalloc_index.exit.i, !dbg !4685

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4688
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4689

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4690
  br label %kmalloc_index.exit.i, !dbg !4690

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4691
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4693
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4694

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4695
  br label %kmalloc_index.exit.i, !dbg !4695

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4696
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4698
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4699

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4700
  br label %kmalloc_index.exit.i, !dbg !4700

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4703
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4704

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4708
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4709

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4713
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4714

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4718
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4719

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4720
  br label %kmalloc_index.exit.i, !dbg !4720

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4721
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4723
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4724

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4726
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4728
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4729

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4730
  br label %kmalloc_index.exit.i, !dbg !4730

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4731, !srcloc !4734
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !4735, !srcloc !4738
  unreachable, !dbg !4739

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4740
  store i32 %45, i32* %index.i, align 4, !dbg !4741
  %46 = load i32, i32* %index.i, align 4, !dbg !4742
  %tobool.i = icmp ne i32 %46, 0, !dbg !4742
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4744

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4745
  br label %kmalloc.exit, !dbg !4745

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4746
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4747
  %and.i.i = and i32 %48, 17, !dbg !4747
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4747
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4747
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4747
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4747
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4749

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4750
  br label %kmalloc_type.exit.i, !dbg !4750

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4751
  %and2.i.i = and i32 %49, 1, !dbg !4752
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4751
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4751
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4751
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4753
  br label %kmalloc_type.exit.i, !dbg !4753

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4754
  %idxprom.i = zext i32 %51 to i64, !dbg !4755
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4755
  %52 = load i32, i32* %index.i, align 4, !dbg !4756
  %idxprom6.i = zext i32 %52 to i64, !dbg !4755
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4755
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4755
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4757
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4758
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4759
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4760
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4761
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4761
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4761
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4761
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4761
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4522
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4762
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4763
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4764
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4765
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4766
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4767
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4768
  store i8* %62, i8** %retval.i, align 8, !dbg !4769
  br label %kmalloc.exit, !dbg !4769

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4770
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4771
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4772
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4772
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4772
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4772
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4772
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4773
  br label %kmalloc.exit, !dbg !4773

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4774
  ret i8* %65, !dbg !4775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_read_byte(%struct.tda10086_state* %state, i32 %reg) #0 !dbg !4776 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda10086_state*, align 8
  %reg.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.tda10086_state* %state, %struct.tda10086_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state.addr, metadata !4779, metadata !DIExpression()), !dbg !4780
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4783, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4785, metadata !DIExpression()), !dbg !4787
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4788
  %0 = load i32, i32* %reg.addr, align 4, !dbg !4789
  %conv = trunc i32 %0 to i8, !dbg !4789
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !4788
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4790, metadata !DIExpression()), !dbg !4791
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4791
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4791
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4792, metadata !DIExpression()), !dbg !4794
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4795
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4796
  store i16 0, i16* %addr, align 16, !dbg !4796
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4796
  store i16 0, i16* %flags, align 2, !dbg !4796
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4796
  store i16 1, i16* %len, align 4, !dbg !4796
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4796
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4797
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4796
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4795
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4798
  store i16 0, i16* %addr2, align 16, !dbg !4798
  %flags3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4798
  store i16 1, i16* %flags3, align 2, !dbg !4798
  %len4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4798
  store i16 1, i16* %len4, align 4, !dbg !4798
  %buf5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4798
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4799
  store i8* %arraydecay6, i8** %buf5, align 8, !dbg !4798
  %2 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !4800
  %config = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %2, i32 0, i32 1, !dbg !4801
  %3 = load %struct.tda10086_config*, %struct.tda10086_config** %config, align 8, !dbg !4801
  %demod_address = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %3, i32 0, i32 0, !dbg !4802
  %4 = load i8, i8* %demod_address, align 4, !dbg !4802
  %conv7 = zext i8 %4 to i16, !dbg !4800
  %arrayidx = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4803
  %addr8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 0, !dbg !4804
  store i16 %conv7, i16* %addr8, align 16, !dbg !4805
  %5 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !4806
  %config9 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %5, i32 0, i32 1, !dbg !4807
  %6 = load %struct.tda10086_config*, %struct.tda10086_config** %config9, align 8, !dbg !4807
  %demod_address10 = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %6, i32 0, i32 0, !dbg !4808
  %7 = load i8, i8* %demod_address10, align 4, !dbg !4808
  %conv11 = zext i8 %7 to i16, !dbg !4806
  %arrayidx12 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !4809
  %addr13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx12, i32 0, i32 0, !dbg !4810
  store i16 %conv11, i16* %addr13, align 16, !dbg !4811
  %8 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !4812
  %i2c = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %8, i32 0, i32 0, !dbg !4813
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4813
  %arraydecay14 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4814
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay14, i32 2) #9, !dbg !4815
  store i32 %call, i32* %ret, align 4, !dbg !4816
  %10 = load i32, i32* %ret, align 4, !dbg !4817
  %cmp = icmp ne i32 %10, 2, !dbg !4819
  br i1 %cmp, label %if.then, label %if.end18, !dbg !4820

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4821

do.body:                                          ; preds = %if.then
  %11 = load i32, i32* @debug, align 4, !dbg !4823
  %tobool = icmp ne i32 %11, 0, !dbg !4823
  br i1 %tobool, label %if.then16, label %if.end, !dbg !4826

if.then16:                                        ; preds = %do.body
  %12 = load i32, i32* %reg.addr, align 4, !dbg !4823
  %13 = load i32, i32* %ret, align 4, !dbg !4823
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda10086_read_byte, i64 0, i64 0), i32 %12, i32 %13) #8, !dbg !4823
  br label %if.end, !dbg !4823

if.end:                                           ; preds = %if.then16, %do.body
  br label %do.end, !dbg !4826

do.end:                                           ; preds = %if.end
  %14 = load i32, i32* %ret, align 4, !dbg !4827
  store i32 %14, i32* %retval, align 4, !dbg !4828
  br label %return, !dbg !4828

if.end18:                                         ; preds = %entry
  %arrayidx19 = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4829
  %15 = load i8, i8* %arrayidx19, align 1, !dbg !4829
  %conv20 = zext i8 %15 to i32, !dbg !4829
  store i32 %conv20, i32* %retval, align 4, !dbg !4830
  br label %return, !dbg !4830

return:                                           ; preds = %if.end18, %do.end
  %16 = load i32, i32* %retval, align 4, !dbg !4831
  ret i32 %16, !dbg !4831
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4832 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4836, metadata !DIExpression()), !dbg !4841
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4843, metadata !DIExpression()), !dbg !4844
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  %0 = load i64, i64* %size.addr, align 8, !dbg !4847
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4849
  br i1 %1, label %if.then, label %if.end447, !dbg !4850

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4851
  %tobool = icmp ne i64 %2, 0, !dbg !4851
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4854

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4855
  br label %return, !dbg !4855

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4856
  %cmp = icmp ult i64 %3, 4096, !dbg !4858
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4859

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4860
  br label %return, !dbg !4860

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub = sub i64 %4, 1, !dbg !4861
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4861
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4861

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub4 = sub i64 %6, 1, !dbg !4861
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4861
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4861

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub6 = sub i64 %8, 1, !dbg !4861
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4861
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4861

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4861

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub9 = sub i64 %9, 1, !dbg !4861
  %and = and i64 %sub9, -9223372036854775808, !dbg !4861
  %tobool10 = icmp ne i64 %and, 0, !dbg !4861
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4861

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4861

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub13 = sub i64 %10, 1, !dbg !4861
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4861
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4861
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4861

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4861

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub18 = sub i64 %11, 1, !dbg !4861
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4861
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4861
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4861

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4861

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub23 = sub i64 %12, 1, !dbg !4861
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4861
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4861
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4861

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4861

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub28 = sub i64 %13, 1, !dbg !4861
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4861
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4861
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4861

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4861

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub33 = sub i64 %14, 1, !dbg !4861
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4861
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4861
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4861

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4861

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub38 = sub i64 %15, 1, !dbg !4861
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4861
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4861
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4861

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4861

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub43 = sub i64 %16, 1, !dbg !4861
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4861
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4861
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4861

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4861

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub48 = sub i64 %17, 1, !dbg !4861
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4861
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4861
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4861

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4861

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub53 = sub i64 %18, 1, !dbg !4861
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4861
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4861
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4861

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4861

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub58 = sub i64 %19, 1, !dbg !4861
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4861
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4861
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4861

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4861

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub63 = sub i64 %20, 1, !dbg !4861
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4861
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4861
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4861

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4861

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub68 = sub i64 %21, 1, !dbg !4861
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4861
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4861
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4861

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4861

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub73 = sub i64 %22, 1, !dbg !4861
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4861
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4861
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4861

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4861

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub78 = sub i64 %23, 1, !dbg !4861
  %and79 = and i64 %sub78, 562949953421312, !dbg !4861
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4861
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4861

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4861

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub83 = sub i64 %24, 1, !dbg !4861
  %and84 = and i64 %sub83, 281474976710656, !dbg !4861
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4861
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4861

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4861

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub88 = sub i64 %25, 1, !dbg !4861
  %and89 = and i64 %sub88, 140737488355328, !dbg !4861
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4861
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4861

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4861

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub93 = sub i64 %26, 1, !dbg !4861
  %and94 = and i64 %sub93, 70368744177664, !dbg !4861
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4861
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4861

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4861

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub98 = sub i64 %27, 1, !dbg !4861
  %and99 = and i64 %sub98, 35184372088832, !dbg !4861
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4861
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4861

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4861

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub103 = sub i64 %28, 1, !dbg !4861
  %and104 = and i64 %sub103, 17592186044416, !dbg !4861
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4861
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4861

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4861

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub108 = sub i64 %29, 1, !dbg !4861
  %and109 = and i64 %sub108, 8796093022208, !dbg !4861
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4861
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4861

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4861

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub113 = sub i64 %30, 1, !dbg !4861
  %and114 = and i64 %sub113, 4398046511104, !dbg !4861
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4861
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4861

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4861

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub118 = sub i64 %31, 1, !dbg !4861
  %and119 = and i64 %sub118, 2199023255552, !dbg !4861
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4861
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4861

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4861

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub123 = sub i64 %32, 1, !dbg !4861
  %and124 = and i64 %sub123, 1099511627776, !dbg !4861
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4861
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4861

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4861

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub128 = sub i64 %33, 1, !dbg !4861
  %and129 = and i64 %sub128, 549755813888, !dbg !4861
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4861
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4861

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4861

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub133 = sub i64 %34, 1, !dbg !4861
  %and134 = and i64 %sub133, 274877906944, !dbg !4861
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4861
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4861

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4861

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub138 = sub i64 %35, 1, !dbg !4861
  %and139 = and i64 %sub138, 137438953472, !dbg !4861
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4861
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4861

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4861

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub143 = sub i64 %36, 1, !dbg !4861
  %and144 = and i64 %sub143, 68719476736, !dbg !4861
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4861
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4861

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4861

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub148 = sub i64 %37, 1, !dbg !4861
  %and149 = and i64 %sub148, 34359738368, !dbg !4861
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4861
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4861

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4861

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub153 = sub i64 %38, 1, !dbg !4861
  %and154 = and i64 %sub153, 17179869184, !dbg !4861
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4861
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4861

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4861

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub158 = sub i64 %39, 1, !dbg !4861
  %and159 = and i64 %sub158, 8589934592, !dbg !4861
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4861
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4861

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4861

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub163 = sub i64 %40, 1, !dbg !4861
  %and164 = and i64 %sub163, 4294967296, !dbg !4861
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4861
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4861

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4861

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub168 = sub i64 %41, 1, !dbg !4861
  %and169 = and i64 %sub168, 2147483648, !dbg !4861
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4861
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4861

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4861

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub173 = sub i64 %42, 1, !dbg !4861
  %and174 = and i64 %sub173, 1073741824, !dbg !4861
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4861
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4861

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4861

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub178 = sub i64 %43, 1, !dbg !4861
  %and179 = and i64 %sub178, 536870912, !dbg !4861
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4861
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4861

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4861

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub183 = sub i64 %44, 1, !dbg !4861
  %and184 = and i64 %sub183, 268435456, !dbg !4861
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4861
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4861

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4861

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub188 = sub i64 %45, 1, !dbg !4861
  %and189 = and i64 %sub188, 134217728, !dbg !4861
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4861
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4861

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4861

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub193 = sub i64 %46, 1, !dbg !4861
  %and194 = and i64 %sub193, 67108864, !dbg !4861
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4861
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4861

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4861

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub198 = sub i64 %47, 1, !dbg !4861
  %and199 = and i64 %sub198, 33554432, !dbg !4861
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4861
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4861

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4861

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub203 = sub i64 %48, 1, !dbg !4861
  %and204 = and i64 %sub203, 16777216, !dbg !4861
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4861
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4861

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4861

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub208 = sub i64 %49, 1, !dbg !4861
  %and209 = and i64 %sub208, 8388608, !dbg !4861
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4861
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4861

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4861

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub213 = sub i64 %50, 1, !dbg !4861
  %and214 = and i64 %sub213, 4194304, !dbg !4861
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4861
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4861

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4861

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub218 = sub i64 %51, 1, !dbg !4861
  %and219 = and i64 %sub218, 2097152, !dbg !4861
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4861
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4861

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4861

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub223 = sub i64 %52, 1, !dbg !4861
  %and224 = and i64 %sub223, 1048576, !dbg !4861
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4861
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4861

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4861

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub228 = sub i64 %53, 1, !dbg !4861
  %and229 = and i64 %sub228, 524288, !dbg !4861
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4861
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4861

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4861

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub233 = sub i64 %54, 1, !dbg !4861
  %and234 = and i64 %sub233, 262144, !dbg !4861
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4861
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4861

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4861

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub238 = sub i64 %55, 1, !dbg !4861
  %and239 = and i64 %sub238, 131072, !dbg !4861
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4861
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4861

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4861

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub243 = sub i64 %56, 1, !dbg !4861
  %and244 = and i64 %sub243, 65536, !dbg !4861
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4861
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4861

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4861

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub248 = sub i64 %57, 1, !dbg !4861
  %and249 = and i64 %sub248, 32768, !dbg !4861
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4861
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4861

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4861

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub253 = sub i64 %58, 1, !dbg !4861
  %and254 = and i64 %sub253, 16384, !dbg !4861
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4861
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4861

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4861

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub258 = sub i64 %59, 1, !dbg !4861
  %and259 = and i64 %sub258, 8192, !dbg !4861
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4861
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4861

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4861

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub263 = sub i64 %60, 1, !dbg !4861
  %and264 = and i64 %sub263, 4096, !dbg !4861
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4861
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4861

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4861

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub268 = sub i64 %61, 1, !dbg !4861
  %and269 = and i64 %sub268, 2048, !dbg !4861
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4861
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4861

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4861

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub273 = sub i64 %62, 1, !dbg !4861
  %and274 = and i64 %sub273, 1024, !dbg !4861
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4861
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4861

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4861

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub278 = sub i64 %63, 1, !dbg !4861
  %and279 = and i64 %sub278, 512, !dbg !4861
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4861
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4861

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4861

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub283 = sub i64 %64, 1, !dbg !4861
  %and284 = and i64 %sub283, 256, !dbg !4861
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4861
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4861

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4861

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub288 = sub i64 %65, 1, !dbg !4861
  %and289 = and i64 %sub288, 128, !dbg !4861
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4861
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4861

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4861

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub293 = sub i64 %66, 1, !dbg !4861
  %and294 = and i64 %sub293, 64, !dbg !4861
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4861
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4861

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4861

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub298 = sub i64 %67, 1, !dbg !4861
  %and299 = and i64 %sub298, 32, !dbg !4861
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4861
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4861

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4861

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub303 = sub i64 %68, 1, !dbg !4861
  %and304 = and i64 %sub303, 16, !dbg !4861
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4861
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4861

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4861

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub308 = sub i64 %69, 1, !dbg !4861
  %and309 = and i64 %sub308, 8, !dbg !4861
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4861
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4861

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4861

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub313 = sub i64 %70, 1, !dbg !4861
  %and314 = and i64 %sub313, 4, !dbg !4861
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4861
  %71 = zext i1 %tobool315 to i64, !dbg !4861
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4861
  br label %cond.end, !dbg !4861

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4861
  br label %cond.end317, !dbg !4861

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4861
  br label %cond.end319, !dbg !4861

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4861
  br label %cond.end321, !dbg !4861

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4861
  br label %cond.end323, !dbg !4861

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4861
  br label %cond.end325, !dbg !4861

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4861
  br label %cond.end327, !dbg !4861

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4861
  br label %cond.end329, !dbg !4861

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4861
  br label %cond.end331, !dbg !4861

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4861
  br label %cond.end333, !dbg !4861

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4861
  br label %cond.end335, !dbg !4861

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4861
  br label %cond.end337, !dbg !4861

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4861
  br label %cond.end339, !dbg !4861

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4861
  br label %cond.end341, !dbg !4861

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4861
  br label %cond.end343, !dbg !4861

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4861
  br label %cond.end345, !dbg !4861

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4861
  br label %cond.end347, !dbg !4861

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4861
  br label %cond.end349, !dbg !4861

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4861
  br label %cond.end351, !dbg !4861

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4861
  br label %cond.end353, !dbg !4861

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4861
  br label %cond.end355, !dbg !4861

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4861
  br label %cond.end357, !dbg !4861

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4861
  br label %cond.end359, !dbg !4861

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4861
  br label %cond.end361, !dbg !4861

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4861
  br label %cond.end363, !dbg !4861

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4861
  br label %cond.end365, !dbg !4861

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4861
  br label %cond.end367, !dbg !4861

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4861
  br label %cond.end369, !dbg !4861

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4861
  br label %cond.end371, !dbg !4861

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4861
  br label %cond.end373, !dbg !4861

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4861
  br label %cond.end375, !dbg !4861

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4861
  br label %cond.end377, !dbg !4861

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4861
  br label %cond.end379, !dbg !4861

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4861
  br label %cond.end381, !dbg !4861

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4861
  br label %cond.end383, !dbg !4861

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4861
  br label %cond.end385, !dbg !4861

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4861
  br label %cond.end387, !dbg !4861

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4861
  br label %cond.end389, !dbg !4861

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4861
  br label %cond.end391, !dbg !4861

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4861
  br label %cond.end393, !dbg !4861

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4861
  br label %cond.end395, !dbg !4861

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4861
  br label %cond.end397, !dbg !4861

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4861
  br label %cond.end399, !dbg !4861

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4861
  br label %cond.end401, !dbg !4861

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4861
  br label %cond.end403, !dbg !4861

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4861
  br label %cond.end405, !dbg !4861

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4861
  br label %cond.end407, !dbg !4861

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4861
  br label %cond.end409, !dbg !4861

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4861
  br label %cond.end411, !dbg !4861

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4861
  br label %cond.end413, !dbg !4861

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4861
  br label %cond.end415, !dbg !4861

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4861
  br label %cond.end417, !dbg !4861

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4861
  br label %cond.end419, !dbg !4861

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4861
  br label %cond.end421, !dbg !4861

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4861
  br label %cond.end423, !dbg !4861

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4861
  br label %cond.end425, !dbg !4861

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4861
  br label %cond.end427, !dbg !4861

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4861
  br label %cond.end429, !dbg !4861

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4861
  br label %cond.end431, !dbg !4861

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4861
  br label %cond.end433, !dbg !4861

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4861
  br label %cond.end435, !dbg !4861

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4861
  br label %cond.end437, !dbg !4861

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4861
  br label %cond.end440, !dbg !4861

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4861

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4861
  br label %cond.end444, !dbg !4861

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4861
  %sub443 = sub i64 %72, 1, !dbg !4861
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4861
  br label %cond.end444, !dbg !4861

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4861
  %sub446 = sub i32 %cond445, 12, !dbg !4862
  %add = add i32 %sub446, 1, !dbg !4863
  store i32 %add, i32* %retval, align 4, !dbg !4864
  br label %return, !dbg !4864

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4865
  %dec = add i64 %73, -1, !dbg !4865
  store i64 %dec, i64* %size.addr, align 8, !dbg !4865
  %74 = load i64, i64* %size.addr, align 8, !dbg !4866
  %shr = lshr i64 %74, 12, !dbg !4866
  store i64 %shr, i64* %size.addr, align 8, !dbg !4866
  %75 = load i64, i64* %size.addr, align 8, !dbg !4867
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4844
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4868
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4869
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4868, !srcloc !4870
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4868
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4871
  %add.i = add i32 %79, 1, !dbg !4872
  store i32 %add.i, i32* %retval, align 4, !dbg !4873
  br label %return, !dbg !4873

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4874
  ret i32 %80, !dbg !4874
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4875 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4836, metadata !DIExpression()), !dbg !4879
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4843, metadata !DIExpression()), !dbg !4881
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  %0 = load i64, i64* %n.addr, align 8, !dbg !4884
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4881
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4885
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4886
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4885, !srcloc !4870
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4885
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4887
  %add.i = add i32 %4, 1, !dbg !4888
  %sub = sub i32 %add.i, 1, !dbg !4889
  ret i32 %sub, !dbg !4890
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4891 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4895, metadata !DIExpression()), !dbg !4896
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4899, metadata !DIExpression()), !dbg !4900
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4901, metadata !DIExpression()), !dbg !4902
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4903
  ret i8* %0, !dbg !4904
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda10086_release(%struct.dvb_frontend* %fe) #0 !dbg !4905 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !4908, metadata !DIExpression()), !dbg !4909
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4910
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4911
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4911
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !4910
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !4909
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4912
  %call = call i32 @tda10086_sleep(%struct.dvb_frontend* %3) #9, !dbg !4913
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4914
  %5 = bitcast %struct.tda10086_state* %4 to i8*, !dbg !4914
  call void @kfree(i8* %5) #9, !dbg !4915
  ret void, !dbg !4916
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_init(%struct.dvb_frontend* %fe) #0 !dbg !4917 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  %t22k_off = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !4920, metadata !DIExpression()), !dbg !4921
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4922
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4923
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4923
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !4922
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !4921
  call void @llvm.dbg.declare(metadata i8* %t22k_off, metadata !4924, metadata !DIExpression()), !dbg !4925
  store i8 -128, i8* %t22k_off, align 1, !dbg !4925
  br label %do.body, !dbg !4926

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !4927
  %tobool = icmp ne i32 %3, 0, !dbg !4927
  br i1 %tobool, label %if.then, label %if.end, !dbg !4930

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.tda10086_init, i64 0, i64 0)) #8, !dbg !4927
  br label %if.end, !dbg !4927

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4930

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4931
  %config = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %4, i32 0, i32 1, !dbg !4933
  %5 = load %struct.tda10086_config*, %struct.tda10086_config** %config, align 8, !dbg !4933
  %diseqc_tone = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %5, i32 0, i32 2, !dbg !4934
  %6 = load i8, i8* %diseqc_tone, align 2, !dbg !4934
  %tobool1 = icmp ne i8 %6, 0, !dbg !4931
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4935

if.then2:                                         ; preds = %do.end
  store i8 0, i8* %t22k_off, align 1, !dbg !4936
  br label %if.end3, !dbg !4937

if.end3:                                          ; preds = %if.then2, %do.end
  %7 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4938
  %call4 = call i32 @tda10086_write_byte(%struct.tda10086_state* %7, i32 0, i32 0) #9, !dbg !4939
  call void @msleep(i32 10) #9, !dbg !4940
  %8 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4941
  %call5 = call i32 @tda10086_write_byte(%struct.tda10086_state* %8, i32 1, i32 148) #9, !dbg !4942
  %9 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4943
  %call6 = call i32 @tda10086_write_byte(%struct.tda10086_state* %9, i32 2, i32 53) #9, !dbg !4944
  %10 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4945
  %call7 = call i32 @tda10086_write_byte(%struct.tda10086_state* %10, i32 3, i32 228) #9, !dbg !4946
  %11 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4947
  %call8 = call i32 @tda10086_write_byte(%struct.tda10086_state* %11, i32 4, i32 67) #9, !dbg !4948
  %12 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4949
  %call9 = call i32 @tda10086_write_byte(%struct.tda10086_state* %12, i32 12, i32 12) #9, !dbg !4950
  %13 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4951
  %call10 = call i32 @tda10086_write_byte(%struct.tda10086_state* %13, i32 27, i32 176) #9, !dbg !4952
  %14 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4953
  %call11 = call i32 @tda10086_write_byte(%struct.tda10086_state* %14, i32 32, i32 137) #9, !dbg !4954
  %15 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4955
  %call12 = call i32 @tda10086_write_byte(%struct.tda10086_state* %15, i32 48, i32 4) #9, !dbg !4956
  %16 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4957
  %call13 = call i32 @tda10086_write_byte(%struct.tda10086_state* %16, i32 50, i32 0) #9, !dbg !4958
  %17 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4959
  %call14 = call i32 @tda10086_write_byte(%struct.tda10086_state* %17, i32 49, i32 86) #9, !dbg !4960
  %18 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4961
  %call15 = call i32 @tda10086_write_byte(%struct.tda10086_state* %18, i32 85, i32 44) #9, !dbg !4962
  %19 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4963
  %config16 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %19, i32 0, i32 1, !dbg !4965
  %20 = load %struct.tda10086_config*, %struct.tda10086_config** %config16, align 8, !dbg !4965
  %xtal_freq = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %20, i32 0, i32 3, !dbg !4966
  %21 = load i32, i32* %xtal_freq, align 4, !dbg !4966
  %cmp = icmp eq i32 %21, 0, !dbg !4967
  br i1 %cmp, label %if.then17, label %if.else, !dbg !4968

if.then17:                                        ; preds = %if.end3
  %22 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4969
  %call18 = call i32 @tda10086_write_byte(%struct.tda10086_state* %22, i32 58, i32 11) #9, !dbg !4971
  %23 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4972
  %call19 = call i32 @tda10086_write_byte(%struct.tda10086_state* %23, i32 59, i32 1) #9, !dbg !4973
  br label %if.end22, !dbg !4974

if.else:                                          ; preds = %if.end3
  %24 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4975
  %call20 = call i32 @tda10086_write_byte(%struct.tda10086_state* %24, i32 58, i32 23) #9, !dbg !4977
  %25 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4978
  %call21 = call i32 @tda10086_write_byte(%struct.tda10086_state* %25, i32 59, i32 0) #9, !dbg !4979
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17
  %26 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4980
  %call23 = call i32 @tda10086_write_mask(%struct.tda10086_state* %26, i32 85, i32 32, i32 0) #9, !dbg !4981
  %27 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4982
  %call24 = call i32 @tda10086_write_byte(%struct.tda10086_state* %27, i32 17, i32 129) #9, !dbg !4983
  %28 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4984
  %call25 = call i32 @tda10086_write_byte(%struct.tda10086_state* %28, i32 18, i32 129) #9, !dbg !4985
  %29 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4986
  %call26 = call i32 @tda10086_write_byte(%struct.tda10086_state* %29, i32 25, i32 64) #9, !dbg !4987
  %30 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4988
  %call27 = call i32 @tda10086_write_byte(%struct.tda10086_state* %30, i32 86, i32 128) #9, !dbg !4989
  %31 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4990
  %call28 = call i32 @tda10086_write_byte(%struct.tda10086_state* %31, i32 87, i32 8) #9, !dbg !4991
  %32 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4992
  %call29 = call i32 @tda10086_write_byte(%struct.tda10086_state* %32, i32 16, i32 42) #9, !dbg !4993
  %33 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4994
  %call30 = call i32 @tda10086_write_byte(%struct.tda10086_state* %33, i32 88, i32 97) #9, !dbg !4995
  %34 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4996
  %call31 = call i32 @tda10086_write_mask(%struct.tda10086_state* %34, i32 88, i32 1, i32 0) #9, !dbg !4997
  %35 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !4998
  %call32 = call i32 @tda10086_write_byte(%struct.tda10086_state* %35, i32 5, i32 11) #9, !dbg !4999
  %36 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5000
  %call33 = call i32 @tda10086_write_byte(%struct.tda10086_state* %36, i32 55, i32 99) #9, !dbg !5001
  %37 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5002
  %call34 = call i32 @tda10086_write_byte(%struct.tda10086_state* %37, i32 63, i32 10) #9, !dbg !5003
  %38 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5004
  %call35 = call i32 @tda10086_write_byte(%struct.tda10086_state* %38, i32 64, i32 100) #9, !dbg !5005
  %39 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5006
  %call36 = call i32 @tda10086_write_byte(%struct.tda10086_state* %39, i32 65, i32 79) #9, !dbg !5007
  %40 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5008
  %call37 = call i32 @tda10086_write_byte(%struct.tda10086_state* %40, i32 66, i32 67) #9, !dbg !5009
  %41 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5010
  %call38 = call i32 @tda10086_write_byte(%struct.tda10086_state* %41, i32 26, i32 17) #9, !dbg !5011
  %42 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5012
  %call39 = call i32 @tda10086_write_byte(%struct.tda10086_state* %42, i32 61, i32 128) #9, !dbg !5013
  %43 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5014
  %44 = load i8, i8* %t22k_off, align 1, !dbg !5015
  %conv = zext i8 %44 to i32, !dbg !5015
  %call40 = call i32 @tda10086_write_byte(%struct.tda10086_state* %43, i32 54, i32 %conv) #9, !dbg !5016
  %45 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5017
  %call41 = call i32 @tda10086_write_byte(%struct.tda10086_state* %45, i32 52, i32 120) #9, !dbg !5018
  %46 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5019
  %call42 = call i32 @tda10086_write_byte(%struct.tda10086_state* %46, i32 53, i32 0) #9, !dbg !5020
  ret i32 0, !dbg !5021
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5022 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5025, metadata !DIExpression()), !dbg !5026
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5027
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5028
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5028
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5027
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5026
  br label %do.body, !dbg !5029

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5030
  %tobool = icmp ne i32 %3, 0, !dbg !5030
  br i1 %tobool, label %if.then, label %if.end, !dbg !5033

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tda10086_sleep, i64 0, i64 0)) #8, !dbg !5030
  br label %if.end, !dbg !5030

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5033

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5034
  %call1 = call i32 @tda10086_write_mask(%struct.tda10086_state* %4, i32 0, i32 8, i32 8) #9, !dbg !5035
  ret i32 0, !dbg !5036
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5037 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_params = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  %ret = alloca i32, align 4
  %freq = alloca i32, align 4
  %freqoff = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %fe_params, metadata !5040, metadata !DIExpression()), !dbg !5041
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5042
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5043
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5041
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5044, metadata !DIExpression()), !dbg !5045
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5046
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5047
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5047
  %3 = bitcast i8* %2 to %struct.tda10086_state*, !dbg !5046
  store %struct.tda10086_state* %3, %struct.tda10086_state** %state, align 8, !dbg !5045
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.declare(metadata i32* %freq, metadata !5050, metadata !DIExpression()), !dbg !5051
  store i32 0, i32* %freq, align 4, !dbg !5051
  call void @llvm.dbg.declare(metadata i32* %freqoff, metadata !5052, metadata !DIExpression()), !dbg !5053
  br label %do.body, !dbg !5054

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5055
  %tobool = icmp ne i32 %4, 0, !dbg !5055
  br i1 %tobool, label %if.then, label %if.end, !dbg !5058

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda10086_set_frontend, i64 0, i64 0)) #8, !dbg !5055
  br label %if.end, !dbg !5055

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5058

do.end:                                           ; preds = %if.end
  %5 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5059
  %call1 = call i32 @tda10086_write_byte(%struct.tda10086_state* %5, i32 2, i32 53) #9, !dbg !5060
  %6 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5061
  %has_lock = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %6, i32 0, i32 5, !dbg !5062
  store i8 0, i8* %has_lock, align 8, !dbg !5063
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5064
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1, !dbg !5066
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5067
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5068
  %8 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5068
  %tobool2 = icmp ne i32 (%struct.dvb_frontend*)* %8, null, !dbg !5064
  br i1 %tobool2, label %if.then3, label %if.end32, !dbg !5069

if.then3:                                         ; preds = %do.end
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5070
  %ops4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1, !dbg !5072
  %tuner_ops5 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops4, i32 0, i32 30, !dbg !5073
  %set_params6 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops5, i32 0, i32 6, !dbg !5074
  %10 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params6, align 8, !dbg !5074
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5075
  %call7 = call i32 %10(%struct.dvb_frontend* %11) #9, !dbg !5070
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5076
  %ops8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1, !dbg !5078
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops8, i32 0, i32 26, !dbg !5079
  %13 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5079
  %tobool9 = icmp ne i32 (%struct.dvb_frontend*, i32)* %13, null, !dbg !5076
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !5080

if.then10:                                        ; preds = %if.then3
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5081
  %ops11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1, !dbg !5082
  %i2c_gate_ctrl12 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops11, i32 0, i32 26, !dbg !5083
  %15 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl12, align 8, !dbg !5083
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5084
  %call13 = call i32 %15(%struct.dvb_frontend* %16, i32 0) #9, !dbg !5081
  br label %if.end14, !dbg !5081

if.end14:                                         ; preds = %if.then10, %if.then3
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5085
  %ops15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1, !dbg !5087
  %tuner_ops16 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops15, i32 0, i32 30, !dbg !5088
  %get_frequency = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops16, i32 0, i32 9, !dbg !5089
  %18 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency, align 8, !dbg !5089
  %tobool17 = icmp ne i32 (%struct.dvb_frontend*, i32*)* %18, null, !dbg !5085
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !5090

if.then18:                                        ; preds = %if.end14
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5091
  %ops19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 1, !dbg !5092
  %tuner_ops20 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops19, i32 0, i32 30, !dbg !5093
  %get_frequency21 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops20, i32 0, i32 9, !dbg !5094
  %20 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency21, align 8, !dbg !5094
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5095
  %call22 = call i32 %20(%struct.dvb_frontend* %21, i32* %freq) #9, !dbg !5091
  br label %if.end23, !dbg !5091

if.end23:                                         ; preds = %if.then18, %if.end14
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5096
  %ops24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1, !dbg !5098
  %i2c_gate_ctrl25 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops24, i32 0, i32 26, !dbg !5099
  %23 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl25, align 8, !dbg !5099
  %tobool26 = icmp ne i32 (%struct.dvb_frontend*, i32)* %23, null, !dbg !5096
  br i1 %tobool26, label %if.then27, label %if.end31, !dbg !5100

if.then27:                                        ; preds = %if.end23
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5101
  %ops28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 1, !dbg !5102
  %i2c_gate_ctrl29 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops28, i32 0, i32 26, !dbg !5103
  %25 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl29, align 8, !dbg !5103
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5104
  %call30 = call i32 %25(%struct.dvb_frontend* %26, i32 0) #9, !dbg !5101
  br label %if.end31, !dbg !5101

if.end31:                                         ; preds = %if.then27, %if.end23
  br label %if.end32, !dbg !5105

if.end32:                                         ; preds = %if.end31, %do.end
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5106
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 0, !dbg !5107
  %28 = load i32, i32* %frequency, align 4, !dbg !5107
  %29 = load i32, i32* %freq, align 4, !dbg !5108
  %sub = sub i32 %28, %29, !dbg !5109
  store i32 %sub, i32* %freqoff, align 4, !dbg !5110
  %30 = load i32, i32* %freqoff, align 4, !dbg !5111
  %mul = mul i32 65536, %30, !dbg !5112
  %div = udiv i32 %mul, 96000, !dbg !5113
  store i32 %div, i32* %freqoff, align 4, !dbg !5114
  %31 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5115
  %32 = load i32, i32* %freqoff, align 4, !dbg !5116
  %shr = ashr i32 %32, 8, !dbg !5117
  %and = and i32 %shr, 127, !dbg !5118
  %or = or i32 128, %and, !dbg !5119
  %call33 = call i32 @tda10086_write_byte(%struct.tda10086_state* %31, i32 61, i32 %or) #9, !dbg !5120
  %33 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5121
  %34 = load i32, i32* %freqoff, align 4, !dbg !5122
  %call34 = call i32 @tda10086_write_byte(%struct.tda10086_state* %33, i32 62, i32 %34) #9, !dbg !5123
  %35 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5124
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5126
  %call35 = call i32 @tda10086_set_inversion(%struct.tda10086_state* %35, %struct.dtv_frontend_properties* %36) #9, !dbg !5127
  store i32 %call35, i32* %ret, align 4, !dbg !5128
  %cmp = icmp slt i32 %call35, 0, !dbg !5129
  br i1 %cmp, label %if.then36, label %if.end37, !dbg !5130

if.then36:                                        ; preds = %if.end32
  %37 = load i32, i32* %ret, align 4, !dbg !5131
  store i32 %37, i32* %retval, align 4, !dbg !5132
  br label %return, !dbg !5132

if.end37:                                         ; preds = %if.end32
  %38 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5133
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5135
  %call38 = call i32 @tda10086_set_symbol_rate(%struct.tda10086_state* %38, %struct.dtv_frontend_properties* %39) #9, !dbg !5136
  store i32 %call38, i32* %ret, align 4, !dbg !5137
  %cmp39 = icmp slt i32 %call38, 0, !dbg !5138
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5139

if.then40:                                        ; preds = %if.end37
  %40 = load i32, i32* %ret, align 4, !dbg !5140
  store i32 %40, i32* %retval, align 4, !dbg !5141
  br label %return, !dbg !5141

if.end41:                                         ; preds = %if.end37
  %41 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5142
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5144
  %call42 = call i32 @tda10086_set_fec(%struct.tda10086_state* %41, %struct.dtv_frontend_properties* %42) #9, !dbg !5145
  store i32 %call42, i32* %ret, align 4, !dbg !5146
  %cmp43 = icmp slt i32 %call42, 0, !dbg !5147
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !5148

if.then44:                                        ; preds = %if.end41
  %43 = load i32, i32* %ret, align 4, !dbg !5149
  store i32 %43, i32* %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

if.end45:                                         ; preds = %if.end41
  %44 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5151
  %call46 = call i32 @tda10086_write_mask(%struct.tda10086_state* %44, i32 16, i32 64, i32 64) #9, !dbg !5152
  %45 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5153
  %call47 = call i32 @tda10086_write_mask(%struct.tda10086_state* %45, i32 0, i32 1, i32 0) #9, !dbg !5154
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5155
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 10, !dbg !5156
  %47 = load i32, i32* %symbol_rate, align 4, !dbg !5156
  %48 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5157
  %symbol_rate48 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %48, i32 0, i32 4, !dbg !5158
  store i32 %47, i32* %symbol_rate48, align 4, !dbg !5159
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5160
  %frequency49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 0, !dbg !5161
  %50 = load i32, i32* %frequency49, align 4, !dbg !5161
  %51 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5162
  %frequency50 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %51, i32 0, i32 3, !dbg !5163
  store i32 %50, i32* %frequency50, align 8, !dbg !5164
  store i32 0, i32* %retval, align 4, !dbg !5165
  br label %return, !dbg !5165

return:                                           ; preds = %if.end45, %if.then44, %if.then40, %if.then36
  %52 = load i32, i32* %retval, align 4, !dbg !5166
  ret i32 %52, !dbg !5166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5167 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5172, metadata !DIExpression()), !dbg !5173
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5174
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5175
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5173
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5176
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 10, !dbg !5178
  %2 = load i32, i32* %symbol_rate, align 4, !dbg !5178
  %cmp = icmp ugt i32 %2, 20000000, !dbg !5179
  br i1 %cmp, label %if.then, label %if.else, !dbg !5180

if.then:                                          ; preds = %entry
  %3 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5181
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %3, i32 0, i32 0, !dbg !5183
  store i32 50, i32* %min_delay_ms, align 4, !dbg !5184
  %4 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5185
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %4, i32 0, i32 1, !dbg !5186
  store i32 2000, i32* %step_size, align 4, !dbg !5187
  %5 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5188
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %5, i32 0, i32 2, !dbg !5189
  store i32 8000, i32* %max_drift, align 4, !dbg !5190
  br label %if.end41, !dbg !5191

if.else:                                          ; preds = %entry
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5192
  %symbol_rate1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 10, !dbg !5194
  %7 = load i32, i32* %symbol_rate1, align 4, !dbg !5194
  %cmp2 = icmp ugt i32 %7, 12000000, !dbg !5195
  br i1 %cmp2, label %if.then3, label %if.else7, !dbg !5196

if.then3:                                         ; preds = %if.else
  %8 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5197
  %min_delay_ms4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %8, i32 0, i32 0, !dbg !5199
  store i32 100, i32* %min_delay_ms4, align 4, !dbg !5200
  %9 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5201
  %step_size5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %9, i32 0, i32 1, !dbg !5202
  store i32 1500, i32* %step_size5, align 4, !dbg !5203
  %10 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5204
  %max_drift6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %10, i32 0, i32 2, !dbg !5205
  store i32 9000, i32* %max_drift6, align 4, !dbg !5206
  br label %if.end40, !dbg !5207

if.else7:                                         ; preds = %if.else
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5208
  %symbol_rate8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 10, !dbg !5210
  %12 = load i32, i32* %symbol_rate8, align 4, !dbg !5210
  %cmp9 = icmp ugt i32 %12, 8000000, !dbg !5211
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !5212

if.then10:                                        ; preds = %if.else7
  %13 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5213
  %min_delay_ms11 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %13, i32 0, i32 0, !dbg !5215
  store i32 100, i32* %min_delay_ms11, align 4, !dbg !5216
  %14 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5217
  %step_size12 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %14, i32 0, i32 1, !dbg !5218
  store i32 1000, i32* %step_size12, align 4, !dbg !5219
  %15 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5220
  %max_drift13 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %15, i32 0, i32 2, !dbg !5221
  store i32 8000, i32* %max_drift13, align 4, !dbg !5222
  br label %if.end39, !dbg !5223

if.else14:                                        ; preds = %if.else7
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5224
  %symbol_rate15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 10, !dbg !5226
  %17 = load i32, i32* %symbol_rate15, align 4, !dbg !5226
  %cmp16 = icmp ugt i32 %17, 4000000, !dbg !5227
  br i1 %cmp16, label %if.then17, label %if.else21, !dbg !5228

if.then17:                                        ; preds = %if.else14
  %18 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5229
  %min_delay_ms18 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %18, i32 0, i32 0, !dbg !5231
  store i32 100, i32* %min_delay_ms18, align 4, !dbg !5232
  %19 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5233
  %step_size19 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %19, i32 0, i32 1, !dbg !5234
  store i32 500, i32* %step_size19, align 4, !dbg !5235
  %20 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5236
  %max_drift20 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %20, i32 0, i32 2, !dbg !5237
  store i32 7000, i32* %max_drift20, align 4, !dbg !5238
  br label %if.end38, !dbg !5239

if.else21:                                        ; preds = %if.else14
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5240
  %symbol_rate22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 10, !dbg !5242
  %22 = load i32, i32* %symbol_rate22, align 4, !dbg !5242
  %cmp23 = icmp ugt i32 %22, 2000000, !dbg !5243
  br i1 %cmp23, label %if.then24, label %if.else30, !dbg !5244

if.then24:                                        ; preds = %if.else21
  %23 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5245
  %min_delay_ms25 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %23, i32 0, i32 0, !dbg !5247
  store i32 200, i32* %min_delay_ms25, align 4, !dbg !5248
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5249
  %symbol_rate26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 10, !dbg !5250
  %25 = load i32, i32* %symbol_rate26, align 4, !dbg !5250
  %div = udiv i32 %25, 8000, !dbg !5251
  %26 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5252
  %step_size27 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %26, i32 0, i32 1, !dbg !5253
  store i32 %div, i32* %step_size27, align 4, !dbg !5254
  %27 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5255
  %step_size28 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %27, i32 0, i32 1, !dbg !5256
  %28 = load i32, i32* %step_size28, align 4, !dbg !5256
  %mul = mul i32 14, %28, !dbg !5257
  %29 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5258
  %max_drift29 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %29, i32 0, i32 2, !dbg !5259
  store i32 %mul, i32* %max_drift29, align 4, !dbg !5260
  br label %if.end, !dbg !5261

if.else30:                                        ; preds = %if.else21
  %30 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5262
  %min_delay_ms31 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %30, i32 0, i32 0, !dbg !5264
  store i32 200, i32* %min_delay_ms31, align 4, !dbg !5265
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5266
  %symbol_rate32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 10, !dbg !5267
  %32 = load i32, i32* %symbol_rate32, align 4, !dbg !5267
  %div33 = udiv i32 %32, 8000, !dbg !5268
  %33 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5269
  %step_size34 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %33, i32 0, i32 1, !dbg !5270
  store i32 %div33, i32* %step_size34, align 4, !dbg !5271
  %34 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5272
  %step_size35 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %34, i32 0, i32 1, !dbg !5273
  %35 = load i32, i32* %step_size35, align 4, !dbg !5273
  %mul36 = mul i32 18, %35, !dbg !5274
  %36 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5275
  %max_drift37 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %36, i32 0, i32 2, !dbg !5276
  store i32 %mul36, i32* %max_drift37, align 4, !dbg !5277
  br label %if.end

if.end:                                           ; preds = %if.else30, %if.then24
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then17
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then10
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then3
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then
  ret i32 0, !dbg !5278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %fe_params) #0 !dbg !5279 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_params.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  %val = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp64 = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  store %struct.dtv_frontend_properties* %fe_params, %struct.dtv_frontend_properties** %fe_params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %fe_params.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5286
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5287
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5287
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5286
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5285
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5288, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5290, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.declare(metadata i64* %tmp64, metadata !5292, metadata !DIExpression()), !dbg !5293
  br label %do.body, !dbg !5294

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5295
  %tobool = icmp ne i32 %3, 0, !dbg !5295
  br i1 %tobool, label %if.then, label %if.end, !dbg !5298

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda10086_get_frontend, i64 0, i64 0)) #8, !dbg !5295
  br label %if.end, !dbg !5295

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5298

do.end:                                           ; preds = %if.end
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5299
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 10, !dbg !5301
  %5 = load i32, i32* %symbol_rate, align 4, !dbg !5301
  %cmp = icmp ult i32 %5, 500000, !dbg !5302
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5303

if.then1:                                         ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5304
  br label %return, !dbg !5304

if.end2:                                          ; preds = %do.end
  %6 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5305
  %call3 = call i32 @tda10086_read_byte(%struct.tda10086_state* %6, i32 82) #9, !dbg !5306
  %conv = sext i32 %call3 to i64, !dbg !5307
  %7 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5308
  %call4 = call i32 @tda10086_read_byte(%struct.tda10086_state* %7, i32 81) #9, !dbg !5309
  %shl = shl i32 %call4, 8, !dbg !5310
  %conv5 = sext i32 %shl to i64, !dbg !5311
  %or = or i64 %conv, %conv5, !dbg !5312
  store i64 %or, i64* %tmp64, align 8, !dbg !5313
  %8 = load i64, i64* %tmp64, align 8, !dbg !5314
  %and = and i64 %8, 32768, !dbg !5316
  %tobool6 = icmp ne i64 %and, 0, !dbg !5316
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5317

if.then7:                                         ; preds = %if.end2
  %9 = load i64, i64* %tmp64, align 8, !dbg !5318
  %or8 = or i64 %9, -65536, !dbg !5318
  store i64 %or8, i64* %tmp64, align 8, !dbg !5318
  br label %if.end9, !dbg !5319

if.end9:                                          ; preds = %if.then7, %if.end2
  %10 = load i64, i64* %tmp64, align 8, !dbg !5320
  %mul = mul i64 %10, 96000, !dbg !5321
  store i64 %mul, i64* %tmp64, align 8, !dbg !5322
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5323, metadata !DIExpression()), !dbg !5325
  store i32 65536, i32* %__base, align 4, !dbg !5325
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5326, metadata !DIExpression()), !dbg !5325
  %11 = load i64, i64* %tmp64, align 8, !dbg !5325
  %12 = load i32, i32* %__base, align 4, !dbg !5325
  %conv10 = zext i32 %12 to i64, !dbg !5325
  %rem = urem i64 %11, %conv10, !dbg !5325
  %conv11 = trunc i64 %rem to i32, !dbg !5325
  store i32 %conv11, i32* %__rem, align 4, !dbg !5325
  %13 = load i64, i64* %tmp64, align 8, !dbg !5325
  %14 = load i32, i32* %__base, align 4, !dbg !5325
  %conv12 = zext i32 %14 to i64, !dbg !5325
  %div = udiv i64 %13, %conv12, !dbg !5325
  store i64 %div, i64* %tmp64, align 8, !dbg !5325
  %15 = load i32, i32* %__rem, align 4, !dbg !5325
  store i32 %15, i32* %tmp13, align 4, !dbg !5325
  %16 = load i32, i32* %tmp13, align 4, !dbg !5325
  %17 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5327
  %frequency = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %17, i32 0, i32 3, !dbg !5328
  %18 = load i32, i32* %frequency, align 8, !dbg !5328
  %19 = load i64, i64* %tmp64, align 8, !dbg !5329
  %conv14 = trunc i64 %19 to i32, !dbg !5330
  %add = add i32 %18, %conv14, !dbg !5331
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5332
  %frequency15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0, !dbg !5333
  store i32 %add, i32* %frequency15, align 4, !dbg !5334
  %21 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5335
  %call16 = call i32 @tda10086_read_byte(%struct.tda10086_state* %21, i32 12) #9, !dbg !5336
  %conv17 = trunc i32 %call16 to i8, !dbg !5336
  store i8 %conv17, i8* %val, align 1, !dbg !5337
  %22 = load i8, i8* %val, align 1, !dbg !5338
  %conv18 = zext i8 %22 to i32, !dbg !5338
  %and19 = and i32 %conv18, 128, !dbg !5340
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5340
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !5341

if.then21:                                        ; preds = %if.end9
  %23 = load i8, i8* %val, align 1, !dbg !5342
  %conv22 = zext i8 %23 to i32, !dbg !5342
  %and23 = and i32 %conv22, 64, !dbg !5344
  switch i32 %and23, label %sw.default [
    i32 0, label %sw.bb
  ], !dbg !5345

sw.bb:                                            ; preds = %if.then21
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5346
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 4, !dbg !5348
  store i32 0, i32* %inversion, align 4, !dbg !5349
  %25 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5350
  %config = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %25, i32 0, i32 1, !dbg !5352
  %26 = load %struct.tda10086_config*, %struct.tda10086_config** %config, align 8, !dbg !5352
  %invert = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %26, i32 0, i32 1, !dbg !5353
  %27 = load i8, i8* %invert, align 1, !dbg !5353
  %tobool24 = icmp ne i8 %27, 0, !dbg !5350
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !5354

if.then25:                                        ; preds = %sw.bb
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5355
  %inversion26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 4, !dbg !5356
  store i32 1, i32* %inversion26, align 4, !dbg !5357
  br label %if.end27, !dbg !5355

if.end27:                                         ; preds = %if.then25, %sw.bb
  br label %sw.epilog, !dbg !5358

sw.default:                                       ; preds = %if.then21
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5359
  %inversion28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 4, !dbg !5360
  store i32 1, i32* %inversion28, align 4, !dbg !5361
  %30 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5362
  %config29 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %30, i32 0, i32 1, !dbg !5364
  %31 = load %struct.tda10086_config*, %struct.tda10086_config** %config29, align 8, !dbg !5364
  %invert30 = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %31, i32 0, i32 1, !dbg !5365
  %32 = load i8, i8* %invert30, align 1, !dbg !5365
  %tobool31 = icmp ne i8 %32, 0, !dbg !5362
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !5366

if.then32:                                        ; preds = %sw.default
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5367
  %inversion33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 4, !dbg !5368
  store i32 0, i32* %inversion33, align 4, !dbg !5369
  br label %if.end34, !dbg !5367

if.end34:                                         ; preds = %if.then32, %sw.default
  br label %sw.epilog, !dbg !5370

sw.epilog:                                        ; preds = %if.end34, %if.end27
  br label %if.end55, !dbg !5371

if.else:                                          ; preds = %if.end9
  %34 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5372
  %call35 = call i32 @tda10086_read_byte(%struct.tda10086_state* %34, i32 15) #9, !dbg !5374
  %35 = load i8, i8* %val, align 1, !dbg !5375
  %conv36 = zext i8 %35 to i32, !dbg !5375
  %and37 = and i32 %conv36, 2, !dbg !5376
  switch i32 %and37, label %sw.default46 [
    i32 0, label %sw.bb38
  ], !dbg !5377

sw.bb38:                                          ; preds = %if.else
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5378
  %inversion39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 4, !dbg !5380
  store i32 0, i32* %inversion39, align 4, !dbg !5381
  %37 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5382
  %config40 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %37, i32 0, i32 1, !dbg !5384
  %38 = load %struct.tda10086_config*, %struct.tda10086_config** %config40, align 8, !dbg !5384
  %invert41 = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %38, i32 0, i32 1, !dbg !5385
  %39 = load i8, i8* %invert41, align 1, !dbg !5385
  %tobool42 = icmp ne i8 %39, 0, !dbg !5382
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !5386

if.then43:                                        ; preds = %sw.bb38
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5387
  %inversion44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 4, !dbg !5388
  store i32 1, i32* %inversion44, align 4, !dbg !5389
  br label %if.end45, !dbg !5387

if.end45:                                         ; preds = %if.then43, %sw.bb38
  br label %sw.epilog54, !dbg !5390

sw.default46:                                     ; preds = %if.else
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5391
  %inversion47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 4, !dbg !5392
  store i32 1, i32* %inversion47, align 4, !dbg !5393
  %42 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5394
  %config48 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %42, i32 0, i32 1, !dbg !5396
  %43 = load %struct.tda10086_config*, %struct.tda10086_config** %config48, align 8, !dbg !5396
  %invert49 = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %43, i32 0, i32 1, !dbg !5397
  %44 = load i8, i8* %invert49, align 1, !dbg !5397
  %tobool50 = icmp ne i8 %44, 0, !dbg !5394
  br i1 %tobool50, label %if.then51, label %if.end53, !dbg !5398

if.then51:                                        ; preds = %sw.default46
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5399
  %inversion52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 4, !dbg !5400
  store i32 0, i32* %inversion52, align 4, !dbg !5401
  br label %if.end53, !dbg !5399

if.end53:                                         ; preds = %if.then51, %sw.default46
  br label %sw.epilog54, !dbg !5402

sw.epilog54:                                      ; preds = %if.end53, %if.end45
  br label %if.end55

if.end55:                                         ; preds = %sw.epilog54, %sw.epilog
  %46 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5403
  %call56 = call i32 @tda10086_read_byte(%struct.tda10086_state* %46, i32 29) #9, !dbg !5404
  store i32 %call56, i32* %tmp, align 4, !dbg !5405
  %47 = load i32, i32* %tmp, align 4, !dbg !5406
  %and57 = and i32 %47, 128, !dbg !5408
  %tobool58 = icmp ne i32 %and57, 0, !dbg !5408
  br i1 %tobool58, label %if.then59, label %if.end61, !dbg !5409

if.then59:                                        ; preds = %if.end55
  %48 = load i32, i32* %tmp, align 4, !dbg !5410
  %or60 = or i32 %48, -256, !dbg !5410
  store i32 %or60, i32* %tmp, align 4, !dbg !5410
  br label %if.end61, !dbg !5411

if.end61:                                         ; preds = %if.then59, %if.end55
  %49 = load i32, i32* %tmp, align 4, !dbg !5412
  %mul62 = mul i32 %49, 480, !dbg !5413
  %mul63 = mul i32 %mul62, 2, !dbg !5414
  %div64 = sdiv i32 %mul63, 128, !dbg !5415
  store i32 %div64, i32* %tmp, align 4, !dbg !5416
  %50 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5417
  %symbol_rate65 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %50, i32 0, i32 4, !dbg !5418
  %51 = load i32, i32* %symbol_rate65, align 4, !dbg !5418
  %div66 = udiv i32 %51, 1000, !dbg !5419
  %52 = load i32, i32* %tmp, align 4, !dbg !5420
  %mul67 = mul i32 %div66, %52, !dbg !5421
  %div68 = udiv i32 %mul67, 1000, !dbg !5422
  store i32 %div68, i32* %tmp, align 4, !dbg !5423
  %53 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5424
  %symbol_rate69 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %53, i32 0, i32 4, !dbg !5425
  %54 = load i32, i32* %symbol_rate69, align 4, !dbg !5425
  %55 = load i32, i32* %tmp, align 4, !dbg !5426
  %add70 = add i32 %54, %55, !dbg !5427
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5428
  %symbol_rate71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 10, !dbg !5429
  store i32 %add70, i32* %symbol_rate71, align 4, !dbg !5430
  %57 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5431
  %call72 = call i32 @tda10086_read_byte(%struct.tda10086_state* %57, i32 13) #9, !dbg !5432
  %and73 = and i32 %call72, 112, !dbg !5433
  %shr = ashr i32 %and73, 4, !dbg !5434
  %conv74 = trunc i32 %shr to i8, !dbg !5435
  store i8 %conv74, i8* %val, align 1, !dbg !5436
  %58 = load i8, i8* %val, align 1, !dbg !5437
  %conv75 = zext i8 %58 to i32, !dbg !5437
  switch i32 %conv75, label %sw.epilog91 [
    i32 0, label %sw.bb76
    i32 1, label %sw.bb77
    i32 2, label %sw.bb79
    i32 3, label %sw.bb81
    i32 4, label %sw.bb83
    i32 5, label %sw.bb85
    i32 6, label %sw.bb87
    i32 7, label %sw.bb89
  ], !dbg !5438

sw.bb76:                                          ; preds = %if.end61
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5439
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 5, !dbg !5441
  store i32 1, i32* %fec_inner, align 4, !dbg !5442
  br label %sw.epilog91, !dbg !5443

sw.bb77:                                          ; preds = %if.end61
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5444
  %fec_inner78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 5, !dbg !5445
  store i32 2, i32* %fec_inner78, align 4, !dbg !5446
  br label %sw.epilog91, !dbg !5447

sw.bb79:                                          ; preds = %if.end61
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5448
  %fec_inner80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 5, !dbg !5449
  store i32 3, i32* %fec_inner80, align 4, !dbg !5450
  br label %sw.epilog91, !dbg !5451

sw.bb81:                                          ; preds = %if.end61
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5452
  %fec_inner82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 5, !dbg !5453
  store i32 4, i32* %fec_inner82, align 4, !dbg !5454
  br label %sw.epilog91, !dbg !5455

sw.bb83:                                          ; preds = %if.end61
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5456
  %fec_inner84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 5, !dbg !5457
  store i32 5, i32* %fec_inner84, align 4, !dbg !5458
  br label %sw.epilog91, !dbg !5459

sw.bb85:                                          ; preds = %if.end61
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5460
  %fec_inner86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 5, !dbg !5461
  store i32 6, i32* %fec_inner86, align 4, !dbg !5462
  br label %sw.epilog91, !dbg !5463

sw.bb87:                                          ; preds = %if.end61
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5464
  %fec_inner88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 5, !dbg !5465
  store i32 7, i32* %fec_inner88, align 4, !dbg !5466
  br label %sw.epilog91, !dbg !5467

sw.bb89:                                          ; preds = %if.end61
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5468
  %fec_inner90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 5, !dbg !5469
  store i32 8, i32* %fec_inner90, align 4, !dbg !5470
  br label %sw.epilog91, !dbg !5471

sw.epilog91:                                      ; preds = %if.end61, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb76
  store i32 0, i32* %retval, align 4, !dbg !5472
  br label %return, !dbg !5472

return:                                           ; preds = %sw.epilog91, %if.then1
  %67 = load i32, i32* %retval, align 4, !dbg !5473
  ret i32 %67, !dbg !5473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_read_status(%struct.dvb_frontend* %fe, i32* %fe_status) #0 !dbg !5474 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_status.addr = alloca i32*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  store i32* %fe_status, i32** %fe_status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %fe_status.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5479, metadata !DIExpression()), !dbg !5480
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5481
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5482
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5482
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5481
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5480
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5483, metadata !DIExpression()), !dbg !5484
  br label %do.body, !dbg !5485

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5486
  %tobool = icmp ne i32 %3, 0, !dbg !5486
  br i1 %tobool, label %if.then, label %if.end, !dbg !5489

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda10086_read_status, i64 0, i64 0)) #8, !dbg !5486
  br label %if.end, !dbg !5486

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5489

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5490
  %call1 = call i32 @tda10086_read_byte(%struct.tda10086_state* %4, i32 14) #9, !dbg !5491
  %conv = trunc i32 %call1 to i8, !dbg !5491
  store i8 %conv, i8* %val, align 1, !dbg !5492
  %5 = load i32*, i32** %fe_status.addr, align 8, !dbg !5493
  store i32 0, i32* %5, align 4, !dbg !5494
  %6 = load i8, i8* %val, align 1, !dbg !5495
  %conv2 = zext i8 %6 to i32, !dbg !5495
  %and = and i32 %conv2, 1, !dbg !5497
  %tobool3 = icmp ne i32 %and, 0, !dbg !5497
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5498

if.then4:                                         ; preds = %do.end
  %7 = load i32*, i32** %fe_status.addr, align 8, !dbg !5499
  %8 = load i32, i32* %7, align 4, !dbg !5500
  %or = or i32 %8, 1, !dbg !5500
  store i32 %or, i32* %7, align 4, !dbg !5500
  br label %if.end5, !dbg !5501

if.end5:                                          ; preds = %if.then4, %do.end
  %9 = load i8, i8* %val, align 1, !dbg !5502
  %conv6 = zext i8 %9 to i32, !dbg !5502
  %and7 = and i32 %conv6, 2, !dbg !5504
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5504
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5505

if.then9:                                         ; preds = %if.end5
  %10 = load i32*, i32** %fe_status.addr, align 8, !dbg !5506
  %11 = load i32, i32* %10, align 4, !dbg !5507
  %or10 = or i32 %11, 2, !dbg !5507
  store i32 %or10, i32* %10, align 4, !dbg !5507
  br label %if.end11, !dbg !5508

if.end11:                                         ; preds = %if.then9, %if.end5
  %12 = load i8, i8* %val, align 1, !dbg !5509
  %conv12 = zext i8 %12 to i32, !dbg !5509
  %and13 = and i32 %conv12, 4, !dbg !5511
  %tobool14 = icmp ne i32 %and13, 0, !dbg !5511
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !5512

if.then15:                                        ; preds = %if.end11
  %13 = load i32*, i32** %fe_status.addr, align 8, !dbg !5513
  %14 = load i32, i32* %13, align 4, !dbg !5514
  %or16 = or i32 %14, 4, !dbg !5514
  store i32 %or16, i32* %13, align 4, !dbg !5514
  br label %if.end17, !dbg !5515

if.end17:                                         ; preds = %if.then15, %if.end11
  %15 = load i8, i8* %val, align 1, !dbg !5516
  %conv18 = zext i8 %15 to i32, !dbg !5516
  %and19 = and i32 %conv18, 8, !dbg !5518
  %tobool20 = icmp ne i32 %and19, 0, !dbg !5518
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !5519

if.then21:                                        ; preds = %if.end17
  %16 = load i32*, i32** %fe_status.addr, align 8, !dbg !5520
  %17 = load i32, i32* %16, align 4, !dbg !5521
  %or22 = or i32 %17, 8, !dbg !5521
  store i32 %or22, i32* %16, align 4, !dbg !5521
  br label %if.end23, !dbg !5522

if.end23:                                         ; preds = %if.then21, %if.end17
  %18 = load i8, i8* %val, align 1, !dbg !5523
  %conv24 = zext i8 %18 to i32, !dbg !5523
  %and25 = and i32 %conv24, 16, !dbg !5525
  %tobool26 = icmp ne i32 %and25, 0, !dbg !5525
  br i1 %tobool26, label %if.then27, label %if.end34, !dbg !5526

if.then27:                                        ; preds = %if.end23
  %19 = load i32*, i32** %fe_status.addr, align 8, !dbg !5527
  %20 = load i32, i32* %19, align 4, !dbg !5529
  %or28 = or i32 %20, 16, !dbg !5529
  store i32 %or28, i32* %19, align 4, !dbg !5529
  %21 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5530
  %has_lock = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %21, i32 0, i32 5, !dbg !5532
  %22 = load i8, i8* %has_lock, align 8, !dbg !5532
  %tobool29 = trunc i8 %22 to i1, !dbg !5532
  br i1 %tobool29, label %if.end33, label %if.then30, !dbg !5533

if.then30:                                        ; preds = %if.then27
  %23 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5534
  %has_lock31 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %23, i32 0, i32 5, !dbg !5536
  store i8 1, i8* %has_lock31, align 8, !dbg !5537
  %24 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5538
  %call32 = call i32 @tda10086_write_byte(%struct.tda10086_state* %24, i32 2, i32 0) #9, !dbg !5539
  br label %if.end33, !dbg !5540

if.end33:                                         ; preds = %if.then30, %if.then27
  br label %if.end34, !dbg !5541

if.end34:                                         ; preds = %if.end33, %if.end23
  ret i32 0, !dbg !5542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5543 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5548, metadata !DIExpression()), !dbg !5549
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5550
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5551
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5551
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5550
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5549
  br label %do.body, !dbg !5552

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5553
  %tobool = icmp ne i32 %3, 0, !dbg !5553
  br i1 %tobool, label %if.then, label %if.end, !dbg !5556

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10086_read_ber, i64 0, i64 0)) #8, !dbg !5553
  br label %if.end, !dbg !5553

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5556

do.end:                                           ; preds = %if.end
  %4 = load i32*, i32** %ber.addr, align 8, !dbg !5557
  store i32 0, i32* %4, align 4, !dbg !5558
  %5 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5559
  %call1 = call i32 @tda10086_read_byte(%struct.tda10086_state* %5, i32 21) #9, !dbg !5560
  %6 = load i32*, i32** %ber.addr, align 8, !dbg !5561
  %7 = load i32, i32* %6, align 4, !dbg !5562
  %or = or i32 %7, %call1, !dbg !5562
  store i32 %or, i32* %6, align 4, !dbg !5562
  %8 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5563
  %call2 = call i32 @tda10086_read_byte(%struct.tda10086_state* %8, i32 22) #9, !dbg !5564
  %shl = shl i32 %call2, 8, !dbg !5565
  %9 = load i32*, i32** %ber.addr, align 8, !dbg !5566
  %10 = load i32, i32* %9, align 4, !dbg !5567
  %or3 = or i32 %10, %shl, !dbg !5567
  store i32 %or3, i32* %9, align 4, !dbg !5567
  %11 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5568
  %call4 = call i32 @tda10086_read_byte(%struct.tda10086_state* %11, i32 23) #9, !dbg !5569
  %and = and i32 %call4, 15, !dbg !5570
  %shl5 = shl i32 %and, 16, !dbg !5571
  %12 = load i32*, i32** %ber.addr, align 8, !dbg !5572
  %13 = load i32, i32* %12, align 4, !dbg !5573
  %or6 = or i32 %13, %shl5, !dbg !5573
  store i32 %or6, i32* %12, align 4, !dbg !5573
  ret i32 0, !dbg !5574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal) #0 !dbg !5575 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal.addr = alloca i16*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  %_str = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  store i16* %signal, i16** %signal.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal.addr, metadata !5578, metadata !DIExpression()), !dbg !5579
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5580, metadata !DIExpression()), !dbg !5581
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5582
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5583
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5583
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5582
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5581
  call void @llvm.dbg.declare(metadata i8* %_str, metadata !5584, metadata !DIExpression()), !dbg !5585
  br label %do.body, !dbg !5586

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5587
  %tobool = icmp ne i32 %3, 0, !dbg !5587
  br i1 %tobool, label %if.then, label %if.end, !dbg !5590

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tda10086_read_signal_strength, i64 0, i64 0)) #8, !dbg !5587
  br label %if.end, !dbg !5587

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5590

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5591
  %call1 = call i32 @tda10086_read_byte(%struct.tda10086_state* %4, i32 67) #9, !dbg !5592
  %sub = sub i32 255, %call1, !dbg !5593
  %conv = trunc i32 %sub to i8, !dbg !5594
  store i8 %conv, i8* %_str, align 1, !dbg !5595
  %5 = load i8, i8* %_str, align 1, !dbg !5596
  %conv2 = zext i8 %5 to i32, !dbg !5596
  %shl = shl i32 %conv2, 8, !dbg !5597
  %6 = load i8, i8* %_str, align 1, !dbg !5598
  %conv3 = zext i8 %6 to i32, !dbg !5598
  %or = or i32 %shl, %conv3, !dbg !5599
  %conv4 = trunc i32 %or to i16, !dbg !5600
  %7 = load i16*, i16** %signal.addr, align 8, !dbg !5601
  store i16 %conv4, i16* %7, align 2, !dbg !5602
  ret i32 0, !dbg !5603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5604 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  %_snr = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5609, metadata !DIExpression()), !dbg !5610
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5611
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5612
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5612
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5611
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5610
  call void @llvm.dbg.declare(metadata i8* %_snr, metadata !5613, metadata !DIExpression()), !dbg !5614
  br label %do.body, !dbg !5615

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5616
  %tobool = icmp ne i32 %3, 0, !dbg !5616
  br i1 %tobool, label %if.then, label %if.end, !dbg !5619

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10086_read_snr, i64 0, i64 0)) #8, !dbg !5616
  br label %if.end, !dbg !5616

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5619

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5620
  %call1 = call i32 @tda10086_read_byte(%struct.tda10086_state* %4, i32 28) #9, !dbg !5621
  %sub = sub i32 255, %call1, !dbg !5622
  %conv = trunc i32 %sub to i8, !dbg !5623
  store i8 %conv, i8* %_snr, align 1, !dbg !5624
  %5 = load i8, i8* %_snr, align 1, !dbg !5625
  %conv2 = zext i8 %5 to i32, !dbg !5625
  %shl = shl i32 %conv2, 8, !dbg !5626
  %6 = load i8, i8* %_snr, align 1, !dbg !5627
  %conv3 = zext i8 %6 to i32, !dbg !5627
  %or = or i32 %shl, %conv3, !dbg !5628
  %conv4 = trunc i32 %or to i16, !dbg !5629
  %7 = load i16*, i16** %snr.addr, align 8, !dbg !5630
  store i16 %conv4, i16* %7, align 2, !dbg !5631
  ret i32 0, !dbg !5632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5633 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5638, metadata !DIExpression()), !dbg !5639
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5640
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5641
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5641
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5640
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5639
  br label %do.body, !dbg !5642

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5643
  %tobool = icmp ne i32 %3, 0, !dbg !5643
  br i1 %tobool, label %if.then, label %if.end, !dbg !5646

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda10086_read_ucblocks, i64 0, i64 0)) #8, !dbg !5643
  br label %if.end, !dbg !5643

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5646

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5647
  %call1 = call i32 @tda10086_read_byte(%struct.tda10086_state* %4, i32 24) #9, !dbg !5648
  %and = and i32 %call1, 127, !dbg !5649
  %5 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5650
  store i32 %and, i32* %5, align 4, !dbg !5651
  %6 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5652
  %call2 = call i32 @tda10086_write_byte(%struct.tda10086_state* %6, i32 24, i32 0) #9, !dbg !5653
  %7 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5654
  %call3 = call i32 @tda10086_write_byte(%struct.tda10086_state* %7, i32 24, i32 128) #9, !dbg !5655
  ret i32 0, !dbg !5656
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_send_master_cmd(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %cmd) #0 !dbg !5657 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %cmd.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %state = alloca %struct.tda10086_state*, align 8
  %i = alloca i32, align 4
  %oldval = alloca i8, align 1
  %t22k_off = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  store %struct.dvb_diseqc_master_cmd* %cmd, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %cmd.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5662, metadata !DIExpression()), !dbg !5663
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5664
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5665
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5665
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5664
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5663
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5666, metadata !DIExpression()), !dbg !5667
  call void @llvm.dbg.declare(metadata i8* %oldval, metadata !5668, metadata !DIExpression()), !dbg !5669
  call void @llvm.dbg.declare(metadata i8* %t22k_off, metadata !5670, metadata !DIExpression()), !dbg !5671
  store i8 -128, i8* %t22k_off, align 1, !dbg !5671
  br label %do.body, !dbg !5672

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5673
  %tobool = icmp ne i32 %3, 0, !dbg !5673
  br i1 %tobool, label %if.then, label %if.end, !dbg !5676

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10086_send_master_cmd, i64 0, i64 0)) #8, !dbg !5673
  br label %if.end, !dbg !5673

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5676

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5677
  %config = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %4, i32 0, i32 1, !dbg !5679
  %5 = load %struct.tda10086_config*, %struct.tda10086_config** %config, align 8, !dbg !5679
  %diseqc_tone = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %5, i32 0, i32 2, !dbg !5680
  %6 = load i8, i8* %diseqc_tone, align 2, !dbg !5680
  %tobool1 = icmp ne i8 %6, 0, !dbg !5677
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5681

if.then2:                                         ; preds = %do.end
  store i8 0, i8* %t22k_off, align 1, !dbg !5682
  br label %if.end3, !dbg !5683

if.end3:                                          ; preds = %if.then2, %do.end
  %7 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5684
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %7, i32 0, i32 1, !dbg !5686
  %8 = load i8, i8* %msg_len, align 1, !dbg !5686
  %conv = zext i8 %8 to i32, !dbg !5684
  %cmp = icmp sgt i32 %conv, 6, !dbg !5687
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5688

if.then5:                                         ; preds = %if.end3
  store i32 -22, i32* %retval, align 4, !dbg !5689
  br label %return, !dbg !5689

if.end6:                                          ; preds = %if.end3
  %9 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5690
  %call7 = call i32 @tda10086_read_byte(%struct.tda10086_state* %9, i32 54) #9, !dbg !5691
  %conv8 = trunc i32 %call7 to i8, !dbg !5691
  store i8 %conv8, i8* %oldval, align 1, !dbg !5692
  store i32 0, i32* %i, align 4, !dbg !5693
  br label %for.cond, !dbg !5695

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load i32, i32* %i, align 4, !dbg !5696
  %11 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5698
  %msg_len9 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %11, i32 0, i32 1, !dbg !5699
  %12 = load i8, i8* %msg_len9, align 1, !dbg !5699
  %conv10 = zext i8 %12 to i32, !dbg !5698
  %cmp11 = icmp slt i32 %10, %conv10, !dbg !5700
  br i1 %cmp11, label %for.body, label %for.end, !dbg !5701

for.body:                                         ; preds = %for.cond
  %13 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5702
  %14 = load i32, i32* %i, align 4, !dbg !5704
  %add = add i32 72, %14, !dbg !5705
  %15 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5706
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %15, i32 0, i32 0, !dbg !5707
  %16 = load i32, i32* %i, align 4, !dbg !5708
  %idxprom = sext i32 %16 to i64, !dbg !5706
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %msg, i64 0, i64 %idxprom, !dbg !5706
  %17 = load i8, i8* %arrayidx, align 1, !dbg !5706
  %conv13 = zext i8 %17 to i32, !dbg !5706
  %call14 = call i32 @tda10086_write_byte(%struct.tda10086_state* %13, i32 %add, i32 %conv13) #9, !dbg !5709
  br label %for.inc, !dbg !5710

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !5711
  %inc = add i32 %18, 1, !dbg !5711
  store i32 %inc, i32* %i, align 4, !dbg !5711
  br label %for.cond, !dbg !5712, !llvm.loop !5713

for.end:                                          ; preds = %for.cond
  %19 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5715
  %20 = load i8, i8* %t22k_off, align 1, !dbg !5716
  %conv15 = zext i8 %20 to i32, !dbg !5716
  %add16 = add i32 8, %conv15, !dbg !5717
  %21 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5718
  %msg_len17 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %21, i32 0, i32 1, !dbg !5719
  %22 = load i8, i8* %msg_len17, align 1, !dbg !5719
  %conv18 = zext i8 %22 to i32, !dbg !5718
  %sub = sub i32 %conv18, 1, !dbg !5720
  %shl = shl i32 %sub, 4, !dbg !5721
  %or = or i32 %add16, %shl, !dbg !5722
  %call19 = call i32 @tda10086_write_byte(%struct.tda10086_state* %19, i32 54, i32 %or) #9, !dbg !5723
  %23 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5724
  call void @tda10086_diseqc_wait(%struct.tda10086_state* %23) #9, !dbg !5725
  %24 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5726
  %25 = load i8, i8* %oldval, align 1, !dbg !5727
  %conv20 = zext i8 %25 to i32, !dbg !5727
  %call21 = call i32 @tda10086_write_byte(%struct.tda10086_state* %24, i32 54, i32 %conv20) #9, !dbg !5728
  store i32 0, i32* %retval, align 4, !dbg !5729
  br label %return, !dbg !5729

return:                                           ; preds = %for.end, %if.then5
  %26 = load i32, i32* %retval, align 4, !dbg !5730
  ret i32 %26, !dbg !5730
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_send_burst(%struct.dvb_frontend* %fe, i32 %minicmd) #0 !dbg !5731 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %minicmd.addr = alloca i32, align 4
  %state = alloca %struct.tda10086_state*, align 8
  %oldval = alloca i8, align 1
  %t22k_off = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5732, metadata !DIExpression()), !dbg !5733
  store i32 %minicmd, i32* %minicmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %minicmd.addr, metadata !5734, metadata !DIExpression()), !dbg !5735
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5736, metadata !DIExpression()), !dbg !5737
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5738
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5739
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5739
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5738
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5737
  call void @llvm.dbg.declare(metadata i8* %oldval, metadata !5740, metadata !DIExpression()), !dbg !5741
  %3 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5742
  %call = call i32 @tda10086_read_byte(%struct.tda10086_state* %3, i32 54) #9, !dbg !5743
  %conv = trunc i32 %call to i8, !dbg !5743
  store i8 %conv, i8* %oldval, align 1, !dbg !5741
  call void @llvm.dbg.declare(metadata i8* %t22k_off, metadata !5744, metadata !DIExpression()), !dbg !5745
  store i8 -128, i8* %t22k_off, align 1, !dbg !5745
  br label %do.body, !dbg !5746

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5747
  %tobool = icmp ne i32 %4, 0, !dbg !5747
  br i1 %tobool, label %if.then, label %if.end, !dbg !5750

if.then:                                          ; preds = %do.body
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tda10086_send_burst, i64 0, i64 0)) #8, !dbg !5747
  br label %if.end, !dbg !5747

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5750

do.end:                                           ; preds = %if.end
  %5 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5751
  %config = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %5, i32 0, i32 1, !dbg !5753
  %6 = load %struct.tda10086_config*, %struct.tda10086_config** %config, align 8, !dbg !5753
  %diseqc_tone = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %6, i32 0, i32 2, !dbg !5754
  %7 = load i8, i8* %diseqc_tone, align 2, !dbg !5754
  %tobool2 = icmp ne i8 %7, 0, !dbg !5751
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5755

if.then3:                                         ; preds = %do.end
  store i8 0, i8* %t22k_off, align 1, !dbg !5756
  br label %if.end4, !dbg !5757

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, i32* %minicmd.addr, align 4, !dbg !5758
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ], !dbg !5759

sw.bb:                                            ; preds = %if.end4
  %9 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5760
  %10 = load i8, i8* %t22k_off, align 1, !dbg !5762
  %conv5 = zext i8 %10 to i32, !dbg !5762
  %add = add i32 4, %conv5, !dbg !5763
  %call6 = call i32 @tda10086_write_byte(%struct.tda10086_state* %9, i32 54, i32 %add) #9, !dbg !5764
  br label %sw.epilog, !dbg !5765

sw.bb7:                                           ; preds = %if.end4
  %11 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5766
  %12 = load i8, i8* %t22k_off, align 1, !dbg !5767
  %conv8 = zext i8 %12 to i32, !dbg !5767
  %add9 = add i32 6, %conv8, !dbg !5768
  %call10 = call i32 @tda10086_write_byte(%struct.tda10086_state* %11, i32 54, i32 %add9) #9, !dbg !5769
  br label %sw.epilog, !dbg !5770

sw.epilog:                                        ; preds = %if.end4, %sw.bb7, %sw.bb
  %13 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5771
  call void @tda10086_diseqc_wait(%struct.tda10086_state* %13) #9, !dbg !5772
  %14 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5773
  %15 = load i8, i8* %oldval, align 1, !dbg !5774
  %conv11 = zext i8 %15 to i32, !dbg !5774
  %call12 = call i32 @tda10086_write_byte(%struct.tda10086_state* %14, i32 54, i32 %conv11) #9, !dbg !5775
  ret i32 0, !dbg !5776
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_set_tone(%struct.dvb_frontend* %fe, i32 %tone) #0 !dbg !5777 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tone.addr = alloca i32, align 4
  %state = alloca %struct.tda10086_state*, align 8
  %t22k_off = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5778, metadata !DIExpression()), !dbg !5779
  store i32 %tone, i32* %tone.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tone.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5782, metadata !DIExpression()), !dbg !5783
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5784
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5785
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5785
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5784
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5783
  call void @llvm.dbg.declare(metadata i8* %t22k_off, metadata !5786, metadata !DIExpression()), !dbg !5787
  store i8 -128, i8* %t22k_off, align 1, !dbg !5787
  br label %do.body, !dbg !5788

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5789
  %tobool = icmp ne i32 %3, 0, !dbg !5789
  br i1 %tobool, label %if.then, label %if.end, !dbg !5792

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10086_set_tone, i64 0, i64 0)) #8, !dbg !5789
  br label %if.end, !dbg !5789

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5792

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5793
  %config = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %4, i32 0, i32 1, !dbg !5795
  %5 = load %struct.tda10086_config*, %struct.tda10086_config** %config, align 8, !dbg !5795
  %diseqc_tone = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %5, i32 0, i32 2, !dbg !5796
  %6 = load i8, i8* %diseqc_tone, align 2, !dbg !5796
  %tobool1 = icmp ne i8 %6, 0, !dbg !5793
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5797

if.then2:                                         ; preds = %do.end
  store i8 0, i8* %t22k_off, align 1, !dbg !5798
  br label %if.end3, !dbg !5799

if.end3:                                          ; preds = %if.then2, %do.end
  %7 = load i32, i32* %tone.addr, align 4, !dbg !5800
  switch i32 %7, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb5
  ], !dbg !5801

sw.bb:                                            ; preds = %if.end3
  %8 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5802
  %9 = load i8, i8* %t22k_off, align 1, !dbg !5804
  %conv = zext i8 %9 to i32, !dbg !5804
  %call4 = call i32 @tda10086_write_byte(%struct.tda10086_state* %8, i32 54, i32 %conv) #9, !dbg !5805
  br label %sw.epilog, !dbg !5806

sw.bb5:                                           ; preds = %if.end3
  %10 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5807
  %11 = load i8, i8* %t22k_off, align 1, !dbg !5808
  %conv6 = zext i8 %11 to i32, !dbg !5808
  %add = add i32 1, %conv6, !dbg !5809
  %call7 = call i32 @tda10086_write_byte(%struct.tda10086_state* %10, i32 54, i32 %add) #9, !dbg !5810
  br label %sw.epilog, !dbg !5811

sw.epilog:                                        ; preds = %if.end3, %sw.bb5, %sw.bb
  ret i32 0, !dbg !5812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5813 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.tda10086_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5814, metadata !DIExpression()), !dbg !5815
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state, metadata !5818, metadata !DIExpression()), !dbg !5819
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5820
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5821
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5821
  %2 = bitcast i8* %1 to %struct.tda10086_state*, !dbg !5820
  store %struct.tda10086_state* %2, %struct.tda10086_state** %state, align 8, !dbg !5819
  br label %do.body, !dbg !5822

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5823
  %tobool = icmp ne i32 %3, 0, !dbg !5823
  br i1 %tobool, label %if.then, label %if.end, !dbg !5826

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda10086_i2c_gate_ctrl, i64 0, i64 0)) #8, !dbg !5823
  br label %if.end, !dbg !5823

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5826

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %enable.addr, align 4, !dbg !5827
  %tobool1 = icmp ne i32 %4, 0, !dbg !5827
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5829

if.then2:                                         ; preds = %do.end
  %5 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5830
  %call3 = call i32 @tda10086_write_mask(%struct.tda10086_state* %5, i32 0, i32 16, i32 16) #9, !dbg !5832
  br label %if.end5, !dbg !5833

if.else:                                          ; preds = %do.end
  %6 = load %struct.tda10086_state*, %struct.tda10086_state** %state, align 8, !dbg !5834
  %call4 = call i32 @tda10086_write_mask(%struct.tda10086_state* %6, i32 0, i32 16, i32 0) #9, !dbg !5836
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  ret i32 0, !dbg !5837
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_write_byte(%struct.tda10086_state* %state, i32 %reg, i32 %data) #0 !dbg !5838 {
entry:
  %state.addr = alloca %struct.tda10086_state*, align 8
  %reg.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %b0 = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.tda10086_state* %state, %struct.tda10086_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state.addr, metadata !5841, metadata !DIExpression()), !dbg !5842
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5847, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata [2 x i8]* %b0, metadata !5849, metadata !DIExpression()), !dbg !5851
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %b0, i64 0, i64 0, !dbg !5852
  %0 = load i32, i32* %reg.addr, align 4, !dbg !5853
  %conv = trunc i32 %0 to i8, !dbg !5853
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !5852
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5852
  %1 = load i32, i32* %data.addr, align 4, !dbg !5854
  %conv1 = trunc i32 %1 to i8, !dbg !5854
  store i8 %conv1, i8* %arrayinit.element, align 1, !dbg !5852
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5855, metadata !DIExpression()), !dbg !5856
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5857
  store i16 0, i16* %addr, align 8, !dbg !5857
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5857
  store i16 0, i16* %flags, align 2, !dbg !5857
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5857
  store i16 2, i16* %len, align 4, !dbg !5857
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5857
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %b0, i64 0, i64 0, !dbg !5858
  store i8* %arraydecay, i8** %buf, align 8, !dbg !5857
  %2 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !5859
  %config = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %2, i32 0, i32 1, !dbg !5860
  %3 = load %struct.tda10086_config*, %struct.tda10086_config** %config, align 8, !dbg !5860
  %demod_address = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %3, i32 0, i32 0, !dbg !5861
  %4 = load i8, i8* %demod_address, align 4, !dbg !5861
  %conv2 = zext i8 %4 to i16, !dbg !5859
  %addr3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5862
  store i16 %conv2, i16* %addr3, align 8, !dbg !5863
  %5 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !5864
  %i2c = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %5, i32 0, i32 0, !dbg !5865
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5865
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5866
  store i32 %call, i32* %ret, align 4, !dbg !5867
  %7 = load i32, i32* %ret, align 4, !dbg !5868
  %cmp = icmp ne i32 %7, 1, !dbg !5870
  br i1 %cmp, label %if.then, label %if.end7, !dbg !5871

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5872

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* @debug, align 4, !dbg !5873
  %tobool = icmp ne i32 %8, 0, !dbg !5873
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5876

if.then5:                                         ; preds = %do.body
  %9 = load i32, i32* %reg.addr, align 4, !dbg !5873
  %10 = load i32, i32* %data.addr, align 4, !dbg !5873
  %11 = load i32, i32* %ret, align 4, !dbg !5873
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tda10086_write_byte, i64 0, i64 0), i32 %9, i32 %10, i32 %11) #8, !dbg !5873
  br label %if.end, !dbg !5873

if.end:                                           ; preds = %if.then5, %do.body
  br label %do.end, !dbg !5876

do.end:                                           ; preds = %if.end
  br label %if.end7, !dbg !5876

if.end7:                                          ; preds = %do.end, %entry
  %12 = load i32, i32* %ret, align 4, !dbg !5877
  %cmp8 = icmp ne i32 %12, 1, !dbg !5878
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !5879

cond.true:                                        ; preds = %if.end7
  %13 = load i32, i32* %ret, align 4, !dbg !5880
  br label %cond.end, !dbg !5879

cond.false:                                       ; preds = %if.end7
  br label %cond.end, !dbg !5879

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 0, %cond.false ], !dbg !5879
  ret i32 %cond, !dbg !5881
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_write_mask(%struct.tda10086_state* %state, i32 %reg, i32 %mask, i32 %data) #0 !dbg !5882 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda10086_state*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.tda10086_state* %state, %struct.tda10086_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5887, metadata !DIExpression()), !dbg !5888
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5893, metadata !DIExpression()), !dbg !5894
  %0 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !5895
  %1 = load i32, i32* %reg.addr, align 4, !dbg !5896
  %call = call i32 @tda10086_read_byte(%struct.tda10086_state* %0, i32 %1) #9, !dbg !5897
  store i32 %call, i32* %val, align 4, !dbg !5898
  %2 = load i32, i32* %val, align 4, !dbg !5899
  %cmp = icmp slt i32 %2, 0, !dbg !5901
  br i1 %cmp, label %if.then, label %if.end, !dbg !5902

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val, align 4, !dbg !5903
  store i32 %3, i32* %retval, align 4, !dbg !5904
  br label %return, !dbg !5904

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %val, align 4, !dbg !5905
  %5 = load i32, i32* %mask.addr, align 4, !dbg !5906
  %neg = xor i32 %5, -1, !dbg !5907
  %and = and i32 %4, %neg, !dbg !5908
  store i32 %and, i32* %val, align 4, !dbg !5909
  %6 = load i32, i32* %data.addr, align 4, !dbg !5910
  %and1 = and i32 %6, 255, !dbg !5911
  %7 = load i32, i32* %val, align 4, !dbg !5912
  %or = or i32 %7, %and1, !dbg !5912
  store i32 %or, i32* %val, align 4, !dbg !5912
  %8 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !5913
  %9 = load i32, i32* %reg.addr, align 4, !dbg !5914
  %10 = load i32, i32* %val, align 4, !dbg !5915
  %call2 = call i32 @tda10086_write_byte(%struct.tda10086_state* %8, i32 %9, i32 %10) #9, !dbg !5916
  store i32 %call2, i32* %retval, align 4, !dbg !5917
  br label %return, !dbg !5917

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5918
  ret i32 %11, !dbg !5918
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_set_inversion(%struct.tda10086_state* %state, %struct.dtv_frontend_properties* %fe_params) #0 !dbg !5919 {
entry:
  %state.addr = alloca %struct.tda10086_state*, align 8
  %fe_params.addr = alloca %struct.dtv_frontend_properties*, align 8
  %invval = alloca i8, align 1
  store %struct.tda10086_state* %state, %struct.tda10086_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  store %struct.dtv_frontend_properties* %fe_params, %struct.dtv_frontend_properties** %fe_params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %fe_params.addr, metadata !5924, metadata !DIExpression()), !dbg !5925
  call void @llvm.dbg.declare(metadata i8* %invval, metadata !5926, metadata !DIExpression()), !dbg !5927
  store i8 -128, i8* %invval, align 1, !dbg !5927
  br label %do.body, !dbg !5928

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5929
  %tobool = icmp ne i32 %0, 0, !dbg !5929
  br i1 %tobool, label %if.then, label %if.end, !dbg !5932

if.then:                                          ; preds = %do.body
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5929
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 4, !dbg !5929
  %2 = load i32, i32* %inversion, align 4, !dbg !5929
  %3 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !5929
  %config = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %3, i32 0, i32 1, !dbg !5929
  %4 = load %struct.tda10086_config*, %struct.tda10086_config** %config, align 8, !dbg !5929
  %invert = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %4, i32 0, i32 1, !dbg !5929
  %5 = load i8, i8* %invert, align 1, !dbg !5929
  %conv = zext i8 %5 to i32, !dbg !5929
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda10086_set_inversion, i64 0, i64 0), i32 %2, i32 %conv) #8, !dbg !5929
  br label %if.end, !dbg !5929

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5932

do.end:                                           ; preds = %if.end
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5933
  %inversion1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 4, !dbg !5934
  %7 = load i32, i32* %inversion1, align 4, !dbg !5934
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb13
  ], !dbg !5935

sw.bb:                                            ; preds = %do.end
  %8 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !5936
  %config2 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %8, i32 0, i32 1, !dbg !5939
  %9 = load %struct.tda10086_config*, %struct.tda10086_config** %config2, align 8, !dbg !5939
  %invert3 = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %9, i32 0, i32 1, !dbg !5940
  %10 = load i8, i8* %invert3, align 1, !dbg !5940
  %tobool4 = icmp ne i8 %10, 0, !dbg !5936
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5941

if.then5:                                         ; preds = %sw.bb
  store i8 64, i8* %invval, align 1, !dbg !5942
  br label %if.end6, !dbg !5943

if.end6:                                          ; preds = %if.then5, %sw.bb
  br label %sw.epilog, !dbg !5944

sw.bb7:                                           ; preds = %do.end
  %11 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !5945
  %config8 = getelementptr inbounds %struct.tda10086_state, %struct.tda10086_state* %11, i32 0, i32 1, !dbg !5947
  %12 = load %struct.tda10086_config*, %struct.tda10086_config** %config8, align 8, !dbg !5947
  %invert9 = getelementptr inbounds %struct.tda10086_config, %struct.tda10086_config* %12, i32 0, i32 1, !dbg !5948
  %13 = load i8, i8* %invert9, align 1, !dbg !5948
  %tobool10 = icmp ne i8 %13, 0, !dbg !5945
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5949

if.then11:                                        ; preds = %sw.bb7
  store i8 64, i8* %invval, align 1, !dbg !5950
  br label %if.end12, !dbg !5951

if.end12:                                         ; preds = %if.then11, %sw.bb7
  br label %sw.epilog, !dbg !5952

sw.bb13:                                          ; preds = %do.end
  store i8 0, i8* %invval, align 1, !dbg !5953
  br label %sw.epilog, !dbg !5954

sw.epilog:                                        ; preds = %do.end, %sw.bb13, %if.end12, %if.end6
  %14 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !5955
  %15 = load i8, i8* %invval, align 1, !dbg !5956
  %conv14 = zext i8 %15 to i32, !dbg !5956
  %call15 = call i32 @tda10086_write_mask(%struct.tda10086_state* %14, i32 12, i32 192, i32 %conv14) #9, !dbg !5957
  ret i32 0, !dbg !5958
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_set_symbol_rate(%struct.tda10086_state* %state, %struct.dtv_frontend_properties* %fe_params) #0 !dbg !5959 {
entry:
  %state.addr = alloca %struct.tda10086_state*, align 8
  %fe_params.addr = alloca %struct.dtv_frontend_properties*, align 8
  %dfn = alloca i8, align 1
  %afs = alloca i8, align 1
  %byp = alloca i8, align 1
  %reg37 = alloca i8, align 1
  %reg42 = alloca i8, align 1
  %big = alloca i64, align 8
  %tmp = alloca i32, align 4
  %bdr = alloca i32, align 4
  %bdri = alloca i32, align 4
  %symbol_rate = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  store %struct.tda10086_state* %state, %struct.tda10086_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state.addr, metadata !5960, metadata !DIExpression()), !dbg !5961
  store %struct.dtv_frontend_properties* %fe_params, %struct.dtv_frontend_properties** %fe_params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %fe_params.addr, metadata !5962, metadata !DIExpression()), !dbg !5963
  call void @llvm.dbg.declare(metadata i8* %dfn, metadata !5964, metadata !DIExpression()), !dbg !5965
  store i8 0, i8* %dfn, align 1, !dbg !5965
  call void @llvm.dbg.declare(metadata i8* %afs, metadata !5966, metadata !DIExpression()), !dbg !5967
  store i8 0, i8* %afs, align 1, !dbg !5967
  call void @llvm.dbg.declare(metadata i8* %byp, metadata !5968, metadata !DIExpression()), !dbg !5969
  store i8 0, i8* %byp, align 1, !dbg !5969
  call void @llvm.dbg.declare(metadata i8* %reg37, metadata !5970, metadata !DIExpression()), !dbg !5971
  store i8 67, i8* %reg37, align 1, !dbg !5971
  call void @llvm.dbg.declare(metadata i8* %reg42, metadata !5972, metadata !DIExpression()), !dbg !5973
  store i8 67, i8* %reg42, align 1, !dbg !5973
  call void @llvm.dbg.declare(metadata i64* %big, metadata !5974, metadata !DIExpression()), !dbg !5975
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5976, metadata !DIExpression()), !dbg !5977
  call void @llvm.dbg.declare(metadata i32* %bdr, metadata !5978, metadata !DIExpression()), !dbg !5979
  call void @llvm.dbg.declare(metadata i32* %bdri, metadata !5980, metadata !DIExpression()), !dbg !5981
  call void @llvm.dbg.declare(metadata i32* %symbol_rate, metadata !5982, metadata !DIExpression()), !dbg !5983
  %0 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5984
  %symbol_rate1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %0, i32 0, i32 10, !dbg !5985
  %1 = load i32, i32* %symbol_rate1, align 4, !dbg !5985
  store i32 %1, i32* %symbol_rate, align 4, !dbg !5983
  br label %do.body, !dbg !5986

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @debug, align 4, !dbg !5987
  %tobool = icmp ne i32 %2, 0, !dbg !5987
  br i1 %tobool, label %if.then, label %if.end, !dbg !5990

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %symbol_rate, align 4, !dbg !5987
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10086_set_symbol_rate, i64 0, i64 0), i32 %3) #8, !dbg !5987
  br label %if.end, !dbg !5987

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5990

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %symbol_rate, align 4, !dbg !5991
  %cmp = icmp ult i32 %4, 1315200, !dbg !5993
  br i1 %cmp, label %if.then2, label %if.else, !dbg !5994

if.then2:                                         ; preds = %do.end
  store i8 4, i8* %dfn, align 1, !dbg !5995
  store i8 1, i8* %afs, align 1, !dbg !5997
  br label %if.end39, !dbg !5998

if.else:                                          ; preds = %do.end
  %5 = load i32, i32* %symbol_rate, align 4, !dbg !5999
  %cmp3 = icmp ult i32 %5, 1996800, !dbg !6001
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6002

if.then4:                                         ; preds = %if.else
  store i8 4, i8* %dfn, align 1, !dbg !6003
  store i8 0, i8* %afs, align 1, !dbg !6005
  br label %if.end38, !dbg !6006

if.else5:                                         ; preds = %if.else
  %6 = load i32, i32* %symbol_rate, align 4, !dbg !6007
  %cmp6 = icmp ult i32 %6, 2592000, !dbg !6009
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !6010

if.then7:                                         ; preds = %if.else5
  store i8 3, i8* %dfn, align 1, !dbg !6011
  store i8 1, i8* %afs, align 1, !dbg !6013
  br label %if.end37, !dbg !6014

if.else8:                                         ; preds = %if.else5
  %7 = load i32, i32* %symbol_rate, align 4, !dbg !6015
  %cmp9 = icmp ult i32 %7, 3993600, !dbg !6017
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !6018

if.then10:                                        ; preds = %if.else8
  store i8 3, i8* %dfn, align 1, !dbg !6019
  store i8 0, i8* %afs, align 1, !dbg !6021
  br label %if.end36, !dbg !6022

if.else11:                                        ; preds = %if.else8
  %8 = load i32, i32* %symbol_rate, align 4, !dbg !6023
  %cmp12 = icmp ult i32 %8, 5280000, !dbg !6025
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !6026

if.then13:                                        ; preds = %if.else11
  store i8 2, i8* %dfn, align 1, !dbg !6027
  store i8 1, i8* %afs, align 1, !dbg !6029
  br label %if.end35, !dbg !6030

if.else14:                                        ; preds = %if.else11
  %9 = load i32, i32* %symbol_rate, align 4, !dbg !6031
  %cmp15 = icmp ult i32 %9, 7996800, !dbg !6033
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !6034

if.then16:                                        ; preds = %if.else14
  store i8 2, i8* %dfn, align 1, !dbg !6035
  store i8 0, i8* %afs, align 1, !dbg !6037
  br label %if.end34, !dbg !6038

if.else17:                                        ; preds = %if.else14
  %10 = load i32, i32* %symbol_rate, align 4, !dbg !6039
  %cmp18 = icmp ult i32 %10, 10560000, !dbg !6041
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !6042

if.then19:                                        ; preds = %if.else17
  store i8 1, i8* %dfn, align 1, !dbg !6043
  store i8 1, i8* %afs, align 1, !dbg !6045
  br label %if.end33, !dbg !6046

if.else20:                                        ; preds = %if.else17
  %11 = load i32, i32* %symbol_rate, align 4, !dbg !6047
  %cmp21 = icmp ult i32 %11, 15993600, !dbg !6049
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !6050

if.then22:                                        ; preds = %if.else20
  store i8 1, i8* %dfn, align 1, !dbg !6051
  store i8 0, i8* %afs, align 1, !dbg !6053
  br label %if.end32, !dbg !6054

if.else23:                                        ; preds = %if.else20
  %12 = load i32, i32* %symbol_rate, align 4, !dbg !6055
  %cmp24 = icmp ult i32 %12, 21120000, !dbg !6057
  br i1 %cmp24, label %if.then25, label %if.else26, !dbg !6058

if.then25:                                        ; preds = %if.else23
  store i8 0, i8* %dfn, align 1, !dbg !6059
  store i8 1, i8* %afs, align 1, !dbg !6061
  br label %if.end31, !dbg !6062

if.else26:                                        ; preds = %if.else23
  %13 = load i32, i32* %symbol_rate, align 4, !dbg !6063
  %cmp27 = icmp ult i32 %13, 31996800, !dbg !6065
  br i1 %cmp27, label %if.then28, label %if.else29, !dbg !6066

if.then28:                                        ; preds = %if.else26
  store i8 0, i8* %dfn, align 1, !dbg !6067
  store i8 0, i8* %afs, align 1, !dbg !6069
  br label %if.end30, !dbg !6070

if.else29:                                        ; preds = %if.else26
  store i8 99, i8* %reg37, align 1, !dbg !6071
  store i8 79, i8* %reg42, align 1, !dbg !6073
  store i8 1, i8* %byp, align 1, !dbg !6074
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then25
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then22
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then19
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then16
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then13
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then10
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then7
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then4
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then2
  %14 = load i32, i32* %symbol_rate, align 4, !dbg !6075
  %conv = zext i32 %14 to i64, !dbg !6076
  %div = udiv i64 %conv, 1000, !dbg !6077
  %mul = mul i64 2097152, %div, !dbg !6078
  %15 = load i8, i8* %dfn, align 1, !dbg !6079
  %conv40 = zext i8 %15 to i32, !dbg !6079
  %sh_prom = zext i32 %conv40 to i64, !dbg !6080
  %shl = shl i64 1, %sh_prom, !dbg !6080
  %mul41 = mul i64 %mul, %shl, !dbg !6081
  store i64 %mul41, i64* %big, align 8, !dbg !6082
  %16 = load i64, i64* %big, align 8, !dbg !6083
  %add = add i64 %16, 95999, !dbg !6083
  store i64 %add, i64* %big, align 8, !dbg !6083
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !6084, metadata !DIExpression()), !dbg !6086
  store i32 96000, i32* %__base, align 4, !dbg !6086
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !6087, metadata !DIExpression()), !dbg !6086
  %17 = load i64, i64* %big, align 8, !dbg !6086
  %18 = load i32, i32* %__base, align 4, !dbg !6086
  %conv42 = zext i32 %18 to i64, !dbg !6086
  %rem = urem i64 %17, %conv42, !dbg !6086
  %conv43 = trunc i64 %rem to i32, !dbg !6086
  store i32 %conv43, i32* %__rem, align 4, !dbg !6086
  %19 = load i64, i64* %big, align 8, !dbg !6086
  %20 = load i32, i32* %__base, align 4, !dbg !6086
  %conv44 = zext i32 %20 to i64, !dbg !6086
  %div45 = udiv i64 %19, %conv44, !dbg !6086
  store i64 %div45, i64* %big, align 8, !dbg !6086
  %21 = load i32, i32* %__rem, align 4, !dbg !6086
  store i32 %21, i32* %tmp46, align 4, !dbg !6086
  %22 = load i32, i32* %tmp46, align 4, !dbg !6086
  %23 = load i64, i64* %big, align 8, !dbg !6088
  %and = and i64 %23, 1048575, !dbg !6089
  %conv47 = trunc i64 %and to i32, !dbg !6088
  store i32 %conv47, i32* %bdr, align 4, !dbg !6090
  %24 = load i8, i8* %dfn, align 1, !dbg !6091
  %conv48 = zext i8 %24 to i32, !dbg !6091
  %shl49 = shl i32 1, %conv48, !dbg !6092
  %25 = load i32, i32* %symbol_rate, align 4, !dbg !6093
  %div50 = udiv i32 %25, 1000, !dbg !6094
  %mul51 = mul i32 %shl49, %div50, !dbg !6095
  store i32 %mul51, i32* %tmp, align 4, !dbg !6096
  %26 = load i32, i32* %tmp, align 4, !dbg !6097
  %sub = sub i32 %26, 1, !dbg !6098
  %add52 = add i32 3072000, %sub, !dbg !6099
  %27 = load i32, i32* %tmp, align 4, !dbg !6100
  %div53 = udiv i32 %add52, %27, !dbg !6101
  store i32 %div53, i32* %bdri, align 4, !dbg !6102
  %28 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6103
  %29 = load i8, i8* %afs, align 1, !dbg !6104
  %conv54 = zext i8 %29 to i32, !dbg !6104
  %shl55 = shl i32 %conv54, 7, !dbg !6105
  %30 = load i8, i8* %dfn, align 1, !dbg !6106
  %conv56 = zext i8 %30 to i32, !dbg !6106
  %or = or i32 %shl55, %conv56, !dbg !6107
  %call57 = call i32 @tda10086_write_byte(%struct.tda10086_state* %28, i32 33, i32 %or) #9, !dbg !6108
  %31 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6109
  %32 = load i8, i8* %byp, align 1, !dbg !6110
  %conv58 = zext i8 %32 to i32, !dbg !6110
  %shl59 = shl i32 %conv58, 3, !dbg !6111
  %call60 = call i32 @tda10086_write_mask(%struct.tda10086_state* %31, i32 32, i32 8, i32 %shl59) #9, !dbg !6112
  %33 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6113
  %34 = load i32, i32* %bdr, align 4, !dbg !6114
  %call61 = call i32 @tda10086_write_byte(%struct.tda10086_state* %33, i32 6, i32 %34) #9, !dbg !6115
  %35 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6116
  %36 = load i32, i32* %bdr, align 4, !dbg !6117
  %shr = lshr i32 %36, 8, !dbg !6118
  %call62 = call i32 @tda10086_write_byte(%struct.tda10086_state* %35, i32 7, i32 %shr) #9, !dbg !6119
  %37 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6120
  %38 = load i32, i32* %bdr, align 4, !dbg !6121
  %shr63 = lshr i32 %38, 16, !dbg !6122
  %call64 = call i32 @tda10086_write_byte(%struct.tda10086_state* %37, i32 8, i32 %shr63) #9, !dbg !6123
  %39 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6124
  %40 = load i32, i32* %bdri, align 4, !dbg !6125
  %call65 = call i32 @tda10086_write_byte(%struct.tda10086_state* %39, i32 9, i32 %40) #9, !dbg !6126
  %41 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6127
  %42 = load i8, i8* %reg37, align 1, !dbg !6128
  %conv66 = zext i8 %42 to i32, !dbg !6128
  %call67 = call i32 @tda10086_write_byte(%struct.tda10086_state* %41, i32 55, i32 %conv66) #9, !dbg !6129
  %43 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6130
  %44 = load i8, i8* %reg42, align 1, !dbg !6131
  %conv68 = zext i8 %44 to i32, !dbg !6131
  %call69 = call i32 @tda10086_write_byte(%struct.tda10086_state* %43, i32 66, i32 %conv68) #9, !dbg !6132
  ret i32 0, !dbg !6133
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10086_set_fec(%struct.tda10086_state* %state, %struct.dtv_frontend_properties* %fe_params) #0 !dbg !6134 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda10086_state*, align 8
  %fe_params.addr = alloca %struct.dtv_frontend_properties*, align 8
  %fecval = alloca i8, align 1
  store %struct.tda10086_state* %state, %struct.tda10086_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state.addr, metadata !6135, metadata !DIExpression()), !dbg !6136
  store %struct.dtv_frontend_properties* %fe_params, %struct.dtv_frontend_properties** %fe_params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %fe_params.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  call void @llvm.dbg.declare(metadata i8* %fecval, metadata !6139, metadata !DIExpression()), !dbg !6140
  br label %do.body, !dbg !6141

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6142
  %tobool = icmp ne i32 %0, 0, !dbg !6142
  br i1 %tobool, label %if.then, label %if.end, !dbg !6145

if.then:                                          ; preds = %do.body
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !6142
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 5, !dbg !6142
  %2 = load i32, i32* %fec_inner, align 4, !dbg !6142
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tda10086_set_fec, i64 0, i64 0), i32 %2) #8, !dbg !6142
  br label %if.end, !dbg !6142

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6145

do.end:                                           ; preds = %if.end
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !6146
  %fec_inner1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 5, !dbg !6147
  %4 = load i32, i32* %fec_inner1, align 4, !dbg !6147
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
  ], !dbg !6148

sw.bb:                                            ; preds = %do.end
  store i8 0, i8* %fecval, align 1, !dbg !6149
  br label %sw.epilog, !dbg !6151

sw.bb2:                                           ; preds = %do.end
  store i8 1, i8* %fecval, align 1, !dbg !6152
  br label %sw.epilog, !dbg !6153

sw.bb3:                                           ; preds = %do.end
  store i8 2, i8* %fecval, align 1, !dbg !6154
  br label %sw.epilog, !dbg !6155

sw.bb4:                                           ; preds = %do.end
  store i8 3, i8* %fecval, align 1, !dbg !6156
  br label %sw.epilog, !dbg !6157

sw.bb5:                                           ; preds = %do.end
  store i8 4, i8* %fecval, align 1, !dbg !6158
  br label %sw.epilog, !dbg !6159

sw.bb6:                                           ; preds = %do.end
  store i8 5, i8* %fecval, align 1, !dbg !6160
  br label %sw.epilog, !dbg !6161

sw.bb7:                                           ; preds = %do.end
  store i8 6, i8* %fecval, align 1, !dbg !6162
  br label %sw.epilog, !dbg !6163

sw.bb8:                                           ; preds = %do.end
  store i8 7, i8* %fecval, align 1, !dbg !6164
  br label %sw.epilog, !dbg !6165

sw.bb9:                                           ; preds = %do.end
  store i8 8, i8* %fecval, align 1, !dbg !6166
  br label %sw.epilog, !dbg !6167

sw.default:                                       ; preds = %do.end
  store i32 -1, i32* %retval, align 4, !dbg !6168
  br label %return, !dbg !6168

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %5 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6169
  %6 = load i8, i8* %fecval, align 1, !dbg !6170
  %conv = zext i8 %6 to i32, !dbg !6170
  %call10 = call i32 @tda10086_write_byte(%struct.tda10086_state* %5, i32 13, i32 %conv) #9, !dbg !6171
  store i32 0, i32* %retval, align 4, !dbg !6172
  br label %return, !dbg !6172

return:                                           ; preds = %sw.epilog, %sw.default
  %7 = load i32, i32* %retval, align 4, !dbg !6173
  ret i32 %7, !dbg !6173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda10086_diseqc_wait(%struct.tda10086_state* %state) #0 !dbg !6174 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !6177, metadata !DIExpression()), !dbg !6182
  %state.addr = alloca %struct.tda10086_state*, align 8
  %timeout = alloca i64, align 8
  store %struct.tda10086_state* %state, %struct.tda10086_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10086_state** %state.addr, metadata !6184, metadata !DIExpression()), !dbg !6185
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !6186, metadata !DIExpression()), !dbg !6187
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !6188
  store i32 200, i32* %m.addr.i, align 4
  %1 = load i32, i32* %m.addr.i, align 4, !dbg !6189
  %2 = call i1 @llvm.is.constant.i32(i32 %1) #10, !dbg !6191
  br i1 %2, label %if.then.i, label %if.else.i, !dbg !6192

if.then.i:                                        ; preds = %entry
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !6193
  %cmp.i = icmp slt i32 %3, 0, !dbg !6196
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6197

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6198
  br label %msecs_to_jiffies.exit, !dbg !6198

if.end.i:                                         ; preds = %if.then.i
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !6199
  %call.i = call i64 @_msecs_to_jiffies(i32 %4) #12, !dbg !6200
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6201
  br label %msecs_to_jiffies.exit, !dbg !6201

if.else.i:                                        ; preds = %entry
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !6202
  %call2.i = call i64 @__msecs_to_jiffies(i32 %5) #12, !dbg !6204
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6205
  br label %msecs_to_jiffies.exit, !dbg !6205

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %6 = load i64, i64* %retval.i, align 8, !dbg !6206
  %add = add i64 %0, %6, !dbg !6207
  store i64 %add, i64* %timeout, align 8, !dbg !6187
  br label %while.cond, !dbg !6208

while.cond:                                       ; preds = %if.end, %msecs_to_jiffies.exit
  %7 = load %struct.tda10086_state*, %struct.tda10086_state** %state.addr, align 8, !dbg !6209
  %call1 = call i32 @tda10086_read_byte(%struct.tda10086_state* %7, i32 80) #9, !dbg !6210
  %and = and i32 %call1, 1, !dbg !6211
  %tobool = icmp ne i32 %and, 0, !dbg !6212
  %lnot = xor i1 %tobool, true, !dbg !6212
  br i1 %lnot, label %while.body, label %while.end, !dbg !6208

while.body:                                       ; preds = %while.cond
  %8 = load i64, i64* %timeout, align 8, !dbg !6213
  %9 = load volatile i64, i64* @jiffies, align 8, !dbg !6213
  %sub = sub i64 %8, %9, !dbg !6213
  %cmp = icmp slt i64 %sub, 0, !dbg !6213
  br i1 %cmp, label %if.then, label %if.end, !dbg !6216

if.then:                                          ; preds = %while.body
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda10086_diseqc_wait, i64 0, i64 0)) #8, !dbg !6217
  br label %while.end, !dbg !6219

if.end:                                           ; preds = %while.body
  call void @msleep(i32 10) #9, !dbg !6220
  br label %while.cond, !dbg !6208, !llvm.loop !6221

while.end:                                        ; preds = %if.then, %while.cond
  ret void, !dbg !6223
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !6224 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6225, metadata !DIExpression()), !dbg !6226
  %0 = load i32, i32* %m.addr, align 4, !dbg !6227
  %conv = zext i32 %0 to i64, !dbg !6227
  %add = add i64 %conv, 4, !dbg !6228
  %sub = sub i64 %add, 1, !dbg !6229
  %div = sdiv i64 %sub, 4, !dbg !6230
  ret i64 %div, !dbg !6231
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
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
!llvm.module.flags = !{!4312, !4313, !4314, !4315}
!llvm.ident = !{!4316}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 33, type: !310, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !300, globals: !312, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/tda10086.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !288, !295}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda10086_xtal", file: !284, line: 16, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/dvb-frontends/tda10086.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287}
!286 = !DIEnumerator(name: "TDA10086_XTAL_16M", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "TDA10086_XTAL_4M", value: 1, isUnsigned: true)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !289, line: 305, baseType: !7, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!290 = !{!291, !292, !293, !294}
!291 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!292 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!293 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!294 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !296, line: 10, baseType: !7, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !299}
!298 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!299 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!300 = !{!301, !303, !304, !309, !310, !311}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !302, line: 148, baseType: !7)
!302 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !305, line: 23, baseType: !306)
!305 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !307, line: 31, baseType: !308)
!307 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!308 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !302, line: 107, baseType: !304)
!310 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!311 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!312 = !{!313, !382, !387, !392, !397, !402, !407, !0, !412, !4307}
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 760, type: !315, isLocal: true, isDefinition: true, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !317, line: 69, size: 320, elements: !318)
!317 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!318 = !{!319, !323, !327, !347, !352, !356, !360}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !317, line: 70, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !316, file: !317, line: 71, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !326, line: 76, flags: DIFlagFwdDecl)
!326 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !316, file: !317, line: 72, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !317, line: 47, size: 256, elements: !331)
!331 = !{!332, !333, !338, !343}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !317, line: 49, baseType: !7, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !330, file: !317, line: 51, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!310, !320, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !330, file: !317, line: 53, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!310, !342, !337}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !330, file: !317, line: 55, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !303}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !316, file: !317, line: 73, baseType: !348, size: 16, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !305, line: 19, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !307, line: 24, baseType: !351)
!351 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !316, file: !317, line: 74, baseType: !353, size: 8, offset: 208)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !305, line: 16, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !307, line: 20, baseType: !355)
!355 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !317, line: 75, baseType: !357, size: 8, offset: 216)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !305, line: 17, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !307, line: 21, baseType: !359)
!359 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !317, line: 76, baseType: !361, size: 64, offset: 256)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !317, line: 76, size: 64, elements: !362)
!362 = !{!363, !364, !371}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !361, file: !317, line: 77, baseType: !303, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !361, file: !317, line: 78, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !317, line: 86, size: 128, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !367, file: !317, line: 87, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !367, file: !317, line: 88, baseType: !342, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !361, file: !317, line: 79, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !317, line: 92, size: 256, elements: !375)
!375 = !{!376, !377, !378, !380, !381}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !374, file: !317, line: 94, baseType: !7, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !374, file: !317, line: 95, baseType: !7, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !374, file: !317, line: 96, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !374, file: !317, line: 97, baseType: !328, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !374, file: !317, line: 98, baseType: !303, size: 64, offset: 192)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 760, type: !384, isLocal: true, isDefinition: true, align: 8)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 224, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 28)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 761, type: !389, isLocal: true, isDefinition: true, align: 8)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 528, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 66)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 763, type: !394, isLocal: true, isDefinition: true, align: 8)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 448, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 56)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 764, type: !399, isLocal: true, isDefinition: true, align: 8)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 272, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 34)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 765, type: !404, isLocal: true, isDefinition: true, align: 8)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 408, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 51)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 765, type: !409, isLocal: true, isDefinition: true, align: 8)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 168, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 21)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "tda10086_ops", scope: !2, file: !3, line: 696, type: !414, isLocal: true, isDefinition: true)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !416)
!416 = !{!417, !434, !438, !4130, !4131, !4132, !4136, !4137, !4143, !4148, !4152, !4153, !4163, !4168, !4172, !4176, !4181, !4182, !4183, !4184, !4194, !4205, !4209, !4213, !4217, !4221, !4225, !4229, !4230, !4231, !4235, !4289}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !415, file: !51, line: 436, baseType: !418, size: 1280)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !419)
!419 = !{!420, !424, !427, !428, !429, !430, !431, !432, !433}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !418, file: !51, line: 339, baseType: !421, size: 1024)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 1024, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !418, file: !51, line: 340, baseType: !425, size: 32, offset: 1024)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !305, line: 21, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !307, line: 27, baseType: !7)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !418, file: !51, line: 341, baseType: !425, size: 32, offset: 1056)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !418, file: !51, line: 342, baseType: !425, size: 32, offset: 1088)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !418, file: !51, line: 343, baseType: !425, size: 32, offset: 1120)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !418, file: !51, line: 344, baseType: !425, size: 32, offset: 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !418, file: !51, line: 345, baseType: !425, size: 32, offset: 1184)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !418, file: !51, line: 346, baseType: !425, size: 32, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !418, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !415, file: !51, line: 438, baseType: !435, size: 64, offset: 1280)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 64, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 8)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !415, file: !51, line: 440, baseType: !439, size: 64, offset: 1344)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !444)
!444 = !{!445, !459, !460, !4046, !4047, !4048, !4049, !4050, !4051, !4124, !4128, !4129}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !443, file: !51, line: 687, baseType: !446, size: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !447, line: 19, size: 32, elements: !448)
!447 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !446, file: !447, line: 20, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !451, line: 113, baseType: !452)
!451 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !451, line: 111, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !452, file: !451, line: 112, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !302, line: 168, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 166, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !456, file: !302, line: 167, baseType: !310, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !443, file: !51, line: 688, baseType: !415, size: 6016, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !443, file: !51, line: 689, baseType: !461, size: 64, offset: 6080)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !463)
!463 = !{!464, !465, !471, !472, !473, !477, !478, !4024, !4025, !4026, !4045}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !462, file: !272, line: 102, baseType: !310, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !462, file: !272, line: 103, baseType: !466, size: 128, offset: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !302, line: 178, size: 128, elements: !467)
!467 = !{!468, !470}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !302, line: 179, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !466, file: !302, line: 179, baseType: !469, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !462, file: !272, line: 104, baseType: !466, size: 128, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !462, file: !272, line: 105, baseType: !320, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !462, file: !272, line: 106, baseType: !474, size: 48, offset: 384)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 48, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 6)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !462, file: !272, line: 107, baseType: !303, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !462, file: !272, line: 109, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !481)
!481 = !{!482, !3481, !3482, !3485, !3486, !3537, !3625, !3626, !3627, !3628, !3629, !3638, !3743, !3756, !3951, !3952, !3956, !3958, !3959, !3960, !3964, !3970, !3971, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !4012, !4013, !4014, !4017, !4020, !4021, !4022, !4023}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !480, file: !237, line: 462, baseType: !483, size: 512)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !484, line: 64, size: 512, elements: !485)
!484 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!485 = !{!486, !487, !488, !490, !549, !3336, !3475, !3476, !3477, !3478, !3479, !3480}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !484, line: 65, baseType: !320, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !483, file: !484, line: 66, baseType: !466, size: 128, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !483, file: !484, line: 67, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !483, file: !484, line: 68, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !484, line: 192, size: 704, elements: !493)
!493 = !{!494, !495, !511, !512}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !492, file: !484, line: 193, baseType: !466, size: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !492, file: !484, line: 194, baseType: !496, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !497, line: 83, baseType: !498)
!497 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !497, line: 71, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !497, line: 72, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !497, line: 72, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !501, file: !497, line: 73, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !497, line: 20, elements: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !504, file: !497, line: 21, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !508, line: 25, baseType: !509)
!508 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 25, elements: !510)
!510 = !{}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !492, file: !484, line: 195, baseType: !483, size: 512, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !492, file: !484, line: 196, baseType: !513, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !484, line: 156, size: 192, elements: !516)
!516 = !{!517, !522, !527}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !515, file: !484, line: 157, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!310, !491, !489}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !484, line: 158, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!320, !491, !489}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !515, file: !484, line: 159, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!310, !491, !489, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !484, line: 148, size: 20736, elements: !534)
!534 = !{!535, !539, !543, !544, !548}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !533, file: !484, line: 149, baseType: !536, size: 192)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 192, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 3)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !533, file: !484, line: 150, baseType: !540, size: 4096, offset: 192)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 4096, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !533, file: !484, line: 151, baseType: !310, size: 32, offset: 4288)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !533, file: !484, line: 152, baseType: !545, size: 16384, offset: 4320)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 16384, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 2048)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !533, file: !484, line: 153, baseType: !310, size: 32, offset: 20704)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !483, file: !484, line: 69, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !484, line: 138, size: 448, elements: !552)
!552 = !{!553, !557, !585, !587, !3298, !3326, !3330}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !551, file: !484, line: 139, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !489}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !551, file: !484, line: 140, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !561, line: 230, size: 128, elements: !562)
!561 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!562 = !{!563, !577}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !560, file: !561, line: 231, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!567, !489, !571, !342}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !302, line: 60, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !569, line: 73, baseType: !570)
!569 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !569, line: 15, baseType: !311)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !561, line: 30, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !561, line: 31, baseType: !320, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !572, file: !561, line: 32, baseType: !576, size: 16, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !302, line: 19, baseType: !351)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !560, file: !561, line: 232, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!567, !489, !571, !320, !581}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !302, line: 55, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !569, line: 72, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !569, line: 16, baseType: !584)
!584 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !551, file: !484, line: 141, baseType: !586, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !551, file: !484, line: 142, baseType: !588, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !561, line: 84, size: 320, elements: !592)
!592 = !{!593, !594, !598, !3295, !3296}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !591, file: !561, line: 85, baseType: !320, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !591, file: !561, line: 86, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!576, !489, !571, !310}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !591, file: !561, line: 88, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!576, !489, !602, !310}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !561, line: 168, size: 448, elements: !604)
!604 = !{!605, !606, !607, !608, !3290, !3291}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !603, file: !561, line: 169, baseType: !572, size: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !603, file: !561, line: 170, baseType: !581, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !603, file: !561, line: 171, baseType: !303, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !603, file: !561, line: 172, baseType: !609, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!567, !612, !489, !602, !342, !780, !581}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !614)
!614 = !{!615, !633, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3273, !3274, !3283, !3284, !3285, !3286, !3287, !3288, !3289}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !613, file: !208, line: 920, baseType: !616, size: 128)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !208, line: 917, size: 128, elements: !617)
!617 = !{!618, !624}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !616, file: !208, line: 918, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !620, line: 58, size: 64, elements: !621)
!620 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !620, line: 59, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !616, file: !208, line: 919, baseType: !625, size: 128, align: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !302, line: 216, size: 128, align: 64, elements: !626)
!626 = !{!627, !629}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !625, file: !302, line: 217, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !625, file: !302, line: 218, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !628}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !613, file: !208, line: 921, baseType: !634, size: 128, offset: 128)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !635, line: 8, size: 128, elements: !636)
!635 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!636 = !{!637, !641}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !634, file: !635, line: 9, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !640, line: 18, flags: DIFlagFwdDecl)
!640 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !634, file: !635, line: 10, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !640, line: 89, size: 1536, elements: !644)
!644 = !{!645, !646, !656, !664, !665, !680, !3224, !3226, !3238, !3239, !3240, !3241, !3242, !3247, !3248, !3249}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !643, file: !640, line: 91, baseType: !7, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !643, file: !640, line: 92, baseType: !647, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !648, line: 277, baseType: !649)
!648 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !648, line: 277, size: 32, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !649, file: !648, line: 277, baseType: !652, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !648, line: 70, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !648, line: 65, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !653, file: !648, line: 66, baseType: !7, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !643, file: !640, line: 93, baseType: !657, size: 128, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !658, line: 38, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!659 = !{!660, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !658, line: 39, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !657, file: !658, line: 39, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !643, file: !640, line: 94, baseType: !642, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !643, file: !640, line: 95, baseType: !666, size: 128, offset: 256)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !640, line: 47, size: 128, elements: !667)
!667 = !{!668, !677}
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !640, line: 48, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !640, line: 48, size: 64, elements: !670)
!670 = !{!671, !676}
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !640, line: 49, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !669, file: !640, line: 49, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !672, file: !640, line: 50, baseType: !425, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !672, file: !640, line: 50, baseType: !425, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !669, file: !640, line: 52, baseType: !304, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !666, file: !640, line: 54, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !643, file: !640, line: 96, baseType: !681, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !683)
!683 = !{!684, !685, !686, !694, !701, !702, !847, !2918, !2919, !2920, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !3192, !3200, !3201, !3202, !3220, !3221, !3222, !3223}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !682, file: !208, line: 611, baseType: !576, size: 16)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !682, file: !208, line: 612, baseType: !351, size: 16, offset: 16)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !682, file: !208, line: 613, baseType: !687, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !688, line: 23, baseType: !689)
!688 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 21, size: 32, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !689, file: !688, line: 22, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !302, line: 32, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !569, line: 49, baseType: !7)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !682, file: !208, line: 614, baseType: !695, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !688, line: 28, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 26, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !696, file: !688, line: 27, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !302, line: 33, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !569, line: 50, baseType: !7)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !682, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !682, file: !208, line: 622, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !706)
!706 = !{!707, !711, !721, !725, !731, !735, !741, !745, !749, !753, !757, !758, !764, !768, !794, !823, !827, !833, !838, !842, !843}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !705, file: !208, line: 1865, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!642, !681, !642, !7}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !705, file: !208, line: 1866, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!320, !642, !681, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !717, line: 10, size: 128, elements: !718)
!717 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !716, file: !717, line: 11, baseType: !344, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !716, file: !717, line: 12, baseType: !303, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !705, file: !208, line: 1867, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!310, !681, !310}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !705, file: !208, line: 1868, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!729, !681, !310}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !705, file: !208, line: 1870, baseType: !732, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!310, !642, !342, !310}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !705, file: !208, line: 1872, baseType: !736, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!310, !681, !642, !576, !739}
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !302, line: 30, baseType: !740)
!740 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !705, file: !208, line: 1873, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!310, !642, !681, !642}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !705, file: !208, line: 1874, baseType: !746, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!310, !681, !642}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !705, file: !208, line: 1875, baseType: !750, size: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!310, !681, !642, !320}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !705, file: !208, line: 1876, baseType: !754, size: 64, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!310, !681, !642, !576}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !705, file: !208, line: 1877, baseType: !746, size: 64, offset: 640)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !705, file: !208, line: 1878, baseType: !759, size: 64, offset: 704)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!310, !681, !642, !576, !762}
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !302, line: 16, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !302, line: 13, baseType: !425)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !705, file: !208, line: 1879, baseType: !765, size: 64, offset: 768)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!310, !681, !642, !681, !642, !7}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !705, file: !208, line: 1881, baseType: !769, size: 64, offset: 832)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!310, !642, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !783, !791, !792, !793}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !773, file: !208, line: 220, baseType: !7, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !773, file: !208, line: 221, baseType: !576, size: 16, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !773, file: !208, line: 222, baseType: !687, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !773, file: !208, line: 223, baseType: !695, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !773, file: !208, line: 224, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !302, line: 46, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !569, line: 88, baseType: !782)
!782 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !773, file: !208, line: 225, baseType: !784, size: 128, offset: 192)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !785, line: 13, size: 128, elements: !786)
!785 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!786 = !{!787, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !784, file: !785, line: 14, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !785, line: 8, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !307, line: 30, baseType: !782)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !784, file: !785, line: 15, baseType: !311, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !773, file: !208, line: 226, baseType: !784, size: 128, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !773, file: !208, line: 227, baseType: !784, size: 128, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !773, file: !208, line: 234, baseType: !612, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !705, file: !208, line: 1882, baseType: !795, size: 64, offset: 896)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!310, !798, !800, !425, !7}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !802, line: 22, size: 1152, elements: !803)
!802 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!803 = !{!804, !805, !806, !807, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !801, file: !802, line: 23, baseType: !425, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !801, file: !802, line: 24, baseType: !576, size: 16, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !801, file: !802, line: 25, baseType: !7, size: 32, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !801, file: !802, line: 26, baseType: !808, size: 32, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !302, line: 104, baseType: !425)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !801, file: !802, line: 27, baseType: !304, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !801, file: !802, line: 28, baseType: !304, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !801, file: !802, line: 37, baseType: !304, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !801, file: !802, line: 38, baseType: !762, size: 32, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !801, file: !802, line: 39, baseType: !762, size: 32, offset: 352)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !801, file: !802, line: 40, baseType: !687, size: 32, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !801, file: !802, line: 41, baseType: !695, size: 32, offset: 416)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !801, file: !802, line: 42, baseType: !780, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !801, file: !802, line: 43, baseType: !784, size: 128, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !801, file: !802, line: 44, baseType: !784, size: 128, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !801, file: !802, line: 45, baseType: !784, size: 128, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !801, file: !802, line: 46, baseType: !784, size: 128, offset: 896)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !801, file: !802, line: 47, baseType: !304, size: 64, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !801, file: !802, line: 48, baseType: !304, size: 64, offset: 1088)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !705, file: !208, line: 1883, baseType: !824, size: 64, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!567, !642, !342, !581}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !705, file: !208, line: 1884, baseType: !828, size: 64, offset: 1024)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!310, !681, !831, !304, !304}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !705, file: !208, line: 1886, baseType: !834, size: 64, offset: 1088)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!310, !681, !837, !310}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !705, file: !208, line: 1887, baseType: !839, size: 64, offset: 1152)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!310, !681, !642, !612, !7, !576}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !705, file: !208, line: 1890, baseType: !754, size: 64, offset: 1216)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !705, file: !208, line: 1891, baseType: !844, size: 64, offset: 1280)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!310, !681, !729, !310}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !682, file: !208, line: 623, baseType: !848, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !903, !2526, !2608, !2691, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2707, !2711, !2712, !2715, !2716, !2719, !2720, !2721, !2762, !2788, !2789, !2790, !2791, !2792, !2793, !2796, !2798, !2805, !2806, !2808, !2809, !2810, !2869, !2870, !2885, !2886, !2887, !2888, !2889, !2892, !2893, !2894, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !849, file: !208, line: 1417, baseType: !466, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !849, file: !208, line: 1418, baseType: !762, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !849, file: !208, line: 1419, baseType: !359, size: 8, offset: 160)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !849, file: !208, line: 1420, baseType: !584, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !849, file: !208, line: 1421, baseType: !780, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !849, file: !208, line: 1422, baseType: !857, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !859)
!859 = !{!860, !861, !862, !869, !873, !877, !881, !882, !883, !893, !896, !897, !898, !900, !901, !902}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !208, line: 2229, baseType: !320, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !858, file: !208, line: 2230, baseType: !310, size: 32, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !858, file: !208, line: 2238, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!310, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !868, line: 28, flags: DIFlagFwdDecl)
!868 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !858, file: !208, line: 2239, baseType: !870, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !858, file: !208, line: 2240, baseType: !874, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!642, !857, !310, !320, !303}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !858, file: !208, line: 2242, baseType: !878, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !848}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !858, file: !208, line: 2243, baseType: !324, size: 64, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !858, file: !208, line: 2244, baseType: !857, size: 64, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !858, file: !208, line: 2245, baseType: !884, size: 64, offset: 512)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !302, line: 182, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !884, file: !302, line: 183, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !302, line: 186, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !302, line: 187, baseType: !887, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !888, file: !302, line: 187, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !858, file: !208, line: 2247, baseType: !894, offset: 576)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !895, line: 187, elements: !510)
!895 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!896 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !858, file: !208, line: 2248, baseType: !894, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !858, file: !208, line: 2249, baseType: !894, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !858, file: !208, line: 2250, baseType: !899, offset: 576)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, elements: !537)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !858, file: !208, line: 2252, baseType: !894, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !858, file: !208, line: 2253, baseType: !894, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !858, file: !208, line: 2254, baseType: !894, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !849, file: !208, line: 1423, baseType: !904, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !907)
!907 = !{!908, !912, !916, !917, !921, !927, !931, !932, !933, !937, !941, !942, !943, !944, !950, !955, !956, !963, !964, !965, !966, !2510, !2525}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !906, file: !208, line: 1936, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!681, !848}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !906, file: !208, line: 1937, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !681}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !906, file: !208, line: 1938, baseType: !913, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !906, file: !208, line: 1940, baseType: !918, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !681, !310}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !906, file: !208, line: 1941, baseType: !922, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!310, !681, !925}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !906, file: !208, line: 1942, baseType: !928, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!310, !681}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !906, file: !208, line: 1943, baseType: !913, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !906, file: !208, line: 1944, baseType: !878, size: 64, offset: 448)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !906, file: !208, line: 1945, baseType: !934, size: 64, offset: 512)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!310, !848, !310}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !906, file: !208, line: 1946, baseType: !938, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!310, !848}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !906, file: !208, line: 1947, baseType: !938, size: 64, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !906, file: !208, line: 1948, baseType: !938, size: 64, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !906, file: !208, line: 1949, baseType: !938, size: 64, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !906, file: !208, line: 1950, baseType: !945, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!310, !642, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !906, file: !208, line: 1951, baseType: !951, size: 64, offset: 896)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!310, !848, !954, !342}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !906, file: !208, line: 1952, baseType: !878, size: 64, offset: 960)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !906, file: !208, line: 1954, baseType: !957, size: 64, offset: 1024)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!310, !960, !642}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !962, line: 539, flags: DIFlagFwdDecl)
!962 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!963 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !906, file: !208, line: 1955, baseType: !957, size: 64, offset: 1088)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !906, file: !208, line: 1956, baseType: !957, size: 64, offset: 1152)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !906, file: !208, line: 1957, baseType: !957, size: 64, offset: 1216)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !906, file: !208, line: 1963, baseType: !967, size: 64, offset: 1280)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!310, !848, !970, !301}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !972, line: 68, size: 512, align: 128, elements: !973)
!972 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!973 = !{!974, !975, !2502, !2509}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !971, file: !972, line: 69, baseType: !584, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !972, line: 77, baseType: !976, size: 320, offset: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !971, file: !972, line: 77, size: 320, elements: !977)
!977 = !{!978, !1159, !1164, !1192, !1200, !1206, !2494, !2501}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !972, line: 78, baseType: !979, size: 320)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !972, line: 78, size: 320, elements: !980)
!980 = !{!981, !982, !1157, !1158}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !979, file: !972, line: 84, baseType: !466, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !979, file: !972, line: 86, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !985)
!985 = !{!986, !987, !994, !995, !996, !1011, !1027, !1028, !1029, !1030, !1150, !1151, !1154, !1155, !1156}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !984, file: !208, line: 452, baseType: !681, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !984, file: !208, line: 453, baseType: !988, size: 128, offset: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !989, line: 292, size: 128, elements: !990)
!989 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !988, file: !989, line: 293, baseType: !496)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !988, file: !989, line: 295, baseType: !301, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !988, file: !989, line: 296, baseType: !303, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !984, file: !208, line: 454, baseType: !301, size: 32, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !984, file: !208, line: 455, baseType: !455, size: 32, offset: 224)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !984, file: !208, line: 460, baseType: !997, size: 128, offset: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !998, line: 125, size: 128, elements: !999)
!998 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!999 = !{!1000, !1010}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !997, file: !998, line: 126, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !998, line: 31, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1001, file: !998, line: 32, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !998, line: 24, size: 192, align: 64, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1005, file: !998, line: 25, baseType: !584, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1005, file: !998, line: 26, baseType: !1004, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1005, file: !998, line: 27, baseType: !1004, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !997, file: !998, line: 127, baseType: !1004, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !984, file: !208, line: 461, baseType: !1012, size: 256, offset: 384)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1013, line: 35, size: 256, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !{!1015, !1023, !1024, !1026}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1012, file: !1013, line: 36, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1017, line: 13, baseType: !1018)
!1017 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !302, line: 175, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 173, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1019, file: !302, line: 174, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !305, line: 22, baseType: !789)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1012, file: !1013, line: 42, baseType: !1016, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1012, file: !1013, line: 46, baseType: !1025, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !497, line: 29, baseType: !504)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1012, file: !1013, line: 47, baseType: !466, size: 128, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !984, file: !208, line: 462, baseType: !584, size: 64, offset: 640)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !984, file: !208, line: 463, baseType: !584, size: 64, offset: 704)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !984, file: !208, line: 464, baseType: !584, size: 64, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !984, file: !208, line: 465, baseType: !1031, size: 64, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1034)
!1034 = !{!1035, !1039, !1043, !1047, !1051, !1055, !1061, !1067, !1071, !1076, !1080, !1084, !1088, !1114, !1118, !1124, !1125, !1126, !1130, !1135, !1139, !1146}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1033, file: !208, line: 368, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!310, !970, !925}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1033, file: !208, line: 369, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!310, !612, !970}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1033, file: !208, line: 372, baseType: !1044, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!310, !983, !925}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1033, file: !208, line: 375, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!310, !970}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1033, file: !208, line: 381, baseType: !1052, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!310, !612, !983, !469, !7}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1033, file: !208, line: 383, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1033, file: !208, line: 385, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!310, !612, !983, !780, !7, !7, !1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1033, file: !208, line: 388, baseType: !1068, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!310, !612, !983, !780, !7, !7, !970, !303}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1033, file: !208, line: 393, baseType: !1072, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!1075, !983, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !302, line: 125, baseType: !304)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1033, file: !208, line: 394, baseType: !1077, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !970, !7, !7}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1033, file: !208, line: 395, baseType: !1081, size: 64, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!310, !970, !301}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1033, file: !208, line: 396, baseType: !1085, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !970}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1033, file: !208, line: 397, baseType: !1089, size: 64, offset: 768)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!567, !1092, !1112}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1101, !1102, !1103, !1104, !1105}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1093, file: !208, line: 321, baseType: !612, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1093, file: !208, line: 326, baseType: !780, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1093, file: !208, line: 327, baseType: !1098, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !1092, !311, !311}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1093, file: !208, line: 328, baseType: !303, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1093, file: !208, line: 329, baseType: !310, size: 32, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1093, file: !208, line: 330, baseType: !349, size: 16, offset: 288)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1093, file: !208, line: 331, baseType: !349, size: 16, offset: 304)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !208, line: 332, baseType: !1106, size: 64, offset: 320)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1093, file: !208, line: 332, size: 64, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1106, file: !208, line: 333, baseType: !7, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1106, file: !208, line: 334, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1033, file: !208, line: 402, baseType: !1115, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!310, !983, !970, !970, !183}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1033, file: !208, line: 404, baseType: !1119, size: 64, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!739, !970, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1123, line: 305, baseType: !7)
!1123 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1033, file: !208, line: 405, baseType: !1085, size: 64, offset: 960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1033, file: !208, line: 406, baseType: !1048, size: 64, offset: 1024)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1033, file: !208, line: 407, baseType: !1127, size: 64, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!310, !970, !584, !584}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1033, file: !208, line: 409, baseType: !1131, size: 64, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !970, !1134, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1033, file: !208, line: 410, baseType: !1136, size: 64, offset: 1216)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!310, !983, !970}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1033, file: !208, line: 413, baseType: !1140, size: 64, offset: 1280)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!310, !1143, !612, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1033, file: !208, line: 415, baseType: !1147, size: 64, offset: 1344)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !612}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !208, line: 466, baseType: !584, size: 64, offset: 896)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !984, file: !208, line: 467, baseType: !1152, size: 32, offset: 960)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1153, line: 8, baseType: !425)
!1153 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !984, file: !208, line: 468, baseType: !496, offset: 992)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !984, file: !208, line: 469, baseType: !466, size: 128, offset: 1024)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !984, file: !208, line: 470, baseType: !303, size: 64, offset: 1152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !979, file: !972, line: 87, baseType: !584, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !979, file: !972, line: 94, baseType: !584, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !972, line: 96, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !972, line: 96, size: 64, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1160, file: !972, line: 101, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !302, line: 143, baseType: !304)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !972, line: 103, baseType: !1165, size: 320)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !972, line: 103, size: 320, elements: !1166)
!1166 = !{!1167, !1177, !1180, !1181}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !972, line: 104, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !972, line: 104, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1168, file: !972, line: 105, baseType: !466, size: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !972, line: 106, baseType: !1172, size: 128)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1168, file: !972, line: 106, size: 128, elements: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1172, file: !972, line: 107, baseType: !970, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1172, file: !972, line: 109, baseType: !310, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1172, file: !972, line: 110, baseType: !310, size: 32, offset: 96)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1165, file: !972, line: 117, baseType: !1178, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !972, line: 117, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1165, file: !972, line: 119, baseType: !303, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !972, line: 120, baseType: !1182, size: 64, offset: 256)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !972, line: 120, size: 64, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1182, file: !972, line: 121, baseType: !303, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1182, file: !972, line: 122, baseType: !584, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !972, line: 123, baseType: !1187, size: 32)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !972, line: 123, size: 32, elements: !1188)
!1188 = !{!1189, !1190, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1187, file: !972, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1187, file: !972, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1187, file: !972, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !972, line: 130, baseType: !1193, size: 192)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !972, line: 130, size: 192, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1193, file: !972, line: 131, baseType: !584, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1193, file: !972, line: 134, baseType: !359, size: 8, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1193, file: !972, line: 135, baseType: !359, size: 8, offset: 72)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1193, file: !972, line: 136, baseType: !455, size: 32, offset: 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1193, file: !972, line: 137, baseType: !7, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !972, line: 139, baseType: !1201, size: 256)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !972, line: 139, size: 256, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1201, file: !972, line: 140, baseType: !584, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1201, file: !972, line: 141, baseType: !455, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1201, file: !972, line: 143, baseType: !466, size: 128, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !972, line: 145, baseType: !1207, size: 256)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !972, line: 145, size: 256, elements: !1208)
!1208 = !{!1209, !1210, !1212, !1213, !2493}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1207, file: !972, line: 146, baseType: !584, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1207, file: !972, line: 147, baseType: !1211, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !962, line: 509, baseType: !970)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1207, file: !972, line: 148, baseType: !584, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !972, line: 149, baseType: !1214, size: 64, offset: 192)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !972, line: 149, size: 64, elements: !1215)
!1215 = !{!1216, !2492}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1214, file: !972, line: 150, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !972, line: 388, size: 7296, elements: !1219)
!1219 = !{!1220, !2488}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !972, line: 389, baseType: !1221, size: 7296)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !972, line: 389, size: 7296, elements: !1222)
!1222 = !{!1223, !1261, !1262, !1263, !1267, !1268, !1269, !1270, !1271, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1312, !1320, !1323, !1369, !1370, !2472, !2473, !2476, !2477, !2478, !2481, !2482, !2483, !2486, !2487}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1221, file: !972, line: 390, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !972, line: 305, size: 1472, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1241, !1242, !1247, !1248, !1251, !1255, !1256, !1257, !1258, !1259}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1225, file: !972, line: 308, baseType: !584, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1225, file: !972, line: 309, baseType: !584, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1225, file: !972, line: 313, baseType: !1224, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1225, file: !972, line: 313, baseType: !1224, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1225, file: !972, line: 315, baseType: !1005, size: 192, align: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1225, file: !972, line: 323, baseType: !584, size: 64, offset: 448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1225, file: !972, line: 327, baseType: !1217, size: 64, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1225, file: !972, line: 333, baseType: !1235, size: 64, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !962, line: 284, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !962, line: 284, size: 64, elements: !1237)
!1237 = !{!1238}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1236, file: !962, line: 284, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1240, line: 19, baseType: !584)
!1240 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1225, file: !972, line: 334, baseType: !584, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1225, file: !972, line: 343, baseType: !1243, size: 256, offset: 704)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1225, file: !972, line: 340, size: 256, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1243, file: !972, line: 341, baseType: !1005, size: 192, align: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1243, file: !972, line: 342, baseType: !584, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1225, file: !972, line: 351, baseType: !466, size: 128, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1225, file: !972, line: 353, baseType: !1249, size: 64, offset: 1088)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !972, line: 353, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1225, file: !972, line: 356, baseType: !1252, size: 64, offset: 1152)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1254)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !972, line: 356, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1225, file: !972, line: 359, baseType: !584, size: 64, offset: 1216)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1225, file: !972, line: 361, baseType: !612, size: 64, offset: 1280)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1225, file: !972, line: 362, baseType: !303, size: 64, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1225, file: !972, line: 365, baseType: !1016, size: 64, offset: 1408)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1225, file: !972, line: 373, baseType: !1260, offset: 1472)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !972, line: 296, elements: !510)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1221, file: !972, line: 391, baseType: !1001, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1221, file: !972, line: 392, baseType: !304, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1221, file: !972, line: 394, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!584, !612, !584, !584, !584, !584}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1221, file: !972, line: 398, baseType: !584, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1221, file: !972, line: 399, baseType: !584, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1221, file: !972, line: 405, baseType: !584, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1221, file: !972, line: 406, baseType: !584, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1221, file: !972, line: 407, baseType: !1272, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !962, line: 286, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !962, line: 286, size: 64, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1274, file: !962, line: 286, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1240, line: 18, baseType: !584)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1221, file: !972, line: 416, baseType: !455, size: 32, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1221, file: !972, line: 428, baseType: !455, size: 32, offset: 608)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1221, file: !972, line: 437, baseType: !455, size: 32, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1221, file: !972, line: 447, baseType: !455, size: 32, offset: 672)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1221, file: !972, line: 450, baseType: !1016, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1221, file: !972, line: 452, baseType: !310, size: 32, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1221, file: !972, line: 454, baseType: !496, offset: 800)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1221, file: !972, line: 457, baseType: !1012, size: 256, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1221, file: !972, line: 459, baseType: !466, size: 128, offset: 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1221, file: !972, line: 466, baseType: !584, size: 64, offset: 1216)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1221, file: !972, line: 467, baseType: !584, size: 64, offset: 1280)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1221, file: !972, line: 469, baseType: !584, size: 64, offset: 1344)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1221, file: !972, line: 470, baseType: !584, size: 64, offset: 1408)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1221, file: !972, line: 471, baseType: !1018, size: 64, offset: 1472)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1221, file: !972, line: 472, baseType: !584, size: 64, offset: 1536)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1221, file: !972, line: 473, baseType: !584, size: 64, offset: 1600)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1221, file: !972, line: 474, baseType: !584, size: 64, offset: 1664)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1221, file: !972, line: 475, baseType: !584, size: 64, offset: 1728)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1221, file: !972, line: 477, baseType: !496, offset: 1792)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1221, file: !972, line: 478, baseType: !584, size: 64, offset: 1792)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1221, file: !972, line: 478, baseType: !584, size: 64, offset: 1856)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1221, file: !972, line: 478, baseType: !584, size: 64, offset: 1920)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1221, file: !972, line: 478, baseType: !584, size: 64, offset: 1984)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1221, file: !972, line: 479, baseType: !584, size: 64, offset: 2048)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1221, file: !972, line: 479, baseType: !584, size: 64, offset: 2112)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1221, file: !972, line: 479, baseType: !584, size: 64, offset: 2176)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1221, file: !972, line: 480, baseType: !584, size: 64, offset: 2240)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1221, file: !972, line: 480, baseType: !584, size: 64, offset: 2304)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1221, file: !972, line: 480, baseType: !584, size: 64, offset: 2368)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1221, file: !972, line: 480, baseType: !584, size: 64, offset: 2432)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1221, file: !972, line: 482, baseType: !1309, size: 2816, offset: 2496)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 2816, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 44)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1221, file: !972, line: 488, baseType: !1313, size: 256, offset: 5312)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1314, line: 60, size: 256, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1313, file: !1314, line: 61, baseType: !1317, size: 256)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 256, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 4)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1221, file: !972, line: 490, baseType: !1321, size: 64, offset: 5568)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !972, line: 490, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1221, file: !972, line: 493, baseType: !1324, size: 896, offset: 5632)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1325, line: 53, baseType: !1326)
!1325 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1325, line: 13, size: 896, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1334, !1335, !1342, !1343, !1363, !1364, !1365}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1326, file: !1325, line: 18, baseType: !304, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1326, file: !1325, line: 28, baseType: !1018, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1326, file: !1325, line: 31, baseType: !1012, size: 256, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1326, file: !1325, line: 32, baseType: !1332, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1325, line: 32, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1326, file: !1325, line: 37, baseType: !351, size: 16, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1326, file: !1325, line: 40, baseType: !1336, size: 192, offset: 512)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1337, line: 53, size: 192, elements: !1338)
!1337 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1336, file: !1337, line: 54, baseType: !1016, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1336, file: !1337, line: 55, baseType: !496, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1336, file: !1337, line: 59, baseType: !466, size: 128, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1326, file: !1325, line: 41, baseType: !303, size: 64, offset: 704)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1326, file: !1325, line: 42, baseType: !1344, size: 64, offset: 768)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1347, line: 13, size: 896, elements: !1348)
!1347 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1346, file: !1347, line: 14, baseType: !303, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1346, file: !1347, line: 15, baseType: !584, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1346, file: !1347, line: 17, baseType: !584, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1346, file: !1347, line: 17, baseType: !584, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1346, file: !1347, line: 19, baseType: !311, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1346, file: !1347, line: 21, baseType: !311, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1346, file: !1347, line: 22, baseType: !311, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1346, file: !1347, line: 23, baseType: !311, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1346, file: !1347, line: 24, baseType: !311, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1346, file: !1347, line: 25, baseType: !311, size: 64, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1346, file: !1347, line: 26, baseType: !311, size: 64, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1346, file: !1347, line: 27, baseType: !311, size: 64, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1346, file: !1347, line: 28, baseType: !311, size: 64, offset: 768)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1346, file: !1347, line: 29, baseType: !311, size: 64, offset: 832)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1326, file: !1325, line: 44, baseType: !455, size: 32, offset: 832)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1326, file: !1325, line: 50, baseType: !349, size: 16, offset: 864)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1326, file: !1325, line: 51, baseType: !1366, size: 16, offset: 880)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !305, line: 18, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !307, line: 23, baseType: !1368)
!1368 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !972, line: 495, baseType: !584, size: 64, offset: 6528)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1221, file: !972, line: 497, baseType: !1371, size: 64, offset: 6592)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !972, line: 381, size: 384, elements: !1373)
!1373 = !{!1374, !1375, !2471}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1372, file: !972, line: 382, baseType: !455, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1372, file: !972, line: 383, baseType: !1376, size: 128, offset: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !972, line: 376, size: 128, elements: !1377)
!1377 = !{!1378, !2469}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1376, file: !972, line: 377, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1381, line: 640, size: 48640, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1382 = !{!1383, !1389, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1404, !1422, !1433, !1514, !1515, !1516, !1527, !1528, !1530, !1531, !1532, !1533, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1617, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1655, !1657, !1658, !1659, !1671, !1672, !1673, !1674, !1675, !1676, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1700, !1705, !1887, !1888, !1889, !1890, !1894, !1897, !1900, !1903, !1906, !1910, !2011, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2057, !2058, !2059, !2060, !2061, !2066, !2067, !2068, !2071, !2072, !2075, !2078, !2081, !2084, !2127, !2130, !2131, !2210, !2211, !2214, !2215, !2218, !2219, !2220, !2224, !2225, !2226, !2239, !2240, !2241, !2251, !2256, !2259, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1380, file: !1381, line: 646, baseType: !1384, size: 128)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1385, line: 56, size: 128, elements: !1386)
!1385 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !1385, line: 57, baseType: !584, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1384, file: !1385, line: 58, baseType: !425, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1380, file: !1381, line: 649, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !311)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1380, file: !1381, line: 657, baseType: !303, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1380, file: !1381, line: 658, baseType: !450, size: 32, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !1381, line: 660, baseType: !7, size: 32, offset: 288)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1380, file: !1381, line: 661, baseType: !7, size: 32, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1380, file: !1381, line: 684, baseType: !310, size: 32, offset: 352)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1380, file: !1381, line: 686, baseType: !310, size: 32, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1380, file: !1381, line: 687, baseType: !310, size: 32, offset: 416)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1380, file: !1381, line: 688, baseType: !310, size: 32, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1380, file: !1381, line: 689, baseType: !7, size: 32, offset: 480)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1380, file: !1381, line: 691, baseType: !1401, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1381, line: 691, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1380, file: !1381, line: 692, baseType: !1405, size: 832, offset: 576)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1381, line: 451, size: 832, elements: !1406)
!1406 = !{!1407, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1405, file: !1381, line: 453, baseType: !1408, size: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1381, line: 325, size: 128, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1408, file: !1381, line: 326, baseType: !584, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1408, file: !1381, line: 327, baseType: !425, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1405, file: !1381, line: 454, baseType: !1005, size: 192, align: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1405, file: !1381, line: 455, baseType: !466, size: 128, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1405, file: !1381, line: 456, baseType: !7, size: 32, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1405, file: !1381, line: 458, baseType: !304, size: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1405, file: !1381, line: 459, baseType: !304, size: 64, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1405, file: !1381, line: 460, baseType: !304, size: 64, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1405, file: !1381, line: 461, baseType: !304, size: 64, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1405, file: !1381, line: 463, baseType: !304, size: 64, offset: 768)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1405, file: !1381, line: 465, baseType: !1421, offset: 832)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1381, line: 415, elements: !510)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1380, file: !1381, line: 693, baseType: !1423, size: 384, offset: 1408)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1381, line: 489, size: 384, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1423, file: !1381, line: 490, baseType: !466, size: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1423, file: !1381, line: 491, baseType: !584, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1423, file: !1381, line: 492, baseType: !584, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1423, file: !1381, line: 493, baseType: !7, size: 32, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1423, file: !1381, line: 494, baseType: !351, size: 16, offset: 288)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1423, file: !1381, line: 495, baseType: !351, size: 16, offset: 304)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1423, file: !1381, line: 497, baseType: !1432, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1380, file: !1381, line: 697, baseType: !1434, size: 1792, offset: 1792)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1381, line: 507, size: 1792, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1511, !1512}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1434, file: !1381, line: 508, baseType: !1005, size: 192, align: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1434, file: !1381, line: 515, baseType: !304, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1434, file: !1381, line: 516, baseType: !304, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1434, file: !1381, line: 517, baseType: !304, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1434, file: !1381, line: 518, baseType: !304, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1434, file: !1381, line: 519, baseType: !304, size: 64, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1434, file: !1381, line: 526, baseType: !1022, size: 64, offset: 512)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1434, file: !1381, line: 527, baseType: !304, size: 64, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1434, file: !1381, line: 528, baseType: !7, size: 32, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1434, file: !1381, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1434, file: !1381, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1434, file: !1381, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1434, file: !1381, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1434, file: !1381, line: 563, baseType: !1450, size: 512, offset: 704)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1451)
!1451 = !{!1452, !1460, !1461, !1466, !1507, !1508, !1509, !1510}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1450, file: !191, line: 119, baseType: !1453, size: 256)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1454, line: 9, size: 256, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1453, file: !1454, line: 10, baseType: !1005, size: 192, align: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1453, file: !1454, line: 11, baseType: !1458, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1459, line: 29, baseType: !1022)
!1459 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1450, file: !191, line: 120, baseType: !1458, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1450, file: !191, line: 121, baseType: !1462, size: 64, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!190, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1450, file: !191, line: 122, baseType: !1467, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1469)
!1469 = !{!1470, !1488, !1489, !1492, !1497, !1498, !1502, !1506}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1468, file: !191, line: 160, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !191, line: 215, baseType: !1025)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1472, file: !191, line: 216, baseType: !7, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1472, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1472, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1472, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1472, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1472, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1472, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1472, file: !191, line: 233, baseType: !1458, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1472, file: !191, line: 234, baseType: !1465, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1472, file: !191, line: 235, baseType: !1458, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1472, file: !191, line: 236, baseType: !1465, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1472, file: !191, line: 237, baseType: !1487, size: 4096, offset: 512)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1468, size: 4096, elements: !436)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1468, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1468, file: !191, line: 162, baseType: !1490, size: 32, offset: 96)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !302, line: 27, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !569, line: 96, baseType: !310)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1468, file: !191, line: 163, baseType: !1493, size: 32, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !648, line: 276, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !648, line: 276, size: 32, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1494, file: !648, line: 276, baseType: !652, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1468, file: !191, line: 164, baseType: !1465, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1468, file: !191, line: 165, baseType: !1499, size: 128, offset: 256)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1454, line: 14, size: 128, elements: !1500)
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1499, file: !1454, line: 15, baseType: !997, size: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1468, file: !191, line: 166, baseType: !1503, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!1458}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1468, file: !191, line: 167, baseType: !1458, size: 64, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1450, file: !191, line: 123, baseType: !357, size: 8, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1450, file: !191, line: 124, baseType: !357, size: 8, offset: 456)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1450, file: !191, line: 125, baseType: !357, size: 8, offset: 464)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1450, file: !191, line: 126, baseType: !357, size: 8, offset: 472)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1434, file: !1381, line: 572, baseType: !1450, size: 512, offset: 1216)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1434, file: !1381, line: 580, baseType: !1513, size: 64, offset: 1728)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1380, file: !1381, line: 721, baseType: !7, size: 32, offset: 3584)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1380, file: !1381, line: 722, baseType: !310, size: 32, offset: 3616)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1380, file: !1381, line: 723, baseType: !1517, size: 64, offset: 3648)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1520, line: 17, baseType: !1521)
!1520 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1520, line: 17, size: 64, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1521, file: !1520, line: 17, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 64, elements: !1525)
!1525 = !{!1526}
!1526 = !DISubrange(count: 1)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1380, file: !1381, line: 724, baseType: !1519, size: 64, offset: 3712)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1380, file: !1381, line: 749, baseType: !1529, offset: 3776)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1381, line: 290, elements: !510)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1380, file: !1381, line: 751, baseType: !466, size: 128, offset: 3776)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1380, file: !1381, line: 757, baseType: !1217, size: 64, offset: 3904)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1380, file: !1381, line: 758, baseType: !1217, size: 64, offset: 3968)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1380, file: !1381, line: 761, baseType: !1534, size: 320, offset: 4032)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1314, line: 34, size: 320, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1534, file: !1314, line: 35, baseType: !304, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1534, file: !1314, line: 36, baseType: !1538, size: 256, offset: 64)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1224, size: 256, elements: !1318)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1380, file: !1381, line: 766, baseType: !310, size: 32, offset: 4352)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1380, file: !1381, line: 767, baseType: !310, size: 32, offset: 4384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1380, file: !1381, line: 768, baseType: !310, size: 32, offset: 4416)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1380, file: !1381, line: 770, baseType: !310, size: 32, offset: 4448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1380, file: !1381, line: 772, baseType: !584, size: 64, offset: 4480)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1380, file: !1381, line: 775, baseType: !7, size: 32, offset: 4544)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1380, file: !1381, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1380, file: !1381, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1380, file: !1381, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1380, file: !1381, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1380, file: !1381, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1380, file: !1381, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1380, file: !1381, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1380, file: !1381, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1380, file: !1381, line: 831, baseType: !584, size: 64, offset: 4672)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1380, file: !1381, line: 833, baseType: !1555, size: 384, offset: 4736)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1556)
!1556 = !{!1557, !1562}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1555, file: !196, line: 26, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!311, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !196, line: 27, baseType: !1563, size: 320, offset: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !196, line: 27, size: 320, elements: !1564)
!1564 = !{!1565, !1575, !1602}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1563, file: !196, line: 36, baseType: !1566, size: 320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !196, line: 29, size: 320, elements: !1567)
!1567 = !{!1568, !1570, !1571, !1572, !1573, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1566, file: !196, line: 30, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1566, file: !196, line: 31, baseType: !425, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !196, line: 32, baseType: !425, size: 32, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1566, file: !196, line: 33, baseType: !425, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1566, file: !196, line: 34, baseType: !304, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1566, file: !196, line: 35, baseType: !1569, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1563, file: !196, line: 46, baseType: !1576, size: 192)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !196, line: 38, size: 192, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1601}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1576, file: !196, line: 39, baseType: !1490, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1576, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !196, line: 41, baseType: !1581, size: 64, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !196, line: 41, size: 64, elements: !1582)
!1582 = !{!1583, !1591}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1581, file: !196, line: 42, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1586, line: 7, size: 128, elements: !1587)
!1586 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1585, file: !1586, line: 8, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !569, line: 93, baseType: !782)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1585, file: !1586, line: 9, baseType: !782, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1581, file: !196, line: 43, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1594, line: 7, size: 64, elements: !1595)
!1594 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1595 = !{!1596, !1600}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1593, file: !1594, line: 8, baseType: !1597, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1594, line: 5, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !305, line: 20, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !307, line: 26, baseType: !310)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1593, file: !1594, line: 9, baseType: !1598, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1576, file: !196, line: 45, baseType: !304, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1563, file: !196, line: 54, baseType: !1603, size: 256)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !196, line: 48, size: 256, elements: !1604)
!1604 = !{!1605, !1613, !1614, !1615, !1616}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1603, file: !196, line: 49, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1608, line: 36, size: 64, elements: !1609)
!1608 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1609 = !{!1610, !1611, !1612}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1607, file: !1608, line: 37, baseType: !310, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1607, file: !1608, line: 38, baseType: !1368, size: 16, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1607, file: !1608, line: 39, baseType: !1368, size: 16, offset: 48)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1603, file: !196, line: 50, baseType: !310, size: 32, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1603, file: !196, line: 51, baseType: !310, size: 32, offset: 96)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1603, file: !196, line: 52, baseType: !584, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1603, file: !196, line: 53, baseType: !584, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1380, file: !1381, line: 835, baseType: !1618, size: 32, offset: 5120)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !302, line: 22, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !569, line: 28, baseType: !310)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1380, file: !1381, line: 836, baseType: !1618, size: 32, offset: 5152)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1380, file: !1381, line: 840, baseType: !584, size: 64, offset: 5184)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1380, file: !1381, line: 849, baseType: !1379, size: 64, offset: 5248)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1380, file: !1381, line: 852, baseType: !1379, size: 64, offset: 5312)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1380, file: !1381, line: 857, baseType: !466, size: 128, offset: 5376)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1380, file: !1381, line: 858, baseType: !466, size: 128, offset: 5504)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1380, file: !1381, line: 859, baseType: !1379, size: 64, offset: 5632)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1380, file: !1381, line: 867, baseType: !466, size: 128, offset: 5696)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1380, file: !1381, line: 868, baseType: !466, size: 128, offset: 5824)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1380, file: !1381, line: 871, baseType: !1630, size: 64, offset: 5952)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1638, !1639, !1646, !1647}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1631, file: !217, line: 61, baseType: !450, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1631, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1631, file: !217, line: 63, baseType: !496, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1631, file: !217, line: 65, baseType: !1637, size: 256, offset: 64)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 256, elements: !1318)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1631, file: !217, line: 66, baseType: !884, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1631, file: !217, line: 68, baseType: !1640, size: 128, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1641, line: 40, baseType: !1642)
!1641 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1641, line: 36, size: 128, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1642, file: !1641, line: 37, baseType: !496)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1642, file: !1641, line: 38, baseType: !466, size: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1631, file: !217, line: 69, baseType: !625, size: 128, align: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1631, file: !217, line: 70, baseType: !1648, size: 128, offset: 640)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1649, size: 128, elements: !1525)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1649, file: !217, line: 55, baseType: !310, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1649, file: !217, line: 56, baseType: !1653, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1380, file: !1381, line: 872, baseType: !1656, size: 512, offset: 6016)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 512, elements: !1318)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1380, file: !1381, line: 873, baseType: !466, size: 128, offset: 6528)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1380, file: !1381, line: 874, baseType: !466, size: 128, offset: 6656)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1380, file: !1381, line: 876, baseType: !1660, size: 64, offset: 6784)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1662, line: 26, size: 192, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1661, file: !1662, line: 27, baseType: !7, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1661, file: !1662, line: 28, baseType: !1666, size: 128, offset: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1667, line: 43, size: 128, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1666, file: !1667, line: 44, baseType: !1025)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1666, file: !1667, line: 45, baseType: !466, size: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1380, file: !1381, line: 879, baseType: !954, size: 64, offset: 6848)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1380, file: !1381, line: 882, baseType: !954, size: 64, offset: 6912)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1380, file: !1381, line: 884, baseType: !304, size: 64, offset: 6976)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1380, file: !1381, line: 885, baseType: !304, size: 64, offset: 7040)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1380, file: !1381, line: 890, baseType: !304, size: 64, offset: 7104)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1380, file: !1381, line: 891, baseType: !1677, size: 128, offset: 7168)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1381, line: 242, size: 128, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1677, file: !1381, line: 244, baseType: !304, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1677, file: !1381, line: 245, baseType: !304, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1677, file: !1381, line: 246, baseType: !1025, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1380, file: !1381, line: 900, baseType: !584, size: 64, offset: 7296)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1380, file: !1381, line: 901, baseType: !584, size: 64, offset: 7360)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1380, file: !1381, line: 904, baseType: !304, size: 64, offset: 7424)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1380, file: !1381, line: 907, baseType: !304, size: 64, offset: 7488)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1380, file: !1381, line: 910, baseType: !584, size: 64, offset: 7552)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1380, file: !1381, line: 911, baseType: !584, size: 64, offset: 7616)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1380, file: !1381, line: 914, baseType: !1689, size: 640, offset: 7680)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1690, line: 123, size: 640, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1691 = !{!1692, !1698, !1699}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1689, file: !1690, line: 124, baseType: !1693, size: 576)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 576, elements: !537)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1690, line: 108, size: 192, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1694, file: !1690, line: 109, baseType: !304, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1694, file: !1690, line: 110, baseType: !1499, size: 128, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1689, file: !1690, line: 125, baseType: !7, size: 32, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1689, file: !1690, line: 126, baseType: !7, size: 32, offset: 608)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1380, file: !1381, line: 917, baseType: !1701, size: 192, offset: 8320)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1690, line: 134, size: 192, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1701, file: !1690, line: 135, baseType: !625, size: 128, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1701, file: !1690, line: 136, baseType: !7, size: 32, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1380, file: !1381, line: 923, baseType: !1706, size: 64, offset: 8512)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1709, line: 111, size: 1280, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1730, !1731, !1732, !1733, !1734, !1735, !1840, !1841, !1842, !1843, !1869, !1872, !1882}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1708, file: !1709, line: 112, baseType: !455, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1708, file: !1709, line: 120, baseType: !687, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1708, file: !1709, line: 121, baseType: !695, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1708, file: !1709, line: 122, baseType: !687, size: 32, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1708, file: !1709, line: 123, baseType: !695, size: 32, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1708, file: !1709, line: 124, baseType: !687, size: 32, offset: 160)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1708, file: !1709, line: 125, baseType: !695, size: 32, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1708, file: !1709, line: 126, baseType: !687, size: 32, offset: 224)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1708, file: !1709, line: 127, baseType: !695, size: 32, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1708, file: !1709, line: 128, baseType: !7, size: 32, offset: 288)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1708, file: !1709, line: 129, baseType: !1722, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1723, line: 26, baseType: !1724)
!1723 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1723, line: 24, size: 64, elements: !1725)
!1725 = !{!1726}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1724, file: !1723, line: 25, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 64, elements: !1728)
!1728 = !{!1729}
!1729 = !DISubrange(count: 2)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1708, file: !1709, line: 130, baseType: !1722, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1708, file: !1709, line: 131, baseType: !1722, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1708, file: !1709, line: 132, baseType: !1722, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1708, file: !1709, line: 133, baseType: !1722, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1708, file: !1709, line: 135, baseType: !359, size: 8, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1708, file: !1709, line: 137, baseType: !1736, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1738, line: 189, size: 1664, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1739 = !{!1740, !1741, !1744, !1749, !1750, !1753, !1754, !1759, !1760, !1761, !1762, !1764, !1765, !1766, !1767, !1768, !1804, !1825}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1737, file: !1738, line: 190, baseType: !450, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1737, file: !1738, line: 191, baseType: !1742, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1738, line: 28, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !302, line: 98, baseType: !1598)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 192, baseType: !1745, size: 192, offset: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 192, size: 192, elements: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1745, file: !1738, line: 193, baseType: !466, size: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1745, file: !1738, line: 194, baseType: !1005, size: 192, align: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1737, file: !1738, line: 199, baseType: !1012, size: 256, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1737, file: !1738, line: 200, baseType: !1751, size: 64, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1738, line: 200, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1737, file: !1738, line: 201, baseType: !303, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 202, baseType: !1755, size: 64, offset: 640)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 202, size: 64, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1755, file: !1738, line: 203, baseType: !788, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1755, file: !1738, line: 204, baseType: !788, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1737, file: !1738, line: 206, baseType: !788, size: 64, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1737, file: !1738, line: 207, baseType: !687, size: 32, offset: 768)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1737, file: !1738, line: 208, baseType: !695, size: 32, offset: 800)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1737, file: !1738, line: 209, baseType: !1763, size: 32, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1738, line: 31, baseType: !808)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1737, file: !1738, line: 210, baseType: !351, size: 16, offset: 864)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1737, file: !1738, line: 211, baseType: !351, size: 16, offset: 880)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1737, file: !1738, line: 215, baseType: !1368, size: 16, offset: 896)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1737, file: !1738, line: 222, baseType: !584, size: 64, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 239, baseType: !1769, size: 320, offset: 1024)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 239, size: 320, elements: !1770)
!1770 = !{!1771, !1796}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1769, file: !1738, line: 240, baseType: !1772, size: 320)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1738, line: 108, size: 320, elements: !1773)
!1773 = !{!1774, !1775, !1785, !1788, !1795}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1772, file: !1738, line: 110, baseType: !584, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1738, line: 111, baseType: !1776, size: 64, offset: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1738, line: 111, size: 64, elements: !1777)
!1777 = !{!1778, !1784}
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1738, line: 112, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1738, line: 112, size: 64, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1779, file: !1738, line: 114, baseType: !349, size: 16)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1779, file: !1738, line: 115, baseType: !1783, size: 48, offset: 16)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 48, elements: !475)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1776, file: !1738, line: 121, baseType: !584, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1772, file: !1738, line: 123, baseType: !1786, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1738, line: 96, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1772, file: !1738, line: 124, baseType: !1789, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1738, line: 102, size: 192, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1790, file: !1738, line: 103, baseType: !625, size: 128, align: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1790, file: !1738, line: 104, baseType: !450, size: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1790, file: !1738, line: 105, baseType: !739, size: 8, offset: 160)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1772, file: !1738, line: 125, baseType: !320, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !1738, line: 241, baseType: !1797, size: 320)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1769, file: !1738, line: 241, size: 320, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1797, file: !1738, line: 242, baseType: !584, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1797, file: !1738, line: 243, baseType: !584, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1797, file: !1738, line: 244, baseType: !1786, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1797, file: !1738, line: 245, baseType: !1789, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1797, file: !1738, line: 246, baseType: !342, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 254, baseType: !1805, size: 256, offset: 1344)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 254, size: 256, elements: !1806)
!1806 = !{!1807, !1813}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1805, file: !1738, line: 255, baseType: !1808, size: 256)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1738, line: 128, size: 256, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1808, file: !1738, line: 129, baseType: !303, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1808, file: !1738, line: 130, baseType: !1812, size: 256)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 256, elements: !1318)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !1738, line: 256, baseType: !1814, size: 256)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1738, line: 256, size: 256, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1814, file: !1738, line: 258, baseType: !466, size: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1814, file: !1738, line: 259, baseType: !1818, size: 128, offset: 128)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1819, line: 22, size: 128, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821, !1824}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1818, file: !1819, line: 23, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1819, line: 23, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1818, file: !1819, line: 24, baseType: !584, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1737, file: !1738, line: 274, baseType: !1826, size: 64, offset: 1600)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1738, line: 170, size: 192, elements: !1828)
!1828 = !{!1829, !1838, !1839}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1827, file: !1738, line: 171, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1738, line: 165, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!310, !1736, !1834, !1836, !1736}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1827, file: !1738, line: 172, baseType: !1736, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1827, file: !1738, line: 173, baseType: !1786, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1708, file: !1709, line: 138, baseType: !1736, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1708, file: !1709, line: 139, baseType: !1736, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1708, file: !1709, line: 140, baseType: !1736, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1708, file: !1709, line: 145, baseType: !1844, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1846, line: 13, size: 896, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1845, file: !1846, line: 14, baseType: !450, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1845, file: !1846, line: 15, baseType: !455, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1845, file: !1846, line: 16, baseType: !455, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1845, file: !1846, line: 21, baseType: !1016, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1845, file: !1846, line: 27, baseType: !584, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1845, file: !1846, line: 28, baseType: !584, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1845, file: !1846, line: 29, baseType: !1016, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1845, file: !1846, line: 32, baseType: !888, size: 128, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1845, file: !1846, line: 33, baseType: !687, size: 32, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1845, file: !1846, line: 37, baseType: !1016, size: 64, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1845, file: !1846, line: 44, baseType: !1859, size: 256, offset: 640)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1860, line: 15, size: 256, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1859, file: !1860, line: 16, baseType: !1025)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1859, file: !1860, line: 18, baseType: !310, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1859, file: !1860, line: 19, baseType: !310, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1859, file: !1860, line: 20, baseType: !310, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1859, file: !1860, line: 21, baseType: !310, size: 32, offset: 96)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1859, file: !1860, line: 22, baseType: !584, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1859, file: !1860, line: 23, baseType: !584, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1708, file: !1709, line: 146, baseType: !1870, size: 64, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !688, line: 18, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1708, file: !1709, line: 147, baseType: !1873, size: 64, offset: 1088)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1709, line: 25, size: 64, elements: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1874, file: !1709, line: 26, baseType: !455, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1874, file: !1709, line: 27, baseType: !310, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1874, file: !1709, line: 28, baseType: !1879, offset: 64)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 0)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1708, file: !1709, line: 149, baseType: !1883, size: 128, offset: 1152)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1708, file: !1709, line: 149, size: 128, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1883, file: !1709, line: 150, baseType: !310, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1883, file: !1709, line: 151, baseType: !625, size: 128, align: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1380, file: !1381, line: 926, baseType: !1706, size: 64, offset: 8576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1380, file: !1381, line: 929, baseType: !1706, size: 64, offset: 8640)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1380, file: !1381, line: 933, baseType: !1736, size: 64, offset: 8704)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1380, file: !1381, line: 943, baseType: !1891, size: 128, offset: 8768)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 128, elements: !1892)
!1892 = !{!1893}
!1893 = !DISubrange(count: 16)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1380, file: !1381, line: 945, baseType: !1895, size: 64, offset: 8896)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1381, line: 49, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1380, file: !1381, line: 956, baseType: !1898, size: 64, offset: 8960)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1381, line: 45, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1380, file: !1381, line: 959, baseType: !1901, size: 64, offset: 9024)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1381, line: 959, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1380, file: !1381, line: 962, baseType: !1904, size: 64, offset: 9088)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1381, line: 66, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1380, file: !1381, line: 966, baseType: !1907, size: 64, offset: 9152)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1909, line: 35, flags: DIFlagFwdDecl)
!1909 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1380, file: !1381, line: 969, baseType: !1911, size: 64, offset: 9216)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1913, line: 82, size: 7296, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1950, !1959, !1960, !1962, !1963, !1964, !1967, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1997, !1998, !2005, !2006, !2007, !2008, !2009, !2010}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1912, file: !1913, line: 83, baseType: !450, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1912, file: !1913, line: 84, baseType: !455, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1912, file: !1913, line: 85, baseType: !310, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1912, file: !1913, line: 86, baseType: !466, size: 128, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1912, file: !1913, line: 88, baseType: !1640, size: 128, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1912, file: !1913, line: 91, baseType: !1379, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1912, file: !1913, line: 94, baseType: !1922, size: 192, offset: 448)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1923, line: 30, size: 192, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1922, file: !1923, line: 31, baseType: !466, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1922, file: !1923, line: 32, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1928, line: 25, baseType: !1929)
!1928 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1928, line: 23, size: 64, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1929, file: !1928, line: 24, baseType: !1524, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1912, file: !1913, line: 97, baseType: !884, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1912, file: !1913, line: 100, baseType: !310, size: 32, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1912, file: !1913, line: 106, baseType: !310, size: 32, offset: 736)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1912, file: !1913, line: 107, baseType: !1379, size: 64, offset: 768)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1912, file: !1913, line: 110, baseType: !310, size: 32, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1912, file: !1913, line: 111, baseType: !7, size: 32, offset: 864)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1912, file: !1913, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1912, file: !1913, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1912, file: !1913, line: 128, baseType: !310, size: 32, offset: 928)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1912, file: !1913, line: 129, baseType: !466, size: 128, offset: 960)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1912, file: !1913, line: 132, baseType: !1450, size: 512, offset: 1088)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1912, file: !1913, line: 133, baseType: !1458, size: 64, offset: 1600)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1912, file: !1913, line: 140, baseType: !1945, size: 256, offset: 1664)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1946, size: 256, elements: !1728)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1913, line: 38, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1946, file: !1913, line: 39, baseType: !304, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1946, file: !1913, line: 40, baseType: !304, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1912, file: !1913, line: 146, baseType: !1951, size: 192, offset: 1920)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1913, line: 66, size: 192, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1951, file: !1913, line: 67, baseType: !1954, size: 192)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1913, line: 47, size: 192, elements: !1955)
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1954, file: !1913, line: 48, baseType: !1018, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1954, file: !1913, line: 49, baseType: !1018, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1954, file: !1913, line: 50, baseType: !1018, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1912, file: !1913, line: 150, baseType: !1689, size: 640, offset: 2112)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1912, file: !1913, line: 153, baseType: !1961, size: 256, offset: 2752)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1630, size: 256, elements: !1318)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1912, file: !1913, line: 159, baseType: !1630, size: 64, offset: 3008)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1912, file: !1913, line: 162, baseType: !310, size: 32, offset: 3072)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1912, file: !1913, line: 164, baseType: !1965, size: 64, offset: 3136)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1913, line: 164, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1912, file: !1913, line: 175, baseType: !1968, size: 32, offset: 3200)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !648, line: 805, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 798, size: 32, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1969, file: !648, line: 803, baseType: !647, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1969, file: !648, line: 804, baseType: !496, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1912, file: !1913, line: 176, baseType: !304, size: 64, offset: 3264)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1912, file: !1913, line: 176, baseType: !304, size: 64, offset: 3328)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1912, file: !1913, line: 176, baseType: !304, size: 64, offset: 3392)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1912, file: !1913, line: 176, baseType: !304, size: 64, offset: 3456)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1912, file: !1913, line: 177, baseType: !304, size: 64, offset: 3520)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1912, file: !1913, line: 178, baseType: !304, size: 64, offset: 3584)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1912, file: !1913, line: 179, baseType: !1677, size: 128, offset: 3648)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1912, file: !1913, line: 180, baseType: !584, size: 64, offset: 3776)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1912, file: !1913, line: 180, baseType: !584, size: 64, offset: 3840)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1912, file: !1913, line: 180, baseType: !584, size: 64, offset: 3904)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1912, file: !1913, line: 180, baseType: !584, size: 64, offset: 3968)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1912, file: !1913, line: 181, baseType: !584, size: 64, offset: 4032)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1912, file: !1913, line: 181, baseType: !584, size: 64, offset: 4096)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1912, file: !1913, line: 181, baseType: !584, size: 64, offset: 4160)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1912, file: !1913, line: 181, baseType: !584, size: 64, offset: 4224)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1912, file: !1913, line: 182, baseType: !584, size: 64, offset: 4288)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1912, file: !1913, line: 182, baseType: !584, size: 64, offset: 4352)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1912, file: !1913, line: 182, baseType: !584, size: 64, offset: 4416)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1912, file: !1913, line: 182, baseType: !584, size: 64, offset: 4480)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1912, file: !1913, line: 183, baseType: !584, size: 64, offset: 4544)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1912, file: !1913, line: 183, baseType: !584, size: 64, offset: 4608)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1912, file: !1913, line: 184, baseType: !1995, offset: 4672)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1996, line: 12, elements: !510)
!1996 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1912, file: !1913, line: 192, baseType: !308, size: 64, offset: 4672)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1912, file: !1913, line: 203, baseType: !1999, size: 2048, offset: 4736)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2000, size: 2048, elements: !1892)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2001, line: 43, size: 128, elements: !2002)
!2001 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2000, file: !2001, line: 44, baseType: !583, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2000, file: !2001, line: 45, baseType: !583, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1912, file: !1913, line: 220, baseType: !739, size: 8, offset: 6784)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1912, file: !1913, line: 221, baseType: !1368, size: 16, offset: 6800)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1912, file: !1913, line: 222, baseType: !1368, size: 16, offset: 6816)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1912, file: !1913, line: 224, baseType: !1217, size: 64, offset: 6848)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1912, file: !1913, line: 227, baseType: !1336, size: 192, offset: 6912)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1912, file: !1913, line: 233, baseType: !1336, size: 192, offset: 7104)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1380, file: !1381, line: 970, baseType: !2012, size: 64, offset: 9280)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1913, line: 20, size: 16576, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2018}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2013, file: !1913, line: 21, baseType: !496)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2013, file: !1913, line: 22, baseType: !450, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2013, file: !1913, line: 23, baseType: !1640, size: 128, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2013, file: !1913, line: 24, baseType: !2019, size: 16384, offset: 192)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2020, size: 16384, elements: !541)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1923, line: 49, size: 256, elements: !2021)
!2021 = !{!2022}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2020, file: !1923, line: 50, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1923, line: 35, size: 256, elements: !2024)
!2024 = !{!2025, !2032, !2033, !2039}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2023, file: !1923, line: 37, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2027, line: 19, baseType: !2028)
!2027 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2027, line: 18, baseType: !2030)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !310}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2023, file: !1923, line: 38, baseType: !584, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2023, file: !1923, line: 44, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2027, line: 22, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2027, line: 21, baseType: !2037)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2023, file: !1923, line: 46, baseType: !1927, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1380, file: !1381, line: 971, baseType: !1927, size: 64, offset: 9344)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1380, file: !1381, line: 972, baseType: !1927, size: 64, offset: 9408)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1380, file: !1381, line: 974, baseType: !1927, size: 64, offset: 9472)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1380, file: !1381, line: 975, baseType: !1922, size: 192, offset: 9536)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1380, file: !1381, line: 976, baseType: !584, size: 64, offset: 9728)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1380, file: !1381, line: 977, baseType: !581, size: 64, offset: 9792)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1380, file: !1381, line: 978, baseType: !7, size: 32, offset: 9856)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1380, file: !1381, line: 980, baseType: !628, size: 64, offset: 9920)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1380, file: !1381, line: 989, baseType: !2049, size: 128, offset: 9984)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2050, line: 35, size: 128, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2049, file: !2050, line: 36, baseType: !310, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2049, file: !2050, line: 37, baseType: !455, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2049, file: !2050, line: 38, baseType: !2055, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2050, line: 23, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1380, file: !1381, line: 992, baseType: !304, size: 64, offset: 10112)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1380, file: !1381, line: 993, baseType: !304, size: 64, offset: 10176)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1380, file: !1381, line: 996, baseType: !496, offset: 10240)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1380, file: !1381, line: 999, baseType: !1025, offset: 10240)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1380, file: !1381, line: 1001, baseType: !2062, size: 64, offset: 10240)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1381, line: 636, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2062, file: !1381, line: 637, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1380, file: !1381, line: 1005, baseType: !997, size: 128, offset: 10304)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1380, file: !1381, line: 1007, baseType: !1379, size: 64, offset: 10432)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1380, file: !1381, line: 1009, baseType: !2069, size: 64, offset: 10496)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1381, line: 1009, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1380, file: !1381, line: 1043, baseType: !303, size: 64, offset: 10560)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1380, file: !1381, line: 1046, baseType: !2073, size: 64, offset: 10624)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1381, line: 41, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1380, file: !1381, line: 1050, baseType: !2076, size: 64, offset: 10688)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1381, line: 42, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1380, file: !1381, line: 1054, baseType: !2079, size: 64, offset: 10752)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1381, line: 55, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1380, file: !1381, line: 1056, baseType: !2082, size: 64, offset: 10816)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1381, line: 40, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1380, file: !1381, line: 1058, baseType: !2085, size: 64, offset: 10880)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2087, line: 99, size: 704, elements: !2088)
!2087 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2114, !2115}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2086, file: !2087, line: 100, baseType: !1016, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2086, file: !2087, line: 101, baseType: !455, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2086, file: !2087, line: 102, baseType: !455, size: 32, offset: 96)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2086, file: !2087, line: 105, baseType: !496, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2086, file: !2087, line: 107, baseType: !351, size: 16, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2086, file: !2087, line: 109, baseType: !988, size: 128, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2086, file: !2087, line: 110, baseType: !2096, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2087, line: 73, size: 448, elements: !2098)
!2098 = !{!2099, !2102, !2103, !2108, !2113}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2097, file: !2087, line: 74, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2087, line: 74, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2097, file: !2087, line: 75, baseType: !2085, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !2097, file: !2087, line: 83, baseType: !2104, size: 128, offset: 128)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2097, file: !2087, line: 83, size: 128, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2104, file: !2087, line: 84, baseType: !466, size: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2104, file: !2087, line: 85, baseType: !1178, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2097, file: !2087, line: 87, baseType: !2109, size: 128, offset: 256)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2097, file: !2087, line: 87, size: 128, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2109, file: !2087, line: 88, baseType: !888, size: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2109, file: !2087, line: 89, baseType: !625, size: 128, align: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2097, file: !2087, line: 92, baseType: !7, size: 32, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2086, file: !2087, line: 111, baseType: !884, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2086, file: !2087, line: 113, baseType: !2116, size: 256, offset: 448)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2117, line: 102, size: 256, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2120, !2121}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2116, file: !2117, line: 103, baseType: !1016, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2116, file: !2117, line: 104, baseType: !466, size: 128, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2116, file: !2117, line: 105, baseType: !2122, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2117, line: 21, baseType: !2123)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{null, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1380, file: !1381, line: 1061, baseType: !2128, size: 64, offset: 10944)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1381, line: 43, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1380, file: !1381, line: 1064, baseType: !584, size: 64, offset: 11008)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1380, file: !1381, line: 1065, baseType: !2132, size: 64, offset: 11072)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1923, line: 14, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1923, line: 12, size: 384, elements: !2135)
!2135 = !{!2136}
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !2134, file: !1923, line: 13, baseType: !2137, size: 384)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !1923, line: 13, size: 384, elements: !2138)
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2137, file: !1923, line: 13, baseType: !310, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2137, file: !1923, line: 13, baseType: !310, size: 32, offset: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2137, file: !1923, line: 13, baseType: !310, size: 32, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2137, file: !1923, line: 13, baseType: !2143, size: 256, offset: 128)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2144, line: 32, size: 256, elements: !2145)
!2144 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2151, !2164, !2170, !2179, !2199, !2204}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2143, file: !2144, line: 37, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !2144, line: 34, size: 64, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2147, file: !2144, line: 35, baseType: !1619, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2147, file: !2144, line: 36, baseType: !693, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2143, file: !2144, line: 45, baseType: !2152, size: 192)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !2144, line: 40, size: 192, elements: !2153)
!2153 = !{!2154, !2156, !2157, !2163}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2152, file: !2144, line: 41, baseType: !2155, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !569, line: 95, baseType: !310)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2152, file: !2144, line: 42, baseType: !310, size: 32, offset: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2152, file: !2144, line: 43, baseType: !2158, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2144, line: 11, baseType: !2159)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2144, line: 8, size: 64, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2159, file: !2144, line: 9, baseType: !310, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2159, file: !2144, line: 10, baseType: !303, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2152, file: !2144, line: 44, baseType: !310, size: 32, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2143, file: !2144, line: 52, baseType: !2165, size: 128)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !2144, line: 48, size: 128, elements: !2166)
!2166 = !{!2167, !2168, !2169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2165, file: !2144, line: 49, baseType: !1619, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2165, file: !2144, line: 50, baseType: !693, size: 32, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2165, file: !2144, line: 51, baseType: !2158, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2143, file: !2144, line: 61, baseType: !2171, size: 256)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !2144, line: 55, size: 256, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176, !2178}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2171, file: !2144, line: 56, baseType: !1619, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2171, file: !2144, line: 57, baseType: !693, size: 32, offset: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2171, file: !2144, line: 58, baseType: !310, size: 32, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2171, file: !2144, line: 59, baseType: !2177, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !569, line: 94, baseType: !570)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2171, file: !2144, line: 60, baseType: !2177, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2143, file: !2144, line: 95, baseType: !2180, size: 256)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !2144, line: 64, size: 256, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2180, file: !2144, line: 65, baseType: !303, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !2144, line: 77, baseType: !2184, size: 192, offset: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2180, file: !2144, line: 77, size: 192, elements: !2185)
!2185 = !{!2186, !2187, !2194}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2184, file: !2144, line: 82, baseType: !1368, size: 16)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2184, file: !2144, line: 88, baseType: !2188, size: 192)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !2144, line: 84, size: 192, elements: !2189)
!2189 = !{!2190, !2192, !2193}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2188, file: !2144, line: 85, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 64, elements: !436)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2188, file: !2144, line: 86, baseType: !303, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2188, file: !2144, line: 87, baseType: !303, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2184, file: !2144, line: 93, baseType: !2195, size: 96)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !2144, line: 90, size: 96, elements: !2196)
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2195, file: !2144, line: 91, baseType: !2191, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2195, file: !2144, line: 92, baseType: !426, size: 32, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2143, file: !2144, line: 101, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !2144, line: 98, size: 128, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2200, file: !2144, line: 99, baseType: !311, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2200, file: !2144, line: 100, baseType: !310, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2143, file: !2144, line: 108, baseType: !2205, size: 128)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !2144, line: 104, size: 128, elements: !2206)
!2206 = !{!2207, !2208, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2205, file: !2144, line: 105, baseType: !303, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2205, file: !2144, line: 106, baseType: !310, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2205, file: !2144, line: 107, baseType: !7, size: 32, offset: 96)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1380, file: !1381, line: 1067, baseType: !1995, offset: 11136)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1380, file: !1381, line: 1099, baseType: !2212, size: 64, offset: 11136)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1381, line: 56, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1380, file: !1381, line: 1103, baseType: !466, size: 128, offset: 11200)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1380, file: !1381, line: 1104, baseType: !2216, size: 64, offset: 11328)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1381, line: 46, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1380, file: !1381, line: 1105, baseType: !1336, size: 192, offset: 11392)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1380, file: !1381, line: 1106, baseType: !7, size: 32, offset: 11584)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1380, file: !1381, line: 1109, baseType: !2221, size: 128, offset: 11648)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2222, size: 128, elements: !1728)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1381, line: 51, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1380, file: !1381, line: 1110, baseType: !1336, size: 192, offset: 11776)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1380, file: !1381, line: 1111, baseType: !466, size: 128, offset: 11968)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1380, file: !1381, line: 1173, baseType: !2227, size: 64, offset: 12096)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2229, line: 62, size: 256, align: 256, elements: !2230)
!2229 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2230 = !{!2231, !2232, !2233, !2238}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2228, file: !2229, line: 75, baseType: !426, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2228, file: !2229, line: 90, baseType: !426, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2228, file: !2229, line: 124, baseType: !2234, size: 64, offset: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2228, file: !2229, line: 109, size: 64, elements: !2235)
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2234, file: !2229, line: 110, baseType: !306, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2234, file: !2229, line: 112, baseType: !306, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2228, file: !2229, line: 144, baseType: !426, size: 32, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1380, file: !1381, line: 1174, baseType: !425, size: 32, offset: 12160)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1380, file: !1381, line: 1179, baseType: !584, size: 64, offset: 12224)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1380, file: !1381, line: 1182, baseType: !2242, size: 128, offset: 12288)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1314, line: 76, size: 128, elements: !2243)
!2243 = !{!2244, !2249, !2250}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2242, file: !1314, line: 85, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2246, line: 7, size: 64, elements: !2247)
!2246 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !{!2248}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2245, file: !2246, line: 12, baseType: !1521, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2242, file: !1314, line: 88, baseType: !739, size: 8, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2242, file: !1314, line: 95, baseType: !739, size: 8, offset: 72)
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !1380, file: !1381, line: 1184, baseType: !2252, size: 128, offset: 12416)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1380, file: !1381, line: 1184, size: 128, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2252, file: !1381, line: 1185, baseType: !450, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2252, file: !1381, line: 1186, baseType: !625, size: 128, align: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1380, file: !1381, line: 1190, baseType: !2257, size: 64, offset: 12544)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1381, line: 53, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1380, file: !1381, line: 1192, baseType: !2260, size: 128, offset: 12608)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1314, line: 64, size: 128, elements: !2261)
!2261 = !{!2262, !2263, !2264}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2260, file: !1314, line: 65, baseType: !970, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2260, file: !1314, line: 67, baseType: !426, size: 32, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2260, file: !1314, line: 68, baseType: !426, size: 32, offset: 96)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1380, file: !1381, line: 1206, baseType: !310, size: 32, offset: 12736)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1380, file: !1381, line: 1207, baseType: !310, size: 32, offset: 12768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1380, file: !1381, line: 1209, baseType: !584, size: 64, offset: 12800)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1380, file: !1381, line: 1219, baseType: !304, size: 64, offset: 12864)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1380, file: !1381, line: 1220, baseType: !304, size: 64, offset: 12928)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1380, file: !1381, line: 1317, baseType: !310, size: 32, offset: 12992)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1380, file: !1381, line: 1319, baseType: !1379, size: 64, offset: 13056)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1380, file: !1381, line: 1322, baseType: !2273, size: 64, offset: 13120)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2275, line: 56, size: 512, elements: !2276)
!2275 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2276 = !{!2277, !2278, !2279, !2280, !2281, !2282, !2283, !2285}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2274, file: !2275, line: 57, baseType: !2273, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2274, file: !2275, line: 58, baseType: !303, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2274, file: !2275, line: 59, baseType: !584, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2274, file: !2275, line: 60, baseType: !584, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2274, file: !2275, line: 61, baseType: !1065, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2274, file: !2275, line: 62, baseType: !7, size: 32, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2274, file: !2275, line: 63, baseType: !2284, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !302, line: 153, baseType: !304)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2274, file: !2275, line: 64, baseType: !2286, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1380, file: !1381, line: 1326, baseType: !450, size: 32, offset: 13184)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1380, file: !1381, line: 1342, baseType: !303, size: 64, offset: 13248)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1380, file: !1381, line: 1343, baseType: !306, size: 64, offset: 13312)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1380, file: !1381, line: 1344, baseType: !304, size: 64, offset: 13376)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1380, file: !1381, line: 1345, baseType: !306, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1380, file: !1381, line: 1346, baseType: !306, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1380, file: !1381, line: 1347, baseType: !306, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1380, file: !1381, line: 1348, baseType: !625, size: 128, align: 64, offset: 13504)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1380, file: !1381, line: 1358, baseType: !2297, size: 34816, offset: 13824)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2298, line: 485, size: 34816, elements: !2299)
!2298 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2299 = !{!2300, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2329, !2330, !2331, !2332, !2333, !2334, !2337, !2338, !2339}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2297, file: !2298, line: 487, baseType: !2301, size: 192)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2302, size: 192, elements: !537)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2303, line: 16, size: 64, elements: !2304)
!2303 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2302, file: !2303, line: 17, baseType: !349, size: 16)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2302, file: !2303, line: 18, baseType: !349, size: 16, offset: 16)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2302, file: !2303, line: 19, baseType: !349, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2302, file: !2303, line: 19, baseType: !349, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2302, file: !2303, line: 19, baseType: !349, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2302, file: !2303, line: 19, baseType: !349, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2302, file: !2303, line: 19, baseType: !349, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2302, file: !2303, line: 20, baseType: !349, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2302, file: !2303, line: 20, baseType: !349, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2302, file: !2303, line: 20, baseType: !349, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2302, file: !2303, line: 20, baseType: !349, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2302, file: !2303, line: 20, baseType: !349, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2302, file: !2303, line: 20, baseType: !349, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2297, file: !2298, line: 491, baseType: !584, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2297, file: !2298, line: 495, baseType: !351, size: 16, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2297, file: !2298, line: 496, baseType: !351, size: 16, offset: 272)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2297, file: !2298, line: 497, baseType: !351, size: 16, offset: 288)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2297, file: !2298, line: 498, baseType: !351, size: 16, offset: 304)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2297, file: !2298, line: 502, baseType: !584, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2297, file: !2298, line: 503, baseType: !584, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2297, file: !2298, line: 514, baseType: !2326, size: 256, offset: 448)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2327, size: 256, elements: !1318)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2298, line: 483, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2297, file: !2298, line: 516, baseType: !584, size: 64, offset: 704)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2297, file: !2298, line: 518, baseType: !584, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2297, file: !2298, line: 520, baseType: !584, size: 64, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2297, file: !2298, line: 521, baseType: !584, size: 64, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2297, file: !2298, line: 522, baseType: !584, size: 64, offset: 960)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2297, file: !2298, line: 528, baseType: !2335, size: 64, offset: 1024)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2298, line: 10, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2297, file: !2298, line: 535, baseType: !584, size: 64, offset: 1088)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2297, file: !2298, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2297, file: !2298, line: 540, baseType: !2340, size: 33280, offset: 1536)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2341, line: 317, size: 33280, elements: !2342)
!2341 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2342 = !{!2343, !2344, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2340, file: !2341, line: 330, baseType: !7, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2340, file: !2341, line: 337, baseType: !584, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2340, file: !2341, line: 348, baseType: !2346, size: 32768, offset: 512)
!2346 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2341, line: 304, size: 32768, elements: !2347)
!2347 = !{!2348, !2363, !2402, !2452, !2465}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2346, file: !2341, line: 305, baseType: !2349, size: 896)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2341, line: 12, size: 896, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2362}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2349, file: !2341, line: 13, baseType: !425, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2349, file: !2341, line: 14, baseType: !425, size: 32, offset: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2349, file: !2341, line: 15, baseType: !425, size: 32, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2349, file: !2341, line: 16, baseType: !425, size: 32, offset: 96)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2349, file: !2341, line: 17, baseType: !425, size: 32, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2349, file: !2341, line: 18, baseType: !425, size: 32, offset: 160)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2349, file: !2341, line: 19, baseType: !425, size: 32, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2349, file: !2341, line: 22, baseType: !2359, size: 640, offset: 224)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 640, elements: !2360)
!2360 = !{!2361}
!2361 = !DISubrange(count: 20)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2349, file: !2341, line: 25, baseType: !425, size: 32, offset: 864)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2346, file: !2341, line: 306, baseType: !2364, size: 4096, align: 128)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2341, line: 34, size: 4096, align: 128, elements: !2365)
!2365 = !{!2366, !2367, !2368, !2369, !2370, !2385, !2386, !2387, !2391, !2393, !2397}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2364, file: !2341, line: 35, baseType: !349, size: 16)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2364, file: !2341, line: 36, baseType: !349, size: 16, offset: 16)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2364, file: !2341, line: 37, baseType: !349, size: 16, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2364, file: !2341, line: 38, baseType: !349, size: 16, offset: 48)
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !2341, line: 39, baseType: !2371, size: 128, offset: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2364, file: !2341, line: 39, size: 128, elements: !2372)
!2372 = !{!2373, !2378}
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !2341, line: 40, baseType: !2374, size: 128)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2371, file: !2341, line: 40, size: 128, elements: !2375)
!2375 = !{!2376, !2377}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2374, file: !2341, line: 41, baseType: !304, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2374, file: !2341, line: 42, baseType: !304, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !2341, line: 44, baseType: !2379, size: 128)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2371, file: !2341, line: 44, size: 128, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2379, file: !2341, line: 45, baseType: !425, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2379, file: !2341, line: 46, baseType: !425, size: 32, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2379, file: !2341, line: 47, baseType: !425, size: 32, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2379, file: !2341, line: 48, baseType: !425, size: 32, offset: 96)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2364, file: !2341, line: 51, baseType: !425, size: 32, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2364, file: !2341, line: 52, baseType: !425, size: 32, offset: 224)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2364, file: !2341, line: 55, baseType: !2388, size: 1024, offset: 256)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 1024, elements: !2389)
!2389 = !{!2390}
!2390 = !DISubrange(count: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2364, file: !2341, line: 58, baseType: !2392, size: 2048, offset: 1280)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 2048, elements: !541)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2364, file: !2341, line: 60, baseType: !2394, size: 384, offset: 3328)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 384, elements: !2395)
!2395 = !{!2396}
!2396 = !DISubrange(count: 12)
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !2341, line: 62, baseType: !2398, size: 384, offset: 3712)
!2398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2364, file: !2341, line: 62, size: 384, elements: !2399)
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2398, file: !2341, line: 63, baseType: !2394, size: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2398, file: !2341, line: 64, baseType: !2394, size: 384)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2346, file: !2341, line: 307, baseType: !2403, size: 1088)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2341, line: 79, size: 1088, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2451}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2403, file: !2341, line: 80, baseType: !425, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2403, file: !2341, line: 81, baseType: !425, size: 32, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2403, file: !2341, line: 82, baseType: !425, size: 32, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2403, file: !2341, line: 83, baseType: !425, size: 32, offset: 96)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2403, file: !2341, line: 84, baseType: !425, size: 32, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2403, file: !2341, line: 85, baseType: !425, size: 32, offset: 160)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2403, file: !2341, line: 86, baseType: !425, size: 32, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2403, file: !2341, line: 88, baseType: !2359, size: 640, offset: 224)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2403, file: !2341, line: 89, baseType: !357, size: 8, offset: 864)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2403, file: !2341, line: 90, baseType: !357, size: 8, offset: 872)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2403, file: !2341, line: 91, baseType: !357, size: 8, offset: 880)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2403, file: !2341, line: 92, baseType: !357, size: 8, offset: 888)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2403, file: !2341, line: 93, baseType: !357, size: 8, offset: 896)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2403, file: !2341, line: 94, baseType: !357, size: 8, offset: 904)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2403, file: !2341, line: 95, baseType: !2420, size: 64, offset: 960)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2422, line: 11, size: 128, elements: !2423)
!2422 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2423 = !{!2424, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2421, file: !2422, line: 12, baseType: !311, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2421, file: !2422, line: 13, baseType: !2426, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2428, line: 56, size: 1344, elements: !2429)
!2428 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2427, file: !2428, line: 61, baseType: !584, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2427, file: !2428, line: 62, baseType: !584, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2427, file: !2428, line: 63, baseType: !584, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2427, file: !2428, line: 64, baseType: !584, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2427, file: !2428, line: 65, baseType: !584, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2427, file: !2428, line: 66, baseType: !584, size: 64, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2427, file: !2428, line: 68, baseType: !584, size: 64, offset: 384)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2427, file: !2428, line: 69, baseType: !584, size: 64, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2427, file: !2428, line: 70, baseType: !584, size: 64, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2427, file: !2428, line: 71, baseType: !584, size: 64, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2427, file: !2428, line: 72, baseType: !584, size: 64, offset: 640)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2427, file: !2428, line: 73, baseType: !584, size: 64, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2427, file: !2428, line: 74, baseType: !584, size: 64, offset: 768)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2427, file: !2428, line: 75, baseType: !584, size: 64, offset: 832)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2427, file: !2428, line: 76, baseType: !584, size: 64, offset: 896)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2427, file: !2428, line: 81, baseType: !584, size: 64, offset: 960)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2427, file: !2428, line: 83, baseType: !584, size: 64, offset: 1024)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2427, file: !2428, line: 84, baseType: !584, size: 64, offset: 1088)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2427, file: !2428, line: 85, baseType: !584, size: 64, offset: 1152)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2427, file: !2428, line: 86, baseType: !584, size: 64, offset: 1216)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2427, file: !2428, line: 87, baseType: !584, size: 64, offset: 1280)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2403, file: !2341, line: 96, baseType: !425, size: 32, offset: 1024)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2346, file: !2341, line: 308, baseType: !2453, size: 4608, align: 512)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2341, line: 289, size: 4608, align: 512, elements: !2454)
!2454 = !{!2455, !2456, !2463}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2453, file: !2341, line: 290, baseType: !2364, size: 4096, align: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2453, file: !2341, line: 291, baseType: !2457, size: 512, offset: 4096)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2341, line: 268, size: 512, elements: !2458)
!2458 = !{!2459, !2460, !2461}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2457, file: !2341, line: 269, baseType: !304, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2457, file: !2341, line: 270, baseType: !304, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2457, file: !2341, line: 271, baseType: !2462, size: 384, offset: 128)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 384, elements: !475)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2453, file: !2341, line: 292, baseType: !2464, offset: 4608)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, elements: !1880)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2346, file: !2341, line: 309, baseType: !2466, size: 32768)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 32768, elements: !2467)
!2467 = !{!2468}
!2468 = !DISubrange(count: 4096)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1376, file: !972, line: 378, baseType: !2470, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1372, file: !972, line: 384, baseType: !1661, size: 192, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1221, file: !972, line: 500, baseType: !496, offset: 6656)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1221, file: !972, line: 501, baseType: !2474, size: 64, offset: 6656)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !972, line: 387, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1221, file: !972, line: 516, baseType: !1870, size: 64, offset: 6720)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1221, file: !972, line: 519, baseType: !612, size: 64, offset: 6784)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1221, file: !972, line: 521, baseType: !2479, size: 64, offset: 6848)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !972, line: 521, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1221, file: !972, line: 545, baseType: !455, size: 32, offset: 6912)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1221, file: !972, line: 548, baseType: !739, size: 8, offset: 6944)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1221, file: !972, line: 550, baseType: !2484, offset: 6952)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2485, line: 142, elements: !510)
!2485 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1221, file: !972, line: 554, baseType: !2116, size: 256, offset: 6976)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1221, file: !972, line: 557, baseType: !425, size: 32, offset: 7232)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1218, file: !972, line: 565, baseType: !2489, offset: 7296)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, elements: !2490)
!2490 = !{!2491}
!2491 = !DISubrange(count: -1)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1214, file: !972, line: 151, baseType: !455, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1207, file: !972, line: 156, baseType: !496, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !972, line: 159, baseType: !2495, size: 128)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !972, line: 159, size: 128, elements: !2496)
!2496 = !{!2497, !2500}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2495, file: !972, line: 161, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !972, line: 161, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2495, file: !972, line: 162, baseType: !303, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !976, file: !972, line: 176, baseType: !625, size: 128, align: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !972, line: 179, baseType: !2503, size: 32, offset: 384)
!2503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !971, file: !972, line: 179, size: 32, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2503, file: !972, line: 184, baseType: !455, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2503, file: !972, line: 192, baseType: !7, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2503, file: !972, line: 194, baseType: !7, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2503, file: !972, line: 195, baseType: !310, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !971, file: !972, line: 199, baseType: !455, size: 32, offset: 416)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !906, file: !208, line: 1964, baseType: !2511, size: 64, offset: 1344)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!311, !848, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2516, line: 12, size: 256, elements: !2517)
!2516 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2517 = !{!2518, !2519, !2520, !2521, !2522}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2515, file: !2516, line: 13, baseType: !301, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2515, file: !2516, line: 16, baseType: !310, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2515, file: !2516, line: 23, baseType: !584, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2515, file: !2516, line: 30, baseType: !584, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2515, file: !2516, line: 33, baseType: !2523, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !972, line: 27, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !906, file: !208, line: 1966, baseType: !2511, size: 64, offset: 1408)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !849, file: !208, line: 1424, baseType: !2527, size: 64, offset: 448)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2530)
!2530 = !{!2531, !2577, !2581, !2585, !2586, !2587, !2588, !2589, !2594, !2599, !2603}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2529, file: !202, line: 323, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!310, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2562, !2563, !2564}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2536, file: !202, line: 295, baseType: !888, size: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2536, file: !202, line: 296, baseType: !466, size: 128, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2536, file: !202, line: 297, baseType: !466, size: 128, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2536, file: !202, line: 298, baseType: !466, size: 128, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2536, file: !202, line: 299, baseType: !1336, size: 192, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2536, file: !202, line: 300, baseType: !496, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2536, file: !202, line: 301, baseType: !455, size: 32, offset: 704)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2536, file: !202, line: 302, baseType: !848, size: 64, offset: 768)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2536, file: !202, line: 303, baseType: !2547, size: 64, offset: 832)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2548)
!2548 = !{!2549, !2561}
!2549 = !DIDerivedType(tag: DW_TAG_member, scope: !2547, file: !202, line: 69, baseType: !2550, size: 32)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2547, file: !202, line: 69, size: 32, elements: !2551)
!2551 = !{!2552, !2553, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2550, file: !202, line: 70, baseType: !687, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2550, file: !202, line: 71, baseType: !695, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2550, file: !202, line: 72, baseType: !2555, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2556, line: 24, baseType: !2557)
!2556 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2556, line: 22, size: 32, elements: !2558)
!2558 = !{!2559}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2557, file: !2556, line: 23, baseType: !2560, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2556, line: 20, baseType: !693)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2547, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2536, file: !202, line: 304, baseType: !780, size: 64, offset: 896)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2536, file: !202, line: 305, baseType: !584, size: 64, offset: 960)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2536, file: !202, line: 306, baseType: !2565, size: 576, offset: 1024)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2566)
!2566 = !{!2567, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2565, file: !202, line: 206, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !782)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2565, file: !202, line: 207, baseType: !2568, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2565, file: !202, line: 208, baseType: !2568, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2565, file: !202, line: 209, baseType: !2568, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2565, file: !202, line: 210, baseType: !2568, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2565, file: !202, line: 211, baseType: !2568, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2565, file: !202, line: 212, baseType: !2568, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2565, file: !202, line: 213, baseType: !788, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2565, file: !202, line: 214, baseType: !788, size: 64, offset: 512)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2529, file: !202, line: 324, baseType: !2578, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!2535, !848, !310}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2529, file: !202, line: 325, baseType: !2582, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !2535}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2529, file: !202, line: 326, baseType: !2532, size: 64, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2529, file: !202, line: 327, baseType: !2532, size: 64, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2529, file: !202, line: 328, baseType: !2532, size: 64, offset: 320)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2529, file: !202, line: 329, baseType: !934, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2529, file: !202, line: 332, baseType: !2590, size: 64, offset: 448)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!2593, !681}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2529, file: !202, line: 333, baseType: !2595, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!310, !681, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2529, file: !202, line: 335, baseType: !2600, size: 64, offset: 576)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!310, !681, !2593}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2529, file: !202, line: 337, baseType: !2604, size: 64, offset: 640)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!310, !848, !2607}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !849, file: !208, line: 1425, baseType: !2609, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2611)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2612)
!2612 = !{!2613, !2617, !2618, !2622, !2623, !2624, !2639, !2662, !2666, !2667, !2690}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2611, file: !202, line: 429, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!310, !848, !310, !310, !798}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2611, file: !202, line: 430, baseType: !934, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2611, file: !202, line: 431, baseType: !2619, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!310, !848, !7}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2611, file: !202, line: 432, baseType: !2619, size: 64, offset: 192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2611, file: !202, line: 433, baseType: !934, size: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2611, file: !202, line: 434, baseType: !2625, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!310, !848, !310, !2628}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2629, file: !202, line: 416, baseType: !310, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2629, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2629, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2629, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2629, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2629, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2629, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2629, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2611, file: !202, line: 435, baseType: !2640, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!310, !848, !2547, !2643}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2644, file: !202, line: 344, baseType: !310, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2644, file: !202, line: 345, baseType: !304, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2644, file: !202, line: 346, baseType: !304, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2644, file: !202, line: 347, baseType: !304, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2644, file: !202, line: 348, baseType: !304, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2644, file: !202, line: 349, baseType: !304, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2644, file: !202, line: 350, baseType: !304, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2644, file: !202, line: 351, baseType: !1022, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2644, file: !202, line: 353, baseType: !1022, size: 64, offset: 512)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2644, file: !202, line: 354, baseType: !310, size: 32, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2644, file: !202, line: 355, baseType: !310, size: 32, offset: 608)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2644, file: !202, line: 356, baseType: !304, size: 64, offset: 640)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2644, file: !202, line: 357, baseType: !304, size: 64, offset: 704)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2644, file: !202, line: 358, baseType: !304, size: 64, offset: 768)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2644, file: !202, line: 359, baseType: !1022, size: 64, offset: 832)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2644, file: !202, line: 360, baseType: !310, size: 32, offset: 896)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2611, file: !202, line: 436, baseType: !2663, size: 64, offset: 448)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!310, !848, !2607, !2643}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2611, file: !202, line: 438, baseType: !2640, size: 64, offset: 512)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2611, file: !202, line: 439, baseType: !2668, size: 64, offset: 576)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!310, !848, !2671}
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2673)
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2672, file: !202, line: 410, baseType: !7, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2672, file: !202, line: 411, baseType: !2676, size: 1344, offset: 64)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2677, size: 1344, elements: !537)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2689}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2677, file: !202, line: 396, baseType: !7, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2677, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2677, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2677, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2677, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2677, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2677, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2677, file: !202, line: 404, baseType: !308, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2677, file: !202, line: 405, baseType: !2688, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !302, line: 126, baseType: !304)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2677, file: !202, line: 406, baseType: !2688, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2611, file: !202, line: 440, baseType: !2619, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !849, file: !208, line: 1426, baseType: !2692, size: 64, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2694)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !849, file: !208, line: 1427, baseType: !584, size: 64, offset: 640)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !849, file: !208, line: 1428, baseType: !584, size: 64, offset: 704)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !849, file: !208, line: 1429, baseType: !584, size: 64, offset: 768)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !849, file: !208, line: 1430, baseType: !642, size: 64, offset: 832)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !849, file: !208, line: 1431, baseType: !1012, size: 256, offset: 896)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !849, file: !208, line: 1432, baseType: !310, size: 32, offset: 1152)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !849, file: !208, line: 1433, baseType: !455, size: 32, offset: 1184)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !849, file: !208, line: 1437, baseType: !2703, size: 64, offset: 1216)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2706)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !849, file: !208, line: 1449, baseType: !2708, size: 64, offset: 1280)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !658, line: 34, size: 64, elements: !2709)
!2709 = !{!2710}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2708, file: !658, line: 35, baseType: !661, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !849, file: !208, line: 1450, baseType: !466, size: 128, offset: 1344)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !849, file: !208, line: 1451, baseType: !2713, size: 64, offset: 1472)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !849, file: !208, line: 1452, baseType: !2082, size: 64, offset: 1536)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !849, file: !208, line: 1453, baseType: !2717, size: 64, offset: 1600)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !849, file: !208, line: 1454, baseType: !888, size: 128, offset: 1664)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !849, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !849, file: !208, line: 1456, baseType: !2722, size: 2432, offset: 1856)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2723)
!2723 = !{!2724, !2725, !2726, !2728, !2760}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2722, file: !202, line: 519, baseType: !7, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2722, file: !202, line: 520, baseType: !1012, size: 256, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2722, file: !202, line: 521, baseType: !2727, size: 192, offset: 320)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 192, elements: !537)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2722, file: !202, line: 522, baseType: !2729, size: 1728, offset: 512)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2730, size: 1728, elements: !537)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2731)
!2731 = !{!2732, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2730, file: !202, line: 223, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2735)
!2735 = !{!2736, !2737, !2750, !2751}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2734, file: !202, line: 444, baseType: !310, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2734, file: !202, line: 445, baseType: !2738, size: 64, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2740)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2740, file: !202, line: 311, baseType: !934, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2740, file: !202, line: 312, baseType: !934, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2740, file: !202, line: 313, baseType: !934, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2740, file: !202, line: 314, baseType: !934, size: 64, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2740, file: !202, line: 315, baseType: !2532, size: 64, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2740, file: !202, line: 316, baseType: !2532, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2740, file: !202, line: 317, baseType: !2532, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2740, file: !202, line: 318, baseType: !2604, size: 64, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2734, file: !202, line: 446, baseType: !324, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2734, file: !202, line: 447, baseType: !2733, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2730, file: !202, line: 224, baseType: !310, size: 32, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2730, file: !202, line: 226, baseType: !466, size: 128, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2730, file: !202, line: 227, baseType: !584, size: 64, offset: 256)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2730, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2730, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2730, file: !202, line: 230, baseType: !2568, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2730, file: !202, line: 231, baseType: !2568, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2730, file: !202, line: 232, baseType: !303, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2722, file: !202, line: 523, baseType: !2761, size: 192, offset: 2240)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2738, size: 192, elements: !537)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !849, file: !208, line: 1458, baseType: !2763, size: 2112, offset: 4288)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2764)
!2764 = !{!2765, !2766, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2763, file: !208, line: 1411, baseType: !310, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2763, file: !208, line: 1412, baseType: !1640, size: 128, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2763, file: !208, line: 1413, baseType: !2768, size: 1920, offset: 192)
!2768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2769, size: 1920, elements: !537)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2770, line: 12, size: 640, elements: !2771)
!2770 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2771 = !{!2772, !2780, !2781, !2786, !2787}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2769, file: !2770, line: 13, baseType: !2773, size: 320)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2774, line: 17, size: 320, elements: !2775)
!2774 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2775 = !{!2776, !2777, !2778, !2779}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2773, file: !2774, line: 18, baseType: !310, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2773, file: !2774, line: 19, baseType: !310, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2773, file: !2774, line: 20, baseType: !1640, size: 128, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2773, file: !2774, line: 22, baseType: !625, size: 128, align: 64, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2769, file: !2770, line: 14, baseType: !379, size: 64, offset: 320)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2769, file: !2770, line: 15, baseType: !2782, size: 64, offset: 384)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2783, line: 16, size: 64, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2782, file: !2783, line: 17, baseType: !1379, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2769, file: !2770, line: 16, baseType: !1640, size: 128, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2769, file: !2770, line: 17, baseType: !455, size: 32, offset: 576)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !849, file: !208, line: 1465, baseType: !303, size: 64, offset: 6400)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !849, file: !208, line: 1468, baseType: !425, size: 32, offset: 6464)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !849, file: !208, line: 1470, baseType: !788, size: 64, offset: 6528)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !849, file: !208, line: 1471, baseType: !788, size: 64, offset: 6592)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !849, file: !208, line: 1473, baseType: !426, size: 32, offset: 6656)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !849, file: !208, line: 1474, baseType: !2794, size: 64, offset: 6720)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !849, file: !208, line: 1477, baseType: !2797, size: 256, offset: 6784)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 256, elements: !2389)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !849, file: !208, line: 1478, baseType: !2799, size: 128, offset: 7040)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2800, line: 18, baseType: !2801)
!2800 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2800, line: 16, size: 128, elements: !2802)
!2802 = !{!2803}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2801, file: !2800, line: 17, baseType: !2804, size: 128)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 128, elements: !1892)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !849, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !849, file: !208, line: 1481, baseType: !2807, size: 32, offset: 7200)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !302, line: 150, baseType: !7)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !849, file: !208, line: 1487, baseType: !1336, size: 192, offset: 7232)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !849, file: !208, line: 1493, baseType: !320, size: 64, offset: 7424)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !849, file: !208, line: 1495, baseType: !2811, size: 64, offset: 7488)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2813)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !640, line: 135, size: 1024, align: 512, elements: !2814)
!2814 = !{!2815, !2819, !2820, !2827, !2833, !2837, !2841, !2845, !2846, !2850, !2854, !2859, !2863}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2813, file: !640, line: 136, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!310, !642, !7}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2813, file: !640, line: 137, baseType: !2816, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2813, file: !640, line: 138, baseType: !2821, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!310, !2824, !2826}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2813, file: !640, line: 139, baseType: !2828, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!310, !2824, !7, !320, !2831}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2813, file: !640, line: 141, baseType: !2834, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!310, !2824}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2813, file: !640, line: 142, baseType: !2838, size: 64, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!310, !642}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2813, file: !640, line: 143, baseType: !2842, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !642}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2813, file: !640, line: 144, baseType: !2842, size: 64, offset: 448)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2813, file: !640, line: 145, baseType: !2847, size: 64, offset: 512)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !642, !681}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2813, file: !640, line: 146, baseType: !2851, size: 64, offset: 576)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!342, !642, !342, !310}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2813, file: !640, line: 147, baseType: !2855, size: 64, offset: 640)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!638, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2813, file: !640, line: 148, baseType: !2860, size: 64, offset: 704)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!310, !798, !739}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2813, file: !640, line: 149, baseType: !2864, size: 64, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!642, !642, !2867}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !849, file: !208, line: 1500, baseType: !310, size: 32, offset: 7552)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !849, file: !208, line: 1502, baseType: !2871, size: 448, offset: 7616)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2516, line: 60, size: 448, elements: !2872)
!2872 = !{!2873, !2878, !2879, !2880, !2881, !2882, !2883}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2871, file: !2516, line: 61, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!584, !2877, !2514}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2871, file: !2516, line: 63, baseType: !2874, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2871, file: !2516, line: 66, baseType: !311, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2871, file: !2516, line: 67, baseType: !310, size: 32, offset: 192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2516, line: 68, baseType: !7, size: 32, offset: 224)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2871, file: !2516, line: 71, baseType: !466, size: 128, offset: 256)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2871, file: !2516, line: 77, baseType: !2884, size: 64, offset: 384)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !849, file: !208, line: 1505, baseType: !1016, size: 64, offset: 8064)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !849, file: !208, line: 1508, baseType: !1016, size: 64, offset: 8128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !849, file: !208, line: 1511, baseType: !310, size: 32, offset: 8192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !849, file: !208, line: 1514, baseType: !1152, size: 32, offset: 8224)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !849, file: !208, line: 1517, baseType: !2890, size: 64, offset: 8256)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2117, line: 18, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !849, file: !208, line: 1518, baseType: !884, size: 64, offset: 8320)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !849, file: !208, line: 1525, baseType: !1870, size: 64, offset: 8384)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !849, file: !208, line: 1532, baseType: !2895, size: 64, offset: 8448)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2896, line: 52, size: 64, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2895, file: !2896, line: 53, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2896, line: 40, size: 256, elements: !2901)
!2901 = !{!2902, !2903, !2908}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2900, file: !2896, line: 42, baseType: !496)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2900, file: !2896, line: 44, baseType: !2904, size: 192)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2896, line: 28, size: 192, elements: !2905)
!2905 = !{!2906, !2907}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2904, file: !2896, line: 29, baseType: !466, size: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2904, file: !2896, line: 31, baseType: !311, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2900, file: !2896, line: 49, baseType: !311, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !849, file: !208, line: 1533, baseType: !2895, size: 64, offset: 8512)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !849, file: !208, line: 1534, baseType: !625, size: 128, align: 64, offset: 8576)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !849, file: !208, line: 1535, baseType: !2116, size: 256, offset: 8704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !849, file: !208, line: 1537, baseType: !1336, size: 192, offset: 8960)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !849, file: !208, line: 1542, baseType: !310, size: 32, offset: 9152)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !849, file: !208, line: 1545, baseType: !496, offset: 9184)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !849, file: !208, line: 1546, baseType: !466, size: 128, offset: 9216)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !849, file: !208, line: 1548, baseType: !496, offset: 9344)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !849, file: !208, line: 1549, baseType: !466, size: 128, offset: 9344)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !682, file: !208, line: 624, baseType: !983, size: 64, offset: 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !682, file: !208, line: 631, baseType: !584, size: 64, offset: 320)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !208, line: 639, baseType: !2921, size: 32, offset: 384)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !208, line: 639, size: 32, elements: !2922)
!2922 = !{!2923, !2925}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2921, file: !208, line: 640, baseType: !2924, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2921, file: !208, line: 641, baseType: !7, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !682, file: !208, line: 643, baseType: !762, size: 32, offset: 416)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !682, file: !208, line: 644, baseType: !780, size: 64, offset: 448)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !682, file: !208, line: 645, baseType: !784, size: 128, offset: 512)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !682, file: !208, line: 646, baseType: !784, size: 128, offset: 640)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !682, file: !208, line: 647, baseType: !784, size: 128, offset: 768)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !682, file: !208, line: 648, baseType: !496, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !682, file: !208, line: 649, baseType: !351, size: 16, offset: 896)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !682, file: !208, line: 650, baseType: !357, size: 8, offset: 912)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !682, file: !208, line: 651, baseType: !357, size: 8, offset: 920)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !682, file: !208, line: 652, baseType: !2688, size: 64, offset: 960)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !682, file: !208, line: 659, baseType: !584, size: 64, offset: 1024)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !682, file: !208, line: 660, baseType: !1012, size: 256, offset: 1088)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !682, file: !208, line: 662, baseType: !584, size: 64, offset: 1344)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !682, file: !208, line: 663, baseType: !584, size: 64, offset: 1408)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !682, file: !208, line: 665, baseType: !888, size: 128, offset: 1472)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !682, file: !208, line: 666, baseType: !466, size: 128, offset: 1600)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !682, file: !208, line: 675, baseType: !466, size: 128, offset: 1728)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !682, file: !208, line: 676, baseType: !466, size: 128, offset: 1856)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !682, file: !208, line: 677, baseType: !466, size: 128, offset: 1984)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !208, line: 678, baseType: !2946, size: 128, offset: 2112)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !208, line: 678, size: 128, elements: !2947)
!2947 = !{!2948, !2949}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2946, file: !208, line: 679, baseType: !884, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2946, file: !208, line: 680, baseType: !625, size: 128, align: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !682, file: !208, line: 682, baseType: !1018, size: 64, offset: 2240)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !682, file: !208, line: 683, baseType: !1018, size: 64, offset: 2304)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !682, file: !208, line: 684, baseType: !455, size: 32, offset: 2368)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !682, file: !208, line: 685, baseType: !455, size: 32, offset: 2400)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !682, file: !208, line: 686, baseType: !455, size: 32, offset: 2432)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !682, file: !208, line: 688, baseType: !455, size: 32, offset: 2464)
!2956 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !208, line: 690, baseType: !2957, size: 64, offset: 2496)
!2957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !208, line: 690, size: 64, elements: !2958)
!2958 = !{!2959, !3191}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2957, file: !208, line: 691, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2962)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !2963)
!2963 = !{!2964, !2965, !2969, !2974, !2978, !2979, !2980, !2984, !2997, !2998, !3015, !3019, !3020, !3024, !3025, !3029, !3034, !3035, !3039, !3043, !3151, !3155, !3156, !3160, !3161, !3165, !3169, !3174, !3178, !3182, !3186, !3190}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2962, file: !208, line: 1823, baseType: !324, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2962, file: !208, line: 1824, baseType: !2966, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!780, !612, !780, !310}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2962, file: !208, line: 1825, baseType: !2970, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!567, !612, !342, !581, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2962, file: !208, line: 1826, baseType: !2975, size: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!567, !612, !320, !581, !2973}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2962, file: !208, line: 1827, baseType: !1089, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2962, file: !208, line: 1828, baseType: !1089, size: 64, offset: 320)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2962, file: !208, line: 1829, baseType: !2981, size: 64, offset: 384)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!310, !1092, !739}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2962, file: !208, line: 1830, baseType: !2985, size: 64, offset: 448)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!310, !612, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !2990)
!2990 = !{!2991, !2996}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2989, file: !208, line: 1777, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !2993)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!310, !2988, !320, !310, !780, !304, !7}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2989, file: !208, line: 1778, baseType: !780, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2962, file: !208, line: 1831, baseType: !2985, size: 64, offset: 512)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2962, file: !208, line: 1832, baseType: !2999, size: 64, offset: 576)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!3002, !612, !3004}
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3003, line: 52, baseType: !7)
!3003 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3006, line: 43, size: 128, elements: !3007)
!3006 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3007 = !{!3008, !3014}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3005, file: !3006, line: 44, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3006, line: 37, baseType: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !612, !3013, !3004}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3005, file: !3006, line: 45, baseType: !3002, size: 32, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2962, file: !208, line: 1833, baseType: !3016, size: 64, offset: 640)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!311, !612, !7, !584}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2962, file: !208, line: 1834, baseType: !3016, size: 64, offset: 704)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2962, file: !208, line: 1835, baseType: !3021, size: 64, offset: 768)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!310, !612, !1224}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2962, file: !208, line: 1836, baseType: !584, size: 64, offset: 832)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2962, file: !208, line: 1837, baseType: !3026, size: 64, offset: 896)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!310, !681, !612}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2962, file: !208, line: 1838, baseType: !3030, size: 64, offset: 960)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!310, !612, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !303)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2962, file: !208, line: 1839, baseType: !3026, size: 64, offset: 1024)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2962, file: !208, line: 1840, baseType: !3036, size: 64, offset: 1088)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!310, !612, !780, !780, !310}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2962, file: !208, line: 1841, baseType: !3040, size: 64, offset: 1152)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!310, !310, !612, !310}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2962, file: !208, line: 1842, baseType: !3044, size: 64, offset: 1216)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!310, !612, !310, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3049)
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3081, !3082, !3083, !3096, !3127}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3048, file: !208, line: 1063, baseType: !3047, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3048, file: !208, line: 1064, baseType: !466, size: 128, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3048, file: !208, line: 1065, baseType: !888, size: 128, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3048, file: !208, line: 1066, baseType: !466, size: 128, offset: 320)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3048, file: !208, line: 1069, baseType: !466, size: 128, offset: 448)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3048, file: !208, line: 1072, baseType: !3033, size: 64, offset: 576)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3048, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3048, file: !208, line: 1074, baseType: !359, size: 8, offset: 672)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3048, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3048, file: !208, line: 1076, baseType: !310, size: 32, offset: 736)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3048, file: !208, line: 1077, baseType: !1640, size: 128, offset: 768)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3048, file: !208, line: 1078, baseType: !612, size: 64, offset: 896)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3048, file: !208, line: 1079, baseType: !780, size: 64, offset: 960)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3048, file: !208, line: 1080, baseType: !780, size: 64, offset: 1024)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3048, file: !208, line: 1082, baseType: !3065, size: 64, offset: 1088)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3067)
!3067 = !{!3068, !3076, !3077, !3078, !3079, !3080}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3066, file: !208, line: 1315, baseType: !3069)
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3070, line: 20, baseType: !3071)
!3070 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3070, line: 11, elements: !3072)
!3072 = !{!3073}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3071, file: !3070, line: 12, baseType: !3074)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !508, line: 33, baseType: !3075)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 31, elements: !510)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3066, file: !208, line: 1316, baseType: !310, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3066, file: !208, line: 1317, baseType: !310, size: 32, offset: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3066, file: !208, line: 1318, baseType: !3065, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3066, file: !208, line: 1319, baseType: !612, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3066, file: !208, line: 1320, baseType: !625, size: 128, align: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3048, file: !208, line: 1084, baseType: !584, size: 64, offset: 1152)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3048, file: !208, line: 1085, baseType: !584, size: 64, offset: 1216)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3048, file: !208, line: 1087, baseType: !3084, size: 64, offset: 1280)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3087)
!3087 = !{!3088, !3092}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3086, file: !208, line: 1012, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3047, !3047}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3086, file: !208, line: 1013, baseType: !3093, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !3047}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3048, file: !208, line: 1088, baseType: !3097, size: 64, offset: 1344)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3100)
!3100 = !{!3101, !3105, !3109, !3110, !3114, !3118, !3122, !3126}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3099, file: !208, line: 1017, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!3033, !3033}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3099, file: !208, line: 1018, baseType: !3106, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !3033}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3099, file: !208, line: 1019, baseType: !3093, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3099, file: !208, line: 1020, baseType: !3111, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!310, !3047, !310}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3099, file: !208, line: 1021, baseType: !3115, size: 64, offset: 256)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!739, !3047}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3099, file: !208, line: 1022, baseType: !3119, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!310, !3047, !310, !469}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3099, file: !208, line: 1023, baseType: !3123, size: 64, offset: 384)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !3047, !1066}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3099, file: !208, line: 1024, baseType: !3115, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3048, file: !208, line: 1097, baseType: !3128, size: 256, offset: 1408)
!3128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3048, file: !208, line: 1089, size: 256, elements: !3129)
!3129 = !{!3130, !3139, !3145}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3128, file: !208, line: 1090, baseType: !3131, size: 256)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3132, line: 10, size: 256, elements: !3133)
!3132 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3133 = !{!3134, !3135, !3138}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3131, file: !3132, line: 11, baseType: !425, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3131, file: !3132, line: 12, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3132, line: 5, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3131, file: !3132, line: 13, baseType: !466, size: 128, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3128, file: !208, line: 1091, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3132, line: 17, size: 64, elements: !3141)
!3141 = !{!3142}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3140, file: !3132, line: 18, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3132, line: 16, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3128, file: !208, line: 1096, baseType: !3146, size: 192)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3128, file: !208, line: 1092, size: 192, elements: !3147)
!3147 = !{!3148, !3149, !3150}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3146, file: !208, line: 1093, baseType: !466, size: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3146, file: !208, line: 1094, baseType: !310, size: 32, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3146, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2962, file: !208, line: 1843, baseType: !3152, size: 64, offset: 1280)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!567, !612, !970, !310, !581, !2973, !310}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2962, file: !208, line: 1844, baseType: !1264, size: 64, offset: 1344)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2962, file: !208, line: 1845, baseType: !3157, size: 64, offset: 1408)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!310, !310}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2962, file: !208, line: 1846, baseType: !3044, size: 64, offset: 1472)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2962, file: !208, line: 1847, baseType: !3162, size: 64, offset: 1536)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!567, !2257, !612, !2973, !581, !7}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2962, file: !208, line: 1848, baseType: !3166, size: 64, offset: 1600)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!567, !612, !2973, !2257, !581, !7}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2962, file: !208, line: 1849, baseType: !3170, size: 64, offset: 1664)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!310, !612, !311, !3173, !1066}
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2962, file: !208, line: 1850, baseType: !3175, size: 64, offset: 1728)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!311, !612, !310, !780, !780}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2962, file: !208, line: 1852, baseType: !3179, size: 64, offset: 1792)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !960, !612}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2962, file: !208, line: 1856, baseType: !3183, size: 64, offset: 1856)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!567, !612, !780, !612, !780, !581, !7}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2962, file: !208, line: 1858, baseType: !3187, size: 64, offset: 1920)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!780, !612, !780, !612, !780, !780, !7}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2962, file: !208, line: 1861, baseType: !3036, size: 64, offset: 1984)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2957, file: !208, line: 692, baseType: !913, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !682, file: !208, line: 694, baseType: !3193, size: 64, offset: 2560)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3199}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3194, file: !208, line: 1101, baseType: !496)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3194, file: !208, line: 1102, baseType: !466, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3194, file: !208, line: 1103, baseType: !466, size: 128, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3194, file: !208, line: 1104, baseType: !466, size: 128, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !682, file: !208, line: 695, baseType: !984, size: 1216, align: 64, offset: 2624)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !682, file: !208, line: 696, baseType: !466, size: 128, offset: 3840)
!3202 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !208, line: 697, baseType: !3203, size: 64, offset: 3968)
!3203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !208, line: 697, size: 64, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3218, !3219}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3203, file: !208, line: 698, baseType: !2257, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3203, file: !208, line: 699, baseType: !2713, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3203, file: !208, line: 700, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3210, line: 14, size: 832, elements: !3211)
!3210 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3209, file: !3210, line: 15, baseType: !483, size: 512)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3209, file: !3210, line: 16, baseType: !324, size: 64, offset: 512)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3209, file: !3210, line: 17, baseType: !2960, size: 64, offset: 576)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3209, file: !3210, line: 18, baseType: !466, size: 128, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3209, file: !3210, line: 19, baseType: !762, size: 32, offset: 768)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3209, file: !3210, line: 20, baseType: !7, size: 32, offset: 800)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3203, file: !208, line: 701, baseType: !342, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3203, file: !208, line: 702, baseType: !7, size: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !682, file: !208, line: 705, baseType: !426, size: 32, offset: 4032)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !682, file: !208, line: 708, baseType: !426, size: 32, offset: 4064)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !682, file: !208, line: 709, baseType: !2794, size: 64, offset: 4096)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !682, file: !208, line: 720, baseType: !303, size: 64, offset: 4160)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !643, file: !640, line: 98, baseType: !3225, size: 256, offset: 448)
!3225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !2389)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !643, file: !640, line: 101, baseType: !3227, size: 32, offset: 704)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3228, line: 25, size: 32, elements: !3229)
!3228 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3229 = !{!3230}
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !3227, file: !3228, line: 26, baseType: !3231, size: 32)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3227, file: !3228, line: 26, size: 32, elements: !3232)
!3232 = !{!3233}
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !3231, file: !3228, line: 30, baseType: !3234, size: 32)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3231, file: !3228, line: 30, size: 32, elements: !3235)
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3234, file: !3228, line: 31, baseType: !496)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3234, file: !3228, line: 32, baseType: !310, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !643, file: !640, line: 102, baseType: !2811, size: 64, offset: 768)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !643, file: !640, line: 103, baseType: !848, size: 64, offset: 832)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !643, file: !640, line: 104, baseType: !584, size: 64, offset: 896)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !643, file: !640, line: 105, baseType: !303, size: 64, offset: 960)
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !640, line: 107, baseType: !3243, size: 128, offset: 1024)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !640, line: 107, size: 128, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3243, file: !640, line: 108, baseType: !466, size: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3243, file: !640, line: 109, baseType: !3013, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !643, file: !640, line: 111, baseType: !466, size: 128, offset: 1152)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !643, file: !640, line: 112, baseType: !466, size: 128, offset: 1280)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !643, file: !640, line: 120, baseType: !3250, size: 128, offset: 1408)
!3250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !640, line: 116, size: 128, elements: !3251)
!3251 = !{!3252, !3253, !3254}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3250, file: !640, line: 117, baseType: !888, size: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3250, file: !640, line: 118, baseType: !657, size: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3250, file: !640, line: 119, baseType: !625, size: 128, align: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !613, file: !208, line: 922, baseType: !681, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !613, file: !208, line: 923, baseType: !2960, size: 64, offset: 320)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !613, file: !208, line: 929, baseType: !496, offset: 384)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !613, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !613, file: !208, line: 931, baseType: !1016, size: 64, offset: 448)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !613, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !613, file: !208, line: 933, baseType: !2807, size: 32, offset: 544)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !613, file: !208, line: 934, baseType: !1336, size: 192, offset: 576)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !613, file: !208, line: 935, baseType: !780, size: 64, offset: 768)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !613, file: !208, line: 936, baseType: !3265, size: 192, offset: 832)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3265, file: !208, line: 886, baseType: !3069)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3265, file: !208, line: 887, baseType: !1630, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3265, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3265, file: !208, line: 889, baseType: !687, size: 32, offset: 96)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3265, file: !208, line: 889, baseType: !687, size: 32, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3265, file: !208, line: 890, baseType: !310, size: 32, offset: 160)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !613, file: !208, line: 937, baseType: !1706, size: 64, offset: 1024)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !613, file: !208, line: 938, baseType: !3275, size: 256, offset: 1088)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3275, file: !208, line: 897, baseType: !584, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3275, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3275, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3275, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3275, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3275, file: !208, line: 904, baseType: !780, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !613, file: !208, line: 940, baseType: !304, size: 64, offset: 1344)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !613, file: !208, line: 945, baseType: !303, size: 64, offset: 1408)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !613, file: !208, line: 949, baseType: !466, size: 128, offset: 1472)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !613, file: !208, line: 950, baseType: !466, size: 128, offset: 1600)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !613, file: !208, line: 952, baseType: !983, size: 64, offset: 1728)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !613, file: !208, line: 953, baseType: !1152, size: 32, offset: 1792)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !613, file: !208, line: 954, baseType: !1152, size: 32, offset: 1824)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !603, file: !561, line: 174, baseType: !609, size: 64, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !603, file: !561, line: 176, baseType: !3292, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!310, !612, !489, !602, !1224}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !591, file: !561, line: 90, baseType: !586, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !591, file: !561, line: 91, baseType: !3297, size: 64, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !551, file: !484, line: 143, baseType: !3299, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!3302, !489}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3304)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3305)
!3305 = !{!3306, !3307, !3311, !3315, !3321, !3325}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3304, file: !225, line: 40, baseType: !224, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3304, file: !225, line: 41, baseType: !3308, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!739}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3304, file: !225, line: 42, baseType: !3312, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!303}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3304, file: !225, line: 43, baseType: !3316, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!2286, !3319}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3304, file: !225, line: 44, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!2286}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3304, file: !225, line: 45, baseType: !344, size: 64, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !551, file: !484, line: 144, baseType: !3327, size: 64, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!2286, !489}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !551, file: !484, line: 145, baseType: !3331, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !489, !3334, !3335}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !483, file: !484, line: 70, baseType: !3337, size: 64, offset: 384)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !868, line: 123, size: 1024, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3468, !3469, !3470, !3471, !3472}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3338, file: !868, line: 124, baseType: !455, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3338, file: !868, line: 125, baseType: !455, size: 32, offset: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3338, file: !868, line: 135, baseType: !3337, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3338, file: !868, line: 136, baseType: !320, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3338, file: !868, line: 138, baseType: !1005, size: 192, align: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3338, file: !868, line: 140, baseType: !2286, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3338, file: !868, line: 141, baseType: !7, size: 32, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, scope: !3338, file: !868, line: 142, baseType: !3348, size: 256, offset: 512)
!3348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3338, file: !868, line: 142, size: 256, elements: !3349)
!3349 = !{!3350, !3396, !3400}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3348, file: !868, line: 143, baseType: !3351, size: 192)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !868, line: 91, size: 192, elements: !3352)
!3352 = !{!3353, !3354, !3355}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3351, file: !868, line: 92, baseType: !584, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3351, file: !868, line: 94, baseType: !1001, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3351, file: !868, line: 100, baseType: !3356, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !868, line: 180, size: 704, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3368, !3369, !3370, !3394, !3395}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3357, file: !868, line: 182, baseType: !3337, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !868, line: 183, baseType: !7, size: 32, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3357, file: !868, line: 186, baseType: !3362, size: 192, offset: 128)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3363, line: 19, size: 192, elements: !3364)
!3363 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3364 = !{!3365, !3366, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3362, file: !3363, line: 20, baseType: !988, size: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3362, file: !3363, line: 21, baseType: !7, size: 32, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3362, file: !3363, line: 22, baseType: !7, size: 32, offset: 160)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3357, file: !868, line: 187, baseType: !425, size: 32, offset: 320)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3357, file: !868, line: 188, baseType: !425, size: 32, offset: 352)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3357, file: !868, line: 189, baseType: !3371, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !868, line: 168, size: 320, elements: !3373)
!3373 = !{!3374, !3378, !3382, !3386, !3390}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3372, file: !868, line: 169, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!310, !960, !3356}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3372, file: !868, line: 171, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!310, !3337, !320, !576}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3372, file: !868, line: 173, baseType: !3383, size: 64, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!310, !3337}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3372, file: !868, line: 174, baseType: !3387, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!310, !3337, !3337, !320}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3372, file: !868, line: 176, baseType: !3391, size: 64, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!310, !960, !3337, !3356}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3357, file: !868, line: 192, baseType: !466, size: 128, offset: 448)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3357, file: !868, line: 194, baseType: !1640, size: 128, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3348, file: !868, line: 144, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !868, line: 103, size: 64, elements: !3398)
!3398 = !{!3399}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3397, file: !868, line: 104, baseType: !3337, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3348, file: !868, line: 145, baseType: !3401, size: 256)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !868, line: 107, size: 256, elements: !3402)
!3402 = !{!3403, !3463, !3466, !3467}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3401, file: !868, line: 108, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !868, line: 217, size: 768, elements: !3407)
!3407 = !{!3408, !3428, !3432, !3436, !3440, !3444, !3448, !3452, !3453, !3454, !3455, !3459}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3406, file: !868, line: 222, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!310, !3412}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !868, line: 197, size: 1088, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3413, file: !868, line: 199, baseType: !3337, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3413, file: !868, line: 200, baseType: !612, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3413, file: !868, line: 201, baseType: !960, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3413, file: !868, line: 202, baseType: !303, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3413, file: !868, line: 205, baseType: !1336, size: 192, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3413, file: !868, line: 206, baseType: !1336, size: 192, offset: 448)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3413, file: !868, line: 207, baseType: !310, size: 32, offset: 640)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3413, file: !868, line: 208, baseType: !466, size: 128, offset: 704)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3413, file: !868, line: 209, baseType: !342, size: 64, offset: 832)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3413, file: !868, line: 211, baseType: !581, size: 64, offset: 896)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3413, file: !868, line: 212, baseType: !739, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3413, file: !868, line: 213, baseType: !739, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3413, file: !868, line: 214, baseType: !1252, size: 64, offset: 1024)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3406, file: !868, line: 223, baseType: !3429, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{null, !3412}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3406, file: !868, line: 236, baseType: !3433, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!310, !960, !303}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3406, file: !868, line: 238, baseType: !3437, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!303, !960, !2973}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3406, file: !868, line: 239, baseType: !3441, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!303, !960, !303, !2973}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3406, file: !868, line: 240, baseType: !3445, size: 64, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !960, !303}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3406, file: !868, line: 242, baseType: !3449, size: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!567, !3412, !342, !581, !780}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3406, file: !868, line: 252, baseType: !581, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3406, file: !868, line: 259, baseType: !739, size: 8, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3406, file: !868, line: 260, baseType: !3449, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3406, file: !868, line: 263, baseType: !3456, size: 64, offset: 640)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!3002, !3412, !3004}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3406, file: !868, line: 266, baseType: !3460, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!310, !3412, !1224}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3401, file: !868, line: 109, baseType: !3464, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !868, line: 31, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3401, file: !868, line: 110, baseType: !780, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3401, file: !868, line: 111, baseType: !3337, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3338, file: !868, line: 148, baseType: !303, size: 64, offset: 768)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3338, file: !868, line: 154, baseType: !304, size: 64, offset: 832)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3338, file: !868, line: 156, baseType: !351, size: 16, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3338, file: !868, line: 157, baseType: !576, size: 16, offset: 912)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3338, file: !868, line: 158, baseType: !3473, size: 64, offset: 960)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !868, line: 32, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !483, file: !484, line: 71, baseType: !446, size: 32, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !483, file: !484, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !483, file: !484, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !483, file: !484, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !483, file: !484, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !483, file: !484, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !480, file: !237, line: 463, baseType: !479, size: 64, offset: 512)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !480, file: !237, line: 465, baseType: !3483, size: 64, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !480, file: !237, line: 467, baseType: !320, size: 64, offset: 640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !237, line: 468, baseType: !3487, size: 64, offset: 704)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3489)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3497, !3502, !3506}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !237, line: 88, baseType: !320, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3489, file: !237, line: 89, baseType: !588, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3489, file: !237, line: 90, baseType: !3494, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!310, !479, !532}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3489, file: !237, line: 91, baseType: !3498, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!342, !479, !3501, !3334, !3335}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3489, file: !237, line: 93, baseType: !3503, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !479}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3489, file: !237, line: 95, baseType: !3507, size: 64, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3510)
!3510 = !{!3511, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3509, file: !244, line: 279, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!310, !479}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3509, file: !244, line: 280, baseType: !3503, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3509, file: !244, line: 281, baseType: !3512, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3509, file: !244, line: 282, baseType: !3512, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3509, file: !244, line: 283, baseType: !3512, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3509, file: !244, line: 284, baseType: !3512, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3509, file: !244, line: 285, baseType: !3512, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3509, file: !244, line: 286, baseType: !3512, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3509, file: !244, line: 287, baseType: !3512, size: 64, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3509, file: !244, line: 288, baseType: !3512, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3509, file: !244, line: 289, baseType: !3512, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3509, file: !244, line: 290, baseType: !3512, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3509, file: !244, line: 291, baseType: !3512, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3509, file: !244, line: 292, baseType: !3512, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3509, file: !244, line: 293, baseType: !3512, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3509, file: !244, line: 294, baseType: !3512, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3509, file: !244, line: 295, baseType: !3512, size: 64, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3509, file: !244, line: 296, baseType: !3512, size: 64, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3509, file: !244, line: 297, baseType: !3512, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3509, file: !244, line: 298, baseType: !3512, size: 64, offset: 1216)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3509, file: !244, line: 299, baseType: !3512, size: 64, offset: 1280)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3509, file: !244, line: 300, baseType: !3512, size: 64, offset: 1344)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3509, file: !244, line: 301, baseType: !3512, size: 64, offset: 1408)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !480, file: !237, line: 470, baseType: !3538, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3540, line: 82, size: 1408, elements: !3541)
!3540 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3620, !3623, !3624}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3539, file: !3540, line: 83, baseType: !320, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3539, file: !3540, line: 84, baseType: !320, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3539, file: !3540, line: 85, baseType: !479, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3539, file: !3540, line: 86, baseType: !588, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3539, file: !3540, line: 87, baseType: !588, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3539, file: !3540, line: 88, baseType: !588, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3539, file: !3540, line: 90, baseType: !3549, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!310, !479, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561, !3571, !3584, !3585, !3586, !3587, !3588, !3596, !3597, !3598, !3599, !3600, !3601}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3553, file: !231, line: 96, baseType: !320, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3553, file: !231, line: 97, baseType: !3538, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3553, file: !231, line: 99, baseType: !324, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3553, file: !231, line: 100, baseType: !320, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3553, file: !231, line: 102, baseType: !739, size: 8, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3553, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3553, file: !231, line: 105, baseType: !3562, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3565, line: 262, size: 1600, elements: !3566)
!3565 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3566 = !{!3567, !3568, !3569, !3570}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3564, file: !3565, line: 263, baseType: !2797, size: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3564, file: !3565, line: 264, baseType: !2797, size: 256, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3564, file: !3565, line: 265, baseType: !421, size: 1024, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3564, file: !3565, line: 266, baseType: !2286, size: 64, offset: 1536)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3553, file: !231, line: 106, baseType: !3572, size: 64, offset: 384)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3574)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3565, line: 210, size: 256, elements: !3575)
!3575 = !{!3576, !3580, !3582, !3583}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3574, file: !3565, line: 211, baseType: !3577, size: 72)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 72, elements: !3578)
!3578 = !{!3579}
!3579 = !DISubrange(count: 9)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3574, file: !3565, line: 212, baseType: !3581, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3565, line: 14, baseType: !584)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3574, file: !3565, line: 213, baseType: !426, size: 32, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3574, file: !3565, line: 214, baseType: !426, size: 32, offset: 224)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3553, file: !231, line: 108, baseType: !3512, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3553, file: !231, line: 109, baseType: !3503, size: 64, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3553, file: !231, line: 110, baseType: !3512, size: 64, offset: 576)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3553, file: !231, line: 111, baseType: !3503, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3553, file: !231, line: 112, baseType: !3589, size: 64, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!310, !479, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3593)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3594)
!3594 = !{!3595}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3593, file: !244, line: 51, baseType: !310, size: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3553, file: !231, line: 113, baseType: !3512, size: 64, offset: 768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3553, file: !231, line: 114, baseType: !588, size: 64, offset: 832)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3553, file: !231, line: 115, baseType: !588, size: 64, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3553, file: !231, line: 117, baseType: !3507, size: 64, offset: 960)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3553, file: !231, line: 118, baseType: !3503, size: 64, offset: 1024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3553, file: !231, line: 120, baseType: !3602, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3539, file: !3540, line: 91, baseType: !3494, size: 64, offset: 448)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3539, file: !3540, line: 92, baseType: !3512, size: 64, offset: 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3539, file: !3540, line: 93, baseType: !3503, size: 64, offset: 576)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3539, file: !3540, line: 94, baseType: !3512, size: 64, offset: 640)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3539, file: !3540, line: 95, baseType: !3503, size: 64, offset: 704)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3539, file: !3540, line: 97, baseType: !3512, size: 64, offset: 768)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3539, file: !3540, line: 98, baseType: !3512, size: 64, offset: 832)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3539, file: !3540, line: 100, baseType: !3589, size: 64, offset: 896)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3539, file: !3540, line: 101, baseType: !3512, size: 64, offset: 960)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3539, file: !3540, line: 103, baseType: !3512, size: 64, offset: 1024)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3539, file: !3540, line: 105, baseType: !3512, size: 64, offset: 1088)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3539, file: !3540, line: 107, baseType: !3507, size: 64, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3539, file: !3540, line: 109, baseType: !3617, size: 64, offset: 1216)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3540, line: 109, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3539, file: !3540, line: 111, baseType: !3621, size: 64, offset: 1280)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3540, line: 111, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3539, file: !3540, line: 112, baseType: !894, offset: 1344)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3539, file: !3540, line: 114, baseType: !739, size: 8, offset: 1344)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !480, file: !237, line: 471, baseType: !3552, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !480, file: !237, line: 473, baseType: !303, size: 64, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !480, file: !237, line: 475, baseType: !303, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !480, file: !237, line: 480, baseType: !1336, size: 192, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !480, file: !237, line: 484, baseType: !3630, size: 576, offset: 1216)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3630, file: !237, line: 362, baseType: !466, size: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3630, file: !237, line: 363, baseType: !466, size: 128, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3630, file: !237, line: 364, baseType: !466, size: 128, offset: 256)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3630, file: !237, line: 365, baseType: !466, size: 128, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3630, file: !237, line: 366, baseType: !739, size: 8, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3630, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !480, file: !237, line: 485, baseType: !3639, size: 2304, offset: 1792)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3736, !3740}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3639, file: !244, line: 566, baseType: !3592, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3639, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3639, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3639, file: !244, line: 569, baseType: !739, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3639, file: !244, line: 570, baseType: !739, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3639, file: !244, line: 571, baseType: !739, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3639, file: !244, line: 572, baseType: !739, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3639, file: !244, line: 573, baseType: !739, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3639, file: !244, line: 574, baseType: !739, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3639, file: !244, line: 575, baseType: !739, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3639, file: !244, line: 576, baseType: !739, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3639, file: !244, line: 577, baseType: !425, size: 32, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3639, file: !244, line: 578, baseType: !496, offset: 96)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3639, file: !244, line: 580, baseType: !466, size: 128, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3639, file: !244, line: 581, baseType: !1661, size: 192, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3639, file: !244, line: 582, baseType: !3657, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3659, line: 43, size: 1472, elements: !3660)
!3659 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3668, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3658, file: !3659, line: 44, baseType: !320, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3658, file: !3659, line: 45, baseType: !310, size: 32, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3658, file: !3659, line: 46, baseType: !466, size: 128, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3658, file: !3659, line: 47, baseType: !496, offset: 256)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3658, file: !3659, line: 48, baseType: !3666, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3658, file: !3659, line: 49, baseType: !3669, size: 320, offset: 320)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3670, line: 11, size: 320, elements: !3671)
!3670 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3671 = !{!3672, !3673, !3674, !3679}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3669, file: !3670, line: 16, baseType: !888, size: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3669, file: !3670, line: 17, baseType: !584, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3669, file: !3670, line: 18, baseType: !3675, size: 64, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3669, file: !3670, line: 19, baseType: !425, size: 32, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3658, file: !3659, line: 50, baseType: !584, size: 64, offset: 640)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3658, file: !3659, line: 51, baseType: !1458, size: 64, offset: 704)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3658, file: !3659, line: 52, baseType: !1458, size: 64, offset: 768)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3658, file: !3659, line: 53, baseType: !1458, size: 64, offset: 832)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3658, file: !3659, line: 54, baseType: !1458, size: 64, offset: 896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3658, file: !3659, line: 55, baseType: !1458, size: 64, offset: 960)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3658, file: !3659, line: 56, baseType: !584, size: 64, offset: 1024)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3658, file: !3659, line: 57, baseType: !584, size: 64, offset: 1088)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3658, file: !3659, line: 58, baseType: !584, size: 64, offset: 1152)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3658, file: !3659, line: 59, baseType: !584, size: 64, offset: 1216)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3658, file: !3659, line: 60, baseType: !584, size: 64, offset: 1280)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3658, file: !3659, line: 61, baseType: !479, size: 64, offset: 1344)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3658, file: !3659, line: 62, baseType: !739, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3658, file: !3659, line: 63, baseType: !739, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3639, file: !244, line: 583, baseType: !739, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3639, file: !244, line: 584, baseType: !739, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3639, file: !244, line: 585, baseType: !739, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3639, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3639, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3639, file: !244, line: 592, baseType: !1450, size: 512, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3639, file: !244, line: 593, baseType: !304, size: 64, offset: 1088)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3639, file: !244, line: 594, baseType: !2116, size: 256, offset: 1152)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3639, file: !244, line: 595, baseType: !1640, size: 128, offset: 1408)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3639, file: !244, line: 596, baseType: !3666, size: 64, offset: 1536)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3639, file: !244, line: 597, baseType: !455, size: 32, offset: 1600)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3639, file: !244, line: 598, baseType: !455, size: 32, offset: 1632)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3639, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3639, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3639, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3639, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3639, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3639, file: !244, line: 604, baseType: !739, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3639, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3639, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3639, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3639, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3639, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3639, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3639, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3639, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3639, file: !244, line: 613, baseType: !310, size: 32, offset: 1792)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3639, file: !244, line: 614, baseType: !310, size: 32, offset: 1824)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3639, file: !244, line: 615, baseType: !304, size: 64, offset: 1856)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3639, file: !244, line: 616, baseType: !304, size: 64, offset: 1920)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3639, file: !244, line: 617, baseType: !304, size: 64, offset: 1984)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3639, file: !244, line: 618, baseType: !304, size: 64, offset: 2048)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3639, file: !244, line: 620, baseType: !3727, size: 64, offset: 2112)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3728, file: !244, line: 537, baseType: !496)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3728, file: !244, line: 538, baseType: !7, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3728, file: !244, line: 540, baseType: !466, size: 128, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3728, file: !244, line: 543, baseType: !3734, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3639, file: !244, line: 621, baseType: !3737, size: 64, offset: 2176)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !479, !1598}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3639, file: !244, line: 622, baseType: !3741, size: 64, offset: 2240)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !480, file: !237, line: 486, baseType: !3744, size: 64, offset: 4096)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3753, !3754, !3755}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3745, file: !244, line: 643, baseType: !3509, size: 1472)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3745, file: !244, line: 644, baseType: !3512, size: 64, offset: 1472)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3745, file: !244, line: 645, baseType: !3750, size: 64, offset: 1536)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !479, !739}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3745, file: !244, line: 646, baseType: !3512, size: 64, offset: 1600)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3745, file: !244, line: 647, baseType: !3503, size: 64, offset: 1664)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3745, file: !244, line: 648, baseType: !3503, size: 64, offset: 1728)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !480, file: !237, line: 493, baseType: !3757, size: 64, offset: 4160)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3759)
!3759 = !{!3760, !3761, !3762, !3935, !3936, !3937, !3938, !3939, !3940, !3943, !3944, !3945, !3946, !3947, !3948, !3949}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3758, file: !258, line: 163, baseType: !466, size: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3758, file: !258, line: 164, baseType: !320, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3758, file: !258, line: 165, baseType: !3763, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3765)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3766)
!3766 = !{!3767, !3885, !3896, !3901, !3905, !3912, !3916, !3920, !3927, !3931}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3765, file: !258, line: 106, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!310, !3757, !3771, !257}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3773, line: 51, size: 1344, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3774 = !{!3775, !3776, !3778, !3779, !3869, !3878, !3879, !3880, !3881, !3882, !3883, !3884}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3772, file: !3773, line: 52, baseType: !320, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3772, file: !3773, line: 53, baseType: !3777, size: 32, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3773, line: 28, baseType: !425)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3772, file: !3773, line: 54, baseType: !320, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3772, file: !3773, line: 55, baseType: !3780, size: 192, offset: 192)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3781, line: 17, size: 192, elements: !3782)
!3781 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3782 = !{!3783, !3785, !3868}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3780, file: !3781, line: 18, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3780, file: !3781, line: 19, baseType: !3786, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3788)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3781, line: 110, size: 1152, elements: !3789)
!3789 = !{!3790, !3794, !3798, !3804, !3810, !3814, !3818, !3823, !3827, !3828, !3832, !3836, !3840, !3851, !3852, !3853, !3854, !3864}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3788, file: !3781, line: 111, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!3784, !3784}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3788, file: !3781, line: 112, baseType: !3795, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !3784}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3788, file: !3781, line: 113, baseType: !3799, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!739, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3780)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3788, file: !3781, line: 114, baseType: !3805, size: 64, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!2286, !3802, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3788, file: !3781, line: 116, baseType: !3811, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!739, !3802, !320}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3788, file: !3781, line: 118, baseType: !3815, size: 64, offset: 320)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!310, !3802, !320, !7, !303, !581}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3788, file: !3781, line: 123, baseType: !3819, size: 64, offset: 384)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!310, !3802, !320, !3822, !581}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3788, file: !3781, line: 126, baseType: !3824, size: 64, offset: 448)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!320, !3802}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3788, file: !3781, line: 127, baseType: !3824, size: 64, offset: 512)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3788, file: !3781, line: 128, baseType: !3829, size: 64, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!3784, !3802}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3788, file: !3781, line: 130, baseType: !3833, size: 64, offset: 640)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!3784, !3802, !3784}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3788, file: !3781, line: 133, baseType: !3837, size: 64, offset: 704)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!3784, !3802, !320}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3788, file: !3781, line: 135, baseType: !3841, size: 64, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!310, !3802, !320, !320, !7, !7, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3781, line: 43, size: 640, elements: !3846)
!3846 = !{!3847, !3848, !3849}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3845, file: !3781, line: 44, baseType: !3784, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3845, file: !3781, line: 45, baseType: !7, size: 32, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3845, file: !3781, line: 46, baseType: !3850, size: 512, offset: 128)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 512, elements: !436)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3788, file: !3781, line: 140, baseType: !3833, size: 64, offset: 832)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3788, file: !3781, line: 143, baseType: !3829, size: 64, offset: 896)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3788, file: !3781, line: 145, baseType: !3791, size: 64, offset: 960)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3788, file: !3781, line: 146, baseType: !3855, size: 64, offset: 1024)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!310, !3802, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3781, line: 29, size: 128, elements: !3860)
!3860 = !{!3861, !3862, !3863}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3859, file: !3781, line: 30, baseType: !7, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3859, file: !3781, line: 31, baseType: !7, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3859, file: !3781, line: 32, baseType: !3802, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3788, file: !3781, line: 148, baseType: !3865, size: 64, offset: 1088)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!310, !3802, !479}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3780, file: !3781, line: 20, baseType: !479, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3772, file: !3773, line: 57, baseType: !3870, size: 64, offset: 384)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3773, line: 31, size: 704, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3871, file: !3773, line: 32, baseType: !342, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3871, file: !3773, line: 33, baseType: !310, size: 32, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3871, file: !3773, line: 34, baseType: !303, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3871, file: !3773, line: 35, baseType: !3870, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3871, file: !3773, line: 43, baseType: !603, size: 448, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3772, file: !3773, line: 58, baseType: !3870, size: 64, offset: 448)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3772, file: !3773, line: 59, baseType: !3771, size: 64, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3772, file: !3773, line: 60, baseType: !3771, size: 64, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3772, file: !3773, line: 61, baseType: !3771, size: 64, offset: 640)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3772, file: !3773, line: 63, baseType: !483, size: 512, offset: 704)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3772, file: !3773, line: 65, baseType: !584, size: 64, offset: 1216)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3772, file: !3773, line: 66, baseType: !303, size: 64, offset: 1280)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3765, file: !258, line: 108, baseType: !3886, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!310, !3757, !3889, !257}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3891)
!3891 = !{!3892, !3893, !3894}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3890, file: !258, line: 64, baseType: !3784, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3890, file: !258, line: 65, baseType: !310, size: 32, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3890, file: !258, line: 66, baseType: !3895, size: 512, offset: 96)
!3895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 512, elements: !1892)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3765, file: !258, line: 110, baseType: !3897, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!310, !3757, !7, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !302, line: 164, baseType: !584)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3765, file: !258, line: 111, baseType: !3902, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3757, !7}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3765, file: !258, line: 112, baseType: !3906, size: 64, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!310, !3757, !3771, !3909, !7, !3911, !379}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3765, file: !258, line: 117, baseType: !3913, size: 64, offset: 320)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!310, !3757, !7, !7, !303}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3765, file: !258, line: 119, baseType: !3917, size: 64, offset: 384)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !3757, !7, !7}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3765, file: !258, line: 121, baseType: !3921, size: 64, offset: 448)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!310, !3757, !3924, !739}
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3926, line: 11, flags: DIFlagFwdDecl)
!3926 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3765, file: !258, line: 122, baseType: !3928, size: 64, offset: 512)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{null, !3757, !3924}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3765, file: !258, line: 123, baseType: !3932, size: 64, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!310, !3757, !3889, !3911, !379}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3758, file: !258, line: 166, baseType: !303, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3758, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3758, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3758, file: !258, line: 171, baseType: !3784, size: 64, offset: 384)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3758, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3758, file: !258, line: 173, baseType: !3941, size: 64, offset: 512)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3758, file: !258, line: 175, baseType: !3757, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3758, file: !258, line: 182, baseType: !3900, size: 64, offset: 640)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3758, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3758, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3758, file: !258, line: 185, baseType: !988, size: 128, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3758, file: !258, line: 186, baseType: !1336, size: 192, offset: 896)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3758, file: !258, line: 187, baseType: !3950, offset: 1088)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2490)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !480, file: !237, line: 499, baseType: !466, size: 128, offset: 4224)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !480, file: !237, line: 502, baseType: !3953, size: 64, offset: 4352)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3955)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !480, file: !237, line: 504, baseType: !3957, size: 64, offset: 4416)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !480, file: !237, line: 505, baseType: !304, size: 64, offset: 4480)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !480, file: !237, line: 510, baseType: !304, size: 64, offset: 4544)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !480, file: !237, line: 511, baseType: !3961, size: 64, offset: 4608)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3963)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !480, file: !237, line: 513, baseType: !3965, size: 64, offset: 4672)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3967)
!3967 = !{!3968, !3969}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3966, file: !237, line: 293, baseType: !7, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3966, file: !237, line: 294, baseType: !584, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !480, file: !237, line: 515, baseType: !466, size: 128, offset: 4736)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !480, file: !237, line: 526, baseType: !3972, offset: 4864)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3973, line: 5, elements: !510)
!3973 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !480, file: !237, line: 528, baseType: !3771, size: 64, offset: 4864)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !480, file: !237, line: 529, baseType: !3784, size: 64, offset: 4928)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !480, file: !237, line: 534, baseType: !762, size: 32, offset: 4992)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !480, file: !237, line: 535, baseType: !425, size: 32, offset: 5024)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !480, file: !237, line: 537, baseType: !496, offset: 5056)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !480, file: !237, line: 538, baseType: !466, size: 128, offset: 5056)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !480, file: !237, line: 540, baseType: !3981, size: 64, offset: 5184)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3983, line: 54, size: 960, elements: !3984)
!3983 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3984 = !{!3985, !3986, !3987, !3988, !3989, !3990, !3991, !3995, !3999, !4000, !4001, !4002, !4006, !4010, !4011}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3982, file: !3983, line: 55, baseType: !320, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3982, file: !3983, line: 56, baseType: !324, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3982, file: !3983, line: 58, baseType: !588, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3982, file: !3983, line: 59, baseType: !588, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3982, file: !3983, line: 60, baseType: !489, size: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3982, file: !3983, line: 62, baseType: !3494, size: 64, offset: 320)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3982, file: !3983, line: 63, baseType: !3992, size: 64, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!342, !479, !3501}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3982, file: !3983, line: 65, baseType: !3996, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3981}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3982, file: !3983, line: 66, baseType: !3503, size: 64, offset: 512)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3982, file: !3983, line: 68, baseType: !3512, size: 64, offset: 576)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3982, file: !3983, line: 70, baseType: !3302, size: 64, offset: 640)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3982, file: !3983, line: 71, baseType: !4003, size: 64, offset: 704)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!2286, !479}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3982, file: !3983, line: 73, baseType: !4007, size: 64, offset: 768)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !479, !3334, !3335}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3982, file: !3983, line: 75, baseType: !3507, size: 64, offset: 832)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3982, file: !3983, line: 77, baseType: !3621, size: 64, offset: 896)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !480, file: !237, line: 541, baseType: !588, size: 64, offset: 5248)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !480, file: !237, line: 543, baseType: !3503, size: 64, offset: 5312)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !480, file: !237, line: 544, baseType: !4015, size: 64, offset: 5376)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !480, file: !237, line: 545, baseType: !4018, size: 64, offset: 5440)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !480, file: !237, line: 547, baseType: !739, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !480, file: !237, line: 548, baseType: !739, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !480, file: !237, line: 549, baseType: !739, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !480, file: !237, line: 550, baseType: !739, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !462, file: !272, line: 111, baseType: !324, size: 64, offset: 576)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !462, file: !272, line: 113, baseType: !310, size: 32, offset: 640)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !462, file: !272, line: 114, baseType: !4027, size: 64, offset: 704)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4044}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4028, file: !272, line: 158, baseType: !466, size: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4028, file: !272, line: 159, baseType: !2960, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4028, file: !272, line: 160, baseType: !461, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4028, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4028, file: !272, line: 162, baseType: !310, size: 32, offset: 288)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4028, file: !272, line: 163, baseType: !425, size: 32, offset: 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4028, file: !272, line: 167, baseType: !310, size: 32, offset: 352)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4028, file: !272, line: 168, baseType: !310, size: 32, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4028, file: !272, line: 169, baseType: !310, size: 32, offset: 416)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4028, file: !272, line: 171, baseType: !1640, size: 128, offset: 448)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4028, file: !272, line: 173, baseType: !4041, size: 64, offset: 576)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!310, !612, !7, !303}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4028, file: !272, line: 187, baseType: !303, size: 64, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !462, file: !272, line: 115, baseType: !1336, size: 192, offset: 768)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !443, file: !51, line: 690, baseType: !303, size: 64, offset: 6144)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !443, file: !51, line: 691, baseType: !303, size: 64, offset: 6208)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !443, file: !51, line: 692, baseType: !303, size: 64, offset: 6272)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !443, file: !51, line: 693, baseType: !303, size: 64, offset: 6336)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !443, file: !51, line: 694, baseType: !303, size: 64, offset: 6400)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !443, file: !51, line: 695, baseType: !4052, size: 3648, offset: 6464)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4053)
!4053 = !{!4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4117, !4118, !4119, !4120, !4121, !4122, !4123}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4052, file: !51, line: 587, baseType: !425, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4052, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4052, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4052, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4052, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4052, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4052, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4052, file: !51, line: 595, baseType: !425, size: 32, offset: 224)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4052, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4052, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4052, file: !51, line: 598, baseType: !425, size: 32, offset: 320)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4052, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4052, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4052, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4052, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4052, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4052, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4052, file: !51, line: 610, baseType: !357, size: 8, offset: 544)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4052, file: !51, line: 611, baseType: !357, size: 8, offset: 552)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4052, file: !51, line: 612, baseType: !357, size: 8, offset: 560)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4052, file: !51, line: 613, baseType: !425, size: 32, offset: 576)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4052, file: !51, line: 614, baseType: !425, size: 32, offset: 608)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4052, file: !51, line: 615, baseType: !357, size: 8, offset: 640)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4052, file: !51, line: 621, baseType: !4078, size: 384, offset: 672)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4079, size: 384, elements: !537)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4052, file: !51, line: 616, size: 128, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4079, file: !51, line: 617, baseType: !357, size: 8)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4079, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4079, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4079, file: !51, line: 620, baseType: !357, size: 8, offset: 96)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4052, file: !51, line: 624, baseType: !425, size: 32, offset: 1056)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4052, file: !51, line: 627, baseType: !425, size: 32, offset: 1088)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4052, file: !51, line: 630, baseType: !357, size: 8, offset: 1120)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4052, file: !51, line: 631, baseType: !357, size: 8, offset: 1128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4052, file: !51, line: 632, baseType: !357, size: 8, offset: 1136)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4052, file: !51, line: 633, baseType: !357, size: 8, offset: 1144)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4052, file: !51, line: 634, baseType: !357, size: 8, offset: 1152)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4052, file: !51, line: 635, baseType: !357, size: 8, offset: 1160)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4052, file: !51, line: 637, baseType: !357, size: 8, offset: 1168)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4052, file: !51, line: 638, baseType: !357, size: 8, offset: 1176)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4052, file: !51, line: 639, baseType: !357, size: 8, offset: 1184)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4052, file: !51, line: 640, baseType: !357, size: 8, offset: 1192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4052, file: !51, line: 641, baseType: !357, size: 8, offset: 1200)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4052, file: !51, line: 642, baseType: !357, size: 8, offset: 1208)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4052, file: !51, line: 643, baseType: !357, size: 8, offset: 1216)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4052, file: !51, line: 644, baseType: !357, size: 8, offset: 1224)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4052, file: !51, line: 645, baseType: !357, size: 8, offset: 1232)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4052, file: !51, line: 647, baseType: !425, size: 32, offset: 1248)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4052, file: !51, line: 650, baseType: !4104, size: 296, offset: 1280)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4105)
!4105 = !{!4106, !4107}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4104, file: !6, line: 826, baseType: !358, size: 8)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4104, file: !6, line: 827, baseType: !4108, size: 288, offset: 8)
!4108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4109, size: 288, elements: !1318)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4110)
!4110 = !{!4111, !4112}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4109, file: !6, line: 804, baseType: !358, size: 8)
!4112 = !DIDerivedType(tag: DW_TAG_member, scope: !4109, file: !6, line: 805, baseType: !4113, size: 64, offset: 8)
!4113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4109, file: !6, line: 805, size: 64, elements: !4114)
!4114 = !{!4115, !4116}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4113, file: !6, line: 806, baseType: !306, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4113, file: !6, line: 807, baseType: !789, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4052, file: !51, line: 651, baseType: !4104, size: 296, offset: 1576)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4052, file: !51, line: 652, baseType: !4104, size: 296, offset: 1872)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4052, file: !51, line: 653, baseType: !4104, size: 296, offset: 2168)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4052, file: !51, line: 654, baseType: !4104, size: 296, offset: 2464)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4052, file: !51, line: 655, baseType: !4104, size: 296, offset: 2760)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4052, file: !51, line: 656, baseType: !4104, size: 296, offset: 3056)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4052, file: !51, line: 657, baseType: !4104, size: 296, offset: 3352)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !443, file: !51, line: 698, baseType: !4125, size: 64, offset: 10112)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!310, !303, !310, !310, !310}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !443, file: !51, line: 699, baseType: !310, size: 32, offset: 10176)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !443, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !415, file: !51, line: 441, baseType: !439, size: 64, offset: 1408)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !415, file: !51, line: 442, baseType: !439, size: 64, offset: 1472)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !415, file: !51, line: 444, baseType: !4133, size: 64, offset: 1536)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!310, !442}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !415, file: !51, line: 445, baseType: !4133, size: 64, offset: 1600)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !415, file: !51, line: 447, baseType: !4138, size: 64, offset: 1664)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!310, !442, !4141, !310}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !415, file: !51, line: 450, baseType: !4144, size: 64, offset: 1728)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!310, !442, !739, !7, !379, !4147}
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !415, file: !51, line: 457, baseType: !4149, size: 64, offset: 1792)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!50, !442}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !415, file: !51, line: 460, baseType: !4133, size: 64, offset: 1856)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !415, file: !51, line: 461, baseType: !4154, size: 64, offset: 1920)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!310, !442, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4159)
!4159 = !{!4160, !4161, !4162}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4158, file: !51, line: 70, baseType: !310, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4158, file: !51, line: 71, baseType: !310, size: 32, offset: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4158, file: !51, line: 72, baseType: !310, size: 32, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !415, file: !51, line: 463, baseType: !4164, size: 64, offset: 1984)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!310, !442, !4167}
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !415, file: !51, line: 466, baseType: !4169, size: 64, offset: 2048)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!310, !442, !4147}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !415, file: !51, line: 467, baseType: !4173, size: 64, offset: 2112)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!310, !442, !1569}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !415, file: !51, line: 468, baseType: !4177, size: 64, offset: 2176)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!310, !442, !4180}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !415, file: !51, line: 469, baseType: !4177, size: 64, offset: 2240)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !415, file: !51, line: 470, baseType: !4173, size: 64, offset: 2304)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !415, file: !51, line: 472, baseType: !4133, size: 64, offset: 2368)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !415, file: !51, line: 473, baseType: !4185, size: 64, offset: 2432)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!310, !442, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4190)
!4190 = !{!4191, !4193}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4189, file: !6, line: 174, baseType: !4192, size: 48)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 48, elements: !475)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4189, file: !6, line: 175, baseType: !358, size: 8, offset: 48)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !415, file: !51, line: 474, baseType: !4195, size: 64, offset: 2496)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!310, !442, !4198}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4200)
!4200 = !{!4201, !4203, !4204}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4199, file: !6, line: 196, baseType: !4202, size: 32)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 32, elements: !1318)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4199, file: !6, line: 197, baseType: !358, size: 8, offset: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4199, file: !6, line: 198, baseType: !310, size: 32, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !415, file: !51, line: 475, baseType: !4206, size: 64, offset: 2560)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!310, !442, !171}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !415, file: !51, line: 477, baseType: !4210, size: 64, offset: 2624)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!310, !442, !78}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !415, file: !51, line: 478, baseType: !4214, size: 64, offset: 2688)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!310, !442, !73}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !415, file: !51, line: 480, baseType: !4218, size: 64, offset: 2752)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!310, !442, !311}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !415, file: !51, line: 481, baseType: !4222, size: 64, offset: 2816)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!310, !442, !584}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !415, file: !51, line: 482, baseType: !4226, size: 64, offset: 2880)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!310, !442, !310}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !415, file: !51, line: 483, baseType: !4226, size: 64, offset: 2944)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !415, file: !51, line: 484, baseType: !4133, size: 64, offset: 3008)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !415, file: !51, line: 490, baseType: !4232, size: 64, offset: 3072)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!175, !442}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !415, file: !51, line: 492, baseType: !4236, size: 2304, offset: 3136)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4237)
!4237 = !{!4238, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4265, !4269, !4270, !4271, !4272, !4273, !4274, !4279, !4284, !4288}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4236, file: !51, line: 228, baseType: !4239, size: 1216)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4247}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4239, file: !51, line: 89, baseType: !421, size: 1024)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4239, file: !51, line: 91, baseType: !425, size: 32, offset: 1024)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4239, file: !51, line: 92, baseType: !425, size: 32, offset: 1056)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4239, file: !51, line: 93, baseType: !425, size: 32, offset: 1088)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4239, file: !51, line: 95, baseType: !425, size: 32, offset: 1120)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4239, file: !51, line: 96, baseType: !425, size: 32, offset: 1152)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4239, file: !51, line: 97, baseType: !425, size: 32, offset: 1184)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4236, file: !51, line: 230, baseType: !439, size: 64, offset: 1216)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4236, file: !51, line: 231, baseType: !4133, size: 64, offset: 1280)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4236, file: !51, line: 232, baseType: !4133, size: 64, offset: 1344)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4236, file: !51, line: 233, baseType: !4133, size: 64, offset: 1408)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4236, file: !51, line: 234, baseType: !4133, size: 64, offset: 1472)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4236, file: !51, line: 237, baseType: !4133, size: 64, offset: 1536)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4236, file: !51, line: 238, baseType: !4255, size: 64, offset: 1600)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!310, !442, !4258}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4260)
!4260 = !{!4261, !4262, !4263, !4264}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4259, file: !51, line: 115, baseType: !7, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4259, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4259, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4259, file: !51, line: 118, baseType: !304, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4236, file: !51, line: 240, baseType: !4266, size: 64, offset: 1664)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!310, !442, !303}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4236, file: !51, line: 242, baseType: !4173, size: 64, offset: 1728)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4236, file: !51, line: 243, baseType: !4173, size: 64, offset: 1792)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4236, file: !51, line: 244, baseType: !4173, size: 64, offset: 1856)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4236, file: !51, line: 248, baseType: !4173, size: 64, offset: 1920)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4236, file: !51, line: 249, baseType: !4177, size: 64, offset: 1984)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4236, file: !51, line: 250, baseType: !4275, size: 64, offset: 2048)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!310, !442, !4278}
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4236, file: !51, line: 258, baseType: !4280, size: 64, offset: 2112)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!310, !442, !4283, !310}
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4236, file: !51, line: 267, baseType: !4285, size: 64, offset: 2176)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!310, !442, !425}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4236, file: !51, line: 268, baseType: !4285, size: 64, offset: 2240)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !415, file: !51, line: 493, baseType: !4290, size: 576, offset: 5440)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4291)
!4291 = !{!4292, !4296, !4300, !4301, !4302, !4303, !4304, !4305, !4306}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4290, file: !51, line: 304, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4294)
!4294 = !{!4295}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4293, file: !51, line: 277, baseType: !342, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4290, file: !51, line: 306, baseType: !4297, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !442, !4258}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4290, file: !51, line: 308, baseType: !4177, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4290, file: !51, line: 309, baseType: !4275, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4290, file: !51, line: 310, baseType: !439, size: 64, offset: 256)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4290, file: !51, line: 311, baseType: !439, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4290, file: !51, line: 312, baseType: !439, size: 64, offset: 384)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4290, file: !51, line: 313, baseType: !4226, size: 64, offset: 448)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4290, file: !51, line: 316, baseType: !4266, size: 64, offset: 512)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 760, type: !4309, isLocal: true, isDefinition: true)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 120, elements: !4310)
!4310 = !{!4311}
!4311 = !DISubrange(count: 15)
!4312 = !{i32 7, !"Dwarf Version", i32 4}
!4313 = !{i32 2, !"Debug Info Version", i32 3}
!4314 = !{i32 1, !"wchar_size", i32 2}
!4315 = !{i32 1, !"Code Model", i32 2}
!4316 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4317 = distinct !DISubprogram(name: "tda10086_attach", scope: !3, file: !3, line: 732, type: !4318, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!442, !4320, !4328}
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4322)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda10086_config", file: !284, line: 21, size: 64, elements: !4323)
!4323 = !{!4324, !4325, !4326, !4327}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4322, file: !284, line: 24, baseType: !357, size: 8)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !4322, file: !284, line: 27, baseType: !357, size: 8, offset: 8)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_tone", scope: !4322, file: !284, line: 30, baseType: !357, size: 8, offset: 16)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "xtal_freq", scope: !4322, file: !284, line: 33, baseType: !283, size: 32, offset: 32)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4330, line: 695, size: 7552, elements: !4331)
!4330 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4331 = !{!4332, !4333, !4334, !4369, !4370, !4384, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4401, !4402, !4403, !4404, !4436, !4447}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4329, file: !4330, line: 696, baseType: !324, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4329, file: !4330, line: 697, baseType: !7, size: 32, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4329, file: !4330, line: 698, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4337)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4330, line: 519, size: 320, elements: !4338)
!4338 = !{!4339, !4352, !4353, !4364, !4365}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4337, file: !4330, line: 529, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!310, !4328, !4343, !310}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4345, line: 69, size: 128, elements: !4346)
!4345 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4346 = !{!4347, !4348, !4349, !4350}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4344, file: !4345, line: 70, baseType: !350, size: 16)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4344, file: !4345, line: 71, baseType: !350, size: 16, offset: 16)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4344, file: !4345, line: 84, baseType: !350, size: 16, offset: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4344, file: !4345, line: 85, baseType: !4351, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4337, file: !4330, line: 531, baseType: !4340, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4337, file: !4330, line: 533, baseType: !4354, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!310, !4328, !349, !351, !322, !357, !310, !4357}
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4345, line: 135, size: 272, elements: !4359)
!4359 = !{!4360, !4361, !4362}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4358, file: !4345, line: 136, baseType: !358, size: 8)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4358, file: !4345, line: 137, baseType: !350, size: 16)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4358, file: !4345, line: 138, baseType: !4363, size: 272)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 272, elements: !400)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4337, file: !4330, line: 536, baseType: !4354, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4337, file: !4330, line: 541, baseType: !4366, size: 64, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!425, !4328}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4329, file: !4330, line: 699, baseType: !303, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4329, file: !4330, line: 702, baseType: !4371, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4330, line: 557, size: 192, elements: !4374)
!4374 = !{!4375, !4379, !4383}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4373, file: !4330, line: 558, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !4328, !7}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4373, file: !4330, line: 559, baseType: !4380, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!310, !4328, !7}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4373, file: !4330, line: 560, baseType: !4376, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4329, file: !4330, line: 703, baseType: !4385, size: 192, offset: 320)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4386, line: 30, size: 192, elements: !4387)
!4386 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4387 = !{!4388, !4389, !4390}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4385, file: !4386, line: 31, baseType: !1025)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4385, file: !4386, line: 32, baseType: !997, size: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4385, file: !4386, line: 33, baseType: !1379, size: 64, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4329, file: !4330, line: 704, baseType: !4385, size: 192, offset: 512)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4329, file: !4330, line: 706, baseType: !310, size: 32, offset: 704)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4329, file: !4330, line: 707, baseType: !310, size: 32, offset: 736)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4329, file: !4330, line: 708, baseType: !480, size: 5568, offset: 768)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4329, file: !4330, line: 709, baseType: !584, size: 64, offset: 6336)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4329, file: !4330, line: 713, baseType: !310, size: 32, offset: 6400)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4329, file: !4330, line: 714, baseType: !4398, size: 384, offset: 6432)
!4398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 384, elements: !4399)
!4399 = !{!4400}
!4400 = !DISubrange(count: 48)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4329, file: !4330, line: 715, baseType: !1661, size: 192, offset: 6848)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4329, file: !4330, line: 717, baseType: !1336, size: 192, offset: 7040)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4329, file: !4330, line: 718, baseType: !466, size: 128, offset: 7232)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4329, file: !4330, line: 720, baseType: !4405, size: 64, offset: 7360)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4330, line: 618, size: 832, elements: !4407)
!4407 = !{!4408, !4412, !4413, !4417, !4418, !4419, !4420, !4424, !4425, !4428, !4429, !4432, !4435}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4406, file: !4330, line: 619, baseType: !4409, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!310, !4328}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4406, file: !4330, line: 621, baseType: !4409, size: 64, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4406, file: !4330, line: 622, baseType: !4414, size: 64, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{null, !4328, !310}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4406, file: !4330, line: 623, baseType: !4409, size: 64, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4406, file: !4330, line: 624, baseType: !4414, size: 64, offset: 256)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4406, file: !4330, line: 625, baseType: !4409, size: 64, offset: 320)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4406, file: !4330, line: 627, baseType: !4421, size: 64, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{null, !4328}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4406, file: !4330, line: 628, baseType: !4421, size: 64, offset: 448)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4406, file: !4330, line: 631, baseType: !4426, size: 64, offset: 512)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4330, line: 631, flags: DIFlagFwdDecl)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4406, file: !4330, line: 632, baseType: !4426, size: 64, offset: 576)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4406, file: !4330, line: 633, baseType: !4430, size: 64, offset: 640)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4330, line: 633, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4406, file: !4330, line: 634, baseType: !4433, size: 64, offset: 704)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4330, line: 634, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4406, file: !4330, line: 635, baseType: !4433, size: 64, offset: 768)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4329, file: !4330, line: 721, baseType: !4437, size: 64, offset: 7424)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4439)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4330, line: 664, size: 192, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4446}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4439, file: !4330, line: 665, baseType: !304, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4439, file: !4330, line: 666, baseType: !310, size: 32, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4439, file: !4330, line: 667, baseType: !349, size: 16, offset: 96)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4439, file: !4330, line: 668, baseType: !349, size: 16, offset: 112)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4439, file: !4330, line: 669, baseType: !349, size: 16, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4439, file: !4330, line: 670, baseType: !349, size: 16, offset: 144)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4329, file: !4330, line: 723, baseType: !3757, size: 64, offset: 7488)
!4448 = !DILocalVariable(name: "config", arg: 1, scope: !4317, file: !3, line: 732, type: !4320)
!4449 = !DILocation(line: 732, column: 68, scope: !4317)
!4450 = !DILocalVariable(name: "i2c", arg: 2, scope: !4317, file: !3, line: 733, type: !4328)
!4451 = !DILocation(line: 733, column: 30, scope: !4317)
!4452 = !DILocalVariable(name: "state", scope: !4317, file: !3, line: 735, type: !4453)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda10086_state", file: !3, line: 22, size: 10496, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4459, !4460, !4461}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4454, file: !3, line: 23, baseType: !4328, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4454, file: !3, line: 24, baseType: !4320, size: 64, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4454, file: !3, line: 25, baseType: !443, size: 10240, offset: 128)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4454, file: !3, line: 28, baseType: !425, size: 32, offset: 10368)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4454, file: !3, line: 29, baseType: !425, size: 32, offset: 10400)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "has_lock", scope: !4454, file: !3, line: 30, baseType: !739, size: 8, offset: 10432)
!4462 = !DILocation(line: 735, column: 25, scope: !4317)
!4463 = !DILocation(line: 737, column: 2, scope: !4317)
!4464 = !DILocation(line: 737, column: 2, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 737, column: 2)
!4466 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 737, column: 2)
!4467 = !DILocation(line: 737, column: 2, scope: !4466)
!4468 = !DILocation(line: 740, column: 10, scope: !4317)
!4469 = !DILocation(line: 740, column: 8, scope: !4317)
!4470 = !DILocation(line: 741, column: 7, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 741, column: 6)
!4472 = !DILocation(line: 741, column: 6, scope: !4317)
!4473 = !DILocation(line: 742, column: 3, scope: !4471)
!4474 = !DILocation(line: 745, column: 18, scope: !4317)
!4475 = !DILocation(line: 745, column: 2, scope: !4317)
!4476 = !DILocation(line: 745, column: 9, scope: !4317)
!4477 = !DILocation(line: 745, column: 16, scope: !4317)
!4478 = !DILocation(line: 746, column: 15, scope: !4317)
!4479 = !DILocation(line: 746, column: 2, scope: !4317)
!4480 = !DILocation(line: 746, column: 9, scope: !4317)
!4481 = !DILocation(line: 746, column: 13, scope: !4317)
!4482 = !DILocation(line: 749, column: 25, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 749, column: 6)
!4484 = !DILocation(line: 749, column: 6, scope: !4483)
!4485 = !DILocation(line: 749, column: 38, scope: !4483)
!4486 = !DILocation(line: 749, column: 6, scope: !4317)
!4487 = !DILocation(line: 750, column: 9, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 749, column: 47)
!4489 = !DILocation(line: 750, column: 3, scope: !4488)
!4490 = !DILocation(line: 751, column: 3, scope: !4488)
!4491 = !DILocation(line: 755, column: 10, scope: !4317)
!4492 = !DILocation(line: 755, column: 17, scope: !4317)
!4493 = !DILocation(line: 755, column: 26, scope: !4317)
!4494 = !DILocation(line: 755, column: 2, scope: !4317)
!4495 = !DILocation(line: 756, column: 37, scope: !4317)
!4496 = !DILocation(line: 756, column: 2, scope: !4317)
!4497 = !DILocation(line: 756, column: 9, scope: !4317)
!4498 = !DILocation(line: 756, column: 18, scope: !4317)
!4499 = !DILocation(line: 756, column: 35, scope: !4317)
!4500 = !DILocation(line: 757, column: 10, scope: !4317)
!4501 = !DILocation(line: 757, column: 17, scope: !4317)
!4502 = !DILocation(line: 757, column: 2, scope: !4317)
!4503 = !DILocation(line: 758, column: 1, scope: !4317)
!4504 = distinct !DISubprogram(name: "kzalloc", scope: !289, file: !289, line: 662, type: !4505, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!303, !581, !301}
!4507 = !DILocalVariable(name: "s", arg: 1, scope: !4508, file: !289, line: 445, type: !1178)
!4508 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !289, file: !289, line: 445, type: !4509, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!303, !1178, !301, !581}
!4511 = !DILocation(line: 445, column: 72, scope: !4508, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 552, column: 10, scope: !4513, inlinedAt: !4516)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !289, line: 540, column: 34)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !289, line: 540, column: 6)
!4515 = distinct !DISubprogram(name: "kmalloc", scope: !289, file: !289, line: 538, type: !4505, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4516 = distinct !DILocation(line: 664, column: 9, scope: !4504)
!4517 = !DILocalVariable(name: "flags", arg: 2, scope: !4508, file: !289, line: 446, type: !301)
!4518 = !DILocation(line: 446, column: 9, scope: !4508, inlinedAt: !4512)
!4519 = !DILocalVariable(name: "size", arg: 3, scope: !4508, file: !289, line: 446, type: !581)
!4520 = !DILocation(line: 446, column: 23, scope: !4508, inlinedAt: !4512)
!4521 = !DILocalVariable(name: "ret", scope: !4508, file: !289, line: 448, type: !303)
!4522 = !DILocation(line: 448, column: 8, scope: !4508, inlinedAt: !4512)
!4523 = !DILocalVariable(name: "flags", arg: 1, scope: !4524, file: !289, line: 318, type: !301)
!4524 = distinct !DISubprogram(name: "kmalloc_type", scope: !289, file: !289, line: 318, type: !4525, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!288, !301}
!4527 = !DILocation(line: 318, column: 67, scope: !4524, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 553, column: 20, scope: !4513, inlinedAt: !4516)
!4529 = !DILocalVariable(name: "size", arg: 1, scope: !4530, file: !289, line: 346, type: !581)
!4530 = distinct !DISubprogram(name: "kmalloc_index", scope: !289, file: !289, line: 346, type: !4531, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!7, !581}
!4533 = !DILocation(line: 346, column: 58, scope: !4530, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 547, column: 11, scope: !4513, inlinedAt: !4516)
!4535 = !DILocalVariable(name: "size", arg: 1, scope: !4536, file: !289, line: 472, type: !581)
!4536 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !289, file: !289, line: 472, type: !4537, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!303, !581, !301, !7}
!4539 = !DILocation(line: 472, column: 28, scope: !4536, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 481, column: 9, scope: !4541, inlinedAt: !4542)
!4541 = distinct !DISubprogram(name: "kmalloc_large", scope: !289, file: !289, line: 478, type: !4505, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4542 = distinct !DILocation(line: 545, column: 11, scope: !4543, inlinedAt: !4516)
!4543 = distinct !DILexicalBlock(scope: !4513, file: !289, line: 544, column: 7)
!4544 = !DILocalVariable(name: "flags", arg: 2, scope: !4536, file: !289, line: 472, type: !301)
!4545 = !DILocation(line: 472, column: 40, scope: !4536, inlinedAt: !4540)
!4546 = !DILocalVariable(name: "order", arg: 3, scope: !4536, file: !289, line: 472, type: !7)
!4547 = !DILocation(line: 472, column: 60, scope: !4536, inlinedAt: !4540)
!4548 = !DILocalVariable(name: "size", arg: 1, scope: !4541, file: !289, line: 478, type: !581)
!4549 = !DILocation(line: 478, column: 51, scope: !4541, inlinedAt: !4542)
!4550 = !DILocalVariable(name: "flags", arg: 2, scope: !4541, file: !289, line: 478, type: !301)
!4551 = !DILocation(line: 478, column: 63, scope: !4541, inlinedAt: !4542)
!4552 = !DILocalVariable(name: "order", scope: !4541, file: !289, line: 480, type: !7)
!4553 = !DILocation(line: 480, column: 15, scope: !4541, inlinedAt: !4542)
!4554 = !DILocalVariable(name: "size", arg: 1, scope: !4515, file: !289, line: 538, type: !581)
!4555 = !DILocation(line: 538, column: 45, scope: !4515, inlinedAt: !4516)
!4556 = !DILocalVariable(name: "flags", arg: 2, scope: !4515, file: !289, line: 538, type: !301)
!4557 = !DILocation(line: 538, column: 57, scope: !4515, inlinedAt: !4516)
!4558 = !DILocalVariable(name: "index", scope: !4513, file: !289, line: 542, type: !7)
!4559 = !DILocation(line: 542, column: 16, scope: !4513, inlinedAt: !4516)
!4560 = !DILocalVariable(name: "size", arg: 1, scope: !4504, file: !289, line: 662, type: !581)
!4561 = !DILocation(line: 662, column: 36, scope: !4504)
!4562 = !DILocalVariable(name: "flags", arg: 2, scope: !4504, file: !289, line: 662, type: !301)
!4563 = !DILocation(line: 662, column: 48, scope: !4504)
!4564 = !DILocation(line: 664, column: 17, scope: !4504)
!4565 = !DILocation(line: 664, column: 23, scope: !4504)
!4566 = !DILocation(line: 664, column: 29, scope: !4504)
!4567 = !DILocation(line: 540, column: 27, scope: !4514, inlinedAt: !4516)
!4568 = !DILocation(line: 540, column: 6, scope: !4514, inlinedAt: !4516)
!4569 = !DILocation(line: 540, column: 6, scope: !4515, inlinedAt: !4516)
!4570 = !DILocation(line: 544, column: 7, scope: !4543, inlinedAt: !4516)
!4571 = !DILocation(line: 544, column: 12, scope: !4543, inlinedAt: !4516)
!4572 = !DILocation(line: 544, column: 7, scope: !4513, inlinedAt: !4516)
!4573 = !DILocation(line: 545, column: 25, scope: !4543, inlinedAt: !4516)
!4574 = !DILocation(line: 545, column: 31, scope: !4543, inlinedAt: !4516)
!4575 = !DILocation(line: 480, column: 33, scope: !4541, inlinedAt: !4542)
!4576 = !DILocation(line: 480, column: 23, scope: !4541, inlinedAt: !4542)
!4577 = !DILocation(line: 481, column: 29, scope: !4541, inlinedAt: !4542)
!4578 = !DILocation(line: 481, column: 35, scope: !4541, inlinedAt: !4542)
!4579 = !DILocation(line: 481, column: 42, scope: !4541, inlinedAt: !4542)
!4580 = !DILocation(line: 474, column: 23, scope: !4536, inlinedAt: !4540)
!4581 = !DILocation(line: 474, column: 29, scope: !4536, inlinedAt: !4540)
!4582 = !DILocation(line: 474, column: 36, scope: !4536, inlinedAt: !4540)
!4583 = !DILocation(line: 474, column: 9, scope: !4536, inlinedAt: !4540)
!4584 = !DILocation(line: 545, column: 4, scope: !4543, inlinedAt: !4516)
!4585 = !DILocation(line: 547, column: 25, scope: !4513, inlinedAt: !4516)
!4586 = !DILocation(line: 348, column: 7, scope: !4587, inlinedAt: !4534)
!4587 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 348, column: 6)
!4588 = !DILocation(line: 348, column: 6, scope: !4530, inlinedAt: !4534)
!4589 = !DILocation(line: 349, column: 3, scope: !4587, inlinedAt: !4534)
!4590 = !DILocation(line: 351, column: 6, scope: !4591, inlinedAt: !4534)
!4591 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 351, column: 6)
!4592 = !DILocation(line: 351, column: 11, scope: !4591, inlinedAt: !4534)
!4593 = !DILocation(line: 351, column: 6, scope: !4530, inlinedAt: !4534)
!4594 = !DILocation(line: 352, column: 3, scope: !4591, inlinedAt: !4534)
!4595 = !DILocation(line: 354, column: 32, scope: !4596, inlinedAt: !4534)
!4596 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 354, column: 6)
!4597 = !DILocation(line: 354, column: 37, scope: !4596, inlinedAt: !4534)
!4598 = !DILocation(line: 354, column: 42, scope: !4596, inlinedAt: !4534)
!4599 = !DILocation(line: 354, column: 45, scope: !4596, inlinedAt: !4534)
!4600 = !DILocation(line: 354, column: 50, scope: !4596, inlinedAt: !4534)
!4601 = !DILocation(line: 354, column: 6, scope: !4530, inlinedAt: !4534)
!4602 = !DILocation(line: 355, column: 3, scope: !4596, inlinedAt: !4534)
!4603 = !DILocation(line: 356, column: 32, scope: !4604, inlinedAt: !4534)
!4604 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 356, column: 6)
!4605 = !DILocation(line: 356, column: 37, scope: !4604, inlinedAt: !4534)
!4606 = !DILocation(line: 356, column: 43, scope: !4604, inlinedAt: !4534)
!4607 = !DILocation(line: 356, column: 46, scope: !4604, inlinedAt: !4534)
!4608 = !DILocation(line: 356, column: 51, scope: !4604, inlinedAt: !4534)
!4609 = !DILocation(line: 356, column: 6, scope: !4530, inlinedAt: !4534)
!4610 = !DILocation(line: 357, column: 3, scope: !4604, inlinedAt: !4534)
!4611 = !DILocation(line: 358, column: 6, scope: !4612, inlinedAt: !4534)
!4612 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 358, column: 6)
!4613 = !DILocation(line: 358, column: 11, scope: !4612, inlinedAt: !4534)
!4614 = !DILocation(line: 358, column: 6, scope: !4530, inlinedAt: !4534)
!4615 = !DILocation(line: 358, column: 26, scope: !4612, inlinedAt: !4534)
!4616 = !DILocation(line: 359, column: 6, scope: !4617, inlinedAt: !4534)
!4617 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 359, column: 6)
!4618 = !DILocation(line: 359, column: 11, scope: !4617, inlinedAt: !4534)
!4619 = !DILocation(line: 359, column: 6, scope: !4530, inlinedAt: !4534)
!4620 = !DILocation(line: 359, column: 26, scope: !4617, inlinedAt: !4534)
!4621 = !DILocation(line: 360, column: 6, scope: !4622, inlinedAt: !4534)
!4622 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 360, column: 6)
!4623 = !DILocation(line: 360, column: 11, scope: !4622, inlinedAt: !4534)
!4624 = !DILocation(line: 360, column: 6, scope: !4530, inlinedAt: !4534)
!4625 = !DILocation(line: 360, column: 26, scope: !4622, inlinedAt: !4534)
!4626 = !DILocation(line: 361, column: 6, scope: !4627, inlinedAt: !4534)
!4627 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 361, column: 6)
!4628 = !DILocation(line: 361, column: 11, scope: !4627, inlinedAt: !4534)
!4629 = !DILocation(line: 361, column: 6, scope: !4530, inlinedAt: !4534)
!4630 = !DILocation(line: 361, column: 26, scope: !4627, inlinedAt: !4534)
!4631 = !DILocation(line: 362, column: 6, scope: !4632, inlinedAt: !4534)
!4632 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 362, column: 6)
!4633 = !DILocation(line: 362, column: 11, scope: !4632, inlinedAt: !4534)
!4634 = !DILocation(line: 362, column: 6, scope: !4530, inlinedAt: !4534)
!4635 = !DILocation(line: 362, column: 26, scope: !4632, inlinedAt: !4534)
!4636 = !DILocation(line: 363, column: 6, scope: !4637, inlinedAt: !4534)
!4637 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 363, column: 6)
!4638 = !DILocation(line: 363, column: 11, scope: !4637, inlinedAt: !4534)
!4639 = !DILocation(line: 363, column: 6, scope: !4530, inlinedAt: !4534)
!4640 = !DILocation(line: 363, column: 26, scope: !4637, inlinedAt: !4534)
!4641 = !DILocation(line: 364, column: 6, scope: !4642, inlinedAt: !4534)
!4642 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 364, column: 6)
!4643 = !DILocation(line: 364, column: 11, scope: !4642, inlinedAt: !4534)
!4644 = !DILocation(line: 364, column: 6, scope: !4530, inlinedAt: !4534)
!4645 = !DILocation(line: 364, column: 26, scope: !4642, inlinedAt: !4534)
!4646 = !DILocation(line: 365, column: 6, scope: !4647, inlinedAt: !4534)
!4647 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 365, column: 6)
!4648 = !DILocation(line: 365, column: 11, scope: !4647, inlinedAt: !4534)
!4649 = !DILocation(line: 365, column: 6, scope: !4530, inlinedAt: !4534)
!4650 = !DILocation(line: 365, column: 26, scope: !4647, inlinedAt: !4534)
!4651 = !DILocation(line: 366, column: 6, scope: !4652, inlinedAt: !4534)
!4652 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 366, column: 6)
!4653 = !DILocation(line: 366, column: 11, scope: !4652, inlinedAt: !4534)
!4654 = !DILocation(line: 366, column: 6, scope: !4530, inlinedAt: !4534)
!4655 = !DILocation(line: 366, column: 26, scope: !4652, inlinedAt: !4534)
!4656 = !DILocation(line: 367, column: 6, scope: !4657, inlinedAt: !4534)
!4657 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 367, column: 6)
!4658 = !DILocation(line: 367, column: 11, scope: !4657, inlinedAt: !4534)
!4659 = !DILocation(line: 367, column: 6, scope: !4530, inlinedAt: !4534)
!4660 = !DILocation(line: 367, column: 26, scope: !4657, inlinedAt: !4534)
!4661 = !DILocation(line: 368, column: 6, scope: !4662, inlinedAt: !4534)
!4662 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 368, column: 6)
!4663 = !DILocation(line: 368, column: 11, scope: !4662, inlinedAt: !4534)
!4664 = !DILocation(line: 368, column: 6, scope: !4530, inlinedAt: !4534)
!4665 = !DILocation(line: 368, column: 26, scope: !4662, inlinedAt: !4534)
!4666 = !DILocation(line: 369, column: 6, scope: !4667, inlinedAt: !4534)
!4667 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 369, column: 6)
!4668 = !DILocation(line: 369, column: 11, scope: !4667, inlinedAt: !4534)
!4669 = !DILocation(line: 369, column: 6, scope: !4530, inlinedAt: !4534)
!4670 = !DILocation(line: 369, column: 26, scope: !4667, inlinedAt: !4534)
!4671 = !DILocation(line: 370, column: 6, scope: !4672, inlinedAt: !4534)
!4672 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 370, column: 6)
!4673 = !DILocation(line: 370, column: 11, scope: !4672, inlinedAt: !4534)
!4674 = !DILocation(line: 370, column: 6, scope: !4530, inlinedAt: !4534)
!4675 = !DILocation(line: 370, column: 26, scope: !4672, inlinedAt: !4534)
!4676 = !DILocation(line: 371, column: 6, scope: !4677, inlinedAt: !4534)
!4677 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 371, column: 6)
!4678 = !DILocation(line: 371, column: 11, scope: !4677, inlinedAt: !4534)
!4679 = !DILocation(line: 371, column: 6, scope: !4530, inlinedAt: !4534)
!4680 = !DILocation(line: 371, column: 26, scope: !4677, inlinedAt: !4534)
!4681 = !DILocation(line: 372, column: 6, scope: !4682, inlinedAt: !4534)
!4682 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 372, column: 6)
!4683 = !DILocation(line: 372, column: 11, scope: !4682, inlinedAt: !4534)
!4684 = !DILocation(line: 372, column: 6, scope: !4530, inlinedAt: !4534)
!4685 = !DILocation(line: 372, column: 26, scope: !4682, inlinedAt: !4534)
!4686 = !DILocation(line: 373, column: 6, scope: !4687, inlinedAt: !4534)
!4687 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 373, column: 6)
!4688 = !DILocation(line: 373, column: 11, scope: !4687, inlinedAt: !4534)
!4689 = !DILocation(line: 373, column: 6, scope: !4530, inlinedAt: !4534)
!4690 = !DILocation(line: 373, column: 26, scope: !4687, inlinedAt: !4534)
!4691 = !DILocation(line: 374, column: 6, scope: !4692, inlinedAt: !4534)
!4692 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 374, column: 6)
!4693 = !DILocation(line: 374, column: 11, scope: !4692, inlinedAt: !4534)
!4694 = !DILocation(line: 374, column: 6, scope: !4530, inlinedAt: !4534)
!4695 = !DILocation(line: 374, column: 26, scope: !4692, inlinedAt: !4534)
!4696 = !DILocation(line: 375, column: 6, scope: !4697, inlinedAt: !4534)
!4697 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 375, column: 6)
!4698 = !DILocation(line: 375, column: 11, scope: !4697, inlinedAt: !4534)
!4699 = !DILocation(line: 375, column: 6, scope: !4530, inlinedAt: !4534)
!4700 = !DILocation(line: 375, column: 27, scope: !4697, inlinedAt: !4534)
!4701 = !DILocation(line: 376, column: 6, scope: !4702, inlinedAt: !4534)
!4702 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 376, column: 6)
!4703 = !DILocation(line: 376, column: 11, scope: !4702, inlinedAt: !4534)
!4704 = !DILocation(line: 376, column: 6, scope: !4530, inlinedAt: !4534)
!4705 = !DILocation(line: 376, column: 32, scope: !4702, inlinedAt: !4534)
!4706 = !DILocation(line: 377, column: 6, scope: !4707, inlinedAt: !4534)
!4707 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 377, column: 6)
!4708 = !DILocation(line: 377, column: 11, scope: !4707, inlinedAt: !4534)
!4709 = !DILocation(line: 377, column: 6, scope: !4530, inlinedAt: !4534)
!4710 = !DILocation(line: 377, column: 32, scope: !4707, inlinedAt: !4534)
!4711 = !DILocation(line: 378, column: 6, scope: !4712, inlinedAt: !4534)
!4712 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 378, column: 6)
!4713 = !DILocation(line: 378, column: 11, scope: !4712, inlinedAt: !4534)
!4714 = !DILocation(line: 378, column: 6, scope: !4530, inlinedAt: !4534)
!4715 = !DILocation(line: 378, column: 32, scope: !4712, inlinedAt: !4534)
!4716 = !DILocation(line: 379, column: 6, scope: !4717, inlinedAt: !4534)
!4717 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 379, column: 6)
!4718 = !DILocation(line: 379, column: 11, scope: !4717, inlinedAt: !4534)
!4719 = !DILocation(line: 379, column: 6, scope: !4530, inlinedAt: !4534)
!4720 = !DILocation(line: 379, column: 33, scope: !4717, inlinedAt: !4534)
!4721 = !DILocation(line: 380, column: 6, scope: !4722, inlinedAt: !4534)
!4722 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 380, column: 6)
!4723 = !DILocation(line: 380, column: 11, scope: !4722, inlinedAt: !4534)
!4724 = !DILocation(line: 380, column: 6, scope: !4530, inlinedAt: !4534)
!4725 = !DILocation(line: 380, column: 33, scope: !4722, inlinedAt: !4534)
!4726 = !DILocation(line: 381, column: 6, scope: !4727, inlinedAt: !4534)
!4727 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 381, column: 6)
!4728 = !DILocation(line: 381, column: 11, scope: !4727, inlinedAt: !4534)
!4729 = !DILocation(line: 381, column: 6, scope: !4530, inlinedAt: !4534)
!4730 = !DILocation(line: 381, column: 33, scope: !4727, inlinedAt: !4534)
!4731 = !DILocation(line: 382, column: 2, scope: !4732, inlinedAt: !4534)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !289, line: 382, column: 2)
!4733 = distinct !DILexicalBlock(scope: !4530, file: !289, line: 382, column: 2)
!4734 = !{i32 -2143552872, i32 -2143552843, i32 -2143552797, i32 -2143552739, i32 -2143552685, i32 -2143552631, i32 -2143552576, i32 -2143552545}
!4735 = !DILocation(line: 382, column: 2, scope: !4736, inlinedAt: !4534)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !289, line: 382, column: 2)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !289, line: 382, column: 2)
!4738 = !{i32 -2143552102, i32 -2143552095, i32 -2143552041, i32 -2143552010, i32 -2143551980}
!4739 = !DILocation(line: 382, column: 2, scope: !4737, inlinedAt: !4534)
!4740 = !DILocation(line: 386, column: 1, scope: !4530, inlinedAt: !4534)
!4741 = !DILocation(line: 547, column: 9, scope: !4513, inlinedAt: !4516)
!4742 = !DILocation(line: 549, column: 8, scope: !4743, inlinedAt: !4516)
!4743 = distinct !DILexicalBlock(scope: !4513, file: !289, line: 549, column: 7)
!4744 = !DILocation(line: 549, column: 7, scope: !4513, inlinedAt: !4516)
!4745 = !DILocation(line: 550, column: 4, scope: !4743, inlinedAt: !4516)
!4746 = !DILocation(line: 553, column: 33, scope: !4513, inlinedAt: !4516)
!4747 = !DILocation(line: 325, column: 6, scope: !4748, inlinedAt: !4528)
!4748 = distinct !DILexicalBlock(scope: !4524, file: !289, line: 325, column: 6)
!4749 = !DILocation(line: 325, column: 6, scope: !4524, inlinedAt: !4528)
!4750 = !DILocation(line: 326, column: 3, scope: !4748, inlinedAt: !4528)
!4751 = !DILocation(line: 332, column: 9, scope: !4524, inlinedAt: !4528)
!4752 = !DILocation(line: 332, column: 15, scope: !4524, inlinedAt: !4528)
!4753 = !DILocation(line: 332, column: 2, scope: !4524, inlinedAt: !4528)
!4754 = !DILocation(line: 336, column: 1, scope: !4524, inlinedAt: !4528)
!4755 = !DILocation(line: 553, column: 5, scope: !4513, inlinedAt: !4516)
!4756 = !DILocation(line: 553, column: 41, scope: !4513, inlinedAt: !4516)
!4757 = !DILocation(line: 554, column: 5, scope: !4513, inlinedAt: !4516)
!4758 = !DILocation(line: 554, column: 12, scope: !4513, inlinedAt: !4516)
!4759 = !DILocation(line: 448, column: 31, scope: !4508, inlinedAt: !4512)
!4760 = !DILocation(line: 448, column: 34, scope: !4508, inlinedAt: !4512)
!4761 = !DILocation(line: 448, column: 14, scope: !4508, inlinedAt: !4512)
!4762 = !DILocation(line: 450, column: 22, scope: !4508, inlinedAt: !4512)
!4763 = !DILocation(line: 450, column: 25, scope: !4508, inlinedAt: !4512)
!4764 = !DILocation(line: 450, column: 30, scope: !4508, inlinedAt: !4512)
!4765 = !DILocation(line: 450, column: 36, scope: !4508, inlinedAt: !4512)
!4766 = !DILocation(line: 450, column: 8, scope: !4508, inlinedAt: !4512)
!4767 = !DILocation(line: 450, column: 6, scope: !4508, inlinedAt: !4512)
!4768 = !DILocation(line: 451, column: 9, scope: !4508, inlinedAt: !4512)
!4769 = !DILocation(line: 552, column: 3, scope: !4513, inlinedAt: !4516)
!4770 = !DILocation(line: 557, column: 19, scope: !4515, inlinedAt: !4516)
!4771 = !DILocation(line: 557, column: 25, scope: !4515, inlinedAt: !4516)
!4772 = !DILocation(line: 557, column: 9, scope: !4515, inlinedAt: !4516)
!4773 = !DILocation(line: 557, column: 2, scope: !4515, inlinedAt: !4516)
!4774 = !DILocation(line: 558, column: 1, scope: !4515, inlinedAt: !4516)
!4775 = !DILocation(line: 664, column: 2, scope: !4504)
!4776 = distinct !DISubprogram(name: "tda10086_read_byte", scope: !3, file: !3, line: 55, type: !4777, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!310, !4453, !310}
!4779 = !DILocalVariable(name: "state", arg: 1, scope: !4776, file: !3, line: 55, type: !4453)
!4780 = !DILocation(line: 55, column: 54, scope: !4776)
!4781 = !DILocalVariable(name: "reg", arg: 2, scope: !4776, file: !3, line: 55, type: !310)
!4782 = !DILocation(line: 55, column: 65, scope: !4776)
!4783 = !DILocalVariable(name: "ret", scope: !4776, file: !3, line: 57, type: !310)
!4784 = !DILocation(line: 57, column: 6, scope: !4776)
!4785 = !DILocalVariable(name: "b0", scope: !4776, file: !3, line: 58, type: !4786)
!4786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 8, elements: !1525)
!4787 = !DILocation(line: 58, column: 5, scope: !4776)
!4788 = !DILocation(line: 58, column: 12, scope: !4776)
!4789 = !DILocation(line: 58, column: 14, scope: !4776)
!4790 = !DILocalVariable(name: "b1", scope: !4776, file: !3, line: 59, type: !4786)
!4791 = !DILocation(line: 59, column: 5, scope: !4776)
!4792 = !DILocalVariable(name: "msg", scope: !4776, file: !3, line: 60, type: !4793)
!4793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4344, size: 256, elements: !1728)
!4794 = !DILocation(line: 60, column: 17, scope: !4776)
!4795 = !DILocation(line: 60, column: 25, scope: !4776)
!4796 = !DILocation(line: 60, column: 26, scope: !4776)
!4797 = !DILocation(line: 60, column: 47, scope: !4776)
!4798 = !DILocation(line: 61, column: 5, scope: !4776)
!4799 = !DILocation(line: 61, column: 33, scope: !4776)
!4800 = !DILocation(line: 63, column: 16, scope: !4776)
!4801 = !DILocation(line: 63, column: 23, scope: !4776)
!4802 = !DILocation(line: 63, column: 31, scope: !4776)
!4803 = !DILocation(line: 63, column: 2, scope: !4776)
!4804 = !DILocation(line: 63, column: 9, scope: !4776)
!4805 = !DILocation(line: 63, column: 14, scope: !4776)
!4806 = !DILocation(line: 64, column: 16, scope: !4776)
!4807 = !DILocation(line: 64, column: 23, scope: !4776)
!4808 = !DILocation(line: 64, column: 31, scope: !4776)
!4809 = !DILocation(line: 64, column: 2, scope: !4776)
!4810 = !DILocation(line: 64, column: 9, scope: !4776)
!4811 = !DILocation(line: 64, column: 14, scope: !4776)
!4812 = !DILocation(line: 65, column: 21, scope: !4776)
!4813 = !DILocation(line: 65, column: 28, scope: !4776)
!4814 = !DILocation(line: 65, column: 33, scope: !4776)
!4815 = !DILocation(line: 65, column: 8, scope: !4776)
!4816 = !DILocation(line: 65, column: 6, scope: !4776)
!4817 = !DILocation(line: 67, column: 6, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 67, column: 6)
!4819 = !DILocation(line: 67, column: 10, scope: !4818)
!4820 = !DILocation(line: 67, column: 6, scope: !4776)
!4821 = !DILocation(line: 68, column: 3, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 67, column: 16)
!4823 = !DILocation(line: 68, column: 3, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 68, column: 3)
!4825 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 68, column: 3)
!4826 = !DILocation(line: 68, column: 3, scope: !4825)
!4827 = !DILocation(line: 70, column: 10, scope: !4822)
!4828 = !DILocation(line: 70, column: 3, scope: !4822)
!4829 = !DILocation(line: 73, column: 9, scope: !4776)
!4830 = !DILocation(line: 73, column: 2, scope: !4776)
!4831 = !DILocation(line: 74, column: 1, scope: !4776)
!4832 = distinct !DISubprogram(name: "get_order", scope: !4833, file: !4833, line: 29, type: !4834, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4833 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!310, !584}
!4836 = !DILocalVariable(name: "x", arg: 1, scope: !4837, file: !4838, line: 366, type: !306)
!4837 = distinct !DISubprogram(name: "fls64", scope: !4838, file: !4838, line: 366, type: !4839, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4838 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!310, !306}
!4841 = !DILocation(line: 366, column: 40, scope: !4837, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 46, column: 9, scope: !4832)
!4843 = !DILocalVariable(name: "bitpos", scope: !4837, file: !4838, line: 368, type: !310)
!4844 = !DILocation(line: 368, column: 6, scope: !4837, inlinedAt: !4842)
!4845 = !DILocalVariable(name: "size", arg: 1, scope: !4832, file: !4833, line: 29, type: !584)
!4846 = !DILocation(line: 29, column: 63, scope: !4832)
!4847 = !DILocation(line: 31, column: 27, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4832, file: !4833, line: 31, column: 6)
!4849 = !DILocation(line: 31, column: 6, scope: !4848)
!4850 = !DILocation(line: 31, column: 6, scope: !4832)
!4851 = !DILocation(line: 32, column: 8, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !4833, line: 32, column: 7)
!4853 = distinct !DILexicalBlock(scope: !4848, file: !4833, line: 31, column: 34)
!4854 = !DILocation(line: 32, column: 7, scope: !4853)
!4855 = !DILocation(line: 33, column: 4, scope: !4852)
!4856 = !DILocation(line: 35, column: 7, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4853, file: !4833, line: 35, column: 7)
!4858 = !DILocation(line: 35, column: 12, scope: !4857)
!4859 = !DILocation(line: 35, column: 7, scope: !4853)
!4860 = !DILocation(line: 36, column: 4, scope: !4857)
!4861 = !DILocation(line: 38, column: 10, scope: !4853)
!4862 = !DILocation(line: 38, column: 28, scope: !4853)
!4863 = !DILocation(line: 38, column: 41, scope: !4853)
!4864 = !DILocation(line: 38, column: 3, scope: !4853)
!4865 = !DILocation(line: 41, column: 6, scope: !4832)
!4866 = !DILocation(line: 42, column: 7, scope: !4832)
!4867 = !DILocation(line: 46, column: 15, scope: !4832)
!4868 = !DILocation(line: 374, column: 2, scope: !4837, inlinedAt: !4842)
!4869 = !DILocation(line: 376, column: 14, scope: !4837, inlinedAt: !4842)
!4870 = !{i32 325601}
!4871 = !DILocation(line: 377, column: 9, scope: !4837, inlinedAt: !4842)
!4872 = !DILocation(line: 377, column: 16, scope: !4837, inlinedAt: !4842)
!4873 = !DILocation(line: 46, column: 2, scope: !4832)
!4874 = !DILocation(line: 48, column: 1, scope: !4832)
!4875 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4876, file: !4876, line: 30, type: !4877, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4876 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!310, !304}
!4879 = !DILocation(line: 366, column: 40, scope: !4837, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 32, column: 9, scope: !4875)
!4881 = !DILocation(line: 368, column: 6, scope: !4837, inlinedAt: !4880)
!4882 = !DILocalVariable(name: "n", arg: 1, scope: !4875, file: !4876, line: 30, type: !304)
!4883 = !DILocation(line: 30, column: 21, scope: !4875)
!4884 = !DILocation(line: 32, column: 15, scope: !4875)
!4885 = !DILocation(line: 374, column: 2, scope: !4837, inlinedAt: !4880)
!4886 = !DILocation(line: 376, column: 14, scope: !4837, inlinedAt: !4880)
!4887 = !DILocation(line: 377, column: 9, scope: !4837, inlinedAt: !4880)
!4888 = !DILocation(line: 377, column: 16, scope: !4837, inlinedAt: !4880)
!4889 = !DILocation(line: 32, column: 18, scope: !4875)
!4890 = !DILocation(line: 32, column: 2, scope: !4875)
!4891 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4892, file: !4892, line: 137, type: !4893, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4892 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!303, !1178, !2286, !581, !301}
!4895 = !DILocalVariable(name: "s", arg: 1, scope: !4891, file: !4892, line: 137, type: !1178)
!4896 = !DILocation(line: 137, column: 54, scope: !4891)
!4897 = !DILocalVariable(name: "object", arg: 2, scope: !4891, file: !4892, line: 137, type: !2286)
!4898 = !DILocation(line: 137, column: 69, scope: !4891)
!4899 = !DILocalVariable(name: "size", arg: 3, scope: !4891, file: !4892, line: 138, type: !581)
!4900 = !DILocation(line: 138, column: 12, scope: !4891)
!4901 = !DILocalVariable(name: "flags", arg: 4, scope: !4891, file: !4892, line: 138, type: !301)
!4902 = !DILocation(line: 138, column: 24, scope: !4891)
!4903 = !DILocation(line: 140, column: 17, scope: !4891)
!4904 = !DILocation(line: 140, column: 2, scope: !4891)
!4905 = distinct !DISubprogram(name: "tda10086_release", scope: !3, file: !3, line: 689, type: !440, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4906 = !DILocalVariable(name: "fe", arg: 1, scope: !4905, file: !3, line: 689, type: !442)
!4907 = !DILocation(line: 689, column: 51, scope: !4905)
!4908 = !DILocalVariable(name: "state", scope: !4905, file: !3, line: 691, type: !4453)
!4909 = !DILocation(line: 691, column: 25, scope: !4905)
!4910 = !DILocation(line: 691, column: 33, scope: !4905)
!4911 = !DILocation(line: 691, column: 37, scope: !4905)
!4912 = !DILocation(line: 692, column: 17, scope: !4905)
!4913 = !DILocation(line: 692, column: 2, scope: !4905)
!4914 = !DILocation(line: 693, column: 8, scope: !4905)
!4915 = !DILocation(line: 693, column: 2, scope: !4905)
!4916 = !DILocation(line: 694, column: 1, scope: !4905)
!4917 = distinct !DISubprogram(name: "tda10086_init", scope: !3, file: !3, line: 93, type: !4134, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!4918 = !DILocalVariable(name: "fe", arg: 1, scope: !4917, file: !3, line: 93, type: !442)
!4919 = !DILocation(line: 93, column: 47, scope: !4917)
!4920 = !DILocalVariable(name: "state", scope: !4917, file: !3, line: 95, type: !4453)
!4921 = !DILocation(line: 95, column: 25, scope: !4917)
!4922 = !DILocation(line: 95, column: 33, scope: !4917)
!4923 = !DILocation(line: 95, column: 37, scope: !4917)
!4924 = !DILocalVariable(name: "t22k_off", scope: !4917, file: !3, line: 96, type: !357)
!4925 = !DILocation(line: 96, column: 5, scope: !4917)
!4926 = !DILocation(line: 98, column: 2, scope: !4917)
!4927 = !DILocation(line: 98, column: 2, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 98, column: 2)
!4929 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 98, column: 2)
!4930 = !DILocation(line: 98, column: 2, scope: !4929)
!4931 = !DILocation(line: 100, column: 6, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 100, column: 6)
!4933 = !DILocation(line: 100, column: 13, scope: !4932)
!4934 = !DILocation(line: 100, column: 21, scope: !4932)
!4935 = !DILocation(line: 100, column: 6, scope: !4917)
!4936 = !DILocation(line: 101, column: 12, scope: !4932)
!4937 = !DILocation(line: 101, column: 3, scope: !4932)
!4938 = !DILocation(line: 103, column: 22, scope: !4917)
!4939 = !DILocation(line: 103, column: 2, scope: !4917)
!4940 = !DILocation(line: 104, column: 2, scope: !4917)
!4941 = !DILocation(line: 107, column: 22, scope: !4917)
!4942 = !DILocation(line: 107, column: 2, scope: !4917)
!4943 = !DILocation(line: 108, column: 22, scope: !4917)
!4944 = !DILocation(line: 108, column: 2, scope: !4917)
!4945 = !DILocation(line: 109, column: 22, scope: !4917)
!4946 = !DILocation(line: 109, column: 2, scope: !4917)
!4947 = !DILocation(line: 110, column: 22, scope: !4917)
!4948 = !DILocation(line: 110, column: 2, scope: !4917)
!4949 = !DILocation(line: 111, column: 22, scope: !4917)
!4950 = !DILocation(line: 111, column: 2, scope: !4917)
!4951 = !DILocation(line: 112, column: 22, scope: !4917)
!4952 = !DILocation(line: 112, column: 2, scope: !4917)
!4953 = !DILocation(line: 113, column: 22, scope: !4917)
!4954 = !DILocation(line: 113, column: 2, scope: !4917)
!4955 = !DILocation(line: 114, column: 22, scope: !4917)
!4956 = !DILocation(line: 114, column: 2, scope: !4917)
!4957 = !DILocation(line: 115, column: 22, scope: !4917)
!4958 = !DILocation(line: 115, column: 2, scope: !4917)
!4959 = !DILocation(line: 116, column: 22, scope: !4917)
!4960 = !DILocation(line: 116, column: 2, scope: !4917)
!4961 = !DILocation(line: 119, column: 22, scope: !4917)
!4962 = !DILocation(line: 119, column: 2, scope: !4917)
!4963 = !DILocation(line: 120, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 120, column: 6)
!4965 = !DILocation(line: 120, column: 13, scope: !4964)
!4966 = !DILocation(line: 120, column: 21, scope: !4964)
!4967 = !DILocation(line: 120, column: 31, scope: !4964)
!4968 = !DILocation(line: 120, column: 6, scope: !4917)
!4969 = !DILocation(line: 121, column: 23, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 120, column: 53)
!4971 = !DILocation(line: 121, column: 3, scope: !4970)
!4972 = !DILocation(line: 122, column: 23, scope: !4970)
!4973 = !DILocation(line: 122, column: 3, scope: !4970)
!4974 = !DILocation(line: 123, column: 2, scope: !4970)
!4975 = !DILocation(line: 124, column: 23, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 123, column: 9)
!4977 = !DILocation(line: 124, column: 3, scope: !4976)
!4978 = !DILocation(line: 125, column: 23, scope: !4976)
!4979 = !DILocation(line: 125, column: 3, scope: !4976)
!4980 = !DILocation(line: 127, column: 22, scope: !4917)
!4981 = !DILocation(line: 127, column: 2, scope: !4917)
!4982 = !DILocation(line: 130, column: 22, scope: !4917)
!4983 = !DILocation(line: 130, column: 2, scope: !4917)
!4984 = !DILocation(line: 131, column: 22, scope: !4917)
!4985 = !DILocation(line: 131, column: 2, scope: !4917)
!4986 = !DILocation(line: 132, column: 22, scope: !4917)
!4987 = !DILocation(line: 132, column: 2, scope: !4917)
!4988 = !DILocation(line: 133, column: 22, scope: !4917)
!4989 = !DILocation(line: 133, column: 2, scope: !4917)
!4990 = !DILocation(line: 134, column: 22, scope: !4917)
!4991 = !DILocation(line: 134, column: 2, scope: !4917)
!4992 = !DILocation(line: 135, column: 22, scope: !4917)
!4993 = !DILocation(line: 135, column: 2, scope: !4917)
!4994 = !DILocation(line: 138, column: 22, scope: !4917)
!4995 = !DILocation(line: 138, column: 2, scope: !4917)
!4996 = !DILocation(line: 139, column: 22, scope: !4917)
!4997 = !DILocation(line: 139, column: 2, scope: !4917)
!4998 = !DILocation(line: 142, column: 22, scope: !4917)
!4999 = !DILocation(line: 142, column: 2, scope: !4917)
!5000 = !DILocation(line: 143, column: 22, scope: !4917)
!5001 = !DILocation(line: 143, column: 2, scope: !4917)
!5002 = !DILocation(line: 144, column: 22, scope: !4917)
!5003 = !DILocation(line: 144, column: 2, scope: !4917)
!5004 = !DILocation(line: 145, column: 22, scope: !4917)
!5005 = !DILocation(line: 145, column: 2, scope: !4917)
!5006 = !DILocation(line: 146, column: 22, scope: !4917)
!5007 = !DILocation(line: 146, column: 2, scope: !4917)
!5008 = !DILocation(line: 147, column: 22, scope: !4917)
!5009 = !DILocation(line: 147, column: 2, scope: !4917)
!5010 = !DILocation(line: 150, column: 22, scope: !4917)
!5011 = !DILocation(line: 150, column: 2, scope: !4917)
!5012 = !DILocation(line: 153, column: 22, scope: !4917)
!5013 = !DILocation(line: 153, column: 2, scope: !4917)
!5014 = !DILocation(line: 156, column: 22, scope: !4917)
!5015 = !DILocation(line: 156, column: 35, scope: !4917)
!5016 = !DILocation(line: 156, column: 2, scope: !4917)
!5017 = !DILocation(line: 157, column: 22, scope: !4917)
!5018 = !DILocation(line: 157, column: 2, scope: !4917)
!5019 = !DILocation(line: 158, column: 22, scope: !4917)
!5020 = !DILocation(line: 158, column: 2, scope: !4917)
!5021 = !DILocation(line: 160, column: 2, scope: !4917)
!5022 = distinct !DISubprogram(name: "tda10086_sleep", scope: !3, file: !3, line: 630, type: !4134, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5023 = !DILocalVariable(name: "fe", arg: 1, scope: !5022, file: !3, line: 630, type: !442)
!5024 = !DILocation(line: 630, column: 48, scope: !5022)
!5025 = !DILocalVariable(name: "state", scope: !5022, file: !3, line: 632, type: !4453)
!5026 = !DILocation(line: 632, column: 25, scope: !5022)
!5027 = !DILocation(line: 632, column: 33, scope: !5022)
!5028 = !DILocation(line: 632, column: 37, scope: !5022)
!5029 = !DILocation(line: 634, column: 2, scope: !5022)
!5030 = !DILocation(line: 634, column: 2, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 634, column: 2)
!5032 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 634, column: 2)
!5033 = !DILocation(line: 634, column: 2, scope: !5032)
!5034 = !DILocation(line: 636, column: 22, scope: !5022)
!5035 = !DILocation(line: 636, column: 2, scope: !5022)
!5036 = !DILocation(line: 638, column: 2, scope: !5022)
!5037 = distinct !DISubprogram(name: "tda10086_set_frontend", scope: !3, file: !3, line: 401, type: !4134, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5038 = !DILocalVariable(name: "fe", arg: 1, scope: !5037, file: !3, line: 401, type: !442)
!5039 = !DILocation(line: 401, column: 55, scope: !5037)
!5040 = !DILocalVariable(name: "fe_params", scope: !5037, file: !3, line: 403, type: !4167)
!5041 = !DILocation(line: 403, column: 34, scope: !5037)
!5042 = !DILocation(line: 403, column: 47, scope: !5037)
!5043 = !DILocation(line: 403, column: 51, scope: !5037)
!5044 = !DILocalVariable(name: "state", scope: !5037, file: !3, line: 404, type: !4453)
!5045 = !DILocation(line: 404, column: 25, scope: !5037)
!5046 = !DILocation(line: 404, column: 33, scope: !5037)
!5047 = !DILocation(line: 404, column: 37, scope: !5037)
!5048 = !DILocalVariable(name: "ret", scope: !5037, file: !3, line: 405, type: !310)
!5049 = !DILocation(line: 405, column: 6, scope: !5037)
!5050 = !DILocalVariable(name: "freq", scope: !5037, file: !3, line: 406, type: !425)
!5051 = !DILocation(line: 406, column: 6, scope: !5037)
!5052 = !DILocalVariable(name: "freqoff", scope: !5037, file: !3, line: 407, type: !310)
!5053 = !DILocation(line: 407, column: 6, scope: !5037)
!5054 = !DILocation(line: 409, column: 2, scope: !5037)
!5055 = !DILocation(line: 409, column: 2, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 409, column: 2)
!5057 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 409, column: 2)
!5058 = !DILocation(line: 409, column: 2, scope: !5057)
!5059 = !DILocation(line: 412, column: 22, scope: !5037)
!5060 = !DILocation(line: 412, column: 2, scope: !5037)
!5061 = !DILocation(line: 413, column: 2, scope: !5037)
!5062 = !DILocation(line: 413, column: 9, scope: !5037)
!5063 = !DILocation(line: 413, column: 18, scope: !5037)
!5064 = !DILocation(line: 416, column: 6, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 416, column: 6)
!5066 = !DILocation(line: 416, column: 10, scope: !5065)
!5067 = !DILocation(line: 416, column: 14, scope: !5065)
!5068 = !DILocation(line: 416, column: 24, scope: !5065)
!5069 = !DILocation(line: 416, column: 6, scope: !5037)
!5070 = !DILocation(line: 417, column: 3, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 416, column: 36)
!5072 = !DILocation(line: 417, column: 7, scope: !5071)
!5073 = !DILocation(line: 417, column: 11, scope: !5071)
!5074 = !DILocation(line: 417, column: 21, scope: !5071)
!5075 = !DILocation(line: 417, column: 32, scope: !5071)
!5076 = !DILocation(line: 418, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 418, column: 7)
!5078 = !DILocation(line: 418, column: 11, scope: !5077)
!5079 = !DILocation(line: 418, column: 15, scope: !5077)
!5080 = !DILocation(line: 418, column: 7, scope: !5071)
!5081 = !DILocation(line: 419, column: 4, scope: !5077)
!5082 = !DILocation(line: 419, column: 8, scope: !5077)
!5083 = !DILocation(line: 419, column: 12, scope: !5077)
!5084 = !DILocation(line: 419, column: 26, scope: !5077)
!5085 = !DILocation(line: 421, column: 7, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 421, column: 7)
!5087 = !DILocation(line: 421, column: 11, scope: !5086)
!5088 = !DILocation(line: 421, column: 15, scope: !5086)
!5089 = !DILocation(line: 421, column: 25, scope: !5086)
!5090 = !DILocation(line: 421, column: 7, scope: !5071)
!5091 = !DILocation(line: 422, column: 4, scope: !5086)
!5092 = !DILocation(line: 422, column: 8, scope: !5086)
!5093 = !DILocation(line: 422, column: 12, scope: !5086)
!5094 = !DILocation(line: 422, column: 22, scope: !5086)
!5095 = !DILocation(line: 422, column: 36, scope: !5086)
!5096 = !DILocation(line: 423, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 423, column: 7)
!5098 = !DILocation(line: 423, column: 11, scope: !5097)
!5099 = !DILocation(line: 423, column: 15, scope: !5097)
!5100 = !DILocation(line: 423, column: 7, scope: !5071)
!5101 = !DILocation(line: 424, column: 4, scope: !5097)
!5102 = !DILocation(line: 424, column: 8, scope: !5097)
!5103 = !DILocation(line: 424, column: 12, scope: !5097)
!5104 = !DILocation(line: 424, column: 26, scope: !5097)
!5105 = !DILocation(line: 425, column: 2, scope: !5071)
!5106 = !DILocation(line: 428, column: 12, scope: !5037)
!5107 = !DILocation(line: 428, column: 23, scope: !5037)
!5108 = !DILocation(line: 428, column: 35, scope: !5037)
!5109 = !DILocation(line: 428, column: 33, scope: !5037)
!5110 = !DILocation(line: 428, column: 10, scope: !5037)
!5111 = !DILocation(line: 429, column: 23, scope: !5037)
!5112 = !DILocation(line: 429, column: 21, scope: !5037)
!5113 = !DILocation(line: 429, column: 32, scope: !5037)
!5114 = !DILocation(line: 429, column: 10, scope: !5037)
!5115 = !DILocation(line: 430, column: 22, scope: !5037)
!5116 = !DILocation(line: 430, column: 44, scope: !5037)
!5117 = !DILocation(line: 430, column: 52, scope: !5037)
!5118 = !DILocation(line: 430, column: 58, scope: !5037)
!5119 = !DILocation(line: 430, column: 40, scope: !5037)
!5120 = !DILocation(line: 430, column: 2, scope: !5037)
!5121 = !DILocation(line: 431, column: 22, scope: !5037)
!5122 = !DILocation(line: 431, column: 35, scope: !5037)
!5123 = !DILocation(line: 431, column: 2, scope: !5037)
!5124 = !DILocation(line: 433, column: 36, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 433, column: 6)
!5126 = !DILocation(line: 433, column: 43, scope: !5125)
!5127 = !DILocation(line: 433, column: 13, scope: !5125)
!5128 = !DILocation(line: 433, column: 11, scope: !5125)
!5129 = !DILocation(line: 433, column: 55, scope: !5125)
!5130 = !DILocation(line: 433, column: 6, scope: !5037)
!5131 = !DILocation(line: 434, column: 10, scope: !5125)
!5132 = !DILocation(line: 434, column: 3, scope: !5125)
!5133 = !DILocation(line: 435, column: 38, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 435, column: 6)
!5135 = !DILocation(line: 435, column: 45, scope: !5134)
!5136 = !DILocation(line: 435, column: 13, scope: !5134)
!5137 = !DILocation(line: 435, column: 11, scope: !5134)
!5138 = !DILocation(line: 435, column: 57, scope: !5134)
!5139 = !DILocation(line: 435, column: 6, scope: !5037)
!5140 = !DILocation(line: 436, column: 10, scope: !5134)
!5141 = !DILocation(line: 436, column: 3, scope: !5134)
!5142 = !DILocation(line: 437, column: 30, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 437, column: 6)
!5144 = !DILocation(line: 437, column: 37, scope: !5143)
!5145 = !DILocation(line: 437, column: 13, scope: !5143)
!5146 = !DILocation(line: 437, column: 11, scope: !5143)
!5147 = !DILocation(line: 437, column: 49, scope: !5143)
!5148 = !DILocation(line: 437, column: 6, scope: !5037)
!5149 = !DILocation(line: 438, column: 10, scope: !5143)
!5150 = !DILocation(line: 438, column: 3, scope: !5143)
!5151 = !DILocation(line: 441, column: 22, scope: !5037)
!5152 = !DILocation(line: 441, column: 2, scope: !5037)
!5153 = !DILocation(line: 442, column: 22, scope: !5037)
!5154 = !DILocation(line: 442, column: 2, scope: !5037)
!5155 = !DILocation(line: 444, column: 23, scope: !5037)
!5156 = !DILocation(line: 444, column: 34, scope: !5037)
!5157 = !DILocation(line: 444, column: 2, scope: !5037)
!5158 = !DILocation(line: 444, column: 9, scope: !5037)
!5159 = !DILocation(line: 444, column: 21, scope: !5037)
!5160 = !DILocation(line: 445, column: 21, scope: !5037)
!5161 = !DILocation(line: 445, column: 32, scope: !5037)
!5162 = !DILocation(line: 445, column: 2, scope: !5037)
!5163 = !DILocation(line: 445, column: 9, scope: !5037)
!5164 = !DILocation(line: 445, column: 19, scope: !5037)
!5165 = !DILocation(line: 446, column: 2, scope: !5037)
!5166 = !DILocation(line: 447, column: 1, scope: !5037)
!5167 = distinct !DISubprogram(name: "tda10086_get_tune_settings", scope: !3, file: !3, line: 656, type: !4155, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5168 = !DILocalVariable(name: "fe", arg: 1, scope: !5167, file: !3, line: 656, type: !442)
!5169 = !DILocation(line: 656, column: 60, scope: !5167)
!5170 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5167, file: !3, line: 656, type: !4157)
!5171 = !DILocation(line: 656, column: 99, scope: !5167)
!5172 = !DILocalVariable(name: "p", scope: !5167, file: !3, line: 658, type: !4167)
!5173 = !DILocation(line: 658, column: 34, scope: !5167)
!5174 = !DILocation(line: 658, column: 39, scope: !5167)
!5175 = !DILocation(line: 658, column: 43, scope: !5167)
!5176 = !DILocation(line: 660, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 660, column: 6)
!5178 = !DILocation(line: 660, column: 9, scope: !5177)
!5179 = !DILocation(line: 660, column: 21, scope: !5177)
!5180 = !DILocation(line: 660, column: 6, scope: !5167)
!5181 = !DILocation(line: 661, column: 3, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 660, column: 33)
!5183 = !DILocation(line: 661, column: 15, scope: !5182)
!5184 = !DILocation(line: 661, column: 28, scope: !5182)
!5185 = !DILocation(line: 662, column: 3, scope: !5182)
!5186 = !DILocation(line: 662, column: 15, scope: !5182)
!5187 = !DILocation(line: 662, column: 25, scope: !5182)
!5188 = !DILocation(line: 663, column: 3, scope: !5182)
!5189 = !DILocation(line: 663, column: 15, scope: !5182)
!5190 = !DILocation(line: 663, column: 25, scope: !5182)
!5191 = !DILocation(line: 664, column: 2, scope: !5182)
!5192 = !DILocation(line: 664, column: 13, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 664, column: 13)
!5194 = !DILocation(line: 664, column: 16, scope: !5193)
!5195 = !DILocation(line: 664, column: 28, scope: !5193)
!5196 = !DILocation(line: 664, column: 13, scope: !5177)
!5197 = !DILocation(line: 665, column: 3, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 664, column: 40)
!5199 = !DILocation(line: 665, column: 15, scope: !5198)
!5200 = !DILocation(line: 665, column: 28, scope: !5198)
!5201 = !DILocation(line: 666, column: 3, scope: !5198)
!5202 = !DILocation(line: 666, column: 15, scope: !5198)
!5203 = !DILocation(line: 666, column: 25, scope: !5198)
!5204 = !DILocation(line: 667, column: 3, scope: !5198)
!5205 = !DILocation(line: 667, column: 15, scope: !5198)
!5206 = !DILocation(line: 667, column: 25, scope: !5198)
!5207 = !DILocation(line: 668, column: 2, scope: !5198)
!5208 = !DILocation(line: 668, column: 13, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 668, column: 13)
!5210 = !DILocation(line: 668, column: 16, scope: !5209)
!5211 = !DILocation(line: 668, column: 28, scope: !5209)
!5212 = !DILocation(line: 668, column: 13, scope: !5193)
!5213 = !DILocation(line: 669, column: 3, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 668, column: 39)
!5215 = !DILocation(line: 669, column: 15, scope: !5214)
!5216 = !DILocation(line: 669, column: 28, scope: !5214)
!5217 = !DILocation(line: 670, column: 3, scope: !5214)
!5218 = !DILocation(line: 670, column: 15, scope: !5214)
!5219 = !DILocation(line: 670, column: 25, scope: !5214)
!5220 = !DILocation(line: 671, column: 3, scope: !5214)
!5221 = !DILocation(line: 671, column: 15, scope: !5214)
!5222 = !DILocation(line: 671, column: 25, scope: !5214)
!5223 = !DILocation(line: 672, column: 2, scope: !5214)
!5224 = !DILocation(line: 672, column: 13, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 672, column: 13)
!5226 = !DILocation(line: 672, column: 16, scope: !5225)
!5227 = !DILocation(line: 672, column: 28, scope: !5225)
!5228 = !DILocation(line: 672, column: 13, scope: !5209)
!5229 = !DILocation(line: 673, column: 3, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 672, column: 39)
!5231 = !DILocation(line: 673, column: 15, scope: !5230)
!5232 = !DILocation(line: 673, column: 28, scope: !5230)
!5233 = !DILocation(line: 674, column: 3, scope: !5230)
!5234 = !DILocation(line: 674, column: 15, scope: !5230)
!5235 = !DILocation(line: 674, column: 25, scope: !5230)
!5236 = !DILocation(line: 675, column: 3, scope: !5230)
!5237 = !DILocation(line: 675, column: 15, scope: !5230)
!5238 = !DILocation(line: 675, column: 25, scope: !5230)
!5239 = !DILocation(line: 676, column: 2, scope: !5230)
!5240 = !DILocation(line: 676, column: 13, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 676, column: 13)
!5242 = !DILocation(line: 676, column: 16, scope: !5241)
!5243 = !DILocation(line: 676, column: 28, scope: !5241)
!5244 = !DILocation(line: 676, column: 13, scope: !5225)
!5245 = !DILocation(line: 677, column: 3, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 676, column: 39)
!5247 = !DILocation(line: 677, column: 15, scope: !5246)
!5248 = !DILocation(line: 677, column: 28, scope: !5246)
!5249 = !DILocation(line: 678, column: 27, scope: !5246)
!5250 = !DILocation(line: 678, column: 30, scope: !5246)
!5251 = !DILocation(line: 678, column: 42, scope: !5246)
!5252 = !DILocation(line: 678, column: 3, scope: !5246)
!5253 = !DILocation(line: 678, column: 15, scope: !5246)
!5254 = !DILocation(line: 678, column: 25, scope: !5246)
!5255 = !DILocation(line: 679, column: 32, scope: !5246)
!5256 = !DILocation(line: 679, column: 44, scope: !5246)
!5257 = !DILocation(line: 679, column: 30, scope: !5246)
!5258 = !DILocation(line: 679, column: 3, scope: !5246)
!5259 = !DILocation(line: 679, column: 15, scope: !5246)
!5260 = !DILocation(line: 679, column: 25, scope: !5246)
!5261 = !DILocation(line: 680, column: 2, scope: !5246)
!5262 = !DILocation(line: 681, column: 3, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 680, column: 9)
!5264 = !DILocation(line: 681, column: 15, scope: !5263)
!5265 = !DILocation(line: 681, column: 28, scope: !5263)
!5266 = !DILocation(line: 682, column: 28, scope: !5263)
!5267 = !DILocation(line: 682, column: 31, scope: !5263)
!5268 = !DILocation(line: 682, column: 43, scope: !5263)
!5269 = !DILocation(line: 682, column: 3, scope: !5263)
!5270 = !DILocation(line: 682, column: 15, scope: !5263)
!5271 = !DILocation(line: 682, column: 25, scope: !5263)
!5272 = !DILocation(line: 683, column: 32, scope: !5263)
!5273 = !DILocation(line: 683, column: 44, scope: !5263)
!5274 = !DILocation(line: 683, column: 30, scope: !5263)
!5275 = !DILocation(line: 683, column: 3, scope: !5263)
!5276 = !DILocation(line: 683, column: 15, scope: !5263)
!5277 = !DILocation(line: 683, column: 25, scope: !5263)
!5278 = !DILocation(line: 686, column: 2, scope: !5167)
!5279 = distinct !DISubprogram(name: "tda10086_get_frontend", scope: !3, file: !3, line: 449, type: !4165, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5280 = !DILocalVariable(name: "fe", arg: 1, scope: !5279, file: !3, line: 449, type: !442)
!5281 = !DILocation(line: 449, column: 55, scope: !5279)
!5282 = !DILocalVariable(name: "fe_params", arg: 2, scope: !5279, file: !3, line: 450, type: !4167)
!5283 = !DILocation(line: 450, column: 38, scope: !5279)
!5284 = !DILocalVariable(name: "state", scope: !5279, file: !3, line: 452, type: !4453)
!5285 = !DILocation(line: 452, column: 25, scope: !5279)
!5286 = !DILocation(line: 452, column: 33, scope: !5279)
!5287 = !DILocation(line: 452, column: 37, scope: !5279)
!5288 = !DILocalVariable(name: "val", scope: !5279, file: !3, line: 453, type: !357)
!5289 = !DILocation(line: 453, column: 5, scope: !5279)
!5290 = !DILocalVariable(name: "tmp", scope: !5279, file: !3, line: 454, type: !310)
!5291 = !DILocation(line: 454, column: 6, scope: !5279)
!5292 = !DILocalVariable(name: "tmp64", scope: !5279, file: !3, line: 455, type: !304)
!5293 = !DILocation(line: 455, column: 6, scope: !5279)
!5294 = !DILocation(line: 457, column: 2, scope: !5279)
!5295 = !DILocation(line: 457, column: 2, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 457, column: 2)
!5297 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 457, column: 2)
!5298 = !DILocation(line: 457, column: 2, scope: !5297)
!5299 = !DILocation(line: 460, column: 6, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 460, column: 6)
!5301 = !DILocation(line: 460, column: 17, scope: !5300)
!5302 = !DILocation(line: 460, column: 29, scope: !5300)
!5303 = !DILocation(line: 460, column: 6, scope: !5279)
!5304 = !DILocation(line: 461, column: 3, scope: !5300)
!5305 = !DILocation(line: 464, column: 35, scope: !5279)
!5306 = !DILocation(line: 464, column: 16, scope: !5279)
!5307 = !DILocation(line: 464, column: 11, scope: !5279)
!5308 = !DILocation(line: 465, column: 25, scope: !5279)
!5309 = !DILocation(line: 465, column: 6, scope: !5279)
!5310 = !DILocation(line: 465, column: 38, scope: !5279)
!5311 = !DILocation(line: 465, column: 5, scope: !5279)
!5312 = !DILocation(line: 465, column: 3, scope: !5279)
!5313 = !DILocation(line: 464, column: 8, scope: !5279)
!5314 = !DILocation(line: 466, column: 6, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 466, column: 6)
!5316 = !DILocation(line: 466, column: 12, scope: !5315)
!5317 = !DILocation(line: 466, column: 6, scope: !5279)
!5318 = !DILocation(line: 467, column: 9, scope: !5315)
!5319 = !DILocation(line: 467, column: 3, scope: !5315)
!5320 = !DILocation(line: 468, column: 11, scope: !5279)
!5321 = !DILocation(line: 468, column: 17, scope: !5279)
!5322 = !DILocation(line: 468, column: 8, scope: !5279)
!5323 = !DILocalVariable(name: "__base", scope: !5324, file: !3, line: 469, type: !808)
!5324 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 469, column: 2)
!5325 = !DILocation(line: 469, column: 2, scope: !5324)
!5326 = !DILocalVariable(name: "__rem", scope: !5324, file: !3, line: 469, type: !808)
!5327 = !DILocation(line: 470, column: 31, scope: !5279)
!5328 = !DILocation(line: 470, column: 38, scope: !5279)
!5329 = !DILocation(line: 470, column: 56, scope: !5279)
!5330 = !DILocation(line: 470, column: 50, scope: !5279)
!5331 = !DILocation(line: 470, column: 48, scope: !5279)
!5332 = !DILocation(line: 470, column: 2, scope: !5279)
!5333 = !DILocation(line: 470, column: 13, scope: !5279)
!5334 = !DILocation(line: 470, column: 23, scope: !5279)
!5335 = !DILocation(line: 473, column: 27, scope: !5279)
!5336 = !DILocation(line: 473, column: 8, scope: !5279)
!5337 = !DILocation(line: 473, column: 6, scope: !5279)
!5338 = !DILocation(line: 474, column: 6, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 474, column: 6)
!5340 = !DILocation(line: 474, column: 10, scope: !5339)
!5341 = !DILocation(line: 474, column: 6, scope: !5279)
!5342 = !DILocation(line: 475, column: 10, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 474, column: 18)
!5344 = !DILocation(line: 475, column: 14, scope: !5343)
!5345 = !DILocation(line: 475, column: 3, scope: !5343)
!5346 = !DILocation(line: 477, column: 4, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 475, column: 22)
!5348 = !DILocation(line: 477, column: 15, scope: !5347)
!5349 = !DILocation(line: 477, column: 25, scope: !5347)
!5350 = !DILocation(line: 478, column: 8, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 478, column: 8)
!5352 = !DILocation(line: 478, column: 15, scope: !5351)
!5353 = !DILocation(line: 478, column: 23, scope: !5351)
!5354 = !DILocation(line: 478, column: 8, scope: !5347)
!5355 = !DILocation(line: 479, column: 5, scope: !5351)
!5356 = !DILocation(line: 479, column: 16, scope: !5351)
!5357 = !DILocation(line: 479, column: 26, scope: !5351)
!5358 = !DILocation(line: 480, column: 4, scope: !5347)
!5359 = !DILocation(line: 482, column: 4, scope: !5347)
!5360 = !DILocation(line: 482, column: 15, scope: !5347)
!5361 = !DILocation(line: 482, column: 25, scope: !5347)
!5362 = !DILocation(line: 483, column: 8, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 483, column: 8)
!5364 = !DILocation(line: 483, column: 15, scope: !5363)
!5365 = !DILocation(line: 483, column: 23, scope: !5363)
!5366 = !DILocation(line: 483, column: 8, scope: !5347)
!5367 = !DILocation(line: 484, column: 5, scope: !5363)
!5368 = !DILocation(line: 484, column: 16, scope: !5363)
!5369 = !DILocation(line: 484, column: 26, scope: !5363)
!5370 = !DILocation(line: 485, column: 4, scope: !5347)
!5371 = !DILocation(line: 487, column: 2, scope: !5343)
!5372 = !DILocation(line: 488, column: 22, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 487, column: 9)
!5374 = !DILocation(line: 488, column: 3, scope: !5373)
!5375 = !DILocation(line: 489, column: 10, scope: !5373)
!5376 = !DILocation(line: 489, column: 14, scope: !5373)
!5377 = !DILocation(line: 489, column: 3, scope: !5373)
!5378 = !DILocation(line: 491, column: 4, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 489, column: 22)
!5380 = !DILocation(line: 491, column: 15, scope: !5379)
!5381 = !DILocation(line: 491, column: 25, scope: !5379)
!5382 = !DILocation(line: 492, column: 8, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 492, column: 8)
!5384 = !DILocation(line: 492, column: 15, scope: !5383)
!5385 = !DILocation(line: 492, column: 23, scope: !5383)
!5386 = !DILocation(line: 492, column: 8, scope: !5379)
!5387 = !DILocation(line: 493, column: 5, scope: !5383)
!5388 = !DILocation(line: 493, column: 16, scope: !5383)
!5389 = !DILocation(line: 493, column: 26, scope: !5383)
!5390 = !DILocation(line: 494, column: 4, scope: !5379)
!5391 = !DILocation(line: 496, column: 4, scope: !5379)
!5392 = !DILocation(line: 496, column: 15, scope: !5379)
!5393 = !DILocation(line: 496, column: 25, scope: !5379)
!5394 = !DILocation(line: 497, column: 8, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 497, column: 8)
!5396 = !DILocation(line: 497, column: 15, scope: !5395)
!5397 = !DILocation(line: 497, column: 23, scope: !5395)
!5398 = !DILocation(line: 497, column: 8, scope: !5379)
!5399 = !DILocation(line: 498, column: 5, scope: !5395)
!5400 = !DILocation(line: 498, column: 16, scope: !5395)
!5401 = !DILocation(line: 498, column: 26, scope: !5395)
!5402 = !DILocation(line: 499, column: 4, scope: !5379)
!5403 = !DILocation(line: 504, column: 27, scope: !5279)
!5404 = !DILocation(line: 504, column: 8, scope: !5279)
!5405 = !DILocation(line: 504, column: 6, scope: !5279)
!5406 = !DILocation(line: 505, column: 6, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 505, column: 6)
!5408 = !DILocation(line: 505, column: 10, scope: !5407)
!5409 = !DILocation(line: 505, column: 6, scope: !5279)
!5410 = !DILocation(line: 506, column: 7, scope: !5407)
!5411 = !DILocation(line: 506, column: 3, scope: !5407)
!5412 = !DILocation(line: 507, column: 9, scope: !5279)
!5413 = !DILocation(line: 507, column: 13, scope: !5279)
!5414 = !DILocation(line: 507, column: 19, scope: !5279)
!5415 = !DILocation(line: 507, column: 29, scope: !5279)
!5416 = !DILocation(line: 507, column: 6, scope: !5279)
!5417 = !DILocation(line: 508, column: 10, scope: !5279)
!5418 = !DILocation(line: 508, column: 17, scope: !5279)
!5419 = !DILocation(line: 508, column: 28, scope: !5279)
!5420 = !DILocation(line: 508, column: 37, scope: !5279)
!5421 = !DILocation(line: 508, column: 35, scope: !5279)
!5422 = !DILocation(line: 508, column: 42, scope: !5279)
!5423 = !DILocation(line: 508, column: 6, scope: !5279)
!5424 = !DILocation(line: 509, column: 27, scope: !5279)
!5425 = !DILocation(line: 509, column: 34, scope: !5279)
!5426 = !DILocation(line: 509, column: 48, scope: !5279)
!5427 = !DILocation(line: 509, column: 46, scope: !5279)
!5428 = !DILocation(line: 509, column: 2, scope: !5279)
!5429 = !DILocation(line: 509, column: 13, scope: !5279)
!5430 = !DILocation(line: 509, column: 25, scope: !5279)
!5431 = !DILocation(line: 512, column: 28, scope: !5279)
!5432 = !DILocation(line: 512, column: 9, scope: !5279)
!5433 = !DILocation(line: 512, column: 41, scope: !5279)
!5434 = !DILocation(line: 512, column: 49, scope: !5279)
!5435 = !DILocation(line: 512, column: 8, scope: !5279)
!5436 = !DILocation(line: 512, column: 6, scope: !5279)
!5437 = !DILocation(line: 513, column: 9, scope: !5279)
!5438 = !DILocation(line: 513, column: 2, scope: !5279)
!5439 = !DILocation(line: 515, column: 3, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 513, column: 14)
!5441 = !DILocation(line: 515, column: 14, scope: !5440)
!5442 = !DILocation(line: 515, column: 24, scope: !5440)
!5443 = !DILocation(line: 516, column: 3, scope: !5440)
!5444 = !DILocation(line: 518, column: 3, scope: !5440)
!5445 = !DILocation(line: 518, column: 14, scope: !5440)
!5446 = !DILocation(line: 518, column: 24, scope: !5440)
!5447 = !DILocation(line: 519, column: 3, scope: !5440)
!5448 = !DILocation(line: 521, column: 3, scope: !5440)
!5449 = !DILocation(line: 521, column: 14, scope: !5440)
!5450 = !DILocation(line: 521, column: 24, scope: !5440)
!5451 = !DILocation(line: 522, column: 3, scope: !5440)
!5452 = !DILocation(line: 524, column: 3, scope: !5440)
!5453 = !DILocation(line: 524, column: 14, scope: !5440)
!5454 = !DILocation(line: 524, column: 24, scope: !5440)
!5455 = !DILocation(line: 525, column: 3, scope: !5440)
!5456 = !DILocation(line: 527, column: 3, scope: !5440)
!5457 = !DILocation(line: 527, column: 14, scope: !5440)
!5458 = !DILocation(line: 527, column: 24, scope: !5440)
!5459 = !DILocation(line: 528, column: 3, scope: !5440)
!5460 = !DILocation(line: 530, column: 3, scope: !5440)
!5461 = !DILocation(line: 530, column: 14, scope: !5440)
!5462 = !DILocation(line: 530, column: 24, scope: !5440)
!5463 = !DILocation(line: 531, column: 3, scope: !5440)
!5464 = !DILocation(line: 533, column: 3, scope: !5440)
!5465 = !DILocation(line: 533, column: 14, scope: !5440)
!5466 = !DILocation(line: 533, column: 24, scope: !5440)
!5467 = !DILocation(line: 534, column: 3, scope: !5440)
!5468 = !DILocation(line: 536, column: 3, scope: !5440)
!5469 = !DILocation(line: 536, column: 14, scope: !5440)
!5470 = !DILocation(line: 536, column: 24, scope: !5440)
!5471 = !DILocation(line: 537, column: 3, scope: !5440)
!5472 = !DILocation(line: 540, column: 2, scope: !5279)
!5473 = !DILocation(line: 541, column: 1, scope: !5279)
!5474 = distinct !DISubprogram(name: "tda10086_read_status", scope: !3, file: !3, line: 543, type: !4170, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5475 = !DILocalVariable(name: "fe", arg: 1, scope: !5474, file: !3, line: 543, type: !442)
!5476 = !DILocation(line: 543, column: 54, scope: !5474)
!5477 = !DILocalVariable(name: "fe_status", arg: 2, scope: !5474, file: !3, line: 544, type: !4147)
!5478 = !DILocation(line: 544, column: 21, scope: !5474)
!5479 = !DILocalVariable(name: "state", scope: !5474, file: !3, line: 546, type: !4453)
!5480 = !DILocation(line: 546, column: 25, scope: !5474)
!5481 = !DILocation(line: 546, column: 33, scope: !5474)
!5482 = !DILocation(line: 546, column: 37, scope: !5474)
!5483 = !DILocalVariable(name: "val", scope: !5474, file: !3, line: 547, type: !357)
!5484 = !DILocation(line: 547, column: 5, scope: !5474)
!5485 = !DILocation(line: 549, column: 2, scope: !5474)
!5486 = !DILocation(line: 549, column: 2, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 549, column: 2)
!5488 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 549, column: 2)
!5489 = !DILocation(line: 549, column: 2, scope: !5488)
!5490 = !DILocation(line: 551, column: 27, scope: !5474)
!5491 = !DILocation(line: 551, column: 8, scope: !5474)
!5492 = !DILocation(line: 551, column: 6, scope: !5474)
!5493 = !DILocation(line: 552, column: 3, scope: !5474)
!5494 = !DILocation(line: 552, column: 13, scope: !5474)
!5495 = !DILocation(line: 553, column: 6, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 553, column: 6)
!5497 = !DILocation(line: 553, column: 10, scope: !5496)
!5498 = !DILocation(line: 553, column: 6, scope: !5474)
!5499 = !DILocation(line: 554, column: 4, scope: !5496)
!5500 = !DILocation(line: 554, column: 14, scope: !5496)
!5501 = !DILocation(line: 554, column: 3, scope: !5496)
!5502 = !DILocation(line: 555, column: 6, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 555, column: 6)
!5504 = !DILocation(line: 555, column: 10, scope: !5503)
!5505 = !DILocation(line: 555, column: 6, scope: !5474)
!5506 = !DILocation(line: 556, column: 4, scope: !5503)
!5507 = !DILocation(line: 556, column: 14, scope: !5503)
!5508 = !DILocation(line: 556, column: 3, scope: !5503)
!5509 = !DILocation(line: 557, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 557, column: 6)
!5511 = !DILocation(line: 557, column: 10, scope: !5510)
!5512 = !DILocation(line: 557, column: 6, scope: !5474)
!5513 = !DILocation(line: 558, column: 4, scope: !5510)
!5514 = !DILocation(line: 558, column: 14, scope: !5510)
!5515 = !DILocation(line: 558, column: 3, scope: !5510)
!5516 = !DILocation(line: 559, column: 6, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 559, column: 6)
!5518 = !DILocation(line: 559, column: 10, scope: !5517)
!5519 = !DILocation(line: 559, column: 6, scope: !5474)
!5520 = !DILocation(line: 560, column: 4, scope: !5517)
!5521 = !DILocation(line: 560, column: 14, scope: !5517)
!5522 = !DILocation(line: 560, column: 3, scope: !5517)
!5523 = !DILocation(line: 561, column: 6, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 561, column: 6)
!5525 = !DILocation(line: 561, column: 10, scope: !5524)
!5526 = !DILocation(line: 561, column: 6, scope: !5474)
!5527 = !DILocation(line: 562, column: 4, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 561, column: 18)
!5529 = !DILocation(line: 562, column: 14, scope: !5528)
!5530 = !DILocation(line: 563, column: 8, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 563, column: 7)
!5532 = !DILocation(line: 563, column: 15, scope: !5531)
!5533 = !DILocation(line: 563, column: 7, scope: !5528)
!5534 = !DILocation(line: 564, column: 4, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 563, column: 25)
!5536 = !DILocation(line: 564, column: 11, scope: !5535)
!5537 = !DILocation(line: 564, column: 20, scope: !5535)
!5538 = !DILocation(line: 566, column: 24, scope: !5535)
!5539 = !DILocation(line: 566, column: 4, scope: !5535)
!5540 = !DILocation(line: 567, column: 3, scope: !5535)
!5541 = !DILocation(line: 568, column: 2, scope: !5528)
!5542 = !DILocation(line: 570, column: 2, scope: !5474)
!5543 = distinct !DISubprogram(name: "tda10086_read_ber", scope: !3, file: !3, line: 615, type: !4174, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5544 = !DILocalVariable(name: "fe", arg: 1, scope: !5543, file: !3, line: 615, type: !442)
!5545 = !DILocation(line: 615, column: 51, scope: !5543)
!5546 = !DILocalVariable(name: "ber", arg: 2, scope: !5543, file: !3, line: 615, type: !1569)
!5547 = !DILocation(line: 615, column: 60, scope: !5543)
!5548 = !DILocalVariable(name: "state", scope: !5543, file: !3, line: 617, type: !4453)
!5549 = !DILocation(line: 617, column: 25, scope: !5543)
!5550 = !DILocation(line: 617, column: 33, scope: !5543)
!5551 = !DILocation(line: 617, column: 37, scope: !5543)
!5552 = !DILocation(line: 619, column: 2, scope: !5543)
!5553 = !DILocation(line: 619, column: 2, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 619, column: 2)
!5555 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 619, column: 2)
!5556 = !DILocation(line: 619, column: 2, scope: !5555)
!5557 = !DILocation(line: 622, column: 3, scope: !5543)
!5558 = !DILocation(line: 622, column: 7, scope: !5543)
!5559 = !DILocation(line: 623, column: 29, scope: !5543)
!5560 = !DILocation(line: 623, column: 10, scope: !5543)
!5561 = !DILocation(line: 623, column: 3, scope: !5543)
!5562 = !DILocation(line: 623, column: 7, scope: !5543)
!5563 = !DILocation(line: 624, column: 29, scope: !5543)
!5564 = !DILocation(line: 624, column: 10, scope: !5543)
!5565 = !DILocation(line: 624, column: 42, scope: !5543)
!5566 = !DILocation(line: 624, column: 3, scope: !5543)
!5567 = !DILocation(line: 624, column: 7, scope: !5543)
!5568 = !DILocation(line: 625, column: 30, scope: !5543)
!5569 = !DILocation(line: 625, column: 11, scope: !5543)
!5570 = !DILocation(line: 625, column: 43, scope: !5543)
!5571 = !DILocation(line: 625, column: 50, scope: !5543)
!5572 = !DILocation(line: 625, column: 3, scope: !5543)
!5573 = !DILocation(line: 625, column: 7, scope: !5543)
!5574 = !DILocation(line: 627, column: 2, scope: !5543)
!5575 = distinct !DISubprogram(name: "tda10086_read_signal_strength", scope: !3, file: !3, line: 573, type: !4178, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5576 = !DILocalVariable(name: "fe", arg: 1, scope: !5575, file: !3, line: 573, type: !442)
!5577 = !DILocation(line: 573, column: 63, scope: !5575)
!5578 = !DILocalVariable(name: "signal", arg: 2, scope: !5575, file: !3, line: 573, type: !4180)
!5579 = !DILocation(line: 573, column: 73, scope: !5575)
!5580 = !DILocalVariable(name: "state", scope: !5575, file: !3, line: 575, type: !4453)
!5581 = !DILocation(line: 575, column: 25, scope: !5575)
!5582 = !DILocation(line: 575, column: 33, scope: !5575)
!5583 = !DILocation(line: 575, column: 37, scope: !5575)
!5584 = !DILocalVariable(name: "_str", scope: !5575, file: !3, line: 576, type: !357)
!5585 = !DILocation(line: 576, column: 5, scope: !5575)
!5586 = !DILocation(line: 578, column: 2, scope: !5575)
!5587 = !DILocation(line: 578, column: 2, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 578, column: 2)
!5589 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 578, column: 2)
!5590 = !DILocation(line: 578, column: 2, scope: !5589)
!5591 = !DILocation(line: 580, column: 35, scope: !5575)
!5592 = !DILocation(line: 580, column: 16, scope: !5575)
!5593 = !DILocation(line: 580, column: 14, scope: !5575)
!5594 = !DILocation(line: 580, column: 9, scope: !5575)
!5595 = !DILocation(line: 580, column: 7, scope: !5575)
!5596 = !DILocation(line: 581, column: 13, scope: !5575)
!5597 = !DILocation(line: 581, column: 18, scope: !5575)
!5598 = !DILocation(line: 581, column: 26, scope: !5575)
!5599 = !DILocation(line: 581, column: 24, scope: !5575)
!5600 = !DILocation(line: 581, column: 12, scope: !5575)
!5601 = !DILocation(line: 581, column: 3, scope: !5575)
!5602 = !DILocation(line: 581, column: 10, scope: !5575)
!5603 = !DILocation(line: 583, column: 2, scope: !5575)
!5604 = distinct !DISubprogram(name: "tda10086_read_snr", scope: !3, file: !3, line: 586, type: !4178, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5605 = !DILocalVariable(name: "fe", arg: 1, scope: !5604, file: !3, line: 586, type: !442)
!5606 = !DILocation(line: 586, column: 51, scope: !5604)
!5607 = !DILocalVariable(name: "snr", arg: 2, scope: !5604, file: !3, line: 586, type: !4180)
!5608 = !DILocation(line: 586, column: 61, scope: !5604)
!5609 = !DILocalVariable(name: "state", scope: !5604, file: !3, line: 588, type: !4453)
!5610 = !DILocation(line: 588, column: 25, scope: !5604)
!5611 = !DILocation(line: 588, column: 33, scope: !5604)
!5612 = !DILocation(line: 588, column: 37, scope: !5604)
!5613 = !DILocalVariable(name: "_snr", scope: !5604, file: !3, line: 589, type: !357)
!5614 = !DILocation(line: 589, column: 5, scope: !5604)
!5615 = !DILocation(line: 591, column: 2, scope: !5604)
!5616 = !DILocation(line: 591, column: 2, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 591, column: 2)
!5618 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 591, column: 2)
!5619 = !DILocation(line: 591, column: 2, scope: !5618)
!5620 = !DILocation(line: 593, column: 35, scope: !5604)
!5621 = !DILocation(line: 593, column: 16, scope: !5604)
!5622 = !DILocation(line: 593, column: 14, scope: !5604)
!5623 = !DILocation(line: 593, column: 9, scope: !5604)
!5624 = !DILocation(line: 593, column: 7, scope: !5604)
!5625 = !DILocation(line: 594, column: 10, scope: !5604)
!5626 = !DILocation(line: 594, column: 15, scope: !5604)
!5627 = !DILocation(line: 594, column: 23, scope: !5604)
!5628 = !DILocation(line: 594, column: 21, scope: !5604)
!5629 = !DILocation(line: 594, column: 9, scope: !5604)
!5630 = !DILocation(line: 594, column: 3, scope: !5604)
!5631 = !DILocation(line: 594, column: 7, scope: !5604)
!5632 = !DILocation(line: 596, column: 2, scope: !5604)
!5633 = distinct !DISubprogram(name: "tda10086_read_ucblocks", scope: !3, file: !3, line: 599, type: !4174, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5634 = !DILocalVariable(name: "fe", arg: 1, scope: !5633, file: !3, line: 599, type: !442)
!5635 = !DILocation(line: 599, column: 56, scope: !5633)
!5636 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5633, file: !3, line: 599, type: !1569)
!5637 = !DILocation(line: 599, column: 65, scope: !5633)
!5638 = !DILocalVariable(name: "state", scope: !5633, file: !3, line: 601, type: !4453)
!5639 = !DILocation(line: 601, column: 25, scope: !5633)
!5640 = !DILocation(line: 601, column: 33, scope: !5633)
!5641 = !DILocation(line: 601, column: 37, scope: !5633)
!5642 = !DILocation(line: 603, column: 2, scope: !5633)
!5643 = !DILocation(line: 603, column: 2, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 603, column: 2)
!5645 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 603, column: 2)
!5646 = !DILocation(line: 603, column: 2, scope: !5645)
!5647 = !DILocation(line: 606, column: 33, scope: !5633)
!5648 = !DILocation(line: 606, column: 14, scope: !5633)
!5649 = !DILocation(line: 606, column: 46, scope: !5633)
!5650 = !DILocation(line: 606, column: 3, scope: !5633)
!5651 = !DILocation(line: 606, column: 12, scope: !5633)
!5652 = !DILocation(line: 609, column: 22, scope: !5633)
!5653 = !DILocation(line: 609, column: 2, scope: !5633)
!5654 = !DILocation(line: 610, column: 22, scope: !5633)
!5655 = !DILocation(line: 610, column: 2, scope: !5633)
!5656 = !DILocation(line: 612, column: 2, scope: !5633)
!5657 = distinct !DISubprogram(name: "tda10086_send_master_cmd", scope: !3, file: !3, line: 199, type: !4186, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5658 = !DILocalVariable(name: "fe", arg: 1, scope: !5657, file: !3, line: 199, type: !442)
!5659 = !DILocation(line: 199, column: 59, scope: !5657)
!5660 = !DILocalVariable(name: "cmd", arg: 2, scope: !5657, file: !3, line: 200, type: !4188)
!5661 = !DILocation(line: 200, column: 39, scope: !5657)
!5662 = !DILocalVariable(name: "state", scope: !5657, file: !3, line: 202, type: !4453)
!5663 = !DILocation(line: 202, column: 25, scope: !5657)
!5664 = !DILocation(line: 202, column: 33, scope: !5657)
!5665 = !DILocation(line: 202, column: 37, scope: !5657)
!5666 = !DILocalVariable(name: "i", scope: !5657, file: !3, line: 203, type: !310)
!5667 = !DILocation(line: 203, column: 6, scope: !5657)
!5668 = !DILocalVariable(name: "oldval", scope: !5657, file: !3, line: 204, type: !357)
!5669 = !DILocation(line: 204, column: 5, scope: !5657)
!5670 = !DILocalVariable(name: "t22k_off", scope: !5657, file: !3, line: 205, type: !357)
!5671 = !DILocation(line: 205, column: 5, scope: !5657)
!5672 = !DILocation(line: 207, column: 2, scope: !5657)
!5673 = !DILocation(line: 207, column: 2, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 207, column: 2)
!5675 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 207, column: 2)
!5676 = !DILocation(line: 207, column: 2, scope: !5675)
!5677 = !DILocation(line: 209, column: 6, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 209, column: 6)
!5679 = !DILocation(line: 209, column: 13, scope: !5678)
!5680 = !DILocation(line: 209, column: 21, scope: !5678)
!5681 = !DILocation(line: 209, column: 6, scope: !5657)
!5682 = !DILocation(line: 210, column: 12, scope: !5678)
!5683 = !DILocation(line: 210, column: 3, scope: !5678)
!5684 = !DILocation(line: 212, column: 6, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 212, column: 6)
!5686 = !DILocation(line: 212, column: 11, scope: !5685)
!5687 = !DILocation(line: 212, column: 19, scope: !5685)
!5688 = !DILocation(line: 212, column: 6, scope: !5657)
!5689 = !DILocation(line: 213, column: 3, scope: !5685)
!5690 = !DILocation(line: 214, column: 30, scope: !5657)
!5691 = !DILocation(line: 214, column: 11, scope: !5657)
!5692 = !DILocation(line: 214, column: 9, scope: !5657)
!5693 = !DILocation(line: 216, column: 7, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 216, column: 2)
!5695 = !DILocation(line: 216, column: 6, scope: !5694)
!5696 = !DILocation(line: 216, column: 11, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 216, column: 2)
!5698 = !DILocation(line: 216, column: 14, scope: !5697)
!5699 = !DILocation(line: 216, column: 19, scope: !5697)
!5700 = !DILocation(line: 216, column: 12, scope: !5697)
!5701 = !DILocation(line: 216, column: 2, scope: !5694)
!5702 = !DILocation(line: 217, column: 23, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 216, column: 33)
!5704 = !DILocation(line: 217, column: 35, scope: !5703)
!5705 = !DILocation(line: 217, column: 34, scope: !5703)
!5706 = !DILocation(line: 217, column: 38, scope: !5703)
!5707 = !DILocation(line: 217, column: 43, scope: !5703)
!5708 = !DILocation(line: 217, column: 47, scope: !5703)
!5709 = !DILocation(line: 217, column: 3, scope: !5703)
!5710 = !DILocation(line: 218, column: 2, scope: !5703)
!5711 = !DILocation(line: 216, column: 29, scope: !5697)
!5712 = !DILocation(line: 216, column: 2, scope: !5697)
!5713 = distinct !{!5713, !5701, !5714}
!5714 = !DILocation(line: 218, column: 2, scope: !5694)
!5715 = !DILocation(line: 219, column: 22, scope: !5657)
!5716 = !DILocation(line: 219, column: 43, scope: !5657)
!5717 = !DILocation(line: 219, column: 41, scope: !5657)
!5718 = !DILocation(line: 220, column: 10, scope: !5657)
!5719 = !DILocation(line: 220, column: 15, scope: !5657)
!5720 = !DILocation(line: 220, column: 23, scope: !5657)
!5721 = !DILocation(line: 220, column: 28, scope: !5657)
!5722 = !DILocation(line: 220, column: 6, scope: !5657)
!5723 = !DILocation(line: 219, column: 2, scope: !5657)
!5724 = !DILocation(line: 222, column: 23, scope: !5657)
!5725 = !DILocation(line: 222, column: 2, scope: !5657)
!5726 = !DILocation(line: 224, column: 22, scope: !5657)
!5727 = !DILocation(line: 224, column: 35, scope: !5657)
!5728 = !DILocation(line: 224, column: 2, scope: !5657)
!5729 = !DILocation(line: 226, column: 2, scope: !5657)
!5730 = !DILocation(line: 227, column: 1, scope: !5657)
!5731 = distinct !DISubprogram(name: "tda10086_send_burst", scope: !3, file: !3, line: 229, type: !4207, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5732 = !DILocalVariable(name: "fe", arg: 1, scope: !5731, file: !3, line: 229, type: !442)
!5733 = !DILocation(line: 229, column: 53, scope: !5731)
!5734 = !DILocalVariable(name: "minicmd", arg: 2, scope: !5731, file: !3, line: 230, type: !171)
!5735 = !DILocation(line: 230, column: 32, scope: !5731)
!5736 = !DILocalVariable(name: "state", scope: !5731, file: !3, line: 232, type: !4453)
!5737 = !DILocation(line: 232, column: 25, scope: !5731)
!5738 = !DILocation(line: 232, column: 33, scope: !5731)
!5739 = !DILocation(line: 232, column: 37, scope: !5731)
!5740 = !DILocalVariable(name: "oldval", scope: !5731, file: !3, line: 233, type: !357)
!5741 = !DILocation(line: 233, column: 5, scope: !5731)
!5742 = !DILocation(line: 233, column: 33, scope: !5731)
!5743 = !DILocation(line: 233, column: 14, scope: !5731)
!5744 = !DILocalVariable(name: "t22k_off", scope: !5731, file: !3, line: 234, type: !357)
!5745 = !DILocation(line: 234, column: 5, scope: !5731)
!5746 = !DILocation(line: 236, column: 2, scope: !5731)
!5747 = !DILocation(line: 236, column: 2, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 236, column: 2)
!5749 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 236, column: 2)
!5750 = !DILocation(line: 236, column: 2, scope: !5749)
!5751 = !DILocation(line: 238, column: 6, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 238, column: 6)
!5753 = !DILocation(line: 238, column: 13, scope: !5752)
!5754 = !DILocation(line: 238, column: 21, scope: !5752)
!5755 = !DILocation(line: 238, column: 6, scope: !5731)
!5756 = !DILocation(line: 239, column: 12, scope: !5752)
!5757 = !DILocation(line: 239, column: 3, scope: !5752)
!5758 = !DILocation(line: 241, column: 9, scope: !5731)
!5759 = !DILocation(line: 241, column: 2, scope: !5731)
!5760 = !DILocation(line: 243, column: 23, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 241, column: 18)
!5762 = !DILocation(line: 243, column: 43, scope: !5761)
!5763 = !DILocation(line: 243, column: 41, scope: !5761)
!5764 = !DILocation(line: 243, column: 3, scope: !5761)
!5765 = !DILocation(line: 244, column: 3, scope: !5761)
!5766 = !DILocation(line: 247, column: 23, scope: !5761)
!5767 = !DILocation(line: 247, column: 43, scope: !5761)
!5768 = !DILocation(line: 247, column: 41, scope: !5761)
!5769 = !DILocation(line: 247, column: 3, scope: !5761)
!5770 = !DILocation(line: 248, column: 3, scope: !5761)
!5771 = !DILocation(line: 251, column: 23, scope: !5731)
!5772 = !DILocation(line: 251, column: 2, scope: !5731)
!5773 = !DILocation(line: 253, column: 22, scope: !5731)
!5774 = !DILocation(line: 253, column: 35, scope: !5731)
!5775 = !DILocation(line: 253, column: 2, scope: !5731)
!5776 = !DILocation(line: 255, column: 2, scope: !5731)
!5777 = distinct !DISubprogram(name: "tda10086_set_tone", scope: !3, file: !3, line: 175, type: !4211, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5778 = !DILocalVariable(name: "fe", arg: 1, scope: !5777, file: !3, line: 175, type: !442)
!5779 = !DILocation(line: 175, column: 51, scope: !5777)
!5780 = !DILocalVariable(name: "tone", arg: 2, scope: !5777, file: !3, line: 176, type: !78)
!5781 = !DILocation(line: 176, column: 31, scope: !5777)
!5782 = !DILocalVariable(name: "state", scope: !5777, file: !3, line: 178, type: !4453)
!5783 = !DILocation(line: 178, column: 25, scope: !5777)
!5784 = !DILocation(line: 178, column: 33, scope: !5777)
!5785 = !DILocation(line: 178, column: 37, scope: !5777)
!5786 = !DILocalVariable(name: "t22k_off", scope: !5777, file: !3, line: 179, type: !357)
!5787 = !DILocation(line: 179, column: 5, scope: !5777)
!5788 = !DILocation(line: 181, column: 2, scope: !5777)
!5789 = !DILocation(line: 181, column: 2, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 181, column: 2)
!5791 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 181, column: 2)
!5792 = !DILocation(line: 181, column: 2, scope: !5791)
!5793 = !DILocation(line: 183, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 183, column: 6)
!5795 = !DILocation(line: 183, column: 13, scope: !5794)
!5796 = !DILocation(line: 183, column: 21, scope: !5794)
!5797 = !DILocation(line: 183, column: 6, scope: !5777)
!5798 = !DILocation(line: 184, column: 12, scope: !5794)
!5799 = !DILocation(line: 184, column: 3, scope: !5794)
!5800 = !DILocation(line: 186, column: 10, scope: !5777)
!5801 = !DILocation(line: 186, column: 2, scope: !5777)
!5802 = !DILocation(line: 188, column: 23, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 186, column: 16)
!5804 = !DILocation(line: 188, column: 36, scope: !5803)
!5805 = !DILocation(line: 188, column: 3, scope: !5803)
!5806 = !DILocation(line: 189, column: 3, scope: !5803)
!5807 = !DILocation(line: 192, column: 23, scope: !5803)
!5808 = !DILocation(line: 192, column: 43, scope: !5803)
!5809 = !DILocation(line: 192, column: 41, scope: !5803)
!5810 = !DILocation(line: 192, column: 3, scope: !5803)
!5811 = !DILocation(line: 193, column: 3, scope: !5803)
!5812 = !DILocation(line: 196, column: 2, scope: !5777)
!5813 = distinct !DISubprogram(name: "tda10086_i2c_gate_ctrl", scope: !3, file: !3, line: 641, type: !4227, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5814 = !DILocalVariable(name: "fe", arg: 1, scope: !5813, file: !3, line: 641, type: !442)
!5815 = !DILocation(line: 641, column: 56, scope: !5813)
!5816 = !DILocalVariable(name: "enable", arg: 2, scope: !5813, file: !3, line: 641, type: !310)
!5817 = !DILocation(line: 641, column: 64, scope: !5813)
!5818 = !DILocalVariable(name: "state", scope: !5813, file: !3, line: 643, type: !4453)
!5819 = !DILocation(line: 643, column: 25, scope: !5813)
!5820 = !DILocation(line: 643, column: 33, scope: !5813)
!5821 = !DILocation(line: 643, column: 37, scope: !5813)
!5822 = !DILocation(line: 645, column: 2, scope: !5813)
!5823 = !DILocation(line: 645, column: 2, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 645, column: 2)
!5825 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 645, column: 2)
!5826 = !DILocation(line: 645, column: 2, scope: !5825)
!5827 = !DILocation(line: 647, column: 6, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 647, column: 6)
!5829 = !DILocation(line: 647, column: 6, scope: !5813)
!5830 = !DILocation(line: 648, column: 23, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 647, column: 14)
!5832 = !DILocation(line: 648, column: 3, scope: !5831)
!5833 = !DILocation(line: 649, column: 2, scope: !5831)
!5834 = !DILocation(line: 650, column: 23, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 649, column: 9)
!5836 = !DILocation(line: 650, column: 3, scope: !5835)
!5837 = !DILocation(line: 653, column: 2, scope: !5813)
!5838 = distinct !DISubprogram(name: "tda10086_write_byte", scope: !3, file: !3, line: 39, type: !5839, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!310, !4453, !310, !310}
!5841 = !DILocalVariable(name: "state", arg: 1, scope: !5838, file: !3, line: 39, type: !4453)
!5842 = !DILocation(line: 39, column: 55, scope: !5838)
!5843 = !DILocalVariable(name: "reg", arg: 2, scope: !5838, file: !3, line: 39, type: !310)
!5844 = !DILocation(line: 39, column: 66, scope: !5838)
!5845 = !DILocalVariable(name: "data", arg: 3, scope: !5838, file: !3, line: 39, type: !310)
!5846 = !DILocation(line: 39, column: 75, scope: !5838)
!5847 = !DILocalVariable(name: "ret", scope: !5838, file: !3, line: 41, type: !310)
!5848 = !DILocation(line: 41, column: 6, scope: !5838)
!5849 = !DILocalVariable(name: "b0", scope: !5838, file: !3, line: 42, type: !5850)
!5850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 16, elements: !1728)
!5851 = !DILocation(line: 42, column: 5, scope: !5838)
!5852 = !DILocation(line: 42, column: 12, scope: !5838)
!5853 = !DILocation(line: 42, column: 14, scope: !5838)
!5854 = !DILocation(line: 42, column: 19, scope: !5838)
!5855 = !DILocalVariable(name: "msg", scope: !5838, file: !3, line: 43, type: !4344)
!5856 = !DILocation(line: 43, column: 17, scope: !5838)
!5857 = !DILocation(line: 43, column: 23, scope: !5838)
!5858 = !DILocation(line: 43, column: 44, scope: !5838)
!5859 = !DILocation(line: 45, column: 13, scope: !5838)
!5860 = !DILocation(line: 45, column: 20, scope: !5838)
!5861 = !DILocation(line: 45, column: 28, scope: !5838)
!5862 = !DILocation(line: 45, column: 6, scope: !5838)
!5863 = !DILocation(line: 45, column: 11, scope: !5838)
!5864 = !DILocation(line: 46, column: 21, scope: !5838)
!5865 = !DILocation(line: 46, column: 28, scope: !5838)
!5866 = !DILocation(line: 46, column: 8, scope: !5838)
!5867 = !DILocation(line: 46, column: 6, scope: !5838)
!5868 = !DILocation(line: 48, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 48, column: 6)
!5870 = !DILocation(line: 48, column: 10, scope: !5869)
!5871 = !DILocation(line: 48, column: 6, scope: !5838)
!5872 = !DILocation(line: 49, column: 3, scope: !5869)
!5873 = !DILocation(line: 49, column: 3, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 49, column: 3)
!5875 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 49, column: 3)
!5876 = !DILocation(line: 49, column: 3, scope: !5875)
!5877 = !DILocation(line: 52, column: 10, scope: !5838)
!5878 = !DILocation(line: 52, column: 14, scope: !5838)
!5879 = !DILocation(line: 52, column: 9, scope: !5838)
!5880 = !DILocation(line: 52, column: 22, scope: !5838)
!5881 = !DILocation(line: 52, column: 2, scope: !5838)
!5882 = distinct !DISubprogram(name: "tda10086_write_mask", scope: !3, file: !3, line: 76, type: !5883, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5883 = !DISubroutineType(types: !5884)
!5884 = !{!310, !4453, !310, !310, !310}
!5885 = !DILocalVariable(name: "state", arg: 1, scope: !5882, file: !3, line: 76, type: !4453)
!5886 = !DILocation(line: 76, column: 55, scope: !5882)
!5887 = !DILocalVariable(name: "reg", arg: 2, scope: !5882, file: !3, line: 76, type: !310)
!5888 = !DILocation(line: 76, column: 66, scope: !5882)
!5889 = !DILocalVariable(name: "mask", arg: 3, scope: !5882, file: !3, line: 76, type: !310)
!5890 = !DILocation(line: 76, column: 75, scope: !5882)
!5891 = !DILocalVariable(name: "data", arg: 4, scope: !5882, file: !3, line: 76, type: !310)
!5892 = !DILocation(line: 76, column: 85, scope: !5882)
!5893 = !DILocalVariable(name: "val", scope: !5882, file: !3, line: 78, type: !310)
!5894 = !DILocation(line: 78, column: 6, scope: !5882)
!5895 = !DILocation(line: 81, column: 27, scope: !5882)
!5896 = !DILocation(line: 81, column: 34, scope: !5882)
!5897 = !DILocation(line: 81, column: 8, scope: !5882)
!5898 = !DILocation(line: 81, column: 6, scope: !5882)
!5899 = !DILocation(line: 82, column: 6, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 82, column: 6)
!5901 = !DILocation(line: 82, column: 10, scope: !5900)
!5902 = !DILocation(line: 82, column: 6, scope: !5882)
!5903 = !DILocation(line: 83, column: 10, scope: !5900)
!5904 = !DILocation(line: 83, column: 3, scope: !5900)
!5905 = !DILocation(line: 86, column: 8, scope: !5882)
!5906 = !DILocation(line: 86, column: 15, scope: !5882)
!5907 = !DILocation(line: 86, column: 14, scope: !5882)
!5908 = !DILocation(line: 86, column: 12, scope: !5882)
!5909 = !DILocation(line: 86, column: 6, scope: !5882)
!5910 = !DILocation(line: 87, column: 9, scope: !5882)
!5911 = !DILocation(line: 87, column: 14, scope: !5882)
!5912 = !DILocation(line: 87, column: 6, scope: !5882)
!5913 = !DILocation(line: 90, column: 29, scope: !5882)
!5914 = !DILocation(line: 90, column: 36, scope: !5882)
!5915 = !DILocation(line: 90, column: 41, scope: !5882)
!5916 = !DILocation(line: 90, column: 9, scope: !5882)
!5917 = !DILocation(line: 90, column: 2, scope: !5882)
!5918 = !DILocation(line: 91, column: 1, scope: !5882)
!5919 = distinct !DISubprogram(name: "tda10086_set_inversion", scope: !3, file: !3, line: 258, type: !5920, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!310, !4453, !4167}
!5922 = !DILocalVariable(name: "state", arg: 1, scope: !5919, file: !3, line: 258, type: !4453)
!5923 = !DILocation(line: 258, column: 58, scope: !5919)
!5924 = !DILocalVariable(name: "fe_params", arg: 2, scope: !5919, file: !3, line: 259, type: !4167)
!5925 = !DILocation(line: 259, column: 39, scope: !5919)
!5926 = !DILocalVariable(name: "invval", scope: !5919, file: !3, line: 261, type: !357)
!5927 = !DILocation(line: 261, column: 5, scope: !5919)
!5928 = !DILocation(line: 263, column: 2, scope: !5919)
!5929 = !DILocation(line: 263, column: 2, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 263, column: 2)
!5931 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 263, column: 2)
!5932 = !DILocation(line: 263, column: 2, scope: !5931)
!5933 = !DILocation(line: 265, column: 9, scope: !5919)
!5934 = !DILocation(line: 265, column: 20, scope: !5919)
!5935 = !DILocation(line: 265, column: 2, scope: !5919)
!5936 = !DILocation(line: 267, column: 7, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 267, column: 7)
!5938 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 265, column: 31)
!5939 = !DILocation(line: 267, column: 14, scope: !5937)
!5940 = !DILocation(line: 267, column: 22, scope: !5937)
!5941 = !DILocation(line: 267, column: 7, scope: !5938)
!5942 = !DILocation(line: 268, column: 11, scope: !5937)
!5943 = !DILocation(line: 268, column: 4, scope: !5937)
!5944 = !DILocation(line: 269, column: 3, scope: !5938)
!5945 = !DILocation(line: 271, column: 8, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 271, column: 7)
!5947 = !DILocation(line: 271, column: 15, scope: !5946)
!5948 = !DILocation(line: 271, column: 23, scope: !5946)
!5949 = !DILocation(line: 271, column: 7, scope: !5938)
!5950 = !DILocation(line: 272, column: 11, scope: !5946)
!5951 = !DILocation(line: 272, column: 4, scope: !5946)
!5952 = !DILocation(line: 273, column: 3, scope: !5938)
!5953 = !DILocation(line: 275, column: 10, scope: !5938)
!5954 = !DILocation(line: 276, column: 3, scope: !5938)
!5955 = !DILocation(line: 278, column: 22, scope: !5919)
!5956 = !DILocation(line: 278, column: 41, scope: !5919)
!5957 = !DILocation(line: 278, column: 2, scope: !5919)
!5958 = !DILocation(line: 280, column: 2, scope: !5919)
!5959 = distinct !DISubprogram(name: "tda10086_set_symbol_rate", scope: !3, file: !3, line: 283, type: !5920, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!5960 = !DILocalVariable(name: "state", arg: 1, scope: !5959, file: !3, line: 283, type: !4453)
!5961 = !DILocation(line: 283, column: 60, scope: !5959)
!5962 = !DILocalVariable(name: "fe_params", arg: 2, scope: !5959, file: !3, line: 284, type: !4167)
!5963 = !DILocation(line: 284, column: 41, scope: !5959)
!5964 = !DILocalVariable(name: "dfn", scope: !5959, file: !3, line: 286, type: !357)
!5965 = !DILocation(line: 286, column: 5, scope: !5959)
!5966 = !DILocalVariable(name: "afs", scope: !5959, file: !3, line: 287, type: !357)
!5967 = !DILocation(line: 287, column: 5, scope: !5959)
!5968 = !DILocalVariable(name: "byp", scope: !5959, file: !3, line: 288, type: !357)
!5969 = !DILocation(line: 288, column: 5, scope: !5959)
!5970 = !DILocalVariable(name: "reg37", scope: !5959, file: !3, line: 289, type: !357)
!5971 = !DILocation(line: 289, column: 5, scope: !5959)
!5972 = !DILocalVariable(name: "reg42", scope: !5959, file: !3, line: 290, type: !357)
!5973 = !DILocation(line: 290, column: 5, scope: !5959)
!5974 = !DILocalVariable(name: "big", scope: !5959, file: !3, line: 291, type: !304)
!5975 = !DILocation(line: 291, column: 6, scope: !5959)
!5976 = !DILocalVariable(name: "tmp", scope: !5959, file: !3, line: 292, type: !425)
!5977 = !DILocation(line: 292, column: 6, scope: !5959)
!5978 = !DILocalVariable(name: "bdr", scope: !5959, file: !3, line: 293, type: !425)
!5979 = !DILocation(line: 293, column: 6, scope: !5959)
!5980 = !DILocalVariable(name: "bdri", scope: !5959, file: !3, line: 294, type: !425)
!5981 = !DILocation(line: 294, column: 6, scope: !5959)
!5982 = !DILocalVariable(name: "symbol_rate", scope: !5959, file: !3, line: 295, type: !425)
!5983 = !DILocation(line: 295, column: 6, scope: !5959)
!5984 = !DILocation(line: 295, column: 20, scope: !5959)
!5985 = !DILocation(line: 295, column: 31, scope: !5959)
!5986 = !DILocation(line: 297, column: 2, scope: !5959)
!5987 = !DILocation(line: 297, column: 2, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5989, file: !3, line: 297, column: 2)
!5989 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 297, column: 2)
!5990 = !DILocation(line: 297, column: 2, scope: !5989)
!5991 = !DILocation(line: 300, column: 6, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 300, column: 6)
!5993 = !DILocation(line: 300, column: 18, scope: !5992)
!5994 = !DILocation(line: 300, column: 6, scope: !5959)
!5995 = !DILocation(line: 301, column: 6, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5992, file: !3, line: 300, column: 41)
!5997 = !DILocation(line: 302, column: 6, scope: !5996)
!5998 = !DILocation(line: 303, column: 2, scope: !5996)
!5999 = !DILocation(line: 303, column: 13, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5992, file: !3, line: 303, column: 13)
!6001 = !DILocation(line: 303, column: 25, scope: !6000)
!6002 = !DILocation(line: 303, column: 13, scope: !5992)
!6003 = !DILocation(line: 304, column: 6, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 303, column: 48)
!6005 = !DILocation(line: 305, column: 6, scope: !6004)
!6006 = !DILocation(line: 306, column: 2, scope: !6004)
!6007 = !DILocation(line: 306, column: 13, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 306, column: 13)
!6009 = !DILocation(line: 306, column: 25, scope: !6008)
!6010 = !DILocation(line: 306, column: 13, scope: !6000)
!6011 = !DILocation(line: 307, column: 6, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 306, column: 48)
!6013 = !DILocation(line: 308, column: 6, scope: !6012)
!6014 = !DILocation(line: 309, column: 2, scope: !6012)
!6015 = !DILocation(line: 309, column: 13, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 309, column: 13)
!6017 = !DILocation(line: 309, column: 25, scope: !6016)
!6018 = !DILocation(line: 309, column: 13, scope: !6008)
!6019 = !DILocation(line: 310, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 309, column: 48)
!6021 = !DILocation(line: 311, column: 6, scope: !6020)
!6022 = !DILocation(line: 312, column: 2, scope: !6020)
!6023 = !DILocation(line: 312, column: 13, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 312, column: 13)
!6025 = !DILocation(line: 312, column: 25, scope: !6024)
!6026 = !DILocation(line: 312, column: 13, scope: !6016)
!6027 = !DILocation(line: 313, column: 6, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 312, column: 48)
!6029 = !DILocation(line: 314, column: 6, scope: !6028)
!6030 = !DILocation(line: 315, column: 2, scope: !6028)
!6031 = !DILocation(line: 315, column: 13, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 315, column: 13)
!6033 = !DILocation(line: 315, column: 25, scope: !6032)
!6034 = !DILocation(line: 315, column: 13, scope: !6024)
!6035 = !DILocation(line: 316, column: 6, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 315, column: 48)
!6037 = !DILocation(line: 317, column: 6, scope: !6036)
!6038 = !DILocation(line: 318, column: 2, scope: !6036)
!6039 = !DILocation(line: 318, column: 13, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 318, column: 13)
!6041 = !DILocation(line: 318, column: 25, scope: !6040)
!6042 = !DILocation(line: 318, column: 13, scope: !6032)
!6043 = !DILocation(line: 319, column: 6, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 318, column: 49)
!6045 = !DILocation(line: 320, column: 6, scope: !6044)
!6046 = !DILocation(line: 321, column: 2, scope: !6044)
!6047 = !DILocation(line: 321, column: 13, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 321, column: 13)
!6049 = !DILocation(line: 321, column: 25, scope: !6048)
!6050 = !DILocation(line: 321, column: 13, scope: !6040)
!6051 = !DILocation(line: 322, column: 6, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 321, column: 49)
!6053 = !DILocation(line: 323, column: 6, scope: !6052)
!6054 = !DILocation(line: 324, column: 2, scope: !6052)
!6055 = !DILocation(line: 324, column: 13, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 324, column: 13)
!6057 = !DILocation(line: 324, column: 25, scope: !6056)
!6058 = !DILocation(line: 324, column: 13, scope: !6048)
!6059 = !DILocation(line: 325, column: 6, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 324, column: 49)
!6061 = !DILocation(line: 326, column: 6, scope: !6060)
!6062 = !DILocation(line: 327, column: 2, scope: !6060)
!6063 = !DILocation(line: 327, column: 13, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 327, column: 13)
!6065 = !DILocation(line: 327, column: 25, scope: !6064)
!6066 = !DILocation(line: 327, column: 13, scope: !6056)
!6067 = !DILocation(line: 328, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 327, column: 49)
!6069 = !DILocation(line: 329, column: 6, scope: !6068)
!6070 = !DILocation(line: 330, column: 2, scope: !6068)
!6071 = !DILocation(line: 331, column: 9, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 330, column: 9)
!6073 = !DILocation(line: 332, column: 9, scope: !6072)
!6074 = !DILocation(line: 333, column: 6, scope: !6072)
!6075 = !DILocation(line: 337, column: 28, scope: !5959)
!6076 = !DILocation(line: 337, column: 22, scope: !5959)
!6077 = !DILocation(line: 337, column: 39, scope: !5959)
!6078 = !DILocation(line: 337, column: 19, scope: !5959)
!6079 = !DILocation(line: 337, column: 58, scope: !5959)
!6080 = !DILocation(line: 337, column: 56, scope: !5959)
!6081 = !DILocation(line: 337, column: 49, scope: !5959)
!6082 = !DILocation(line: 337, column: 6, scope: !5959)
!6083 = !DILocation(line: 338, column: 6, scope: !5959)
!6084 = !DILocalVariable(name: "__base", scope: !6085, file: !3, line: 339, type: !808)
!6085 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 339, column: 2)
!6086 = !DILocation(line: 339, column: 2, scope: !6085)
!6087 = !DILocalVariable(name: "__rem", scope: !6085, file: !3, line: 339, type: !808)
!6088 = !DILocation(line: 340, column: 8, scope: !5959)
!6089 = !DILocation(line: 340, column: 12, scope: !5959)
!6090 = !DILocation(line: 340, column: 6, scope: !5959)
!6091 = !DILocation(line: 343, column: 12, scope: !5959)
!6092 = !DILocation(line: 343, column: 10, scope: !5959)
!6093 = !DILocation(line: 343, column: 18, scope: !5959)
!6094 = !DILocation(line: 343, column: 29, scope: !5959)
!6095 = !DILocation(line: 343, column: 16, scope: !5959)
!6096 = !DILocation(line: 343, column: 6, scope: !5959)
!6097 = !DILocation(line: 344, column: 33, scope: !5959)
!6098 = !DILocation(line: 344, column: 36, scope: !5959)
!6099 = !DILocation(line: 344, column: 30, scope: !5959)
!6100 = !DILocation(line: 344, column: 43, scope: !5959)
!6101 = !DILocation(line: 344, column: 41, scope: !5959)
!6102 = !DILocation(line: 344, column: 7, scope: !5959)
!6103 = !DILocation(line: 346, column: 22, scope: !5959)
!6104 = !DILocation(line: 346, column: 36, scope: !5959)
!6105 = !DILocation(line: 346, column: 40, scope: !5959)
!6106 = !DILocation(line: 346, column: 48, scope: !5959)
!6107 = !DILocation(line: 346, column: 46, scope: !5959)
!6108 = !DILocation(line: 346, column: 2, scope: !5959)
!6109 = !DILocation(line: 347, column: 22, scope: !5959)
!6110 = !DILocation(line: 347, column: 41, scope: !5959)
!6111 = !DILocation(line: 347, column: 45, scope: !5959)
!6112 = !DILocation(line: 347, column: 2, scope: !5959)
!6113 = !DILocation(line: 348, column: 22, scope: !5959)
!6114 = !DILocation(line: 348, column: 35, scope: !5959)
!6115 = !DILocation(line: 348, column: 2, scope: !5959)
!6116 = !DILocation(line: 349, column: 22, scope: !5959)
!6117 = !DILocation(line: 349, column: 35, scope: !5959)
!6118 = !DILocation(line: 349, column: 39, scope: !5959)
!6119 = !DILocation(line: 349, column: 2, scope: !5959)
!6120 = !DILocation(line: 350, column: 22, scope: !5959)
!6121 = !DILocation(line: 350, column: 35, scope: !5959)
!6122 = !DILocation(line: 350, column: 39, scope: !5959)
!6123 = !DILocation(line: 350, column: 2, scope: !5959)
!6124 = !DILocation(line: 351, column: 22, scope: !5959)
!6125 = !DILocation(line: 351, column: 35, scope: !5959)
!6126 = !DILocation(line: 351, column: 2, scope: !5959)
!6127 = !DILocation(line: 352, column: 22, scope: !5959)
!6128 = !DILocation(line: 352, column: 35, scope: !5959)
!6129 = !DILocation(line: 352, column: 2, scope: !5959)
!6130 = !DILocation(line: 353, column: 22, scope: !5959)
!6131 = !DILocation(line: 353, column: 35, scope: !5959)
!6132 = !DILocation(line: 353, column: 2, scope: !5959)
!6133 = !DILocation(line: 355, column: 2, scope: !5959)
!6134 = distinct !DISubprogram(name: "tda10086_set_fec", scope: !3, file: !3, line: 358, type: !5920, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!6135 = !DILocalVariable(name: "state", arg: 1, scope: !6134, file: !3, line: 358, type: !4453)
!6136 = !DILocation(line: 358, column: 52, scope: !6134)
!6137 = !DILocalVariable(name: "fe_params", arg: 2, scope: !6134, file: !3, line: 359, type: !4167)
!6138 = !DILocation(line: 359, column: 40, scope: !6134)
!6139 = !DILocalVariable(name: "fecval", scope: !6134, file: !3, line: 361, type: !357)
!6140 = !DILocation(line: 361, column: 5, scope: !6134)
!6141 = !DILocation(line: 363, column: 2, scope: !6134)
!6142 = !DILocation(line: 363, column: 2, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 363, column: 2)
!6144 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 363, column: 2)
!6145 = !DILocation(line: 363, column: 2, scope: !6144)
!6146 = !DILocation(line: 365, column: 10, scope: !6134)
!6147 = !DILocation(line: 365, column: 21, scope: !6134)
!6148 = !DILocation(line: 365, column: 2, scope: !6134)
!6149 = !DILocation(line: 367, column: 10, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 365, column: 32)
!6151 = !DILocation(line: 368, column: 3, scope: !6150)
!6152 = !DILocation(line: 370, column: 10, scope: !6150)
!6153 = !DILocation(line: 371, column: 3, scope: !6150)
!6154 = !DILocation(line: 373, column: 10, scope: !6150)
!6155 = !DILocation(line: 374, column: 3, scope: !6150)
!6156 = !DILocation(line: 376, column: 10, scope: !6150)
!6157 = !DILocation(line: 377, column: 3, scope: !6150)
!6158 = !DILocation(line: 379, column: 10, scope: !6150)
!6159 = !DILocation(line: 380, column: 3, scope: !6150)
!6160 = !DILocation(line: 382, column: 10, scope: !6150)
!6161 = !DILocation(line: 383, column: 3, scope: !6150)
!6162 = !DILocation(line: 385, column: 10, scope: !6150)
!6163 = !DILocation(line: 386, column: 3, scope: !6150)
!6164 = !DILocation(line: 388, column: 10, scope: !6150)
!6165 = !DILocation(line: 389, column: 3, scope: !6150)
!6166 = !DILocation(line: 391, column: 10, scope: !6150)
!6167 = !DILocation(line: 392, column: 3, scope: !6150)
!6168 = !DILocation(line: 394, column: 3, scope: !6150)
!6169 = !DILocation(line: 396, column: 22, scope: !6134)
!6170 = !DILocation(line: 396, column: 35, scope: !6134)
!6171 = !DILocation(line: 396, column: 2, scope: !6134)
!6172 = !DILocation(line: 398, column: 2, scope: !6134)
!6173 = !DILocation(line: 399, column: 1, scope: !6134)
!6174 = distinct !DISubprogram(name: "tda10086_diseqc_wait", scope: !3, file: !3, line: 163, type: !6175, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{null, !4453}
!6177 = !DILocalVariable(name: "m", arg: 1, scope: !6178, file: !6179, line: 363, type: !2924)
!6178 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6179, file: !6179, line: 363, type: !6180, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!6179 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!6180 = !DISubroutineType(types: !6181)
!6181 = !{!584, !2924}
!6182 = !DILocation(line: 363, column: 74, scope: !6178, inlinedAt: !6183)
!6183 = distinct !DILocation(line: 165, column: 36, scope: !6174)
!6184 = !DILocalVariable(name: "state", arg: 1, scope: !6174, file: !3, line: 163, type: !4453)
!6185 = !DILocation(line: 163, column: 57, scope: !6174)
!6186 = !DILocalVariable(name: "timeout", scope: !6174, file: !3, line: 165, type: !584)
!6187 = !DILocation(line: 165, column: 16, scope: !6174)
!6188 = !DILocation(line: 165, column: 26, scope: !6174)
!6189 = !DILocation(line: 365, column: 27, scope: !6190, inlinedAt: !6183)
!6190 = distinct !DILexicalBlock(scope: !6178, file: !6179, line: 365, column: 6)
!6191 = !DILocation(line: 365, column: 6, scope: !6190, inlinedAt: !6183)
!6192 = !DILocation(line: 365, column: 6, scope: !6178, inlinedAt: !6183)
!6193 = !DILocation(line: 366, column: 12, scope: !6194, inlinedAt: !6183)
!6194 = distinct !DILexicalBlock(scope: !6195, file: !6179, line: 366, column: 7)
!6195 = distinct !DILexicalBlock(scope: !6190, file: !6179, line: 365, column: 31)
!6196 = !DILocation(line: 366, column: 14, scope: !6194, inlinedAt: !6183)
!6197 = !DILocation(line: 366, column: 7, scope: !6195, inlinedAt: !6183)
!6198 = !DILocation(line: 367, column: 4, scope: !6194, inlinedAt: !6183)
!6199 = !DILocation(line: 368, column: 28, scope: !6195, inlinedAt: !6183)
!6200 = !DILocation(line: 368, column: 10, scope: !6195, inlinedAt: !6183)
!6201 = !DILocation(line: 368, column: 3, scope: !6195, inlinedAt: !6183)
!6202 = !DILocation(line: 370, column: 29, scope: !6203, inlinedAt: !6183)
!6203 = distinct !DILexicalBlock(scope: !6190, file: !6179, line: 369, column: 9)
!6204 = !DILocation(line: 370, column: 10, scope: !6203, inlinedAt: !6183)
!6205 = !DILocation(line: 370, column: 3, scope: !6203, inlinedAt: !6183)
!6206 = !DILocation(line: 372, column: 1, scope: !6178, inlinedAt: !6183)
!6207 = !DILocation(line: 165, column: 34, scope: !6174)
!6208 = !DILocation(line: 166, column: 2, scope: !6174)
!6209 = !DILocation(line: 166, column: 30, scope: !6174)
!6210 = !DILocation(line: 166, column: 11, scope: !6174)
!6211 = !DILocation(line: 166, column: 43, scope: !6174)
!6212 = !DILocation(line: 166, column: 9, scope: !6174)
!6213 = !DILocation(line: 167, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !3, line: 167, column: 6)
!6215 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 166, column: 52)
!6216 = !DILocation(line: 167, column: 6, scope: !6215)
!6217 = !DILocation(line: 168, column: 4, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 167, column: 36)
!6219 = !DILocation(line: 169, column: 4, scope: !6218)
!6220 = !DILocation(line: 171, column: 3, scope: !6215)
!6221 = distinct !{!6221, !6208, !6222}
!6222 = !DILocation(line: 172, column: 2, scope: !6174)
!6223 = !DILocation(line: 173, column: 1, scope: !6174)
!6224 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6179, file: !6179, line: 308, type: !6180, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !510)
!6225 = !DILocalVariable(name: "m", arg: 1, scope: !6224, file: !6179, line: 308, type: !2924)
!6226 = !DILocation(line: 308, column: 66, scope: !6224)
!6227 = !DILocation(line: 310, column: 10, scope: !6224)
!6228 = !DILocation(line: 310, column: 12, scope: !6224)
!6229 = !DILocation(line: 310, column: 34, scope: !6224)
!6230 = !DILocation(line: 310, column: 39, scope: !6224)
!6231 = !DILocation(line: 310, column: 2, scope: !6224)
