; ModuleID = '../bcout/drivers/media/dvb-frontends/tda10048.llvm.bc'
source_filename = "drivers/media/dvb-frontends/tda10048.c"
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
%struct.pll_tab = type { i32, i32 }
%struct.init_tab = type { i8, i16 }
%struct.snr_tab = type { i8, i8 }
%struct.tda10048_config = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
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
%struct.tda10048_state = type { %struct.i2c_adapter*, %struct.tda10048_config, %struct.dvb_frontend, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i64, i8*, i8* }

@debug = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [18 x i8] c"\017tda10048: %s()\0A\00", align 1
@__func__.tda10048_attach = private unnamed_addr constant [16 x i8] c"tda10048_attach\00", align 1
@tda10048_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"NXP TDA10048HN DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 177000000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\03\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @tda10048_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda10048_init, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda10048_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @tda10048_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tda10048_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @tda10048_read_status, i32 (%struct.dvb_frontend*, i32*)* @tda10048_read_ber, i32 (%struct.dvb_frontend*, i16*)* @tda10048_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @tda10048_read_snr, i32 (%struct.dvb_frontend*, i32*)* @tda10048_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @tda10048_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !409
@__param_str_debug = internal constant [15 x i8] c"tda10048.debug\00", align 1, !dbg !4322
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !307
@__UNIQUE_ID_debugtype220 = internal constant [28 x i8] c"tda10048.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !373
@__UNIQUE_ID_debug221 = internal constant [50 x i8] c"tda10048.parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1, !dbg !378
@__UNIQUE_ID_description222 = internal constant [61 x i8] c"tda10048.description=NXP TDA10048HN DVB-T Demodulator driver\00", section ".modinfo", align 1, !dbg !383
@__UNIQUE_ID_author223 = internal constant [28 x i8] c"tda10048.author=Steven Toth\00", section ".modinfo", align 1, !dbg !388
@__UNIQUE_ID_file224 = internal constant [51 x i8] c"tda10048.file=drivers/media/dvb-frontends/tda10048\00", section ".modinfo", align 1, !dbg !390
@__UNIQUE_ID_license225 = internal constant [21 x i8] c"tda10048.license=GPL\00", section ".modinfo", align 1, !dbg !395
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\017tda10048: %s(reg = 0x%02x)\0A\00", align 1
@__func__.tda10048_readreg = private unnamed_addr constant [17 x i8] c"tda10048_readreg\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\013%s: readreg error (ret == %i)\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"\014%s() tda10048_config.dtv6_if_freq_khz is not set (defaulting to %d)\0A\00", align 1
@__func__.tda10048_establish_defaults = private unnamed_addr constant [28 x i8] c"tda10048_establish_defaults\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"\014%s() tda10048_config.dtv7_if_freq_khz is not set (defaulting to %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"\014%s() tda10048_config.dtv8_if_freq_khz is not set (defaulting to %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"\014%s() tda10048_config.clk_freq_khz is not set (defaulting to %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\017tda10048: %s(bw = %d)\0A\00", align 1
@__func__.tda10048_set_if = private unnamed_addr constant [16 x i8] c"tda10048_set_if\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\013%s() no default\0A\00", align 1
@pll_tab = internal global [9 x %struct.pll_tab] [%struct.pll_tab { i32 4000, i32 36130 }, %struct.pll_tab { i32 16000, i32 3300 }, %struct.pll_tab { i32 16000, i32 3500 }, %struct.pll_tab { i32 16000, i32 3800 }, %struct.pll_tab { i32 16000, i32 4000 }, %struct.pll_tab { i32 16000, i32 4300 }, %struct.pll_tab { i32 16000, i32 4500 }, %struct.pll_tab { i32 16000, i32 5000 }, %struct.pll_tab { i32 16000, i32 36130 }], align 16, !dbg !400
@.str.10 = private unnamed_addr constant [34 x i8] c"\013%s() Incorrect attach settings\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\017tda10048: - freq_if_hz = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\017tda10048: - xtal_hz = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"\017tda10048: - pll_mfactor = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\017tda10048: - pll_nfactor = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\017tda10048: - pll_pfactor = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"\017tda10048: - sample_freq = %d\0A\00", align 1
@__func__.tda10048_set_phy2 = private unnamed_addr constant [18 x i8] c"tda10048_set_phy2\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"\017tda10048: %s(reg = 0x%02x, data = 0x%02x)\0A\00", align 1
@__func__.tda10048_writereg = private unnamed_addr constant [18 x i8] c"tda10048_writereg\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"%s: writereg error (ret == %i)\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"\017tda10048: %s(bw=%d)\0A\00", align 1
@__func__.tda10048_set_bandwidth = private unnamed_addr constant [23 x i8] c"tda10048_set_bandwidth\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"\013%s() invalid bandwidth\0A\00", align 1
@__func__.tda10048_set_wref = private unnamed_addr constant [18 x i8] c"tda10048_set_wref\00", align 1
@__func__.tda10048_set_invwref = private unnamed_addr constant [21 x i8] c"tda10048_set_invwref\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"\017tda10048: %s(%d)\0A\00", align 1
@__func__.tda10048_i2c_gate_ctrl = private unnamed_addr constant [23 x i8] c"tda10048_i2c_gate_ctrl\00", align 1
@__func__.tda10048_release = private unnamed_addr constant [17 x i8] c"tda10048_release\00", align 1
@__func__.tda10048_init = private unnamed_addr constant [14 x i8] c"tda10048_init\00", align 1
@init_tab = internal global [41 x %struct.init_tab] [%struct.init_tab { i8 81, i16 8 }, %struct.init_tab { i8 85, i16 0 }, %struct.init_tab { i8 30, i16 0 }, %struct.init_tab { i8 81, i16 15 }, %struct.init_tab { i8 82, i16 10 }, %struct.init_tab { i8 83, i16 67 }, %struct.init_tab { i8 -122, i16 2 }, %struct.init_tab { i8 -121, i16 10 }, %struct.init_tab { i8 -118, i16 189 }, %struct.init_tab { i8 -117, i16 228 }, %struct.init_tab { i8 -116, i16 168 }, %struct.init_tab { i8 -115, i16 2 }, %struct.init_tab { i8 -120, i16 4 }, %struct.init_tab { i8 -119, i16 6 }, %struct.init_tab { i8 30, i16 0 }, %struct.init_tab { i8 96, i16 168 }, %struct.init_tab { i8 112, i16 22 }, %struct.init_tab { i8 98, i16 11 }, %struct.init_tab { i8 120, i16 0 }, %struct.init_tab { i8 121, i16 255 }, %struct.init_tab { i8 122, i16 0 }, %struct.init_tab { i8 123, i16 255 }, %struct.init_tab { i8 115, i16 0 }, %struct.init_tab { i8 114, i16 112 }, %struct.init_tab { i8 -62, i16 56 }, %struct.init_tab { i8 118, i16 18 }, %struct.init_tab { i8 80, i16 0 }, %struct.init_tab { i8 -31, i16 7 }, %struct.init_tab { i8 78, i16 0 }, %struct.init_tab { i8 -32, i16 192 }, %struct.init_tab { i8 68, i16 33 }, %struct.init_tab { i8 69, i16 0 }, %struct.init_tab { i8 70, i16 0 }, %struct.init_tab { i8 31, i16 4 }, %struct.init_tab { i8 84, i16 96 }, %struct.init_tab { i8 85, i16 16 }, %struct.init_tab { i8 84, i16 96 }, %struct.init_tab { i8 85, i16 0 }, %struct.init_tab { i8 96, i16 168 }, %struct.init_tab { i8 -51, i16 0 }, %struct.init_tab { i8 31, i16 4 }], align 16, !dbg !4301
@.str.22 = private unnamed_addr constant [43 x i8] c"\016%s: waiting for firmware upload (%s)...\0A\00", align 1
@__func__.tda10048_firmware_upload = private unnamed_addr constant [25 x i8] c"tda10048_firmware_upload\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"dvb-fe-tda10048-1.0.fw\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"\013%s: Upload failed. (file not found?)\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"\016%s: firmware read %zu bytes.\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"\013%s: firmware incorrect size\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"\016%s: firmware uploading\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"\016%s: firmware uploaded\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"\013%s: firmware upload failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"\017tda10048: %s(%d, ?, len = %d)\0A\00", align 1
@__func__.tda10048_writeregbulk = private unnamed_addr constant [22 x i8] c"tda10048_writeregbulk\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"\017tda10048: %s():  write len = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"\013%s(): writereg error err %i\0A\00", align 1
@__func__.tda10048_output_mode = private unnamed_addr constant [21 x i8] c"tda10048_output_mode\00", align 1
@__func__.tda10048_set_inversion = private unnamed_addr constant [23 x i8] c"tda10048_set_inversion\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"\017tda10048: %s(frequency=%d)\0A\00", align 1
@__func__.tda10048_set_frontend = private unnamed_addr constant [22 x i8] c"tda10048_set_frontend\00", align 1
@__func__.tda10048_get_frontend = private unnamed_addr constant [22 x i8] c"tda10048_get_frontend\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"\017tda10048: %s() status =0x%02x\0A\00", align 1
@__func__.tda10048_read_status = private unnamed_addr constant [21 x i8] c"tda10048_read_status\00", align 1
@tda10048_read_ber.cber_current = internal global i32 0, align 4, !dbg !4310
@__func__.tda10048_read_ber = private unnamed_addr constant [18 x i8] c"tda10048_read_ber\00", align 1
@__func__.tda10048_read_signal_strength = private unnamed_addr constant [30 x i8] c"tda10048_read_signal_strength\00", align 1
@__func__.tda10048_read_snr = private unnamed_addr constant [18 x i8] c"tda10048_read_snr\00", align 1
@snr_tab = internal global [123 x %struct.snr_tab] [%struct.snr_tab zeroinitializer, %struct.snr_tab { i8 1, i8 -10 }, %struct.snr_tab { i8 2, i8 -41 }, %struct.snr_tab { i8 3, i8 -58 }, %struct.snr_tab { i8 4, i8 -71 }, %struct.snr_tab { i8 5, i8 -80 }, %struct.snr_tab { i8 6, i8 -88 }, %struct.snr_tab { i8 7, i8 -95 }, %struct.snr_tab { i8 8, i8 -101 }, %struct.snr_tab { i8 9, i8 -106 }, %struct.snr_tab { i8 10, i8 -110 }, %struct.snr_tab { i8 11, i8 -115 }, %struct.snr_tab { i8 12, i8 -118 }, %struct.snr_tab { i8 13, i8 -122 }, %struct.snr_tab { i8 14, i8 -125 }, %struct.snr_tab { i8 15, i8 -128 }, %struct.snr_tab { i8 16, i8 125 }, %struct.snr_tab { i8 17, i8 122 }, %struct.snr_tab { i8 18, i8 120 }, %struct.snr_tab { i8 19, i8 118 }, %struct.snr_tab { i8 20, i8 115 }, %struct.snr_tab { i8 21, i8 113 }, %struct.snr_tab { i8 22, i8 111 }, %struct.snr_tab { i8 23, i8 109 }, %struct.snr_tab { i8 24, i8 107 }, %struct.snr_tab { i8 25, i8 106 }, %struct.snr_tab { i8 26, i8 104 }, %struct.snr_tab { i8 27, i8 102 }, %struct.snr_tab { i8 28, i8 101 }, %struct.snr_tab { i8 29, i8 99 }, %struct.snr_tab { i8 30, i8 98 }, %struct.snr_tab { i8 31, i8 96 }, %struct.snr_tab { i8 32, i8 95 }, %struct.snr_tab { i8 33, i8 94 }, %struct.snr_tab { i8 34, i8 92 }, %struct.snr_tab { i8 35, i8 91 }, %struct.snr_tab { i8 36, i8 90 }, %struct.snr_tab { i8 37, i8 89 }, %struct.snr_tab { i8 38, i8 88 }, %struct.snr_tab { i8 39, i8 86 }, %struct.snr_tab { i8 40, i8 85 }, %struct.snr_tab { i8 41, i8 84 }, %struct.snr_tab { i8 42, i8 83 }, %struct.snr_tab { i8 43, i8 82 }, %struct.snr_tab { i8 44, i8 81 }, %struct.snr_tab { i8 45, i8 80 }, %struct.snr_tab { i8 46, i8 79 }, %struct.snr_tab { i8 47, i8 78 }, %struct.snr_tab { i8 48, i8 77 }, %struct.snr_tab { i8 49, i8 76 }, %struct.snr_tab { i8 50, i8 76 }, %struct.snr_tab { i8 51, i8 75 }, %struct.snr_tab { i8 52, i8 74 }, %struct.snr_tab { i8 53, i8 73 }, %struct.snr_tab { i8 54, i8 72 }, %struct.snr_tab { i8 56, i8 71 }, %struct.snr_tab { i8 57, i8 70 }, %struct.snr_tab { i8 58, i8 69 }, %struct.snr_tab { i8 60, i8 68 }, %struct.snr_tab { i8 61, i8 67 }, %struct.snr_tab { i8 63, i8 66 }, %struct.snr_tab { i8 64, i8 65 }, %struct.snr_tab { i8 66, i8 64 }, %struct.snr_tab { i8 67, i8 63 }, %struct.snr_tab { i8 68, i8 62 }, %struct.snr_tab { i8 69, i8 62 }, %struct.snr_tab { i8 70, i8 61 }, %struct.snr_tab { i8 72, i8 60 }, %struct.snr_tab { i8 74, i8 59 }, %struct.snr_tab { i8 75, i8 58 }, %struct.snr_tab { i8 77, i8 57 }, %struct.snr_tab { i8 79, i8 56 }, %struct.snr_tab { i8 81, i8 55 }, %struct.snr_tab { i8 83, i8 54 }, %struct.snr_tab { i8 85, i8 53 }, %struct.snr_tab { i8 87, i8 52 }, %struct.snr_tab { i8 89, i8 51 }, %struct.snr_tab { i8 91, i8 50 }, %struct.snr_tab { i8 93, i8 49 }, %struct.snr_tab { i8 95, i8 48 }, %struct.snr_tab { i8 97, i8 47 }, %struct.snr_tab { i8 100, i8 46 }, %struct.snr_tab { i8 102, i8 45 }, %struct.snr_tab { i8 104, i8 44 }, %struct.snr_tab { i8 107, i8 43 }, %struct.snr_tab { i8 109, i8 42 }, %struct.snr_tab { i8 112, i8 41 }, %struct.snr_tab { i8 114, i8 40 }, %struct.snr_tab { i8 117, i8 39 }, %struct.snr_tab { i8 120, i8 38 }, %struct.snr_tab { i8 123, i8 37 }, %struct.snr_tab { i8 125, i8 36 }, %struct.snr_tab { i8 -128, i8 35 }, %struct.snr_tab { i8 -125, i8 34 }, %struct.snr_tab { i8 -122, i8 33 }, %struct.snr_tab { i8 -118, i8 32 }, %struct.snr_tab { i8 -115, i8 31 }, %struct.snr_tab { i8 -112, i8 30 }, %struct.snr_tab { i8 -109, i8 29 }, %struct.snr_tab { i8 -105, i8 28 }, %struct.snr_tab { i8 -102, i8 27 }, %struct.snr_tab { i8 -98, i8 26 }, %struct.snr_tab { i8 -94, i8 25 }, %struct.snr_tab { i8 -91, i8 24 }, %struct.snr_tab { i8 -87, i8 23 }, %struct.snr_tab { i8 -83, i8 22 }, %struct.snr_tab { i8 -79, i8 21 }, %struct.snr_tab { i8 -75, i8 20 }, %struct.snr_tab { i8 -70, i8 19 }, %struct.snr_tab { i8 -66, i8 18 }, %struct.snr_tab { i8 -62, i8 17 }, %struct.snr_tab { i8 -57, i8 16 }, %struct.snr_tab { i8 -52, i8 15 }, %struct.snr_tab { i8 -48, i8 14 }, %struct.snr_tab { i8 -43, i8 13 }, %struct.snr_tab { i8 -38, i8 12 }, %struct.snr_tab { i8 -33, i8 11 }, %struct.snr_tab { i8 -27, i8 10 }, %struct.snr_tab { i8 -22, i8 9 }, %struct.snr_tab { i8 -17, i8 8 }, %struct.snr_tab { i8 -11, i8 7 }, %struct.snr_tab { i8 -5, i8 6 }, %struct.snr_tab { i8 -1, i8 5 }], align 16, !dbg !4313
@__func__.tda10048_read_ucblocks = private unnamed_addr constant [23 x i8] c"tda10048_read_ucblocks\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @tda10048_attach(%struct.tda10048_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4332 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.tda10048_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  store %struct.tda10048_config* %config, %struct.tda10048_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config.addr, metadata !4476, metadata !DIExpression()), !dbg !4477
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !4480, metadata !DIExpression()), !dbg !4495
  store %struct.tda10048_state* null, %struct.tda10048_state** %state, align 8, !dbg !4495
  br label %do.body, !dbg !4496

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !4497
  %cmp = icmp uge i32 %0, 1, !dbg !4497
  br i1 %cmp, label %if.then, label %if.end, !dbg !4500

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tda10048_attach, i64 0, i64 0)) #8, !dbg !4497
  br label %if.end, !dbg !4497

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4500

do.end:                                           ; preds = %if.end
  %call1 = call i8* @kzalloc(i64 1344, i32 3264) #9, !dbg !4501
  %1 = bitcast i8* %call1 to %struct.tda10048_state*, !dbg !4501
  store %struct.tda10048_state* %1, %struct.tda10048_state** %state, align 8, !dbg !4502
  %2 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4503
  %cmp2 = icmp eq %struct.tda10048_state* %2, null, !dbg !4505
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4506

if.then3:                                         ; preds = %do.end
  br label %error, !dbg !4507

if.end4:                                          ; preds = %do.end
  %3 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4508
  %config5 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %3, i32 0, i32 1, !dbg !4509
  %4 = bitcast %struct.tda10048_config* %config5 to i8*, !dbg !4510
  %5 = load %struct.tda10048_config*, %struct.tda10048_config** %config.addr, align 8, !dbg !4511
  %6 = bitcast %struct.tda10048_config* %5 to i8*, !dbg !4510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 2 %6, i64 18, i1 false), !dbg !4510
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4512
  %8 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4513
  %i2c6 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %8, i32 0, i32 0, !dbg !4514
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %i2c6, align 8, !dbg !4515
  %9 = load %struct.tda10048_config*, %struct.tda10048_config** %config.addr, align 8, !dbg !4516
  %no_firmware = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %9, i32 0, i32 9, !dbg !4517
  %10 = load i8, i8* %no_firmware, align 1, !dbg !4517
  %tobool = trunc i8 %10 to i1, !dbg !4517
  %conv = zext i1 %tobool to i32, !dbg !4516
  %11 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4518
  %fwloaded = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %11, i32 0, i32 3, !dbg !4519
  store i32 %conv, i32* %fwloaded, align 8, !dbg !4520
  %12 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4521
  %bandwidth = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %12, i32 0, i32 10, !dbg !4522
  store i32 8000000, i32* %bandwidth, align 4, !dbg !4523
  %13 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4524
  %call7 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %13, i8 zeroext 0) #9, !dbg !4526
  %conv8 = zext i8 %call7 to i32, !dbg !4526
  %cmp9 = icmp ne i32 %conv8, 72, !dbg !4527
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4528

if.then11:                                        ; preds = %if.end4
  br label %error, !dbg !4529

if.end12:                                         ; preds = %if.end4
  %14 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4530
  %frontend = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %14, i32 0, i32 2, !dbg !4531
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4532
  %15 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @tda10048_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4533
  %16 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4534
  %17 = bitcast %struct.tda10048_state* %16 to i8*, !dbg !4534
  %18 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4535
  %frontend13 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %18, i32 0, i32 2, !dbg !4536
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend13, i32 0, i32 3, !dbg !4537
  store i8* %17, i8** %demodulator_priv, align 8, !dbg !4538
  %19 = load %struct.tda10048_config*, %struct.tda10048_config** %config.addr, align 8, !dbg !4539
  %set_pll = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %19, i32 0, i32 10, !dbg !4541
  %20 = load i8, i8* %set_pll, align 2, !dbg !4541
  %tobool14 = trunc i8 %20 to i1, !dbg !4541
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !4542

if.then15:                                        ; preds = %if.end12
  %21 = load %struct.tda10048_config*, %struct.tda10048_config** %config.addr, align 8, !dbg !4543
  %pll_m = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %21, i32 0, i32 11, !dbg !4545
  %22 = load i8, i8* %pll_m, align 1, !dbg !4545
  %conv16 = zext i8 %22 to i32, !dbg !4543
  %23 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4546
  %pll_mfactor = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %23, i32 0, i32 6, !dbg !4547
  store i32 %conv16, i32* %pll_mfactor, align 4, !dbg !4548
  %24 = load %struct.tda10048_config*, %struct.tda10048_config** %config.addr, align 8, !dbg !4549
  %pll_n = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %24, i32 0, i32 13, !dbg !4550
  %25 = load i8, i8* %pll_n, align 1, !dbg !4550
  %conv17 = zext i8 %25 to i32, !dbg !4549
  %26 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4551
  %pll_nfactor = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %26, i32 0, i32 7, !dbg !4552
  store i32 %conv17, i32* %pll_nfactor, align 8, !dbg !4553
  %27 = load %struct.tda10048_config*, %struct.tda10048_config** %config.addr, align 8, !dbg !4554
  %pll_p = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %27, i32 0, i32 12, !dbg !4555
  %28 = load i8, i8* %pll_p, align 2, !dbg !4555
  %conv18 = zext i8 %28 to i32, !dbg !4554
  %29 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4556
  %pll_pfactor = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %29, i32 0, i32 8, !dbg !4557
  store i32 %conv18, i32* %pll_pfactor, align 4, !dbg !4558
  br label %if.end22, !dbg !4559

if.else:                                          ; preds = %if.end12
  %30 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4560
  %pll_mfactor19 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %30, i32 0, i32 6, !dbg !4562
  store i32 10, i32* %pll_mfactor19, align 4, !dbg !4563
  %31 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4564
  %pll_nfactor20 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %31, i32 0, i32 7, !dbg !4565
  store i32 3, i32* %pll_nfactor20, align 8, !dbg !4566
  %32 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4567
  %pll_pfactor21 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %32, i32 0, i32 8, !dbg !4568
  store i32 0, i32* %pll_pfactor21, align 4, !dbg !4569
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %33 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4570
  %frontend23 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %33, i32 0, i32 2, !dbg !4571
  call void @tda10048_establish_defaults(%struct.dvb_frontend* %frontend23) #9, !dbg !4572
  %34 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4573
  %frontend24 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %34, i32 0, i32 2, !dbg !4575
  %call25 = call i32 @tda10048_set_if(%struct.dvb_frontend* %frontend24, i32 8000000) #9, !dbg !4576
  %cmp26 = icmp ne i32 %call25, 0, !dbg !4577
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !4578

if.then28:                                        ; preds = %if.end22
  br label %error, !dbg !4579

if.end29:                                         ; preds = %if.end22
  %35 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4580
  %frontend30 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %35, i32 0, i32 2, !dbg !4582
  %call31 = call i32 @tda10048_set_bandwidth(%struct.dvb_frontend* %frontend30, i32 8000000) #9, !dbg !4583
  %cmp32 = icmp ne i32 %call31, 0, !dbg !4584
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !4585

if.then34:                                        ; preds = %if.end29
  br label %error, !dbg !4586

if.end35:                                         ; preds = %if.end29
  %36 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4587
  %frontend36 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %36, i32 0, i32 2, !dbg !4588
  %call37 = call i32 @tda10048_i2c_gate_ctrl(%struct.dvb_frontend* %frontend36, i32 0) #9, !dbg !4589
  %37 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4590
  %frontend38 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %37, i32 0, i32 2, !dbg !4591
  store %struct.dvb_frontend* %frontend38, %struct.dvb_frontend** %retval, align 8, !dbg !4592
  br label %return, !dbg !4592

error:                                            ; preds = %if.then34, %if.then28, %if.then11, %if.then3
  call void @llvm.dbg.label(metadata !4593), !dbg !4594
  %38 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4595
  %39 = bitcast %struct.tda10048_state* %38 to i8*, !dbg !4595
  call void @kfree(i8* %39) #9, !dbg !4596
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4597
  br label %return, !dbg !4597

return:                                           ; preds = %error, %if.end35
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4598
  ret %struct.dvb_frontend* %40, !dbg !4598
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4599 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4602, metadata !DIExpression()), !dbg !4606
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4612, metadata !DIExpression()), !dbg !4613
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4614, metadata !DIExpression()), !dbg !4615
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4616, metadata !DIExpression()), !dbg !4617
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4618, metadata !DIExpression()), !dbg !4622
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4624, metadata !DIExpression()), !dbg !4628
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4630, metadata !DIExpression()), !dbg !4634
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4639, metadata !DIExpression()), !dbg !4640
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4641, metadata !DIExpression()), !dbg !4642
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4643, metadata !DIExpression()), !dbg !4644
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4645, metadata !DIExpression()), !dbg !4646
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4647, metadata !DIExpression()), !dbg !4648
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4649, metadata !DIExpression()), !dbg !4650
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4651, metadata !DIExpression()), !dbg !4652
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4653, metadata !DIExpression()), !dbg !4654
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4657, metadata !DIExpression()), !dbg !4658
  %0 = load i64, i64* %size.addr, align 8, !dbg !4659
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4660
  %or = or i32 %1, 256, !dbg !4661
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4662
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4663
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4664

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4665
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4666
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4667

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4668
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4669
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4670
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4671
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4648
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4672
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4673
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4674
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4675
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4676
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4677
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4678
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4678
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4678
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4678
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4678
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4679
  br label %kmalloc.exit, !dbg !4679

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4680
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4681
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4683

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4684
  br label %kmalloc_index.exit.i, !dbg !4684

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4685
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4687
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4688

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4689
  br label %kmalloc_index.exit.i, !dbg !4689

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4690
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4692
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4693

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4694
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4695
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4696

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4700
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4701

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4702
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4703
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4704

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4708
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4709

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4713
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4714

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4718
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4719

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4720
  br label %kmalloc_index.exit.i, !dbg !4720

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4721
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4723
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4724

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4726
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4728
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4729

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4730
  br label %kmalloc_index.exit.i, !dbg !4730

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4731
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4733
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4734

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4735
  br label %kmalloc_index.exit.i, !dbg !4735

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4736
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4738
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4739

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4740
  br label %kmalloc_index.exit.i, !dbg !4740

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4741
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4743
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4744

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4745
  br label %kmalloc_index.exit.i, !dbg !4745

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4746
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4748
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4749

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4750
  br label %kmalloc_index.exit.i, !dbg !4750

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4751
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4753
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4754

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4755
  br label %kmalloc_index.exit.i, !dbg !4755

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4756
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4758
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4759

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4760
  br label %kmalloc_index.exit.i, !dbg !4760

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4761
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4763
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4764

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4765
  br label %kmalloc_index.exit.i, !dbg !4765

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4766
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4768
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4769

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4770
  br label %kmalloc_index.exit.i, !dbg !4770

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4771
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4773
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4774

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4775
  br label %kmalloc_index.exit.i, !dbg !4775

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4776
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4778
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4779

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4780
  br label %kmalloc_index.exit.i, !dbg !4780

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4781
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4783
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4784

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4785
  br label %kmalloc_index.exit.i, !dbg !4785

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4786
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4788
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4789

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4790
  br label %kmalloc_index.exit.i, !dbg !4790

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4791
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4793
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4794

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4795
  br label %kmalloc_index.exit.i, !dbg !4795

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4796
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4798
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4799

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4800
  br label %kmalloc_index.exit.i, !dbg !4800

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4801
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4803
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4804

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4805
  br label %kmalloc_index.exit.i, !dbg !4805

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4806
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4808
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4809

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4810
  br label %kmalloc_index.exit.i, !dbg !4810

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4811
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4813
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4814

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4815
  br label %kmalloc_index.exit.i, !dbg !4815

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4816
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4818
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4819

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4820
  br label %kmalloc_index.exit.i, !dbg !4820

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4821
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4823
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4824

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4825
  br label %kmalloc_index.exit.i, !dbg !4825

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4826, !srcloc !4829
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4830, !srcloc !4833
  unreachable, !dbg !4834

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4835
  store i32 %45, i32* %index.i, align 4, !dbg !4836
  %46 = load i32, i32* %index.i, align 4, !dbg !4837
  %tobool.i = icmp ne i32 %46, 0, !dbg !4837
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4839

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4840
  br label %kmalloc.exit, !dbg !4840

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4841
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4842
  %and.i.i = and i32 %48, 17, !dbg !4842
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4842
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4842
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4842
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4842
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4844

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4845
  br label %kmalloc_type.exit.i, !dbg !4845

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4846
  %and2.i.i = and i32 %49, 1, !dbg !4847
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4846
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4846
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4846
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4848
  br label %kmalloc_type.exit.i, !dbg !4848

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4849
  %idxprom.i = zext i32 %51 to i64, !dbg !4850
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4850
  %52 = load i32, i32* %index.i, align 4, !dbg !4851
  %idxprom6.i = zext i32 %52 to i64, !dbg !4850
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4850
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4850
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4852
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4853
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4854
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4855
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4856
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4856
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4856
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4856
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4856
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4617
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4857
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4858
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4859
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4860
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4861
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4862
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4863
  store i8* %62, i8** %retval.i, align 8, !dbg !4864
  br label %kmalloc.exit, !dbg !4864

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4865
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4866
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4867
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4867
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4867
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4867
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4867
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4868
  br label %kmalloc.exit, !dbg !4868

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4869
  ret i8* %65, !dbg !4870
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @tda10048_readreg(%struct.tda10048_state* %state, i8 zeroext %reg) #0 !dbg !4871 {
entry:
  %state.addr = alloca %struct.tda10048_state*, align 8
  %reg.addr = alloca i8, align 1
  %config = alloca %struct.tda10048_config*, align 8
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.tda10048_state* %state, %struct.tda10048_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config, metadata !4878, metadata !DIExpression()), !dbg !4880
  %0 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !4881
  %config1 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %0, i32 0, i32 1, !dbg !4882
  store %struct.tda10048_config* %config1, %struct.tda10048_config** %config, align 8, !dbg !4880
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4883, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4885, metadata !DIExpression()), !dbg !4887
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4888
  %1 = load i8, i8* %reg.addr, align 1, !dbg !4889
  store i8 %1, i8* %arrayinit.begin, align 1, !dbg !4888
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4890, metadata !DIExpression()), !dbg !4891
  %2 = bitcast [1 x i8]* %b1 to i8*, !dbg !4891
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 1, i1 false), !dbg !4891
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4892, metadata !DIExpression()), !dbg !4894
  %arrayinit.begin2 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4895
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin2, i32 0, i32 0, !dbg !4896
  %3 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4897
  %demod_address = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %3, i32 0, i32 0, !dbg !4898
  %4 = load i8, i8* %demod_address, align 2, !dbg !4898
  %conv = zext i8 %4 to i16, !dbg !4897
  store i16 %conv, i16* %addr, align 16, !dbg !4896
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin2, i32 0, i32 1, !dbg !4896
  store i16 0, i16* %flags, align 2, !dbg !4896
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin2, i32 0, i32 2, !dbg !4896
  store i16 1, i16* %len, align 4, !dbg !4896
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin2, i32 0, i32 3, !dbg !4896
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4899
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4896
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin2, i64 1, !dbg !4895
  %addr3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4900
  %5 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4901
  %demod_address4 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %5, i32 0, i32 0, !dbg !4902
  %6 = load i8, i8* %demod_address4, align 2, !dbg !4902
  %conv5 = zext i8 %6 to i16, !dbg !4901
  store i16 %conv5, i16* %addr3, align 16, !dbg !4900
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4900
  store i16 1, i16* %flags6, align 2, !dbg !4900
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4900
  store i16 1, i16* %len7, align 4, !dbg !4900
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4900
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4903
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4900
  br label %do.body, !dbg !4904

do.body:                                          ; preds = %entry
  %7 = load i32, i32* @debug, align 4, !dbg !4905
  %cmp = icmp uge i32 %7, 2, !dbg !4905
  br i1 %cmp, label %if.then, label %if.end, !dbg !4908

if.then:                                          ; preds = %do.body
  %8 = load i8, i8* %reg.addr, align 1, !dbg !4905
  %conv11 = zext i8 %8 to i32, !dbg !4905
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tda10048_readreg, i64 0, i64 0), i32 %conv11) #8, !dbg !4905
  br label %if.end, !dbg !4905

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4908

do.end:                                           ; preds = %if.end
  %9 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !4909
  %i2c = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %9, i32 0, i32 0, !dbg !4910
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4910
  %arraydecay12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4911
  %call13 = call i32 @i2c_transfer(%struct.i2c_adapter* %10, %struct.i2c_msg* %arraydecay12, i32 2) #9, !dbg !4912
  store i32 %call13, i32* %ret, align 4, !dbg !4913
  %11 = load i32, i32* %ret, align 4, !dbg !4914
  %cmp14 = icmp ne i32 %11, 2, !dbg !4916
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !4917

if.then16:                                        ; preds = %do.end
  %12 = load i32, i32* %ret, align 4, !dbg !4918
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tda10048_readreg, i64 0, i64 0), i32 %12) #8, !dbg !4919
  br label %if.end18, !dbg !4919

if.end18:                                         ; preds = %if.then16, %do.end
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4920
  %13 = load i8, i8* %arrayidx, align 1, !dbg !4920
  ret i8 %13, !dbg !4921
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda10048_establish_defaults(%struct.dvb_frontend* %fe) #0 !dbg !4922 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  %config = alloca %struct.tda10048_config*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !4925, metadata !DIExpression()), !dbg !4926
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4927
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4928
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4928
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !4927
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !4926
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config, metadata !4929, metadata !DIExpression()), !dbg !4930
  %3 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4931
  %config1 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %3, i32 0, i32 1, !dbg !4932
  store %struct.tda10048_config* %config1, %struct.tda10048_config** %config, align 8, !dbg !4930
  %4 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4933
  %dtv6_if_freq_khz = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %4, i32 0, i32 4, !dbg !4935
  %5 = load i16, i16* %dtv6_if_freq_khz, align 2, !dbg !4935
  %conv = zext i16 %5 to i32, !dbg !4933
  %cmp = icmp eq i32 %conv, 0, !dbg !4936
  br i1 %cmp, label %if.then, label %if.end, !dbg !4937

if.then:                                          ; preds = %entry
  %6 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4938
  %dtv6_if_freq_khz3 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %6, i32 0, i32 4, !dbg !4940
  store i16 4300, i16* %dtv6_if_freq_khz3, align 2, !dbg !4941
  %7 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4942
  %dtv6_if_freq_khz4 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %7, i32 0, i32 4, !dbg !4943
  %8 = load i16, i16* %dtv6_if_freq_khz4, align 2, !dbg !4943
  %conv5 = zext i16 %8 to i32, !dbg !4942
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tda10048_establish_defaults, i64 0, i64 0), i32 %conv5) #8, !dbg !4944
  br label %if.end, !dbg !4945

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4946
  %dtv7_if_freq_khz = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %9, i32 0, i32 5, !dbg !4948
  %10 = load i16, i16* %dtv7_if_freq_khz, align 2, !dbg !4948
  %conv6 = zext i16 %10 to i32, !dbg !4946
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !4949
  br i1 %cmp7, label %if.then9, label %if.end14, !dbg !4950

if.then9:                                         ; preds = %if.end
  %11 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4951
  %dtv7_if_freq_khz10 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %11, i32 0, i32 5, !dbg !4953
  store i16 4300, i16* %dtv7_if_freq_khz10, align 2, !dbg !4954
  %12 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4955
  %dtv7_if_freq_khz11 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %12, i32 0, i32 5, !dbg !4956
  %13 = load i16, i16* %dtv7_if_freq_khz11, align 2, !dbg !4956
  %conv12 = zext i16 %13 to i32, !dbg !4955
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tda10048_establish_defaults, i64 0, i64 0), i32 %conv12) #8, !dbg !4957
  br label %if.end14, !dbg !4958

if.end14:                                         ; preds = %if.then9, %if.end
  %14 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4959
  %dtv8_if_freq_khz = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %14, i32 0, i32 6, !dbg !4961
  %15 = load i16, i16* %dtv8_if_freq_khz, align 2, !dbg !4961
  %conv15 = zext i16 %15 to i32, !dbg !4959
  %cmp16 = icmp eq i32 %conv15, 0, !dbg !4962
  br i1 %cmp16, label %if.then18, label %if.end23, !dbg !4963

if.then18:                                        ; preds = %if.end14
  %16 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4964
  %dtv8_if_freq_khz19 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %16, i32 0, i32 6, !dbg !4966
  store i16 4300, i16* %dtv8_if_freq_khz19, align 2, !dbg !4967
  %17 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4968
  %dtv8_if_freq_khz20 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %17, i32 0, i32 6, !dbg !4969
  %18 = load i16, i16* %dtv8_if_freq_khz20, align 2, !dbg !4969
  %conv21 = zext i16 %18 to i32, !dbg !4968
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tda10048_establish_defaults, i64 0, i64 0), i32 %conv21) #8, !dbg !4970
  br label %if.end23, !dbg !4971

if.end23:                                         ; preds = %if.then18, %if.end14
  %19 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4972
  %clk_freq_khz = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %19, i32 0, i32 7, !dbg !4974
  %20 = load i16, i16* %clk_freq_khz, align 2, !dbg !4974
  %conv24 = zext i16 %20 to i32, !dbg !4972
  %cmp25 = icmp eq i32 %conv24, 0, !dbg !4975
  br i1 %cmp25, label %if.then27, label %if.end32, !dbg !4976

if.then27:                                        ; preds = %if.end23
  %21 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4977
  %clk_freq_khz28 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %21, i32 0, i32 7, !dbg !4979
  store i16 16000, i16* %clk_freq_khz28, align 2, !dbg !4980
  %22 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !4981
  %clk_freq_khz29 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %22, i32 0, i32 7, !dbg !4982
  %23 = load i16, i16* %clk_freq_khz29, align 2, !dbg !4982
  %conv30 = zext i16 %23 to i32, !dbg !4981
  %call31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tda10048_establish_defaults, i64 0, i64 0), i32 %conv30) #8, !dbg !4983
  br label %if.end32, !dbg !4984

if.end32:                                         ; preds = %if.then27, %if.end23
  ret void, !dbg !4985
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_set_if(%struct.dvb_frontend* %fe, i32 %bw) #0 !dbg !4986 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %bw.addr = alloca i32, align 4
  %state = alloca %struct.tda10048_state*, align 8
  %config = alloca %struct.tda10048_config*, align 8
  %i = alloca i32, align 4
  %if_freq_khz = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i32 %bw, i32* %bw.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bw.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !4991, metadata !DIExpression()), !dbg !4992
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4993
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4994
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4994
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !4993
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !4992
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config, metadata !4995, metadata !DIExpression()), !dbg !4996
  %3 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !4997
  %config1 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %3, i32 0, i32 1, !dbg !4998
  store %struct.tda10048_config* %config1, %struct.tda10048_config** %config, align 8, !dbg !4996
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.declare(metadata i32* %if_freq_khz, metadata !5001, metadata !DIExpression()), !dbg !5002
  br label %do.body, !dbg !5003

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5004
  %cmp = icmp uge i32 %4, 1, !dbg !5004
  br i1 %cmp, label %if.then, label %if.end, !dbg !5007

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %bw.addr, align 4, !dbg !5004
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tda10048_set_if, i64 0, i64 0), i32 %5) #8, !dbg !5004
  br label %if.end, !dbg !5004

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5007

do.end:                                           ; preds = %if.end
  %6 = load i32, i32* %bw.addr, align 4, !dbg !5008
  switch i32 %6, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb2
    i32 8000000, label %sw.bb4
  ], !dbg !5009

sw.bb:                                            ; preds = %do.end
  %7 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5010
  %dtv6_if_freq_khz = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %7, i32 0, i32 4, !dbg !5012
  %8 = load i16, i16* %dtv6_if_freq_khz, align 2, !dbg !5012
  %conv = zext i16 %8 to i32, !dbg !5010
  store i32 %conv, i32* %if_freq_khz, align 4, !dbg !5013
  br label %sw.epilog, !dbg !5014

sw.bb2:                                           ; preds = %do.end
  %9 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5015
  %dtv7_if_freq_khz = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %9, i32 0, i32 5, !dbg !5016
  %10 = load i16, i16* %dtv7_if_freq_khz, align 2, !dbg !5016
  %conv3 = zext i16 %10 to i32, !dbg !5015
  store i32 %conv3, i32* %if_freq_khz, align 4, !dbg !5017
  br label %sw.epilog, !dbg !5018

sw.bb4:                                           ; preds = %do.end
  %11 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5019
  %dtv8_if_freq_khz = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %11, i32 0, i32 6, !dbg !5020
  %12 = load i16, i16* %dtv8_if_freq_khz, align 2, !dbg !5020
  %conv5 = zext i16 %12 to i32, !dbg !5019
  store i32 %conv5, i32* %if_freq_khz, align 4, !dbg !5021
  br label %sw.epilog, !dbg !5022

sw.default:                                       ; preds = %do.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tda10048_set_if, i64 0, i64 0)) #8, !dbg !5023
  store i32 -22, i32* %retval, align 4, !dbg !5024
  br label %return, !dbg !5024

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb
  store i32 0, i32* %i, align 4, !dbg !5025
  br label %for.cond, !dbg !5027

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %13 = load i32, i32* %i, align 4, !dbg !5028
  %conv7 = sext i32 %13 to i64, !dbg !5028
  %cmp8 = icmp ult i64 %conv7, 9, !dbg !5030
  br i1 %cmp8, label %for.body, label %for.end, !dbg !5031

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !5032
  %idxprom = sext i32 %14 to i64, !dbg !5035
  %arrayidx = getelementptr [9 x %struct.pll_tab], [9 x %struct.pll_tab]* @pll_tab, i64 0, i64 %idxprom, !dbg !5035
  %clk_freq_khz = getelementptr inbounds %struct.pll_tab, %struct.pll_tab* %arrayidx, i32 0, i32 0, !dbg !5036
  %15 = load i32, i32* %clk_freq_khz, align 8, !dbg !5036
  %16 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5037
  %clk_freq_khz10 = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %16, i32 0, i32 7, !dbg !5038
  %17 = load i16, i16* %clk_freq_khz10, align 2, !dbg !5038
  %conv11 = zext i16 %17 to i32, !dbg !5037
  %cmp12 = icmp eq i32 %15, %conv11, !dbg !5039
  br i1 %cmp12, label %land.lhs.true, label %if.end27, !dbg !5040

land.lhs.true:                                    ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !5041
  %idxprom14 = sext i32 %18 to i64, !dbg !5042
  %arrayidx15 = getelementptr [9 x %struct.pll_tab], [9 x %struct.pll_tab]* @pll_tab, i64 0, i64 %idxprom14, !dbg !5042
  %if_freq_khz16 = getelementptr inbounds %struct.pll_tab, %struct.pll_tab* %arrayidx15, i32 0, i32 1, !dbg !5043
  %19 = load i32, i32* %if_freq_khz16, align 4, !dbg !5043
  %20 = load i32, i32* %if_freq_khz, align 4, !dbg !5044
  %cmp17 = icmp eq i32 %19, %20, !dbg !5045
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !5046

if.then19:                                        ; preds = %land.lhs.true
  %21 = load i32, i32* %i, align 4, !dbg !5047
  %idxprom20 = sext i32 %21 to i64, !dbg !5049
  %arrayidx21 = getelementptr [9 x %struct.pll_tab], [9 x %struct.pll_tab]* @pll_tab, i64 0, i64 %idxprom20, !dbg !5049
  %if_freq_khz22 = getelementptr inbounds %struct.pll_tab, %struct.pll_tab* %arrayidx21, i32 0, i32 1, !dbg !5050
  %22 = load i32, i32* %if_freq_khz22, align 4, !dbg !5050
  %mul = mul i32 %22, 1000, !dbg !5051
  %23 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5052
  %freq_if_hz = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %23, i32 0, i32 4, !dbg !5053
  store i32 %mul, i32* %freq_if_hz, align 4, !dbg !5054
  %24 = load i32, i32* %i, align 4, !dbg !5055
  %idxprom23 = sext i32 %24 to i64, !dbg !5056
  %arrayidx24 = getelementptr [9 x %struct.pll_tab], [9 x %struct.pll_tab]* @pll_tab, i64 0, i64 %idxprom23, !dbg !5056
  %clk_freq_khz25 = getelementptr inbounds %struct.pll_tab, %struct.pll_tab* %arrayidx24, i32 0, i32 0, !dbg !5057
  %25 = load i32, i32* %clk_freq_khz25, align 8, !dbg !5057
  %mul26 = mul i32 %25, 1000, !dbg !5058
  %26 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5059
  %xtal_hz = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %26, i32 0, i32 5, !dbg !5060
  store i32 %mul26, i32* %xtal_hz, align 8, !dbg !5061
  br label %for.end, !dbg !5062

if.end27:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5063

for.inc:                                          ; preds = %if.end27
  %27 = load i32, i32* %i, align 4, !dbg !5064
  %inc = add i32 %27, 1, !dbg !5064
  store i32 %inc, i32* %i, align 4, !dbg !5064
  br label %for.cond, !dbg !5065, !llvm.loop !5066

for.end:                                          ; preds = %if.then19, %for.cond
  %28 = load i32, i32* %i, align 4, !dbg !5068
  %conv28 = sext i32 %28 to i64, !dbg !5068
  %cmp29 = icmp eq i64 %conv28, 9, !dbg !5070
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !5071

if.then31:                                        ; preds = %for.end
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tda10048_set_if, i64 0, i64 0)) #8, !dbg !5072
  store i32 -22, i32* %retval, align 4, !dbg !5074
  br label %return, !dbg !5074

if.end33:                                         ; preds = %for.end
  br label %do.body34, !dbg !5075

do.body34:                                        ; preds = %if.end33
  %29 = load i32, i32* @debug, align 4, !dbg !5076
  %cmp35 = icmp uge i32 %29, 1, !dbg !5076
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !5079

if.then37:                                        ; preds = %do.body34
  %30 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5076
  %freq_if_hz38 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %30, i32 0, i32 4, !dbg !5076
  %31 = load i32, i32* %freq_if_hz38, align 4, !dbg !5076
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %31) #8, !dbg !5076
  br label %if.end40, !dbg !5076

if.end40:                                         ; preds = %if.then37, %do.body34
  br label %do.end41, !dbg !5079

do.end41:                                         ; preds = %if.end40
  br label %do.body42, !dbg !5080

do.body42:                                        ; preds = %do.end41
  %32 = load i32, i32* @debug, align 4, !dbg !5081
  %cmp43 = icmp uge i32 %32, 1, !dbg !5081
  br i1 %cmp43, label %if.then45, label %if.end48, !dbg !5084

if.then45:                                        ; preds = %do.body42
  %33 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5081
  %xtal_hz46 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %33, i32 0, i32 5, !dbg !5081
  %34 = load i32, i32* %xtal_hz46, align 8, !dbg !5081
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %34) #8, !dbg !5081
  br label %if.end48, !dbg !5081

if.end48:                                         ; preds = %if.then45, %do.body42
  br label %do.end49, !dbg !5084

do.end49:                                         ; preds = %if.end48
  br label %do.body50, !dbg !5085

do.body50:                                        ; preds = %do.end49
  %35 = load i32, i32* @debug, align 4, !dbg !5086
  %cmp51 = icmp uge i32 %35, 1, !dbg !5086
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !5089

if.then53:                                        ; preds = %do.body50
  %36 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5086
  %pll_mfactor = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %36, i32 0, i32 6, !dbg !5086
  %37 = load i32, i32* %pll_mfactor, align 4, !dbg !5086
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %37) #8, !dbg !5086
  br label %if.end55, !dbg !5086

if.end55:                                         ; preds = %if.then53, %do.body50
  br label %do.end56, !dbg !5089

do.end56:                                         ; preds = %if.end55
  br label %do.body57, !dbg !5090

do.body57:                                        ; preds = %do.end56
  %38 = load i32, i32* @debug, align 4, !dbg !5091
  %cmp58 = icmp uge i32 %38, 1, !dbg !5091
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !5094

if.then60:                                        ; preds = %do.body57
  %39 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5091
  %pll_nfactor = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %39, i32 0, i32 7, !dbg !5091
  %40 = load i32, i32* %pll_nfactor, align 8, !dbg !5091
  %call61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %40) #8, !dbg !5091
  br label %if.end62, !dbg !5091

if.end62:                                         ; preds = %if.then60, %do.body57
  br label %do.end63, !dbg !5094

do.end63:                                         ; preds = %if.end62
  br label %do.body64, !dbg !5095

do.body64:                                        ; preds = %do.end63
  %41 = load i32, i32* @debug, align 4, !dbg !5096
  %cmp65 = icmp uge i32 %41, 1, !dbg !5096
  br i1 %cmp65, label %if.then67, label %if.end69, !dbg !5099

if.then67:                                        ; preds = %do.body64
  %42 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5096
  %pll_pfactor = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %42, i32 0, i32 8, !dbg !5096
  %43 = load i32, i32* %pll_pfactor, align 4, !dbg !5096
  %call68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %43) #8, !dbg !5096
  br label %if.end69, !dbg !5096

if.end69:                                         ; preds = %if.then67, %do.body64
  br label %do.end70, !dbg !5099

do.end70:                                         ; preds = %if.end69
  %44 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5100
  %xtal_hz71 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %44, i32 0, i32 5, !dbg !5101
  %45 = load i32, i32* %xtal_hz71, align 8, !dbg !5101
  %46 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5102
  %pll_mfactor72 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %46, i32 0, i32 6, !dbg !5103
  %47 = load i32, i32* %pll_mfactor72, align 4, !dbg !5103
  %add = add i32 %47, 45, !dbg !5104
  %mul73 = mul i32 %45, %add, !dbg !5105
  %48 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5106
  %sample_freq = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %48, i32 0, i32 9, !dbg !5107
  store i32 %mul73, i32* %sample_freq, align 8, !dbg !5108
  %49 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5109
  %pll_nfactor74 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %49, i32 0, i32 7, !dbg !5110
  %50 = load i32, i32* %pll_nfactor74, align 8, !dbg !5110
  %add75 = add i32 %50, 1, !dbg !5111
  %51 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5112
  %sample_freq76 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %51, i32 0, i32 9, !dbg !5113
  %52 = load i32, i32* %sample_freq76, align 8, !dbg !5114
  %div = udiv i32 %52, %add75, !dbg !5114
  store i32 %div, i32* %sample_freq76, align 8, !dbg !5114
  %53 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5115
  %pll_pfactor77 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %53, i32 0, i32 8, !dbg !5116
  %54 = load i32, i32* %pll_pfactor77, align 4, !dbg !5116
  %add78 = add i32 %54, 4, !dbg !5117
  %55 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5118
  %sample_freq79 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %55, i32 0, i32 9, !dbg !5119
  %56 = load i32, i32* %sample_freq79, align 8, !dbg !5120
  %div80 = udiv i32 %56, %add78, !dbg !5120
  store i32 %div80, i32* %sample_freq79, align 8, !dbg !5120
  br label %do.body81, !dbg !5121

do.body81:                                        ; preds = %do.end70
  %57 = load i32, i32* @debug, align 4, !dbg !5122
  %cmp82 = icmp uge i32 %57, 1, !dbg !5122
  br i1 %cmp82, label %if.then84, label %if.end87, !dbg !5125

if.then84:                                        ; preds = %do.body81
  %58 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5122
  %sample_freq85 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %58, i32 0, i32 9, !dbg !5122
  %59 = load i32, i32* %sample_freq85, align 8, !dbg !5122
  %call86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %59) #8, !dbg !5122
  br label %if.end87, !dbg !5122

if.end87:                                         ; preds = %if.then84, %do.body81
  br label %do.end88, !dbg !5125

do.end88:                                         ; preds = %if.end87
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5126
  %61 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5127
  %sample_freq89 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %61, i32 0, i32 9, !dbg !5128
  %62 = load i32, i32* %sample_freq89, align 8, !dbg !5128
  %63 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5129
  %freq_if_hz90 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %63, i32 0, i32 4, !dbg !5130
  %64 = load i32, i32* %freq_if_hz90, align 4, !dbg !5130
  %call91 = call i32 @tda10048_set_phy2(%struct.dvb_frontend* %60, i32 %62, i32 %64) #9, !dbg !5131
  store i32 0, i32* %retval, align 4, !dbg !5132
  br label %return, !dbg !5132

return:                                           ; preds = %do.end88, %if.then31, %sw.default
  %65 = load i32, i32* %retval, align 4, !dbg !5133
  ret i32 %65, !dbg !5133
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_set_bandwidth(%struct.dvb_frontend* %fe, i32 %bw) #0 !dbg !5134 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %bw.addr = alloca i32, align 4
  %state = alloca %struct.tda10048_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  store i32 %bw, i32* %bw.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bw.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5139, metadata !DIExpression()), !dbg !5140
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5141
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5142
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5142
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5141
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5140
  br label %do.body, !dbg !5143

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5144
  %cmp = icmp uge i32 %3, 1, !dbg !5144
  br i1 %cmp, label %if.then, label %if.end, !dbg !5147

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %bw.addr, align 4, !dbg !5144
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda10048_set_bandwidth, i64 0, i64 0), i32 %4) #8, !dbg !5144
  br label %if.end, !dbg !5144

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5147

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %bw.addr, align 4, !dbg !5148
  switch i32 %5, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb
    i32 8000000, label %sw.bb
  ], !dbg !5149

sw.bb:                                            ; preds = %do.end, %do.end, %do.end
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5150
  %7 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5152
  %sample_freq = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %7, i32 0, i32 9, !dbg !5153
  %8 = load i32, i32* %sample_freq, align 8, !dbg !5153
  %9 = load i32, i32* %bw.addr, align 4, !dbg !5154
  %call1 = call i32 @tda10048_set_wref(%struct.dvb_frontend* %6, i32 %8, i32 %9) #9, !dbg !5155
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5156
  %11 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5157
  %sample_freq2 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %11, i32 0, i32 9, !dbg !5158
  %12 = load i32, i32* %sample_freq2, align 8, !dbg !5158
  %13 = load i32, i32* %bw.addr, align 4, !dbg !5159
  %call3 = call i32 @tda10048_set_invwref(%struct.dvb_frontend* %10, i32 %12, i32 %13) #9, !dbg !5160
  br label %sw.epilog, !dbg !5161

sw.default:                                       ; preds = %do.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda10048_set_bandwidth, i64 0, i64 0)) #8, !dbg !5162
  store i32 -22, i32* %retval, align 4, !dbg !5163
  br label %return, !dbg !5163

sw.epilog:                                        ; preds = %sw.bb
  %14 = load i32, i32* %bw.addr, align 4, !dbg !5164
  %15 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5165
  %bandwidth = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %15, i32 0, i32 10, !dbg !5166
  store i32 %14, i32* %bandwidth, align 4, !dbg !5167
  store i32 0, i32* %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

return:                                           ; preds = %sw.epilog, %sw.default
  %16 = load i32, i32* %retval, align 4, !dbg !5169
  ret i32 %16, !dbg !5169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5170 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.tda10048_state*, align 8
  %config = alloca %struct.tda10048_config*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5175, metadata !DIExpression()), !dbg !5176
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5177
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5178
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5178
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5177
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5176
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config, metadata !5179, metadata !DIExpression()), !dbg !5180
  %3 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5181
  %config1 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %3, i32 0, i32 1, !dbg !5182
  store %struct.tda10048_config* %config1, %struct.tda10048_config** %config, align 8, !dbg !5180
  br label %do.body, !dbg !5183

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5184
  %cmp = icmp uge i32 %4, 1, !dbg !5184
  br i1 %cmp, label %if.then, label %if.end, !dbg !5187

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %enable.addr, align 4, !dbg !5184
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda10048_i2c_gate_ctrl, i64 0, i64 0), i32 %5) #8, !dbg !5184
  br label %if.end, !dbg !5184

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5187

do.end:                                           ; preds = %if.end
  %6 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5188
  %disable_gate_access = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %6, i32 0, i32 8, !dbg !5190
  %7 = load i8, i8* %disable_gate_access, align 2, !dbg !5190
  %tobool = icmp ne i8 %7, 0, !dbg !5188
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5191

if.then2:                                         ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5192
  br label %return, !dbg !5192

if.end3:                                          ; preds = %do.end
  %8 = load i32, i32* %enable.addr, align 4, !dbg !5193
  %tobool4 = icmp ne i32 %8, 0, !dbg !5193
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5195

if.then5:                                         ; preds = %if.end3
  %9 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5196
  %10 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5197
  %call6 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %10, i8 zeroext 30) #9, !dbg !5198
  %conv = zext i8 %call6 to i32, !dbg !5198
  %or = or i32 %conv, 2, !dbg !5199
  %conv7 = trunc i32 %or to i8, !dbg !5198
  %call8 = call i32 @tda10048_writereg(%struct.tda10048_state* %9, i8 zeroext 30, i8 zeroext %conv7) #9, !dbg !5200
  store i32 %call8, i32* %retval, align 4, !dbg !5201
  br label %return, !dbg !5201

if.else:                                          ; preds = %if.end3
  %11 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5202
  %12 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5203
  %call9 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %12, i8 zeroext 30) #9, !dbg !5204
  %conv10 = zext i8 %call9 to i32, !dbg !5204
  %and = and i32 %conv10, 253, !dbg !5205
  %conv11 = trunc i32 %and to i8, !dbg !5204
  %call12 = call i32 @tda10048_writereg(%struct.tda10048_state* %11, i8 zeroext 30, i8 zeroext %conv11) #9, !dbg !5206
  store i32 %call12, i32* %retval, align 4, !dbg !5207
  br label %return, !dbg !5207

return:                                           ; preds = %if.else, %if.then5, %if.then2
  %13 = load i32, i32* %retval, align 4, !dbg !5208
  ret i32 %13, !dbg !5208
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
define internal i32 @get_order(i64 %size) #7 !dbg !5209 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5213, metadata !DIExpression()), !dbg !5218
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5220, metadata !DIExpression()), !dbg !5221
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  %0 = load i64, i64* %size.addr, align 8, !dbg !5224
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5226
  br i1 %1, label %if.then, label %if.end447, !dbg !5227

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5228
  %tobool = icmp ne i64 %2, 0, !dbg !5228
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5231

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5232
  br label %return, !dbg !5232

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5233
  %cmp = icmp ult i64 %3, 4096, !dbg !5235
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5236

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5237
  br label %return, !dbg !5237

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub = sub i64 %4, 1, !dbg !5238
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5238
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5238

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub4 = sub i64 %6, 1, !dbg !5238
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5238
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5238

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub6 = sub i64 %8, 1, !dbg !5238
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5238
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5238

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5238

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub9 = sub i64 %9, 1, !dbg !5238
  %and = and i64 %sub9, -9223372036854775808, !dbg !5238
  %tobool10 = icmp ne i64 %and, 0, !dbg !5238
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5238

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5238

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub13 = sub i64 %10, 1, !dbg !5238
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5238
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5238
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5238

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5238

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub18 = sub i64 %11, 1, !dbg !5238
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5238
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5238
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5238

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5238

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub23 = sub i64 %12, 1, !dbg !5238
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5238
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5238
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5238

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5238

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub28 = sub i64 %13, 1, !dbg !5238
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5238
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5238
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5238

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5238

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub33 = sub i64 %14, 1, !dbg !5238
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5238
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5238
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5238

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5238

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub38 = sub i64 %15, 1, !dbg !5238
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5238
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5238
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5238

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5238

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub43 = sub i64 %16, 1, !dbg !5238
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5238
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5238
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5238

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5238

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub48 = sub i64 %17, 1, !dbg !5238
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5238
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5238
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5238

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5238

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub53 = sub i64 %18, 1, !dbg !5238
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5238
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5238
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5238

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5238

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub58 = sub i64 %19, 1, !dbg !5238
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5238
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5238
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5238

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5238

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub63 = sub i64 %20, 1, !dbg !5238
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5238
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5238
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5238

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5238

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub68 = sub i64 %21, 1, !dbg !5238
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5238
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5238
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5238

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5238

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub73 = sub i64 %22, 1, !dbg !5238
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5238
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5238
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5238

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5238

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub78 = sub i64 %23, 1, !dbg !5238
  %and79 = and i64 %sub78, 562949953421312, !dbg !5238
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5238
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5238

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5238

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub83 = sub i64 %24, 1, !dbg !5238
  %and84 = and i64 %sub83, 281474976710656, !dbg !5238
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5238
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5238

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5238

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub88 = sub i64 %25, 1, !dbg !5238
  %and89 = and i64 %sub88, 140737488355328, !dbg !5238
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5238
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5238

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5238

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub93 = sub i64 %26, 1, !dbg !5238
  %and94 = and i64 %sub93, 70368744177664, !dbg !5238
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5238
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5238

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5238

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub98 = sub i64 %27, 1, !dbg !5238
  %and99 = and i64 %sub98, 35184372088832, !dbg !5238
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5238
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5238

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5238

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub103 = sub i64 %28, 1, !dbg !5238
  %and104 = and i64 %sub103, 17592186044416, !dbg !5238
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5238
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5238

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5238

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub108 = sub i64 %29, 1, !dbg !5238
  %and109 = and i64 %sub108, 8796093022208, !dbg !5238
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5238
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5238

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5238

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub113 = sub i64 %30, 1, !dbg !5238
  %and114 = and i64 %sub113, 4398046511104, !dbg !5238
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5238
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5238

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5238

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub118 = sub i64 %31, 1, !dbg !5238
  %and119 = and i64 %sub118, 2199023255552, !dbg !5238
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5238
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5238

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5238

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub123 = sub i64 %32, 1, !dbg !5238
  %and124 = and i64 %sub123, 1099511627776, !dbg !5238
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5238
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5238

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5238

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub128 = sub i64 %33, 1, !dbg !5238
  %and129 = and i64 %sub128, 549755813888, !dbg !5238
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5238
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5238

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5238

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub133 = sub i64 %34, 1, !dbg !5238
  %and134 = and i64 %sub133, 274877906944, !dbg !5238
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5238
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5238

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5238

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub138 = sub i64 %35, 1, !dbg !5238
  %and139 = and i64 %sub138, 137438953472, !dbg !5238
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5238
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5238

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5238

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub143 = sub i64 %36, 1, !dbg !5238
  %and144 = and i64 %sub143, 68719476736, !dbg !5238
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5238
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5238

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5238

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub148 = sub i64 %37, 1, !dbg !5238
  %and149 = and i64 %sub148, 34359738368, !dbg !5238
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5238
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5238

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5238

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub153 = sub i64 %38, 1, !dbg !5238
  %and154 = and i64 %sub153, 17179869184, !dbg !5238
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5238
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5238

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5238

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub158 = sub i64 %39, 1, !dbg !5238
  %and159 = and i64 %sub158, 8589934592, !dbg !5238
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5238
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5238

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5238

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub163 = sub i64 %40, 1, !dbg !5238
  %and164 = and i64 %sub163, 4294967296, !dbg !5238
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5238
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5238

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5238

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub168 = sub i64 %41, 1, !dbg !5238
  %and169 = and i64 %sub168, 2147483648, !dbg !5238
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5238
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5238

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5238

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub173 = sub i64 %42, 1, !dbg !5238
  %and174 = and i64 %sub173, 1073741824, !dbg !5238
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5238
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5238

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5238

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub178 = sub i64 %43, 1, !dbg !5238
  %and179 = and i64 %sub178, 536870912, !dbg !5238
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5238
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5238

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5238

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub183 = sub i64 %44, 1, !dbg !5238
  %and184 = and i64 %sub183, 268435456, !dbg !5238
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5238
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5238

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5238

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub188 = sub i64 %45, 1, !dbg !5238
  %and189 = and i64 %sub188, 134217728, !dbg !5238
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5238
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5238

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5238

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub193 = sub i64 %46, 1, !dbg !5238
  %and194 = and i64 %sub193, 67108864, !dbg !5238
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5238
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5238

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5238

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub198 = sub i64 %47, 1, !dbg !5238
  %and199 = and i64 %sub198, 33554432, !dbg !5238
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5238
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5238

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5238

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub203 = sub i64 %48, 1, !dbg !5238
  %and204 = and i64 %sub203, 16777216, !dbg !5238
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5238
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5238

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5238

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub208 = sub i64 %49, 1, !dbg !5238
  %and209 = and i64 %sub208, 8388608, !dbg !5238
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5238
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5238

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5238

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub213 = sub i64 %50, 1, !dbg !5238
  %and214 = and i64 %sub213, 4194304, !dbg !5238
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5238
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5238

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5238

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub218 = sub i64 %51, 1, !dbg !5238
  %and219 = and i64 %sub218, 2097152, !dbg !5238
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5238
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5238

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5238

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub223 = sub i64 %52, 1, !dbg !5238
  %and224 = and i64 %sub223, 1048576, !dbg !5238
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5238
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5238

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5238

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub228 = sub i64 %53, 1, !dbg !5238
  %and229 = and i64 %sub228, 524288, !dbg !5238
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5238
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5238

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5238

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub233 = sub i64 %54, 1, !dbg !5238
  %and234 = and i64 %sub233, 262144, !dbg !5238
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5238
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5238

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5238

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub238 = sub i64 %55, 1, !dbg !5238
  %and239 = and i64 %sub238, 131072, !dbg !5238
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5238
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5238

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5238

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub243 = sub i64 %56, 1, !dbg !5238
  %and244 = and i64 %sub243, 65536, !dbg !5238
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5238
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5238

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5238

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub248 = sub i64 %57, 1, !dbg !5238
  %and249 = and i64 %sub248, 32768, !dbg !5238
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5238
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5238

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5238

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub253 = sub i64 %58, 1, !dbg !5238
  %and254 = and i64 %sub253, 16384, !dbg !5238
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5238
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5238

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5238

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub258 = sub i64 %59, 1, !dbg !5238
  %and259 = and i64 %sub258, 8192, !dbg !5238
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5238
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5238

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5238

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub263 = sub i64 %60, 1, !dbg !5238
  %and264 = and i64 %sub263, 4096, !dbg !5238
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5238
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5238

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5238

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub268 = sub i64 %61, 1, !dbg !5238
  %and269 = and i64 %sub268, 2048, !dbg !5238
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5238
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5238

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5238

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub273 = sub i64 %62, 1, !dbg !5238
  %and274 = and i64 %sub273, 1024, !dbg !5238
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5238
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5238

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5238

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub278 = sub i64 %63, 1, !dbg !5238
  %and279 = and i64 %sub278, 512, !dbg !5238
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5238
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5238

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5238

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub283 = sub i64 %64, 1, !dbg !5238
  %and284 = and i64 %sub283, 256, !dbg !5238
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5238
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5238

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5238

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub288 = sub i64 %65, 1, !dbg !5238
  %and289 = and i64 %sub288, 128, !dbg !5238
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5238
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5238

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5238

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub293 = sub i64 %66, 1, !dbg !5238
  %and294 = and i64 %sub293, 64, !dbg !5238
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5238
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5238

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5238

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub298 = sub i64 %67, 1, !dbg !5238
  %and299 = and i64 %sub298, 32, !dbg !5238
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5238
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5238

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5238

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub303 = sub i64 %68, 1, !dbg !5238
  %and304 = and i64 %sub303, 16, !dbg !5238
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5238
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5238

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5238

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub308 = sub i64 %69, 1, !dbg !5238
  %and309 = and i64 %sub308, 8, !dbg !5238
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5238
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5238

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5238

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub313 = sub i64 %70, 1, !dbg !5238
  %and314 = and i64 %sub313, 4, !dbg !5238
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5238
  %71 = zext i1 %tobool315 to i64, !dbg !5238
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5238
  br label %cond.end, !dbg !5238

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5238
  br label %cond.end317, !dbg !5238

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5238
  br label %cond.end319, !dbg !5238

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5238
  br label %cond.end321, !dbg !5238

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5238
  br label %cond.end323, !dbg !5238

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5238
  br label %cond.end325, !dbg !5238

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5238
  br label %cond.end327, !dbg !5238

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5238
  br label %cond.end329, !dbg !5238

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5238
  br label %cond.end331, !dbg !5238

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5238
  br label %cond.end333, !dbg !5238

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5238
  br label %cond.end335, !dbg !5238

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5238
  br label %cond.end337, !dbg !5238

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5238
  br label %cond.end339, !dbg !5238

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5238
  br label %cond.end341, !dbg !5238

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5238
  br label %cond.end343, !dbg !5238

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5238
  br label %cond.end345, !dbg !5238

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5238
  br label %cond.end347, !dbg !5238

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5238
  br label %cond.end349, !dbg !5238

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5238
  br label %cond.end351, !dbg !5238

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5238
  br label %cond.end353, !dbg !5238

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5238
  br label %cond.end355, !dbg !5238

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5238
  br label %cond.end357, !dbg !5238

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5238
  br label %cond.end359, !dbg !5238

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5238
  br label %cond.end361, !dbg !5238

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5238
  br label %cond.end363, !dbg !5238

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5238
  br label %cond.end365, !dbg !5238

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5238
  br label %cond.end367, !dbg !5238

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5238
  br label %cond.end369, !dbg !5238

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5238
  br label %cond.end371, !dbg !5238

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5238
  br label %cond.end373, !dbg !5238

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5238
  br label %cond.end375, !dbg !5238

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5238
  br label %cond.end377, !dbg !5238

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5238
  br label %cond.end379, !dbg !5238

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5238
  br label %cond.end381, !dbg !5238

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5238
  br label %cond.end383, !dbg !5238

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5238
  br label %cond.end385, !dbg !5238

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5238
  br label %cond.end387, !dbg !5238

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5238
  br label %cond.end389, !dbg !5238

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5238
  br label %cond.end391, !dbg !5238

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5238
  br label %cond.end393, !dbg !5238

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5238
  br label %cond.end395, !dbg !5238

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5238
  br label %cond.end397, !dbg !5238

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5238
  br label %cond.end399, !dbg !5238

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5238
  br label %cond.end401, !dbg !5238

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5238
  br label %cond.end403, !dbg !5238

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5238
  br label %cond.end405, !dbg !5238

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5238
  br label %cond.end407, !dbg !5238

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5238
  br label %cond.end409, !dbg !5238

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5238
  br label %cond.end411, !dbg !5238

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5238
  br label %cond.end413, !dbg !5238

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5238
  br label %cond.end415, !dbg !5238

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5238
  br label %cond.end417, !dbg !5238

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5238
  br label %cond.end419, !dbg !5238

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5238
  br label %cond.end421, !dbg !5238

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5238
  br label %cond.end423, !dbg !5238

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5238
  br label %cond.end425, !dbg !5238

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5238
  br label %cond.end427, !dbg !5238

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5238
  br label %cond.end429, !dbg !5238

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5238
  br label %cond.end431, !dbg !5238

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5238
  br label %cond.end433, !dbg !5238

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5238
  br label %cond.end435, !dbg !5238

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5238
  br label %cond.end437, !dbg !5238

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5238
  br label %cond.end440, !dbg !5238

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5238

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5238
  br label %cond.end444, !dbg !5238

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5238
  %sub443 = sub i64 %72, 1, !dbg !5238
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5238
  br label %cond.end444, !dbg !5238

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5238
  %sub446 = sub i32 %cond445, 12, !dbg !5239
  %add = add i32 %sub446, 1, !dbg !5240
  store i32 %add, i32* %retval, align 4, !dbg !5241
  br label %return, !dbg !5241

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5242
  %dec = add i64 %73, -1, !dbg !5242
  store i64 %dec, i64* %size.addr, align 8, !dbg !5242
  %74 = load i64, i64* %size.addr, align 8, !dbg !5243
  %shr = lshr i64 %74, 12, !dbg !5243
  store i64 %shr, i64* %size.addr, align 8, !dbg !5243
  %75 = load i64, i64* %size.addr, align 8, !dbg !5244
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5221
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5245
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5246
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5245, !srcloc !5247
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5245
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5248
  %add.i = add i32 %79, 1, !dbg !5249
  store i32 %add.i, i32* %retval, align 4, !dbg !5250
  br label %return, !dbg !5250

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5251
  ret i32 %80, !dbg !5251
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5252 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5213, metadata !DIExpression()), !dbg !5256
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5220, metadata !DIExpression()), !dbg !5258
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5259, metadata !DIExpression()), !dbg !5260
  %0 = load i64, i64* %n.addr, align 8, !dbg !5261
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5258
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5262
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5263
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5262, !srcloc !5247
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5262
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5264
  %add.i = add i32 %4, 1, !dbg !5265
  %sub = sub i32 %add.i, 1, !dbg !5266
  ret i32 %sub, !dbg !5267
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5268 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5280
  ret i8* %0, !dbg !5281
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_set_phy2(%struct.dvb_frontend* %fe, i32 %sample_freq_hz, i32 %if_hz) #0 !dbg !5282 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %sample_freq_hz.addr = alloca i32, align 4
  %if_hz.addr = alloca i32, align 4
  %state = alloca %struct.tda10048_state*, align 8
  %t = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base11 = alloca i32, align 4
  %__rem12 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %__base22 = alloca i32, align 4
  %__rem23 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %__base31 = alloca i32, align 4
  %__rem32 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  store i32 %sample_freq_hz, i32* %sample_freq_hz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sample_freq_hz.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  store i32 %if_hz, i32* %if_hz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %if_hz.addr, metadata !5289, metadata !DIExpression()), !dbg !5290
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5291, metadata !DIExpression()), !dbg !5292
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5293
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5294
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5294
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5293
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5292
  call void @llvm.dbg.declare(metadata i64* %t, metadata !5295, metadata !DIExpression()), !dbg !5296
  br label %do.body, !dbg !5297

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5298
  %cmp = icmp uge i32 %3, 1, !dbg !5298
  br i1 %cmp, label %if.then, label %if.end, !dbg !5301

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10048_set_phy2, i64 0, i64 0)) #8, !dbg !5298
  br label %if.end, !dbg !5298

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5301

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5302
  %cmp1 = icmp eq i32 %4, 0, !dbg !5304
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5305

if.then2:                                         ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

if.end3:                                          ; preds = %do.end
  %5 = load i32, i32* %if_hz.addr, align 4, !dbg !5307
  %6 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5309
  %div = udiv i32 %6, 2, !dbg !5310
  %cmp4 = icmp ult i32 %5, %div, !dbg !5311
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !5312

if.then5:                                         ; preds = %if.end3
  %7 = load i32, i32* %if_hz.addr, align 4, !dbg !5313
  %conv = zext i32 %7 to i64, !dbg !5313
  store i64 %conv, i64* %t, align 8, !dbg !5315
  %8 = load i64, i64* %t, align 8, !dbg !5316
  %mul = mul i64 %8, 10, !dbg !5316
  store i64 %mul, i64* %t, align 8, !dbg !5316
  %9 = load i64, i64* %t, align 8, !dbg !5317
  %mul6 = mul i64 %9, 32768, !dbg !5317
  store i64 %mul6, i64* %t, align 8, !dbg !5317
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5318, metadata !DIExpression()), !dbg !5320
  %10 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5320
  store i32 %10, i32* %__base, align 4, !dbg !5320
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5321, metadata !DIExpression()), !dbg !5320
  %11 = load i64, i64* %t, align 8, !dbg !5320
  %12 = load i32, i32* %__base, align 4, !dbg !5320
  %conv7 = zext i32 %12 to i64, !dbg !5320
  %rem = urem i64 %11, %conv7, !dbg !5320
  %conv8 = trunc i64 %rem to i32, !dbg !5320
  store i32 %conv8, i32* %__rem, align 4, !dbg !5320
  %13 = load i64, i64* %t, align 8, !dbg !5320
  %14 = load i32, i32* %__base, align 4, !dbg !5320
  %conv9 = zext i32 %14 to i64, !dbg !5320
  %div10 = udiv i64 %13, %conv9, !dbg !5320
  store i64 %div10, i64* %t, align 8, !dbg !5320
  %15 = load i32, i32* %__rem, align 4, !dbg !5320
  store i32 %15, i32* %tmp, align 4, !dbg !5320
  %16 = load i32, i32* %tmp, align 4, !dbg !5320
  %17 = load i64, i64* %t, align 8, !dbg !5322
  %add = add i64 %17, 5, !dbg !5322
  store i64 %add, i64* %t, align 8, !dbg !5322
  call void @llvm.dbg.declare(metadata i32* %__base11, metadata !5323, metadata !DIExpression()), !dbg !5325
  store i32 10, i32* %__base11, align 4, !dbg !5325
  call void @llvm.dbg.declare(metadata i32* %__rem12, metadata !5326, metadata !DIExpression()), !dbg !5325
  %18 = load i64, i64* %t, align 8, !dbg !5325
  %19 = load i32, i32* %__base11, align 4, !dbg !5325
  %conv13 = zext i32 %19 to i64, !dbg !5325
  %rem14 = urem i64 %18, %conv13, !dbg !5325
  %conv15 = trunc i64 %rem14 to i32, !dbg !5325
  store i32 %conv15, i32* %__rem12, align 4, !dbg !5325
  %20 = load i64, i64* %t, align 8, !dbg !5325
  %21 = load i32, i32* %__base11, align 4, !dbg !5325
  %conv16 = zext i32 %21 to i64, !dbg !5325
  %div17 = udiv i64 %20, %conv16, !dbg !5325
  store i64 %div17, i64* %t, align 8, !dbg !5325
  %22 = load i32, i32* %__rem12, align 4, !dbg !5325
  store i32 %22, i32* %tmp18, align 4, !dbg !5325
  %23 = load i32, i32* %tmp18, align 4, !dbg !5325
  br label %if.end40, !dbg !5327

if.else:                                          ; preds = %if.end3
  %24 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5328
  %25 = load i32, i32* %if_hz.addr, align 4, !dbg !5330
  %sub = sub i32 %24, %25, !dbg !5331
  %conv19 = zext i32 %sub to i64, !dbg !5328
  store i64 %conv19, i64* %t, align 8, !dbg !5332
  %26 = load i64, i64* %t, align 8, !dbg !5333
  %mul20 = mul i64 %26, 10, !dbg !5333
  store i64 %mul20, i64* %t, align 8, !dbg !5333
  %27 = load i64, i64* %t, align 8, !dbg !5334
  %mul21 = mul i64 %27, 32768, !dbg !5334
  store i64 %mul21, i64* %t, align 8, !dbg !5334
  call void @llvm.dbg.declare(metadata i32* %__base22, metadata !5335, metadata !DIExpression()), !dbg !5337
  %28 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5337
  store i32 %28, i32* %__base22, align 4, !dbg !5337
  call void @llvm.dbg.declare(metadata i32* %__rem23, metadata !5338, metadata !DIExpression()), !dbg !5337
  %29 = load i64, i64* %t, align 8, !dbg !5337
  %30 = load i32, i32* %__base22, align 4, !dbg !5337
  %conv24 = zext i32 %30 to i64, !dbg !5337
  %rem25 = urem i64 %29, %conv24, !dbg !5337
  %conv26 = trunc i64 %rem25 to i32, !dbg !5337
  store i32 %conv26, i32* %__rem23, align 4, !dbg !5337
  %31 = load i64, i64* %t, align 8, !dbg !5337
  %32 = load i32, i32* %__base22, align 4, !dbg !5337
  %conv27 = zext i32 %32 to i64, !dbg !5337
  %div28 = udiv i64 %31, %conv27, !dbg !5337
  store i64 %div28, i64* %t, align 8, !dbg !5337
  %33 = load i32, i32* %__rem23, align 4, !dbg !5337
  store i32 %33, i32* %tmp29, align 4, !dbg !5337
  %34 = load i32, i32* %tmp29, align 4, !dbg !5337
  %35 = load i64, i64* %t, align 8, !dbg !5339
  %add30 = add i64 %35, 5, !dbg !5339
  store i64 %add30, i64* %t, align 8, !dbg !5339
  call void @llvm.dbg.declare(metadata i32* %__base31, metadata !5340, metadata !DIExpression()), !dbg !5342
  store i32 10, i32* %__base31, align 4, !dbg !5342
  call void @llvm.dbg.declare(metadata i32* %__rem32, metadata !5343, metadata !DIExpression()), !dbg !5342
  %36 = load i64, i64* %t, align 8, !dbg !5342
  %37 = load i32, i32* %__base31, align 4, !dbg !5342
  %conv33 = zext i32 %37 to i64, !dbg !5342
  %rem34 = urem i64 %36, %conv33, !dbg !5342
  %conv35 = trunc i64 %rem34 to i32, !dbg !5342
  store i32 %conv35, i32* %__rem32, align 4, !dbg !5342
  %38 = load i64, i64* %t, align 8, !dbg !5342
  %39 = load i32, i32* %__base31, align 4, !dbg !5342
  %conv36 = zext i32 %39 to i64, !dbg !5342
  %div37 = udiv i64 %38, %conv36, !dbg !5342
  store i64 %div37, i64* %t, align 8, !dbg !5342
  %40 = load i32, i32* %__rem32, align 4, !dbg !5342
  store i32 %40, i32* %tmp38, align 4, !dbg !5342
  %41 = load i32, i32* %tmp38, align 4, !dbg !5342
  %42 = load i64, i64* %t, align 8, !dbg !5344
  %neg = xor i64 %42, -1, !dbg !5345
  %add39 = add i64 %neg, 1, !dbg !5346
  store i64 %add39, i64* %t, align 8, !dbg !5347
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then5
  %43 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5348
  %44 = load i64, i64* %t, align 8, !dbg !5349
  %conv41 = trunc i64 %44 to i8, !dbg !5350
  %call42 = call i32 @tda10048_writereg(%struct.tda10048_state* %43, i8 zeroext -122, i8 zeroext %conv41) #9, !dbg !5351
  %45 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5352
  %46 = load i64, i64* %t, align 8, !dbg !5353
  %shr = lshr i64 %46, 8, !dbg !5354
  %conv43 = trunc i64 %shr to i8, !dbg !5355
  %call44 = call i32 @tda10048_writereg(%struct.tda10048_state* %45, i8 zeroext -121, i8 zeroext %conv43) #9, !dbg !5356
  store i32 0, i32* %retval, align 4, !dbg !5357
  br label %return, !dbg !5357

return:                                           ; preds = %if.end40, %if.then2
  %47 = load i32, i32* %retval, align 4, !dbg !5358
  ret i32 %47, !dbg !5358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_writereg(%struct.tda10048_state* %state, i8 zeroext %reg, i8 zeroext %data) #0 !dbg !5359 {
entry:
  %state.addr = alloca %struct.tda10048_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %config = alloca %struct.tda10048_config*, align 8
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.tda10048_state* %state, %struct.tda10048_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state.addr, metadata !5362, metadata !DIExpression()), !dbg !5363
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config, metadata !5368, metadata !DIExpression()), !dbg !5369
  %0 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !5370
  %config1 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %0, i32 0, i32 1, !dbg !5371
  store %struct.tda10048_config* %config1, %struct.tda10048_config** %config, align 8, !dbg !5369
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5372, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5374, metadata !DIExpression()), !dbg !5376
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5377
  %1 = load i8, i8* %reg.addr, align 1, !dbg !5378
  store i8 %1, i8* %arrayinit.begin, align 1, !dbg !5377
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5377
  %2 = load i8, i8* %data.addr, align 1, !dbg !5379
  store i8 %2, i8* %arrayinit.element, align 1, !dbg !5377
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5380, metadata !DIExpression()), !dbg !5381
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5382
  %3 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5383
  %demod_address = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %3, i32 0, i32 0, !dbg !5384
  %4 = load i8, i8* %demod_address, align 2, !dbg !5384
  %conv = zext i8 %4 to i16, !dbg !5383
  store i16 %conv, i16* %addr, align 8, !dbg !5382
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5382
  store i16 0, i16* %flags, align 2, !dbg !5382
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5382
  store i16 2, i16* %len, align 4, !dbg !5382
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5382
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5385
  store i8* %arraydecay, i8** %buf2, align 8, !dbg !5382
  br label %do.body, !dbg !5386

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5387
  %cmp = icmp uge i32 %5, 2, !dbg !5387
  br i1 %cmp, label %if.then, label %if.end, !dbg !5390

if.then:                                          ; preds = %do.body
  %6 = load i8, i8* %reg.addr, align 1, !dbg !5387
  %conv4 = zext i8 %6 to i32, !dbg !5387
  %7 = load i8, i8* %data.addr, align 1, !dbg !5387
  %conv5 = zext i8 %7 to i32, !dbg !5387
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10048_writereg, i64 0, i64 0), i32 %conv4, i32 %conv5) #8, !dbg !5387
  br label %if.end, !dbg !5387

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5390

do.end:                                           ; preds = %if.end
  %8 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !5391
  %i2c = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %8, i32 0, i32 0, !dbg !5392
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5392
  %call6 = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5393
  store i32 %call6, i32* %ret, align 4, !dbg !5394
  %10 = load i32, i32* %ret, align 4, !dbg !5395
  %cmp7 = icmp ne i32 %10, 1, !dbg !5397
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !5398

if.then9:                                         ; preds = %do.end
  %11 = load i32, i32* %ret, align 4, !dbg !5399
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10048_writereg, i64 0, i64 0), i32 %11) #8, !dbg !5400
  br label %if.end11, !dbg !5400

if.end11:                                         ; preds = %if.then9, %do.end
  %12 = load i32, i32* %ret, align 4, !dbg !5401
  %cmp12 = icmp ne i32 %12, 1, !dbg !5402
  %13 = zext i1 %cmp12 to i64, !dbg !5403
  %cond = select i1 %cmp12, i32 -1, i32 0, !dbg !5403
  ret i32 %cond, !dbg !5404
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_set_wref(%struct.dvb_frontend* %fe, i32 %sample_freq_hz, i32 %bw) #0 !dbg !5405 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %sample_freq_hz.addr = alloca i32, align 4
  %bw.addr = alloca i32, align 4
  %state = alloca %struct.tda10048_state*, align 8
  %t = alloca i64, align 8
  %z = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base12 = alloca i32, align 4
  %__rem13 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  store i32 %sample_freq_hz, i32* %sample_freq_hz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sample_freq_hz.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  store i32 %bw, i32* %bw.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bw.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5412, metadata !DIExpression()), !dbg !5413
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5414
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5415
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5415
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5414
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5413
  call void @llvm.dbg.declare(metadata i64* %t, metadata !5416, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.declare(metadata i64* %z, metadata !5418, metadata !DIExpression()), !dbg !5419
  br label %do.body, !dbg !5420

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5421
  %cmp = icmp uge i32 %3, 1, !dbg !5421
  br i1 %cmp, label %if.then, label %if.end, !dbg !5424

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10048_set_wref, i64 0, i64 0)) #8, !dbg !5421
  br label %if.end, !dbg !5421

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5424

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5425
  %cmp1 = icmp eq i32 %4, 0, !dbg !5427
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5428

if.then2:                                         ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5429
  br label %return, !dbg !5429

if.end3:                                          ; preds = %do.end
  %5 = load i32, i32* %bw.addr, align 4, !dbg !5430
  %mul = mul i32 %5, 10, !dbg !5431
  %conv = zext i32 %mul to i64, !dbg !5430
  store i64 %conv, i64* %t, align 8, !dbg !5432
  %6 = load i64, i64* %t, align 8, !dbg !5433
  %mul4 = mul i64 %6, 2097152, !dbg !5433
  store i64 %mul4, i64* %t, align 8, !dbg !5433
  %7 = load i64, i64* %t, align 8, !dbg !5434
  %mul5 = mul i64 %7, 1024, !dbg !5434
  store i64 %mul5, i64* %t, align 8, !dbg !5434
  %8 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5435
  %mul6 = mul i32 7, %8, !dbg !5436
  %conv7 = zext i32 %mul6 to i64, !dbg !5437
  store i64 %conv7, i64* %z, align 8, !dbg !5438
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5439, metadata !DIExpression()), !dbg !5441
  %9 = load i64, i64* %z, align 8, !dbg !5441
  %conv8 = trunc i64 %9 to i32, !dbg !5441
  store i32 %conv8, i32* %__base, align 4, !dbg !5441
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5442, metadata !DIExpression()), !dbg !5441
  %10 = load i64, i64* %t, align 8, !dbg !5441
  %11 = load i32, i32* %__base, align 4, !dbg !5441
  %conv9 = zext i32 %11 to i64, !dbg !5441
  %rem = urem i64 %10, %conv9, !dbg !5441
  %conv10 = trunc i64 %rem to i32, !dbg !5441
  store i32 %conv10, i32* %__rem, align 4, !dbg !5441
  %12 = load i64, i64* %t, align 8, !dbg !5441
  %13 = load i32, i32* %__base, align 4, !dbg !5441
  %conv11 = zext i32 %13 to i64, !dbg !5441
  %div = udiv i64 %12, %conv11, !dbg !5441
  store i64 %div, i64* %t, align 8, !dbg !5441
  %14 = load i32, i32* %__rem, align 4, !dbg !5441
  store i32 %14, i32* %tmp, align 4, !dbg !5441
  %15 = load i32, i32* %tmp, align 4, !dbg !5441
  %16 = load i64, i64* %t, align 8, !dbg !5443
  %add = add i64 %16, 5, !dbg !5443
  store i64 %add, i64* %t, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i32* %__base12, metadata !5444, metadata !DIExpression()), !dbg !5446
  store i32 10, i32* %__base12, align 4, !dbg !5446
  call void @llvm.dbg.declare(metadata i32* %__rem13, metadata !5447, metadata !DIExpression()), !dbg !5446
  %17 = load i64, i64* %t, align 8, !dbg !5446
  %18 = load i32, i32* %__base12, align 4, !dbg !5446
  %conv14 = zext i32 %18 to i64, !dbg !5446
  %rem15 = urem i64 %17, %conv14, !dbg !5446
  %conv16 = trunc i64 %rem15 to i32, !dbg !5446
  store i32 %conv16, i32* %__rem13, align 4, !dbg !5446
  %19 = load i64, i64* %t, align 8, !dbg !5446
  %20 = load i32, i32* %__base12, align 4, !dbg !5446
  %conv17 = zext i32 %20 to i64, !dbg !5446
  %div18 = udiv i64 %19, %conv17, !dbg !5446
  store i64 %div18, i64* %t, align 8, !dbg !5446
  %21 = load i32, i32* %__rem13, align 4, !dbg !5446
  store i32 %21, i32* %tmp19, align 4, !dbg !5446
  %22 = load i32, i32* %tmp19, align 4, !dbg !5446
  %23 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5448
  %24 = load i64, i64* %t, align 8, !dbg !5449
  %conv20 = trunc i64 %24 to i8, !dbg !5450
  %call21 = call i32 @tda10048_writereg(%struct.tda10048_state* %23, i8 zeroext -118, i8 zeroext %conv20) #9, !dbg !5451
  %25 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5452
  %26 = load i64, i64* %t, align 8, !dbg !5453
  %shr = lshr i64 %26, 8, !dbg !5454
  %conv22 = trunc i64 %shr to i8, !dbg !5455
  %call23 = call i32 @tda10048_writereg(%struct.tda10048_state* %25, i8 zeroext -117, i8 zeroext %conv22) #9, !dbg !5456
  %27 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5457
  %28 = load i64, i64* %t, align 8, !dbg !5458
  %shr24 = lshr i64 %28, 16, !dbg !5459
  %conv25 = trunc i64 %shr24 to i8, !dbg !5460
  %call26 = call i32 @tda10048_writereg(%struct.tda10048_state* %27, i8 zeroext -116, i8 zeroext %conv25) #9, !dbg !5461
  %29 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5462
  %30 = load i64, i64* %t, align 8, !dbg !5463
  %shr27 = lshr i64 %30, 24, !dbg !5464
  %conv28 = trunc i64 %shr27 to i8, !dbg !5465
  %call29 = call i32 @tda10048_writereg(%struct.tda10048_state* %29, i8 zeroext -115, i8 zeroext %conv28) #9, !dbg !5466
  store i32 0, i32* %retval, align 4, !dbg !5467
  br label %return, !dbg !5467

return:                                           ; preds = %if.end3, %if.then2
  %31 = load i32, i32* %retval, align 4, !dbg !5468
  ret i32 %31, !dbg !5468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_set_invwref(%struct.dvb_frontend* %fe, i32 %sample_freq_hz, i32 %bw) #0 !dbg !5469 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %sample_freq_hz.addr = alloca i32, align 4
  %bw.addr = alloca i32, align 4
  %state = alloca %struct.tda10048_state*, align 8
  %t = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base9 = alloca i32, align 4
  %__rem10 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5470, metadata !DIExpression()), !dbg !5471
  store i32 %sample_freq_hz, i32* %sample_freq_hz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sample_freq_hz.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  store i32 %bw, i32* %bw.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bw.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5476, metadata !DIExpression()), !dbg !5477
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5478
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5479
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5479
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5478
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5477
  call void @llvm.dbg.declare(metadata i64* %t, metadata !5480, metadata !DIExpression()), !dbg !5481
  br label %do.body, !dbg !5482

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5483
  %cmp = icmp uge i32 %3, 1, !dbg !5483
  br i1 %cmp, label %if.then, label %if.end, !dbg !5486

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda10048_set_invwref, i64 0, i64 0)) #8, !dbg !5483
  br label %if.end, !dbg !5483

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5486

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5487
  %cmp1 = icmp eq i32 %4, 0, !dbg !5489
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5490

if.then2:                                         ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

if.end3:                                          ; preds = %do.end
  %5 = load i32, i32* %sample_freq_hz.addr, align 4, !dbg !5492
  %conv = zext i32 %5 to i64, !dbg !5492
  store i64 %conv, i64* %t, align 8, !dbg !5493
  %6 = load i64, i64* %t, align 8, !dbg !5494
  %mul = mul i64 %6, 7, !dbg !5494
  store i64 %mul, i64* %t, align 8, !dbg !5494
  %7 = load i64, i64* %t, align 8, !dbg !5495
  %mul4 = mul i64 %7, 32, !dbg !5495
  store i64 %mul4, i64* %t, align 8, !dbg !5495
  %8 = load i64, i64* %t, align 8, !dbg !5496
  %mul5 = mul i64 %8, 10, !dbg !5496
  store i64 %mul5, i64* %t, align 8, !dbg !5496
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5497, metadata !DIExpression()), !dbg !5499
  %9 = load i32, i32* %bw.addr, align 4, !dbg !5499
  store i32 %9, i32* %__base, align 4, !dbg !5499
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5500, metadata !DIExpression()), !dbg !5499
  %10 = load i64, i64* %t, align 8, !dbg !5499
  %11 = load i32, i32* %__base, align 4, !dbg !5499
  %conv6 = zext i32 %11 to i64, !dbg !5499
  %rem = urem i64 %10, %conv6, !dbg !5499
  %conv7 = trunc i64 %rem to i32, !dbg !5499
  store i32 %conv7, i32* %__rem, align 4, !dbg !5499
  %12 = load i64, i64* %t, align 8, !dbg !5499
  %13 = load i32, i32* %__base, align 4, !dbg !5499
  %conv8 = zext i32 %13 to i64, !dbg !5499
  %div = udiv i64 %12, %conv8, !dbg !5499
  store i64 %div, i64* %t, align 8, !dbg !5499
  %14 = load i32, i32* %__rem, align 4, !dbg !5499
  store i32 %14, i32* %tmp, align 4, !dbg !5499
  %15 = load i32, i32* %tmp, align 4, !dbg !5499
  %16 = load i64, i64* %t, align 8, !dbg !5501
  %add = add i64 %16, 5, !dbg !5501
  store i64 %add, i64* %t, align 8, !dbg !5501
  call void @llvm.dbg.declare(metadata i32* %__base9, metadata !5502, metadata !DIExpression()), !dbg !5504
  store i32 10, i32* %__base9, align 4, !dbg !5504
  call void @llvm.dbg.declare(metadata i32* %__rem10, metadata !5505, metadata !DIExpression()), !dbg !5504
  %17 = load i64, i64* %t, align 8, !dbg !5504
  %18 = load i32, i32* %__base9, align 4, !dbg !5504
  %conv11 = zext i32 %18 to i64, !dbg !5504
  %rem12 = urem i64 %17, %conv11, !dbg !5504
  %conv13 = trunc i64 %rem12 to i32, !dbg !5504
  store i32 %conv13, i32* %__rem10, align 4, !dbg !5504
  %19 = load i64, i64* %t, align 8, !dbg !5504
  %20 = load i32, i32* %__base9, align 4, !dbg !5504
  %conv14 = zext i32 %20 to i64, !dbg !5504
  %div15 = udiv i64 %19, %conv14, !dbg !5504
  store i64 %div15, i64* %t, align 8, !dbg !5504
  %21 = load i32, i32* %__rem10, align 4, !dbg !5504
  store i32 %21, i32* %tmp16, align 4, !dbg !5504
  %22 = load i32, i32* %tmp16, align 4, !dbg !5504
  %23 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5506
  %24 = load i64, i64* %t, align 8, !dbg !5507
  %conv17 = trunc i64 %24 to i8, !dbg !5508
  %call18 = call i32 @tda10048_writereg(%struct.tda10048_state* %23, i8 zeroext -120, i8 zeroext %conv17) #9, !dbg !5509
  %25 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5510
  %26 = load i64, i64* %t, align 8, !dbg !5511
  %shr = lshr i64 %26, 8, !dbg !5512
  %conv19 = trunc i64 %shr to i8, !dbg !5513
  %call20 = call i32 @tda10048_writereg(%struct.tda10048_state* %25, i8 zeroext -119, i8 zeroext %conv19) #9, !dbg !5514
  store i32 0, i32* %retval, align 4, !dbg !5515
  br label %return, !dbg !5515

return:                                           ; preds = %if.end3, %if.then2
  %27 = load i32, i32* %retval, align 4, !dbg !5516
  ret i32 %27, !dbg !5516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda10048_release(%struct.dvb_frontend* %fe) #0 !dbg !5517 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5520, metadata !DIExpression()), !dbg !5521
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5522
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5523
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5523
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5522
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5521
  br label %do.body, !dbg !5524

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5525
  %cmp = icmp uge i32 %3, 1, !dbg !5525
  br i1 %cmp, label %if.then, label %if.end, !dbg !5528

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tda10048_release, i64 0, i64 0)) #8, !dbg !5525
  br label %if.end, !dbg !5525

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5528

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5529
  %5 = bitcast %struct.tda10048_state* %4 to i8*, !dbg !5529
  call void @kfree(i8* %5) #9, !dbg !5530
  ret void, !dbg !5531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_init(%struct.dvb_frontend* %fe) #0 !dbg !5532 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  %config = alloca %struct.tda10048_config*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5535, metadata !DIExpression()), !dbg !5536
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5537
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5538
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5538
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5537
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5536
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config, metadata !5539, metadata !DIExpression()), !dbg !5540
  %3 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5541
  %config1 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %3, i32 0, i32 1, !dbg !5542
  store %struct.tda10048_config* %config1, %struct.tda10048_config** %config, align 8, !dbg !5540
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i32 0, i32* %ret, align 4, !dbg !5544
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5545, metadata !DIExpression()), !dbg !5546
  br label %do.body, !dbg !5547

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5548
  %cmp = icmp uge i32 %4, 1, !dbg !5548
  br i1 %cmp, label %if.then, label %if.end, !dbg !5551

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.tda10048_init, i64 0, i64 0)) #8, !dbg !5548
  br label %if.end, !dbg !5548

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5551

do.end:                                           ; preds = %if.end
  %5 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5552
  %pll_mfactor = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %5, i32 0, i32 6, !dbg !5553
  %6 = load i32, i32* %pll_mfactor, align 4, !dbg !5553
  %conv = trunc i32 %6 to i8, !dbg !5554
  %conv2 = zext i8 %conv to i16, !dbg !5554
  store i16 %conv2, i16* getelementptr inbounds ([41 x %struct.init_tab], [41 x %struct.init_tab]* @init_tab, i64 0, i64 4, i32 1), align 2, !dbg !5555
  %7 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5556
  %pll_nfactor = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %7, i32 0, i32 7, !dbg !5557
  %8 = load i32, i32* %pll_nfactor, align 8, !dbg !5557
  %conv3 = trunc i32 %8 to i8, !dbg !5558
  %conv4 = zext i8 %conv3 to i32, !dbg !5558
  %or = or i32 %conv4, 64, !dbg !5559
  %conv5 = trunc i32 %or to i16, !dbg !5558
  store i16 %conv5, i16* getelementptr inbounds ([41 x %struct.init_tab], [41 x %struct.init_tab]* @init_tab, i64 0, i64 5, i32 1), align 2, !dbg !5560
  store i32 0, i32* %i, align 4, !dbg !5561
  br label %for.cond, !dbg !5563

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, i32* %i, align 4, !dbg !5564
  %conv6 = sext i32 %9 to i64, !dbg !5564
  %cmp7 = icmp ult i64 %conv6, 41, !dbg !5566
  br i1 %cmp7, label %for.body, label %for.end, !dbg !5567

for.body:                                         ; preds = %for.cond
  %10 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5568
  %11 = load i32, i32* %i, align 4, !dbg !5569
  %idxprom = sext i32 %11 to i64, !dbg !5570
  %arrayidx = getelementptr [41 x %struct.init_tab], [41 x %struct.init_tab]* @init_tab, i64 0, i64 %idxprom, !dbg !5570
  %reg = getelementptr inbounds %struct.init_tab, %struct.init_tab* %arrayidx, i32 0, i32 0, !dbg !5571
  %12 = load i8, i8* %reg, align 4, !dbg !5571
  %13 = load i32, i32* %i, align 4, !dbg !5572
  %idxprom9 = sext i32 %13 to i64, !dbg !5573
  %arrayidx10 = getelementptr [41 x %struct.init_tab], [41 x %struct.init_tab]* @init_tab, i64 0, i64 %idxprom9, !dbg !5573
  %data = getelementptr inbounds %struct.init_tab, %struct.init_tab* %arrayidx10, i32 0, i32 1, !dbg !5574
  %14 = load i16, i16* %data, align 2, !dbg !5574
  %conv11 = trunc i16 %14 to i8, !dbg !5573
  %call12 = call i32 @tda10048_writereg(%struct.tda10048_state* %10, i8 zeroext %12, i8 zeroext %conv11) #9, !dbg !5575
  br label %for.inc, !dbg !5575

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !5576
  %inc = add i32 %15, 1, !dbg !5576
  store i32 %inc, i32* %i, align 4, !dbg !5576
  br label %for.cond, !dbg !5577, !llvm.loop !5578

for.end:                                          ; preds = %for.cond
  %16 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5580
  %fwloaded = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %16, i32 0, i32 3, !dbg !5582
  %17 = load i32, i32* %fwloaded, align 8, !dbg !5582
  %cmp13 = icmp eq i32 %17, 0, !dbg !5583
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !5584

if.then15:                                        ; preds = %for.end
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5585
  %call16 = call i32 @tda10048_firmware_upload(%struct.dvb_frontend* %18) #9, !dbg !5586
  store i32 %call16, i32* %ret, align 4, !dbg !5587
  br label %if.end17, !dbg !5588

if.end17:                                         ; preds = %if.then15, %for.end
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5589
  %20 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5590
  %output_mode = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %20, i32 0, i32 1, !dbg !5591
  %21 = load i8, i8* %output_mode, align 1, !dbg !5591
  %conv18 = zext i8 %21 to i32, !dbg !5590
  %call19 = call i32 @tda10048_output_mode(%struct.dvb_frontend* %19, i32 %conv18) #9, !dbg !5592
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5593
  %23 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5594
  %inversion = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %23, i32 0, i32 3, !dbg !5595
  %24 = load i8, i8* %inversion, align 1, !dbg !5595
  %conv20 = zext i8 %24 to i32, !dbg !5594
  %call21 = call i32 @tda10048_set_inversion(%struct.dvb_frontend* %22, i32 %conv20) #9, !dbg !5596
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5597
  %call22 = call i32 @tda10048_set_if(%struct.dvb_frontend* %25, i32 8000000) #9, !dbg !5598
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5599
  %call23 = call i32 @tda10048_set_bandwidth(%struct.dvb_frontend* %26, i32 8000000) #9, !dbg !5600
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5601
  %call24 = call i32 @tda10048_i2c_gate_ctrl(%struct.dvb_frontend* %27, i32 0) #9, !dbg !5602
  %28 = load i32, i32* %ret, align 4, !dbg !5603
  ret i32 %28, !dbg !5604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5605 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5606, metadata !DIExpression()), !dbg !5607
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5608, metadata !DIExpression()), !dbg !5609
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5610
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5611
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5609
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5612, metadata !DIExpression()), !dbg !5613
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5614
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5615
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5615
  %3 = bitcast i8* %2 to %struct.tda10048_state*, !dbg !5614
  store %struct.tda10048_state* %3, %struct.tda10048_state** %state, align 8, !dbg !5613
  br label %do.body, !dbg !5616

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5617
  %cmp = icmp uge i32 %4, 1, !dbg !5617
  br i1 %cmp, label %if.then, label %if.end, !dbg !5620

if.then:                                          ; preds = %do.body
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5617
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 0, !dbg !5617
  %6 = load i32, i32* %frequency, align 4, !dbg !5617
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda10048_set_frontend, i64 0, i64 0), i32 %6) #8, !dbg !5617
  br label %if.end, !dbg !5617

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5620

do.end:                                           ; preds = %if.end
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5621
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 7, !dbg !5623
  %8 = load i32, i32* %bandwidth_hz, align 4, !dbg !5623
  %9 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5624
  %bandwidth = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %9, i32 0, i32 10, !dbg !5625
  %10 = load i32, i32* %bandwidth, align 4, !dbg !5625
  %cmp1 = icmp ne i32 %8, %10, !dbg !5626
  br i1 %cmp1, label %if.then2, label %if.end7, !dbg !5627

if.then2:                                         ; preds = %do.end
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5628
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5630
  %bandwidth_hz3 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 7, !dbg !5631
  %13 = load i32, i32* %bandwidth_hz3, align 4, !dbg !5631
  %call4 = call i32 @tda10048_set_if(%struct.dvb_frontend* %11, i32 %13) #9, !dbg !5632
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5633
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5634
  %bandwidth_hz5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 7, !dbg !5635
  %16 = load i32, i32* %bandwidth_hz5, align 4, !dbg !5635
  %call6 = call i32 @tda10048_set_bandwidth(%struct.dvb_frontend* %14, i32 %16) #9, !dbg !5636
  br label %if.end7, !dbg !5637

if.end7:                                          ; preds = %if.then2, %do.end
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5638
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1, !dbg !5640
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5641
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5642
  %18 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5642
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %18, null, !dbg !5638
  br i1 %tobool, label %if.then8, label %if.end28, !dbg !5643

if.then8:                                         ; preds = %if.end7
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5644
  %ops9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 1, !dbg !5647
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops9, i32 0, i32 26, !dbg !5648
  %20 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5648
  %tobool10 = icmp ne i32 (%struct.dvb_frontend*, i32)* %20, null, !dbg !5644
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !5649

if.then11:                                        ; preds = %if.then8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5650
  %ops12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1, !dbg !5651
  %i2c_gate_ctrl13 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops12, i32 0, i32 26, !dbg !5652
  %22 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl13, align 8, !dbg !5652
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5653
  %call14 = call i32 %22(%struct.dvb_frontend* %23, i32 1) #9, !dbg !5650
  br label %if.end15, !dbg !5650

if.end15:                                         ; preds = %if.then11, %if.then8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5654
  %ops16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 1, !dbg !5655
  %tuner_ops17 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops16, i32 0, i32 30, !dbg !5656
  %set_params18 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops17, i32 0, i32 6, !dbg !5657
  %25 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params18, align 8, !dbg !5657
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5658
  %call19 = call i32 %25(%struct.dvb_frontend* %26) #9, !dbg !5654
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5659
  %ops20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 1, !dbg !5661
  %i2c_gate_ctrl21 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops20, i32 0, i32 26, !dbg !5662
  %28 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl21, align 8, !dbg !5662
  %tobool22 = icmp ne i32 (%struct.dvb_frontend*, i32)* %28, null, !dbg !5659
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !5663

if.then23:                                        ; preds = %if.end15
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5664
  %ops24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 1, !dbg !5665
  %i2c_gate_ctrl25 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops24, i32 0, i32 26, !dbg !5666
  %30 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl25, align 8, !dbg !5666
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5667
  %call26 = call i32 %30(%struct.dvb_frontend* %31, i32 0) #9, !dbg !5664
  br label %if.end27, !dbg !5664

if.end27:                                         ; preds = %if.then23, %if.end15
  br label %if.end28, !dbg !5668

if.end28:                                         ; preds = %if.end27, %if.end7
  %32 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5669
  %call29 = call i32 @tda10048_writereg(%struct.tda10048_state* %32, i8 zeroext 24, i8 zeroext 87) #9, !dbg !5670
  %33 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5671
  %call30 = call i32 @tda10048_writereg(%struct.tda10048_state* %33, i8 zeroext -62, i8 zeroext 59) #9, !dbg !5672
  ret i32 0, !dbg !5673
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %tune) #0 !dbg !5674 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tune.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5675, metadata !DIExpression()), !dbg !5676
  store %struct.dvb_frontend_tune_settings* %tune, %struct.dvb_frontend_tune_settings** %tune.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %tune.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %tune.addr, align 8, !dbg !5679
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5680
  store i32 1000, i32* %min_delay_ms, align 4, !dbg !5681
  ret i32 0, !dbg !5682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !5683 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5688, metadata !DIExpression()), !dbg !5689
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5690
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5691
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5691
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5690
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5689
  br label %do.body, !dbg !5692

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5693
  %cmp = icmp uge i32 %3, 1, !dbg !5693
  br i1 %cmp, label %if.then, label %if.end, !dbg !5696

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda10048_get_frontend, i64 0, i64 0)) #8, !dbg !5693
  br label %if.end, !dbg !5693

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5696

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5697
  %call1 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %4, i8 zeroext 96) #9, !dbg !5698
  %conv = zext i8 %call1 to i32, !dbg !5698
  %and = and i32 %conv, 32, !dbg !5699
  %tobool = icmp ne i32 %and, 0, !dbg !5698
  %5 = zext i1 %tobool to i64, !dbg !5698
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5698
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5700
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 4, !dbg !5701
  store i32 %cond, i32* %inversion, align 4, !dbg !5702
  %7 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5703
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5704
  %call2 = call i32 @tda10048_get_tps(%struct.tda10048_state* %7, %struct.dtv_frontend_properties* %8) #9, !dbg !5705
  ret i32 %call2, !dbg !5706
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5707 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5708, metadata !DIExpression()), !dbg !5709
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5710, metadata !DIExpression()), !dbg !5711
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5712, metadata !DIExpression()), !dbg !5713
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5714
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5715
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5715
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5714
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5713
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5716, metadata !DIExpression()), !dbg !5717
  %3 = load i32*, i32** %status.addr, align 8, !dbg !5718
  store i32 0, i32* %3, align 4, !dbg !5719
  %4 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5720
  %call = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %4, i8 zeroext 26) #9, !dbg !5721
  store i8 %call, i8* %reg, align 1, !dbg !5722
  br label %do.body, !dbg !5723

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5724
  %cmp = icmp uge i32 %5, 1, !dbg !5724
  br i1 %cmp, label %if.then, label %if.end, !dbg !5727

if.then:                                          ; preds = %do.body
  %6 = load i8, i8* %reg, align 1, !dbg !5724
  %conv = zext i8 %6 to i32, !dbg !5724
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda10048_read_status, i64 0, i64 0), i32 %conv) #8, !dbg !5724
  br label %if.end, !dbg !5724

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5727

do.end:                                           ; preds = %if.end
  %7 = load i8, i8* %reg, align 1, !dbg !5728
  %conv2 = zext i8 %7 to i32, !dbg !5728
  %and = and i32 %conv2, 2, !dbg !5730
  %tobool = icmp ne i32 %and, 0, !dbg !5730
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !5731

if.then3:                                         ; preds = %do.end
  %8 = load i32*, i32** %status.addr, align 8, !dbg !5732
  %9 = load i32, i32* %8, align 4, !dbg !5733
  %or = or i32 %9, 2, !dbg !5733
  store i32 %or, i32* %8, align 4, !dbg !5733
  br label %if.end4, !dbg !5734

if.end4:                                          ; preds = %if.then3, %do.end
  %10 = load i8, i8* %reg, align 1, !dbg !5735
  %conv5 = zext i8 %10 to i32, !dbg !5735
  %and6 = and i32 %conv5, 4, !dbg !5737
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5737
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5738

if.then8:                                         ; preds = %if.end4
  %11 = load i32*, i32** %status.addr, align 8, !dbg !5739
  %12 = load i32, i32* %11, align 4, !dbg !5740
  %or9 = or i32 %12, 1, !dbg !5740
  store i32 %or9, i32* %11, align 4, !dbg !5740
  br label %if.end10, !dbg !5741

if.end10:                                         ; preds = %if.then8, %if.end4
  %13 = load i8, i8* %reg, align 1, !dbg !5742
  %conv11 = zext i8 %13 to i32, !dbg !5742
  %and12 = and i32 %conv11, 8, !dbg !5744
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5744
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !5745

if.then14:                                        ; preds = %if.end10
  %14 = load i32*, i32** %status.addr, align 8, !dbg !5746
  %15 = load i32, i32* %14, align 4, !dbg !5748
  %or15 = or i32 %15, 16, !dbg !5748
  store i32 %or15, i32* %14, align 4, !dbg !5748
  %16 = load i32*, i32** %status.addr, align 8, !dbg !5749
  %17 = load i32, i32* %16, align 4, !dbg !5750
  %or16 = or i32 %17, 4, !dbg !5750
  store i32 %or16, i32* %16, align 4, !dbg !5750
  %18 = load i32*, i32** %status.addr, align 8, !dbg !5751
  %19 = load i32, i32* %18, align 4, !dbg !5752
  %or17 = or i32 %19, 8, !dbg !5752
  store i32 %or17, i32* %18, align 4, !dbg !5752
  br label %if.end18, !dbg !5753

if.end18:                                         ; preds = %if.then14, %if.end10
  ret i32 0, !dbg !5754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !4312 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  %cber_nmax = alloca i32, align 4
  %cber_tmp = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5755, metadata !DIExpression()), !dbg !5756
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5759, metadata !DIExpression()), !dbg !5760
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5761
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5762
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5762
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5761
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5760
  call void @llvm.dbg.declare(metadata i32* %cber_nmax, metadata !5763, metadata !DIExpression()), !dbg !5764
  call void @llvm.dbg.declare(metadata i64* %cber_tmp, metadata !5765, metadata !DIExpression()), !dbg !5766
  br label %do.body, !dbg !5767

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5768
  %cmp = icmp uge i32 %3, 1, !dbg !5768
  br i1 %cmp, label %if.then, label %if.end, !dbg !5771

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10048_read_ber, i64 0, i64 0)) #8, !dbg !5768
  br label %if.end, !dbg !5768

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5771

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5772
  %call1 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %4, i8 zeroext -42) #9, !dbg !5774
  %conv = zext i8 %call1 to i32, !dbg !5774
  %and = and i32 %conv, 1, !dbg !5775
  %tobool = icmp ne i32 %and, 0, !dbg !5775
  br i1 %tobool, label %if.then2, label %if.end19, !dbg !5776

if.then2:                                         ; preds = %do.end
  %5 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5777
  %call3 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %5, i8 zeroext -57) #9, !dbg !5779
  %conv4 = zext i8 %call3 to i32, !dbg !5779
  %shl = shl i32 %conv4, 8, !dbg !5780
  %6 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5781
  %call5 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %6, i8 zeroext -58) #9, !dbg !5782
  %conv6 = zext i8 %call5 to i32, !dbg !5782
  %or = or i32 %shl, %conv6, !dbg !5783
  %conv7 = sext i32 %or to i64, !dbg !5779
  store i64 %conv7, i64* %cber_tmp, align 8, !dbg !5784
  %7 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5785
  %call8 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %7, i8 zeroext -59) #9, !dbg !5786
  %conv9 = zext i8 %call8 to i32, !dbg !5786
  %shl10 = shl i32 %conv9, 8, !dbg !5787
  %8 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5788
  %call11 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %8, i8 zeroext -60) #9, !dbg !5789
  %conv12 = zext i8 %call11 to i32, !dbg !5789
  %or13 = or i32 %shl10, %conv12, !dbg !5790
  store i32 %or13, i32* %cber_nmax, align 4, !dbg !5791
  %9 = load i64, i64* %cber_tmp, align 8, !dbg !5792
  %mul = mul i64 %9, 100000000, !dbg !5792
  store i64 %mul, i64* %cber_tmp, align 8, !dbg !5792
  %10 = load i64, i64* %cber_tmp, align 8, !dbg !5793
  %mul14 = mul i64 %10, 2, !dbg !5793
  store i64 %mul14, i64* %cber_tmp, align 8, !dbg !5793
  %11 = load i64, i64* %cber_tmp, align 8, !dbg !5794
  %12 = load i32, i32* %cber_nmax, align 4, !dbg !5795
  %mul15 = mul i32 %12, 32, !dbg !5796
  %add = add i32 %mul15, 1, !dbg !5797
  %call16 = call i64 @div_u64(i64 %11, i32 %add) #9, !dbg !5798
  store i64 %call16, i64* %cber_tmp, align 8, !dbg !5799
  %13 = load i64, i64* %cber_tmp, align 8, !dbg !5800
  %conv17 = trunc i64 %13 to i32, !dbg !5801
  store i32 %conv17, i32* @tda10048_read_ber.cber_current, align 4, !dbg !5802
  %14 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5803
  %call18 = call i32 @tda10048_writereg(%struct.tda10048_state* %14, i8 zeroext -62, i8 zeroext 57) #9, !dbg !5804
  br label %if.end19, !dbg !5805

if.end19:                                         ; preds = %if.then2, %do.end
  %15 = load i32, i32* @tda10048_read_ber.cber_current, align 4, !dbg !5806
  %16 = load i32*, i32** %ber.addr, align 8, !dbg !5807
  store i32 %15, i32* %16, align 4, !dbg !5808
  ret i32 0, !dbg !5809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal_strength) #0 !dbg !5810 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal_strength.addr = alloca i16*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  %v = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5811, metadata !DIExpression()), !dbg !5812
  store i16* %signal_strength, i16** %signal_strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal_strength.addr, metadata !5813, metadata !DIExpression()), !dbg !5814
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5815, metadata !DIExpression()), !dbg !5816
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5817
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5818
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5818
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5817
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5816
  call void @llvm.dbg.declare(metadata i8* %v, metadata !5819, metadata !DIExpression()), !dbg !5820
  br label %do.body, !dbg !5821

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5822
  %cmp = icmp uge i32 %3, 1, !dbg !5822
  br i1 %cmp, label %if.then, label %if.end, !dbg !5825

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tda10048_read_signal_strength, i64 0, i64 0)) #8, !dbg !5822
  br label %if.end, !dbg !5822

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5825

do.end:                                           ; preds = %if.end
  %4 = load i16*, i16** %signal_strength.addr, align 8, !dbg !5826
  store i16 -1, i16* %4, align 2, !dbg !5827
  %5 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5828
  %call1 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %5, i8 zeroext -94) #9, !dbg !5829
  store i8 %call1, i8* %v, align 1, !dbg !5830
  %6 = load i8, i8* %v, align 1, !dbg !5831
  %conv = zext i8 %6 to i32, !dbg !5831
  %cmp2 = icmp sgt i32 %conv, 0, !dbg !5833
  br i1 %cmp2, label %if.then4, label %if.end9, !dbg !5834

if.then4:                                         ; preds = %do.end
  %7 = load i8, i8* %v, align 1, !dbg !5835
  %conv5 = zext i8 %7 to i32, !dbg !5835
  %shl = shl i32 %conv5, 8, !dbg !5836
  %8 = load i8, i8* %v, align 1, !dbg !5837
  %conv6 = zext i8 %8 to i32, !dbg !5837
  %or = or i32 %shl, %conv6, !dbg !5838
  %9 = load i16*, i16** %signal_strength.addr, align 8, !dbg !5839
  %10 = load i16, i16* %9, align 2, !dbg !5840
  %conv7 = zext i16 %10 to i32, !dbg !5840
  %sub = sub i32 %conv7, %or, !dbg !5840
  %conv8 = trunc i32 %sub to i16, !dbg !5840
  store i16 %conv8, i16* %9, align 2, !dbg !5840
  br label %if.end9, !dbg !5841

if.end9:                                          ; preds = %if.then4, %do.end
  ret i32 0, !dbg !5842
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5843 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  %v = alloca i8, align 1
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5844, metadata !DIExpression()), !dbg !5845
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5846, metadata !DIExpression()), !dbg !5847
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5848, metadata !DIExpression()), !dbg !5849
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5850
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5851
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5851
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5850
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5849
  call void @llvm.dbg.declare(metadata i8* %v, metadata !5852, metadata !DIExpression()), !dbg !5853
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5854, metadata !DIExpression()), !dbg !5855
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5856, metadata !DIExpression()), !dbg !5857
  store i32 -22, i32* %ret, align 4, !dbg !5857
  br label %do.body, !dbg !5858

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5859
  %cmp = icmp uge i32 %3, 1, !dbg !5859
  br i1 %cmp, label %if.then, label %if.end, !dbg !5862

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10048_read_snr, i64 0, i64 0)) #8, !dbg !5859
  br label %if.end, !dbg !5859

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5862

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5863
  %call1 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %4, i8 zeroext -94) #9, !dbg !5864
  store i8 %call1, i8* %v, align 1, !dbg !5865
  store i32 0, i32* %i, align 4, !dbg !5866
  br label %for.cond, !dbg !5868

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i32, i32* %i, align 4, !dbg !5869
  %conv = sext i32 %5 to i64, !dbg !5869
  %cmp2 = icmp ult i64 %conv, 123, !dbg !5871
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5872

for.body:                                         ; preds = %for.cond
  %6 = load i8, i8* %v, align 1, !dbg !5873
  %conv4 = zext i8 %6 to i32, !dbg !5873
  %7 = load i32, i32* %i, align 4, !dbg !5876
  %idxprom = sext i32 %7 to i64, !dbg !5877
  %arrayidx = getelementptr [123 x %struct.snr_tab], [123 x %struct.snr_tab]* @snr_tab, i64 0, i64 %idxprom, !dbg !5877
  %val = getelementptr inbounds %struct.snr_tab, %struct.snr_tab* %arrayidx, i32 0, i32 0, !dbg !5878
  %8 = load i8, i8* %val, align 2, !dbg !5878
  %conv5 = zext i8 %8 to i32, !dbg !5877
  %cmp6 = icmp sle i32 %conv4, %conv5, !dbg !5879
  br i1 %cmp6, label %if.then8, label %if.end12, !dbg !5880

if.then8:                                         ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !5881
  %idxprom9 = sext i32 %9 to i64, !dbg !5883
  %arrayidx10 = getelementptr [123 x %struct.snr_tab], [123 x %struct.snr_tab]* @snr_tab, i64 0, i64 %idxprom9, !dbg !5883
  %data = getelementptr inbounds %struct.snr_tab, %struct.snr_tab* %arrayidx10, i32 0, i32 1, !dbg !5884
  %10 = load i8, i8* %data, align 1, !dbg !5884
  %conv11 = zext i8 %10 to i16, !dbg !5883
  %11 = load i16*, i16** %snr.addr, align 8, !dbg !5885
  store i16 %conv11, i16* %11, align 2, !dbg !5886
  store i32 0, i32* %ret, align 4, !dbg !5887
  br label %for.end, !dbg !5888

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !5889

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !5890
  %inc = add i32 %12, 1, !dbg !5890
  store i32 %inc, i32* %i, align 4, !dbg !5890
  br label %for.cond, !dbg !5891, !llvm.loop !5892

for.end:                                          ; preds = %if.then8, %for.cond
  %13 = load i32, i32* %ret, align 4, !dbg !5894
  ret i32 %13, !dbg !5895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5896 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5899, metadata !DIExpression()), !dbg !5900
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5903
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5904
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5904
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5903
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5902
  br label %do.body, !dbg !5905

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5906
  %cmp = icmp uge i32 %3, 1, !dbg !5906
  br i1 %cmp, label %if.then, label %if.end, !dbg !5909

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda10048_read_ucblocks, i64 0, i64 0)) #8, !dbg !5906
  br label %if.end, !dbg !5906

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5909

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5910
  %call1 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %4, i8 zeroext -49) #9, !dbg !5911
  %conv = zext i8 %call1 to i32, !dbg !5911
  %shl = shl i32 %conv, 8, !dbg !5912
  %5 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5913
  %call2 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %5, i8 zeroext -50) #9, !dbg !5914
  %conv3 = zext i8 %call2 to i32, !dbg !5914
  %or = or i32 %shl, %conv3, !dbg !5915
  %6 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5916
  store i32 %or, i32* %6, align 4, !dbg !5917
  %7 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5918
  %8 = load i32, i32* %7, align 4, !dbg !5920
  %cmp4 = icmp eq i32 %8, 65535, !dbg !5921
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !5922

if.then6:                                         ; preds = %do.end
  %9 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5923
  %call7 = call i32 @tda10048_writereg(%struct.tda10048_state* %9, i8 zeroext -51, i8 zeroext -128) #9, !dbg !5924
  br label %if.end8, !dbg !5924

if.end8:                                          ; preds = %if.then6, %do.end
  ret i32 0, !dbg !5925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_firmware_upload(%struct.dvb_frontend* %fe) #0 !dbg !5926 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10048_state*, align 8
  %config = alloca %struct.tda10048_config*, align 8
  %fw = alloca %struct.firmware*, align 8
  %ret = alloca i32, align 4
  %pos = alloca i32, align 4
  %cnt = alloca i32, align 4
  %wlen = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !5929, metadata !DIExpression()), !dbg !5930
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5931
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5932
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5932
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !5931
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !5930
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config, metadata !5933, metadata !DIExpression()), !dbg !5934
  %3 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5935
  %config1 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %3, i32 0, i32 1, !dbg !5936
  store %struct.tda10048_config* %config1, %struct.tda10048_config** %config, align 8, !dbg !5934
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !5937, metadata !DIExpression()), !dbg !5946
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5947, metadata !DIExpression()), !dbg !5948
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !5949, metadata !DIExpression()), !dbg !5950
  store i32 0, i32* %pos, align 4, !dbg !5950
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !5951, metadata !DIExpression()), !dbg !5952
  call void @llvm.dbg.declare(metadata i8* %wlen, metadata !5953, metadata !DIExpression()), !dbg !5954
  %4 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !5955
  %fwbulkwritelen = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %4, i32 0, i32 2, !dbg !5956
  %5 = load i8, i8* %fwbulkwritelen, align 2, !dbg !5956
  store i8 %5, i8* %wlen, align 1, !dbg !5954
  %6 = load i8, i8* %wlen, align 1, !dbg !5957
  %conv = zext i8 %6 to i32, !dbg !5957
  %cmp = icmp ne i32 %conv, 200, !dbg !5959
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5960

land.lhs.true:                                    ; preds = %entry
  %7 = load i8, i8* %wlen, align 1, !dbg !5961
  %conv3 = zext i8 %7 to i32, !dbg !5961
  %cmp4 = icmp ne i32 %conv3, 50, !dbg !5962
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5963

if.then:                                          ; preds = %land.lhs.true
  store i8 -56, i8* %wlen, align 1, !dbg !5964
  br label %if.end, !dbg !5965

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10048_firmware_upload, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !5966
  %8 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5967
  %i2c = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %8, i32 0, i32 0, !dbg !5968
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5968
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 9, !dbg !5969
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5970
  %10 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5970
  %call6 = call i32 @request_firmware(%struct.firmware** %fw, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), %struct.device* %10) #9, !dbg !5971
  store i32 %call6, i32* %ret, align 4, !dbg !5972
  %11 = load i32, i32* %ret, align 4, !dbg !5973
  %tobool = icmp ne i32 %11, 0, !dbg !5973
  br i1 %tobool, label %if.then7, label %if.else, !dbg !5975

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10048_firmware_upload, i64 0, i64 0)) #8, !dbg !5976
  store i32 -5, i32* %retval, align 4, !dbg !5978
  br label %return, !dbg !5978

if.else:                                          ; preds = %if.end
  %12 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5979
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 0, !dbg !5981
  %13 = load i64, i64* %size, align 8, !dbg !5981
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10048_firmware_upload, i64 0, i64 0), i64 %13) #8, !dbg !5982
  store i32 0, i32* %ret, align 4, !dbg !5983
  br label %if.end10

if.end10:                                         ; preds = %if.else
  %14 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5984
  %size11 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 0, !dbg !5986
  %15 = load i64, i64* %size11, align 8, !dbg !5986
  %cmp12 = icmp ne i64 %15, 24878, !dbg !5987
  br i1 %cmp12, label %if.then14, label %if.else16, !dbg !5988

if.then14:                                        ; preds = %if.end10
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10048_firmware_upload, i64 0, i64 0)) #8, !dbg !5989
  store i32 -5, i32* %ret, align 4, !dbg !5991
  br label %if.end65, !dbg !5992

if.else16:                                        ; preds = %if.end10
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10048_firmware_upload, i64 0, i64 0)) #8, !dbg !5993
  %16 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5995
  %17 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !5996
  %call18 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %17, i8 zeroext 68) #9, !dbg !5997
  %conv19 = zext i8 %call18 to i32, !dbg !5997
  %and = and i32 %conv19, 254, !dbg !5998
  %conv20 = trunc i32 %and to i8, !dbg !5997
  %call21 = call i32 @tda10048_writereg(%struct.tda10048_state* %16, i8 zeroext 68, i8 zeroext %conv20) #9, !dbg !5999
  %18 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6000
  %19 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6001
  %call22 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %19, i8 zeroext 68) #9, !dbg !6002
  %conv23 = zext i8 %call22 to i32, !dbg !6002
  %or = or i32 %conv23, 1, !dbg !6003
  %conv24 = trunc i32 %or to i8, !dbg !6002
  %call25 = call i32 @tda10048_writereg(%struct.tda10048_state* %18, i8 zeroext 68, i8 zeroext %conv24) #9, !dbg !6004
  %20 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6005
  %21 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6006
  %call26 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %21, i8 zeroext 30) #9, !dbg !6007
  %conv27 = zext i8 %call26 to i32, !dbg !6007
  %and28 = and i32 %conv27, 249, !dbg !6008
  %conv29 = trunc i32 %and28 to i8, !dbg !6007
  %call30 = call i32 @tda10048_writereg(%struct.tda10048_state* %20, i8 zeroext 30, i8 zeroext %conv29) #9, !dbg !6009
  %22 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6010
  %23 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6011
  %call31 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %23, i8 zeroext 30) #9, !dbg !6012
  %conv32 = zext i8 %call31 to i32, !dbg !6012
  %or33 = or i32 %conv32, 8, !dbg !6013
  %conv34 = trunc i32 %or33 to i8, !dbg !6012
  %call35 = call i32 @tda10048_writereg(%struct.tda10048_state* %22, i8 zeroext 30, i8 zeroext %conv34) #9, !dbg !6014
  %24 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6015
  %call36 = call i32 @tda10048_writereg(%struct.tda10048_state* %24, i8 zeroext 12, i8 zeroext 0) #9, !dbg !6016
  br label %while.cond, !dbg !6017

while.cond:                                       ; preds = %if.end53, %if.else16
  %25 = load i32, i32* %pos, align 4, !dbg !6018
  %conv37 = sext i32 %25 to i64, !dbg !6018
  %26 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6019
  %size38 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0, !dbg !6020
  %27 = load i64, i64* %size38, align 8, !dbg !6020
  %cmp39 = icmp ult i64 %conv37, %27, !dbg !6021
  br i1 %cmp39, label %while.body, label %while.end, !dbg !6017

while.body:                                       ; preds = %while.cond
  %28 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6022
  %size41 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0, !dbg !6025
  %29 = load i64, i64* %size41, align 8, !dbg !6025
  %30 = load i32, i32* %pos, align 4, !dbg !6026
  %conv42 = sext i32 %30 to i64, !dbg !6026
  %sub = sub i64 %29, %conv42, !dbg !6027
  %31 = load i8, i8* %wlen, align 1, !dbg !6028
  %conv43 = zext i8 %31 to i64, !dbg !6028
  %cmp44 = icmp ugt i64 %sub, %conv43, !dbg !6029
  br i1 %cmp44, label %if.then46, label %if.else48, !dbg !6030

if.then46:                                        ; preds = %while.body
  %32 = load i8, i8* %wlen, align 1, !dbg !6031
  %conv47 = zext i8 %32 to i32, !dbg !6031
  store i32 %conv47, i32* %cnt, align 4, !dbg !6032
  br label %if.end53, !dbg !6033

if.else48:                                        ; preds = %while.body
  %33 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6034
  %size49 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0, !dbg !6035
  %34 = load i64, i64* %size49, align 8, !dbg !6035
  %35 = load i32, i32* %pos, align 4, !dbg !6036
  %conv50 = sext i32 %35 to i64, !dbg !6036
  %sub51 = sub i64 %34, %conv50, !dbg !6037
  %conv52 = trunc i64 %sub51 to i32, !dbg !6034
  store i32 %conv52, i32* %cnt, align 4, !dbg !6038
  br label %if.end53

if.end53:                                         ; preds = %if.else48, %if.then46
  %36 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6039
  %37 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6040
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1, !dbg !6041
  %38 = load i8*, i8** %data, align 8, !dbg !6041
  %39 = load i32, i32* %pos, align 4, !dbg !6042
  %idxprom = sext i32 %39 to i64, !dbg !6040
  %arrayidx = getelementptr i8, i8* %38, i64 %idxprom, !dbg !6040
  %40 = load i32, i32* %cnt, align 4, !dbg !6043
  %conv54 = trunc i32 %40 to i16, !dbg !6043
  %call55 = call i32 @tda10048_writeregbulk(%struct.tda10048_state* %36, i8 zeroext 14, i8* %arrayidx, i16 zeroext %conv54) #9, !dbg !6044
  %41 = load i32, i32* %cnt, align 4, !dbg !6045
  %42 = load i32, i32* %pos, align 4, !dbg !6046
  %add = add i32 %42, %41, !dbg !6046
  store i32 %add, i32* %pos, align 4, !dbg !6046
  br label %while.cond, !dbg !6017, !llvm.loop !6047

while.end:                                        ; preds = %while.cond
  store i32 -5, i32* %ret, align 4, !dbg !6049
  store i32 0, i32* %cnt, align 4, !dbg !6050
  br label %for.cond, !dbg !6052

for.cond:                                         ; preds = %for.inc, %while.end
  %43 = load i32, i32* %cnt, align 4, !dbg !6053
  %cmp56 = icmp slt i32 %43, 250, !dbg !6055
  br i1 %cmp56, label %for.body, label %for.end, !dbg !6056

for.body:                                         ; preds = %for.cond
  call void @msleep(i32 10) #9, !dbg !6057
  %44 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6059
  %call58 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %44, i8 zeroext 26) #9, !dbg !6061
  %conv59 = zext i8 %call58 to i32, !dbg !6061
  %and60 = and i32 %conv59, 64, !dbg !6062
  %tobool61 = icmp ne i32 %and60, 0, !dbg !6062
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !6063

if.then62:                                        ; preds = %for.body
  store i32 0, i32* %ret, align 4, !dbg !6064
  br label %for.end, !dbg !6066

if.end63:                                         ; preds = %for.body
  br label %for.inc, !dbg !6067

for.inc:                                          ; preds = %if.end63
  %45 = load i32, i32* %cnt, align 4, !dbg !6068
  %add64 = add i32 %45, 10, !dbg !6068
  store i32 %add64, i32* %cnt, align 4, !dbg !6068
  br label %for.cond, !dbg !6069, !llvm.loop !6070

for.end:                                          ; preds = %if.then62, %for.cond
  br label %if.end65

if.end65:                                         ; preds = %for.end, %if.then14
  %46 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6072
  call void @release_firmware(%struct.firmware* %46) #9, !dbg !6073
  %47 = load i32, i32* %ret, align 4, !dbg !6074
  %cmp66 = icmp eq i32 %47, 0, !dbg !6076
  br i1 %cmp66, label %if.then68, label %if.else70, !dbg !6077

if.then68:                                        ; preds = %if.end65
  %call69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10048_firmware_upload, i64 0, i64 0)) #8, !dbg !6078
  %48 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6080
  %fwloaded = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %48, i32 0, i32 3, !dbg !6081
  store i32 1, i32* %fwloaded, align 8, !dbg !6082
  br label %if.end72, !dbg !6083

if.else70:                                        ; preds = %if.end65
  %call71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tda10048_firmware_upload, i64 0, i64 0)) #8, !dbg !6084
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.then68
  %49 = load i32, i32* %ret, align 4, !dbg !6085
  store i32 %49, i32* %retval, align 4, !dbg !6086
  br label %return, !dbg !6086

return:                                           ; preds = %if.end72, %if.then7
  %50 = load i32, i32* %retval, align 4, !dbg !6087
  ret i32 %50, !dbg !6087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_output_mode(%struct.dvb_frontend* %fe, i32 %serial) #0 !dbg !6088 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %serial.addr = alloca i32, align 4
  %state = alloca %struct.tda10048_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  store i32 %serial, i32* %serial.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %serial.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6095
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6096
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6096
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !6095
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !6094
  br label %do.body, !dbg !6097

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6098
  %cmp = icmp uge i32 %3, 1, !dbg !6098
  br i1 %cmp, label %if.then, label %if.end, !dbg !6101

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %serial.addr, align 4, !dbg !6098
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda10048_output_mode, i64 0, i64 0), i32 %4) #8, !dbg !6098
  br label %if.end, !dbg !6098

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6101

do.end:                                           ; preds = %if.end
  %5 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6102
  %call1 = call i32 @tda10048_writereg(%struct.tda10048_state* %5, i8 zeroext 68, i8 zeroext 33) #9, !dbg !6103
  %6 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6104
  %call2 = call i32 @tda10048_writereg(%struct.tda10048_state* %6, i8 zeroext 69, i8 zeroext 0) #9, !dbg !6105
  %7 = load i32, i32* %serial.addr, align 4, !dbg !6106
  %tobool = icmp ne i32 %7, 0, !dbg !6106
  br i1 %tobool, label %if.then3, label %if.else, !dbg !6108

if.then3:                                         ; preds = %do.end
  %8 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6109
  %call4 = call i32 @tda10048_writereg(%struct.tda10048_state* %8, i8 zeroext 78, i8 zeroext -96) #9, !dbg !6111
  %9 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6112
  %call5 = call i32 @tda10048_writereg(%struct.tda10048_state* %9, i8 zeroext -32, i8 zeroext -64) #9, !dbg !6113
  br label %if.end8, !dbg !6114

if.else:                                          ; preds = %do.end
  %10 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6115
  %call6 = call i32 @tda10048_writereg(%struct.tda10048_state* %10, i8 zeroext 78, i8 zeroext 0) #9, !dbg !6117
  %11 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6118
  %call7 = call i32 @tda10048_writereg(%struct.tda10048_state* %11, i8 zeroext -32, i8 zeroext 1) #9, !dbg !6119
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  ret i32 0, !dbg !6120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_set_inversion(%struct.dvb_frontend* %fe, i32 %inversion) #0 !dbg !6121 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %inversion.addr = alloca i32, align 4
  %state = alloca %struct.tda10048_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  store i32 %inversion, i32* %inversion.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %inversion.addr, metadata !6124, metadata !DIExpression()), !dbg !6125
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state, metadata !6126, metadata !DIExpression()), !dbg !6127
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6128
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6129
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6129
  %2 = bitcast i8* %1 to %struct.tda10048_state*, !dbg !6128
  store %struct.tda10048_state* %2, %struct.tda10048_state** %state, align 8, !dbg !6127
  br label %do.body, !dbg !6130

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6131
  %cmp = icmp uge i32 %3, 1, !dbg !6131
  br i1 %cmp, label %if.then, label %if.end, !dbg !6134

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %inversion.addr, align 4, !dbg !6131
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda10048_set_inversion, i64 0, i64 0), i32 %4) #8, !dbg !6131
  br label %if.end, !dbg !6131

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6134

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %inversion.addr, align 4, !dbg !6135
  %cmp1 = icmp eq i32 %5, 1, !dbg !6137
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !6138

if.then2:                                         ; preds = %do.end
  %6 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6139
  %7 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6140
  %call3 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %7, i8 zeroext 96) #9, !dbg !6141
  %conv = zext i8 %call3 to i32, !dbg !6141
  %or = or i32 %conv, 32, !dbg !6142
  %conv4 = trunc i32 %or to i8, !dbg !6141
  %call5 = call i32 @tda10048_writereg(%struct.tda10048_state* %6, i8 zeroext 96, i8 zeroext %conv4) #9, !dbg !6143
  br label %if.end10, !dbg !6143

if.else:                                          ; preds = %do.end
  %8 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6144
  %9 = load %struct.tda10048_state*, %struct.tda10048_state** %state, align 8, !dbg !6145
  %call6 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %9, i8 zeroext 96) #9, !dbg !6146
  %conv7 = zext i8 %call6 to i32, !dbg !6146
  %and = and i32 %conv7, 223, !dbg !6147
  %conv8 = trunc i32 %and to i8, !dbg !6146
  %call9 = call i32 @tda10048_writereg(%struct.tda10048_state* %8, i8 zeroext 96, i8 zeroext %conv8) #9, !dbg !6148
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  ret i32 0, !dbg !6149
}

; Function Attrs: noredzone
declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_writeregbulk(%struct.tda10048_state* %state, i8 zeroext %reg, i8* %data, i16 zeroext %len) #0 !dbg !6150 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4602, metadata !DIExpression()), !dbg !6153
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4612, metadata !DIExpression()), !dbg !6156
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4614, metadata !DIExpression()), !dbg !6157
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4616, metadata !DIExpression()), !dbg !6158
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4618, metadata !DIExpression()), !dbg !6159
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4624, metadata !DIExpression()), !dbg !6161
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4630, metadata !DIExpression()), !dbg !6163
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4639, metadata !DIExpression()), !dbg !6166
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4641, metadata !DIExpression()), !dbg !6167
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4643, metadata !DIExpression()), !dbg !6168
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4645, metadata !DIExpression()), !dbg !6169
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4647, metadata !DIExpression()), !dbg !6170
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4649, metadata !DIExpression()), !dbg !6171
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4651, metadata !DIExpression()), !dbg !6172
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4653, metadata !DIExpression()), !dbg !6173
  %state.addr = alloca %struct.tda10048_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i16, align 2
  %config = alloca %struct.tda10048_config*, align 8
  %ret = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %buf = alloca i8*, align 8
  store %struct.tda10048_state* %state, %struct.tda10048_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state.addr, metadata !6174, metadata !DIExpression()), !dbg !6175
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6176, metadata !DIExpression()), !dbg !6177
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6178, metadata !DIExpression()), !dbg !6179
  store i16 %len, i16* %len.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %len.addr, metadata !6180, metadata !DIExpression()), !dbg !6181
  call void @llvm.dbg.declare(metadata %struct.tda10048_config** %config, metadata !6182, metadata !DIExpression()), !dbg !6183
  %0 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !6184
  %config1 = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %0, i32 0, i32 1, !dbg !6185
  store %struct.tda10048_config* %config1, %struct.tda10048_config** %config, align 8, !dbg !6183
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6186, metadata !DIExpression()), !dbg !6187
  store i32 -121, i32* %ret, align 4, !dbg !6187
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6188, metadata !DIExpression()), !dbg !6189
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !6190, metadata !DIExpression()), !dbg !6191
  br label %do.body, !dbg !6192

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !6193
  %cmp = icmp uge i32 %1, 2, !dbg !6193
  br i1 %cmp, label %if.then, label %if.end, !dbg !6196

if.then:                                          ; preds = %do.body
  %2 = load i8, i8* %reg.addr, align 1, !dbg !6193
  %conv = zext i8 %2 to i32, !dbg !6193
  %3 = load i16, i16* %len.addr, align 2, !dbg !6193
  %conv2 = zext i16 %3 to i32, !dbg !6193
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda10048_writeregbulk, i64 0, i64 0), i32 %conv, i32 %conv2) #8, !dbg !6193
  br label %if.end, !dbg !6193

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6196

do.end:                                           ; preds = %if.end
  %4 = load i16, i16* %len.addr, align 2, !dbg !6197
  %conv3 = zext i16 %4 to i32, !dbg !6197
  %add = add i32 %conv3, 1, !dbg !6198
  %conv4 = sext i32 %add to i64, !dbg !6197
  store i64 %conv4, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6199
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #10, !dbg !6200
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !6201

if.then.i:                                        ; preds = %do.end
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !6202
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !6203
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6204

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !6205
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !6206
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !6207
  %call.i.i = call i32 @get_order(i64 %10) #11, !dbg !6208
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6170
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !6209
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6210
  %13 = load i32, i32* %order.i.i, align 4, !dbg !6211
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6212
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6213
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6214
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #12, !dbg !6215
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6215
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6215
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6215
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !6215
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6216
  br label %kmalloc.exit, !dbg !6216

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !6217
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6218
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !6218
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6219

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6220
  br label %kmalloc_index.exit.i, !dbg !6220

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6221
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !6222
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6223

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6224
  br label %kmalloc_index.exit.i, !dbg !6224

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6225
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !6226
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6227

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6228
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !6229
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6230

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6231
  br label %kmalloc_index.exit.i, !dbg !6231

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6232
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !6233
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6234

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6235
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !6236
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6237

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6238
  br label %kmalloc_index.exit.i, !dbg !6238

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6239
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !6240
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6241

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6242
  br label %kmalloc_index.exit.i, !dbg !6242

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6243
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !6244
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6245

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6246
  br label %kmalloc_index.exit.i, !dbg !6246

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6247
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !6248
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6249

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6250
  br label %kmalloc_index.exit.i, !dbg !6250

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6251
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !6252
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6253

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6254
  br label %kmalloc_index.exit.i, !dbg !6254

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6255
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !6256
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6257

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6258
  br label %kmalloc_index.exit.i, !dbg !6258

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6259
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !6260
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6261

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6262
  br label %kmalloc_index.exit.i, !dbg !6262

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6263
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !6264
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6265

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6266
  br label %kmalloc_index.exit.i, !dbg !6266

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6267
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !6268
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6269

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6270
  br label %kmalloc_index.exit.i, !dbg !6270

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6271
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !6272
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6273

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6274
  br label %kmalloc_index.exit.i, !dbg !6274

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6275
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !6276
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6277

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6278
  br label %kmalloc_index.exit.i, !dbg !6278

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6279
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !6280
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6281

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6282
  br label %kmalloc_index.exit.i, !dbg !6282

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6283
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !6284
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6285

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6286
  br label %kmalloc_index.exit.i, !dbg !6286

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6287
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !6288
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6289

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6290
  br label %kmalloc_index.exit.i, !dbg !6290

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6291
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !6292
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6293

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6294
  br label %kmalloc_index.exit.i, !dbg !6294

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6295
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !6296
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6297

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6298
  br label %kmalloc_index.exit.i, !dbg !6298

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6299
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !6300
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6301

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6302
  br label %kmalloc_index.exit.i, !dbg !6302

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6303
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !6304
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6305

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6306
  br label %kmalloc_index.exit.i, !dbg !6306

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6307
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !6308
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6309

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6310
  br label %kmalloc_index.exit.i, !dbg !6310

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6311
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !6312
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6313

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6314
  br label %kmalloc_index.exit.i, !dbg !6314

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6315
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !6316
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6317

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6318
  br label %kmalloc_index.exit.i, !dbg !6318

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6319
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !6320
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6321

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6322
  br label %kmalloc_index.exit.i, !dbg !6322

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6323
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !6324
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6325

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6326
  br label %kmalloc_index.exit.i, !dbg !6326

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6327
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !6328
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6329

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6330
  br label %kmalloc_index.exit.i, !dbg !6330

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6331
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !6332
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6333

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6334
  br label %kmalloc_index.exit.i, !dbg !6334

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !6335, !srcloc !4829
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !6336, !srcloc !4833
  unreachable, !dbg !6337

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !6338
  store i32 %48, i32* %index.i, align 4, !dbg !6339
  %49 = load i32, i32* %index.i, align 4, !dbg !6340
  %tobool.i = icmp ne i32 %49, 0, !dbg !6340
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6341

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6342
  br label %kmalloc.exit, !dbg !6342

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !6343
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6344
  %and.i.i = and i32 %51, 17, !dbg !6344
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6344
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6344
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6344
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6344
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6345

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6346
  br label %kmalloc_type.exit.i, !dbg !6346

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6347
  %and2.i.i = and i32 %52, 1, !dbg !6348
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6347
  %53 = zext i1 %tobool3.i.i to i64, !dbg !6347
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6347
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6349
  br label %kmalloc_type.exit.i, !dbg !6349

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !6350
  %idxprom.i = zext i32 %54 to i64, !dbg !6351
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6351
  %55 = load i32, i32* %index.i, align 4, !dbg !6352
  %idxprom6.i = zext i32 %55 to i64, !dbg !6351
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6351
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6351
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !6353
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !6354
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6355
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6356
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #12, !dbg !6357
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6357
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6357
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6357
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !6357
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6158
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6358
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6359
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6360
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6361
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #12, !dbg !6362
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6363
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !6364
  store i8* %65, i8** %retval.i, align 8, !dbg !6365
  br label %kmalloc.exit, !dbg !6365

if.end9.i:                                        ; preds = %do.end
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !6366
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !6367
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #12, !dbg !6368
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6368
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6368
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6368
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !6368
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6369
  br label %kmalloc.exit, !dbg !6369

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !6370
  store i8* %68, i8** %buf, align 8, !dbg !6371
  %69 = load i8*, i8** %buf, align 8, !dbg !6372
  %cmp6 = icmp eq i8* %69, null, !dbg !6374
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !6375

if.then8:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %ret, align 4, !dbg !6376
  br label %error, !dbg !6378

if.end9:                                          ; preds = %kmalloc.exit
  %70 = load i8, i8* %reg.addr, align 1, !dbg !6379
  %71 = load i8*, i8** %buf, align 8, !dbg !6380
  store i8 %70, i8* %71, align 1, !dbg !6381
  %72 = load i8*, i8** %buf, align 8, !dbg !6382
  %add.ptr = getelementptr i8, i8* %72, i64 1, !dbg !6383
  %73 = load i8*, i8** %data.addr, align 8, !dbg !6384
  %74 = load i16, i16* %len.addr, align 2, !dbg !6385
  %conv10 = zext i16 %74 to i64, !dbg !6385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %73, i64 %conv10, i1 false), !dbg !6386
  %75 = load %struct.tda10048_config*, %struct.tda10048_config** %config, align 8, !dbg !6387
  %demod_address = getelementptr inbounds %struct.tda10048_config, %struct.tda10048_config* %75, i32 0, i32 0, !dbg !6388
  %76 = load i8, i8* %demod_address, align 2, !dbg !6388
  %conv11 = zext i8 %76 to i16, !dbg !6387
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6389
  store i16 %conv11, i16* %addr, align 8, !dbg !6390
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6391
  store i16 0, i16* %flags, align 2, !dbg !6392
  %77 = load i8*, i8** %buf, align 8, !dbg !6393
  %buf12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6394
  store i8* %77, i8** %buf12, align 8, !dbg !6395
  %78 = load i16, i16* %len.addr, align 2, !dbg !6396
  %conv13 = zext i16 %78 to i32, !dbg !6396
  %add14 = add i32 %conv13, 1, !dbg !6397
  %conv15 = trunc i32 %add14 to i16, !dbg !6396
  %len16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6398
  store i16 %conv15, i16* %len16, align 4, !dbg !6399
  br label %do.body17, !dbg !6400

do.body17:                                        ; preds = %if.end9
  %79 = load i32, i32* @debug, align 4, !dbg !6401
  %cmp18 = icmp uge i32 %79, 2, !dbg !6401
  br i1 %cmp18, label %if.then20, label %if.end24, !dbg !6404

if.then20:                                        ; preds = %do.body17
  %len21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6401
  %80 = load i16, i16* %len21, align 4, !dbg !6401
  %conv22 = zext i16 %80 to i32, !dbg !6401
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda10048_writeregbulk, i64 0, i64 0), i32 %conv22) #8, !dbg !6401
  br label %if.end24, !dbg !6401

if.end24:                                         ; preds = %if.then20, %do.body17
  br label %do.end25, !dbg !6404

do.end25:                                         ; preds = %if.end24
  %81 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !6405
  %i2c = getelementptr inbounds %struct.tda10048_state, %struct.tda10048_state* %81, i32 0, i32 0, !dbg !6406
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6406
  %call26 = call i32 @i2c_transfer(%struct.i2c_adapter* %82, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6407
  store i32 %call26, i32* %ret, align 4, !dbg !6408
  %83 = load i32, i32* %ret, align 4, !dbg !6409
  %cmp27 = icmp ne i32 %83, 1, !dbg !6411
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !6412

if.then29:                                        ; preds = %do.end25
  %84 = load i32, i32* %ret, align 4, !dbg !6413
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda10048_writeregbulk, i64 0, i64 0), i32 %84) #8, !dbg !6415
  store i32 -121, i32* %ret, align 4, !dbg !6416
  br label %if.end31, !dbg !6417

if.end31:                                         ; preds = %if.then29, %do.end25
  br label %error, !dbg !6418

error:                                            ; preds = %if.end31, %if.then8
  call void @llvm.dbg.label(metadata !6419), !dbg !6420
  %85 = load i8*, i8** %buf, align 8, !dbg !6421
  call void @kfree(i8* %85) #9, !dbg !6422
  %86 = load i32, i32* %ret, align 4, !dbg !6423
  ret i32 %86, !dbg !6424
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #4

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10048_get_tps(%struct.tda10048_state* %state, %struct.dtv_frontend_properties* %p) #0 !dbg !6425 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda10048_state*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %val = alloca i8, align 1
  store %struct.tda10048_state* %state, %struct.tda10048_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10048_state** %state.addr, metadata !6428, metadata !DIExpression()), !dbg !6429
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !6430, metadata !DIExpression()), !dbg !6431
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6432, metadata !DIExpression()), !dbg !6433
  %0 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !6434
  %call = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %0, i8 zeroext 24) #9, !dbg !6436
  %conv = zext i8 %call to i32, !dbg !6436
  %and = and i32 %conv, 1, !dbg !6437
  %tobool = icmp ne i32 %and, 0, !dbg !6437
  br i1 %tobool, label %if.end, label %if.then, !dbg !6438

if.then:                                          ; preds = %entry
  store i32 -11, i32* %retval, align 4, !dbg !6439
  br label %return, !dbg !6439

if.end:                                           ; preds = %entry
  %1 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !6440
  %call1 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %1, i8 zeroext 21) #9, !dbg !6441
  store i8 %call1, i8* %val, align 1, !dbg !6442
  %2 = load i8, i8* %val, align 1, !dbg !6443
  %conv2 = zext i8 %2 to i32, !dbg !6443
  %and3 = and i32 %conv2, 96, !dbg !6444
  %shr = ashr i32 %and3, 5, !dbg !6445
  switch i32 %shr, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ], !dbg !6446

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6447
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 1, !dbg !6449
  store i32 0, i32* %modulation, align 4, !dbg !6450
  br label %sw.epilog, !dbg !6451

sw.bb4:                                           ; preds = %if.end
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6452
  %modulation5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 1, !dbg !6453
  store i32 1, i32* %modulation5, align 4, !dbg !6454
  br label %sw.epilog, !dbg !6455

sw.bb6:                                           ; preds = %if.end
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6456
  %modulation7 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 1, !dbg !6457
  store i32 3, i32* %modulation7, align 4, !dbg !6458
  br label %sw.epilog, !dbg !6459

sw.epilog:                                        ; preds = %if.end, %sw.bb6, %sw.bb4, %sw.bb
  %6 = load i8, i8* %val, align 1, !dbg !6460
  %conv8 = zext i8 %6 to i32, !dbg !6460
  %and9 = and i32 %conv8, 24, !dbg !6461
  %shr10 = ashr i32 %and9, 3, !dbg !6462
  switch i32 %shr10, label %sw.epilog18 [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb12
    i32 2, label %sw.bb14
    i32 3, label %sw.bb16
  ], !dbg !6463

sw.bb11:                                          ; preds = %sw.epilog
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6464
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 9, !dbg !6466
  store i32 0, i32* %hierarchy, align 4, !dbg !6467
  br label %sw.epilog18, !dbg !6468

sw.bb12:                                          ; preds = %sw.epilog
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6469
  %hierarchy13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 9, !dbg !6470
  store i32 1, i32* %hierarchy13, align 4, !dbg !6471
  br label %sw.epilog18, !dbg !6472

sw.bb14:                                          ; preds = %sw.epilog
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6473
  %hierarchy15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 9, !dbg !6474
  store i32 2, i32* %hierarchy15, align 4, !dbg !6475
  br label %sw.epilog18, !dbg !6476

sw.bb16:                                          ; preds = %sw.epilog
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6477
  %hierarchy17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 9, !dbg !6478
  store i32 3, i32* %hierarchy17, align 4, !dbg !6479
  br label %sw.epilog18, !dbg !6480

sw.epilog18:                                      ; preds = %sw.epilog, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb11
  %11 = load i8, i8* %val, align 1, !dbg !6481
  %conv19 = zext i8 %11 to i32, !dbg !6481
  %and20 = and i32 %conv19, 7, !dbg !6482
  switch i32 %and20, label %sw.epilog30 [
    i32 0, label %sw.bb21
    i32 1, label %sw.bb22
    i32 2, label %sw.bb24
    i32 3, label %sw.bb26
    i32 4, label %sw.bb28
  ], !dbg !6483

sw.bb21:                                          ; preds = %sw.epilog18
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6484
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 11, !dbg !6486
  store i32 1, i32* %code_rate_HP, align 4, !dbg !6487
  br label %sw.epilog30, !dbg !6488

sw.bb22:                                          ; preds = %sw.epilog18
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6489
  %code_rate_HP23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 11, !dbg !6490
  store i32 2, i32* %code_rate_HP23, align 4, !dbg !6491
  br label %sw.epilog30, !dbg !6492

sw.bb24:                                          ; preds = %sw.epilog18
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6493
  %code_rate_HP25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 11, !dbg !6494
  store i32 3, i32* %code_rate_HP25, align 4, !dbg !6495
  br label %sw.epilog30, !dbg !6496

sw.bb26:                                          ; preds = %sw.epilog18
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6497
  %code_rate_HP27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 11, !dbg !6498
  store i32 5, i32* %code_rate_HP27, align 4, !dbg !6499
  br label %sw.epilog30, !dbg !6500

sw.bb28:                                          ; preds = %sw.epilog18
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6501
  %code_rate_HP29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 11, !dbg !6502
  store i32 7, i32* %code_rate_HP29, align 4, !dbg !6503
  br label %sw.epilog30, !dbg !6504

sw.epilog30:                                      ; preds = %sw.epilog18, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb21
  %17 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !6505
  %call31 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %17, i8 zeroext 22) #9, !dbg !6506
  store i8 %call31, i8* %val, align 1, !dbg !6507
  %18 = load i8, i8* %val, align 1, !dbg !6508
  %conv32 = zext i8 %18 to i32, !dbg !6508
  %and33 = and i32 %conv32, 7, !dbg !6509
  switch i32 %and33, label %sw.epilog43 [
    i32 0, label %sw.bb34
    i32 1, label %sw.bb35
    i32 2, label %sw.bb37
    i32 3, label %sw.bb39
    i32 4, label %sw.bb41
  ], !dbg !6510

sw.bb34:                                          ; preds = %sw.epilog30
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6511
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 12, !dbg !6513
  store i32 1, i32* %code_rate_LP, align 4, !dbg !6514
  br label %sw.epilog43, !dbg !6515

sw.bb35:                                          ; preds = %sw.epilog30
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6516
  %code_rate_LP36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 12, !dbg !6517
  store i32 2, i32* %code_rate_LP36, align 4, !dbg !6518
  br label %sw.epilog43, !dbg !6519

sw.bb37:                                          ; preds = %sw.epilog30
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6520
  %code_rate_LP38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 12, !dbg !6521
  store i32 3, i32* %code_rate_LP38, align 4, !dbg !6522
  br label %sw.epilog43, !dbg !6523

sw.bb39:                                          ; preds = %sw.epilog30
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6524
  %code_rate_LP40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 12, !dbg !6525
  store i32 5, i32* %code_rate_LP40, align 4, !dbg !6526
  br label %sw.epilog43, !dbg !6527

sw.bb41:                                          ; preds = %sw.epilog30
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6528
  %code_rate_LP42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 12, !dbg !6529
  store i32 7, i32* %code_rate_LP42, align 4, !dbg !6530
  br label %sw.epilog43, !dbg !6531

sw.epilog43:                                      ; preds = %sw.epilog30, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb34
  %24 = load %struct.tda10048_state*, %struct.tda10048_state** %state.addr, align 8, !dbg !6532
  %call44 = call zeroext i8 @tda10048_readreg(%struct.tda10048_state* %24, i8 zeroext 20) #9, !dbg !6533
  store i8 %call44, i8* %val, align 1, !dbg !6534
  %25 = load i8, i8* %val, align 1, !dbg !6535
  %conv45 = zext i8 %25 to i32, !dbg !6535
  %and46 = and i32 %conv45, 12, !dbg !6536
  %shr47 = ashr i32 %and46, 2, !dbg !6537
  switch i32 %shr47, label %sw.epilog55 [
    i32 0, label %sw.bb48
    i32 1, label %sw.bb49
    i32 2, label %sw.bb51
    i32 3, label %sw.bb53
  ], !dbg !6538

sw.bb48:                                          ; preds = %sw.epilog43
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6539
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 8, !dbg !6541
  store i32 0, i32* %guard_interval, align 4, !dbg !6542
  br label %sw.epilog55, !dbg !6543

sw.bb49:                                          ; preds = %sw.epilog43
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6544
  %guard_interval50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 8, !dbg !6545
  store i32 1, i32* %guard_interval50, align 4, !dbg !6546
  br label %sw.epilog55, !dbg !6547

sw.bb51:                                          ; preds = %sw.epilog43
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6548
  %guard_interval52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 8, !dbg !6549
  store i32 2, i32* %guard_interval52, align 4, !dbg !6550
  br label %sw.epilog55, !dbg !6551

sw.bb53:                                          ; preds = %sw.epilog43
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6552
  %guard_interval54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 8, !dbg !6553
  store i32 3, i32* %guard_interval54, align 4, !dbg !6554
  br label %sw.epilog55, !dbg !6555

sw.epilog55:                                      ; preds = %sw.epilog43, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb48
  %30 = load i8, i8* %val, align 1, !dbg !6556
  %conv56 = zext i8 %30 to i32, !dbg !6556
  %and57 = and i32 %conv56, 3, !dbg !6557
  switch i32 %and57, label %sw.epilog61 [
    i32 0, label %sw.bb58
    i32 1, label %sw.bb59
  ], !dbg !6558

sw.bb58:                                          ; preds = %sw.epilog55
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6559
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 6, !dbg !6561
  store i32 0, i32* %transmission_mode, align 4, !dbg !6562
  br label %sw.epilog61, !dbg !6563

sw.bb59:                                          ; preds = %sw.epilog55
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6564
  %transmission_mode60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 6, !dbg !6565
  store i32 1, i32* %transmission_mode60, align 4, !dbg !6566
  br label %sw.epilog61, !dbg !6567

sw.epilog61:                                      ; preds = %sw.epilog55, %sw.bb59, %sw.bb58
  store i32 0, i32* %retval, align 4, !dbg !6568
  br label %return, !dbg !6568

return:                                           ; preds = %sw.epilog61, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !6569
  ret i32 %33, !dbg !6569
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64(i64 %dividend, i32 %divisor) #0 !dbg !6570 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6574, metadata !DIExpression()), !dbg !6575
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6576, metadata !DIExpression()), !dbg !6577
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !6578, metadata !DIExpression()), !dbg !6579
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6580
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6581
  %call = call i64 @div_u64_rem(i64 %0, i32 %1, i32* %remainder) #9, !dbg !6582
  ret i64 %call, !dbg !6583
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #0 !dbg !6584 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !6587, metadata !DIExpression()), !dbg !6588
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !6589, metadata !DIExpression()), !dbg !6590
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !6591, metadata !DIExpression()), !dbg !6592
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !6593
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !6594
  %conv = zext i32 %1 to i64, !dbg !6594
  %rem = urem i64 %0, %conv, !dbg !6595
  %conv1 = trunc i64 %rem to i32, !dbg !6593
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !6596
  store i32 %conv1, i32* %2, align 4, !dbg !6597
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !6598
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !6599
  %conv2 = zext i32 %4 to i64, !dbg !6599
  %div = udiv i64 %3, %conv2, !dbg !6600
  ret i64 %div, !dbg !6601
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
!llvm.module.flags = !{!4327, !4328, !4329, !4330}
!llvm.ident = !{!4331}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 120, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !306, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/tda10048.c", directory: "/home/lizy2001/genbc/linux")
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
!290 = !{!291, !293, !294, !295, !301, !304}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !292, line: 148, baseType: !7)
!292 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!294 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !292, line: 107, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !297, line: 23, baseType: !298)
!297 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !299, line: 31, baseType: !300)
!299 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !297, line: 17, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !299, line: 21, baseType: !303)
!303 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !297, line: 21, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !299, line: 27, baseType: !7)
!306 = !{!307, !373, !378, !383, !388, !390, !395, !0, !400, !409, !4301, !4310, !4313, !4322}
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 1170, type: !309, isLocal: true, isDefinition: true, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !311, line: 69, size: 320, elements: !312)
!311 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!312 = !{!313, !317, !321, !341, !346, !350, !351}
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
!325 = !{!326, !327, !332, !337}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !311, line: 49, baseType: !7, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !324, file: !311, line: 51, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!294, !314, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !324, file: !311, line: 53, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!294, !336, !331}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !324, file: !311, line: 55, baseType: !338, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !293}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !310, file: !311, line: 73, baseType: !342, size: 16, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !297, line: 19, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !299, line: 24, baseType: !345)
!345 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !310, file: !311, line: 74, baseType: !347, size: 8, offset: 208)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !297, line: 16, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !299, line: 20, baseType: !349)
!349 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !311, line: 75, baseType: !301, size: 8, offset: 216)
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !311, line: 76, baseType: !352, size: 64, offset: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !310, file: !311, line: 76, size: 64, elements: !353)
!353 = !{!354, !355, !362}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !352, file: !311, line: 77, baseType: !293, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !352, file: !311, line: 78, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !311, line: 86, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !358, file: !311, line: 87, baseType: !7, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !358, file: !311, line: 88, baseType: !336, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !352, file: !311, line: 79, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !311, line: 92, size: 256, elements: !366)
!366 = !{!367, !368, !369, !371, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !365, file: !311, line: 94, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !365, file: !311, line: 95, baseType: !7, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !365, file: !311, line: 96, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !365, file: !311, line: 97, baseType: !322, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !365, file: !311, line: 98, baseType: !293, size: 64, offset: 192)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 1170, type: !375, isLocal: true, isDefinition: true, align: 8)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 224, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 28)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 1171, type: !380, isLocal: true, isDefinition: true, align: 8)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 400, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 50)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 1173, type: !385, isLocal: true, isDefinition: true, align: 8)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 488, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 61)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 1174, type: !375, isLocal: true, isDefinition: true, align: 8)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 1175, type: !392, isLocal: true, isDefinition: true, align: 8)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 408, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 51)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 1175, type: !397, isLocal: true, isDefinition: true, align: 8)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 168, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 21)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "pll_tab", scope: !2, file: !3, line: 197, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 576, elements: !407)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pll_tab", file: !3, line: 194, size: 64, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "clk_freq_khz", scope: !403, file: !3, line: 195, baseType: !304, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "if_freq_khz", scope: !403, file: !3, line: 196, baseType: !304, size: 32, offset: 32)
!407 = !{!408}
!408 = !DISubrange(count: 9)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "tda10048_ops", scope: !2, file: !3, line: 1143, type: !411, isLocal: true, isDefinition: true)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !413)
!413 = !{!414, !429, !433, !4124, !4125, !4126, !4130, !4131, !4137, !4142, !4146, !4147, !4157, !4162, !4166, !4170, !4175, !4176, !4177, !4178, !4188, !4199, !4203, !4207, !4211, !4215, !4219, !4223, !4224, !4225, !4229, !4283}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !412, file: !51, line: 436, baseType: !415, size: 1280)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !416)
!416 = !{!417, !421, !422, !423, !424, !425, !426, !427, !428}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !415, file: !51, line: 339, baseType: !418, size: 1024)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 1024, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !415, file: !51, line: 340, baseType: !304, size: 32, offset: 1024)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !415, file: !51, line: 341, baseType: !304, size: 32, offset: 1056)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !415, file: !51, line: 342, baseType: !304, size: 32, offset: 1088)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !415, file: !51, line: 343, baseType: !304, size: 32, offset: 1120)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !415, file: !51, line: 344, baseType: !304, size: 32, offset: 1152)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !415, file: !51, line: 345, baseType: !304, size: 32, offset: 1184)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !415, file: !51, line: 346, baseType: !304, size: 32, offset: 1216)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !415, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !412, file: !51, line: 438, baseType: !430, size: 64, offset: 1280)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 64, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 8)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !412, file: !51, line: 440, baseType: !434, size: 64, offset: 1344)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !439)
!439 = !{!440, !454, !455, !4040, !4041, !4042, !4043, !4044, !4045, !4118, !4122, !4123}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !438, file: !51, line: 687, baseType: !441, size: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !442, line: 19, size: 32, elements: !443)
!442 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !441, file: !442, line: 20, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !446, line: 113, baseType: !447)
!446 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !446, line: 111, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !447, file: !446, line: 112, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !292, line: 168, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 166, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !451, file: !292, line: 167, baseType: !294, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !438, file: !51, line: 688, baseType: !412, size: 6016, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !438, file: !51, line: 689, baseType: !456, size: 64, offset: 6080)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !458)
!458 = !{!459, !460, !466, !467, !468, !472, !473, !4018, !4019, !4020, !4039}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !457, file: !272, line: 102, baseType: !294, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !457, file: !272, line: 103, baseType: !461, size: 128, offset: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !292, line: 178, size: 128, elements: !462)
!462 = !{!463, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !292, line: 179, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !461, file: !292, line: 179, baseType: !464, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !457, file: !272, line: 104, baseType: !461, size: 128, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !272, line: 105, baseType: !314, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !457, file: !272, line: 106, baseType: !469, size: 48, offset: 384)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 48, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 6)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !457, file: !272, line: 107, baseType: !293, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !457, file: !272, line: 109, baseType: !474, size: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !476)
!476 = !{!477, !3477, !3478, !3481, !3482, !3533, !3619, !3620, !3621, !3622, !3623, !3632, !3737, !3750, !3945, !3946, !3950, !3952, !3953, !3954, !3958, !3964, !3965, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !4006, !4007, !4008, !4011, !4014, !4015, !4016, !4017}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !475, file: !237, line: 462, baseType: !478, size: 512)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !479, line: 64, size: 512, elements: !480)
!479 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !482, !483, !485, !544, !3332, !3471, !3472, !3473, !3474, !3475, !3476}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !478, file: !479, line: 65, baseType: !314, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !478, file: !479, line: 66, baseType: !461, size: 128, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !478, file: !479, line: 67, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !478, file: !479, line: 68, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !479, line: 192, size: 704, elements: !488)
!488 = !{!489, !490, !506, !507}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !487, file: !479, line: 193, baseType: !461, size: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !487, file: !479, line: 194, baseType: !491, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !492, line: 83, baseType: !493)
!492 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !492, line: 71, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !492, line: 72, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !493, file: !492, line: 72, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !496, file: !492, line: 73, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !492, line: 20, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !499, file: !492, line: 21, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !503, line: 25, baseType: !504)
!503 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 25, elements: !505)
!505 = !{}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !487, file: !479, line: 195, baseType: !478, size: 512, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !487, file: !479, line: 196, baseType: !508, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !479, line: 156, size: 192, elements: !511)
!511 = !{!512, !517, !522}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !510, file: !479, line: 157, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!294, !486, !484}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !510, file: !479, line: 158, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!314, !486, !484}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !510, file: !479, line: 159, baseType: !523, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!294, !486, !484, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !479, line: 148, size: 20736, elements: !529)
!529 = !{!530, !534, !538, !539, !543}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !528, file: !479, line: 149, baseType: !531, size: 192)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 192, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 3)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !528, file: !479, line: 150, baseType: !535, size: 4096, offset: 192)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 4096, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !528, file: !479, line: 151, baseType: !294, size: 32, offset: 4288)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !528, file: !479, line: 152, baseType: !540, size: 16384, offset: 4320)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 16384, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 2048)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !528, file: !479, line: 153, baseType: !294, size: 32, offset: 20704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !478, file: !479, line: 69, baseType: !545, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !479, line: 138, size: 448, elements: !547)
!547 = !{!548, !552, !581, !583, !3294, !3322, !3326}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !546, file: !479, line: 139, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !484}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !546, file: !479, line: 140, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !556, line: 230, size: 128, elements: !557)
!556 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!557 = !{!558, !573}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !555, file: !556, line: 231, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !484, !567, !336}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !292, line: 60, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !564, line: 73, baseType: !565)
!564 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !564, line: 15, baseType: !566)
!566 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !556, line: 30, size: 128, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !568, file: !556, line: 31, baseType: !314, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !568, file: !556, line: 32, baseType: !572, size: 16, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !292, line: 19, baseType: !345)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !555, file: !556, line: 232, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!562, !484, !567, !314, !577}
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 55, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !564, line: 72, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !564, line: 16, baseType: !580)
!580 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !546, file: !479, line: 141, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !546, file: !479, line: 142, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !556, line: 84, size: 320, elements: !588)
!588 = !{!589, !590, !594, !3291, !3292}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !556, line: 85, baseType: !314, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !587, file: !556, line: 86, baseType: !591, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!572, !484, !567, !294}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !587, file: !556, line: 88, baseType: !595, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!572, !484, !598, !294}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !556, line: 168, size: 448, elements: !600)
!600 = !{!601, !602, !603, !604, !3286, !3287}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !599, file: !556, line: 169, baseType: !568, size: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !599, file: !556, line: 170, baseType: !577, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !599, file: !556, line: 171, baseType: !293, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !599, file: !556, line: 172, baseType: !605, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!562, !608, !484, !598, !336, !776, !577}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !610)
!610 = !{!611, !629, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3269, !3270, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !609, file: !208, line: 920, baseType: !612, size: 128)
!612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !609, file: !208, line: 917, size: 128, elements: !613)
!613 = !{!614, !620}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !612, file: !208, line: 918, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !616, line: 58, size: 64, elements: !617)
!616 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !616, line: 59, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !612, file: !208, line: 919, baseType: !621, size: 128, align: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !292, line: 216, size: 128, align: 64, elements: !622)
!622 = !{!623, !625}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !292, line: 217, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !621, file: !292, line: 218, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !624}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !609, file: !208, line: 921, baseType: !630, size: 128, offset: 128)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !631, line: 8, size: 128, elements: !632)
!631 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!632 = !{!633, !637}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !630, file: !631, line: 9, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !636, line: 18, flags: DIFlagFwdDecl)
!636 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !630, file: !631, line: 10, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !636, line: 89, size: 1536, elements: !640)
!640 = !{!641, !642, !652, !660, !661, !676, !3220, !3222, !3234, !3235, !3236, !3237, !3238, !3243, !3244, !3245}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !639, file: !636, line: 91, baseType: !7, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !639, file: !636, line: 92, baseType: !643, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !644, line: 277, baseType: !645)
!644 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !644, line: 277, size: 32, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !645, file: !644, line: 277, baseType: !648, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !644, line: 70, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !644, line: 65, size: 32, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !649, file: !644, line: 66, baseType: !7, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !639, file: !636, line: 93, baseType: !653, size: 128, offset: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !654, line: 38, size: 128, elements: !655)
!654 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!655 = !{!656, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !654, line: 39, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !653, file: !654, line: 39, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !639, file: !636, line: 94, baseType: !638, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !639, file: !636, line: 95, baseType: !662, size: 128, offset: 256)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !636, line: 47, size: 128, elements: !663)
!663 = !{!664, !673}
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !636, line: 48, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !636, line: 48, size: 64, elements: !666)
!666 = !{!667, !672}
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !636, line: 49, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !636, line: 49, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !668, file: !636, line: 50, baseType: !304, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !668, file: !636, line: 50, baseType: !304, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !665, file: !636, line: 52, baseType: !296, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !662, file: !636, line: 54, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !639, file: !636, line: 96, baseType: !677, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !679)
!679 = !{!680, !681, !682, !690, !697, !698, !843, !2914, !2915, !2916, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !3188, !3196, !3197, !3198, !3216, !3217, !3218, !3219}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !678, file: !208, line: 611, baseType: !572, size: 16)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !678, file: !208, line: 612, baseType: !345, size: 16, offset: 16)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !678, file: !208, line: 613, baseType: !683, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !684, line: 23, baseType: !685)
!684 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 21, size: 32, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !685, file: !684, line: 22, baseType: !688, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 32, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !564, line: 49, baseType: !7)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !678, file: !208, line: 614, baseType: !691, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !684, line: 28, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 26, size: 32, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !692, file: !684, line: 27, baseType: !695, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 33, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !564, line: 50, baseType: !7)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !678, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !678, file: !208, line: 622, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !702)
!702 = !{!703, !707, !717, !721, !727, !731, !737, !741, !745, !749, !753, !754, !760, !764, !790, !819, !823, !829, !834, !838, !839}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !701, file: !208, line: 1865, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!638, !677, !638, !7}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !701, file: !208, line: 1866, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!314, !638, !677, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !713, line: 10, size: 128, elements: !714)
!713 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !712, file: !713, line: 11, baseType: !338, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !712, file: !713, line: 12, baseType: !293, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !701, file: !208, line: 1867, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!294, !677, !294}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !701, file: !208, line: 1868, baseType: !722, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!725, !677, !294}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !701, file: !208, line: 1870, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!294, !638, !336, !294}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !701, file: !208, line: 1872, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!294, !677, !638, !572, !735}
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !292, line: 30, baseType: !736)
!736 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !701, file: !208, line: 1873, baseType: !738, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!294, !638, !677, !638}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !701, file: !208, line: 1874, baseType: !742, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!294, !677, !638}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !701, file: !208, line: 1875, baseType: !746, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!294, !677, !638, !314}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !701, file: !208, line: 1876, baseType: !750, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!294, !677, !638, !572}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !701, file: !208, line: 1877, baseType: !742, size: 64, offset: 640)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !701, file: !208, line: 1878, baseType: !755, size: 64, offset: 704)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!294, !677, !638, !572, !758}
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !292, line: 16, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !292, line: 13, baseType: !304)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !701, file: !208, line: 1879, baseType: !761, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!294, !677, !638, !677, !638, !7}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !701, file: !208, line: 1881, baseType: !765, size: 64, offset: 832)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!294, !638, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !779, !787, !788, !789}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !769, file: !208, line: 220, baseType: !7, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !769, file: !208, line: 221, baseType: !572, size: 16, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !769, file: !208, line: 222, baseType: !683, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !769, file: !208, line: 223, baseType: !691, size: 32, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !769, file: !208, line: 224, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !292, line: 46, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !564, line: 88, baseType: !778)
!778 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !769, file: !208, line: 225, baseType: !780, size: 128, offset: 192)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !781, line: 13, size: 128, elements: !782)
!781 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!782 = !{!783, !786}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !780, file: !781, line: 14, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !781, line: 8, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !299, line: 30, baseType: !778)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !780, file: !781, line: 15, baseType: !566, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !769, file: !208, line: 226, baseType: !780, size: 128, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !769, file: !208, line: 227, baseType: !780, size: 128, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !769, file: !208, line: 234, baseType: !608, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !701, file: !208, line: 1882, baseType: !791, size: 64, offset: 896)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!294, !794, !796, !304, !7}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !798, line: 22, size: 1152, elements: !799)
!798 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!799 = !{!800, !801, !802, !803, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !797, file: !798, line: 23, baseType: !304, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !797, file: !798, line: 24, baseType: !572, size: 16, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !797, file: !798, line: 25, baseType: !7, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !797, file: !798, line: 26, baseType: !804, size: 32, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !292, line: 104, baseType: !304)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !797, file: !798, line: 27, baseType: !296, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !797, file: !798, line: 28, baseType: !296, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !797, file: !798, line: 37, baseType: !296, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !797, file: !798, line: 38, baseType: !758, size: 32, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !797, file: !798, line: 39, baseType: !758, size: 32, offset: 352)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !797, file: !798, line: 40, baseType: !683, size: 32, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !797, file: !798, line: 41, baseType: !691, size: 32, offset: 416)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !797, file: !798, line: 42, baseType: !776, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !797, file: !798, line: 43, baseType: !780, size: 128, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !797, file: !798, line: 44, baseType: !780, size: 128, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !797, file: !798, line: 45, baseType: !780, size: 128, offset: 768)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !797, file: !798, line: 46, baseType: !780, size: 128, offset: 896)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !797, file: !798, line: 47, baseType: !296, size: 64, offset: 1024)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !797, file: !798, line: 48, baseType: !296, size: 64, offset: 1088)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !701, file: !208, line: 1883, baseType: !820, size: 64, offset: 960)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!562, !638, !336, !577}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !701, file: !208, line: 1884, baseType: !824, size: 64, offset: 1024)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!294, !677, !827, !296, !296}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !701, file: !208, line: 1886, baseType: !830, size: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!294, !677, !833, !294}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !701, file: !208, line: 1887, baseType: !835, size: 64, offset: 1152)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!294, !677, !638, !608, !7, !572}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !701, file: !208, line: 1890, baseType: !750, size: 64, offset: 1216)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !701, file: !208, line: 1891, baseType: !840, size: 64, offset: 1280)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!294, !677, !725, !294}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !678, file: !208, line: 623, baseType: !844, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852, !899, !2522, !2604, !2687, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2703, !2707, !2708, !2711, !2712, !2715, !2716, !2717, !2758, !2784, !2785, !2786, !2787, !2788, !2789, !2792, !2794, !2801, !2802, !2804, !2805, !2806, !2865, !2866, !2881, !2882, !2883, !2884, !2885, !2888, !2889, !2890, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !845, file: !208, line: 1417, baseType: !461, size: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !845, file: !208, line: 1418, baseType: !758, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !845, file: !208, line: 1419, baseType: !303, size: 8, offset: 160)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !845, file: !208, line: 1420, baseType: !580, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !845, file: !208, line: 1421, baseType: !776, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !845, file: !208, line: 1422, baseType: !853, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !855)
!855 = !{!856, !857, !858, !865, !869, !873, !877, !878, !879, !889, !892, !893, !894, !896, !897, !898}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !854, file: !208, line: 2229, baseType: !314, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !854, file: !208, line: 2230, baseType: !294, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !854, file: !208, line: 2238, baseType: !859, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!294, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !864, line: 28, flags: DIFlagFwdDecl)
!864 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!865 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !854, file: !208, line: 2239, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !854, file: !208, line: 2240, baseType: !870, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!638, !853, !294, !314, !293}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !854, file: !208, line: 2242, baseType: !874, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !844}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !854, file: !208, line: 2243, baseType: !318, size: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !854, file: !208, line: 2244, baseType: !853, size: 64, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !854, file: !208, line: 2245, baseType: !880, size: 64, offset: 512)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !292, line: 182, size: 64, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !880, file: !292, line: 183, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !292, line: 186, size: 128, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !884, file: !292, line: 187, baseType: !883, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !884, file: !292, line: 187, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !854, file: !208, line: 2247, baseType: !890, offset: 576)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !891, line: 187, elements: !505)
!891 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !854, file: !208, line: 2248, baseType: !890, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !854, file: !208, line: 2249, baseType: !890, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !854, file: !208, line: 2250, baseType: !895, offset: 576)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, elements: !532)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !854, file: !208, line: 2252, baseType: !890, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !854, file: !208, line: 2253, baseType: !890, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !854, file: !208, line: 2254, baseType: !890, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !845, file: !208, line: 1423, baseType: !900, size: 64, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !903)
!903 = !{!904, !908, !912, !913, !917, !923, !927, !928, !929, !933, !937, !938, !939, !940, !946, !951, !952, !959, !960, !961, !962, !2506, !2521}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !902, file: !208, line: 1936, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!677, !844}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !902, file: !208, line: 1937, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !677}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !902, file: !208, line: 1938, baseType: !909, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !902, file: !208, line: 1940, baseType: !914, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !677, !294}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !902, file: !208, line: 1941, baseType: !918, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!294, !677, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !902, file: !208, line: 1942, baseType: !924, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!294, !677}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !902, file: !208, line: 1943, baseType: !909, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !902, file: !208, line: 1944, baseType: !874, size: 64, offset: 448)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !902, file: !208, line: 1945, baseType: !930, size: 64, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!294, !844, !294}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !902, file: !208, line: 1946, baseType: !934, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!294, !844}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !902, file: !208, line: 1947, baseType: !934, size: 64, offset: 640)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !902, file: !208, line: 1948, baseType: !934, size: 64, offset: 704)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !902, file: !208, line: 1949, baseType: !934, size: 64, offset: 768)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !902, file: !208, line: 1950, baseType: !941, size: 64, offset: 832)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!294, !638, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !902, file: !208, line: 1951, baseType: !947, size: 64, offset: 896)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!294, !844, !950, !336}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !902, file: !208, line: 1952, baseType: !874, size: 64, offset: 960)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !902, file: !208, line: 1954, baseType: !953, size: 64, offset: 1024)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!294, !956, !638}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !958, line: 539, flags: DIFlagFwdDecl)
!958 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!959 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !902, file: !208, line: 1955, baseType: !953, size: 64, offset: 1088)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !902, file: !208, line: 1956, baseType: !953, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !902, file: !208, line: 1957, baseType: !953, size: 64, offset: 1216)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !902, file: !208, line: 1963, baseType: !963, size: 64, offset: 1280)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!294, !844, !966, !291}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !968, line: 68, size: 512, align: 128, elements: !969)
!968 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!969 = !{!970, !971, !2498, !2505}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !968, line: 69, baseType: !580, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 77, baseType: !972, size: 320, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 77, size: 320, elements: !973)
!973 = !{!974, !1155, !1160, !1188, !1196, !1202, !2490, !2497}
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !968, line: 78, baseType: !975, size: 320)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !968, line: 78, size: 320, elements: !976)
!976 = !{!977, !978, !1153, !1154}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !975, file: !968, line: 84, baseType: !461, size: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !975, file: !968, line: 86, baseType: !979, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !981)
!981 = !{!982, !983, !990, !991, !992, !1007, !1023, !1024, !1025, !1026, !1146, !1147, !1150, !1151, !1152}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !980, file: !208, line: 452, baseType: !677, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !980, file: !208, line: 453, baseType: !984, size: 128, offset: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !985, line: 292, size: 128, elements: !986)
!985 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !984, file: !985, line: 293, baseType: !491)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !984, file: !985, line: 295, baseType: !291, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !984, file: !985, line: 296, baseType: !293, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !980, file: !208, line: 454, baseType: !291, size: 32, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !980, file: !208, line: 455, baseType: !450, size: 32, offset: 224)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !980, file: !208, line: 460, baseType: !993, size: 128, offset: 256)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !994, line: 125, size: 128, elements: !995)
!994 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!995 = !{!996, !1006}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !993, file: !994, line: 126, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !994, line: 31, size: 64, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !997, file: !994, line: 32, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !994, line: 24, size: 192, align: 64, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1001, file: !994, line: 25, baseType: !580, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1001, file: !994, line: 26, baseType: !1000, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1001, file: !994, line: 27, baseType: !1000, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !993, file: !994, line: 127, baseType: !1000, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !980, file: !208, line: 461, baseType: !1008, size: 256, offset: 384)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1009, line: 35, size: 256, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1010 = !{!1011, !1019, !1020, !1022}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1008, file: !1009, line: 36, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1013, line: 13, baseType: !1014)
!1013 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !292, line: 175, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 173, size: 64, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1015, file: !292, line: 174, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !297, line: 22, baseType: !785)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1008, file: !1009, line: 42, baseType: !1012, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1008, file: !1009, line: 46, baseType: !1021, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !492, line: 29, baseType: !499)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1008, file: !1009, line: 47, baseType: !461, size: 128, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !980, file: !208, line: 462, baseType: !580, size: 64, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !980, file: !208, line: 463, baseType: !580, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !980, file: !208, line: 464, baseType: !580, size: 64, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !980, file: !208, line: 465, baseType: !1027, size: 64, offset: 832)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1030)
!1030 = !{!1031, !1035, !1039, !1043, !1047, !1051, !1057, !1063, !1067, !1072, !1076, !1080, !1084, !1110, !1114, !1120, !1121, !1122, !1126, !1131, !1135, !1142}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1029, file: !208, line: 368, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!294, !966, !921}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1029, file: !208, line: 369, baseType: !1036, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!294, !608, !966}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1029, file: !208, line: 372, baseType: !1040, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!294, !979, !921}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1029, file: !208, line: 375, baseType: !1044, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!294, !966}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1029, file: !208, line: 381, baseType: !1048, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!294, !608, !979, !464, !7}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1029, file: !208, line: 383, baseType: !1052, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1029, file: !208, line: 385, baseType: !1058, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!294, !608, !979, !776, !7, !7, !1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1029, file: !208, line: 388, baseType: !1064, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!294, !608, !979, !776, !7, !7, !966, !293}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1029, file: !208, line: 393, baseType: !1068, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1071, !979, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !292, line: 125, baseType: !296)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1029, file: !208, line: 394, baseType: !1073, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !966, !7, !7}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1029, file: !208, line: 395, baseType: !1077, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!294, !966, !291}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1029, file: !208, line: 396, baseType: !1081, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !966}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1029, file: !208, line: 397, baseType: !1085, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!562, !1088, !1108}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1097, !1098, !1099, !1100, !1101}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1089, file: !208, line: 321, baseType: !608, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1089, file: !208, line: 326, baseType: !776, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1089, file: !208, line: 327, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1088, !566, !566}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1089, file: !208, line: 328, baseType: !293, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1089, file: !208, line: 329, baseType: !294, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1089, file: !208, line: 330, baseType: !343, size: 16, offset: 288)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1089, file: !208, line: 331, baseType: !343, size: 16, offset: 304)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !208, line: 332, baseType: !1102, size: 64, offset: 320)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !208, line: 332, size: 64, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1102, file: !208, line: 333, baseType: !7, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1102, file: !208, line: 334, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1029, file: !208, line: 402, baseType: !1111, size: 64, offset: 832)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!294, !979, !966, !966, !183}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1029, file: !208, line: 404, baseType: !1115, size: 64, offset: 896)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!735, !966, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1119, line: 305, baseType: !7)
!1119 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1029, file: !208, line: 405, baseType: !1081, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1029, file: !208, line: 406, baseType: !1044, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1029, file: !208, line: 407, baseType: !1123, size: 64, offset: 1088)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!294, !966, !580, !580}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1029, file: !208, line: 409, baseType: !1127, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !966, !1130, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1029, file: !208, line: 410, baseType: !1132, size: 64, offset: 1216)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!294, !979, !966}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1029, file: !208, line: 413, baseType: !1136, size: 64, offset: 1280)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!294, !1139, !608, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1029, file: !208, line: 415, baseType: !1143, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !608}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !208, line: 466, baseType: !580, size: 64, offset: 896)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !980, file: !208, line: 467, baseType: !1148, size: 32, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1149, line: 8, baseType: !304)
!1149 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !980, file: !208, line: 468, baseType: !491, offset: 992)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !980, file: !208, line: 469, baseType: !461, size: 128, offset: 1024)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !980, file: !208, line: 470, baseType: !293, size: 64, offset: 1152)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !975, file: !968, line: 87, baseType: !580, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !975, file: !968, line: 94, baseType: !580, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !968, line: 96, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !968, line: 96, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1156, file: !968, line: 101, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !292, line: 143, baseType: !296)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !968, line: 103, baseType: !1161, size: 320)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !968, line: 103, size: 320, elements: !1162)
!1162 = !{!1163, !1173, !1176, !1177}
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !968, line: 104, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !968, line: 104, size: 128, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1164, file: !968, line: 105, baseType: !461, size: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !968, line: 106, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1164, file: !968, line: 106, size: 128, elements: !1169)
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1168, file: !968, line: 107, baseType: !966, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1168, file: !968, line: 109, baseType: !294, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1168, file: !968, line: 110, baseType: !294, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1161, file: !968, line: 117, baseType: !1174, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !968, line: 117, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1161, file: !968, line: 119, baseType: !293, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !968, line: 120, baseType: !1178, size: 64, offset: 256)
!1178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !968, line: 120, size: 64, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1178, file: !968, line: 121, baseType: !293, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1178, file: !968, line: 122, baseType: !580, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !968, line: 123, baseType: !1183, size: 32)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !968, line: 123, size: 32, elements: !1184)
!1184 = !{!1185, !1186, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1183, file: !968, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1183, file: !968, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1183, file: !968, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !968, line: 130, baseType: !1189, size: 192)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !968, line: 130, size: 192, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1189, file: !968, line: 131, baseType: !580, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1189, file: !968, line: 134, baseType: !303, size: 8, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1189, file: !968, line: 135, baseType: !303, size: 8, offset: 72)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1189, file: !968, line: 136, baseType: !450, size: 32, offset: 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1189, file: !968, line: 137, baseType: !7, size: 32, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !968, line: 139, baseType: !1197, size: 256)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !968, line: 139, size: 256, elements: !1198)
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1197, file: !968, line: 140, baseType: !580, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1197, file: !968, line: 141, baseType: !450, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1197, file: !968, line: 143, baseType: !461, size: 128, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !968, line: 145, baseType: !1203, size: 256)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !968, line: 145, size: 256, elements: !1204)
!1204 = !{!1205, !1206, !1208, !1209, !2489}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1203, file: !968, line: 146, baseType: !580, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1203, file: !968, line: 147, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !958, line: 509, baseType: !966)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1203, file: !968, line: 148, baseType: !580, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !968, line: 149, baseType: !1210, size: 64, offset: 192)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !968, line: 149, size: 64, elements: !1211)
!1211 = !{!1212, !2488}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1210, file: !968, line: 150, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !968, line: 388, size: 7296, elements: !1215)
!1215 = !{!1216, !2484}
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !968, line: 389, baseType: !1217, size: 7296)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !968, line: 389, size: 7296, elements: !1218)
!1218 = !{!1219, !1257, !1258, !1259, !1263, !1264, !1265, !1266, !1267, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1308, !1316, !1319, !1365, !1366, !2468, !2469, !2472, !2473, !2474, !2477, !2478, !2479, !2482, !2483}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1217, file: !968, line: 390, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !968, line: 305, size: 1472, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1237, !1238, !1243, !1244, !1247, !1251, !1252, !1253, !1254, !1255}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1221, file: !968, line: 308, baseType: !580, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1221, file: !968, line: 309, baseType: !580, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1221, file: !968, line: 313, baseType: !1220, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1221, file: !968, line: 313, baseType: !1220, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1221, file: !968, line: 315, baseType: !1001, size: 192, align: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1221, file: !968, line: 323, baseType: !580, size: 64, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1221, file: !968, line: 327, baseType: !1213, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1221, file: !968, line: 333, baseType: !1231, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !958, line: 284, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !958, line: 284, size: 64, elements: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1232, file: !958, line: 284, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1236, line: 19, baseType: !580)
!1236 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1221, file: !968, line: 334, baseType: !580, size: 64, offset: 640)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1221, file: !968, line: 343, baseType: !1239, size: 256, offset: 704)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !968, line: 340, size: 256, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1239, file: !968, line: 341, baseType: !1001, size: 192, align: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1239, file: !968, line: 342, baseType: !580, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1221, file: !968, line: 351, baseType: !461, size: 128, offset: 960)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1221, file: !968, line: 353, baseType: !1245, size: 64, offset: 1088)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !968, line: 353, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1221, file: !968, line: 356, baseType: !1248, size: 64, offset: 1152)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !968, line: 356, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1221, file: !968, line: 359, baseType: !580, size: 64, offset: 1216)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1221, file: !968, line: 361, baseType: !608, size: 64, offset: 1280)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1221, file: !968, line: 362, baseType: !293, size: 64, offset: 1344)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1221, file: !968, line: 365, baseType: !1012, size: 64, offset: 1408)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1221, file: !968, line: 373, baseType: !1256, offset: 1472)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !968, line: 296, elements: !505)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1217, file: !968, line: 391, baseType: !997, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1217, file: !968, line: 392, baseType: !296, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1217, file: !968, line: 394, baseType: !1260, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!580, !608, !580, !580, !580, !580}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1217, file: !968, line: 398, baseType: !580, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1217, file: !968, line: 399, baseType: !580, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1217, file: !968, line: 405, baseType: !580, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1217, file: !968, line: 406, baseType: !580, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1217, file: !968, line: 407, baseType: !1268, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !958, line: 286, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !958, line: 286, size: 64, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1270, file: !958, line: 286, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1236, line: 18, baseType: !580)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1217, file: !968, line: 416, baseType: !450, size: 32, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1217, file: !968, line: 428, baseType: !450, size: 32, offset: 608)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1217, file: !968, line: 437, baseType: !450, size: 32, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1217, file: !968, line: 447, baseType: !450, size: 32, offset: 672)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1217, file: !968, line: 450, baseType: !1012, size: 64, offset: 704)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1217, file: !968, line: 452, baseType: !294, size: 32, offset: 768)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1217, file: !968, line: 454, baseType: !491, offset: 800)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1217, file: !968, line: 457, baseType: !1008, size: 256, offset: 832)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1217, file: !968, line: 459, baseType: !461, size: 128, offset: 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1217, file: !968, line: 466, baseType: !580, size: 64, offset: 1216)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1217, file: !968, line: 467, baseType: !580, size: 64, offset: 1280)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1217, file: !968, line: 469, baseType: !580, size: 64, offset: 1344)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1217, file: !968, line: 470, baseType: !580, size: 64, offset: 1408)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1217, file: !968, line: 471, baseType: !1014, size: 64, offset: 1472)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1217, file: !968, line: 472, baseType: !580, size: 64, offset: 1536)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1217, file: !968, line: 473, baseType: !580, size: 64, offset: 1600)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1217, file: !968, line: 474, baseType: !580, size: 64, offset: 1664)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1217, file: !968, line: 475, baseType: !580, size: 64, offset: 1728)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1217, file: !968, line: 477, baseType: !491, offset: 1792)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1217, file: !968, line: 478, baseType: !580, size: 64, offset: 1792)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1217, file: !968, line: 478, baseType: !580, size: 64, offset: 1856)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1217, file: !968, line: 478, baseType: !580, size: 64, offset: 1920)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1217, file: !968, line: 478, baseType: !580, size: 64, offset: 1984)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1217, file: !968, line: 479, baseType: !580, size: 64, offset: 2048)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1217, file: !968, line: 479, baseType: !580, size: 64, offset: 2112)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1217, file: !968, line: 479, baseType: !580, size: 64, offset: 2176)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1217, file: !968, line: 480, baseType: !580, size: 64, offset: 2240)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1217, file: !968, line: 480, baseType: !580, size: 64, offset: 2304)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1217, file: !968, line: 480, baseType: !580, size: 64, offset: 2368)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1217, file: !968, line: 480, baseType: !580, size: 64, offset: 2432)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1217, file: !968, line: 482, baseType: !1305, size: 2816, offset: 2496)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 2816, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 44)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1217, file: !968, line: 488, baseType: !1309, size: 256, offset: 5312)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1310, line: 60, size: 256, elements: !1311)
!1310 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1309, file: !1310, line: 61, baseType: !1313, size: 256)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 256, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 4)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1217, file: !968, line: 490, baseType: !1317, size: 64, offset: 5568)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !968, line: 490, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1217, file: !968, line: 493, baseType: !1320, size: 896, offset: 5632)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1321, line: 53, baseType: !1322)
!1321 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1321, line: 13, size: 896, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1330, !1331, !1338, !1339, !1359, !1360, !1361}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1322, file: !1321, line: 18, baseType: !296, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1322, file: !1321, line: 28, baseType: !1014, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1322, file: !1321, line: 31, baseType: !1008, size: 256, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1322, file: !1321, line: 32, baseType: !1328, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1321, line: 32, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1322, file: !1321, line: 37, baseType: !345, size: 16, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1322, file: !1321, line: 40, baseType: !1332, size: 192, offset: 512)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1333, line: 53, size: 192, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1332, file: !1333, line: 54, baseType: !1012, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1332, file: !1333, line: 55, baseType: !491, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1332, file: !1333, line: 59, baseType: !461, size: 128, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1322, file: !1321, line: 41, baseType: !293, size: 64, offset: 704)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1322, file: !1321, line: 42, baseType: !1340, size: 64, offset: 768)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1343, line: 13, size: 896, elements: !1344)
!1343 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1342, file: !1343, line: 14, baseType: !293, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1342, file: !1343, line: 15, baseType: !580, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1342, file: !1343, line: 17, baseType: !580, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1342, file: !1343, line: 17, baseType: !580, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1342, file: !1343, line: 19, baseType: !566, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1342, file: !1343, line: 21, baseType: !566, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1342, file: !1343, line: 22, baseType: !566, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1342, file: !1343, line: 23, baseType: !566, size: 64, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1342, file: !1343, line: 24, baseType: !566, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1342, file: !1343, line: 25, baseType: !566, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1342, file: !1343, line: 26, baseType: !566, size: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1342, file: !1343, line: 27, baseType: !566, size: 64, offset: 704)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1342, file: !1343, line: 28, baseType: !566, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1342, file: !1343, line: 29, baseType: !566, size: 64, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1322, file: !1321, line: 44, baseType: !450, size: 32, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1322, file: !1321, line: 50, baseType: !343, size: 16, offset: 864)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1322, file: !1321, line: 51, baseType: !1362, size: 16, offset: 880)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !297, line: 18, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !299, line: 23, baseType: !1364)
!1364 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1217, file: !968, line: 495, baseType: !580, size: 64, offset: 6528)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1217, file: !968, line: 497, baseType: !1367, size: 64, offset: 6592)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !968, line: 381, size: 384, elements: !1369)
!1369 = !{!1370, !1371, !2467}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1368, file: !968, line: 382, baseType: !450, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1368, file: !968, line: 383, baseType: !1372, size: 128, offset: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !968, line: 376, size: 128, elements: !1373)
!1373 = !{!1374, !2465}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1372, file: !968, line: 377, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1377, line: 640, size: 48640, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1378 = !{!1379, !1385, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1400, !1418, !1429, !1510, !1511, !1512, !1523, !1524, !1526, !1527, !1528, !1529, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1613, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1651, !1653, !1654, !1655, !1667, !1668, !1669, !1670, !1671, !1672, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1696, !1701, !1883, !1884, !1885, !1886, !1890, !1893, !1896, !1899, !1902, !1906, !2007, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2053, !2054, !2055, !2056, !2057, !2062, !2063, !2064, !2067, !2068, !2071, !2074, !2077, !2080, !2123, !2126, !2127, !2206, !2207, !2210, !2211, !2214, !2215, !2216, !2220, !2221, !2222, !2235, !2236, !2237, !2247, !2252, !2255, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1376, file: !1377, line: 646, baseType: !1380, size: 128)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1381, line: 56, size: 128, elements: !1382)
!1381 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !1381, line: 57, baseType: !580, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1380, file: !1381, line: 58, baseType: !304, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1376, file: !1377, line: 649, baseType: !1386, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !566)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1376, file: !1377, line: 657, baseType: !293, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1376, file: !1377, line: 658, baseType: !445, size: 32, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1376, file: !1377, line: 660, baseType: !7, size: 32, offset: 288)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1376, file: !1377, line: 661, baseType: !7, size: 32, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1376, file: !1377, line: 684, baseType: !294, size: 32, offset: 352)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1376, file: !1377, line: 686, baseType: !294, size: 32, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1376, file: !1377, line: 687, baseType: !294, size: 32, offset: 416)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1376, file: !1377, line: 688, baseType: !294, size: 32, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1376, file: !1377, line: 689, baseType: !7, size: 32, offset: 480)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1376, file: !1377, line: 691, baseType: !1397, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1399)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1377, line: 691, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1376, file: !1377, line: 692, baseType: !1401, size: 832, offset: 576)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1377, line: 451, size: 832, elements: !1402)
!1402 = !{!1403, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1401, file: !1377, line: 453, baseType: !1404, size: 128)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1377, line: 325, size: 128, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1404, file: !1377, line: 326, baseType: !580, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1404, file: !1377, line: 327, baseType: !304, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1401, file: !1377, line: 454, baseType: !1001, size: 192, align: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1401, file: !1377, line: 455, baseType: !461, size: 128, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1401, file: !1377, line: 456, baseType: !7, size: 32, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1401, file: !1377, line: 458, baseType: !296, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1401, file: !1377, line: 459, baseType: !296, size: 64, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1401, file: !1377, line: 460, baseType: !296, size: 64, offset: 640)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1401, file: !1377, line: 461, baseType: !296, size: 64, offset: 704)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1401, file: !1377, line: 463, baseType: !296, size: 64, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1401, file: !1377, line: 465, baseType: !1417, offset: 832)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1377, line: 415, elements: !505)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1376, file: !1377, line: 693, baseType: !1419, size: 384, offset: 1408)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1377, line: 489, size: 384, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1419, file: !1377, line: 490, baseType: !461, size: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1419, file: !1377, line: 491, baseType: !580, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1419, file: !1377, line: 492, baseType: !580, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1419, file: !1377, line: 493, baseType: !7, size: 32, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1419, file: !1377, line: 494, baseType: !345, size: 16, offset: 288)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1419, file: !1377, line: 495, baseType: !345, size: 16, offset: 304)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1419, file: !1377, line: 497, baseType: !1428, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1376, file: !1377, line: 697, baseType: !1430, size: 1792, offset: 1792)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1377, line: 507, size: 1792, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1507, !1508}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1430, file: !1377, line: 508, baseType: !1001, size: 192, align: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1430, file: !1377, line: 515, baseType: !296, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1430, file: !1377, line: 516, baseType: !296, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1430, file: !1377, line: 517, baseType: !296, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1430, file: !1377, line: 518, baseType: !296, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1430, file: !1377, line: 519, baseType: !296, size: 64, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1430, file: !1377, line: 526, baseType: !1018, size: 64, offset: 512)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1430, file: !1377, line: 527, baseType: !296, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1430, file: !1377, line: 528, baseType: !7, size: 32, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1430, file: !1377, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1430, file: !1377, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1430, file: !1377, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1430, file: !1377, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1430, file: !1377, line: 563, baseType: !1446, size: 512, offset: 704)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1447)
!1447 = !{!1448, !1456, !1457, !1462, !1503, !1504, !1505, !1506}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1446, file: !191, line: 119, baseType: !1449, size: 256)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1450, line: 9, size: 256, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1449, file: !1450, line: 10, baseType: !1001, size: 192, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1449, file: !1450, line: 11, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1455, line: 29, baseType: !1018)
!1455 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1446, file: !191, line: 120, baseType: !1454, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1446, file: !191, line: 121, baseType: !1458, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!190, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1446, file: !191, line: 122, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1465)
!1465 = !{!1466, !1484, !1485, !1488, !1493, !1494, !1498, !1502}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1464, file: !191, line: 160, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1468, file: !191, line: 215, baseType: !1021)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1468, file: !191, line: 216, baseType: !7, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1468, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1468, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1468, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1468, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1468, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1468, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1468, file: !191, line: 233, baseType: !1454, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1468, file: !191, line: 234, baseType: !1461, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1468, file: !191, line: 235, baseType: !1454, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1468, file: !191, line: 236, baseType: !1461, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1468, file: !191, line: 237, baseType: !1483, size: 4096, offset: 512)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 4096, elements: !431)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1464, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1464, file: !191, line: 162, baseType: !1486, size: 32, offset: 96)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !292, line: 27, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !564, line: 96, baseType: !294)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1464, file: !191, line: 163, baseType: !1489, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !644, line: 276, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !644, line: 276, size: 32, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1490, file: !644, line: 276, baseType: !648, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1464, file: !191, line: 164, baseType: !1461, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1464, file: !191, line: 165, baseType: !1495, size: 128, offset: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1450, line: 14, size: 128, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1495, file: !1450, line: 15, baseType: !993, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1464, file: !191, line: 166, baseType: !1499, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1454}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1464, file: !191, line: 167, baseType: !1454, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1446, file: !191, line: 123, baseType: !301, size: 8, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1446, file: !191, line: 124, baseType: !301, size: 8, offset: 456)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1446, file: !191, line: 125, baseType: !301, size: 8, offset: 464)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1446, file: !191, line: 126, baseType: !301, size: 8, offset: 472)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1430, file: !1377, line: 572, baseType: !1446, size: 512, offset: 1216)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1430, file: !1377, line: 580, baseType: !1509, size: 64, offset: 1728)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1376, file: !1377, line: 721, baseType: !7, size: 32, offset: 3584)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1376, file: !1377, line: 722, baseType: !294, size: 32, offset: 3616)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1376, file: !1377, line: 723, baseType: !1513, size: 64, offset: 3648)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1516, line: 17, baseType: !1517)
!1516 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1516, line: 17, size: 64, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1517, file: !1516, line: 17, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 64, elements: !1521)
!1521 = !{!1522}
!1522 = !DISubrange(count: 1)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1376, file: !1377, line: 724, baseType: !1515, size: 64, offset: 3712)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1376, file: !1377, line: 749, baseType: !1525, offset: 3776)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1377, line: 290, elements: !505)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1376, file: !1377, line: 751, baseType: !461, size: 128, offset: 3776)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1376, file: !1377, line: 757, baseType: !1213, size: 64, offset: 3904)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1376, file: !1377, line: 758, baseType: !1213, size: 64, offset: 3968)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1376, file: !1377, line: 761, baseType: !1530, size: 320, offset: 4032)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1310, line: 34, size: 320, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1530, file: !1310, line: 35, baseType: !296, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1530, file: !1310, line: 36, baseType: !1534, size: 256, offset: 64)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 256, elements: !1314)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1376, file: !1377, line: 766, baseType: !294, size: 32, offset: 4352)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1376, file: !1377, line: 767, baseType: !294, size: 32, offset: 4384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1376, file: !1377, line: 768, baseType: !294, size: 32, offset: 4416)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1376, file: !1377, line: 770, baseType: !294, size: 32, offset: 4448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1376, file: !1377, line: 772, baseType: !580, size: 64, offset: 4480)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1376, file: !1377, line: 775, baseType: !7, size: 32, offset: 4544)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1376, file: !1377, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1376, file: !1377, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1376, file: !1377, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1376, file: !1377, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1376, file: !1377, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1376, file: !1377, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1376, file: !1377, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1376, file: !1377, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1376, file: !1377, line: 831, baseType: !580, size: 64, offset: 4672)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1376, file: !1377, line: 833, baseType: !1551, size: 384, offset: 4736)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1552)
!1552 = !{!1553, !1558}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1551, file: !196, line: 26, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!566, !1557}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !196, line: 27, baseType: !1559, size: 320, offset: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !196, line: 27, size: 320, elements: !1560)
!1560 = !{!1561, !1571, !1598}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1559, file: !196, line: 36, baseType: !1562, size: 320)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !196, line: 29, size: 320, elements: !1563)
!1563 = !{!1564, !1566, !1567, !1568, !1569, !1570}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1562, file: !196, line: 30, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1562, file: !196, line: 31, baseType: !304, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1562, file: !196, line: 32, baseType: !304, size: 32, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1562, file: !196, line: 33, baseType: !304, size: 32, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1562, file: !196, line: 34, baseType: !296, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1562, file: !196, line: 35, baseType: !1565, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1559, file: !196, line: 46, baseType: !1572, size: 192)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !196, line: 38, size: 192, elements: !1573)
!1573 = !{!1574, !1575, !1576, !1597}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1572, file: !196, line: 39, baseType: !1486, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1572, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !196, line: 41, baseType: !1577, size: 64, offset: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !196, line: 41, size: 64, elements: !1578)
!1578 = !{!1579, !1587}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1577, file: !196, line: 42, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1582, line: 7, size: 128, elements: !1583)
!1582 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1583 = !{!1584, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1581, file: !1582, line: 8, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !564, line: 93, baseType: !778)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1581, file: !1582, line: 9, baseType: !778, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1577, file: !196, line: 43, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1590, line: 7, size: 64, elements: !1591)
!1590 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1596}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1589, file: !1590, line: 8, baseType: !1593, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1590, line: 5, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !297, line: 20, baseType: !1595)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !299, line: 26, baseType: !294)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1589, file: !1590, line: 9, baseType: !1594, size: 32, offset: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1572, file: !196, line: 45, baseType: !296, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1559, file: !196, line: 54, baseType: !1599, size: 256)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !196, line: 48, size: 256, elements: !1600)
!1600 = !{!1601, !1609, !1610, !1611, !1612}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1599, file: !196, line: 49, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1604, line: 36, size: 64, elements: !1605)
!1604 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1603, file: !1604, line: 37, baseType: !294, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1603, file: !1604, line: 38, baseType: !1364, size: 16, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1603, file: !1604, line: 39, baseType: !1364, size: 16, offset: 48)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1599, file: !196, line: 50, baseType: !294, size: 32, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1599, file: !196, line: 51, baseType: !294, size: 32, offset: 96)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1599, file: !196, line: 52, baseType: !580, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1599, file: !196, line: 53, baseType: !580, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1376, file: !1377, line: 835, baseType: !1614, size: 32, offset: 5120)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !292, line: 22, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !564, line: 28, baseType: !294)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1376, file: !1377, line: 836, baseType: !1614, size: 32, offset: 5152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1376, file: !1377, line: 840, baseType: !580, size: 64, offset: 5184)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1376, file: !1377, line: 849, baseType: !1375, size: 64, offset: 5248)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1376, file: !1377, line: 852, baseType: !1375, size: 64, offset: 5312)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1376, file: !1377, line: 857, baseType: !461, size: 128, offset: 5376)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1376, file: !1377, line: 858, baseType: !461, size: 128, offset: 5504)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1376, file: !1377, line: 859, baseType: !1375, size: 64, offset: 5632)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1376, file: !1377, line: 867, baseType: !461, size: 128, offset: 5696)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1376, file: !1377, line: 868, baseType: !461, size: 128, offset: 5824)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1376, file: !1377, line: 871, baseType: !1626, size: 64, offset: 5952)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1628)
!1628 = !{!1629, !1630, !1631, !1632, !1634, !1635, !1642, !1643}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1627, file: !217, line: 61, baseType: !445, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1627, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1627, file: !217, line: 63, baseType: !491, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1627, file: !217, line: 65, baseType: !1633, size: 256, offset: 64)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 256, elements: !1314)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1627, file: !217, line: 66, baseType: !880, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1627, file: !217, line: 68, baseType: !1636, size: 128, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1637, line: 40, baseType: !1638)
!1637 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1637, line: 36, size: 128, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1638, file: !1637, line: 37, baseType: !491)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1638, file: !1637, line: 38, baseType: !461, size: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1627, file: !217, line: 69, baseType: !621, size: 128, align: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1627, file: !217, line: 70, baseType: !1644, size: 128, offset: 640)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1645, size: 128, elements: !1521)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1645, file: !217, line: 55, baseType: !294, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1645, file: !217, line: 56, baseType: !1649, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1376, file: !1377, line: 872, baseType: !1652, size: 512, offset: 6016)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 512, elements: !1314)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1376, file: !1377, line: 873, baseType: !461, size: 128, offset: 6528)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1376, file: !1377, line: 874, baseType: !461, size: 128, offset: 6656)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1376, file: !1377, line: 876, baseType: !1656, size: 64, offset: 6784)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1658, line: 26, size: 192, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1657, file: !1658, line: 27, baseType: !7, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1657, file: !1658, line: 28, baseType: !1662, size: 128, offset: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1663, line: 43, size: 128, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1662, file: !1663, line: 44, baseType: !1021)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1662, file: !1663, line: 45, baseType: !461, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1376, file: !1377, line: 879, baseType: !950, size: 64, offset: 6848)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1376, file: !1377, line: 882, baseType: !950, size: 64, offset: 6912)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1376, file: !1377, line: 884, baseType: !296, size: 64, offset: 6976)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1376, file: !1377, line: 885, baseType: !296, size: 64, offset: 7040)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1376, file: !1377, line: 890, baseType: !296, size: 64, offset: 7104)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1376, file: !1377, line: 891, baseType: !1673, size: 128, offset: 7168)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1377, line: 242, size: 128, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1673, file: !1377, line: 244, baseType: !296, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1673, file: !1377, line: 245, baseType: !296, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !1377, line: 246, baseType: !1021, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1376, file: !1377, line: 900, baseType: !580, size: 64, offset: 7296)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1376, file: !1377, line: 901, baseType: !580, size: 64, offset: 7360)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1376, file: !1377, line: 904, baseType: !296, size: 64, offset: 7424)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1376, file: !1377, line: 907, baseType: !296, size: 64, offset: 7488)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1376, file: !1377, line: 910, baseType: !580, size: 64, offset: 7552)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1376, file: !1377, line: 911, baseType: !580, size: 64, offset: 7616)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1376, file: !1377, line: 914, baseType: !1685, size: 640, offset: 7680)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1686, line: 123, size: 640, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1694, !1695}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1685, file: !1686, line: 124, baseType: !1689, size: 576)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1690, size: 576, elements: !532)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1686, line: 108, size: 192, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1690, file: !1686, line: 109, baseType: !296, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1690, file: !1686, line: 110, baseType: !1495, size: 128, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1685, file: !1686, line: 125, baseType: !7, size: 32, offset: 576)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1685, file: !1686, line: 126, baseType: !7, size: 32, offset: 608)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1376, file: !1377, line: 917, baseType: !1697, size: 192, offset: 8320)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1686, line: 134, size: 192, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1697, file: !1686, line: 135, baseType: !621, size: 128, align: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1697, file: !1686, line: 136, baseType: !7, size: 32, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1376, file: !1377, line: 923, baseType: !1702, size: 64, offset: 8512)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1705, line: 111, size: 1280, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1726, !1727, !1728, !1729, !1730, !1731, !1836, !1837, !1838, !1839, !1865, !1868, !1878}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1704, file: !1705, line: 112, baseType: !450, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1704, file: !1705, line: 120, baseType: !683, size: 32, offset: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1704, file: !1705, line: 121, baseType: !691, size: 32, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1704, file: !1705, line: 122, baseType: !683, size: 32, offset: 96)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1704, file: !1705, line: 123, baseType: !691, size: 32, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1704, file: !1705, line: 124, baseType: !683, size: 32, offset: 160)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1704, file: !1705, line: 125, baseType: !691, size: 32, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1704, file: !1705, line: 126, baseType: !683, size: 32, offset: 224)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1704, file: !1705, line: 127, baseType: !691, size: 32, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1704, file: !1705, line: 128, baseType: !7, size: 32, offset: 288)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1704, file: !1705, line: 129, baseType: !1718, size: 64, offset: 320)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1719, line: 26, baseType: !1720)
!1719 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1719, line: 24, size: 64, elements: !1721)
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1720, file: !1719, line: 25, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 64, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 2)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1704, file: !1705, line: 130, baseType: !1718, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1704, file: !1705, line: 131, baseType: !1718, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1704, file: !1705, line: 132, baseType: !1718, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1704, file: !1705, line: 133, baseType: !1718, size: 64, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1704, file: !1705, line: 135, baseType: !303, size: 8, offset: 640)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1704, file: !1705, line: 137, baseType: !1732, size: 64, offset: 704)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1734, line: 189, size: 1664, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737, !1740, !1745, !1746, !1749, !1750, !1755, !1756, !1757, !1758, !1760, !1761, !1762, !1763, !1764, !1800, !1821}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1733, file: !1734, line: 190, baseType: !445, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1733, file: !1734, line: 191, baseType: !1738, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1734, line: 28, baseType: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !292, line: 98, baseType: !1594)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !1734, line: 192, baseType: !1741, size: 192, offset: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !1734, line: 192, size: 192, elements: !1742)
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1741, file: !1734, line: 193, baseType: !461, size: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1741, file: !1734, line: 194, baseType: !1001, size: 192, align: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1733, file: !1734, line: 199, baseType: !1008, size: 256, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1733, file: !1734, line: 200, baseType: !1747, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1734, line: 200, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1733, file: !1734, line: 201, baseType: !293, size: 64, offset: 576)
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !1734, line: 202, baseType: !1751, size: 64, offset: 640)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !1734, line: 202, size: 64, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1751, file: !1734, line: 203, baseType: !784, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1751, file: !1734, line: 204, baseType: !784, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1733, file: !1734, line: 206, baseType: !784, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1733, file: !1734, line: 207, baseType: !683, size: 32, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1733, file: !1734, line: 208, baseType: !691, size: 32, offset: 800)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1733, file: !1734, line: 209, baseType: !1759, size: 32, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1734, line: 31, baseType: !804)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1733, file: !1734, line: 210, baseType: !345, size: 16, offset: 864)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1733, file: !1734, line: 211, baseType: !345, size: 16, offset: 880)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1733, file: !1734, line: 215, baseType: !1364, size: 16, offset: 896)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1733, file: !1734, line: 222, baseType: !580, size: 64, offset: 960)
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !1734, line: 239, baseType: !1765, size: 320, offset: 1024)
!1765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !1734, line: 239, size: 320, elements: !1766)
!1766 = !{!1767, !1792}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1765, file: !1734, line: 240, baseType: !1768, size: 320)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1734, line: 108, size: 320, elements: !1769)
!1769 = !{!1770, !1771, !1781, !1784, !1791}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1768, file: !1734, line: 110, baseType: !580, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1734, line: 111, baseType: !1772, size: 64, offset: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1734, line: 111, size: 64, elements: !1773)
!1773 = !{!1774, !1780}
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1734, line: 112, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1772, file: !1734, line: 112, size: 64, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1775, file: !1734, line: 114, baseType: !343, size: 16)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1775, file: !1734, line: 115, baseType: !1779, size: 48, offset: 16)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 48, elements: !470)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1772, file: !1734, line: 121, baseType: !580, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1768, file: !1734, line: 123, baseType: !1782, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1734, line: 96, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1768, file: !1734, line: 124, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1734, line: 102, size: 192, elements: !1787)
!1787 = !{!1788, !1789, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1786, file: !1734, line: 103, baseType: !621, size: 128, align: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1786, file: !1734, line: 104, baseType: !445, size: 32, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1786, file: !1734, line: 105, baseType: !735, size: 8, offset: 160)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1768, file: !1734, line: 125, baseType: !314, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !1734, line: 241, baseType: !1793, size: 320)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1765, file: !1734, line: 241, size: 320, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1793, file: !1734, line: 242, baseType: !580, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1793, file: !1734, line: 243, baseType: !580, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1793, file: !1734, line: 244, baseType: !1782, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1793, file: !1734, line: 245, baseType: !1785, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1793, file: !1734, line: 246, baseType: !336, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1733, file: !1734, line: 254, baseType: !1801, size: 256, offset: 1344)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1733, file: !1734, line: 254, size: 256, elements: !1802)
!1802 = !{!1803, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1801, file: !1734, line: 255, baseType: !1804, size: 256)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1734, line: 128, size: 256, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1804, file: !1734, line: 129, baseType: !293, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1804, file: !1734, line: 130, baseType: !1808, size: 256)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !1314)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1801, file: !1734, line: 256, baseType: !1810, size: 256)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !1734, line: 256, size: 256, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1810, file: !1734, line: 258, baseType: !461, size: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1810, file: !1734, line: 259, baseType: !1814, size: 128, offset: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1815, line: 22, size: 128, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1816 = !{!1817, !1820}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1814, file: !1815, line: 23, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1815, line: 23, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1814, file: !1815, line: 24, baseType: !580, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1733, file: !1734, line: 274, baseType: !1822, size: 64, offset: 1600)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1734, line: 170, size: 192, elements: !1824)
!1824 = !{!1825, !1834, !1835}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1823, file: !1734, line: 171, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1734, line: 165, baseType: !1827)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!294, !1732, !1830, !1832, !1732}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1783)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1823, file: !1734, line: 172, baseType: !1732, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1823, file: !1734, line: 173, baseType: !1782, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1704, file: !1705, line: 138, baseType: !1732, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1704, file: !1705, line: 139, baseType: !1732, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1704, file: !1705, line: 140, baseType: !1732, size: 64, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1704, file: !1705, line: 145, baseType: !1840, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1842, line: 13, size: 896, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1841, file: !1842, line: 14, baseType: !445, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1841, file: !1842, line: 15, baseType: !450, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1841, file: !1842, line: 16, baseType: !450, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1841, file: !1842, line: 21, baseType: !1012, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1841, file: !1842, line: 27, baseType: !580, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1841, file: !1842, line: 28, baseType: !580, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1841, file: !1842, line: 29, baseType: !1012, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1841, file: !1842, line: 32, baseType: !884, size: 128, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1841, file: !1842, line: 33, baseType: !683, size: 32, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1841, file: !1842, line: 37, baseType: !1012, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1841, file: !1842, line: 44, baseType: !1855, size: 256, offset: 640)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1856, line: 15, size: 256, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1855, file: !1856, line: 16, baseType: !1021)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1855, file: !1856, line: 18, baseType: !294, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1855, file: !1856, line: 19, baseType: !294, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1855, file: !1856, line: 20, baseType: !294, size: 32, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1855, file: !1856, line: 21, baseType: !294, size: 32, offset: 96)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1855, file: !1856, line: 22, baseType: !580, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !1856, line: 23, baseType: !580, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1704, file: !1705, line: 146, baseType: !1866, size: 64, offset: 1024)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !684, line: 18, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1704, file: !1705, line: 147, baseType: !1869, size: 64, offset: 1088)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1705, line: 25, size: 64, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1870, file: !1705, line: 26, baseType: !450, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1870, file: !1705, line: 27, baseType: !294, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1870, file: !1705, line: 28, baseType: !1875, offset: 64)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 0)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !1705, line: 149, baseType: !1879, size: 128, offset: 1152)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1704, file: !1705, line: 149, size: 128, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1879, file: !1705, line: 150, baseType: !294, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1879, file: !1705, line: 151, baseType: !621, size: 128, align: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1376, file: !1377, line: 926, baseType: !1702, size: 64, offset: 8576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1376, file: !1377, line: 929, baseType: !1702, size: 64, offset: 8640)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1376, file: !1377, line: 933, baseType: !1732, size: 64, offset: 8704)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1376, file: !1377, line: 943, baseType: !1887, size: 128, offset: 8768)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 128, elements: !1888)
!1888 = !{!1889}
!1889 = !DISubrange(count: 16)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1376, file: !1377, line: 945, baseType: !1891, size: 64, offset: 8896)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1377, line: 49, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1376, file: !1377, line: 956, baseType: !1894, size: 64, offset: 8960)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1377, line: 45, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1376, file: !1377, line: 959, baseType: !1897, size: 64, offset: 9024)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1377, line: 959, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1376, file: !1377, line: 962, baseType: !1900, size: 64, offset: 9088)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1377, line: 66, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1376, file: !1377, line: 966, baseType: !1903, size: 64, offset: 9152)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1905, line: 35, flags: DIFlagFwdDecl)
!1905 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1376, file: !1377, line: 969, baseType: !1907, size: 64, offset: 9216)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1909, line: 82, size: 7296, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1946, !1955, !1956, !1958, !1959, !1960, !1963, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1993, !1994, !2001, !2002, !2003, !2004, !2005, !2006}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1908, file: !1909, line: 83, baseType: !445, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1908, file: !1909, line: 84, baseType: !450, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1908, file: !1909, line: 85, baseType: !294, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1908, file: !1909, line: 86, baseType: !461, size: 128, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1908, file: !1909, line: 88, baseType: !1636, size: 128, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1908, file: !1909, line: 91, baseType: !1375, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1908, file: !1909, line: 94, baseType: !1918, size: 192, offset: 448)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1919, line: 30, size: 192, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1918, file: !1919, line: 31, baseType: !461, size: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1918, file: !1919, line: 32, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1924, line: 25, baseType: !1925)
!1924 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1924, line: 23, size: 64, elements: !1926)
!1926 = !{!1927}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1925, file: !1924, line: 24, baseType: !1520, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1908, file: !1909, line: 97, baseType: !880, size: 64, offset: 640)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1908, file: !1909, line: 100, baseType: !294, size: 32, offset: 704)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1908, file: !1909, line: 106, baseType: !294, size: 32, offset: 736)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1908, file: !1909, line: 107, baseType: !1375, size: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1908, file: !1909, line: 110, baseType: !294, size: 32, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1908, file: !1909, line: 111, baseType: !7, size: 32, offset: 864)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1908, file: !1909, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1908, file: !1909, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1908, file: !1909, line: 128, baseType: !294, size: 32, offset: 928)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1908, file: !1909, line: 129, baseType: !461, size: 128, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1908, file: !1909, line: 132, baseType: !1446, size: 512, offset: 1088)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1908, file: !1909, line: 133, baseType: !1454, size: 64, offset: 1600)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1908, file: !1909, line: 140, baseType: !1941, size: 256, offset: 1664)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1942, size: 256, elements: !1724)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1909, line: 38, size: 128, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1942, file: !1909, line: 39, baseType: !296, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1942, file: !1909, line: 40, baseType: !296, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1908, file: !1909, line: 146, baseType: !1947, size: 192, offset: 1920)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1909, line: 66, size: 192, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1947, file: !1909, line: 67, baseType: !1950, size: 192)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1909, line: 47, size: 192, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1950, file: !1909, line: 48, baseType: !1014, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1950, file: !1909, line: 49, baseType: !1014, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1950, file: !1909, line: 50, baseType: !1014, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1908, file: !1909, line: 150, baseType: !1685, size: 640, offset: 2112)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1908, file: !1909, line: 153, baseType: !1957, size: 256, offset: 2752)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1626, size: 256, elements: !1314)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1908, file: !1909, line: 159, baseType: !1626, size: 64, offset: 3008)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1908, file: !1909, line: 162, baseType: !294, size: 32, offset: 3072)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1908, file: !1909, line: 164, baseType: !1961, size: 64, offset: 3136)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1909, line: 164, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1908, file: !1909, line: 175, baseType: !1964, size: 32, offset: 3200)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !644, line: 805, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 798, size: 32, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1965, file: !644, line: 803, baseType: !643, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1965, file: !644, line: 804, baseType: !491, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1908, file: !1909, line: 176, baseType: !296, size: 64, offset: 3264)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1908, file: !1909, line: 176, baseType: !296, size: 64, offset: 3328)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1908, file: !1909, line: 176, baseType: !296, size: 64, offset: 3392)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1908, file: !1909, line: 176, baseType: !296, size: 64, offset: 3456)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1908, file: !1909, line: 177, baseType: !296, size: 64, offset: 3520)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1908, file: !1909, line: 178, baseType: !296, size: 64, offset: 3584)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1908, file: !1909, line: 179, baseType: !1673, size: 128, offset: 3648)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1908, file: !1909, line: 180, baseType: !580, size: 64, offset: 3776)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1908, file: !1909, line: 180, baseType: !580, size: 64, offset: 3840)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1908, file: !1909, line: 180, baseType: !580, size: 64, offset: 3904)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1908, file: !1909, line: 180, baseType: !580, size: 64, offset: 3968)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1908, file: !1909, line: 181, baseType: !580, size: 64, offset: 4032)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1908, file: !1909, line: 181, baseType: !580, size: 64, offset: 4096)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1908, file: !1909, line: 181, baseType: !580, size: 64, offset: 4160)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1908, file: !1909, line: 181, baseType: !580, size: 64, offset: 4224)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1908, file: !1909, line: 182, baseType: !580, size: 64, offset: 4288)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1908, file: !1909, line: 182, baseType: !580, size: 64, offset: 4352)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1908, file: !1909, line: 182, baseType: !580, size: 64, offset: 4416)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1908, file: !1909, line: 182, baseType: !580, size: 64, offset: 4480)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1908, file: !1909, line: 183, baseType: !580, size: 64, offset: 4544)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1908, file: !1909, line: 183, baseType: !580, size: 64, offset: 4608)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1908, file: !1909, line: 184, baseType: !1991, offset: 4672)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1992, line: 12, elements: !505)
!1992 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1908, file: !1909, line: 192, baseType: !300, size: 64, offset: 4672)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1908, file: !1909, line: 203, baseType: !1995, size: 2048, offset: 4736)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1996, size: 2048, elements: !1888)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1997, line: 43, size: 128, elements: !1998)
!1997 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1996, file: !1997, line: 44, baseType: !579, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1996, file: !1997, line: 45, baseType: !579, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1908, file: !1909, line: 220, baseType: !735, size: 8, offset: 6784)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1908, file: !1909, line: 221, baseType: !1364, size: 16, offset: 6800)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1908, file: !1909, line: 222, baseType: !1364, size: 16, offset: 6816)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1908, file: !1909, line: 224, baseType: !1213, size: 64, offset: 6848)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1908, file: !1909, line: 227, baseType: !1332, size: 192, offset: 6912)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1908, file: !1909, line: 233, baseType: !1332, size: 192, offset: 7104)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1376, file: !1377, line: 970, baseType: !2008, size: 64, offset: 9280)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1909, line: 20, size: 16576, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2009, file: !1909, line: 21, baseType: !491)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2009, file: !1909, line: 22, baseType: !445, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2009, file: !1909, line: 23, baseType: !1636, size: 128, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2009, file: !1909, line: 24, baseType: !2015, size: 16384, offset: 192)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 16384, elements: !536)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1919, line: 49, size: 256, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2016, file: !1919, line: 50, baseType: !2019, size: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1919, line: 35, size: 256, elements: !2020)
!2020 = !{!2021, !2028, !2029, !2035}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2019, file: !1919, line: 37, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2023, line: 19, baseType: !2024)
!2023 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2023, line: 18, baseType: !2026)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !294}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2019, file: !1919, line: 38, baseType: !580, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2019, file: !1919, line: 44, baseType: !2030, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2023, line: 22, baseType: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2023, line: 21, baseType: !2033)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2019, file: !1919, line: 46, baseType: !1923, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1376, file: !1377, line: 971, baseType: !1923, size: 64, offset: 9344)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1376, file: !1377, line: 972, baseType: !1923, size: 64, offset: 9408)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1376, file: !1377, line: 974, baseType: !1923, size: 64, offset: 9472)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1376, file: !1377, line: 975, baseType: !1918, size: 192, offset: 9536)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1376, file: !1377, line: 976, baseType: !580, size: 64, offset: 9728)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1376, file: !1377, line: 977, baseType: !577, size: 64, offset: 9792)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1376, file: !1377, line: 978, baseType: !7, size: 32, offset: 9856)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1376, file: !1377, line: 980, baseType: !624, size: 64, offset: 9920)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1376, file: !1377, line: 989, baseType: !2045, size: 128, offset: 9984)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2046, line: 35, size: 128, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2045, file: !2046, line: 36, baseType: !294, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2045, file: !2046, line: 37, baseType: !450, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2045, file: !2046, line: 38, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2046, line: 23, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1376, file: !1377, line: 992, baseType: !296, size: 64, offset: 10112)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1376, file: !1377, line: 993, baseType: !296, size: 64, offset: 10176)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1376, file: !1377, line: 996, baseType: !491, offset: 10240)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1376, file: !1377, line: 999, baseType: !1021, offset: 10240)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1376, file: !1377, line: 1001, baseType: !2058, size: 64, offset: 10240)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1377, line: 636, size: 64, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2058, file: !1377, line: 637, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1376, file: !1377, line: 1005, baseType: !993, size: 128, offset: 10304)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1376, file: !1377, line: 1007, baseType: !1375, size: 64, offset: 10432)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1376, file: !1377, line: 1009, baseType: !2065, size: 64, offset: 10496)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1377, line: 1009, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1376, file: !1377, line: 1043, baseType: !293, size: 64, offset: 10560)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1376, file: !1377, line: 1046, baseType: !2069, size: 64, offset: 10624)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1377, line: 41, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1376, file: !1377, line: 1050, baseType: !2072, size: 64, offset: 10688)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1377, line: 42, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1376, file: !1377, line: 1054, baseType: !2075, size: 64, offset: 10752)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1377, line: 55, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1376, file: !1377, line: 1056, baseType: !2078, size: 64, offset: 10816)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1377, line: 40, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1376, file: !1377, line: 1058, baseType: !2081, size: 64, offset: 10880)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2083, line: 99, size: 704, elements: !2084)
!2083 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2084 = !{!2085, !2086, !2087, !2088, !2089, !2090, !2091, !2110, !2111}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2082, file: !2083, line: 100, baseType: !1012, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2082, file: !2083, line: 101, baseType: !450, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2082, file: !2083, line: 102, baseType: !450, size: 32, offset: 96)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2082, file: !2083, line: 105, baseType: !491, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2082, file: !2083, line: 107, baseType: !345, size: 16, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2082, file: !2083, line: 109, baseType: !984, size: 128, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2082, file: !2083, line: 110, baseType: !2092, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2083, line: 73, size: 448, elements: !2094)
!2094 = !{!2095, !2098, !2099, !2104, !2109}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2093, file: !2083, line: 74, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2083, line: 74, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2093, file: !2083, line: 75, baseType: !2081, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2093, file: !2083, line: 83, baseType: !2100, size: 128, offset: 128)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2093, file: !2083, line: 83, size: 128, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2100, file: !2083, line: 84, baseType: !461, size: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2100, file: !2083, line: 85, baseType: !1174, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !2093, file: !2083, line: 87, baseType: !2105, size: 128, offset: 256)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2093, file: !2083, line: 87, size: 128, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2105, file: !2083, line: 88, baseType: !884, size: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2105, file: !2083, line: 89, baseType: !621, size: 128, align: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2093, file: !2083, line: 92, baseType: !7, size: 32, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2082, file: !2083, line: 111, baseType: !880, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2082, file: !2083, line: 113, baseType: !2112, size: 256, offset: 448)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2113, line: 102, size: 256, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2112, file: !2113, line: 103, baseType: !1012, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2112, file: !2113, line: 104, baseType: !461, size: 128, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2112, file: !2113, line: 105, baseType: !2118, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2113, line: 21, baseType: !2119)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1376, file: !1377, line: 1061, baseType: !2124, size: 64, offset: 10944)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1377, line: 43, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1376, file: !1377, line: 1064, baseType: !580, size: 64, offset: 11008)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1376, file: !1377, line: 1065, baseType: !2128, size: 64, offset: 11072)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1919, line: 14, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1919, line: 12, size: 384, elements: !2131)
!2131 = !{!2132}
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !1919, line: 13, baseType: !2133, size: 384)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !1919, line: 13, size: 384, elements: !2134)
!2134 = !{!2135, !2136, !2137, !2138}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2133, file: !1919, line: 13, baseType: !294, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2133, file: !1919, line: 13, baseType: !294, size: 32, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2133, file: !1919, line: 13, baseType: !294, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2133, file: !1919, line: 13, baseType: !2139, size: 256, offset: 128)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2140, line: 32, size: 256, elements: !2141)
!2140 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !{!2142, !2147, !2160, !2166, !2175, !2195, !2200}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2139, file: !2140, line: 37, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2140, line: 34, size: 64, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2143, file: !2140, line: 35, baseType: !1615, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2143, file: !2140, line: 36, baseType: !689, size: 32, offset: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2139, file: !2140, line: 45, baseType: !2148, size: 192)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2140, line: 40, size: 192, elements: !2149)
!2149 = !{!2150, !2152, !2153, !2159}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2148, file: !2140, line: 41, baseType: !2151, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !564, line: 95, baseType: !294)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2148, file: !2140, line: 42, baseType: !294, size: 32, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2148, file: !2140, line: 43, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2140, line: 11, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2140, line: 8, size: 64, elements: !2156)
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2155, file: !2140, line: 9, baseType: !294, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2155, file: !2140, line: 10, baseType: !293, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2148, file: !2140, line: 44, baseType: !294, size: 32, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2139, file: !2140, line: 52, baseType: !2161, size: 128)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2140, line: 48, size: 128, elements: !2162)
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2161, file: !2140, line: 49, baseType: !1615, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2161, file: !2140, line: 50, baseType: !689, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2161, file: !2140, line: 51, baseType: !2154, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2139, file: !2140, line: 61, baseType: !2167, size: 256)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2140, line: 55, size: 256, elements: !2168)
!2168 = !{!2169, !2170, !2171, !2172, !2174}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2167, file: !2140, line: 56, baseType: !1615, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2167, file: !2140, line: 57, baseType: !689, size: 32, offset: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2167, file: !2140, line: 58, baseType: !294, size: 32, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2167, file: !2140, line: 59, baseType: !2173, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !564, line: 94, baseType: !565)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2167, file: !2140, line: 60, baseType: !2173, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2139, file: !2140, line: 95, baseType: !2176, size: 256)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2140, line: 64, size: 256, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2176, file: !2140, line: 65, baseType: !293, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2176, file: !2140, line: 77, baseType: !2180, size: 192, offset: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2176, file: !2140, line: 77, size: 192, elements: !2181)
!2181 = !{!2182, !2183, !2190}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2180, file: !2140, line: 82, baseType: !1364, size: 16)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2180, file: !2140, line: 88, baseType: !2184, size: 192)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2180, file: !2140, line: 84, size: 192, elements: !2185)
!2185 = !{!2186, !2188, !2189}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2184, file: !2140, line: 85, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !431)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2184, file: !2140, line: 86, baseType: !293, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2184, file: !2140, line: 87, baseType: !293, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2180, file: !2140, line: 93, baseType: !2191, size: 96)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2180, file: !2140, line: 90, size: 96, elements: !2192)
!2192 = !{!2193, !2194}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2191, file: !2140, line: 91, baseType: !2187, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2191, file: !2140, line: 92, baseType: !305, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2139, file: !2140, line: 101, baseType: !2196, size: 128)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2140, line: 98, size: 128, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2196, file: !2140, line: 99, baseType: !566, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2196, file: !2140, line: 100, baseType: !294, size: 32, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2139, file: !2140, line: 108, baseType: !2201, size: 128)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !2140, line: 104, size: 128, elements: !2202)
!2202 = !{!2203, !2204, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2201, file: !2140, line: 105, baseType: !293, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2201, file: !2140, line: 106, baseType: !294, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2201, file: !2140, line: 107, baseType: !7, size: 32, offset: 96)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1376, file: !1377, line: 1067, baseType: !1991, offset: 11136)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1376, file: !1377, line: 1099, baseType: !2208, size: 64, offset: 11136)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1377, line: 56, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1376, file: !1377, line: 1103, baseType: !461, size: 128, offset: 11200)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1376, file: !1377, line: 1104, baseType: !2212, size: 64, offset: 11328)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1377, line: 46, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1376, file: !1377, line: 1105, baseType: !1332, size: 192, offset: 11392)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1376, file: !1377, line: 1106, baseType: !7, size: 32, offset: 11584)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1376, file: !1377, line: 1109, baseType: !2217, size: 128, offset: 11648)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2218, size: 128, elements: !1724)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1377, line: 51, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1376, file: !1377, line: 1110, baseType: !1332, size: 192, offset: 11776)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1376, file: !1377, line: 1111, baseType: !461, size: 128, offset: 11968)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1376, file: !1377, line: 1173, baseType: !2223, size: 64, offset: 12096)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2225, line: 62, size: 256, align: 256, elements: !2226)
!2225 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2226 = !{!2227, !2228, !2229, !2234}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2224, file: !2225, line: 75, baseType: !305, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2224, file: !2225, line: 90, baseType: !305, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2224, file: !2225, line: 124, baseType: !2230, size: 64, offset: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2224, file: !2225, line: 109, size: 64, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2230, file: !2225, line: 110, baseType: !298, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2230, file: !2225, line: 112, baseType: !298, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2224, file: !2225, line: 144, baseType: !305, size: 32, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1376, file: !1377, line: 1174, baseType: !304, size: 32, offset: 12160)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1376, file: !1377, line: 1179, baseType: !580, size: 64, offset: 12224)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1376, file: !1377, line: 1182, baseType: !2238, size: 128, offset: 12288)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1310, line: 76, size: 128, elements: !2239)
!2239 = !{!2240, !2245, !2246}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2238, file: !1310, line: 85, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2242, line: 7, size: 64, elements: !2243)
!2242 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2243 = !{!2244}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2241, file: !2242, line: 12, baseType: !1517, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2238, file: !1310, line: 88, baseType: !735, size: 8, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2238, file: !1310, line: 95, baseType: !735, size: 8, offset: 72)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !1377, line: 1184, baseType: !2248, size: 128, offset: 12416)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1376, file: !1377, line: 1184, size: 128, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2248, file: !1377, line: 1185, baseType: !445, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2248, file: !1377, line: 1186, baseType: !621, size: 128, align: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1376, file: !1377, line: 1190, baseType: !2253, size: 64, offset: 12544)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1377, line: 53, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1376, file: !1377, line: 1192, baseType: !2256, size: 128, offset: 12608)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1310, line: 64, size: 128, elements: !2257)
!2257 = !{!2258, !2259, !2260}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2256, file: !1310, line: 65, baseType: !966, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2256, file: !1310, line: 67, baseType: !305, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2256, file: !1310, line: 68, baseType: !305, size: 32, offset: 96)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1376, file: !1377, line: 1206, baseType: !294, size: 32, offset: 12736)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1376, file: !1377, line: 1207, baseType: !294, size: 32, offset: 12768)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1376, file: !1377, line: 1209, baseType: !580, size: 64, offset: 12800)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1376, file: !1377, line: 1219, baseType: !296, size: 64, offset: 12864)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1376, file: !1377, line: 1220, baseType: !296, size: 64, offset: 12928)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1376, file: !1377, line: 1317, baseType: !294, size: 32, offset: 12992)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1376, file: !1377, line: 1319, baseType: !1375, size: 64, offset: 13056)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1376, file: !1377, line: 1322, baseType: !2269, size: 64, offset: 13120)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2271, line: 56, size: 512, elements: !2272)
!2271 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2281}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2270, file: !2271, line: 57, baseType: !2269, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2270, file: !2271, line: 58, baseType: !293, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2270, file: !2271, line: 59, baseType: !580, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2270, file: !2271, line: 60, baseType: !580, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2270, file: !2271, line: 61, baseType: !1061, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2270, file: !2271, line: 62, baseType: !7, size: 32, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2270, file: !2271, line: 63, baseType: !2280, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !292, line: 153, baseType: !296)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2270, file: !2271, line: 64, baseType: !2282, size: 64, offset: 448)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1376, file: !1377, line: 1326, baseType: !445, size: 32, offset: 13184)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1376, file: !1377, line: 1342, baseType: !293, size: 64, offset: 13248)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1376, file: !1377, line: 1343, baseType: !298, size: 64, offset: 13312)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1376, file: !1377, line: 1344, baseType: !296, size: 64, offset: 13376)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1376, file: !1377, line: 1345, baseType: !298, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1376, file: !1377, line: 1346, baseType: !298, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1376, file: !1377, line: 1347, baseType: !298, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1376, file: !1377, line: 1348, baseType: !621, size: 128, align: 64, offset: 13504)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1376, file: !1377, line: 1358, baseType: !2293, size: 34816, offset: 13824)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2294, line: 485, size: 34816, elements: !2295)
!2294 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2295 = !{!2296, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2325, !2326, !2327, !2328, !2329, !2330, !2333, !2334, !2335}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2293, file: !2294, line: 487, baseType: !2297, size: 192)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2298, size: 192, elements: !532)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2299, line: 16, size: 64, elements: !2300)
!2299 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2298, file: !2299, line: 17, baseType: !343, size: 16)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2298, file: !2299, line: 18, baseType: !343, size: 16, offset: 16)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2298, file: !2299, line: 19, baseType: !343, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2298, file: !2299, line: 19, baseType: !343, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2298, file: !2299, line: 19, baseType: !343, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2298, file: !2299, line: 19, baseType: !343, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2298, file: !2299, line: 19, baseType: !343, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2298, file: !2299, line: 20, baseType: !343, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2298, file: !2299, line: 20, baseType: !343, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2298, file: !2299, line: 20, baseType: !343, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2298, file: !2299, line: 20, baseType: !343, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2298, file: !2299, line: 20, baseType: !343, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2298, file: !2299, line: 20, baseType: !343, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2293, file: !2294, line: 491, baseType: !580, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2293, file: !2294, line: 495, baseType: !345, size: 16, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2293, file: !2294, line: 496, baseType: !345, size: 16, offset: 272)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2293, file: !2294, line: 497, baseType: !345, size: 16, offset: 288)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2293, file: !2294, line: 498, baseType: !345, size: 16, offset: 304)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2293, file: !2294, line: 502, baseType: !580, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2293, file: !2294, line: 503, baseType: !580, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2293, file: !2294, line: 514, baseType: !2322, size: 256, offset: 448)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2323, size: 256, elements: !1314)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2294, line: 483, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2293, file: !2294, line: 516, baseType: !580, size: 64, offset: 704)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2293, file: !2294, line: 518, baseType: !580, size: 64, offset: 768)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2293, file: !2294, line: 520, baseType: !580, size: 64, offset: 832)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2293, file: !2294, line: 521, baseType: !580, size: 64, offset: 896)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2293, file: !2294, line: 522, baseType: !580, size: 64, offset: 960)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2293, file: !2294, line: 528, baseType: !2331, size: 64, offset: 1024)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2294, line: 10, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2293, file: !2294, line: 535, baseType: !580, size: 64, offset: 1088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2293, file: !2294, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2293, file: !2294, line: 540, baseType: !2336, size: 33280, offset: 1536)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2337, line: 317, size: 33280, elements: !2338)
!2337 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !{!2339, !2340, !2341}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2336, file: !2337, line: 330, baseType: !7, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2336, file: !2337, line: 337, baseType: !580, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2336, file: !2337, line: 348, baseType: !2342, size: 32768, offset: 512)
!2342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2337, line: 304, size: 32768, elements: !2343)
!2343 = !{!2344, !2359, !2398, !2448, !2461}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2342, file: !2337, line: 305, baseType: !2345, size: 896)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2337, line: 12, size: 896, elements: !2346)
!2346 = !{!2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2358}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2345, file: !2337, line: 13, baseType: !304, size: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2345, file: !2337, line: 14, baseType: !304, size: 32, offset: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2345, file: !2337, line: 15, baseType: !304, size: 32, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2345, file: !2337, line: 16, baseType: !304, size: 32, offset: 96)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2345, file: !2337, line: 17, baseType: !304, size: 32, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2345, file: !2337, line: 18, baseType: !304, size: 32, offset: 160)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2345, file: !2337, line: 19, baseType: !304, size: 32, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2345, file: !2337, line: 22, baseType: !2355, size: 640, offset: 224)
!2355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 640, elements: !2356)
!2356 = !{!2357}
!2357 = !DISubrange(count: 20)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2345, file: !2337, line: 25, baseType: !304, size: 32, offset: 864)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2342, file: !2337, line: 306, baseType: !2360, size: 4096, align: 128)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2337, line: 34, size: 4096, align: 128, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2381, !2382, !2383, !2387, !2389, !2393}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2360, file: !2337, line: 35, baseType: !343, size: 16)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2360, file: !2337, line: 36, baseType: !343, size: 16, offset: 16)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2360, file: !2337, line: 37, baseType: !343, size: 16, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2360, file: !2337, line: 38, baseType: !343, size: 16, offset: 48)
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !2337, line: 39, baseType: !2367, size: 128, offset: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !2337, line: 39, size: 128, elements: !2368)
!2368 = !{!2369, !2374}
!2369 = !DIDerivedType(tag: DW_TAG_member, scope: !2367, file: !2337, line: 40, baseType: !2370, size: 128)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2367, file: !2337, line: 40, size: 128, elements: !2371)
!2371 = !{!2372, !2373}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2370, file: !2337, line: 41, baseType: !296, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2370, file: !2337, line: 42, baseType: !296, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2367, file: !2337, line: 44, baseType: !2375, size: 128)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2367, file: !2337, line: 44, size: 128, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2375, file: !2337, line: 45, baseType: !304, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2375, file: !2337, line: 46, baseType: !304, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2375, file: !2337, line: 47, baseType: !304, size: 32, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2375, file: !2337, line: 48, baseType: !304, size: 32, offset: 96)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2360, file: !2337, line: 51, baseType: !304, size: 32, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2360, file: !2337, line: 52, baseType: !304, size: 32, offset: 224)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2360, file: !2337, line: 55, baseType: !2384, size: 1024, offset: 256)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 1024, elements: !2385)
!2385 = !{!2386}
!2386 = !DISubrange(count: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2360, file: !2337, line: 58, baseType: !2388, size: 2048, offset: 1280)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 2048, elements: !536)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2360, file: !2337, line: 60, baseType: !2390, size: 384, offset: 3328)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 384, elements: !2391)
!2391 = !{!2392}
!2392 = !DISubrange(count: 12)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !2337, line: 62, baseType: !2394, size: 384, offset: 3712)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !2337, line: 62, size: 384, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2394, file: !2337, line: 63, baseType: !2390, size: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2394, file: !2337, line: 64, baseType: !2390, size: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2342, file: !2337, line: 307, baseType: !2399, size: 1088)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2337, line: 79, size: 1088, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2447}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2399, file: !2337, line: 80, baseType: !304, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2399, file: !2337, line: 81, baseType: !304, size: 32, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2399, file: !2337, line: 82, baseType: !304, size: 32, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2399, file: !2337, line: 83, baseType: !304, size: 32, offset: 96)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2399, file: !2337, line: 84, baseType: !304, size: 32, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2399, file: !2337, line: 85, baseType: !304, size: 32, offset: 160)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2399, file: !2337, line: 86, baseType: !304, size: 32, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2399, file: !2337, line: 88, baseType: !2355, size: 640, offset: 224)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2399, file: !2337, line: 89, baseType: !301, size: 8, offset: 864)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2399, file: !2337, line: 90, baseType: !301, size: 8, offset: 872)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2399, file: !2337, line: 91, baseType: !301, size: 8, offset: 880)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2399, file: !2337, line: 92, baseType: !301, size: 8, offset: 888)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2399, file: !2337, line: 93, baseType: !301, size: 8, offset: 896)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2399, file: !2337, line: 94, baseType: !301, size: 8, offset: 904)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2399, file: !2337, line: 95, baseType: !2416, size: 64, offset: 960)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2418, line: 11, size: 128, elements: !2419)
!2418 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2419 = !{!2420, !2421}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2417, file: !2418, line: 12, baseType: !566, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2417, file: !2418, line: 13, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2424, line: 56, size: 1344, elements: !2425)
!2424 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2423, file: !2424, line: 61, baseType: !580, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2423, file: !2424, line: 62, baseType: !580, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2423, file: !2424, line: 63, baseType: !580, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2423, file: !2424, line: 64, baseType: !580, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2423, file: !2424, line: 65, baseType: !580, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2423, file: !2424, line: 66, baseType: !580, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2423, file: !2424, line: 68, baseType: !580, size: 64, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2423, file: !2424, line: 69, baseType: !580, size: 64, offset: 448)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2423, file: !2424, line: 70, baseType: !580, size: 64, offset: 512)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2423, file: !2424, line: 71, baseType: !580, size: 64, offset: 576)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2423, file: !2424, line: 72, baseType: !580, size: 64, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2423, file: !2424, line: 73, baseType: !580, size: 64, offset: 704)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2423, file: !2424, line: 74, baseType: !580, size: 64, offset: 768)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2423, file: !2424, line: 75, baseType: !580, size: 64, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2423, file: !2424, line: 76, baseType: !580, size: 64, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2423, file: !2424, line: 81, baseType: !580, size: 64, offset: 960)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2423, file: !2424, line: 83, baseType: !580, size: 64, offset: 1024)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2423, file: !2424, line: 84, baseType: !580, size: 64, offset: 1088)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2423, file: !2424, line: 85, baseType: !580, size: 64, offset: 1152)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2423, file: !2424, line: 86, baseType: !580, size: 64, offset: 1216)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2423, file: !2424, line: 87, baseType: !580, size: 64, offset: 1280)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2399, file: !2337, line: 96, baseType: !304, size: 32, offset: 1024)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2342, file: !2337, line: 308, baseType: !2449, size: 4608, align: 512)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2337, line: 289, size: 4608, align: 512, elements: !2450)
!2450 = !{!2451, !2452, !2459}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2449, file: !2337, line: 290, baseType: !2360, size: 4096, align: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2449, file: !2337, line: 291, baseType: !2453, size: 512, offset: 4096)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2337, line: 268, size: 512, elements: !2454)
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2453, file: !2337, line: 269, baseType: !296, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2453, file: !2337, line: 270, baseType: !296, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2453, file: !2337, line: 271, baseType: !2458, size: 384, offset: 128)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 384, elements: !470)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2449, file: !2337, line: 292, baseType: !2460, offset: 4608)
!2460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, elements: !1876)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2342, file: !2337, line: 309, baseType: !2462, size: 32768)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 32768, elements: !2463)
!2463 = !{!2464}
!2464 = !DISubrange(count: 4096)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1372, file: !968, line: 378, baseType: !2466, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1368, file: !968, line: 384, baseType: !1657, size: 192, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1217, file: !968, line: 500, baseType: !491, offset: 6656)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1217, file: !968, line: 501, baseType: !2470, size: 64, offset: 6656)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !968, line: 387, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1217, file: !968, line: 516, baseType: !1866, size: 64, offset: 6720)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1217, file: !968, line: 519, baseType: !608, size: 64, offset: 6784)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1217, file: !968, line: 521, baseType: !2475, size: 64, offset: 6848)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !968, line: 521, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1217, file: !968, line: 545, baseType: !450, size: 32, offset: 6912)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1217, file: !968, line: 548, baseType: !735, size: 8, offset: 6944)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1217, file: !968, line: 550, baseType: !2480, offset: 6952)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2481, line: 142, elements: !505)
!2481 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1217, file: !968, line: 554, baseType: !2112, size: 256, offset: 6976)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1217, file: !968, line: 557, baseType: !304, size: 32, offset: 7232)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1214, file: !968, line: 565, baseType: !2485, offset: 7296)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, elements: !2486)
!2486 = !{!2487}
!2487 = !DISubrange(count: -1)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1210, file: !968, line: 151, baseType: !450, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1203, file: !968, line: 156, baseType: !491, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !968, line: 159, baseType: !2491, size: 128)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !968, line: 159, size: 128, elements: !2492)
!2492 = !{!2493, !2496}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2491, file: !968, line: 161, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !968, line: 161, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2491, file: !968, line: 162, baseType: !293, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !972, file: !968, line: 176, baseType: !621, size: 128, align: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 179, baseType: !2499, size: 32, offset: 384)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 179, size: 32, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2499, file: !968, line: 184, baseType: !450, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2499, file: !968, line: 192, baseType: !7, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2499, file: !968, line: 194, baseType: !7, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2499, file: !968, line: 195, baseType: !294, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !967, file: !968, line: 199, baseType: !450, size: 32, offset: 416)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !902, file: !208, line: 1964, baseType: !2507, size: 64, offset: 1344)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!566, !844, !2510}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2512, line: 12, size: 256, elements: !2513)
!2512 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2513 = !{!2514, !2515, !2516, !2517, !2518}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2511, file: !2512, line: 13, baseType: !291, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2511, file: !2512, line: 16, baseType: !294, size: 32, offset: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2511, file: !2512, line: 23, baseType: !580, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2511, file: !2512, line: 30, baseType: !580, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2511, file: !2512, line: 33, baseType: !2519, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !968, line: 27, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !902, file: !208, line: 1966, baseType: !2507, size: 64, offset: 1408)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !845, file: !208, line: 1424, baseType: !2523, size: 64, offset: 448)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2525)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2526)
!2526 = !{!2527, !2573, !2577, !2581, !2582, !2583, !2584, !2585, !2590, !2595, !2599}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2525, file: !202, line: 323, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!294, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2558, !2559, !2560}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2532, file: !202, line: 295, baseType: !884, size: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2532, file: !202, line: 296, baseType: !461, size: 128, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2532, file: !202, line: 297, baseType: !461, size: 128, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2532, file: !202, line: 298, baseType: !461, size: 128, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2532, file: !202, line: 299, baseType: !1332, size: 192, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2532, file: !202, line: 300, baseType: !491, offset: 704)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2532, file: !202, line: 301, baseType: !450, size: 32, offset: 704)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2532, file: !202, line: 302, baseType: !844, size: 64, offset: 768)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2532, file: !202, line: 303, baseType: !2543, size: 64, offset: 832)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2544)
!2544 = !{!2545, !2557}
!2545 = !DIDerivedType(tag: DW_TAG_member, scope: !2543, file: !202, line: 69, baseType: !2546, size: 32)
!2546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2543, file: !202, line: 69, size: 32, elements: !2547)
!2547 = !{!2548, !2549, !2550}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2546, file: !202, line: 70, baseType: !683, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2546, file: !202, line: 71, baseType: !691, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2546, file: !202, line: 72, baseType: !2551, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2552, line: 24, baseType: !2553)
!2552 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2552, line: 22, size: 32, elements: !2554)
!2554 = !{!2555}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2553, file: !2552, line: 23, baseType: !2556, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2552, line: 20, baseType: !689)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2543, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2532, file: !202, line: 304, baseType: !776, size: 64, offset: 896)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2532, file: !202, line: 305, baseType: !580, size: 64, offset: 960)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2532, file: !202, line: 306, baseType: !2561, size: 576, offset: 1024)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2562)
!2562 = !{!2563, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2561, file: !202, line: 206, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !778)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2561, file: !202, line: 207, baseType: !2564, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2561, file: !202, line: 208, baseType: !2564, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2561, file: !202, line: 209, baseType: !2564, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2561, file: !202, line: 210, baseType: !2564, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2561, file: !202, line: 211, baseType: !2564, size: 64, offset: 320)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2561, file: !202, line: 212, baseType: !2564, size: 64, offset: 384)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2561, file: !202, line: 213, baseType: !784, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2561, file: !202, line: 214, baseType: !784, size: 64, offset: 512)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2525, file: !202, line: 324, baseType: !2574, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!2531, !844, !294}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2525, file: !202, line: 325, baseType: !2578, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !2531}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2525, file: !202, line: 326, baseType: !2528, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2525, file: !202, line: 327, baseType: !2528, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2525, file: !202, line: 328, baseType: !2528, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2525, file: !202, line: 329, baseType: !930, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2525, file: !202, line: 332, baseType: !2586, size: 64, offset: 448)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!2589, !677}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2525, file: !202, line: 333, baseType: !2591, size: 64, offset: 512)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!294, !677, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2525, file: !202, line: 335, baseType: !2596, size: 64, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!294, !677, !2589}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2525, file: !202, line: 337, baseType: !2600, size: 64, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!294, !844, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !845, file: !208, line: 1425, baseType: !2605, size: 64, offset: 512)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2608)
!2608 = !{!2609, !2613, !2614, !2618, !2619, !2620, !2635, !2658, !2662, !2663, !2686}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2607, file: !202, line: 429, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!294, !844, !294, !294, !794}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2607, file: !202, line: 430, baseType: !930, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2607, file: !202, line: 431, baseType: !2615, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!294, !844, !7}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2607, file: !202, line: 432, baseType: !2615, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2607, file: !202, line: 433, baseType: !930, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2607, file: !202, line: 434, baseType: !2621, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!294, !844, !294, !2624}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2626)
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2625, file: !202, line: 416, baseType: !294, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2625, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2625, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2625, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2625, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2625, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2625, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2625, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2607, file: !202, line: 435, baseType: !2636, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!294, !844, !2543, !2639}
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2640, file: !202, line: 344, baseType: !294, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2640, file: !202, line: 345, baseType: !296, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2640, file: !202, line: 346, baseType: !296, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2640, file: !202, line: 347, baseType: !296, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2640, file: !202, line: 348, baseType: !296, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2640, file: !202, line: 349, baseType: !296, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2640, file: !202, line: 350, baseType: !296, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2640, file: !202, line: 351, baseType: !1018, size: 64, offset: 448)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2640, file: !202, line: 353, baseType: !1018, size: 64, offset: 512)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2640, file: !202, line: 354, baseType: !294, size: 32, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2640, file: !202, line: 355, baseType: !294, size: 32, offset: 608)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2640, file: !202, line: 356, baseType: !296, size: 64, offset: 640)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2640, file: !202, line: 357, baseType: !296, size: 64, offset: 704)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2640, file: !202, line: 358, baseType: !296, size: 64, offset: 768)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2640, file: !202, line: 359, baseType: !1018, size: 64, offset: 832)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2640, file: !202, line: 360, baseType: !294, size: 32, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2607, file: !202, line: 436, baseType: !2659, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!294, !844, !2603, !2639}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2607, file: !202, line: 438, baseType: !2636, size: 64, offset: 512)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2607, file: !202, line: 439, baseType: !2664, size: 64, offset: 576)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!294, !844, !2667}
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2669)
!2669 = !{!2670, !2671}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2668, file: !202, line: 410, baseType: !7, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2668, file: !202, line: 411, baseType: !2672, size: 1344, offset: 64)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2673, size: 1344, elements: !532)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2685}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2673, file: !202, line: 396, baseType: !7, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2673, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2673, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2673, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2673, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2673, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2673, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2673, file: !202, line: 404, baseType: !300, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2673, file: !202, line: 405, baseType: !2684, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !292, line: 126, baseType: !296)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2673, file: !202, line: 406, baseType: !2684, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2607, file: !202, line: 440, baseType: !2615, size: 64, offset: 640)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !845, file: !208, line: 1426, baseType: !2688, size: 64, offset: 576)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2690)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !845, file: !208, line: 1427, baseType: !580, size: 64, offset: 640)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !845, file: !208, line: 1428, baseType: !580, size: 64, offset: 704)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !845, file: !208, line: 1429, baseType: !580, size: 64, offset: 768)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !845, file: !208, line: 1430, baseType: !638, size: 64, offset: 832)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !845, file: !208, line: 1431, baseType: !1008, size: 256, offset: 896)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !845, file: !208, line: 1432, baseType: !294, size: 32, offset: 1152)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !845, file: !208, line: 1433, baseType: !450, size: 32, offset: 1184)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !845, file: !208, line: 1437, baseType: !2699, size: 64, offset: 1216)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2702)
!2702 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !845, file: !208, line: 1449, baseType: !2704, size: 64, offset: 1280)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !654, line: 34, size: 64, elements: !2705)
!2705 = !{!2706}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2704, file: !654, line: 35, baseType: !657, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !845, file: !208, line: 1450, baseType: !461, size: 128, offset: 1344)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !845, file: !208, line: 1451, baseType: !2709, size: 64, offset: 1472)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !845, file: !208, line: 1452, baseType: !2078, size: 64, offset: 1536)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !845, file: !208, line: 1453, baseType: !2713, size: 64, offset: 1600)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !845, file: !208, line: 1454, baseType: !884, size: 128, offset: 1664)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !845, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !845, file: !208, line: 1456, baseType: !2718, size: 2432, offset: 1856)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2724, !2756}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2718, file: !202, line: 519, baseType: !7, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2718, file: !202, line: 520, baseType: !1008, size: 256, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2718, file: !202, line: 521, baseType: !2723, size: 192, offset: 320)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 192, elements: !532)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2718, file: !202, line: 522, baseType: !2725, size: 1728, offset: 512)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2726, size: 1728, elements: !532)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2727)
!2727 = !{!2728, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2726, file: !202, line: 223, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2731)
!2731 = !{!2732, !2733, !2746, !2747}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2730, file: !202, line: 444, baseType: !294, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2730, file: !202, line: 445, baseType: !2734, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2736)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2736, file: !202, line: 311, baseType: !930, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2736, file: !202, line: 312, baseType: !930, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2736, file: !202, line: 313, baseType: !930, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2736, file: !202, line: 314, baseType: !930, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2736, file: !202, line: 315, baseType: !2528, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2736, file: !202, line: 316, baseType: !2528, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2736, file: !202, line: 317, baseType: !2528, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2736, file: !202, line: 318, baseType: !2600, size: 64, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2730, file: !202, line: 446, baseType: !318, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2730, file: !202, line: 447, baseType: !2729, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2726, file: !202, line: 224, baseType: !294, size: 32, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2726, file: !202, line: 226, baseType: !461, size: 128, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2726, file: !202, line: 227, baseType: !580, size: 64, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2726, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2726, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2726, file: !202, line: 230, baseType: !2564, size: 64, offset: 384)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2726, file: !202, line: 231, baseType: !2564, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2726, file: !202, line: 232, baseType: !293, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2718, file: !202, line: 523, baseType: !2757, size: 192, offset: 2240)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2734, size: 192, elements: !532)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !845, file: !208, line: 1458, baseType: !2759, size: 2112, offset: 4288)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2759, file: !208, line: 1411, baseType: !294, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2759, file: !208, line: 1412, baseType: !1636, size: 128, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2759, file: !208, line: 1413, baseType: !2764, size: 1920, offset: 192)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2765, size: 1920, elements: !532)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2766, line: 12, size: 640, elements: !2767)
!2766 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2767 = !{!2768, !2776, !2777, !2782, !2783}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2765, file: !2766, line: 13, baseType: !2769, size: 320)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2770, line: 17, size: 320, elements: !2771)
!2770 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2771 = !{!2772, !2773, !2774, !2775}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2769, file: !2770, line: 18, baseType: !294, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2769, file: !2770, line: 19, baseType: !294, size: 32, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2769, file: !2770, line: 20, baseType: !1636, size: 128, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2769, file: !2770, line: 22, baseType: !621, size: 128, align: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2765, file: !2766, line: 14, baseType: !370, size: 64, offset: 320)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2765, file: !2766, line: 15, baseType: !2778, size: 64, offset: 384)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2779, line: 16, size: 64, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2780 = !{!2781}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2778, file: !2779, line: 17, baseType: !1375, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2765, file: !2766, line: 16, baseType: !1636, size: 128, offset: 448)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2765, file: !2766, line: 17, baseType: !450, size: 32, offset: 576)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !845, file: !208, line: 1465, baseType: !293, size: 64, offset: 6400)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !845, file: !208, line: 1468, baseType: !304, size: 32, offset: 6464)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !845, file: !208, line: 1470, baseType: !784, size: 64, offset: 6528)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !845, file: !208, line: 1471, baseType: !784, size: 64, offset: 6592)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !845, file: !208, line: 1473, baseType: !305, size: 32, offset: 6656)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !845, file: !208, line: 1474, baseType: !2790, size: 64, offset: 6720)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !845, file: !208, line: 1477, baseType: !2793, size: 256, offset: 6784)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !2385)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !845, file: !208, line: 1478, baseType: !2795, size: 128, offset: 7040)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2796, line: 18, baseType: !2797)
!2796 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2796, line: 16, size: 128, elements: !2798)
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2797, file: !2796, line: 17, baseType: !2800, size: 128)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 128, elements: !1888)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !845, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !845, file: !208, line: 1481, baseType: !2803, size: 32, offset: 7200)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !292, line: 150, baseType: !7)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !845, file: !208, line: 1487, baseType: !1332, size: 192, offset: 7232)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !845, file: !208, line: 1493, baseType: !314, size: 64, offset: 7424)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !845, file: !208, line: 1495, baseType: !2807, size: 64, offset: 7488)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2809)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !636, line: 135, size: 1024, align: 512, elements: !2810)
!2810 = !{!2811, !2815, !2816, !2823, !2829, !2833, !2837, !2841, !2842, !2846, !2850, !2855, !2859}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2809, file: !636, line: 136, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!294, !638, !7}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2809, file: !636, line: 137, baseType: !2812, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2809, file: !636, line: 138, baseType: !2817, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!294, !2820, !2822}
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2809, file: !636, line: 139, baseType: !2824, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!294, !2820, !7, !314, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2809, file: !636, line: 141, baseType: !2830, size: 64, offset: 256)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!294, !2820}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2809, file: !636, line: 142, baseType: !2834, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!294, !638}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2809, file: !636, line: 143, baseType: !2838, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !638}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2809, file: !636, line: 144, baseType: !2838, size: 64, offset: 448)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2809, file: !636, line: 145, baseType: !2843, size: 64, offset: 512)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !638, !677}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2809, file: !636, line: 146, baseType: !2847, size: 64, offset: 576)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!336, !638, !336, !294}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2809, file: !636, line: 147, baseType: !2851, size: 64, offset: 640)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!634, !2854}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2809, file: !636, line: 148, baseType: !2856, size: 64, offset: 704)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!294, !794, !735}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2809, file: !636, line: 149, baseType: !2860, size: 64, offset: 768)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!638, !638, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !845, file: !208, line: 1500, baseType: !294, size: 32, offset: 7552)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !845, file: !208, line: 1502, baseType: !2867, size: 448, offset: 7616)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2512, line: 60, size: 448, elements: !2868)
!2868 = !{!2869, !2874, !2875, !2876, !2877, !2878, !2879}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2867, file: !2512, line: 61, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!580, !2873, !2510}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2867, file: !2512, line: 63, baseType: !2870, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2867, file: !2512, line: 66, baseType: !566, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2867, file: !2512, line: 67, baseType: !294, size: 32, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2867, file: !2512, line: 68, baseType: !7, size: 32, offset: 224)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2867, file: !2512, line: 71, baseType: !461, size: 128, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2867, file: !2512, line: 77, baseType: !2880, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !845, file: !208, line: 1505, baseType: !1012, size: 64, offset: 8064)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !845, file: !208, line: 1508, baseType: !1012, size: 64, offset: 8128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !845, file: !208, line: 1511, baseType: !294, size: 32, offset: 8192)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !845, file: !208, line: 1514, baseType: !1148, size: 32, offset: 8224)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !845, file: !208, line: 1517, baseType: !2886, size: 64, offset: 8256)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2113, line: 18, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !845, file: !208, line: 1518, baseType: !880, size: 64, offset: 8320)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !845, file: !208, line: 1525, baseType: !1866, size: 64, offset: 8384)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !845, file: !208, line: 1532, baseType: !2891, size: 64, offset: 8448)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2892, line: 52, size: 64, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2893 = !{!2894}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2891, file: !2892, line: 53, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2892, line: 40, size: 256, elements: !2897)
!2897 = !{!2898, !2899, !2904}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2896, file: !2892, line: 42, baseType: !491)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2896, file: !2892, line: 44, baseType: !2900, size: 192)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2892, line: 28, size: 192, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2900, file: !2892, line: 29, baseType: !461, size: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2900, file: !2892, line: 31, baseType: !566, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2896, file: !2892, line: 49, baseType: !566, size: 64, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !845, file: !208, line: 1533, baseType: !2891, size: 64, offset: 8512)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !845, file: !208, line: 1534, baseType: !621, size: 128, align: 64, offset: 8576)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !845, file: !208, line: 1535, baseType: !2112, size: 256, offset: 8704)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !845, file: !208, line: 1537, baseType: !1332, size: 192, offset: 8960)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !845, file: !208, line: 1542, baseType: !294, size: 32, offset: 9152)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !845, file: !208, line: 1545, baseType: !491, offset: 9184)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !845, file: !208, line: 1546, baseType: !461, size: 128, offset: 9216)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !845, file: !208, line: 1548, baseType: !491, offset: 9344)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !845, file: !208, line: 1549, baseType: !461, size: 128, offset: 9344)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !678, file: !208, line: 624, baseType: !979, size: 64, offset: 256)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !678, file: !208, line: 631, baseType: !580, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !208, line: 639, baseType: !2917, size: 32, offset: 384)
!2917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !208, line: 639, size: 32, elements: !2918)
!2918 = !{!2919, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2917, file: !208, line: 640, baseType: !2920, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2917, file: !208, line: 641, baseType: !7, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !678, file: !208, line: 643, baseType: !758, size: 32, offset: 416)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !678, file: !208, line: 644, baseType: !776, size: 64, offset: 448)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !678, file: !208, line: 645, baseType: !780, size: 128, offset: 512)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !678, file: !208, line: 646, baseType: !780, size: 128, offset: 640)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !678, file: !208, line: 647, baseType: !780, size: 128, offset: 768)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !678, file: !208, line: 648, baseType: !491, offset: 896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !678, file: !208, line: 649, baseType: !345, size: 16, offset: 896)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !678, file: !208, line: 650, baseType: !301, size: 8, offset: 912)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !678, file: !208, line: 651, baseType: !301, size: 8, offset: 920)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !678, file: !208, line: 652, baseType: !2684, size: 64, offset: 960)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !678, file: !208, line: 659, baseType: !580, size: 64, offset: 1024)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !678, file: !208, line: 660, baseType: !1008, size: 256, offset: 1088)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !678, file: !208, line: 662, baseType: !580, size: 64, offset: 1344)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !678, file: !208, line: 663, baseType: !580, size: 64, offset: 1408)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !678, file: !208, line: 665, baseType: !884, size: 128, offset: 1472)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !678, file: !208, line: 666, baseType: !461, size: 128, offset: 1600)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !678, file: !208, line: 675, baseType: !461, size: 128, offset: 1728)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !678, file: !208, line: 676, baseType: !461, size: 128, offset: 1856)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !678, file: !208, line: 677, baseType: !461, size: 128, offset: 1984)
!2941 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !208, line: 678, baseType: !2942, size: 128, offset: 2112)
!2942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !208, line: 678, size: 128, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2942, file: !208, line: 679, baseType: !880, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2942, file: !208, line: 680, baseType: !621, size: 128, align: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !678, file: !208, line: 682, baseType: !1014, size: 64, offset: 2240)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !678, file: !208, line: 683, baseType: !1014, size: 64, offset: 2304)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !678, file: !208, line: 684, baseType: !450, size: 32, offset: 2368)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !678, file: !208, line: 685, baseType: !450, size: 32, offset: 2400)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !678, file: !208, line: 686, baseType: !450, size: 32, offset: 2432)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !678, file: !208, line: 688, baseType: !450, size: 32, offset: 2464)
!2952 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !208, line: 690, baseType: !2953, size: 64, offset: 2496)
!2953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !208, line: 690, size: 64, elements: !2954)
!2954 = !{!2955, !3187}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2953, file: !208, line: 691, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !2959)
!2959 = !{!2960, !2961, !2965, !2970, !2974, !2975, !2976, !2980, !2993, !2994, !3011, !3015, !3016, !3020, !3021, !3025, !3030, !3031, !3035, !3039, !3147, !3151, !3152, !3156, !3157, !3161, !3165, !3170, !3174, !3178, !3182, !3186}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2958, file: !208, line: 1823, baseType: !318, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2958, file: !208, line: 1824, baseType: !2962, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!776, !608, !776, !294}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2958, file: !208, line: 1825, baseType: !2966, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!562, !608, !336, !577, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2958, file: !208, line: 1826, baseType: !2971, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!562, !608, !314, !577, !2969}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2958, file: !208, line: 1827, baseType: !1085, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2958, file: !208, line: 1828, baseType: !1085, size: 64, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2958, file: !208, line: 1829, baseType: !2977, size: 64, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!294, !1088, !735}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2958, file: !208, line: 1830, baseType: !2981, size: 64, offset: 448)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!294, !608, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !2986)
!2986 = !{!2987, !2992}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2985, file: !208, line: 1777, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!294, !2984, !314, !294, !776, !296, !7}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2985, file: !208, line: 1778, baseType: !776, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2958, file: !208, line: 1831, baseType: !2981, size: 64, offset: 512)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2958, file: !208, line: 1832, baseType: !2995, size: 64, offset: 576)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!2998, !608, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2999, line: 52, baseType: !7)
!2999 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3002, line: 43, size: 128, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3003 = !{!3004, !3010}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3001, file: !3002, line: 44, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3002, line: 37, baseType: !3006)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !608, !3009, !3000}
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3001, file: !3002, line: 45, baseType: !2998, size: 32, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2958, file: !208, line: 1833, baseType: !3012, size: 64, offset: 640)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!566, !608, !7, !580}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2958, file: !208, line: 1834, baseType: !3012, size: 64, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2958, file: !208, line: 1835, baseType: !3017, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!294, !608, !1220}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2958, file: !208, line: 1836, baseType: !580, size: 64, offset: 832)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2958, file: !208, line: 1837, baseType: !3022, size: 64, offset: 896)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!294, !677, !608}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2958, file: !208, line: 1838, baseType: !3026, size: 64, offset: 960)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!294, !608, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !293)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2958, file: !208, line: 1839, baseType: !3022, size: 64, offset: 1024)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2958, file: !208, line: 1840, baseType: !3032, size: 64, offset: 1088)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!294, !608, !776, !776, !294}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2958, file: !208, line: 1841, baseType: !3036, size: 64, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!294, !294, !608, !294}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2958, file: !208, line: 1842, baseType: !3040, size: 64, offset: 1216)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!294, !608, !294, !3043}
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3077, !3078, !3079, !3092, !3123}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3044, file: !208, line: 1063, baseType: !3043, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3044, file: !208, line: 1064, baseType: !461, size: 128, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3044, file: !208, line: 1065, baseType: !884, size: 128, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3044, file: !208, line: 1066, baseType: !461, size: 128, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3044, file: !208, line: 1069, baseType: !461, size: 128, offset: 448)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3044, file: !208, line: 1072, baseType: !3029, size: 64, offset: 576)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3044, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3044, file: !208, line: 1074, baseType: !303, size: 8, offset: 672)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3044, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3044, file: !208, line: 1076, baseType: !294, size: 32, offset: 736)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3044, file: !208, line: 1077, baseType: !1636, size: 128, offset: 768)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3044, file: !208, line: 1078, baseType: !608, size: 64, offset: 896)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3044, file: !208, line: 1079, baseType: !776, size: 64, offset: 960)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3044, file: !208, line: 1080, baseType: !776, size: 64, offset: 1024)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3044, file: !208, line: 1082, baseType: !3061, size: 64, offset: 1088)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3063)
!3063 = !{!3064, !3072, !3073, !3074, !3075, !3076}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3062, file: !208, line: 1315, baseType: !3065)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3066, line: 20, baseType: !3067)
!3066 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3066, line: 11, elements: !3068)
!3068 = !{!3069}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3067, file: !3066, line: 12, baseType: !3070)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !503, line: 33, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 31, elements: !505)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3062, file: !208, line: 1316, baseType: !294, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3062, file: !208, line: 1317, baseType: !294, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3062, file: !208, line: 1318, baseType: !3061, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3062, file: !208, line: 1319, baseType: !608, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3062, file: !208, line: 1320, baseType: !621, size: 128, align: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3044, file: !208, line: 1084, baseType: !580, size: 64, offset: 1152)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3044, file: !208, line: 1085, baseType: !580, size: 64, offset: 1216)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3044, file: !208, line: 1087, baseType: !3080, size: 64, offset: 1280)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3083)
!3083 = !{!3084, !3088}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3082, file: !208, line: 1012, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !3043, !3043}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3082, file: !208, line: 1013, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3043}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3044, file: !208, line: 1088, baseType: !3093, size: 64, offset: 1344)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3096)
!3096 = !{!3097, !3101, !3105, !3106, !3110, !3114, !3118, !3122}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3095, file: !208, line: 1017, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3029, !3029}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3095, file: !208, line: 1018, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !3029}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3095, file: !208, line: 1019, baseType: !3089, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3095, file: !208, line: 1020, baseType: !3107, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!294, !3043, !294}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3095, file: !208, line: 1021, baseType: !3111, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!735, !3043}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3095, file: !208, line: 1022, baseType: !3115, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!294, !3043, !294, !464}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3095, file: !208, line: 1023, baseType: !3119, size: 64, offset: 384)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !3043, !1062}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3095, file: !208, line: 1024, baseType: !3111, size: 64, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3044, file: !208, line: 1097, baseType: !3124, size: 256, offset: 1408)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3044, file: !208, line: 1089, size: 256, elements: !3125)
!3125 = !{!3126, !3135, !3141}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3124, file: !208, line: 1090, baseType: !3127, size: 256)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3128, line: 10, size: 256, elements: !3129)
!3128 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3129 = !{!3130, !3131, !3134}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3127, file: !3128, line: 11, baseType: !304, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3127, file: !3128, line: 12, baseType: !3132, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3128, line: 5, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3127, file: !3128, line: 13, baseType: !461, size: 128, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3124, file: !208, line: 1091, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3128, line: 17, size: 64, elements: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3136, file: !3128, line: 18, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3128, line: 16, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3124, file: !208, line: 1096, baseType: !3142, size: 192)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !208, line: 1092, size: 192, elements: !3143)
!3143 = !{!3144, !3145, !3146}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3142, file: !208, line: 1093, baseType: !461, size: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3142, file: !208, line: 1094, baseType: !294, size: 32, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3142, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2958, file: !208, line: 1843, baseType: !3148, size: 64, offset: 1280)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!562, !608, !966, !294, !577, !2969, !294}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2958, file: !208, line: 1844, baseType: !1260, size: 64, offset: 1344)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2958, file: !208, line: 1845, baseType: !3153, size: 64, offset: 1408)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!294, !294}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2958, file: !208, line: 1846, baseType: !3040, size: 64, offset: 1472)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2958, file: !208, line: 1847, baseType: !3158, size: 64, offset: 1536)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!562, !2253, !608, !2969, !577, !7}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2958, file: !208, line: 1848, baseType: !3162, size: 64, offset: 1600)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!562, !608, !2969, !2253, !577, !7}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2958, file: !208, line: 1849, baseType: !3166, size: 64, offset: 1664)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!294, !608, !566, !3169, !1062}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2958, file: !208, line: 1850, baseType: !3171, size: 64, offset: 1728)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!566, !608, !294, !776, !776}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2958, file: !208, line: 1852, baseType: !3175, size: 64, offset: 1792)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !956, !608}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2958, file: !208, line: 1856, baseType: !3179, size: 64, offset: 1856)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!562, !608, !776, !608, !776, !577, !7}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2958, file: !208, line: 1858, baseType: !3183, size: 64, offset: 1920)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!776, !608, !776, !608, !776, !776, !7}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2958, file: !208, line: 1861, baseType: !3032, size: 64, offset: 1984)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2953, file: !208, line: 692, baseType: !909, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !678, file: !208, line: 694, baseType: !3189, size: 64, offset: 2560)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3190, file: !208, line: 1101, baseType: !491)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3190, file: !208, line: 1102, baseType: !461, size: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3190, file: !208, line: 1103, baseType: !461, size: 128, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3190, file: !208, line: 1104, baseType: !461, size: 128, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !678, file: !208, line: 695, baseType: !980, size: 1216, align: 64, offset: 2624)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !678, file: !208, line: 696, baseType: !461, size: 128, offset: 3840)
!3198 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !208, line: 697, baseType: !3199, size: 64, offset: 3968)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !208, line: 697, size: 64, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3214, !3215}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3199, file: !208, line: 698, baseType: !2253, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3199, file: !208, line: 699, baseType: !2709, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3199, file: !208, line: 700, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3206, line: 14, size: 832, elements: !3207)
!3206 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3205, file: !3206, line: 15, baseType: !478, size: 512)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3205, file: !3206, line: 16, baseType: !318, size: 64, offset: 512)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3205, file: !3206, line: 17, baseType: !2956, size: 64, offset: 576)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3205, file: !3206, line: 18, baseType: !461, size: 128, offset: 640)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3205, file: !3206, line: 19, baseType: !758, size: 32, offset: 768)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3205, file: !3206, line: 20, baseType: !7, size: 32, offset: 800)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3199, file: !208, line: 701, baseType: !336, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3199, file: !208, line: 702, baseType: !7, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !678, file: !208, line: 705, baseType: !305, size: 32, offset: 4032)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !678, file: !208, line: 708, baseType: !305, size: 32, offset: 4064)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !678, file: !208, line: 709, baseType: !2790, size: 64, offset: 4096)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !678, file: !208, line: 720, baseType: !293, size: 64, offset: 4160)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !639, file: !636, line: 98, baseType: !3221, size: 256, offset: 448)
!3221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 256, elements: !2385)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !639, file: !636, line: 101, baseType: !3223, size: 32, offset: 704)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3224, line: 25, size: 32, elements: !3225)
!3224 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3225 = !{!3226}
!3226 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !3224, line: 26, baseType: !3227, size: 32)
!3227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3223, file: !3224, line: 26, size: 32, elements: !3228)
!3228 = !{!3229}
!3229 = !DIDerivedType(tag: DW_TAG_member, scope: !3227, file: !3224, line: 30, baseType: !3230, size: 32)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3224, line: 30, size: 32, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3230, file: !3224, line: 31, baseType: !491)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3230, file: !3224, line: 32, baseType: !294, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !639, file: !636, line: 102, baseType: !2807, size: 64, offset: 768)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !639, file: !636, line: 103, baseType: !844, size: 64, offset: 832)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !639, file: !636, line: 104, baseType: !580, size: 64, offset: 896)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !639, file: !636, line: 105, baseType: !293, size: 64, offset: 960)
!3238 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !636, line: 107, baseType: !3239, size: 128, offset: 1024)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !636, line: 107, size: 128, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3239, file: !636, line: 108, baseType: !461, size: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3239, file: !636, line: 109, baseType: !3009, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !639, file: !636, line: 111, baseType: !461, size: 128, offset: 1152)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !639, file: !636, line: 112, baseType: !461, size: 128, offset: 1280)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !639, file: !636, line: 120, baseType: !3246, size: 128, offset: 1408)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !636, line: 116, size: 128, elements: !3247)
!3247 = !{!3248, !3249, !3250}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3246, file: !636, line: 117, baseType: !884, size: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3246, file: !636, line: 118, baseType: !653, size: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3246, file: !636, line: 119, baseType: !621, size: 128, align: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !609, file: !208, line: 922, baseType: !677, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !609, file: !208, line: 923, baseType: !2956, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !609, file: !208, line: 929, baseType: !491, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !609, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !609, file: !208, line: 931, baseType: !1012, size: 64, offset: 448)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !609, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !609, file: !208, line: 933, baseType: !2803, size: 32, offset: 544)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !609, file: !208, line: 934, baseType: !1332, size: 192, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !609, file: !208, line: 935, baseType: !776, size: 64, offset: 768)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !609, file: !208, line: 936, baseType: !3261, size: 192, offset: 832)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3261, file: !208, line: 886, baseType: !3065)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3261, file: !208, line: 887, baseType: !1626, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3261, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3261, file: !208, line: 889, baseType: !683, size: 32, offset: 96)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3261, file: !208, line: 889, baseType: !683, size: 32, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3261, file: !208, line: 890, baseType: !294, size: 32, offset: 160)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !609, file: !208, line: 937, baseType: !1702, size: 64, offset: 1024)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !609, file: !208, line: 938, baseType: !3271, size: 256, offset: 1088)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3271, file: !208, line: 897, baseType: !580, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3271, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3271, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3271, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3271, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3271, file: !208, line: 904, baseType: !776, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !609, file: !208, line: 940, baseType: !296, size: 64, offset: 1344)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !609, file: !208, line: 945, baseType: !293, size: 64, offset: 1408)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !609, file: !208, line: 949, baseType: !461, size: 128, offset: 1472)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !609, file: !208, line: 950, baseType: !461, size: 128, offset: 1600)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !609, file: !208, line: 952, baseType: !979, size: 64, offset: 1728)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !609, file: !208, line: 953, baseType: !1148, size: 32, offset: 1792)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !609, file: !208, line: 954, baseType: !1148, size: 32, offset: 1824)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !599, file: !556, line: 174, baseType: !605, size: 64, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !599, file: !556, line: 176, baseType: !3288, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!294, !608, !484, !598, !1220}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !587, file: !556, line: 90, baseType: !582, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !587, file: !556, line: 91, baseType: !3293, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !546, file: !479, line: 143, baseType: !3295, size: 64, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!3298, !484}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3301)
!3301 = !{!3302, !3303, !3307, !3311, !3317, !3321}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3300, file: !225, line: 40, baseType: !224, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3300, file: !225, line: 41, baseType: !3304, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!735}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3300, file: !225, line: 42, baseType: !3308, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!293}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3300, file: !225, line: 43, baseType: !3312, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!2282, !3315}
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3300, file: !225, line: 44, baseType: !3318, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!2282}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3300, file: !225, line: 45, baseType: !338, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !546, file: !479, line: 144, baseType: !3323, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!2282, !484}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !546, file: !479, line: 145, baseType: !3327, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !484, !3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !478, file: !479, line: 70, baseType: !3333, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !864, line: 123, size: 1024, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3464, !3465, !3466, !3467, !3468}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3334, file: !864, line: 124, baseType: !450, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3334, file: !864, line: 125, baseType: !450, size: 32, offset: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3334, file: !864, line: 135, baseType: !3333, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3334, file: !864, line: 136, baseType: !314, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3334, file: !864, line: 138, baseType: !1001, size: 192, align: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3334, file: !864, line: 140, baseType: !2282, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3334, file: !864, line: 141, baseType: !7, size: 32, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, scope: !3334, file: !864, line: 142, baseType: !3344, size: 256, offset: 512)
!3344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3334, file: !864, line: 142, size: 256, elements: !3345)
!3345 = !{!3346, !3392, !3396}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3344, file: !864, line: 143, baseType: !3347, size: 192)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !864, line: 91, size: 192, elements: !3348)
!3348 = !{!3349, !3350, !3351}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3347, file: !864, line: 92, baseType: !580, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3347, file: !864, line: 94, baseType: !997, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3347, file: !864, line: 100, baseType: !3352, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !864, line: 180, size: 704, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3364, !3365, !3366, !3390, !3391}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3353, file: !864, line: 182, baseType: !3333, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3353, file: !864, line: 183, baseType: !7, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3353, file: !864, line: 186, baseType: !3358, size: 192, offset: 128)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3359, line: 19, size: 192, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !{!3361, !3362, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3358, file: !3359, line: 20, baseType: !984, size: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3358, file: !3359, line: 21, baseType: !7, size: 32, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3358, file: !3359, line: 22, baseType: !7, size: 32, offset: 160)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3353, file: !864, line: 187, baseType: !304, size: 32, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3353, file: !864, line: 188, baseType: !304, size: 32, offset: 352)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3353, file: !864, line: 189, baseType: !3367, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !864, line: 168, size: 320, elements: !3369)
!3369 = !{!3370, !3374, !3378, !3382, !3386}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3368, file: !864, line: 169, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!294, !956, !3352}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3368, file: !864, line: 171, baseType: !3375, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!294, !3333, !314, !572}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3368, file: !864, line: 173, baseType: !3379, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!294, !3333}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3368, file: !864, line: 174, baseType: !3383, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!294, !3333, !3333, !314}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3368, file: !864, line: 176, baseType: !3387, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!294, !956, !3333, !3352}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3353, file: !864, line: 192, baseType: !461, size: 128, offset: 448)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3353, file: !864, line: 194, baseType: !1636, size: 128, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3344, file: !864, line: 144, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !864, line: 103, size: 64, elements: !3394)
!3394 = !{!3395}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3393, file: !864, line: 104, baseType: !3333, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3344, file: !864, line: 145, baseType: !3397, size: 256)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !864, line: 107, size: 256, elements: !3398)
!3398 = !{!3399, !3459, !3462, !3463}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3397, file: !864, line: 108, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3402)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !864, line: 217, size: 768, elements: !3403)
!3403 = !{!3404, !3424, !3428, !3432, !3436, !3440, !3444, !3448, !3449, !3450, !3451, !3455}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3402, file: !864, line: 222, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!294, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !864, line: 197, size: 1088, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3409, file: !864, line: 199, baseType: !3333, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3409, file: !864, line: 200, baseType: !608, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3409, file: !864, line: 201, baseType: !956, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3409, file: !864, line: 202, baseType: !293, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3409, file: !864, line: 205, baseType: !1332, size: 192, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3409, file: !864, line: 206, baseType: !1332, size: 192, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3409, file: !864, line: 207, baseType: !294, size: 32, offset: 640)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3409, file: !864, line: 208, baseType: !461, size: 128, offset: 704)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3409, file: !864, line: 209, baseType: !336, size: 64, offset: 832)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3409, file: !864, line: 211, baseType: !577, size: 64, offset: 896)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3409, file: !864, line: 212, baseType: !735, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3409, file: !864, line: 213, baseType: !735, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3409, file: !864, line: 214, baseType: !1248, size: 64, offset: 1024)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3402, file: !864, line: 223, baseType: !3425, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !3408}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3402, file: !864, line: 236, baseType: !3429, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!294, !956, !293}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3402, file: !864, line: 238, baseType: !3433, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!293, !956, !2969}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3402, file: !864, line: 239, baseType: !3437, size: 64, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!293, !956, !293, !2969}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3402, file: !864, line: 240, baseType: !3441, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !956, !293}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3402, file: !864, line: 242, baseType: !3445, size: 64, offset: 384)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!562, !3408, !336, !577, !776}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3402, file: !864, line: 252, baseType: !577, size: 64, offset: 448)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3402, file: !864, line: 259, baseType: !735, size: 8, offset: 512)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3402, file: !864, line: 260, baseType: !3445, size: 64, offset: 576)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3402, file: !864, line: 263, baseType: !3452, size: 64, offset: 640)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!2998, !3408, !3000}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3402, file: !864, line: 266, baseType: !3456, size: 64, offset: 704)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!294, !3408, !1220}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3397, file: !864, line: 109, baseType: !3460, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !864, line: 31, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3397, file: !864, line: 110, baseType: !776, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3397, file: !864, line: 111, baseType: !3333, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3334, file: !864, line: 148, baseType: !293, size: 64, offset: 768)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3334, file: !864, line: 154, baseType: !296, size: 64, offset: 832)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3334, file: !864, line: 156, baseType: !345, size: 16, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3334, file: !864, line: 157, baseType: !572, size: 16, offset: 912)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3334, file: !864, line: 158, baseType: !3469, size: 64, offset: 960)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !864, line: 32, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !478, file: !479, line: 71, baseType: !441, size: 32, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !478, file: !479, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !478, file: !479, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !478, file: !479, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !478, file: !479, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !478, file: !479, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !475, file: !237, line: 463, baseType: !474, size: 64, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !475, file: !237, line: 465, baseType: !3479, size: 64, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !475, file: !237, line: 467, baseType: !314, size: 64, offset: 640)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !237, line: 468, baseType: !3483, size: 64, offset: 704)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3485)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3493, !3498, !3502}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3485, file: !237, line: 88, baseType: !314, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3485, file: !237, line: 89, baseType: !584, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3485, file: !237, line: 90, baseType: !3490, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!294, !474, !527}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3485, file: !237, line: 91, baseType: !3494, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!336, !474, !3497, !3330, !3331}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3485, file: !237, line: 93, baseType: !3499, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !474}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3485, file: !237, line: 95, baseType: !3503, size: 64, offset: 320)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3505)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3506)
!3506 = !{!3507, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3505, file: !244, line: 279, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!294, !474}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3505, file: !244, line: 280, baseType: !3499, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3505, file: !244, line: 281, baseType: !3508, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3505, file: !244, line: 282, baseType: !3508, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3505, file: !244, line: 283, baseType: !3508, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3505, file: !244, line: 284, baseType: !3508, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3505, file: !244, line: 285, baseType: !3508, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3505, file: !244, line: 286, baseType: !3508, size: 64, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3505, file: !244, line: 287, baseType: !3508, size: 64, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3505, file: !244, line: 288, baseType: !3508, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3505, file: !244, line: 289, baseType: !3508, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3505, file: !244, line: 290, baseType: !3508, size: 64, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3505, file: !244, line: 291, baseType: !3508, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3505, file: !244, line: 292, baseType: !3508, size: 64, offset: 832)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3505, file: !244, line: 293, baseType: !3508, size: 64, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3505, file: !244, line: 294, baseType: !3508, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3505, file: !244, line: 295, baseType: !3508, size: 64, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3505, file: !244, line: 296, baseType: !3508, size: 64, offset: 1088)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3505, file: !244, line: 297, baseType: !3508, size: 64, offset: 1152)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3505, file: !244, line: 298, baseType: !3508, size: 64, offset: 1216)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3505, file: !244, line: 299, baseType: !3508, size: 64, offset: 1280)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3505, file: !244, line: 300, baseType: !3508, size: 64, offset: 1344)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3505, file: !244, line: 301, baseType: !3508, size: 64, offset: 1408)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !475, file: !237, line: 470, baseType: !3534, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3536, line: 82, size: 1408, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3614, !3617, !3618}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3535, file: !3536, line: 83, baseType: !314, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3535, file: !3536, line: 84, baseType: !314, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3535, file: !3536, line: 85, baseType: !474, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3535, file: !3536, line: 86, baseType: !584, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3535, file: !3536, line: 87, baseType: !584, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3535, file: !3536, line: 88, baseType: !584, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3535, file: !3536, line: 90, baseType: !3545, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!294, !474, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3556, !3557, !3567, !3578, !3579, !3580, !3581, !3582, !3590, !3591, !3592, !3593, !3594, !3595}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3549, file: !231, line: 96, baseType: !314, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3549, file: !231, line: 97, baseType: !3534, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3549, file: !231, line: 99, baseType: !318, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3549, file: !231, line: 100, baseType: !314, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3549, file: !231, line: 102, baseType: !735, size: 8, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3549, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3549, file: !231, line: 105, baseType: !3558, size: 64, offset: 320)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3560)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3561, line: 262, size: 1600, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3562 = !{!3563, !3564, !3565, !3566}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3560, file: !3561, line: 263, baseType: !2793, size: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3560, file: !3561, line: 264, baseType: !2793, size: 256, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3560, file: !3561, line: 265, baseType: !418, size: 1024, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3560, file: !3561, line: 266, baseType: !2282, size: 64, offset: 1536)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3549, file: !231, line: 106, baseType: !3568, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3570)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3561, line: 210, size: 256, elements: !3571)
!3571 = !{!3572, !3574, !3576, !3577}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3570, file: !3561, line: 211, baseType: !3573, size: 72)
!3573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 72, elements: !407)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3570, file: !3561, line: 212, baseType: !3575, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3561, line: 14, baseType: !580)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3570, file: !3561, line: 213, baseType: !305, size: 32, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3570, file: !3561, line: 214, baseType: !305, size: 32, offset: 224)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3549, file: !231, line: 108, baseType: !3508, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3549, file: !231, line: 109, baseType: !3499, size: 64, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3549, file: !231, line: 110, baseType: !3508, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3549, file: !231, line: 111, baseType: !3499, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3549, file: !231, line: 112, baseType: !3583, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!294, !474, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3587)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3588)
!3588 = !{!3589}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3587, file: !244, line: 51, baseType: !294, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3549, file: !231, line: 113, baseType: !3508, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3549, file: !231, line: 114, baseType: !584, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3549, file: !231, line: 115, baseType: !584, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3549, file: !231, line: 117, baseType: !3503, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3549, file: !231, line: 118, baseType: !3499, size: 64, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3549, file: !231, line: 120, baseType: !3596, size: 64, offset: 1088)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3535, file: !3536, line: 91, baseType: !3490, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3535, file: !3536, line: 92, baseType: !3508, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3535, file: !3536, line: 93, baseType: !3499, size: 64, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3535, file: !3536, line: 94, baseType: !3508, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3535, file: !3536, line: 95, baseType: !3499, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3535, file: !3536, line: 97, baseType: !3508, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3535, file: !3536, line: 98, baseType: !3508, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3535, file: !3536, line: 100, baseType: !3583, size: 64, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3535, file: !3536, line: 101, baseType: !3508, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3535, file: !3536, line: 103, baseType: !3508, size: 64, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3535, file: !3536, line: 105, baseType: !3508, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3535, file: !3536, line: 107, baseType: !3503, size: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3535, file: !3536, line: 109, baseType: !3611, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3613)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3536, line: 109, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3535, file: !3536, line: 111, baseType: !3615, size: 64, offset: 1280)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3536, line: 111, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3535, file: !3536, line: 112, baseType: !890, offset: 1344)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3535, file: !3536, line: 114, baseType: !735, size: 8, offset: 1344)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !475, file: !237, line: 471, baseType: !3548, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !475, file: !237, line: 473, baseType: !293, size: 64, offset: 896)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !475, file: !237, line: 475, baseType: !293, size: 64, offset: 960)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !475, file: !237, line: 480, baseType: !1332, size: 192, offset: 1024)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !475, file: !237, line: 484, baseType: !3624, size: 576, offset: 1216)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3624, file: !237, line: 362, baseType: !461, size: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3624, file: !237, line: 363, baseType: !461, size: 128, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3624, file: !237, line: 364, baseType: !461, size: 128, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3624, file: !237, line: 365, baseType: !461, size: 128, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3624, file: !237, line: 366, baseType: !735, size: 8, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3624, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !475, file: !237, line: 485, baseType: !3633, size: 2304, offset: 1792)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3730, !3734}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3633, file: !244, line: 566, baseType: !3586, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3633, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3633, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3633, file: !244, line: 569, baseType: !735, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3633, file: !244, line: 570, baseType: !735, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3633, file: !244, line: 571, baseType: !735, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3633, file: !244, line: 572, baseType: !735, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3633, file: !244, line: 573, baseType: !735, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3633, file: !244, line: 574, baseType: !735, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3633, file: !244, line: 575, baseType: !735, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3633, file: !244, line: 576, baseType: !735, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3633, file: !244, line: 577, baseType: !304, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3633, file: !244, line: 578, baseType: !491, offset: 96)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3633, file: !244, line: 580, baseType: !461, size: 128, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3633, file: !244, line: 581, baseType: !1657, size: 192, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3633, file: !244, line: 582, baseType: !3651, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3653, line: 43, size: 1472, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3662, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !3653, line: 44, baseType: !314, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3652, file: !3653, line: 45, baseType: !294, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3652, file: !3653, line: 46, baseType: !461, size: 128, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3652, file: !3653, line: 47, baseType: !491, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3652, file: !3653, line: 48, baseType: !3660, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3652, file: !3653, line: 49, baseType: !3663, size: 320, offset: 320)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3664, line: 11, size: 320, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3665 = !{!3666, !3667, !3668, !3673}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3663, file: !3664, line: 16, baseType: !884, size: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3663, file: !3664, line: 17, baseType: !580, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3663, file: !3664, line: 18, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !3664, line: 19, baseType: !304, size: 32, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3652, file: !3653, line: 50, baseType: !580, size: 64, offset: 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3652, file: !3653, line: 51, baseType: !1454, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3652, file: !3653, line: 52, baseType: !1454, size: 64, offset: 768)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3652, file: !3653, line: 53, baseType: !1454, size: 64, offset: 832)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3652, file: !3653, line: 54, baseType: !1454, size: 64, offset: 896)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3652, file: !3653, line: 55, baseType: !1454, size: 64, offset: 960)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3652, file: !3653, line: 56, baseType: !580, size: 64, offset: 1024)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3652, file: !3653, line: 57, baseType: !580, size: 64, offset: 1088)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3652, file: !3653, line: 58, baseType: !580, size: 64, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3652, file: !3653, line: 59, baseType: !580, size: 64, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3652, file: !3653, line: 60, baseType: !580, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3652, file: !3653, line: 61, baseType: !474, size: 64, offset: 1344)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3652, file: !3653, line: 62, baseType: !735, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3652, file: !3653, line: 63, baseType: !735, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3633, file: !244, line: 583, baseType: !735, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3633, file: !244, line: 584, baseType: !735, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3633, file: !244, line: 585, baseType: !735, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3633, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3633, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3633, file: !244, line: 592, baseType: !1446, size: 512, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3633, file: !244, line: 593, baseType: !296, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3633, file: !244, line: 594, baseType: !2112, size: 256, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3633, file: !244, line: 595, baseType: !1636, size: 128, offset: 1408)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3633, file: !244, line: 596, baseType: !3660, size: 64, offset: 1536)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3633, file: !244, line: 597, baseType: !450, size: 32, offset: 1600)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3633, file: !244, line: 598, baseType: !450, size: 32, offset: 1632)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3633, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3633, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3633, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3633, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3633, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3633, file: !244, line: 604, baseType: !735, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3633, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3633, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3633, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3633, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3633, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3633, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3633, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3633, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3633, file: !244, line: 613, baseType: !294, size: 32, offset: 1792)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3633, file: !244, line: 614, baseType: !294, size: 32, offset: 1824)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3633, file: !244, line: 615, baseType: !296, size: 64, offset: 1856)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3633, file: !244, line: 616, baseType: !296, size: 64, offset: 1920)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3633, file: !244, line: 617, baseType: !296, size: 64, offset: 1984)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3633, file: !244, line: 618, baseType: !296, size: 64, offset: 2048)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3633, file: !244, line: 620, baseType: !3721, size: 64, offset: 2112)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3722, file: !244, line: 537, baseType: !491)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3722, file: !244, line: 538, baseType: !7, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3722, file: !244, line: 540, baseType: !461, size: 128, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3722, file: !244, line: 543, baseType: !3728, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3633, file: !244, line: 621, baseType: !3731, size: 64, offset: 2176)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !474, !1594}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3633, file: !244, line: 622, baseType: !3735, size: 64, offset: 2240)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !475, file: !237, line: 486, baseType: !3738, size: 64, offset: 4096)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3747, !3748, !3749}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3739, file: !244, line: 643, baseType: !3505, size: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3739, file: !244, line: 644, baseType: !3508, size: 64, offset: 1472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3739, file: !244, line: 645, baseType: !3744, size: 64, offset: 1536)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !474, !735}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3739, file: !244, line: 646, baseType: !3508, size: 64, offset: 1600)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3739, file: !244, line: 647, baseType: !3499, size: 64, offset: 1664)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3739, file: !244, line: 648, baseType: !3499, size: 64, offset: 1728)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !475, file: !237, line: 493, baseType: !3751, size: 64, offset: 4160)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3753)
!3753 = !{!3754, !3755, !3756, !3929, !3930, !3931, !3932, !3933, !3934, !3937, !3938, !3939, !3940, !3941, !3942, !3943}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3752, file: !258, line: 163, baseType: !461, size: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3752, file: !258, line: 164, baseType: !314, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3752, file: !258, line: 165, baseType: !3757, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3759)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3760)
!3760 = !{!3761, !3879, !3890, !3895, !3899, !3906, !3910, !3914, !3921, !3925}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3759, file: !258, line: 106, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!294, !3751, !3765, !257}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3767, line: 51, size: 1344, elements: !3768)
!3767 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3768 = !{!3769, !3770, !3772, !3773, !3863, !3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3766, file: !3767, line: 52, baseType: !314, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3766, file: !3767, line: 53, baseType: !3771, size: 32, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3767, line: 28, baseType: !304)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3766, file: !3767, line: 54, baseType: !314, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3766, file: !3767, line: 55, baseType: !3774, size: 192, offset: 192)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3775, line: 17, size: 192, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3776 = !{!3777, !3779, !3862}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3774, file: !3775, line: 18, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3774, file: !3775, line: 19, baseType: !3780, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3775, line: 110, size: 1152, elements: !3783)
!3783 = !{!3784, !3788, !3792, !3798, !3804, !3808, !3812, !3817, !3821, !3822, !3826, !3830, !3834, !3845, !3846, !3847, !3848, !3858}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3782, file: !3775, line: 111, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!3778, !3778}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3782, file: !3775, line: 112, baseType: !3789, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3778}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3782, file: !3775, line: 113, baseType: !3793, size: 64, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!735, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3774)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3782, file: !3775, line: 114, baseType: !3799, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!2282, !3796, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3782, file: !3775, line: 116, baseType: !3805, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!735, !3796, !314}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3782, file: !3775, line: 118, baseType: !3809, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!294, !3796, !314, !7, !293, !577}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3782, file: !3775, line: 123, baseType: !3813, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!294, !3796, !314, !3816, !577}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3782, file: !3775, line: 126, baseType: !3818, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!314, !3796}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3782, file: !3775, line: 127, baseType: !3818, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3782, file: !3775, line: 128, baseType: !3823, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!3778, !3796}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3782, file: !3775, line: 130, baseType: !3827, size: 64, offset: 640)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!3778, !3796, !3778}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3782, file: !3775, line: 133, baseType: !3831, size: 64, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!3778, !3796, !314}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3782, file: !3775, line: 135, baseType: !3835, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!294, !3796, !314, !314, !7, !7, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3775, line: 43, size: 640, elements: !3840)
!3840 = !{!3841, !3842, !3843}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3839, file: !3775, line: 44, baseType: !3778, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3839, file: !3775, line: 45, baseType: !7, size: 32, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3839, file: !3775, line: 46, baseType: !3844, size: 512, offset: 128)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 512, elements: !431)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3782, file: !3775, line: 140, baseType: !3827, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3782, file: !3775, line: 143, baseType: !3823, size: 64, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3782, file: !3775, line: 145, baseType: !3785, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3782, file: !3775, line: 146, baseType: !3849, size: 64, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!294, !3796, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3775, line: 29, size: 128, elements: !3854)
!3854 = !{!3855, !3856, !3857}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3853, file: !3775, line: 30, baseType: !7, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3853, file: !3775, line: 31, baseType: !7, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3853, file: !3775, line: 32, baseType: !3796, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3782, file: !3775, line: 148, baseType: !3859, size: 64, offset: 1088)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!294, !3796, !474}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3774, file: !3775, line: 20, baseType: !474, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3766, file: !3767, line: 57, baseType: !3864, size: 64, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3767, line: 31, size: 704, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3865, file: !3767, line: 32, baseType: !336, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3865, file: !3767, line: 33, baseType: !294, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3865, file: !3767, line: 34, baseType: !293, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3865, file: !3767, line: 35, baseType: !3864, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3865, file: !3767, line: 43, baseType: !599, size: 448, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3766, file: !3767, line: 58, baseType: !3864, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3766, file: !3767, line: 59, baseType: !3765, size: 64, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3766, file: !3767, line: 60, baseType: !3765, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3766, file: !3767, line: 61, baseType: !3765, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3766, file: !3767, line: 63, baseType: !478, size: 512, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3766, file: !3767, line: 65, baseType: !580, size: 64, offset: 1216)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3766, file: !3767, line: 66, baseType: !293, size: 64, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3759, file: !258, line: 108, baseType: !3880, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!294, !3751, !3883, !257}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3885)
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3884, file: !258, line: 64, baseType: !3778, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3884, file: !258, line: 65, baseType: !294, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3884, file: !258, line: 66, baseType: !3889, size: 512, offset: 96)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 512, elements: !1888)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3759, file: !258, line: 110, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!294, !3751, !7, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !292, line: 164, baseType: !580)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3759, file: !258, line: 111, baseType: !3896, size: 64, offset: 192)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3751, !7}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3759, file: !258, line: 112, baseType: !3900, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!294, !3751, !3765, !3903, !7, !3905, !370}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3759, file: !258, line: 117, baseType: !3907, size: 64, offset: 320)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!294, !3751, !7, !7, !293}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3759, file: !258, line: 119, baseType: !3911, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !3751, !7, !7}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3759, file: !258, line: 121, baseType: !3915, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!294, !3751, !3918, !735}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3920, line: 11, flags: DIFlagFwdDecl)
!3920 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3759, file: !258, line: 122, baseType: !3922, size: 64, offset: 512)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !3751, !3918}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3759, file: !258, line: 123, baseType: !3926, size: 64, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!294, !3751, !3883, !3905, !370}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3752, file: !258, line: 166, baseType: !293, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3752, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3752, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3752, file: !258, line: 171, baseType: !3778, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3752, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3752, file: !258, line: 173, baseType: !3935, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3752, file: !258, line: 175, baseType: !3751, size: 64, offset: 576)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3752, file: !258, line: 182, baseType: !3894, size: 64, offset: 640)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3752, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3752, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3752, file: !258, line: 185, baseType: !984, size: 128, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3752, file: !258, line: 186, baseType: !1332, size: 192, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3752, file: !258, line: 187, baseType: !3944, offset: 1088)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2486)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !475, file: !237, line: 499, baseType: !461, size: 128, offset: 4224)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !475, file: !237, line: 502, baseType: !3947, size: 64, offset: 4352)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3949)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !475, file: !237, line: 504, baseType: !3951, size: 64, offset: 4416)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !475, file: !237, line: 505, baseType: !296, size: 64, offset: 4480)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !475, file: !237, line: 510, baseType: !296, size: 64, offset: 4544)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !475, file: !237, line: 511, baseType: !3955, size: 64, offset: 4608)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !475, file: !237, line: 513, baseType: !3959, size: 64, offset: 4672)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3961)
!3961 = !{!3962, !3963}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3960, file: !237, line: 293, baseType: !7, size: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3960, file: !237, line: 294, baseType: !580, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !475, file: !237, line: 515, baseType: !461, size: 128, offset: 4736)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !475, file: !237, line: 526, baseType: !3966, offset: 4864)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3967, line: 5, elements: !505)
!3967 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !475, file: !237, line: 528, baseType: !3765, size: 64, offset: 4864)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !475, file: !237, line: 529, baseType: !3778, size: 64, offset: 4928)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !475, file: !237, line: 534, baseType: !758, size: 32, offset: 4992)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !475, file: !237, line: 535, baseType: !304, size: 32, offset: 5024)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !475, file: !237, line: 537, baseType: !491, offset: 5056)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !475, file: !237, line: 538, baseType: !461, size: 128, offset: 5056)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !475, file: !237, line: 540, baseType: !3975, size: 64, offset: 5184)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3977, line: 54, size: 960, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3989, !3993, !3994, !3995, !3996, !4000, !4004, !4005}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3976, file: !3977, line: 55, baseType: !314, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3976, file: !3977, line: 56, baseType: !318, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3976, file: !3977, line: 58, baseType: !584, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3976, file: !3977, line: 59, baseType: !584, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3976, file: !3977, line: 60, baseType: !484, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3976, file: !3977, line: 62, baseType: !3490, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3976, file: !3977, line: 63, baseType: !3986, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!336, !474, !3497}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3976, file: !3977, line: 65, baseType: !3990, size: 64, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !3975}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3976, file: !3977, line: 66, baseType: !3499, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3976, file: !3977, line: 68, baseType: !3508, size: 64, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3976, file: !3977, line: 70, baseType: !3298, size: 64, offset: 640)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3976, file: !3977, line: 71, baseType: !3997, size: 64, offset: 704)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!2282, !474}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3976, file: !3977, line: 73, baseType: !4001, size: 64, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null, !474, !3330, !3331}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3976, file: !3977, line: 75, baseType: !3503, size: 64, offset: 832)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3976, file: !3977, line: 77, baseType: !3615, size: 64, offset: 896)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !475, file: !237, line: 541, baseType: !584, size: 64, offset: 5248)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !475, file: !237, line: 543, baseType: !3499, size: 64, offset: 5312)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !475, file: !237, line: 544, baseType: !4009, size: 64, offset: 5376)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !475, file: !237, line: 545, baseType: !4012, size: 64, offset: 5440)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !475, file: !237, line: 547, baseType: !735, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !475, file: !237, line: 548, baseType: !735, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !475, file: !237, line: 549, baseType: !735, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !475, file: !237, line: 550, baseType: !735, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !457, file: !272, line: 111, baseType: !318, size: 64, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !457, file: !272, line: 113, baseType: !294, size: 32, offset: 640)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !457, file: !272, line: 114, baseType: !4021, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4038}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4022, file: !272, line: 158, baseType: !461, size: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4022, file: !272, line: 159, baseType: !2956, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4022, file: !272, line: 160, baseType: !456, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4022, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4022, file: !272, line: 162, baseType: !294, size: 32, offset: 288)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4022, file: !272, line: 163, baseType: !304, size: 32, offset: 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4022, file: !272, line: 167, baseType: !294, size: 32, offset: 352)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4022, file: !272, line: 168, baseType: !294, size: 32, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4022, file: !272, line: 169, baseType: !294, size: 32, offset: 416)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4022, file: !272, line: 171, baseType: !1636, size: 128, offset: 448)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4022, file: !272, line: 173, baseType: !4035, size: 64, offset: 576)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!294, !608, !7, !293}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4022, file: !272, line: 187, baseType: !293, size: 64, offset: 640)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !457, file: !272, line: 115, baseType: !1332, size: 192, offset: 768)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !438, file: !51, line: 690, baseType: !293, size: 64, offset: 6144)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !438, file: !51, line: 691, baseType: !293, size: 64, offset: 6208)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !438, file: !51, line: 692, baseType: !293, size: 64, offset: 6272)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !438, file: !51, line: 693, baseType: !293, size: 64, offset: 6336)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !438, file: !51, line: 694, baseType: !293, size: 64, offset: 6400)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !438, file: !51, line: 695, baseType: !4046, size: 3648, offset: 6464)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4047)
!4047 = !{!4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4111, !4112, !4113, !4114, !4115, !4116, !4117}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4046, file: !51, line: 587, baseType: !304, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4046, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4046, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4046, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4046, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4046, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4046, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4046, file: !51, line: 595, baseType: !304, size: 32, offset: 224)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4046, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4046, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4046, file: !51, line: 598, baseType: !304, size: 32, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4046, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4046, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4046, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4046, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4046, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4046, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4046, file: !51, line: 610, baseType: !301, size: 8, offset: 544)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4046, file: !51, line: 611, baseType: !301, size: 8, offset: 552)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4046, file: !51, line: 612, baseType: !301, size: 8, offset: 560)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4046, file: !51, line: 613, baseType: !304, size: 32, offset: 576)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4046, file: !51, line: 614, baseType: !304, size: 32, offset: 608)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4046, file: !51, line: 615, baseType: !301, size: 8, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4046, file: !51, line: 621, baseType: !4072, size: 384, offset: 672)
!4072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4073, size: 384, elements: !532)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4046, file: !51, line: 616, size: 128, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4073, file: !51, line: 617, baseType: !301, size: 8)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4073, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4073, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4073, file: !51, line: 620, baseType: !301, size: 8, offset: 96)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4046, file: !51, line: 624, baseType: !304, size: 32, offset: 1056)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4046, file: !51, line: 627, baseType: !304, size: 32, offset: 1088)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4046, file: !51, line: 630, baseType: !301, size: 8, offset: 1120)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4046, file: !51, line: 631, baseType: !301, size: 8, offset: 1128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4046, file: !51, line: 632, baseType: !301, size: 8, offset: 1136)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4046, file: !51, line: 633, baseType: !301, size: 8, offset: 1144)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4046, file: !51, line: 634, baseType: !301, size: 8, offset: 1152)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4046, file: !51, line: 635, baseType: !301, size: 8, offset: 1160)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4046, file: !51, line: 637, baseType: !301, size: 8, offset: 1168)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4046, file: !51, line: 638, baseType: !301, size: 8, offset: 1176)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4046, file: !51, line: 639, baseType: !301, size: 8, offset: 1184)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4046, file: !51, line: 640, baseType: !301, size: 8, offset: 1192)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4046, file: !51, line: 641, baseType: !301, size: 8, offset: 1200)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4046, file: !51, line: 642, baseType: !301, size: 8, offset: 1208)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4046, file: !51, line: 643, baseType: !301, size: 8, offset: 1216)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4046, file: !51, line: 644, baseType: !301, size: 8, offset: 1224)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4046, file: !51, line: 645, baseType: !301, size: 8, offset: 1232)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4046, file: !51, line: 647, baseType: !304, size: 32, offset: 1248)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4046, file: !51, line: 650, baseType: !4098, size: 296, offset: 1280)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4099)
!4099 = !{!4100, !4101}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4098, file: !6, line: 826, baseType: !302, size: 8)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4098, file: !6, line: 827, baseType: !4102, size: 288, offset: 8)
!4102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4103, size: 288, elements: !1314)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4104)
!4104 = !{!4105, !4106}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4103, file: !6, line: 804, baseType: !302, size: 8)
!4106 = !DIDerivedType(tag: DW_TAG_member, scope: !4103, file: !6, line: 805, baseType: !4107, size: 64, offset: 8)
!4107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4103, file: !6, line: 805, size: 64, elements: !4108)
!4108 = !{!4109, !4110}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4107, file: !6, line: 806, baseType: !298, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4107, file: !6, line: 807, baseType: !785, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4046, file: !51, line: 651, baseType: !4098, size: 296, offset: 1576)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4046, file: !51, line: 652, baseType: !4098, size: 296, offset: 1872)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4046, file: !51, line: 653, baseType: !4098, size: 296, offset: 2168)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4046, file: !51, line: 654, baseType: !4098, size: 296, offset: 2464)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4046, file: !51, line: 655, baseType: !4098, size: 296, offset: 2760)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4046, file: !51, line: 656, baseType: !4098, size: 296, offset: 3056)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4046, file: !51, line: 657, baseType: !4098, size: 296, offset: 3352)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !438, file: !51, line: 698, baseType: !4119, size: 64, offset: 10112)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!294, !293, !294, !294, !294}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !438, file: !51, line: 699, baseType: !294, size: 32, offset: 10176)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !438, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !412, file: !51, line: 441, baseType: !434, size: 64, offset: 1408)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !412, file: !51, line: 442, baseType: !434, size: 64, offset: 1472)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !412, file: !51, line: 444, baseType: !4127, size: 64, offset: 1536)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!294, !437}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !412, file: !51, line: 445, baseType: !4127, size: 64, offset: 1600)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !412, file: !51, line: 447, baseType: !4132, size: 64, offset: 1664)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!294, !437, !4135, !294}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !412, file: !51, line: 450, baseType: !4138, size: 64, offset: 1728)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!294, !437, !735, !7, !370, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !412, file: !51, line: 457, baseType: !4143, size: 64, offset: 1792)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!50, !437}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !412, file: !51, line: 460, baseType: !4127, size: 64, offset: 1856)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !412, file: !51, line: 461, baseType: !4148, size: 64, offset: 1920)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!294, !437, !4151}
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4153)
!4153 = !{!4154, !4155, !4156}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4152, file: !51, line: 70, baseType: !294, size: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4152, file: !51, line: 71, baseType: !294, size: 32, offset: 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4152, file: !51, line: 72, baseType: !294, size: 32, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !412, file: !51, line: 463, baseType: !4158, size: 64, offset: 1984)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!294, !437, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !412, file: !51, line: 466, baseType: !4163, size: 64, offset: 2048)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!294, !437, !4141}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !412, file: !51, line: 467, baseType: !4167, size: 64, offset: 2112)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!294, !437, !1565}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !412, file: !51, line: 468, baseType: !4171, size: 64, offset: 2176)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!294, !437, !4174}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !412, file: !51, line: 469, baseType: !4171, size: 64, offset: 2240)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !412, file: !51, line: 470, baseType: !4167, size: 64, offset: 2304)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !412, file: !51, line: 472, baseType: !4127, size: 64, offset: 2368)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !412, file: !51, line: 473, baseType: !4179, size: 64, offset: 2432)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!294, !437, !4182}
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4184)
!4184 = !{!4185, !4187}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4183, file: !6, line: 174, baseType: !4186, size: 48)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 48, elements: !470)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4183, file: !6, line: 175, baseType: !302, size: 8, offset: 48)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !412, file: !51, line: 474, baseType: !4189, size: 64, offset: 2496)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!294, !437, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4194)
!4194 = !{!4195, !4197, !4198}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4193, file: !6, line: 196, baseType: !4196, size: 32)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 32, elements: !1314)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4193, file: !6, line: 197, baseType: !302, size: 8, offset: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4193, file: !6, line: 198, baseType: !294, size: 32, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !412, file: !51, line: 475, baseType: !4200, size: 64, offset: 2560)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!294, !437, !171}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !412, file: !51, line: 477, baseType: !4204, size: 64, offset: 2624)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!294, !437, !78}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !412, file: !51, line: 478, baseType: !4208, size: 64, offset: 2688)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!294, !437, !73}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !412, file: !51, line: 480, baseType: !4212, size: 64, offset: 2752)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!294, !437, !566}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !412, file: !51, line: 481, baseType: !4216, size: 64, offset: 2816)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!294, !437, !580}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !412, file: !51, line: 482, baseType: !4220, size: 64, offset: 2880)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!294, !437, !294}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !412, file: !51, line: 483, baseType: !4220, size: 64, offset: 2944)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !412, file: !51, line: 484, baseType: !4127, size: 64, offset: 3008)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !412, file: !51, line: 490, baseType: !4226, size: 64, offset: 3072)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!175, !437}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !412, file: !51, line: 492, baseType: !4230, size: 2304, offset: 3136)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4231)
!4231 = !{!4232, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4259, !4263, !4264, !4265, !4266, !4267, !4268, !4273, !4278, !4282}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4230, file: !51, line: 228, baseType: !4233, size: 1216)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4233, file: !51, line: 89, baseType: !418, size: 1024)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4233, file: !51, line: 91, baseType: !304, size: 32, offset: 1024)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4233, file: !51, line: 92, baseType: !304, size: 32, offset: 1056)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4233, file: !51, line: 93, baseType: !304, size: 32, offset: 1088)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4233, file: !51, line: 95, baseType: !304, size: 32, offset: 1120)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4233, file: !51, line: 96, baseType: !304, size: 32, offset: 1152)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4233, file: !51, line: 97, baseType: !304, size: 32, offset: 1184)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4230, file: !51, line: 230, baseType: !434, size: 64, offset: 1216)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4230, file: !51, line: 231, baseType: !4127, size: 64, offset: 1280)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4230, file: !51, line: 232, baseType: !4127, size: 64, offset: 1344)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4230, file: !51, line: 233, baseType: !4127, size: 64, offset: 1408)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4230, file: !51, line: 234, baseType: !4127, size: 64, offset: 1472)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4230, file: !51, line: 237, baseType: !4127, size: 64, offset: 1536)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4230, file: !51, line: 238, baseType: !4249, size: 64, offset: 1600)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!294, !437, !4252}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4258}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4253, file: !51, line: 115, baseType: !7, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4253, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4253, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4253, file: !51, line: 118, baseType: !296, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4230, file: !51, line: 240, baseType: !4260, size: 64, offset: 1664)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!294, !437, !293}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4230, file: !51, line: 242, baseType: !4167, size: 64, offset: 1728)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4230, file: !51, line: 243, baseType: !4167, size: 64, offset: 1792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4230, file: !51, line: 244, baseType: !4167, size: 64, offset: 1856)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4230, file: !51, line: 248, baseType: !4167, size: 64, offset: 1920)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4230, file: !51, line: 249, baseType: !4171, size: 64, offset: 1984)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4230, file: !51, line: 250, baseType: !4269, size: 64, offset: 2048)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!294, !437, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4230, file: !51, line: 258, baseType: !4274, size: 64, offset: 2112)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!294, !437, !4277, !294}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4230, file: !51, line: 267, baseType: !4279, size: 64, offset: 2176)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!294, !437, !304}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4230, file: !51, line: 268, baseType: !4279, size: 64, offset: 2240)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !412, file: !51, line: 493, baseType: !4284, size: 576, offset: 5440)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4285)
!4285 = !{!4286, !4290, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4284, file: !51, line: 304, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4288)
!4288 = !{!4289}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4287, file: !51, line: 277, baseType: !336, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4284, file: !51, line: 306, baseType: !4291, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !437, !4252}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4284, file: !51, line: 308, baseType: !4171, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4284, file: !51, line: 309, baseType: !4269, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4284, file: !51, line: 310, baseType: !434, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4284, file: !51, line: 311, baseType: !434, size: 64, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4284, file: !51, line: 312, baseType: !434, size: 64, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4284, file: !51, line: 313, baseType: !4220, size: 64, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4284, file: !51, line: 316, baseType: !4260, size: 64, offset: 512)
!4301 = !DIGlobalVariableExpression(var: !4302, expr: !DIExpression())
!4302 = distinct !DIGlobalVariable(name: "init_tab", scope: !2, file: !3, line: 150, type: !4303, isLocal: true, isDefinition: true)
!4303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4304, size: 1312, elements: !4308)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_tab", file: !3, line: 147, size: 32, elements: !4305)
!4305 = !{!4306, !4307}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4304, file: !3, line: 148, baseType: !301, size: 8)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4304, file: !3, line: 149, baseType: !343, size: 16, offset: 16)
!4308 = !{!4309}
!4309 = !DISubrange(count: 41)
!4310 = !DIGlobalVariableExpression(var: !4311, expr: !DIExpression())
!4311 = distinct !DIGlobalVariable(name: "cber_current", scope: !4312, file: !3, line: 812, type: !304, isLocal: true, isDefinition: true)
!4312 = distinct !DISubprogram(name: "tda10048_read_ber", scope: !3, file: !3, line: 809, type: !4168, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4313 = !DIGlobalVariableExpression(var: !4314, expr: !DIExpression())
!4314 = distinct !DIGlobalVariable(name: "snr_tab", scope: !2, file: !3, line: 858, type: !4315, isLocal: true, isDefinition: true)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4316, size: 1968, elements: !4320)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_tab", file: !3, line: 855, size: 16, elements: !4317)
!4317 = !{!4318, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4316, file: !3, line: 856, baseType: !301, size: 8)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4316, file: !3, line: 857, baseType: !301, size: 8, offset: 8)
!4320 = !{!4321}
!4321 = !DISubrange(count: 123)
!4322 = !DIGlobalVariableExpression(var: !4323, expr: !DIExpression())
!4323 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 1170, type: !4324, isLocal: true, isDefinition: true)
!4324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 120, elements: !4325)
!4325 = !{!4326}
!4326 = !DISubrange(count: 15)
!4327 = !{i32 7, !"Dwarf Version", i32 4}
!4328 = !{i32 2, !"Debug Info Version", i32 3}
!4329 = !{i32 1, !"wchar_size", i32 2}
!4330 = !{i32 1, !"Code Model", i32 2}
!4331 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4332 = distinct !DISubprogram(name: "tda10048_attach", scope: !3, file: !3, line: 1083, type: !4333, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!437, !4335, !4354}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4337)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda10048_config", file: !4338, line: 16, size: 144, elements: !4339)
!4338 = !DIFile(filename: "drivers/media/dvb-frontends/tda10048.h", directory: "/home/lizy2001/genbc/linux")
!4339 = !{!4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4337, file: !4338, line: 19, baseType: !301, size: 8)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "output_mode", scope: !4337, file: !4338, line: 24, baseType: !301, size: 8, offset: 8)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "fwbulkwritelen", scope: !4337, file: !4338, line: 28, baseType: !301, size: 8, offset: 16)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4337, file: !4338, line: 33, baseType: !301, size: 8, offset: 24)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dtv6_if_freq_khz", scope: !4337, file: !4338, line: 44, baseType: !343, size: 16, offset: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "dtv7_if_freq_khz", scope: !4337, file: !4338, line: 45, baseType: !343, size: 16, offset: 48)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "dtv8_if_freq_khz", scope: !4337, file: !4338, line: 46, baseType: !343, size: 16, offset: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "clk_freq_khz", scope: !4337, file: !4338, line: 50, baseType: !343, size: 16, offset: 80)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "disable_gate_access", scope: !4337, file: !4338, line: 53, baseType: !301, size: 8, offset: 96)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "no_firmware", scope: !4337, file: !4338, line: 55, baseType: !735, size: 8, offset: 104)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "set_pll", scope: !4337, file: !4338, line: 57, baseType: !735, size: 8, offset: 112)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "pll_m", scope: !4337, file: !4338, line: 58, baseType: !301, size: 8, offset: 120)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "pll_p", scope: !4337, file: !4338, line: 59, baseType: !301, size: 8, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "pll_n", scope: !4337, file: !4338, line: 60, baseType: !301, size: 8, offset: 136)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4356, line: 695, size: 7552, elements: !4357)
!4356 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4357 = !{!4358, !4359, !4360, !4397, !4398, !4412, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4429, !4430, !4431, !4432, !4464, !4475}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4355, file: !4356, line: 696, baseType: !318, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4355, file: !4356, line: 697, baseType: !7, size: 32, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4355, file: !4356, line: 698, baseType: !4361, size: 64, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4363)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4356, line: 519, size: 320, elements: !4364)
!4364 = !{!4365, !4378, !4379, !4392, !4393}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4363, file: !4356, line: 529, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!294, !4354, !4369, !294}
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4371, line: 69, size: 128, elements: !4372)
!4371 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4372 = !{!4373, !4374, !4375, !4376}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4370, file: !4371, line: 70, baseType: !344, size: 16)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4370, file: !4371, line: 71, baseType: !344, size: 16, offset: 16)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4370, file: !4371, line: 84, baseType: !344, size: 16, offset: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4370, file: !4371, line: 85, baseType: !4377, size: 64, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4363, file: !4356, line: 531, baseType: !4366, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4363, file: !4356, line: 533, baseType: !4380, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!294, !4354, !343, !345, !316, !301, !294, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4371, line: 135, size: 272, elements: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4384, file: !4371, line: 136, baseType: !302, size: 8)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4384, file: !4371, line: 137, baseType: !344, size: 16)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4384, file: !4371, line: 138, baseType: !4389, size: 272)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 272, elements: !4390)
!4390 = !{!4391}
!4391 = !DISubrange(count: 34)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4363, file: !4356, line: 536, baseType: !4380, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4363, file: !4356, line: 541, baseType: !4394, size: 64, offset: 256)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!304, !4354}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4355, file: !4356, line: 699, baseType: !293, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4355, file: !4356, line: 702, baseType: !4399, size: 64, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4401)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4356, line: 557, size: 192, elements: !4402)
!4402 = !{!4403, !4407, !4411}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4401, file: !4356, line: 558, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{null, !4354, !7}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4401, file: !4356, line: 559, baseType: !4408, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!294, !4354, !7}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4401, file: !4356, line: 560, baseType: !4404, size: 64, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4355, file: !4356, line: 703, baseType: !4413, size: 192, offset: 320)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4414, line: 30, size: 192, elements: !4415)
!4414 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4415 = !{!4416, !4417, !4418}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4413, file: !4414, line: 31, baseType: !1021)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4413, file: !4414, line: 32, baseType: !993, size: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4413, file: !4414, line: 33, baseType: !1375, size: 64, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4355, file: !4356, line: 704, baseType: !4413, size: 192, offset: 512)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4355, file: !4356, line: 706, baseType: !294, size: 32, offset: 704)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4355, file: !4356, line: 707, baseType: !294, size: 32, offset: 736)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4355, file: !4356, line: 708, baseType: !475, size: 5568, offset: 768)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4355, file: !4356, line: 709, baseType: !580, size: 64, offset: 6336)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4355, file: !4356, line: 713, baseType: !294, size: 32, offset: 6400)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4355, file: !4356, line: 714, baseType: !4426, size: 384, offset: 6432)
!4426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 384, elements: !4427)
!4427 = !{!4428}
!4428 = !DISubrange(count: 48)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4355, file: !4356, line: 715, baseType: !1657, size: 192, offset: 6848)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4355, file: !4356, line: 717, baseType: !1332, size: 192, offset: 7040)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4355, file: !4356, line: 718, baseType: !461, size: 128, offset: 7232)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4355, file: !4356, line: 720, baseType: !4433, size: 64, offset: 7360)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4356, line: 618, size: 832, elements: !4435)
!4435 = !{!4436, !4440, !4441, !4445, !4446, !4447, !4448, !4452, !4453, !4456, !4457, !4460, !4463}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4434, file: !4356, line: 619, baseType: !4437, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!294, !4354}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4434, file: !4356, line: 621, baseType: !4437, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4434, file: !4356, line: 622, baseType: !4442, size: 64, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !4354, !294}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4434, file: !4356, line: 623, baseType: !4437, size: 64, offset: 192)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4434, file: !4356, line: 624, baseType: !4442, size: 64, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4434, file: !4356, line: 625, baseType: !4437, size: 64, offset: 320)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4434, file: !4356, line: 627, baseType: !4449, size: 64, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !4354}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4434, file: !4356, line: 628, baseType: !4449, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4434, file: !4356, line: 631, baseType: !4454, size: 64, offset: 512)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4356, line: 631, flags: DIFlagFwdDecl)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4434, file: !4356, line: 632, baseType: !4454, size: 64, offset: 576)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4434, file: !4356, line: 633, baseType: !4458, size: 64, offset: 640)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4356, line: 633, flags: DIFlagFwdDecl)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4434, file: !4356, line: 634, baseType: !4461, size: 64, offset: 704)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4356, line: 634, flags: DIFlagFwdDecl)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4434, file: !4356, line: 635, baseType: !4461, size: 64, offset: 768)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4355, file: !4356, line: 721, baseType: !4465, size: 64, offset: 7424)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4467)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4356, line: 664, size: 192, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4472, !4473, !4474}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4467, file: !4356, line: 665, baseType: !296, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4467, file: !4356, line: 666, baseType: !294, size: 32, offset: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4467, file: !4356, line: 667, baseType: !343, size: 16, offset: 96)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4467, file: !4356, line: 668, baseType: !343, size: 16, offset: 112)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4467, file: !4356, line: 669, baseType: !343, size: 16, offset: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4467, file: !4356, line: 670, baseType: !343, size: 16, offset: 144)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4355, file: !4356, line: 723, baseType: !3751, size: 64, offset: 7488)
!4476 = !DILocalVariable(name: "config", arg: 1, scope: !4332, file: !3, line: 1083, type: !4335)
!4477 = !DILocation(line: 1083, column: 68, scope: !4332)
!4478 = !DILocalVariable(name: "i2c", arg: 2, scope: !4332, file: !3, line: 1084, type: !4354)
!4479 = !DILocation(line: 1084, column: 22, scope: !4332)
!4480 = !DILocalVariable(name: "state", scope: !4332, file: !3, line: 1086, type: !4481)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda10048_state", file: !3, line: 127, size: 10752, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4482, file: !3, line: 129, baseType: !4354, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4482, file: !3, line: 132, baseType: !4337, size: 144, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4482, file: !3, line: 133, baseType: !438, size: 10240, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "fwloaded", scope: !4482, file: !3, line: 135, baseType: !294, size: 32, offset: 10496)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "freq_if_hz", scope: !4482, file: !3, line: 137, baseType: !304, size: 32, offset: 10528)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "xtal_hz", scope: !4482, file: !3, line: 138, baseType: !304, size: 32, offset: 10560)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "pll_mfactor", scope: !4482, file: !3, line: 139, baseType: !304, size: 32, offset: 10592)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "pll_nfactor", scope: !4482, file: !3, line: 140, baseType: !304, size: 32, offset: 10624)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "pll_pfactor", scope: !4482, file: !3, line: 141, baseType: !304, size: 32, offset: 10656)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !4482, file: !3, line: 142, baseType: !304, size: 32, offset: 10688)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth", scope: !4482, file: !3, line: 144, baseType: !304, size: 32, offset: 10720)
!4495 = !DILocation(line: 1086, column: 25, scope: !4332)
!4496 = !DILocation(line: 1088, column: 2, scope: !4332)
!4497 = !DILocation(line: 1088, column: 2, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 1088, column: 2)
!4499 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1088, column: 2)
!4500 = !DILocation(line: 1088, column: 2, scope: !4499)
!4501 = !DILocation(line: 1091, column: 10, scope: !4332)
!4502 = !DILocation(line: 1091, column: 8, scope: !4332)
!4503 = !DILocation(line: 1092, column: 6, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1092, column: 6)
!4505 = !DILocation(line: 1092, column: 12, scope: !4504)
!4506 = !DILocation(line: 1092, column: 6, scope: !4332)
!4507 = !DILocation(line: 1093, column: 3, scope: !4504)
!4508 = !DILocation(line: 1096, column: 10, scope: !4332)
!4509 = !DILocation(line: 1096, column: 17, scope: !4332)
!4510 = !DILocation(line: 1096, column: 2, scope: !4332)
!4511 = !DILocation(line: 1096, column: 25, scope: !4332)
!4512 = !DILocation(line: 1097, column: 15, scope: !4332)
!4513 = !DILocation(line: 1097, column: 2, scope: !4332)
!4514 = !DILocation(line: 1097, column: 9, scope: !4332)
!4515 = !DILocation(line: 1097, column: 13, scope: !4332)
!4516 = !DILocation(line: 1098, column: 20, scope: !4332)
!4517 = !DILocation(line: 1098, column: 28, scope: !4332)
!4518 = !DILocation(line: 1098, column: 2, scope: !4332)
!4519 = !DILocation(line: 1098, column: 9, scope: !4332)
!4520 = !DILocation(line: 1098, column: 18, scope: !4332)
!4521 = !DILocation(line: 1099, column: 2, scope: !4332)
!4522 = !DILocation(line: 1099, column: 9, scope: !4332)
!4523 = !DILocation(line: 1099, column: 19, scope: !4332)
!4524 = !DILocation(line: 1102, column: 23, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1102, column: 6)
!4526 = !DILocation(line: 1102, column: 6, scope: !4525)
!4527 = !DILocation(line: 1102, column: 49, scope: !4525)
!4528 = !DILocation(line: 1102, column: 6, scope: !4332)
!4529 = !DILocation(line: 1103, column: 3, scope: !4525)
!4530 = !DILocation(line: 1106, column: 10, scope: !4332)
!4531 = !DILocation(line: 1106, column: 17, scope: !4332)
!4532 = !DILocation(line: 1106, column: 26, scope: !4332)
!4533 = !DILocation(line: 1106, column: 2, scope: !4332)
!4534 = !DILocation(line: 1108, column: 37, scope: !4332)
!4535 = !DILocation(line: 1108, column: 2, scope: !4332)
!4536 = !DILocation(line: 1108, column: 9, scope: !4332)
!4537 = !DILocation(line: 1108, column: 18, scope: !4332)
!4538 = !DILocation(line: 1108, column: 35, scope: !4332)
!4539 = !DILocation(line: 1111, column: 6, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1111, column: 6)
!4541 = !DILocation(line: 1111, column: 14, scope: !4540)
!4542 = !DILocation(line: 1111, column: 6, scope: !4332)
!4543 = !DILocation(line: 1112, column: 24, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 1111, column: 23)
!4545 = !DILocation(line: 1112, column: 32, scope: !4544)
!4546 = !DILocation(line: 1112, column: 3, scope: !4544)
!4547 = !DILocation(line: 1112, column: 10, scope: !4544)
!4548 = !DILocation(line: 1112, column: 22, scope: !4544)
!4549 = !DILocation(line: 1113, column: 24, scope: !4544)
!4550 = !DILocation(line: 1113, column: 32, scope: !4544)
!4551 = !DILocation(line: 1113, column: 3, scope: !4544)
!4552 = !DILocation(line: 1113, column: 10, scope: !4544)
!4553 = !DILocation(line: 1113, column: 22, scope: !4544)
!4554 = !DILocation(line: 1114, column: 24, scope: !4544)
!4555 = !DILocation(line: 1114, column: 32, scope: !4544)
!4556 = !DILocation(line: 1114, column: 3, scope: !4544)
!4557 = !DILocation(line: 1114, column: 10, scope: !4544)
!4558 = !DILocation(line: 1114, column: 22, scope: !4544)
!4559 = !DILocation(line: 1115, column: 2, scope: !4544)
!4560 = !DILocation(line: 1116, column: 3, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 1115, column: 9)
!4562 = !DILocation(line: 1116, column: 10, scope: !4561)
!4563 = !DILocation(line: 1116, column: 22, scope: !4561)
!4564 = !DILocation(line: 1117, column: 3, scope: !4561)
!4565 = !DILocation(line: 1117, column: 10, scope: !4561)
!4566 = !DILocation(line: 1117, column: 22, scope: !4561)
!4567 = !DILocation(line: 1118, column: 3, scope: !4561)
!4568 = !DILocation(line: 1118, column: 10, scope: !4561)
!4569 = !DILocation(line: 1118, column: 22, scope: !4561)
!4570 = !DILocation(line: 1122, column: 31, scope: !4332)
!4571 = !DILocation(line: 1122, column: 38, scope: !4332)
!4572 = !DILocation(line: 1122, column: 2, scope: !4332)
!4573 = !DILocation(line: 1125, column: 23, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1125, column: 6)
!4575 = !DILocation(line: 1125, column: 30, scope: !4574)
!4576 = !DILocation(line: 1125, column: 6, scope: !4574)
!4577 = !DILocation(line: 1125, column: 49, scope: !4574)
!4578 = !DILocation(line: 1125, column: 6, scope: !4332)
!4579 = !DILocation(line: 1126, column: 3, scope: !4574)
!4580 = !DILocation(line: 1129, column: 30, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1129, column: 6)
!4582 = !DILocation(line: 1129, column: 37, scope: !4581)
!4583 = !DILocation(line: 1129, column: 6, scope: !4581)
!4584 = !DILocation(line: 1129, column: 56, scope: !4581)
!4585 = !DILocation(line: 1129, column: 6, scope: !4332)
!4586 = !DILocation(line: 1130, column: 3, scope: !4581)
!4587 = !DILocation(line: 1133, column: 26, scope: !4332)
!4588 = !DILocation(line: 1133, column: 33, scope: !4332)
!4589 = !DILocation(line: 1133, column: 2, scope: !4332)
!4590 = !DILocation(line: 1135, column: 10, scope: !4332)
!4591 = !DILocation(line: 1135, column: 17, scope: !4332)
!4592 = !DILocation(line: 1135, column: 2, scope: !4332)
!4593 = !DILabel(scope: !4332, name: "error", file: !3, line: 1137)
!4594 = !DILocation(line: 1137, column: 1, scope: !4332)
!4595 = !DILocation(line: 1138, column: 8, scope: !4332)
!4596 = !DILocation(line: 1138, column: 2, scope: !4332)
!4597 = !DILocation(line: 1139, column: 2, scope: !4332)
!4598 = !DILocation(line: 1140, column: 1, scope: !4332)
!4599 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4600, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!293, !577, !291}
!4602 = !DILocalVariable(name: "s", arg: 1, scope: !4603, file: !284, line: 445, type: !1174)
!4603 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4604, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!293, !1174, !291, !577}
!4606 = !DILocation(line: 445, column: 72, scope: !4603, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 552, column: 10, scope: !4608, inlinedAt: !4611)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !284, line: 540, column: 34)
!4609 = distinct !DILexicalBlock(scope: !4610, file: !284, line: 540, column: 6)
!4610 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4600, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4611 = distinct !DILocation(line: 664, column: 9, scope: !4599)
!4612 = !DILocalVariable(name: "flags", arg: 2, scope: !4603, file: !284, line: 446, type: !291)
!4613 = !DILocation(line: 446, column: 9, scope: !4603, inlinedAt: !4607)
!4614 = !DILocalVariable(name: "size", arg: 3, scope: !4603, file: !284, line: 446, type: !577)
!4615 = !DILocation(line: 446, column: 23, scope: !4603, inlinedAt: !4607)
!4616 = !DILocalVariable(name: "ret", scope: !4603, file: !284, line: 448, type: !293)
!4617 = !DILocation(line: 448, column: 8, scope: !4603, inlinedAt: !4607)
!4618 = !DILocalVariable(name: "flags", arg: 1, scope: !4619, file: !284, line: 318, type: !291)
!4619 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4620, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!283, !291}
!4622 = !DILocation(line: 318, column: 67, scope: !4619, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 553, column: 20, scope: !4608, inlinedAt: !4611)
!4624 = !DILocalVariable(name: "size", arg: 1, scope: !4625, file: !284, line: 346, type: !577)
!4625 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4626, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!7, !577}
!4628 = !DILocation(line: 346, column: 58, scope: !4625, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 547, column: 11, scope: !4608, inlinedAt: !4611)
!4630 = !DILocalVariable(name: "size", arg: 1, scope: !4631, file: !284, line: 472, type: !577)
!4631 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4632, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!293, !577, !291, !7}
!4634 = !DILocation(line: 472, column: 28, scope: !4631, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 481, column: 9, scope: !4636, inlinedAt: !4637)
!4636 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4600, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4637 = distinct !DILocation(line: 545, column: 11, scope: !4638, inlinedAt: !4611)
!4638 = distinct !DILexicalBlock(scope: !4608, file: !284, line: 544, column: 7)
!4639 = !DILocalVariable(name: "flags", arg: 2, scope: !4631, file: !284, line: 472, type: !291)
!4640 = !DILocation(line: 472, column: 40, scope: !4631, inlinedAt: !4635)
!4641 = !DILocalVariable(name: "order", arg: 3, scope: !4631, file: !284, line: 472, type: !7)
!4642 = !DILocation(line: 472, column: 60, scope: !4631, inlinedAt: !4635)
!4643 = !DILocalVariable(name: "size", arg: 1, scope: !4636, file: !284, line: 478, type: !577)
!4644 = !DILocation(line: 478, column: 51, scope: !4636, inlinedAt: !4637)
!4645 = !DILocalVariable(name: "flags", arg: 2, scope: !4636, file: !284, line: 478, type: !291)
!4646 = !DILocation(line: 478, column: 63, scope: !4636, inlinedAt: !4637)
!4647 = !DILocalVariable(name: "order", scope: !4636, file: !284, line: 480, type: !7)
!4648 = !DILocation(line: 480, column: 15, scope: !4636, inlinedAt: !4637)
!4649 = !DILocalVariable(name: "size", arg: 1, scope: !4610, file: !284, line: 538, type: !577)
!4650 = !DILocation(line: 538, column: 45, scope: !4610, inlinedAt: !4611)
!4651 = !DILocalVariable(name: "flags", arg: 2, scope: !4610, file: !284, line: 538, type: !291)
!4652 = !DILocation(line: 538, column: 57, scope: !4610, inlinedAt: !4611)
!4653 = !DILocalVariable(name: "index", scope: !4608, file: !284, line: 542, type: !7)
!4654 = !DILocation(line: 542, column: 16, scope: !4608, inlinedAt: !4611)
!4655 = !DILocalVariable(name: "size", arg: 1, scope: !4599, file: !284, line: 662, type: !577)
!4656 = !DILocation(line: 662, column: 36, scope: !4599)
!4657 = !DILocalVariable(name: "flags", arg: 2, scope: !4599, file: !284, line: 662, type: !291)
!4658 = !DILocation(line: 662, column: 48, scope: !4599)
!4659 = !DILocation(line: 664, column: 17, scope: !4599)
!4660 = !DILocation(line: 664, column: 23, scope: !4599)
!4661 = !DILocation(line: 664, column: 29, scope: !4599)
!4662 = !DILocation(line: 540, column: 27, scope: !4609, inlinedAt: !4611)
!4663 = !DILocation(line: 540, column: 6, scope: !4609, inlinedAt: !4611)
!4664 = !DILocation(line: 540, column: 6, scope: !4610, inlinedAt: !4611)
!4665 = !DILocation(line: 544, column: 7, scope: !4638, inlinedAt: !4611)
!4666 = !DILocation(line: 544, column: 12, scope: !4638, inlinedAt: !4611)
!4667 = !DILocation(line: 544, column: 7, scope: !4608, inlinedAt: !4611)
!4668 = !DILocation(line: 545, column: 25, scope: !4638, inlinedAt: !4611)
!4669 = !DILocation(line: 545, column: 31, scope: !4638, inlinedAt: !4611)
!4670 = !DILocation(line: 480, column: 33, scope: !4636, inlinedAt: !4637)
!4671 = !DILocation(line: 480, column: 23, scope: !4636, inlinedAt: !4637)
!4672 = !DILocation(line: 481, column: 29, scope: !4636, inlinedAt: !4637)
!4673 = !DILocation(line: 481, column: 35, scope: !4636, inlinedAt: !4637)
!4674 = !DILocation(line: 481, column: 42, scope: !4636, inlinedAt: !4637)
!4675 = !DILocation(line: 474, column: 23, scope: !4631, inlinedAt: !4635)
!4676 = !DILocation(line: 474, column: 29, scope: !4631, inlinedAt: !4635)
!4677 = !DILocation(line: 474, column: 36, scope: !4631, inlinedAt: !4635)
!4678 = !DILocation(line: 474, column: 9, scope: !4631, inlinedAt: !4635)
!4679 = !DILocation(line: 545, column: 4, scope: !4638, inlinedAt: !4611)
!4680 = !DILocation(line: 547, column: 25, scope: !4608, inlinedAt: !4611)
!4681 = !DILocation(line: 348, column: 7, scope: !4682, inlinedAt: !4629)
!4682 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 348, column: 6)
!4683 = !DILocation(line: 348, column: 6, scope: !4625, inlinedAt: !4629)
!4684 = !DILocation(line: 349, column: 3, scope: !4682, inlinedAt: !4629)
!4685 = !DILocation(line: 351, column: 6, scope: !4686, inlinedAt: !4629)
!4686 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 351, column: 6)
!4687 = !DILocation(line: 351, column: 11, scope: !4686, inlinedAt: !4629)
!4688 = !DILocation(line: 351, column: 6, scope: !4625, inlinedAt: !4629)
!4689 = !DILocation(line: 352, column: 3, scope: !4686, inlinedAt: !4629)
!4690 = !DILocation(line: 354, column: 32, scope: !4691, inlinedAt: !4629)
!4691 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 354, column: 6)
!4692 = !DILocation(line: 354, column: 37, scope: !4691, inlinedAt: !4629)
!4693 = !DILocation(line: 354, column: 42, scope: !4691, inlinedAt: !4629)
!4694 = !DILocation(line: 354, column: 45, scope: !4691, inlinedAt: !4629)
!4695 = !DILocation(line: 354, column: 50, scope: !4691, inlinedAt: !4629)
!4696 = !DILocation(line: 354, column: 6, scope: !4625, inlinedAt: !4629)
!4697 = !DILocation(line: 355, column: 3, scope: !4691, inlinedAt: !4629)
!4698 = !DILocation(line: 356, column: 32, scope: !4699, inlinedAt: !4629)
!4699 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 356, column: 6)
!4700 = !DILocation(line: 356, column: 37, scope: !4699, inlinedAt: !4629)
!4701 = !DILocation(line: 356, column: 43, scope: !4699, inlinedAt: !4629)
!4702 = !DILocation(line: 356, column: 46, scope: !4699, inlinedAt: !4629)
!4703 = !DILocation(line: 356, column: 51, scope: !4699, inlinedAt: !4629)
!4704 = !DILocation(line: 356, column: 6, scope: !4625, inlinedAt: !4629)
!4705 = !DILocation(line: 357, column: 3, scope: !4699, inlinedAt: !4629)
!4706 = !DILocation(line: 358, column: 6, scope: !4707, inlinedAt: !4629)
!4707 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 358, column: 6)
!4708 = !DILocation(line: 358, column: 11, scope: !4707, inlinedAt: !4629)
!4709 = !DILocation(line: 358, column: 6, scope: !4625, inlinedAt: !4629)
!4710 = !DILocation(line: 358, column: 26, scope: !4707, inlinedAt: !4629)
!4711 = !DILocation(line: 359, column: 6, scope: !4712, inlinedAt: !4629)
!4712 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 359, column: 6)
!4713 = !DILocation(line: 359, column: 11, scope: !4712, inlinedAt: !4629)
!4714 = !DILocation(line: 359, column: 6, scope: !4625, inlinedAt: !4629)
!4715 = !DILocation(line: 359, column: 26, scope: !4712, inlinedAt: !4629)
!4716 = !DILocation(line: 360, column: 6, scope: !4717, inlinedAt: !4629)
!4717 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 360, column: 6)
!4718 = !DILocation(line: 360, column: 11, scope: !4717, inlinedAt: !4629)
!4719 = !DILocation(line: 360, column: 6, scope: !4625, inlinedAt: !4629)
!4720 = !DILocation(line: 360, column: 26, scope: !4717, inlinedAt: !4629)
!4721 = !DILocation(line: 361, column: 6, scope: !4722, inlinedAt: !4629)
!4722 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 361, column: 6)
!4723 = !DILocation(line: 361, column: 11, scope: !4722, inlinedAt: !4629)
!4724 = !DILocation(line: 361, column: 6, scope: !4625, inlinedAt: !4629)
!4725 = !DILocation(line: 361, column: 26, scope: !4722, inlinedAt: !4629)
!4726 = !DILocation(line: 362, column: 6, scope: !4727, inlinedAt: !4629)
!4727 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 362, column: 6)
!4728 = !DILocation(line: 362, column: 11, scope: !4727, inlinedAt: !4629)
!4729 = !DILocation(line: 362, column: 6, scope: !4625, inlinedAt: !4629)
!4730 = !DILocation(line: 362, column: 26, scope: !4727, inlinedAt: !4629)
!4731 = !DILocation(line: 363, column: 6, scope: !4732, inlinedAt: !4629)
!4732 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 363, column: 6)
!4733 = !DILocation(line: 363, column: 11, scope: !4732, inlinedAt: !4629)
!4734 = !DILocation(line: 363, column: 6, scope: !4625, inlinedAt: !4629)
!4735 = !DILocation(line: 363, column: 26, scope: !4732, inlinedAt: !4629)
!4736 = !DILocation(line: 364, column: 6, scope: !4737, inlinedAt: !4629)
!4737 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 364, column: 6)
!4738 = !DILocation(line: 364, column: 11, scope: !4737, inlinedAt: !4629)
!4739 = !DILocation(line: 364, column: 6, scope: !4625, inlinedAt: !4629)
!4740 = !DILocation(line: 364, column: 26, scope: !4737, inlinedAt: !4629)
!4741 = !DILocation(line: 365, column: 6, scope: !4742, inlinedAt: !4629)
!4742 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 365, column: 6)
!4743 = !DILocation(line: 365, column: 11, scope: !4742, inlinedAt: !4629)
!4744 = !DILocation(line: 365, column: 6, scope: !4625, inlinedAt: !4629)
!4745 = !DILocation(line: 365, column: 26, scope: !4742, inlinedAt: !4629)
!4746 = !DILocation(line: 366, column: 6, scope: !4747, inlinedAt: !4629)
!4747 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 366, column: 6)
!4748 = !DILocation(line: 366, column: 11, scope: !4747, inlinedAt: !4629)
!4749 = !DILocation(line: 366, column: 6, scope: !4625, inlinedAt: !4629)
!4750 = !DILocation(line: 366, column: 26, scope: !4747, inlinedAt: !4629)
!4751 = !DILocation(line: 367, column: 6, scope: !4752, inlinedAt: !4629)
!4752 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 367, column: 6)
!4753 = !DILocation(line: 367, column: 11, scope: !4752, inlinedAt: !4629)
!4754 = !DILocation(line: 367, column: 6, scope: !4625, inlinedAt: !4629)
!4755 = !DILocation(line: 367, column: 26, scope: !4752, inlinedAt: !4629)
!4756 = !DILocation(line: 368, column: 6, scope: !4757, inlinedAt: !4629)
!4757 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 368, column: 6)
!4758 = !DILocation(line: 368, column: 11, scope: !4757, inlinedAt: !4629)
!4759 = !DILocation(line: 368, column: 6, scope: !4625, inlinedAt: !4629)
!4760 = !DILocation(line: 368, column: 26, scope: !4757, inlinedAt: !4629)
!4761 = !DILocation(line: 369, column: 6, scope: !4762, inlinedAt: !4629)
!4762 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 369, column: 6)
!4763 = !DILocation(line: 369, column: 11, scope: !4762, inlinedAt: !4629)
!4764 = !DILocation(line: 369, column: 6, scope: !4625, inlinedAt: !4629)
!4765 = !DILocation(line: 369, column: 26, scope: !4762, inlinedAt: !4629)
!4766 = !DILocation(line: 370, column: 6, scope: !4767, inlinedAt: !4629)
!4767 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 370, column: 6)
!4768 = !DILocation(line: 370, column: 11, scope: !4767, inlinedAt: !4629)
!4769 = !DILocation(line: 370, column: 6, scope: !4625, inlinedAt: !4629)
!4770 = !DILocation(line: 370, column: 26, scope: !4767, inlinedAt: !4629)
!4771 = !DILocation(line: 371, column: 6, scope: !4772, inlinedAt: !4629)
!4772 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 371, column: 6)
!4773 = !DILocation(line: 371, column: 11, scope: !4772, inlinedAt: !4629)
!4774 = !DILocation(line: 371, column: 6, scope: !4625, inlinedAt: !4629)
!4775 = !DILocation(line: 371, column: 26, scope: !4772, inlinedAt: !4629)
!4776 = !DILocation(line: 372, column: 6, scope: !4777, inlinedAt: !4629)
!4777 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 372, column: 6)
!4778 = !DILocation(line: 372, column: 11, scope: !4777, inlinedAt: !4629)
!4779 = !DILocation(line: 372, column: 6, scope: !4625, inlinedAt: !4629)
!4780 = !DILocation(line: 372, column: 26, scope: !4777, inlinedAt: !4629)
!4781 = !DILocation(line: 373, column: 6, scope: !4782, inlinedAt: !4629)
!4782 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 373, column: 6)
!4783 = !DILocation(line: 373, column: 11, scope: !4782, inlinedAt: !4629)
!4784 = !DILocation(line: 373, column: 6, scope: !4625, inlinedAt: !4629)
!4785 = !DILocation(line: 373, column: 26, scope: !4782, inlinedAt: !4629)
!4786 = !DILocation(line: 374, column: 6, scope: !4787, inlinedAt: !4629)
!4787 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 374, column: 6)
!4788 = !DILocation(line: 374, column: 11, scope: !4787, inlinedAt: !4629)
!4789 = !DILocation(line: 374, column: 6, scope: !4625, inlinedAt: !4629)
!4790 = !DILocation(line: 374, column: 26, scope: !4787, inlinedAt: !4629)
!4791 = !DILocation(line: 375, column: 6, scope: !4792, inlinedAt: !4629)
!4792 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 375, column: 6)
!4793 = !DILocation(line: 375, column: 11, scope: !4792, inlinedAt: !4629)
!4794 = !DILocation(line: 375, column: 6, scope: !4625, inlinedAt: !4629)
!4795 = !DILocation(line: 375, column: 27, scope: !4792, inlinedAt: !4629)
!4796 = !DILocation(line: 376, column: 6, scope: !4797, inlinedAt: !4629)
!4797 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 376, column: 6)
!4798 = !DILocation(line: 376, column: 11, scope: !4797, inlinedAt: !4629)
!4799 = !DILocation(line: 376, column: 6, scope: !4625, inlinedAt: !4629)
!4800 = !DILocation(line: 376, column: 32, scope: !4797, inlinedAt: !4629)
!4801 = !DILocation(line: 377, column: 6, scope: !4802, inlinedAt: !4629)
!4802 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 377, column: 6)
!4803 = !DILocation(line: 377, column: 11, scope: !4802, inlinedAt: !4629)
!4804 = !DILocation(line: 377, column: 6, scope: !4625, inlinedAt: !4629)
!4805 = !DILocation(line: 377, column: 32, scope: !4802, inlinedAt: !4629)
!4806 = !DILocation(line: 378, column: 6, scope: !4807, inlinedAt: !4629)
!4807 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 378, column: 6)
!4808 = !DILocation(line: 378, column: 11, scope: !4807, inlinedAt: !4629)
!4809 = !DILocation(line: 378, column: 6, scope: !4625, inlinedAt: !4629)
!4810 = !DILocation(line: 378, column: 32, scope: !4807, inlinedAt: !4629)
!4811 = !DILocation(line: 379, column: 6, scope: !4812, inlinedAt: !4629)
!4812 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 379, column: 6)
!4813 = !DILocation(line: 379, column: 11, scope: !4812, inlinedAt: !4629)
!4814 = !DILocation(line: 379, column: 6, scope: !4625, inlinedAt: !4629)
!4815 = !DILocation(line: 379, column: 33, scope: !4812, inlinedAt: !4629)
!4816 = !DILocation(line: 380, column: 6, scope: !4817, inlinedAt: !4629)
!4817 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 380, column: 6)
!4818 = !DILocation(line: 380, column: 11, scope: !4817, inlinedAt: !4629)
!4819 = !DILocation(line: 380, column: 6, scope: !4625, inlinedAt: !4629)
!4820 = !DILocation(line: 380, column: 33, scope: !4817, inlinedAt: !4629)
!4821 = !DILocation(line: 381, column: 6, scope: !4822, inlinedAt: !4629)
!4822 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 381, column: 6)
!4823 = !DILocation(line: 381, column: 11, scope: !4822, inlinedAt: !4629)
!4824 = !DILocation(line: 381, column: 6, scope: !4625, inlinedAt: !4629)
!4825 = !DILocation(line: 381, column: 33, scope: !4822, inlinedAt: !4629)
!4826 = !DILocation(line: 382, column: 2, scope: !4827, inlinedAt: !4629)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !284, line: 382, column: 2)
!4828 = distinct !DILexicalBlock(scope: !4625, file: !284, line: 382, column: 2)
!4829 = !{i32 -2144218838, i32 -2144218809, i32 -2144218763, i32 -2144218705, i32 -2144218651, i32 -2144218597, i32 -2144218542, i32 -2144218511}
!4830 = !DILocation(line: 382, column: 2, scope: !4831, inlinedAt: !4629)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !284, line: 382, column: 2)
!4832 = distinct !DILexicalBlock(scope: !4828, file: !284, line: 382, column: 2)
!4833 = !{i32 -2144218068, i32 -2144218061, i32 -2144218007, i32 -2144217976, i32 -2144217946}
!4834 = !DILocation(line: 382, column: 2, scope: !4832, inlinedAt: !4629)
!4835 = !DILocation(line: 386, column: 1, scope: !4625, inlinedAt: !4629)
!4836 = !DILocation(line: 547, column: 9, scope: !4608, inlinedAt: !4611)
!4837 = !DILocation(line: 549, column: 8, scope: !4838, inlinedAt: !4611)
!4838 = distinct !DILexicalBlock(scope: !4608, file: !284, line: 549, column: 7)
!4839 = !DILocation(line: 549, column: 7, scope: !4608, inlinedAt: !4611)
!4840 = !DILocation(line: 550, column: 4, scope: !4838, inlinedAt: !4611)
!4841 = !DILocation(line: 553, column: 33, scope: !4608, inlinedAt: !4611)
!4842 = !DILocation(line: 325, column: 6, scope: !4843, inlinedAt: !4623)
!4843 = distinct !DILexicalBlock(scope: !4619, file: !284, line: 325, column: 6)
!4844 = !DILocation(line: 325, column: 6, scope: !4619, inlinedAt: !4623)
!4845 = !DILocation(line: 326, column: 3, scope: !4843, inlinedAt: !4623)
!4846 = !DILocation(line: 332, column: 9, scope: !4619, inlinedAt: !4623)
!4847 = !DILocation(line: 332, column: 15, scope: !4619, inlinedAt: !4623)
!4848 = !DILocation(line: 332, column: 2, scope: !4619, inlinedAt: !4623)
!4849 = !DILocation(line: 336, column: 1, scope: !4619, inlinedAt: !4623)
!4850 = !DILocation(line: 553, column: 5, scope: !4608, inlinedAt: !4611)
!4851 = !DILocation(line: 553, column: 41, scope: !4608, inlinedAt: !4611)
!4852 = !DILocation(line: 554, column: 5, scope: !4608, inlinedAt: !4611)
!4853 = !DILocation(line: 554, column: 12, scope: !4608, inlinedAt: !4611)
!4854 = !DILocation(line: 448, column: 31, scope: !4603, inlinedAt: !4607)
!4855 = !DILocation(line: 448, column: 34, scope: !4603, inlinedAt: !4607)
!4856 = !DILocation(line: 448, column: 14, scope: !4603, inlinedAt: !4607)
!4857 = !DILocation(line: 450, column: 22, scope: !4603, inlinedAt: !4607)
!4858 = !DILocation(line: 450, column: 25, scope: !4603, inlinedAt: !4607)
!4859 = !DILocation(line: 450, column: 30, scope: !4603, inlinedAt: !4607)
!4860 = !DILocation(line: 450, column: 36, scope: !4603, inlinedAt: !4607)
!4861 = !DILocation(line: 450, column: 8, scope: !4603, inlinedAt: !4607)
!4862 = !DILocation(line: 450, column: 6, scope: !4603, inlinedAt: !4607)
!4863 = !DILocation(line: 451, column: 9, scope: !4603, inlinedAt: !4607)
!4864 = !DILocation(line: 552, column: 3, scope: !4608, inlinedAt: !4611)
!4865 = !DILocation(line: 557, column: 19, scope: !4610, inlinedAt: !4611)
!4866 = !DILocation(line: 557, column: 25, scope: !4610, inlinedAt: !4611)
!4867 = !DILocation(line: 557, column: 9, scope: !4610, inlinedAt: !4611)
!4868 = !DILocation(line: 557, column: 2, scope: !4610, inlinedAt: !4611)
!4869 = !DILocation(line: 558, column: 1, scope: !4610, inlinedAt: !4611)
!4870 = !DILocation(line: 664, column: 2, scope: !4599)
!4871 = distinct !DISubprogram(name: "tda10048_readreg", scope: !3, file: !3, line: 228, type: !4872, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!301, !4481, !301}
!4874 = !DILocalVariable(name: "state", arg: 1, scope: !4871, file: !3, line: 228, type: !4481)
!4875 = !DILocation(line: 228, column: 51, scope: !4871)
!4876 = !DILocalVariable(name: "reg", arg: 2, scope: !4871, file: !3, line: 228, type: !301)
!4877 = !DILocation(line: 228, column: 61, scope: !4871)
!4878 = !DILocalVariable(name: "config", scope: !4871, file: !3, line: 230, type: !4879)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4880 = !DILocation(line: 230, column: 26, scope: !4871)
!4881 = !DILocation(line: 230, column: 36, scope: !4871)
!4882 = !DILocation(line: 230, column: 43, scope: !4871)
!4883 = !DILocalVariable(name: "ret", scope: !4871, file: !3, line: 231, type: !294)
!4884 = !DILocation(line: 231, column: 6, scope: !4871)
!4885 = !DILocalVariable(name: "b0", scope: !4871, file: !3, line: 232, type: !4886)
!4886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 8, elements: !1521)
!4887 = !DILocation(line: 232, column: 5, scope: !4871)
!4888 = !DILocation(line: 232, column: 12, scope: !4871)
!4889 = !DILocation(line: 232, column: 14, scope: !4871)
!4890 = !DILocalVariable(name: "b1", scope: !4871, file: !3, line: 233, type: !4886)
!4891 = !DILocation(line: 233, column: 5, scope: !4871)
!4892 = !DILocalVariable(name: "msg", scope: !4871, file: !3, line: 234, type: !4893)
!4893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4370, size: 256, elements: !1724)
!4894 = !DILocation(line: 234, column: 17, scope: !4871)
!4895 = !DILocation(line: 234, column: 25, scope: !4871)
!4896 = !DILocation(line: 235, column: 3, scope: !4871)
!4897 = !DILocation(line: 235, column: 13, scope: !4871)
!4898 = !DILocation(line: 235, column: 21, scope: !4871)
!4899 = !DILocation(line: 236, column: 23, scope: !4871)
!4900 = !DILocation(line: 237, column: 3, scope: !4871)
!4901 = !DILocation(line: 237, column: 13, scope: !4871)
!4902 = !DILocation(line: 237, column: 21, scope: !4871)
!4903 = !DILocation(line: 238, column: 30, scope: !4871)
!4904 = !DILocation(line: 240, column: 2, scope: !4871)
!4905 = !DILocation(line: 240, column: 2, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 240, column: 2)
!4907 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 240, column: 2)
!4908 = !DILocation(line: 240, column: 2, scope: !4907)
!4909 = !DILocation(line: 242, column: 21, scope: !4871)
!4910 = !DILocation(line: 242, column: 28, scope: !4871)
!4911 = !DILocation(line: 242, column: 33, scope: !4871)
!4912 = !DILocation(line: 242, column: 8, scope: !4871)
!4913 = !DILocation(line: 242, column: 6, scope: !4871)
!4914 = !DILocation(line: 244, column: 6, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 244, column: 6)
!4916 = !DILocation(line: 244, column: 10, scope: !4915)
!4917 = !DILocation(line: 244, column: 6, scope: !4871)
!4918 = !DILocation(line: 246, column: 14, scope: !4915)
!4919 = !DILocation(line: 245, column: 3, scope: !4915)
!4920 = !DILocation(line: 248, column: 9, scope: !4871)
!4921 = !DILocation(line: 248, column: 2, scope: !4871)
!4922 = distinct !DISubprogram(name: "tda10048_establish_defaults", scope: !3, file: !3, line: 1046, type: !435, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4923 = !DILocalVariable(name: "fe", arg: 1, scope: !4922, file: !3, line: 1046, type: !437)
!4924 = !DILocation(line: 1046, column: 62, scope: !4922)
!4925 = !DILocalVariable(name: "state", scope: !4922, file: !3, line: 1048, type: !4481)
!4926 = !DILocation(line: 1048, column: 25, scope: !4922)
!4927 = !DILocation(line: 1048, column: 33, scope: !4922)
!4928 = !DILocation(line: 1048, column: 37, scope: !4922)
!4929 = !DILocalVariable(name: "config", scope: !4922, file: !3, line: 1049, type: !4879)
!4930 = !DILocation(line: 1049, column: 26, scope: !4922)
!4931 = !DILocation(line: 1049, column: 36, scope: !4922)
!4932 = !DILocation(line: 1049, column: 43, scope: !4922)
!4933 = !DILocation(line: 1052, column: 6, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 1052, column: 6)
!4935 = !DILocation(line: 1052, column: 14, scope: !4934)
!4936 = !DILocation(line: 1052, column: 31, scope: !4934)
!4937 = !DILocation(line: 1052, column: 6, scope: !4922)
!4938 = !DILocation(line: 1053, column: 3, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 1052, column: 37)
!4940 = !DILocation(line: 1053, column: 11, scope: !4939)
!4941 = !DILocation(line: 1053, column: 28, scope: !4939)
!4942 = !DILocation(line: 1056, column: 4, scope: !4939)
!4943 = !DILocation(line: 1056, column: 12, scope: !4939)
!4944 = !DILocation(line: 1054, column: 3, scope: !4939)
!4945 = !DILocation(line: 1057, column: 2, scope: !4939)
!4946 = !DILocation(line: 1059, column: 6, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 1059, column: 6)
!4948 = !DILocation(line: 1059, column: 14, scope: !4947)
!4949 = !DILocation(line: 1059, column: 31, scope: !4947)
!4950 = !DILocation(line: 1059, column: 6, scope: !4922)
!4951 = !DILocation(line: 1060, column: 3, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 1059, column: 37)
!4953 = !DILocation(line: 1060, column: 11, scope: !4952)
!4954 = !DILocation(line: 1060, column: 28, scope: !4952)
!4955 = !DILocation(line: 1063, column: 4, scope: !4952)
!4956 = !DILocation(line: 1063, column: 12, scope: !4952)
!4957 = !DILocation(line: 1061, column: 3, scope: !4952)
!4958 = !DILocation(line: 1064, column: 2, scope: !4952)
!4959 = !DILocation(line: 1066, column: 6, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 1066, column: 6)
!4961 = !DILocation(line: 1066, column: 14, scope: !4960)
!4962 = !DILocation(line: 1066, column: 31, scope: !4960)
!4963 = !DILocation(line: 1066, column: 6, scope: !4922)
!4964 = !DILocation(line: 1067, column: 3, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 1066, column: 37)
!4966 = !DILocation(line: 1067, column: 11, scope: !4965)
!4967 = !DILocation(line: 1067, column: 28, scope: !4965)
!4968 = !DILocation(line: 1070, column: 4, scope: !4965)
!4969 = !DILocation(line: 1070, column: 12, scope: !4965)
!4970 = !DILocation(line: 1068, column: 3, scope: !4965)
!4971 = !DILocation(line: 1071, column: 2, scope: !4965)
!4972 = !DILocation(line: 1073, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 1073, column: 6)
!4974 = !DILocation(line: 1073, column: 14, scope: !4973)
!4975 = !DILocation(line: 1073, column: 27, scope: !4973)
!4976 = !DILocation(line: 1073, column: 6, scope: !4922)
!4977 = !DILocation(line: 1074, column: 3, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 1073, column: 33)
!4979 = !DILocation(line: 1074, column: 11, scope: !4978)
!4980 = !DILocation(line: 1074, column: 24, scope: !4978)
!4981 = !DILocation(line: 1077, column: 4, scope: !4978)
!4982 = !DILocation(line: 1077, column: 12, scope: !4978)
!4983 = !DILocation(line: 1075, column: 3, scope: !4978)
!4984 = !DILocation(line: 1078, column: 2, scope: !4978)
!4985 = !DILocation(line: 1079, column: 1, scope: !4922)
!4986 = distinct !DISubprogram(name: "tda10048_set_if", scope: !3, file: !3, line: 407, type: !4280, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!4987 = !DILocalVariable(name: "fe", arg: 1, scope: !4986, file: !3, line: 407, type: !437)
!4988 = !DILocation(line: 407, column: 49, scope: !4986)
!4989 = !DILocalVariable(name: "bw", arg: 2, scope: !4986, file: !3, line: 407, type: !304)
!4990 = !DILocation(line: 407, column: 57, scope: !4986)
!4991 = !DILocalVariable(name: "state", scope: !4986, file: !3, line: 409, type: !4481)
!4992 = !DILocation(line: 409, column: 25, scope: !4986)
!4993 = !DILocation(line: 409, column: 33, scope: !4986)
!4994 = !DILocation(line: 409, column: 37, scope: !4986)
!4995 = !DILocalVariable(name: "config", scope: !4986, file: !3, line: 410, type: !4879)
!4996 = !DILocation(line: 410, column: 26, scope: !4986)
!4997 = !DILocation(line: 410, column: 36, scope: !4986)
!4998 = !DILocation(line: 410, column: 43, scope: !4986)
!4999 = !DILocalVariable(name: "i", scope: !4986, file: !3, line: 411, type: !294)
!5000 = !DILocation(line: 411, column: 6, scope: !4986)
!5001 = !DILocalVariable(name: "if_freq_khz", scope: !4986, file: !3, line: 412, type: !304)
!5002 = !DILocation(line: 412, column: 6, scope: !4986)
!5003 = !DILocation(line: 414, column: 2, scope: !4986)
!5004 = !DILocation(line: 414, column: 2, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 414, column: 2)
!5006 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 414, column: 2)
!5007 = !DILocation(line: 414, column: 2, scope: !5006)
!5008 = !DILocation(line: 417, column: 10, scope: !4986)
!5009 = !DILocation(line: 417, column: 2, scope: !4986)
!5010 = !DILocation(line: 419, column: 17, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 417, column: 14)
!5012 = !DILocation(line: 419, column: 25, scope: !5011)
!5013 = !DILocation(line: 419, column: 15, scope: !5011)
!5014 = !DILocation(line: 420, column: 3, scope: !5011)
!5015 = !DILocation(line: 422, column: 17, scope: !5011)
!5016 = !DILocation(line: 422, column: 25, scope: !5011)
!5017 = !DILocation(line: 422, column: 15, scope: !5011)
!5018 = !DILocation(line: 423, column: 3, scope: !5011)
!5019 = !DILocation(line: 425, column: 17, scope: !5011)
!5020 = !DILocation(line: 425, column: 25, scope: !5011)
!5021 = !DILocation(line: 425, column: 15, scope: !5011)
!5022 = !DILocation(line: 426, column: 3, scope: !5011)
!5023 = !DILocation(line: 428, column: 3, scope: !5011)
!5024 = !DILocation(line: 429, column: 3, scope: !5011)
!5025 = !DILocation(line: 432, column: 9, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 432, column: 2)
!5027 = !DILocation(line: 432, column: 7, scope: !5026)
!5028 = !DILocation(line: 432, column: 14, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 432, column: 2)
!5030 = !DILocation(line: 432, column: 16, scope: !5029)
!5031 = !DILocation(line: 432, column: 2, scope: !5026)
!5032 = !DILocation(line: 433, column: 16, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 433, column: 7)
!5034 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 432, column: 44)
!5035 = !DILocation(line: 433, column: 8, scope: !5033)
!5036 = !DILocation(line: 433, column: 19, scope: !5033)
!5037 = !DILocation(line: 433, column: 35, scope: !5033)
!5038 = !DILocation(line: 433, column: 43, scope: !5033)
!5039 = !DILocation(line: 433, column: 32, scope: !5033)
!5040 = !DILocation(line: 433, column: 57, scope: !5033)
!5041 = !DILocation(line: 434, column: 13, scope: !5033)
!5042 = !DILocation(line: 434, column: 5, scope: !5033)
!5043 = !DILocation(line: 434, column: 16, scope: !5033)
!5044 = !DILocation(line: 434, column: 31, scope: !5033)
!5045 = !DILocation(line: 434, column: 28, scope: !5033)
!5046 = !DILocation(line: 433, column: 7, scope: !5034)
!5047 = !DILocation(line: 436, column: 32, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 434, column: 45)
!5049 = !DILocation(line: 436, column: 24, scope: !5048)
!5050 = !DILocation(line: 436, column: 35, scope: !5048)
!5051 = !DILocation(line: 436, column: 47, scope: !5048)
!5052 = !DILocation(line: 436, column: 4, scope: !5048)
!5053 = !DILocation(line: 436, column: 11, scope: !5048)
!5054 = !DILocation(line: 436, column: 22, scope: !5048)
!5055 = !DILocation(line: 437, column: 29, scope: !5048)
!5056 = !DILocation(line: 437, column: 21, scope: !5048)
!5057 = !DILocation(line: 437, column: 32, scope: !5048)
!5058 = !DILocation(line: 437, column: 45, scope: !5048)
!5059 = !DILocation(line: 437, column: 4, scope: !5048)
!5060 = !DILocation(line: 437, column: 11, scope: !5048)
!5061 = !DILocation(line: 437, column: 19, scope: !5048)
!5062 = !DILocation(line: 438, column: 4, scope: !5048)
!5063 = !DILocation(line: 440, column: 2, scope: !5034)
!5064 = !DILocation(line: 432, column: 40, scope: !5029)
!5065 = !DILocation(line: 432, column: 2, scope: !5029)
!5066 = distinct !{!5066, !5031, !5067}
!5067 = !DILocation(line: 440, column: 2, scope: !5026)
!5068 = !DILocation(line: 441, column: 6, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 441, column: 6)
!5070 = !DILocation(line: 441, column: 8, scope: !5069)
!5071 = !DILocation(line: 441, column: 6, scope: !4986)
!5072 = !DILocation(line: 442, column: 3, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 441, column: 32)
!5074 = !DILocation(line: 444, column: 3, scope: !5073)
!5075 = !DILocation(line: 447, column: 2, scope: !4986)
!5076 = !DILocation(line: 447, column: 2, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 447, column: 2)
!5078 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 447, column: 2)
!5079 = !DILocation(line: 447, column: 2, scope: !5078)
!5080 = !DILocation(line: 448, column: 2, scope: !4986)
!5081 = !DILocation(line: 448, column: 2, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 448, column: 2)
!5083 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 448, column: 2)
!5084 = !DILocation(line: 448, column: 2, scope: !5083)
!5085 = !DILocation(line: 449, column: 2, scope: !4986)
!5086 = !DILocation(line: 449, column: 2, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 449, column: 2)
!5088 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 449, column: 2)
!5089 = !DILocation(line: 449, column: 2, scope: !5088)
!5090 = !DILocation(line: 450, column: 2, scope: !4986)
!5091 = !DILocation(line: 450, column: 2, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 450, column: 2)
!5093 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 450, column: 2)
!5094 = !DILocation(line: 450, column: 2, scope: !5093)
!5095 = !DILocation(line: 451, column: 2, scope: !4986)
!5096 = !DILocation(line: 451, column: 2, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 451, column: 2)
!5098 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 451, column: 2)
!5099 = !DILocation(line: 451, column: 2, scope: !5098)
!5100 = !DILocation(line: 454, column: 23, scope: !4986)
!5101 = !DILocation(line: 454, column: 30, scope: !4986)
!5102 = !DILocation(line: 454, column: 41, scope: !4986)
!5103 = !DILocation(line: 454, column: 48, scope: !4986)
!5104 = !DILocation(line: 454, column: 60, scope: !4986)
!5105 = !DILocation(line: 454, column: 38, scope: !4986)
!5106 = !DILocation(line: 454, column: 2, scope: !4986)
!5107 = !DILocation(line: 454, column: 9, scope: !4986)
!5108 = !DILocation(line: 454, column: 21, scope: !4986)
!5109 = !DILocation(line: 455, column: 25, scope: !4986)
!5110 = !DILocation(line: 455, column: 32, scope: !4986)
!5111 = !DILocation(line: 455, column: 44, scope: !4986)
!5112 = !DILocation(line: 455, column: 2, scope: !4986)
!5113 = !DILocation(line: 455, column: 9, scope: !4986)
!5114 = !DILocation(line: 455, column: 21, scope: !4986)
!5115 = !DILocation(line: 456, column: 25, scope: !4986)
!5116 = !DILocation(line: 456, column: 32, scope: !4986)
!5117 = !DILocation(line: 456, column: 44, scope: !4986)
!5118 = !DILocation(line: 456, column: 2, scope: !4986)
!5119 = !DILocation(line: 456, column: 9, scope: !4986)
!5120 = !DILocation(line: 456, column: 21, scope: !4986)
!5121 = !DILocation(line: 457, column: 2, scope: !4986)
!5122 = !DILocation(line: 457, column: 2, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 457, column: 2)
!5124 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 457, column: 2)
!5125 = !DILocation(line: 457, column: 2, scope: !5124)
!5126 = !DILocation(line: 460, column: 20, scope: !4986)
!5127 = !DILocation(line: 460, column: 24, scope: !4986)
!5128 = !DILocation(line: 460, column: 31, scope: !4986)
!5129 = !DILocation(line: 460, column: 44, scope: !4986)
!5130 = !DILocation(line: 460, column: 51, scope: !4986)
!5131 = !DILocation(line: 460, column: 2, scope: !4986)
!5132 = !DILocation(line: 462, column: 2, scope: !4986)
!5133 = !DILocation(line: 463, column: 1, scope: !4986)
!5134 = distinct !DISubprogram(name: "tda10048_set_bandwidth", scope: !3, file: !3, line: 383, type: !4280, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5135 = !DILocalVariable(name: "fe", arg: 1, scope: !5134, file: !3, line: 383, type: !437)
!5136 = !DILocation(line: 383, column: 56, scope: !5134)
!5137 = !DILocalVariable(name: "bw", arg: 2, scope: !5134, file: !3, line: 384, type: !304)
!5138 = !DILocation(line: 384, column: 6, scope: !5134)
!5139 = !DILocalVariable(name: "state", scope: !5134, file: !3, line: 386, type: !4481)
!5140 = !DILocation(line: 386, column: 25, scope: !5134)
!5141 = !DILocation(line: 386, column: 33, scope: !5134)
!5142 = !DILocation(line: 386, column: 37, scope: !5134)
!5143 = !DILocation(line: 387, column: 2, scope: !5134)
!5144 = !DILocation(line: 387, column: 2, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 387, column: 2)
!5146 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 387, column: 2)
!5147 = !DILocation(line: 387, column: 2, scope: !5146)
!5148 = !DILocation(line: 390, column: 10, scope: !5134)
!5149 = !DILocation(line: 390, column: 2, scope: !5134)
!5150 = !DILocation(line: 394, column: 21, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 390, column: 14)
!5152 = !DILocation(line: 394, column: 25, scope: !5151)
!5153 = !DILocation(line: 394, column: 32, scope: !5151)
!5154 = !DILocation(line: 394, column: 45, scope: !5151)
!5155 = !DILocation(line: 394, column: 3, scope: !5151)
!5156 = !DILocation(line: 395, column: 24, scope: !5151)
!5157 = !DILocation(line: 395, column: 28, scope: !5151)
!5158 = !DILocation(line: 395, column: 35, scope: !5151)
!5159 = !DILocation(line: 395, column: 48, scope: !5151)
!5160 = !DILocation(line: 395, column: 3, scope: !5151)
!5161 = !DILocation(line: 396, column: 3, scope: !5151)
!5162 = !DILocation(line: 398, column: 3, scope: !5151)
!5163 = !DILocation(line: 399, column: 3, scope: !5151)
!5164 = !DILocation(line: 402, column: 21, scope: !5134)
!5165 = !DILocation(line: 402, column: 2, scope: !5134)
!5166 = !DILocation(line: 402, column: 9, scope: !5134)
!5167 = !DILocation(line: 402, column: 19, scope: !5134)
!5168 = !DILocation(line: 404, column: 2, scope: !5134)
!5169 = !DILocation(line: 405, column: 1, scope: !5134)
!5170 = distinct !DISubprogram(name: "tda10048_i2c_gate_ctrl", scope: !3, file: !3, line: 676, type: !4221, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5171 = !DILocalVariable(name: "fe", arg: 1, scope: !5170, file: !3, line: 676, type: !437)
!5172 = !DILocation(line: 676, column: 56, scope: !5170)
!5173 = !DILocalVariable(name: "enable", arg: 2, scope: !5170, file: !3, line: 676, type: !294)
!5174 = !DILocation(line: 676, column: 64, scope: !5170)
!5175 = !DILocalVariable(name: "state", scope: !5170, file: !3, line: 678, type: !4481)
!5176 = !DILocation(line: 678, column: 25, scope: !5170)
!5177 = !DILocation(line: 678, column: 33, scope: !5170)
!5178 = !DILocation(line: 678, column: 37, scope: !5170)
!5179 = !DILocalVariable(name: "config", scope: !5170, file: !3, line: 679, type: !4879)
!5180 = !DILocation(line: 679, column: 26, scope: !5170)
!5181 = !DILocation(line: 679, column: 36, scope: !5170)
!5182 = !DILocation(line: 679, column: 43, scope: !5170)
!5183 = !DILocation(line: 680, column: 2, scope: !5170)
!5184 = !DILocation(line: 680, column: 2, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 680, column: 2)
!5186 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 680, column: 2)
!5187 = !DILocation(line: 680, column: 2, scope: !5186)
!5188 = !DILocation(line: 682, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 682, column: 6)
!5190 = !DILocation(line: 682, column: 14, scope: !5189)
!5191 = !DILocation(line: 682, column: 6, scope: !5170)
!5192 = !DILocation(line: 683, column: 3, scope: !5189)
!5193 = !DILocation(line: 685, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 685, column: 6)
!5195 = !DILocation(line: 685, column: 6, scope: !5170)
!5196 = !DILocation(line: 686, column: 28, scope: !5194)
!5197 = !DILocation(line: 687, column: 21, scope: !5194)
!5198 = !DILocation(line: 687, column: 4, scope: !5194)
!5199 = !DILocation(line: 687, column: 48, scope: !5194)
!5200 = !DILocation(line: 686, column: 10, scope: !5194)
!5201 = !DILocation(line: 686, column: 3, scope: !5194)
!5202 = !DILocation(line: 689, column: 28, scope: !5194)
!5203 = !DILocation(line: 690, column: 21, scope: !5194)
!5204 = !DILocation(line: 690, column: 4, scope: !5194)
!5205 = !DILocation(line: 690, column: 48, scope: !5194)
!5206 = !DILocation(line: 689, column: 10, scope: !5194)
!5207 = !DILocation(line: 689, column: 3, scope: !5194)
!5208 = !DILocation(line: 691, column: 1, scope: !5170)
!5209 = distinct !DISubprogram(name: "get_order", scope: !5210, file: !5210, line: 29, type: !5211, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5210 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!294, !580}
!5213 = !DILocalVariable(name: "x", arg: 1, scope: !5214, file: !5215, line: 366, type: !298)
!5214 = distinct !DISubprogram(name: "fls64", scope: !5215, file: !5215, line: 366, type: !5216, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5215 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!294, !298}
!5218 = !DILocation(line: 366, column: 40, scope: !5214, inlinedAt: !5219)
!5219 = distinct !DILocation(line: 46, column: 9, scope: !5209)
!5220 = !DILocalVariable(name: "bitpos", scope: !5214, file: !5215, line: 368, type: !294)
!5221 = !DILocation(line: 368, column: 6, scope: !5214, inlinedAt: !5219)
!5222 = !DILocalVariable(name: "size", arg: 1, scope: !5209, file: !5210, line: 29, type: !580)
!5223 = !DILocation(line: 29, column: 63, scope: !5209)
!5224 = !DILocation(line: 31, column: 27, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5209, file: !5210, line: 31, column: 6)
!5226 = !DILocation(line: 31, column: 6, scope: !5225)
!5227 = !DILocation(line: 31, column: 6, scope: !5209)
!5228 = !DILocation(line: 32, column: 8, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !5210, line: 32, column: 7)
!5230 = distinct !DILexicalBlock(scope: !5225, file: !5210, line: 31, column: 34)
!5231 = !DILocation(line: 32, column: 7, scope: !5230)
!5232 = !DILocation(line: 33, column: 4, scope: !5229)
!5233 = !DILocation(line: 35, column: 7, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5230, file: !5210, line: 35, column: 7)
!5235 = !DILocation(line: 35, column: 12, scope: !5234)
!5236 = !DILocation(line: 35, column: 7, scope: !5230)
!5237 = !DILocation(line: 36, column: 4, scope: !5234)
!5238 = !DILocation(line: 38, column: 10, scope: !5230)
!5239 = !DILocation(line: 38, column: 28, scope: !5230)
!5240 = !DILocation(line: 38, column: 41, scope: !5230)
!5241 = !DILocation(line: 38, column: 3, scope: !5230)
!5242 = !DILocation(line: 41, column: 6, scope: !5209)
!5243 = !DILocation(line: 42, column: 7, scope: !5209)
!5244 = !DILocation(line: 46, column: 15, scope: !5209)
!5245 = !DILocation(line: 374, column: 2, scope: !5214, inlinedAt: !5219)
!5246 = !DILocation(line: 376, column: 14, scope: !5214, inlinedAt: !5219)
!5247 = !{i32 267918}
!5248 = !DILocation(line: 377, column: 9, scope: !5214, inlinedAt: !5219)
!5249 = !DILocation(line: 377, column: 16, scope: !5214, inlinedAt: !5219)
!5250 = !DILocation(line: 46, column: 2, scope: !5209)
!5251 = !DILocation(line: 48, column: 1, scope: !5209)
!5252 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5253, file: !5253, line: 30, type: !5254, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5253 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!294, !296}
!5256 = !DILocation(line: 366, column: 40, scope: !5214, inlinedAt: !5257)
!5257 = distinct !DILocation(line: 32, column: 9, scope: !5252)
!5258 = !DILocation(line: 368, column: 6, scope: !5214, inlinedAt: !5257)
!5259 = !DILocalVariable(name: "n", arg: 1, scope: !5252, file: !5253, line: 30, type: !296)
!5260 = !DILocation(line: 30, column: 21, scope: !5252)
!5261 = !DILocation(line: 32, column: 15, scope: !5252)
!5262 = !DILocation(line: 374, column: 2, scope: !5214, inlinedAt: !5257)
!5263 = !DILocation(line: 376, column: 14, scope: !5214, inlinedAt: !5257)
!5264 = !DILocation(line: 377, column: 9, scope: !5214, inlinedAt: !5257)
!5265 = !DILocation(line: 377, column: 16, scope: !5214, inlinedAt: !5257)
!5266 = !DILocation(line: 32, column: 18, scope: !5252)
!5267 = !DILocation(line: 32, column: 2, scope: !5252)
!5268 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5269, file: !5269, line: 137, type: !5270, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5269 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!293, !1174, !2282, !577, !291}
!5272 = !DILocalVariable(name: "s", arg: 1, scope: !5268, file: !5269, line: 137, type: !1174)
!5273 = !DILocation(line: 137, column: 54, scope: !5268)
!5274 = !DILocalVariable(name: "object", arg: 2, scope: !5268, file: !5269, line: 137, type: !2282)
!5275 = !DILocation(line: 137, column: 69, scope: !5268)
!5276 = !DILocalVariable(name: "size", arg: 3, scope: !5268, file: !5269, line: 138, type: !577)
!5277 = !DILocation(line: 138, column: 12, scope: !5268)
!5278 = !DILocalVariable(name: "flags", arg: 4, scope: !5268, file: !5269, line: 138, type: !291)
!5279 = !DILocation(line: 138, column: 24, scope: !5268)
!5280 = !DILocation(line: 140, column: 17, scope: !5268)
!5281 = !DILocation(line: 140, column: 2, scope: !5268)
!5282 = distinct !DISubprogram(name: "tda10048_set_phy2", scope: !3, file: !3, line: 291, type: !5283, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!294, !437, !304, !304}
!5285 = !DILocalVariable(name: "fe", arg: 1, scope: !5282, file: !3, line: 291, type: !437)
!5286 = !DILocation(line: 291, column: 51, scope: !5282)
!5287 = !DILocalVariable(name: "sample_freq_hz", arg: 2, scope: !5282, file: !3, line: 291, type: !304)
!5288 = !DILocation(line: 291, column: 59, scope: !5282)
!5289 = !DILocalVariable(name: "if_hz", arg: 3, scope: !5282, file: !3, line: 292, type: !304)
!5290 = !DILocation(line: 292, column: 13, scope: !5282)
!5291 = !DILocalVariable(name: "state", scope: !5282, file: !3, line: 294, type: !4481)
!5292 = !DILocation(line: 294, column: 25, scope: !5282)
!5293 = !DILocation(line: 294, column: 33, scope: !5282)
!5294 = !DILocation(line: 294, column: 37, scope: !5282)
!5295 = !DILocalVariable(name: "t", scope: !5282, file: !3, line: 295, type: !296)
!5296 = !DILocation(line: 295, column: 6, scope: !5282)
!5297 = !DILocation(line: 297, column: 2, scope: !5282)
!5298 = !DILocation(line: 297, column: 2, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 297, column: 2)
!5300 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 297, column: 2)
!5301 = !DILocation(line: 297, column: 2, scope: !5300)
!5302 = !DILocation(line: 299, column: 6, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 299, column: 6)
!5304 = !DILocation(line: 299, column: 21, scope: !5303)
!5305 = !DILocation(line: 299, column: 6, scope: !5282)
!5306 = !DILocation(line: 300, column: 3, scope: !5303)
!5307 = !DILocation(line: 302, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 302, column: 6)
!5309 = !DILocation(line: 302, column: 15, scope: !5308)
!5310 = !DILocation(line: 302, column: 30, scope: !5308)
!5311 = !DILocation(line: 302, column: 12, scope: !5308)
!5312 = !DILocation(line: 302, column: 6, scope: !5282)
!5313 = !DILocation(line: 304, column: 7, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 302, column: 36)
!5315 = !DILocation(line: 304, column: 5, scope: !5314)
!5316 = !DILocation(line: 305, column: 5, scope: !5314)
!5317 = !DILocation(line: 306, column: 5, scope: !5314)
!5318 = !DILocalVariable(name: "__base", scope: !5319, file: !3, line: 307, type: !804)
!5319 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 307, column: 3)
!5320 = !DILocation(line: 307, column: 3, scope: !5319)
!5321 = !DILocalVariable(name: "__rem", scope: !5319, file: !3, line: 307, type: !804)
!5322 = !DILocation(line: 308, column: 5, scope: !5314)
!5323 = !DILocalVariable(name: "__base", scope: !5324, file: !3, line: 309, type: !804)
!5324 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 309, column: 3)
!5325 = !DILocation(line: 309, column: 3, scope: !5324)
!5326 = !DILocalVariable(name: "__rem", scope: !5324, file: !3, line: 309, type: !804)
!5327 = !DILocation(line: 310, column: 2, scope: !5314)
!5328 = !DILocation(line: 312, column: 7, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 310, column: 9)
!5330 = !DILocation(line: 312, column: 24, scope: !5329)
!5331 = !DILocation(line: 312, column: 22, scope: !5329)
!5332 = !DILocation(line: 312, column: 5, scope: !5329)
!5333 = !DILocation(line: 313, column: 5, scope: !5329)
!5334 = !DILocation(line: 314, column: 5, scope: !5329)
!5335 = !DILocalVariable(name: "__base", scope: !5336, file: !3, line: 315, type: !804)
!5336 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 315, column: 3)
!5337 = !DILocation(line: 315, column: 3, scope: !5336)
!5338 = !DILocalVariable(name: "__rem", scope: !5336, file: !3, line: 315, type: !804)
!5339 = !DILocation(line: 316, column: 5, scope: !5329)
!5340 = !DILocalVariable(name: "__base", scope: !5341, file: !3, line: 317, type: !804)
!5341 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 317, column: 3)
!5342 = !DILocation(line: 317, column: 3, scope: !5341)
!5343 = !DILocalVariable(name: "__rem", scope: !5341, file: !3, line: 317, type: !804)
!5344 = !DILocation(line: 318, column: 8, scope: !5329)
!5345 = !DILocation(line: 318, column: 7, scope: !5329)
!5346 = !DILocation(line: 318, column: 10, scope: !5329)
!5347 = !DILocation(line: 318, column: 5, scope: !5329)
!5348 = !DILocation(line: 321, column: 20, scope: !5282)
!5349 = !DILocation(line: 321, column: 55, scope: !5282)
!5350 = !DILocation(line: 321, column: 51, scope: !5282)
!5351 = !DILocation(line: 321, column: 2, scope: !5282)
!5352 = !DILocation(line: 322, column: 20, scope: !5282)
!5353 = !DILocation(line: 322, column: 56, scope: !5282)
!5354 = !DILocation(line: 322, column: 58, scope: !5282)
!5355 = !DILocation(line: 322, column: 51, scope: !5282)
!5356 = !DILocation(line: 322, column: 2, scope: !5282)
!5357 = !DILocation(line: 324, column: 2, scope: !5282)
!5358 = !DILocation(line: 325, column: 1, scope: !5282)
!5359 = distinct !DISubprogram(name: "tda10048_writereg", scope: !3, file: !3, line: 209, type: !5360, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!294, !4481, !301, !301}
!5362 = !DILocalVariable(name: "state", arg: 1, scope: !5359, file: !3, line: 209, type: !4481)
!5363 = !DILocation(line: 209, column: 53, scope: !5359)
!5364 = !DILocalVariable(name: "reg", arg: 2, scope: !5359, file: !3, line: 209, type: !301)
!5365 = !DILocation(line: 209, column: 63, scope: !5359)
!5366 = !DILocalVariable(name: "data", arg: 3, scope: !5359, file: !3, line: 209, type: !301)
!5367 = !DILocation(line: 209, column: 71, scope: !5359)
!5368 = !DILocalVariable(name: "config", scope: !5359, file: !3, line: 211, type: !4879)
!5369 = !DILocation(line: 211, column: 26, scope: !5359)
!5370 = !DILocation(line: 211, column: 36, scope: !5359)
!5371 = !DILocation(line: 211, column: 43, scope: !5359)
!5372 = !DILocalVariable(name: "ret", scope: !5359, file: !3, line: 212, type: !294)
!5373 = !DILocation(line: 212, column: 6, scope: !5359)
!5374 = !DILocalVariable(name: "buf", scope: !5359, file: !3, line: 213, type: !5375)
!5375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 16, elements: !1724)
!5376 = !DILocation(line: 213, column: 5, scope: !5359)
!5377 = !DILocation(line: 213, column: 13, scope: !5359)
!5378 = !DILocation(line: 213, column: 15, scope: !5359)
!5379 = !DILocation(line: 213, column: 20, scope: !5359)
!5380 = !DILocalVariable(name: "msg", scope: !5359, file: !3, line: 214, type: !4370)
!5381 = !DILocation(line: 214, column: 17, scope: !5359)
!5382 = !DILocation(line: 214, column: 23, scope: !5359)
!5383 = !DILocation(line: 215, column: 11, scope: !5359)
!5384 = !DILocation(line: 215, column: 19, scope: !5359)
!5385 = !DILocation(line: 216, column: 22, scope: !5359)
!5386 = !DILocation(line: 218, column: 2, scope: !5359)
!5387 = !DILocation(line: 218, column: 2, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 218, column: 2)
!5389 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 218, column: 2)
!5390 = !DILocation(line: 218, column: 2, scope: !5389)
!5391 = !DILocation(line: 220, column: 21, scope: !5359)
!5392 = !DILocation(line: 220, column: 28, scope: !5359)
!5393 = !DILocation(line: 220, column: 8, scope: !5359)
!5394 = !DILocation(line: 220, column: 6, scope: !5359)
!5395 = !DILocation(line: 222, column: 6, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 222, column: 6)
!5397 = !DILocation(line: 222, column: 10, scope: !5396)
!5398 = !DILocation(line: 222, column: 6, scope: !5359)
!5399 = !DILocation(line: 223, column: 56, scope: !5396)
!5400 = !DILocation(line: 223, column: 3, scope: !5396)
!5401 = !DILocation(line: 225, column: 10, scope: !5359)
!5402 = !DILocation(line: 225, column: 14, scope: !5359)
!5403 = !DILocation(line: 225, column: 9, scope: !5359)
!5404 = !DILocation(line: 225, column: 2, scope: !5359)
!5405 = distinct !DISubprogram(name: "tda10048_set_wref", scope: !3, file: !3, line: 327, type: !5283, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5406 = !DILocalVariable(name: "fe", arg: 1, scope: !5405, file: !3, line: 327, type: !437)
!5407 = !DILocation(line: 327, column: 51, scope: !5405)
!5408 = !DILocalVariable(name: "sample_freq_hz", arg: 2, scope: !5405, file: !3, line: 327, type: !304)
!5409 = !DILocation(line: 327, column: 59, scope: !5405)
!5410 = !DILocalVariable(name: "bw", arg: 3, scope: !5405, file: !3, line: 328, type: !304)
!5411 = !DILocation(line: 328, column: 13, scope: !5405)
!5412 = !DILocalVariable(name: "state", scope: !5405, file: !3, line: 330, type: !4481)
!5413 = !DILocation(line: 330, column: 25, scope: !5405)
!5414 = !DILocation(line: 330, column: 33, scope: !5405)
!5415 = !DILocation(line: 330, column: 37, scope: !5405)
!5416 = !DILocalVariable(name: "t", scope: !5405, file: !3, line: 331, type: !296)
!5417 = !DILocation(line: 331, column: 6, scope: !5405)
!5418 = !DILocalVariable(name: "z", scope: !5405, file: !3, line: 331, type: !296)
!5419 = !DILocation(line: 331, column: 9, scope: !5405)
!5420 = !DILocation(line: 333, column: 2, scope: !5405)
!5421 = !DILocation(line: 333, column: 2, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 333, column: 2)
!5423 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 333, column: 2)
!5424 = !DILocation(line: 333, column: 2, scope: !5423)
!5425 = !DILocation(line: 335, column: 6, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 335, column: 6)
!5427 = !DILocation(line: 335, column: 21, scope: !5426)
!5428 = !DILocation(line: 335, column: 6, scope: !5405)
!5429 = !DILocation(line: 336, column: 3, scope: !5426)
!5430 = !DILocation(line: 339, column: 6, scope: !5405)
!5431 = !DILocation(line: 339, column: 9, scope: !5405)
!5432 = !DILocation(line: 339, column: 4, scope: !5405)
!5433 = !DILocation(line: 342, column: 4, scope: !5405)
!5434 = !DILocation(line: 343, column: 4, scope: !5405)
!5435 = !DILocation(line: 344, column: 10, scope: !5405)
!5436 = !DILocation(line: 344, column: 8, scope: !5405)
!5437 = !DILocation(line: 344, column: 6, scope: !5405)
!5438 = !DILocation(line: 344, column: 4, scope: !5405)
!5439 = !DILocalVariable(name: "__base", scope: !5440, file: !3, line: 345, type: !804)
!5440 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 345, column: 2)
!5441 = !DILocation(line: 345, column: 2, scope: !5440)
!5442 = !DILocalVariable(name: "__rem", scope: !5440, file: !3, line: 345, type: !804)
!5443 = !DILocation(line: 346, column: 4, scope: !5405)
!5444 = !DILocalVariable(name: "__base", scope: !5445, file: !3, line: 347, type: !804)
!5445 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 347, column: 2)
!5446 = !DILocation(line: 347, column: 2, scope: !5445)
!5447 = !DILocalVariable(name: "__rem", scope: !5445, file: !3, line: 347, type: !804)
!5448 = !DILocation(line: 349, column: 20, scope: !5405)
!5449 = !DILocation(line: 349, column: 55, scope: !5405)
!5450 = !DILocation(line: 349, column: 51, scope: !5405)
!5451 = !DILocation(line: 349, column: 2, scope: !5405)
!5452 = !DILocation(line: 350, column: 20, scope: !5405)
!5453 = !DILocation(line: 350, column: 57, scope: !5405)
!5454 = !DILocation(line: 350, column: 59, scope: !5405)
!5455 = !DILocation(line: 350, column: 52, scope: !5405)
!5456 = !DILocation(line: 350, column: 2, scope: !5405)
!5457 = !DILocation(line: 351, column: 20, scope: !5405)
!5458 = !DILocation(line: 351, column: 57, scope: !5405)
!5459 = !DILocation(line: 351, column: 59, scope: !5405)
!5460 = !DILocation(line: 351, column: 52, scope: !5405)
!5461 = !DILocation(line: 351, column: 2, scope: !5405)
!5462 = !DILocation(line: 352, column: 20, scope: !5405)
!5463 = !DILocation(line: 352, column: 56, scope: !5405)
!5464 = !DILocation(line: 352, column: 58, scope: !5405)
!5465 = !DILocation(line: 352, column: 51, scope: !5405)
!5466 = !DILocation(line: 352, column: 2, scope: !5405)
!5467 = !DILocation(line: 354, column: 2, scope: !5405)
!5468 = !DILocation(line: 355, column: 1, scope: !5405)
!5469 = distinct !DISubprogram(name: "tda10048_set_invwref", scope: !3, file: !3, line: 357, type: !5283, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5470 = !DILocalVariable(name: "fe", arg: 1, scope: !5469, file: !3, line: 357, type: !437)
!5471 = !DILocation(line: 357, column: 54, scope: !5469)
!5472 = !DILocalVariable(name: "sample_freq_hz", arg: 2, scope: !5469, file: !3, line: 357, type: !304)
!5473 = !DILocation(line: 357, column: 62, scope: !5469)
!5474 = !DILocalVariable(name: "bw", arg: 3, scope: !5469, file: !3, line: 358, type: !304)
!5475 = !DILocation(line: 358, column: 9, scope: !5469)
!5476 = !DILocalVariable(name: "state", scope: !5469, file: !3, line: 360, type: !4481)
!5477 = !DILocation(line: 360, column: 25, scope: !5469)
!5478 = !DILocation(line: 360, column: 33, scope: !5469)
!5479 = !DILocation(line: 360, column: 37, scope: !5469)
!5480 = !DILocalVariable(name: "t", scope: !5469, file: !3, line: 361, type: !296)
!5481 = !DILocation(line: 361, column: 6, scope: !5469)
!5482 = !DILocation(line: 363, column: 2, scope: !5469)
!5483 = !DILocation(line: 363, column: 2, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 363, column: 2)
!5485 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 363, column: 2)
!5486 = !DILocation(line: 363, column: 2, scope: !5485)
!5487 = !DILocation(line: 365, column: 6, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 365, column: 6)
!5489 = !DILocation(line: 365, column: 21, scope: !5488)
!5490 = !DILocation(line: 365, column: 6, scope: !5469)
!5491 = !DILocation(line: 366, column: 3, scope: !5488)
!5492 = !DILocation(line: 369, column: 6, scope: !5469)
!5493 = !DILocation(line: 369, column: 4, scope: !5469)
!5494 = !DILocation(line: 370, column: 4, scope: !5469)
!5495 = !DILocation(line: 371, column: 4, scope: !5469)
!5496 = !DILocation(line: 372, column: 4, scope: !5469)
!5497 = !DILocalVariable(name: "__base", scope: !5498, file: !3, line: 373, type: !804)
!5498 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 373, column: 2)
!5499 = !DILocation(line: 373, column: 2, scope: !5498)
!5500 = !DILocalVariable(name: "__rem", scope: !5498, file: !3, line: 373, type: !804)
!5501 = !DILocation(line: 374, column: 4, scope: !5469)
!5502 = !DILocalVariable(name: "__base", scope: !5503, file: !3, line: 375, type: !804)
!5503 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 375, column: 2)
!5504 = !DILocation(line: 375, column: 2, scope: !5503)
!5505 = !DILocalVariable(name: "__rem", scope: !5503, file: !3, line: 375, type: !804)
!5506 = !DILocation(line: 377, column: 20, scope: !5469)
!5507 = !DILocation(line: 377, column: 58, scope: !5469)
!5508 = !DILocation(line: 377, column: 54, scope: !5469)
!5509 = !DILocation(line: 377, column: 2, scope: !5469)
!5510 = !DILocation(line: 378, column: 20, scope: !5469)
!5511 = !DILocation(line: 378, column: 59, scope: !5469)
!5512 = !DILocation(line: 378, column: 61, scope: !5469)
!5513 = !DILocation(line: 378, column: 54, scope: !5469)
!5514 = !DILocation(line: 378, column: 2, scope: !5469)
!5515 = !DILocation(line: 380, column: 2, scope: !5469)
!5516 = !DILocation(line: 381, column: 1, scope: !5469)
!5517 = distinct !DISubprogram(name: "tda10048_release", scope: !3, file: !3, line: 1039, type: !435, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5518 = !DILocalVariable(name: "fe", arg: 1, scope: !5517, file: !3, line: 1039, type: !437)
!5519 = !DILocation(line: 1039, column: 51, scope: !5517)
!5520 = !DILocalVariable(name: "state", scope: !5517, file: !3, line: 1041, type: !4481)
!5521 = !DILocation(line: 1041, column: 25, scope: !5517)
!5522 = !DILocation(line: 1041, column: 33, scope: !5517)
!5523 = !DILocation(line: 1041, column: 37, scope: !5517)
!5524 = !DILocation(line: 1042, column: 2, scope: !5517)
!5525 = !DILocation(line: 1042, column: 2, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 1042, column: 2)
!5527 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 1042, column: 2)
!5528 = !DILocation(line: 1042, column: 2, scope: !5527)
!5529 = !DILocation(line: 1043, column: 8, scope: !5517)
!5530 = !DILocation(line: 1043, column: 2, scope: !5517)
!5531 = !DILocation(line: 1044, column: 1, scope: !5517)
!5532 = distinct !DISubprogram(name: "tda10048_init", scope: !3, file: !3, line: 748, type: !4128, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5533 = !DILocalVariable(name: "fe", arg: 1, scope: !5532, file: !3, line: 748, type: !437)
!5534 = !DILocation(line: 748, column: 47, scope: !5532)
!5535 = !DILocalVariable(name: "state", scope: !5532, file: !3, line: 750, type: !4481)
!5536 = !DILocation(line: 750, column: 25, scope: !5532)
!5537 = !DILocation(line: 750, column: 33, scope: !5532)
!5538 = !DILocation(line: 750, column: 37, scope: !5532)
!5539 = !DILocalVariable(name: "config", scope: !5532, file: !3, line: 751, type: !4879)
!5540 = !DILocation(line: 751, column: 26, scope: !5532)
!5541 = !DILocation(line: 751, column: 36, scope: !5532)
!5542 = !DILocation(line: 751, column: 43, scope: !5532)
!5543 = !DILocalVariable(name: "ret", scope: !5532, file: !3, line: 752, type: !294)
!5544 = !DILocation(line: 752, column: 6, scope: !5532)
!5545 = !DILocalVariable(name: "i", scope: !5532, file: !3, line: 752, type: !294)
!5546 = !DILocation(line: 752, column: 15, scope: !5532)
!5547 = !DILocation(line: 754, column: 2, scope: !5532)
!5548 = !DILocation(line: 754, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 754, column: 2)
!5550 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 754, column: 2)
!5551 = !DILocation(line: 754, column: 2, scope: !5550)
!5552 = !DILocation(line: 757, column: 26, scope: !5532)
!5553 = !DILocation(line: 757, column: 33, scope: !5532)
!5554 = !DILocation(line: 757, column: 21, scope: !5532)
!5555 = !DILocation(line: 757, column: 19, scope: !5532)
!5556 = !DILocation(line: 758, column: 26, scope: !5532)
!5557 = !DILocation(line: 758, column: 33, scope: !5532)
!5558 = !DILocation(line: 758, column: 21, scope: !5532)
!5559 = !DILocation(line: 758, column: 46, scope: !5532)
!5560 = !DILocation(line: 758, column: 19, scope: !5532)
!5561 = !DILocation(line: 761, column: 9, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 761, column: 2)
!5563 = !DILocation(line: 761, column: 7, scope: !5562)
!5564 = !DILocation(line: 761, column: 14, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 761, column: 2)
!5566 = !DILocation(line: 761, column: 16, scope: !5565)
!5567 = !DILocation(line: 761, column: 2, scope: !5562)
!5568 = !DILocation(line: 762, column: 21, scope: !5565)
!5569 = !DILocation(line: 762, column: 37, scope: !5565)
!5570 = !DILocation(line: 762, column: 28, scope: !5565)
!5571 = !DILocation(line: 762, column: 40, scope: !5565)
!5572 = !DILocation(line: 762, column: 54, scope: !5565)
!5573 = !DILocation(line: 762, column: 45, scope: !5565)
!5574 = !DILocation(line: 762, column: 57, scope: !5565)
!5575 = !DILocation(line: 762, column: 3, scope: !5565)
!5576 = !DILocation(line: 761, column: 41, scope: !5565)
!5577 = !DILocation(line: 761, column: 2, scope: !5565)
!5578 = distinct !{!5578, !5567, !5579}
!5579 = !DILocation(line: 762, column: 61, scope: !5562)
!5580 = !DILocation(line: 764, column: 6, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 764, column: 6)
!5582 = !DILocation(line: 764, column: 13, scope: !5581)
!5583 = !DILocation(line: 764, column: 22, scope: !5581)
!5584 = !DILocation(line: 764, column: 6, scope: !5532)
!5585 = !DILocation(line: 765, column: 34, scope: !5581)
!5586 = !DILocation(line: 765, column: 9, scope: !5581)
!5587 = !DILocation(line: 765, column: 7, scope: !5581)
!5588 = !DILocation(line: 765, column: 3, scope: !5581)
!5589 = !DILocation(line: 768, column: 23, scope: !5532)
!5590 = !DILocation(line: 768, column: 27, scope: !5532)
!5591 = !DILocation(line: 768, column: 35, scope: !5532)
!5592 = !DILocation(line: 768, column: 2, scope: !5532)
!5593 = !DILocation(line: 771, column: 25, scope: !5532)
!5594 = !DILocation(line: 771, column: 29, scope: !5532)
!5595 = !DILocation(line: 771, column: 37, scope: !5532)
!5596 = !DILocation(line: 771, column: 2, scope: !5532)
!5597 = !DILocation(line: 774, column: 18, scope: !5532)
!5598 = !DILocation(line: 774, column: 2, scope: !5532)
!5599 = !DILocation(line: 775, column: 25, scope: !5532)
!5600 = !DILocation(line: 775, column: 2, scope: !5532)
!5601 = !DILocation(line: 778, column: 25, scope: !5532)
!5602 = !DILocation(line: 778, column: 2, scope: !5532)
!5603 = !DILocation(line: 780, column: 9, scope: !5532)
!5604 = !DILocation(line: 780, column: 2, scope: !5532)
!5605 = distinct !DISubprogram(name: "tda10048_set_frontend", scope: !3, file: !3, line: 715, type: !4128, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5606 = !DILocalVariable(name: "fe", arg: 1, scope: !5605, file: !3, line: 715, type: !437)
!5607 = !DILocation(line: 715, column: 55, scope: !5605)
!5608 = !DILocalVariable(name: "p", scope: !5605, file: !3, line: 717, type: !4161)
!5609 = !DILocation(line: 717, column: 34, scope: !5605)
!5610 = !DILocation(line: 717, column: 39, scope: !5605)
!5611 = !DILocation(line: 717, column: 43, scope: !5605)
!5612 = !DILocalVariable(name: "state", scope: !5605, file: !3, line: 718, type: !4481)
!5613 = !DILocation(line: 718, column: 25, scope: !5605)
!5614 = !DILocation(line: 718, column: 33, scope: !5605)
!5615 = !DILocation(line: 718, column: 37, scope: !5605)
!5616 = !DILocation(line: 720, column: 2, scope: !5605)
!5617 = !DILocation(line: 720, column: 2, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 720, column: 2)
!5619 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 720, column: 2)
!5620 = !DILocation(line: 720, column: 2, scope: !5619)
!5621 = !DILocation(line: 723, column: 6, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 723, column: 6)
!5623 = !DILocation(line: 723, column: 9, scope: !5622)
!5624 = !DILocation(line: 723, column: 25, scope: !5622)
!5625 = !DILocation(line: 723, column: 32, scope: !5622)
!5626 = !DILocation(line: 723, column: 22, scope: !5622)
!5627 = !DILocation(line: 723, column: 6, scope: !5605)
!5628 = !DILocation(line: 724, column: 19, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 723, column: 43)
!5630 = !DILocation(line: 724, column: 23, scope: !5629)
!5631 = !DILocation(line: 724, column: 26, scope: !5629)
!5632 = !DILocation(line: 724, column: 3, scope: !5629)
!5633 = !DILocation(line: 725, column: 26, scope: !5629)
!5634 = !DILocation(line: 725, column: 30, scope: !5629)
!5635 = !DILocation(line: 725, column: 33, scope: !5629)
!5636 = !DILocation(line: 725, column: 3, scope: !5629)
!5637 = !DILocation(line: 726, column: 2, scope: !5629)
!5638 = !DILocation(line: 728, column: 6, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 728, column: 6)
!5640 = !DILocation(line: 728, column: 10, scope: !5639)
!5641 = !DILocation(line: 728, column: 14, scope: !5639)
!5642 = !DILocation(line: 728, column: 24, scope: !5639)
!5643 = !DILocation(line: 728, column: 6, scope: !5605)
!5644 = !DILocation(line: 730, column: 7, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 730, column: 7)
!5646 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 728, column: 36)
!5647 = !DILocation(line: 730, column: 11, scope: !5645)
!5648 = !DILocation(line: 730, column: 15, scope: !5645)
!5649 = !DILocation(line: 730, column: 7, scope: !5646)
!5650 = !DILocation(line: 731, column: 4, scope: !5645)
!5651 = !DILocation(line: 731, column: 8, scope: !5645)
!5652 = !DILocation(line: 731, column: 12, scope: !5645)
!5653 = !DILocation(line: 731, column: 26, scope: !5645)
!5654 = !DILocation(line: 733, column: 3, scope: !5646)
!5655 = !DILocation(line: 733, column: 7, scope: !5646)
!5656 = !DILocation(line: 733, column: 11, scope: !5646)
!5657 = !DILocation(line: 733, column: 21, scope: !5646)
!5658 = !DILocation(line: 733, column: 32, scope: !5646)
!5659 = !DILocation(line: 735, column: 7, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 735, column: 7)
!5661 = !DILocation(line: 735, column: 11, scope: !5660)
!5662 = !DILocation(line: 735, column: 15, scope: !5660)
!5663 = !DILocation(line: 735, column: 7, scope: !5646)
!5664 = !DILocation(line: 736, column: 4, scope: !5660)
!5665 = !DILocation(line: 736, column: 8, scope: !5660)
!5666 = !DILocation(line: 736, column: 12, scope: !5660)
!5667 = !DILocation(line: 736, column: 26, scope: !5660)
!5668 = !DILocation(line: 737, column: 2, scope: !5646)
!5669 = !DILocation(line: 740, column: 20, scope: !5605)
!5670 = !DILocation(line: 740, column: 2, scope: !5605)
!5671 = !DILocation(line: 742, column: 20, scope: !5605)
!5672 = !DILocation(line: 742, column: 2, scope: !5605)
!5673 = !DILocation(line: 744, column: 2, scope: !5605)
!5674 = distinct !DISubprogram(name: "tda10048_get_tune_settings", scope: !3, file: !3, line: 1032, type: !4149, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5675 = !DILocalVariable(name: "fe", arg: 1, scope: !5674, file: !3, line: 1032, type: !437)
!5676 = !DILocation(line: 1032, column: 60, scope: !5674)
!5677 = !DILocalVariable(name: "tune", arg: 2, scope: !5674, file: !3, line: 1033, type: !4151)
!5678 = !DILocation(line: 1033, column: 37, scope: !5674)
!5679 = !DILocation(line: 1035, column: 2, scope: !5674)
!5680 = !DILocation(line: 1035, column: 8, scope: !5674)
!5681 = !DILocation(line: 1035, column: 21, scope: !5674)
!5682 = !DILocation(line: 1036, column: 2, scope: !5674)
!5683 = distinct !DISubprogram(name: "tda10048_get_frontend", scope: !3, file: !3, line: 1019, type: !4159, scopeLine: 1021, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5684 = !DILocalVariable(name: "fe", arg: 1, scope: !5683, file: !3, line: 1019, type: !437)
!5685 = !DILocation(line: 1019, column: 55, scope: !5683)
!5686 = !DILocalVariable(name: "p", arg: 2, scope: !5683, file: !3, line: 1020, type: !4161)
!5687 = !DILocation(line: 1020, column: 38, scope: !5683)
!5688 = !DILocalVariable(name: "state", scope: !5683, file: !3, line: 1022, type: !4481)
!5689 = !DILocation(line: 1022, column: 25, scope: !5683)
!5690 = !DILocation(line: 1022, column: 33, scope: !5683)
!5691 = !DILocation(line: 1022, column: 37, scope: !5683)
!5692 = !DILocation(line: 1024, column: 2, scope: !5683)
!5693 = !DILocation(line: 1024, column: 2, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 1024, column: 2)
!5695 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 1024, column: 2)
!5696 = !DILocation(line: 1024, column: 2, scope: !5695)
!5697 = !DILocation(line: 1026, column: 34, scope: !5683)
!5698 = !DILocation(line: 1026, column: 17, scope: !5683)
!5699 = !DILocation(line: 1027, column: 3, scope: !5683)
!5700 = !DILocation(line: 1026, column: 2, scope: !5683)
!5701 = !DILocation(line: 1026, column: 5, scope: !5683)
!5702 = !DILocation(line: 1026, column: 15, scope: !5683)
!5703 = !DILocation(line: 1029, column: 26, scope: !5683)
!5704 = !DILocation(line: 1029, column: 33, scope: !5683)
!5705 = !DILocation(line: 1029, column: 9, scope: !5683)
!5706 = !DILocation(line: 1029, column: 2, scope: !5683)
!5707 = distinct !DISubprogram(name: "tda10048_read_status", scope: !3, file: !3, line: 783, type: !4164, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5708 = !DILocalVariable(name: "fe", arg: 1, scope: !5707, file: !3, line: 783, type: !437)
!5709 = !DILocation(line: 783, column: 54, scope: !5707)
!5710 = !DILocalVariable(name: "status", arg: 2, scope: !5707, file: !3, line: 783, type: !4141)
!5711 = !DILocation(line: 783, column: 74, scope: !5707)
!5712 = !DILocalVariable(name: "state", scope: !5707, file: !3, line: 785, type: !4481)
!5713 = !DILocation(line: 785, column: 25, scope: !5707)
!5714 = !DILocation(line: 785, column: 33, scope: !5707)
!5715 = !DILocation(line: 785, column: 37, scope: !5707)
!5716 = !DILocalVariable(name: "reg", scope: !5707, file: !3, line: 786, type: !301)
!5717 = !DILocation(line: 786, column: 5, scope: !5707)
!5718 = !DILocation(line: 788, column: 3, scope: !5707)
!5719 = !DILocation(line: 788, column: 10, scope: !5707)
!5720 = !DILocation(line: 790, column: 25, scope: !5707)
!5721 = !DILocation(line: 790, column: 8, scope: !5707)
!5722 = !DILocation(line: 790, column: 6, scope: !5707)
!5723 = !DILocation(line: 792, column: 2, scope: !5707)
!5724 = !DILocation(line: 792, column: 2, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 792, column: 2)
!5726 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 792, column: 2)
!5727 = !DILocation(line: 792, column: 2, scope: !5726)
!5728 = !DILocation(line: 794, column: 6, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 794, column: 6)
!5730 = !DILocation(line: 794, column: 10, scope: !5729)
!5731 = !DILocation(line: 794, column: 6, scope: !5707)
!5732 = !DILocation(line: 795, column: 4, scope: !5729)
!5733 = !DILocation(line: 795, column: 11, scope: !5729)
!5734 = !DILocation(line: 795, column: 3, scope: !5729)
!5735 = !DILocation(line: 797, column: 6, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 797, column: 6)
!5737 = !DILocation(line: 797, column: 10, scope: !5736)
!5738 = !DILocation(line: 797, column: 6, scope: !5707)
!5739 = !DILocation(line: 798, column: 4, scope: !5736)
!5740 = !DILocation(line: 798, column: 11, scope: !5736)
!5741 = !DILocation(line: 798, column: 3, scope: !5736)
!5742 = !DILocation(line: 800, column: 6, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 800, column: 6)
!5744 = !DILocation(line: 800, column: 10, scope: !5743)
!5745 = !DILocation(line: 800, column: 6, scope: !5707)
!5746 = !DILocation(line: 801, column: 4, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 800, column: 18)
!5748 = !DILocation(line: 801, column: 11, scope: !5747)
!5749 = !DILocation(line: 802, column: 4, scope: !5747)
!5750 = !DILocation(line: 802, column: 11, scope: !5747)
!5751 = !DILocation(line: 803, column: 4, scope: !5747)
!5752 = !DILocation(line: 803, column: 11, scope: !5747)
!5753 = !DILocation(line: 804, column: 2, scope: !5747)
!5754 = !DILocation(line: 806, column: 2, scope: !5707)
!5755 = !DILocalVariable(name: "fe", arg: 1, scope: !4312, file: !3, line: 809, type: !437)
!5756 = !DILocation(line: 809, column: 51, scope: !4312)
!5757 = !DILocalVariable(name: "ber", arg: 2, scope: !4312, file: !3, line: 809, type: !1565)
!5758 = !DILocation(line: 809, column: 60, scope: !4312)
!5759 = !DILocalVariable(name: "state", scope: !4312, file: !3, line: 811, type: !4481)
!5760 = !DILocation(line: 811, column: 25, scope: !4312)
!5761 = !DILocation(line: 811, column: 33, scope: !4312)
!5762 = !DILocation(line: 811, column: 37, scope: !4312)
!5763 = !DILocalVariable(name: "cber_nmax", scope: !4312, file: !3, line: 813, type: !304)
!5764 = !DILocation(line: 813, column: 6, scope: !4312)
!5765 = !DILocalVariable(name: "cber_tmp", scope: !4312, file: !3, line: 814, type: !296)
!5766 = !DILocation(line: 814, column: 6, scope: !4312)
!5767 = !DILocation(line: 816, column: 2, scope: !4312)
!5768 = !DILocation(line: 816, column: 2, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 816, column: 2)
!5770 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 816, column: 2)
!5771 = !DILocation(line: 816, column: 2, scope: !5770)
!5772 = !DILocation(line: 819, column: 23, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 819, column: 6)
!5774 = !DILocation(line: 819, column: 6, scope: !5773)
!5775 = !DILocation(line: 819, column: 51, scope: !5773)
!5776 = !DILocation(line: 819, column: 6, scope: !4312)
!5777 = !DILocation(line: 820, column: 31, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 819, column: 59)
!5779 = !DILocation(line: 820, column: 14, scope: !5778)
!5780 = !DILocation(line: 820, column: 57, scope: !5778)
!5781 = !DILocation(line: 821, column: 21, scope: !5778)
!5782 = !DILocation(line: 821, column: 4, scope: !5778)
!5783 = !DILocation(line: 820, column: 62, scope: !5778)
!5784 = !DILocation(line: 820, column: 12, scope: !5778)
!5785 = !DILocation(line: 822, column: 32, scope: !5778)
!5786 = !DILocation(line: 822, column: 15, scope: !5778)
!5787 = !DILocation(line: 822, column: 63, scope: !5778)
!5788 = !DILocation(line: 823, column: 21, scope: !5778)
!5789 = !DILocation(line: 823, column: 4, scope: !5778)
!5790 = !DILocation(line: 822, column: 68, scope: !5778)
!5791 = !DILocation(line: 822, column: 13, scope: !5778)
!5792 = !DILocation(line: 824, column: 12, scope: !5778)
!5793 = !DILocation(line: 825, column: 12, scope: !5778)
!5794 = !DILocation(line: 826, column: 22, scope: !5778)
!5795 = !DILocation(line: 826, column: 33, scope: !5778)
!5796 = !DILocation(line: 826, column: 43, scope: !5778)
!5797 = !DILocation(line: 826, column: 49, scope: !5778)
!5798 = !DILocation(line: 826, column: 14, scope: !5778)
!5799 = !DILocation(line: 826, column: 12, scope: !5778)
!5800 = !DILocation(line: 827, column: 23, scope: !5778)
!5801 = !DILocation(line: 827, column: 18, scope: !5778)
!5802 = !DILocation(line: 827, column: 16, scope: !5778)
!5803 = !DILocation(line: 829, column: 21, scope: !5778)
!5804 = !DILocation(line: 829, column: 3, scope: !5778)
!5805 = !DILocation(line: 830, column: 2, scope: !5778)
!5806 = !DILocation(line: 832, column: 9, scope: !4312)
!5807 = !DILocation(line: 832, column: 3, scope: !4312)
!5808 = !DILocation(line: 832, column: 7, scope: !4312)
!5809 = !DILocation(line: 834, column: 2, scope: !4312)
!5810 = distinct !DISubprogram(name: "tda10048_read_signal_strength", scope: !3, file: !3, line: 837, type: !4172, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5811 = !DILocalVariable(name: "fe", arg: 1, scope: !5810, file: !3, line: 837, type: !437)
!5812 = !DILocation(line: 837, column: 63, scope: !5810)
!5813 = !DILocalVariable(name: "signal_strength", arg: 2, scope: !5810, file: !3, line: 838, type: !4174)
!5814 = !DILocation(line: 838, column: 7, scope: !5810)
!5815 = !DILocalVariable(name: "state", scope: !5810, file: !3, line: 840, type: !4481)
!5816 = !DILocation(line: 840, column: 25, scope: !5810)
!5817 = !DILocation(line: 840, column: 33, scope: !5810)
!5818 = !DILocation(line: 840, column: 37, scope: !5810)
!5819 = !DILocalVariable(name: "v", scope: !5810, file: !3, line: 841, type: !301)
!5820 = !DILocation(line: 841, column: 5, scope: !5810)
!5821 = !DILocation(line: 843, column: 2, scope: !5810)
!5822 = !DILocation(line: 843, column: 2, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 843, column: 2)
!5824 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 843, column: 2)
!5825 = !DILocation(line: 843, column: 2, scope: !5824)
!5826 = !DILocation(line: 845, column: 3, scope: !5810)
!5827 = !DILocation(line: 845, column: 19, scope: !5810)
!5828 = !DILocation(line: 847, column: 23, scope: !5810)
!5829 = !DILocation(line: 847, column: 6, scope: !5810)
!5830 = !DILocation(line: 847, column: 4, scope: !5810)
!5831 = !DILocation(line: 848, column: 6, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 848, column: 6)
!5833 = !DILocation(line: 848, column: 8, scope: !5832)
!5834 = !DILocation(line: 848, column: 6, scope: !5810)
!5835 = !DILocation(line: 849, column: 24, scope: !5832)
!5836 = !DILocation(line: 849, column: 26, scope: !5832)
!5837 = !DILocation(line: 849, column: 34, scope: !5832)
!5838 = !DILocation(line: 849, column: 32, scope: !5832)
!5839 = !DILocation(line: 849, column: 4, scope: !5832)
!5840 = !DILocation(line: 849, column: 20, scope: !5832)
!5841 = !DILocation(line: 849, column: 3, scope: !5832)
!5842 = !DILocation(line: 851, column: 2, scope: !5810)
!5843 = distinct !DISubprogram(name: "tda10048_read_snr", scope: !3, file: !3, line: 984, type: !4172, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5844 = !DILocalVariable(name: "fe", arg: 1, scope: !5843, file: !3, line: 984, type: !437)
!5845 = !DILocation(line: 984, column: 51, scope: !5843)
!5846 = !DILocalVariable(name: "snr", arg: 2, scope: !5843, file: !3, line: 984, type: !4174)
!5847 = !DILocation(line: 984, column: 60, scope: !5843)
!5848 = !DILocalVariable(name: "state", scope: !5843, file: !3, line: 986, type: !4481)
!5849 = !DILocation(line: 986, column: 25, scope: !5843)
!5850 = !DILocation(line: 986, column: 33, scope: !5843)
!5851 = !DILocation(line: 986, column: 37, scope: !5843)
!5852 = !DILocalVariable(name: "v", scope: !5843, file: !3, line: 987, type: !301)
!5853 = !DILocation(line: 987, column: 5, scope: !5843)
!5854 = !DILocalVariable(name: "i", scope: !5843, file: !3, line: 988, type: !294)
!5855 = !DILocation(line: 988, column: 6, scope: !5843)
!5856 = !DILocalVariable(name: "ret", scope: !5843, file: !3, line: 988, type: !294)
!5857 = !DILocation(line: 988, column: 9, scope: !5843)
!5858 = !DILocation(line: 990, column: 2, scope: !5843)
!5859 = !DILocation(line: 990, column: 2, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 990, column: 2)
!5861 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 990, column: 2)
!5862 = !DILocation(line: 990, column: 2, scope: !5861)
!5863 = !DILocation(line: 992, column: 23, scope: !5843)
!5864 = !DILocation(line: 992, column: 6, scope: !5843)
!5865 = !DILocation(line: 992, column: 4, scope: !5843)
!5866 = !DILocation(line: 993, column: 9, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 993, column: 2)
!5868 = !DILocation(line: 993, column: 7, scope: !5867)
!5869 = !DILocation(line: 993, column: 14, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 993, column: 2)
!5871 = !DILocation(line: 993, column: 16, scope: !5870)
!5872 = !DILocation(line: 993, column: 2, scope: !5867)
!5873 = !DILocation(line: 994, column: 7, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 994, column: 7)
!5875 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 993, column: 44)
!5876 = !DILocation(line: 994, column: 20, scope: !5874)
!5877 = !DILocation(line: 994, column: 12, scope: !5874)
!5878 = !DILocation(line: 994, column: 23, scope: !5874)
!5879 = !DILocation(line: 994, column: 9, scope: !5874)
!5880 = !DILocation(line: 994, column: 7, scope: !5875)
!5881 = !DILocation(line: 995, column: 19, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 994, column: 28)
!5883 = !DILocation(line: 995, column: 11, scope: !5882)
!5884 = !DILocation(line: 995, column: 22, scope: !5882)
!5885 = !DILocation(line: 995, column: 5, scope: !5882)
!5886 = !DILocation(line: 995, column: 9, scope: !5882)
!5887 = !DILocation(line: 996, column: 8, scope: !5882)
!5888 = !DILocation(line: 997, column: 4, scope: !5882)
!5889 = !DILocation(line: 999, column: 2, scope: !5875)
!5890 = !DILocation(line: 993, column: 40, scope: !5870)
!5891 = !DILocation(line: 993, column: 2, scope: !5870)
!5892 = distinct !{!5892, !5872, !5893}
!5893 = !DILocation(line: 999, column: 2, scope: !5867)
!5894 = !DILocation(line: 1001, column: 9, scope: !5843)
!5895 = !DILocation(line: 1001, column: 2, scope: !5843)
!5896 = distinct !DISubprogram(name: "tda10048_read_ucblocks", scope: !3, file: !3, line: 1004, type: !4168, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5897 = !DILocalVariable(name: "fe", arg: 1, scope: !5896, file: !3, line: 1004, type: !437)
!5898 = !DILocation(line: 1004, column: 56, scope: !5896)
!5899 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5896, file: !3, line: 1004, type: !1565)
!5900 = !DILocation(line: 1004, column: 65, scope: !5896)
!5901 = !DILocalVariable(name: "state", scope: !5896, file: !3, line: 1006, type: !4481)
!5902 = !DILocation(line: 1006, column: 25, scope: !5896)
!5903 = !DILocation(line: 1006, column: 33, scope: !5896)
!5904 = !DILocation(line: 1006, column: 37, scope: !5896)
!5905 = !DILocation(line: 1008, column: 2, scope: !5896)
!5906 = !DILocation(line: 1008, column: 2, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 1008, column: 2)
!5908 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 1008, column: 2)
!5909 = !DILocation(line: 1008, column: 2, scope: !5908)
!5910 = !DILocation(line: 1010, column: 31, scope: !5896)
!5911 = !DILocation(line: 1010, column: 14, scope: !5896)
!5912 = !DILocation(line: 1010, column: 62, scope: !5896)
!5913 = !DILocation(line: 1011, column: 20, scope: !5896)
!5914 = !DILocation(line: 1011, column: 3, scope: !5896)
!5915 = !DILocation(line: 1010, column: 67, scope: !5896)
!5916 = !DILocation(line: 1010, column: 3, scope: !5896)
!5917 = !DILocation(line: 1010, column: 12, scope: !5896)
!5918 = !DILocation(line: 1013, column: 7, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 1013, column: 6)
!5920 = !DILocation(line: 1013, column: 6, scope: !5919)
!5921 = !DILocation(line: 1013, column: 16, scope: !5919)
!5922 = !DILocation(line: 1013, column: 6, scope: !5896)
!5923 = !DILocation(line: 1014, column: 21, scope: !5919)
!5924 = !DILocation(line: 1014, column: 3, scope: !5919)
!5925 = !DILocation(line: 1016, column: 2, scope: !5896)
!5926 = distinct !DISubprogram(name: "tda10048_firmware_upload", scope: !3, file: !3, line: 465, type: !4128, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!5927 = !DILocalVariable(name: "fe", arg: 1, scope: !5926, file: !3, line: 465, type: !437)
!5928 = !DILocation(line: 465, column: 58, scope: !5926)
!5929 = !DILocalVariable(name: "state", scope: !5926, file: !3, line: 467, type: !4481)
!5930 = !DILocation(line: 467, column: 25, scope: !5926)
!5931 = !DILocation(line: 467, column: 33, scope: !5926)
!5932 = !DILocation(line: 467, column: 37, scope: !5926)
!5933 = !DILocalVariable(name: "config", scope: !5926, file: !3, line: 468, type: !4879)
!5934 = !DILocation(line: 468, column: 26, scope: !5926)
!5935 = !DILocation(line: 468, column: 36, scope: !5926)
!5936 = !DILocation(line: 468, column: 43, scope: !5926)
!5937 = !DILocalVariable(name: "fw", scope: !5926, file: !3, line: 469, type: !5938)
!5938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5939, size: 64)
!5939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5940)
!5940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5941, line: 12, size: 192, elements: !5942)
!5941 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!5942 = !{!5943, !5944, !5945}
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5940, file: !5941, line: 13, baseType: !577, size: 64)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5940, file: !5941, line: 14, baseType: !4135, size: 64, offset: 64)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5940, file: !5941, line: 17, baseType: !293, size: 64, offset: 128)
!5946 = !DILocation(line: 469, column: 25, scope: !5926)
!5947 = !DILocalVariable(name: "ret", scope: !5926, file: !3, line: 470, type: !294)
!5948 = !DILocation(line: 470, column: 6, scope: !5926)
!5949 = !DILocalVariable(name: "pos", scope: !5926, file: !3, line: 471, type: !294)
!5950 = !DILocation(line: 471, column: 6, scope: !5926)
!5951 = !DILocalVariable(name: "cnt", scope: !5926, file: !3, line: 472, type: !294)
!5952 = !DILocation(line: 472, column: 6, scope: !5926)
!5953 = !DILocalVariable(name: "wlen", scope: !5926, file: !3, line: 473, type: !301)
!5954 = !DILocation(line: 473, column: 5, scope: !5926)
!5955 = !DILocation(line: 473, column: 12, scope: !5926)
!5956 = !DILocation(line: 473, column: 20, scope: !5926)
!5957 = !DILocation(line: 475, column: 7, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 475, column: 6)
!5959 = !DILocation(line: 475, column: 12, scope: !5958)
!5960 = !DILocation(line: 475, column: 39, scope: !5958)
!5961 = !DILocation(line: 475, column: 43, scope: !5958)
!5962 = !DILocation(line: 475, column: 48, scope: !5958)
!5963 = !DILocation(line: 475, column: 6, scope: !5926)
!5964 = !DILocation(line: 476, column: 8, scope: !5958)
!5965 = !DILocation(line: 476, column: 3, scope: !5958)
!5966 = !DILocation(line: 479, column: 2, scope: !5926)
!5967 = !DILocation(line: 484, column: 3, scope: !5926)
!5968 = !DILocation(line: 484, column: 10, scope: !5926)
!5969 = !DILocation(line: 484, column: 15, scope: !5926)
!5970 = !DILocation(line: 484, column: 19, scope: !5926)
!5971 = !DILocation(line: 483, column: 8, scope: !5926)
!5972 = !DILocation(line: 483, column: 6, scope: !5926)
!5973 = !DILocation(line: 485, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 485, column: 6)
!5975 = !DILocation(line: 485, column: 6, scope: !5926)
!5976 = !DILocation(line: 486, column: 3, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 485, column: 11)
!5978 = !DILocation(line: 488, column: 3, scope: !5977)
!5979 = !DILocation(line: 492, column: 4, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 489, column: 9)
!5981 = !DILocation(line: 492, column: 8, scope: !5980)
!5982 = !DILocation(line: 490, column: 3, scope: !5980)
!5983 = !DILocation(line: 493, column: 7, scope: !5980)
!5984 = !DILocation(line: 496, column: 6, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 496, column: 6)
!5986 = !DILocation(line: 496, column: 10, scope: !5985)
!5987 = !DILocation(line: 496, column: 15, scope: !5985)
!5988 = !DILocation(line: 496, column: 6, scope: !5926)
!5989 = !DILocation(line: 497, column: 3, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 496, column: 50)
!5991 = !DILocation(line: 498, column: 7, scope: !5990)
!5992 = !DILocation(line: 499, column: 2, scope: !5990)
!5993 = !DILocation(line: 500, column: 3, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 499, column: 9)
!5995 = !DILocation(line: 503, column: 21, scope: !5994)
!5996 = !DILocation(line: 504, column: 21, scope: !5994)
!5997 = !DILocation(line: 504, column: 4, scope: !5994)
!5998 = !DILocation(line: 505, column: 5, scope: !5994)
!5999 = !DILocation(line: 503, column: 3, scope: !5994)
!6000 = !DILocation(line: 506, column: 21, scope: !5994)
!6001 = !DILocation(line: 507, column: 21, scope: !5994)
!6002 = !DILocation(line: 507, column: 4, scope: !5994)
!6003 = !DILocation(line: 508, column: 5, scope: !5994)
!6004 = !DILocation(line: 506, column: 3, scope: !5994)
!6005 = !DILocation(line: 511, column: 21, scope: !5994)
!6006 = !DILocation(line: 512, column: 21, scope: !5994)
!6007 = !DILocation(line: 512, column: 4, scope: !5994)
!6008 = !DILocation(line: 512, column: 48, scope: !5994)
!6009 = !DILocation(line: 511, column: 3, scope: !5994)
!6010 = !DILocation(line: 515, column: 21, scope: !5994)
!6011 = !DILocation(line: 516, column: 21, scope: !5994)
!6012 = !DILocation(line: 516, column: 4, scope: !5994)
!6013 = !DILocation(line: 516, column: 48, scope: !5994)
!6014 = !DILocation(line: 515, column: 3, scope: !5994)
!6015 = !DILocation(line: 519, column: 21, scope: !5994)
!6016 = !DILocation(line: 519, column: 3, scope: !5994)
!6017 = !DILocation(line: 522, column: 3, scope: !5994)
!6018 = !DILocation(line: 522, column: 10, scope: !5994)
!6019 = !DILocation(line: 522, column: 16, scope: !5994)
!6020 = !DILocation(line: 522, column: 20, scope: !5994)
!6021 = !DILocation(line: 522, column: 14, scope: !5994)
!6022 = !DILocation(line: 524, column: 9, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 524, column: 8)
!6024 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 522, column: 26)
!6025 = !DILocation(line: 524, column: 13, scope: !6023)
!6026 = !DILocation(line: 524, column: 20, scope: !6023)
!6027 = !DILocation(line: 524, column: 18, scope: !6023)
!6028 = !DILocation(line: 524, column: 27, scope: !6023)
!6029 = !DILocation(line: 524, column: 25, scope: !6023)
!6030 = !DILocation(line: 524, column: 8, scope: !6024)
!6031 = !DILocation(line: 525, column: 11, scope: !6023)
!6032 = !DILocation(line: 525, column: 9, scope: !6023)
!6033 = !DILocation(line: 525, column: 5, scope: !6023)
!6034 = !DILocation(line: 527, column: 11, scope: !6023)
!6035 = !DILocation(line: 527, column: 15, scope: !6023)
!6036 = !DILocation(line: 527, column: 22, scope: !6023)
!6037 = !DILocation(line: 527, column: 20, scope: !6023)
!6038 = !DILocation(line: 527, column: 9, scope: !6023)
!6039 = !DILocation(line: 529, column: 26, scope: !6024)
!6040 = !DILocation(line: 530, column: 6, scope: !6024)
!6041 = !DILocation(line: 530, column: 10, scope: !6024)
!6042 = !DILocation(line: 530, column: 15, scope: !6024)
!6043 = !DILocation(line: 530, column: 21, scope: !6024)
!6044 = !DILocation(line: 529, column: 4, scope: !6024)
!6045 = !DILocation(line: 532, column: 11, scope: !6024)
!6046 = !DILocation(line: 532, column: 8, scope: !6024)
!6047 = distinct !{!6047, !6017, !6048}
!6048 = !DILocation(line: 533, column: 3, scope: !5994)
!6049 = !DILocation(line: 535, column: 7, scope: !5994)
!6050 = !DILocation(line: 537, column: 12, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 537, column: 3)
!6052 = !DILocation(line: 537, column: 8, scope: !6051)
!6053 = !DILocation(line: 537, column: 17, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6051, file: !3, line: 537, column: 3)
!6055 = !DILocation(line: 537, column: 21, scope: !6054)
!6056 = !DILocation(line: 537, column: 3, scope: !6051)
!6057 = !DILocation(line: 539, column: 4, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 537, column: 40)
!6059 = !DILocation(line: 541, column: 25, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 541, column: 8)
!6061 = !DILocation(line: 541, column: 8, scope: !6060)
!6062 = !DILocation(line: 542, column: 5, scope: !6060)
!6063 = !DILocation(line: 541, column: 8, scope: !6058)
!6064 = !DILocation(line: 543, column: 9, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 542, column: 13)
!6066 = !DILocation(line: 544, column: 5, scope: !6065)
!6067 = !DILocation(line: 546, column: 3, scope: !6058)
!6068 = !DILocation(line: 537, column: 33, scope: !6054)
!6069 = !DILocation(line: 537, column: 3, scope: !6054)
!6070 = distinct !{!6070, !6056, !6071}
!6071 = !DILocation(line: 546, column: 3, scope: !6051)
!6072 = !DILocation(line: 549, column: 19, scope: !5926)
!6073 = !DILocation(line: 549, column: 2, scope: !5926)
!6074 = !DILocation(line: 551, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 551, column: 6)
!6076 = !DILocation(line: 551, column: 10, scope: !6075)
!6077 = !DILocation(line: 551, column: 6, scope: !5926)
!6078 = !DILocation(line: 552, column: 3, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 551, column: 16)
!6080 = !DILocation(line: 553, column: 3, scope: !6079)
!6081 = !DILocation(line: 553, column: 10, scope: !6079)
!6082 = !DILocation(line: 553, column: 19, scope: !6079)
!6083 = !DILocation(line: 554, column: 2, scope: !6079)
!6084 = !DILocation(line: 555, column: 3, scope: !6075)
!6085 = !DILocation(line: 557, column: 9, scope: !5926)
!6086 = !DILocation(line: 557, column: 2, scope: !5926)
!6087 = !DILocation(line: 558, column: 1, scope: !5926)
!6088 = distinct !DISubprogram(name: "tda10048_output_mode", scope: !3, file: !3, line: 693, type: !4221, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!6089 = !DILocalVariable(name: "fe", arg: 1, scope: !6088, file: !3, line: 693, type: !437)
!6090 = !DILocation(line: 693, column: 54, scope: !6088)
!6091 = !DILocalVariable(name: "serial", arg: 2, scope: !6088, file: !3, line: 693, type: !294)
!6092 = !DILocation(line: 693, column: 62, scope: !6088)
!6093 = !DILocalVariable(name: "state", scope: !6088, file: !3, line: 695, type: !4481)
!6094 = !DILocation(line: 695, column: 25, scope: !6088)
!6095 = !DILocation(line: 695, column: 33, scope: !6088)
!6096 = !DILocation(line: 695, column: 37, scope: !6088)
!6097 = !DILocation(line: 696, column: 2, scope: !6088)
!6098 = !DILocation(line: 696, column: 2, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 696, column: 2)
!6100 = distinct !DILexicalBlock(scope: !6088, file: !3, line: 696, column: 2)
!6101 = !DILocation(line: 696, column: 2, scope: !6100)
!6102 = !DILocation(line: 699, column: 20, scope: !6088)
!6103 = !DILocation(line: 699, column: 2, scope: !6088)
!6104 = !DILocation(line: 700, column: 20, scope: !6088)
!6105 = !DILocation(line: 700, column: 2, scope: !6088)
!6106 = !DILocation(line: 702, column: 6, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6088, file: !3, line: 702, column: 6)
!6108 = !DILocation(line: 702, column: 6, scope: !6088)
!6109 = !DILocation(line: 703, column: 21, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 702, column: 14)
!6111 = !DILocation(line: 703, column: 3, scope: !6110)
!6112 = !DILocation(line: 704, column: 21, scope: !6110)
!6113 = !DILocation(line: 704, column: 3, scope: !6110)
!6114 = !DILocation(line: 705, column: 2, scope: !6110)
!6115 = !DILocation(line: 706, column: 21, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 705, column: 9)
!6117 = !DILocation(line: 706, column: 3, scope: !6116)
!6118 = !DILocation(line: 707, column: 21, scope: !6116)
!6119 = !DILocation(line: 707, column: 3, scope: !6116)
!6120 = !DILocation(line: 710, column: 2, scope: !6088)
!6121 = distinct !DISubprogram(name: "tda10048_set_inversion", scope: !3, file: !3, line: 560, type: !4221, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!6122 = !DILocalVariable(name: "fe", arg: 1, scope: !6121, file: !3, line: 560, type: !437)
!6123 = !DILocation(line: 560, column: 56, scope: !6121)
!6124 = !DILocalVariable(name: "inversion", arg: 2, scope: !6121, file: !3, line: 560, type: !294)
!6125 = !DILocation(line: 560, column: 64, scope: !6121)
!6126 = !DILocalVariable(name: "state", scope: !6121, file: !3, line: 562, type: !4481)
!6127 = !DILocation(line: 562, column: 25, scope: !6121)
!6128 = !DILocation(line: 562, column: 33, scope: !6121)
!6129 = !DILocation(line: 562, column: 37, scope: !6121)
!6130 = !DILocation(line: 564, column: 2, scope: !6121)
!6131 = !DILocation(line: 564, column: 2, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6133, file: !3, line: 564, column: 2)
!6133 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 564, column: 2)
!6134 = !DILocation(line: 564, column: 2, scope: !6133)
!6135 = !DILocation(line: 566, column: 6, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 566, column: 6)
!6137 = !DILocation(line: 566, column: 16, scope: !6136)
!6138 = !DILocation(line: 566, column: 6, scope: !6121)
!6139 = !DILocation(line: 567, column: 21, scope: !6136)
!6140 = !DILocation(line: 568, column: 21, scope: !6136)
!6141 = !DILocation(line: 568, column: 4, scope: !6136)
!6142 = !DILocation(line: 568, column: 48, scope: !6136)
!6143 = !DILocation(line: 567, column: 3, scope: !6136)
!6144 = !DILocation(line: 570, column: 21, scope: !6136)
!6145 = !DILocation(line: 571, column: 21, scope: !6136)
!6146 = !DILocation(line: 571, column: 4, scope: !6136)
!6147 = !DILocation(line: 571, column: 48, scope: !6136)
!6148 = !DILocation(line: 570, column: 3, scope: !6136)
!6149 = !DILocation(line: 573, column: 2, scope: !6121)
!6150 = distinct !DISubprogram(name: "tda10048_writeregbulk", scope: !3, file: !3, line: 251, type: !6151, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!6151 = !DISubroutineType(types: !6152)
!6152 = !{!294, !4481, !301, !4135, !343}
!6153 = !DILocation(line: 445, column: 72, scope: !4603, inlinedAt: !6154)
!6154 = distinct !DILocation(line: 552, column: 10, scope: !4608, inlinedAt: !6155)
!6155 = distinct !DILocation(line: 261, column: 8, scope: !6150)
!6156 = !DILocation(line: 446, column: 9, scope: !4603, inlinedAt: !6154)
!6157 = !DILocation(line: 446, column: 23, scope: !4603, inlinedAt: !6154)
!6158 = !DILocation(line: 448, column: 8, scope: !4603, inlinedAt: !6154)
!6159 = !DILocation(line: 318, column: 67, scope: !4619, inlinedAt: !6160)
!6160 = distinct !DILocation(line: 553, column: 20, scope: !4608, inlinedAt: !6155)
!6161 = !DILocation(line: 346, column: 58, scope: !4625, inlinedAt: !6162)
!6162 = distinct !DILocation(line: 547, column: 11, scope: !4608, inlinedAt: !6155)
!6163 = !DILocation(line: 472, column: 28, scope: !4631, inlinedAt: !6164)
!6164 = distinct !DILocation(line: 481, column: 9, scope: !4636, inlinedAt: !6165)
!6165 = distinct !DILocation(line: 545, column: 11, scope: !4638, inlinedAt: !6155)
!6166 = !DILocation(line: 472, column: 40, scope: !4631, inlinedAt: !6164)
!6167 = !DILocation(line: 472, column: 60, scope: !4631, inlinedAt: !6164)
!6168 = !DILocation(line: 478, column: 51, scope: !4636, inlinedAt: !6165)
!6169 = !DILocation(line: 478, column: 63, scope: !4636, inlinedAt: !6165)
!6170 = !DILocation(line: 480, column: 15, scope: !4636, inlinedAt: !6165)
!6171 = !DILocation(line: 538, column: 45, scope: !4610, inlinedAt: !6155)
!6172 = !DILocation(line: 538, column: 57, scope: !4610, inlinedAt: !6155)
!6173 = !DILocation(line: 542, column: 16, scope: !4608, inlinedAt: !6155)
!6174 = !DILocalVariable(name: "state", arg: 1, scope: !6150, file: !3, line: 251, type: !4481)
!6175 = !DILocation(line: 251, column: 57, scope: !6150)
!6176 = !DILocalVariable(name: "reg", arg: 2, scope: !6150, file: !3, line: 251, type: !301)
!6177 = !DILocation(line: 251, column: 67, scope: !6150)
!6178 = !DILocalVariable(name: "data", arg: 3, scope: !6150, file: !3, line: 252, type: !4135)
!6179 = !DILocation(line: 252, column: 16, scope: !6150)
!6180 = !DILocalVariable(name: "len", arg: 4, scope: !6150, file: !3, line: 252, type: !343)
!6181 = !DILocation(line: 252, column: 26, scope: !6150)
!6182 = !DILocalVariable(name: "config", scope: !6150, file: !3, line: 254, type: !4879)
!6183 = !DILocation(line: 254, column: 26, scope: !6150)
!6184 = !DILocation(line: 254, column: 36, scope: !6150)
!6185 = !DILocation(line: 254, column: 43, scope: !6150)
!6186 = !DILocalVariable(name: "ret", scope: !6150, file: !3, line: 255, type: !294)
!6187 = !DILocation(line: 255, column: 6, scope: !6150)
!6188 = !DILocalVariable(name: "msg", scope: !6150, file: !3, line: 256, type: !4370)
!6189 = !DILocation(line: 256, column: 17, scope: !6150)
!6190 = !DILocalVariable(name: "buf", scope: !6150, file: !3, line: 257, type: !4277)
!6191 = !DILocation(line: 257, column: 6, scope: !6150)
!6192 = !DILocation(line: 259, column: 2, scope: !6150)
!6193 = !DILocation(line: 259, column: 2, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6195, file: !3, line: 259, column: 2)
!6195 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 259, column: 2)
!6196 = !DILocation(line: 259, column: 2, scope: !6195)
!6197 = !DILocation(line: 261, column: 16, scope: !6150)
!6198 = !DILocation(line: 261, column: 20, scope: !6150)
!6199 = !DILocation(line: 540, column: 27, scope: !4609, inlinedAt: !6155)
!6200 = !DILocation(line: 540, column: 6, scope: !4609, inlinedAt: !6155)
!6201 = !DILocation(line: 540, column: 6, scope: !4610, inlinedAt: !6155)
!6202 = !DILocation(line: 544, column: 7, scope: !4638, inlinedAt: !6155)
!6203 = !DILocation(line: 544, column: 12, scope: !4638, inlinedAt: !6155)
!6204 = !DILocation(line: 544, column: 7, scope: !4608, inlinedAt: !6155)
!6205 = !DILocation(line: 545, column: 25, scope: !4638, inlinedAt: !6155)
!6206 = !DILocation(line: 545, column: 31, scope: !4638, inlinedAt: !6155)
!6207 = !DILocation(line: 480, column: 33, scope: !4636, inlinedAt: !6165)
!6208 = !DILocation(line: 480, column: 23, scope: !4636, inlinedAt: !6165)
!6209 = !DILocation(line: 481, column: 29, scope: !4636, inlinedAt: !6165)
!6210 = !DILocation(line: 481, column: 35, scope: !4636, inlinedAt: !6165)
!6211 = !DILocation(line: 481, column: 42, scope: !4636, inlinedAt: !6165)
!6212 = !DILocation(line: 474, column: 23, scope: !4631, inlinedAt: !6164)
!6213 = !DILocation(line: 474, column: 29, scope: !4631, inlinedAt: !6164)
!6214 = !DILocation(line: 474, column: 36, scope: !4631, inlinedAt: !6164)
!6215 = !DILocation(line: 474, column: 9, scope: !4631, inlinedAt: !6164)
!6216 = !DILocation(line: 545, column: 4, scope: !4638, inlinedAt: !6155)
!6217 = !DILocation(line: 547, column: 25, scope: !4608, inlinedAt: !6155)
!6218 = !DILocation(line: 348, column: 7, scope: !4682, inlinedAt: !6162)
!6219 = !DILocation(line: 348, column: 6, scope: !4625, inlinedAt: !6162)
!6220 = !DILocation(line: 349, column: 3, scope: !4682, inlinedAt: !6162)
!6221 = !DILocation(line: 351, column: 6, scope: !4686, inlinedAt: !6162)
!6222 = !DILocation(line: 351, column: 11, scope: !4686, inlinedAt: !6162)
!6223 = !DILocation(line: 351, column: 6, scope: !4625, inlinedAt: !6162)
!6224 = !DILocation(line: 352, column: 3, scope: !4686, inlinedAt: !6162)
!6225 = !DILocation(line: 354, column: 32, scope: !4691, inlinedAt: !6162)
!6226 = !DILocation(line: 354, column: 37, scope: !4691, inlinedAt: !6162)
!6227 = !DILocation(line: 354, column: 42, scope: !4691, inlinedAt: !6162)
!6228 = !DILocation(line: 354, column: 45, scope: !4691, inlinedAt: !6162)
!6229 = !DILocation(line: 354, column: 50, scope: !4691, inlinedAt: !6162)
!6230 = !DILocation(line: 354, column: 6, scope: !4625, inlinedAt: !6162)
!6231 = !DILocation(line: 355, column: 3, scope: !4691, inlinedAt: !6162)
!6232 = !DILocation(line: 356, column: 32, scope: !4699, inlinedAt: !6162)
!6233 = !DILocation(line: 356, column: 37, scope: !4699, inlinedAt: !6162)
!6234 = !DILocation(line: 356, column: 43, scope: !4699, inlinedAt: !6162)
!6235 = !DILocation(line: 356, column: 46, scope: !4699, inlinedAt: !6162)
!6236 = !DILocation(line: 356, column: 51, scope: !4699, inlinedAt: !6162)
!6237 = !DILocation(line: 356, column: 6, scope: !4625, inlinedAt: !6162)
!6238 = !DILocation(line: 357, column: 3, scope: !4699, inlinedAt: !6162)
!6239 = !DILocation(line: 358, column: 6, scope: !4707, inlinedAt: !6162)
!6240 = !DILocation(line: 358, column: 11, scope: !4707, inlinedAt: !6162)
!6241 = !DILocation(line: 358, column: 6, scope: !4625, inlinedAt: !6162)
!6242 = !DILocation(line: 358, column: 26, scope: !4707, inlinedAt: !6162)
!6243 = !DILocation(line: 359, column: 6, scope: !4712, inlinedAt: !6162)
!6244 = !DILocation(line: 359, column: 11, scope: !4712, inlinedAt: !6162)
!6245 = !DILocation(line: 359, column: 6, scope: !4625, inlinedAt: !6162)
!6246 = !DILocation(line: 359, column: 26, scope: !4712, inlinedAt: !6162)
!6247 = !DILocation(line: 360, column: 6, scope: !4717, inlinedAt: !6162)
!6248 = !DILocation(line: 360, column: 11, scope: !4717, inlinedAt: !6162)
!6249 = !DILocation(line: 360, column: 6, scope: !4625, inlinedAt: !6162)
!6250 = !DILocation(line: 360, column: 26, scope: !4717, inlinedAt: !6162)
!6251 = !DILocation(line: 361, column: 6, scope: !4722, inlinedAt: !6162)
!6252 = !DILocation(line: 361, column: 11, scope: !4722, inlinedAt: !6162)
!6253 = !DILocation(line: 361, column: 6, scope: !4625, inlinedAt: !6162)
!6254 = !DILocation(line: 361, column: 26, scope: !4722, inlinedAt: !6162)
!6255 = !DILocation(line: 362, column: 6, scope: !4727, inlinedAt: !6162)
!6256 = !DILocation(line: 362, column: 11, scope: !4727, inlinedAt: !6162)
!6257 = !DILocation(line: 362, column: 6, scope: !4625, inlinedAt: !6162)
!6258 = !DILocation(line: 362, column: 26, scope: !4727, inlinedAt: !6162)
!6259 = !DILocation(line: 363, column: 6, scope: !4732, inlinedAt: !6162)
!6260 = !DILocation(line: 363, column: 11, scope: !4732, inlinedAt: !6162)
!6261 = !DILocation(line: 363, column: 6, scope: !4625, inlinedAt: !6162)
!6262 = !DILocation(line: 363, column: 26, scope: !4732, inlinedAt: !6162)
!6263 = !DILocation(line: 364, column: 6, scope: !4737, inlinedAt: !6162)
!6264 = !DILocation(line: 364, column: 11, scope: !4737, inlinedAt: !6162)
!6265 = !DILocation(line: 364, column: 6, scope: !4625, inlinedAt: !6162)
!6266 = !DILocation(line: 364, column: 26, scope: !4737, inlinedAt: !6162)
!6267 = !DILocation(line: 365, column: 6, scope: !4742, inlinedAt: !6162)
!6268 = !DILocation(line: 365, column: 11, scope: !4742, inlinedAt: !6162)
!6269 = !DILocation(line: 365, column: 6, scope: !4625, inlinedAt: !6162)
!6270 = !DILocation(line: 365, column: 26, scope: !4742, inlinedAt: !6162)
!6271 = !DILocation(line: 366, column: 6, scope: !4747, inlinedAt: !6162)
!6272 = !DILocation(line: 366, column: 11, scope: !4747, inlinedAt: !6162)
!6273 = !DILocation(line: 366, column: 6, scope: !4625, inlinedAt: !6162)
!6274 = !DILocation(line: 366, column: 26, scope: !4747, inlinedAt: !6162)
!6275 = !DILocation(line: 367, column: 6, scope: !4752, inlinedAt: !6162)
!6276 = !DILocation(line: 367, column: 11, scope: !4752, inlinedAt: !6162)
!6277 = !DILocation(line: 367, column: 6, scope: !4625, inlinedAt: !6162)
!6278 = !DILocation(line: 367, column: 26, scope: !4752, inlinedAt: !6162)
!6279 = !DILocation(line: 368, column: 6, scope: !4757, inlinedAt: !6162)
!6280 = !DILocation(line: 368, column: 11, scope: !4757, inlinedAt: !6162)
!6281 = !DILocation(line: 368, column: 6, scope: !4625, inlinedAt: !6162)
!6282 = !DILocation(line: 368, column: 26, scope: !4757, inlinedAt: !6162)
!6283 = !DILocation(line: 369, column: 6, scope: !4762, inlinedAt: !6162)
!6284 = !DILocation(line: 369, column: 11, scope: !4762, inlinedAt: !6162)
!6285 = !DILocation(line: 369, column: 6, scope: !4625, inlinedAt: !6162)
!6286 = !DILocation(line: 369, column: 26, scope: !4762, inlinedAt: !6162)
!6287 = !DILocation(line: 370, column: 6, scope: !4767, inlinedAt: !6162)
!6288 = !DILocation(line: 370, column: 11, scope: !4767, inlinedAt: !6162)
!6289 = !DILocation(line: 370, column: 6, scope: !4625, inlinedAt: !6162)
!6290 = !DILocation(line: 370, column: 26, scope: !4767, inlinedAt: !6162)
!6291 = !DILocation(line: 371, column: 6, scope: !4772, inlinedAt: !6162)
!6292 = !DILocation(line: 371, column: 11, scope: !4772, inlinedAt: !6162)
!6293 = !DILocation(line: 371, column: 6, scope: !4625, inlinedAt: !6162)
!6294 = !DILocation(line: 371, column: 26, scope: !4772, inlinedAt: !6162)
!6295 = !DILocation(line: 372, column: 6, scope: !4777, inlinedAt: !6162)
!6296 = !DILocation(line: 372, column: 11, scope: !4777, inlinedAt: !6162)
!6297 = !DILocation(line: 372, column: 6, scope: !4625, inlinedAt: !6162)
!6298 = !DILocation(line: 372, column: 26, scope: !4777, inlinedAt: !6162)
!6299 = !DILocation(line: 373, column: 6, scope: !4782, inlinedAt: !6162)
!6300 = !DILocation(line: 373, column: 11, scope: !4782, inlinedAt: !6162)
!6301 = !DILocation(line: 373, column: 6, scope: !4625, inlinedAt: !6162)
!6302 = !DILocation(line: 373, column: 26, scope: !4782, inlinedAt: !6162)
!6303 = !DILocation(line: 374, column: 6, scope: !4787, inlinedAt: !6162)
!6304 = !DILocation(line: 374, column: 11, scope: !4787, inlinedAt: !6162)
!6305 = !DILocation(line: 374, column: 6, scope: !4625, inlinedAt: !6162)
!6306 = !DILocation(line: 374, column: 26, scope: !4787, inlinedAt: !6162)
!6307 = !DILocation(line: 375, column: 6, scope: !4792, inlinedAt: !6162)
!6308 = !DILocation(line: 375, column: 11, scope: !4792, inlinedAt: !6162)
!6309 = !DILocation(line: 375, column: 6, scope: !4625, inlinedAt: !6162)
!6310 = !DILocation(line: 375, column: 27, scope: !4792, inlinedAt: !6162)
!6311 = !DILocation(line: 376, column: 6, scope: !4797, inlinedAt: !6162)
!6312 = !DILocation(line: 376, column: 11, scope: !4797, inlinedAt: !6162)
!6313 = !DILocation(line: 376, column: 6, scope: !4625, inlinedAt: !6162)
!6314 = !DILocation(line: 376, column: 32, scope: !4797, inlinedAt: !6162)
!6315 = !DILocation(line: 377, column: 6, scope: !4802, inlinedAt: !6162)
!6316 = !DILocation(line: 377, column: 11, scope: !4802, inlinedAt: !6162)
!6317 = !DILocation(line: 377, column: 6, scope: !4625, inlinedAt: !6162)
!6318 = !DILocation(line: 377, column: 32, scope: !4802, inlinedAt: !6162)
!6319 = !DILocation(line: 378, column: 6, scope: !4807, inlinedAt: !6162)
!6320 = !DILocation(line: 378, column: 11, scope: !4807, inlinedAt: !6162)
!6321 = !DILocation(line: 378, column: 6, scope: !4625, inlinedAt: !6162)
!6322 = !DILocation(line: 378, column: 32, scope: !4807, inlinedAt: !6162)
!6323 = !DILocation(line: 379, column: 6, scope: !4812, inlinedAt: !6162)
!6324 = !DILocation(line: 379, column: 11, scope: !4812, inlinedAt: !6162)
!6325 = !DILocation(line: 379, column: 6, scope: !4625, inlinedAt: !6162)
!6326 = !DILocation(line: 379, column: 33, scope: !4812, inlinedAt: !6162)
!6327 = !DILocation(line: 380, column: 6, scope: !4817, inlinedAt: !6162)
!6328 = !DILocation(line: 380, column: 11, scope: !4817, inlinedAt: !6162)
!6329 = !DILocation(line: 380, column: 6, scope: !4625, inlinedAt: !6162)
!6330 = !DILocation(line: 380, column: 33, scope: !4817, inlinedAt: !6162)
!6331 = !DILocation(line: 381, column: 6, scope: !4822, inlinedAt: !6162)
!6332 = !DILocation(line: 381, column: 11, scope: !4822, inlinedAt: !6162)
!6333 = !DILocation(line: 381, column: 6, scope: !4625, inlinedAt: !6162)
!6334 = !DILocation(line: 381, column: 33, scope: !4822, inlinedAt: !6162)
!6335 = !DILocation(line: 382, column: 2, scope: !4827, inlinedAt: !6162)
!6336 = !DILocation(line: 382, column: 2, scope: !4831, inlinedAt: !6162)
!6337 = !DILocation(line: 382, column: 2, scope: !4832, inlinedAt: !6162)
!6338 = !DILocation(line: 386, column: 1, scope: !4625, inlinedAt: !6162)
!6339 = !DILocation(line: 547, column: 9, scope: !4608, inlinedAt: !6155)
!6340 = !DILocation(line: 549, column: 8, scope: !4838, inlinedAt: !6155)
!6341 = !DILocation(line: 549, column: 7, scope: !4608, inlinedAt: !6155)
!6342 = !DILocation(line: 550, column: 4, scope: !4838, inlinedAt: !6155)
!6343 = !DILocation(line: 553, column: 33, scope: !4608, inlinedAt: !6155)
!6344 = !DILocation(line: 325, column: 6, scope: !4843, inlinedAt: !6160)
!6345 = !DILocation(line: 325, column: 6, scope: !4619, inlinedAt: !6160)
!6346 = !DILocation(line: 326, column: 3, scope: !4843, inlinedAt: !6160)
!6347 = !DILocation(line: 332, column: 9, scope: !4619, inlinedAt: !6160)
!6348 = !DILocation(line: 332, column: 15, scope: !4619, inlinedAt: !6160)
!6349 = !DILocation(line: 332, column: 2, scope: !4619, inlinedAt: !6160)
!6350 = !DILocation(line: 336, column: 1, scope: !4619, inlinedAt: !6160)
!6351 = !DILocation(line: 553, column: 5, scope: !4608, inlinedAt: !6155)
!6352 = !DILocation(line: 553, column: 41, scope: !4608, inlinedAt: !6155)
!6353 = !DILocation(line: 554, column: 5, scope: !4608, inlinedAt: !6155)
!6354 = !DILocation(line: 554, column: 12, scope: !4608, inlinedAt: !6155)
!6355 = !DILocation(line: 448, column: 31, scope: !4603, inlinedAt: !6154)
!6356 = !DILocation(line: 448, column: 34, scope: !4603, inlinedAt: !6154)
!6357 = !DILocation(line: 448, column: 14, scope: !4603, inlinedAt: !6154)
!6358 = !DILocation(line: 450, column: 22, scope: !4603, inlinedAt: !6154)
!6359 = !DILocation(line: 450, column: 25, scope: !4603, inlinedAt: !6154)
!6360 = !DILocation(line: 450, column: 30, scope: !4603, inlinedAt: !6154)
!6361 = !DILocation(line: 450, column: 36, scope: !4603, inlinedAt: !6154)
!6362 = !DILocation(line: 450, column: 8, scope: !4603, inlinedAt: !6154)
!6363 = !DILocation(line: 450, column: 6, scope: !4603, inlinedAt: !6154)
!6364 = !DILocation(line: 451, column: 9, scope: !4603, inlinedAt: !6154)
!6365 = !DILocation(line: 552, column: 3, scope: !4608, inlinedAt: !6155)
!6366 = !DILocation(line: 557, column: 19, scope: !4610, inlinedAt: !6155)
!6367 = !DILocation(line: 557, column: 25, scope: !4610, inlinedAt: !6155)
!6368 = !DILocation(line: 557, column: 9, scope: !4610, inlinedAt: !6155)
!6369 = !DILocation(line: 557, column: 2, scope: !4610, inlinedAt: !6155)
!6370 = !DILocation(line: 558, column: 1, scope: !4610, inlinedAt: !6155)
!6371 = !DILocation(line: 261, column: 6, scope: !6150)
!6372 = !DILocation(line: 262, column: 6, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 262, column: 6)
!6374 = !DILocation(line: 262, column: 10, scope: !6373)
!6375 = !DILocation(line: 262, column: 6, scope: !6150)
!6376 = !DILocation(line: 263, column: 7, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 262, column: 19)
!6378 = !DILocation(line: 264, column: 3, scope: !6377)
!6379 = !DILocation(line: 267, column: 9, scope: !6150)
!6380 = !DILocation(line: 267, column: 3, scope: !6150)
!6381 = !DILocation(line: 267, column: 7, scope: !6150)
!6382 = !DILocation(line: 268, column: 9, scope: !6150)
!6383 = !DILocation(line: 268, column: 13, scope: !6150)
!6384 = !DILocation(line: 268, column: 18, scope: !6150)
!6385 = !DILocation(line: 268, column: 24, scope: !6150)
!6386 = !DILocation(line: 268, column: 2, scope: !6150)
!6387 = !DILocation(line: 270, column: 13, scope: !6150)
!6388 = !DILocation(line: 270, column: 21, scope: !6150)
!6389 = !DILocation(line: 270, column: 6, scope: !6150)
!6390 = !DILocation(line: 270, column: 11, scope: !6150)
!6391 = !DILocation(line: 271, column: 6, scope: !6150)
!6392 = !DILocation(line: 271, column: 12, scope: !6150)
!6393 = !DILocation(line: 272, column: 12, scope: !6150)
!6394 = !DILocation(line: 272, column: 6, scope: !6150)
!6395 = !DILocation(line: 272, column: 10, scope: !6150)
!6396 = !DILocation(line: 273, column: 12, scope: !6150)
!6397 = !DILocation(line: 273, column: 16, scope: !6150)
!6398 = !DILocation(line: 273, column: 6, scope: !6150)
!6399 = !DILocation(line: 273, column: 10, scope: !6150)
!6400 = !DILocation(line: 275, column: 2, scope: !6150)
!6401 = !DILocation(line: 275, column: 2, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 275, column: 2)
!6403 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 275, column: 2)
!6404 = !DILocation(line: 275, column: 2, scope: !6403)
!6405 = !DILocation(line: 278, column: 21, scope: !6150)
!6406 = !DILocation(line: 278, column: 28, scope: !6150)
!6407 = !DILocation(line: 278, column: 8, scope: !6150)
!6408 = !DILocation(line: 278, column: 6, scope: !6150)
!6409 = !DILocation(line: 279, column: 6, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 279, column: 6)
!6411 = !DILocation(line: 279, column: 10, scope: !6410)
!6412 = !DILocation(line: 279, column: 6, scope: !6150)
!6413 = !DILocation(line: 281, column: 15, scope: !6414)
!6414 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 279, column: 16)
!6415 = !DILocation(line: 280, column: 3, scope: !6414)
!6416 = !DILocation(line: 282, column: 7, scope: !6414)
!6417 = !DILocation(line: 283, column: 2, scope: !6414)
!6418 = !DILocation(line: 279, column: 13, scope: !6410)
!6419 = !DILabel(scope: !6150, name: "error", file: !3, line: 285)
!6420 = !DILocation(line: 285, column: 1, scope: !6150)
!6421 = !DILocation(line: 286, column: 8, scope: !6150)
!6422 = !DILocation(line: 286, column: 2, scope: !6150)
!6423 = !DILocation(line: 288, column: 9, scope: !6150)
!6424 = !DILocation(line: 288, column: 2, scope: !6150)
!6425 = distinct !DISubprogram(name: "tda10048_get_tps", scope: !3, file: !3, line: 577, type: !6426, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!6426 = !DISubroutineType(types: !6427)
!6427 = !{!294, !4481, !4161}
!6428 = !DILocalVariable(name: "state", arg: 1, scope: !6425, file: !3, line: 577, type: !4481)
!6429 = !DILocation(line: 577, column: 52, scope: !6425)
!6430 = !DILocalVariable(name: "p", arg: 2, scope: !6425, file: !3, line: 578, type: !4161)
!6431 = !DILocation(line: 578, column: 34, scope: !6425)
!6432 = !DILocalVariable(name: "val", scope: !6425, file: !3, line: 580, type: !301)
!6433 = !DILocation(line: 580, column: 5, scope: !6425)
!6434 = !DILocation(line: 583, column: 25, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 583, column: 6)
!6436 = !DILocation(line: 583, column: 8, scope: !6435)
!6437 = !DILocation(line: 583, column: 47, scope: !6435)
!6438 = !DILocation(line: 583, column: 6, scope: !6425)
!6439 = !DILocation(line: 584, column: 3, scope: !6435)
!6440 = !DILocation(line: 586, column: 25, scope: !6425)
!6441 = !DILocation(line: 586, column: 8, scope: !6425)
!6442 = !DILocation(line: 586, column: 6, scope: !6425)
!6443 = !DILocation(line: 587, column: 11, scope: !6425)
!6444 = !DILocation(line: 587, column: 15, scope: !6425)
!6445 = !DILocation(line: 587, column: 23, scope: !6425)
!6446 = !DILocation(line: 587, column: 2, scope: !6425)
!6447 = !DILocation(line: 589, column: 3, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 587, column: 29)
!6449 = !DILocation(line: 589, column: 6, scope: !6448)
!6450 = !DILocation(line: 589, column: 17, scope: !6448)
!6451 = !DILocation(line: 590, column: 3, scope: !6448)
!6452 = !DILocation(line: 592, column: 3, scope: !6448)
!6453 = !DILocation(line: 592, column: 6, scope: !6448)
!6454 = !DILocation(line: 592, column: 17, scope: !6448)
!6455 = !DILocation(line: 593, column: 3, scope: !6448)
!6456 = !DILocation(line: 595, column: 3, scope: !6448)
!6457 = !DILocation(line: 595, column: 6, scope: !6448)
!6458 = !DILocation(line: 595, column: 17, scope: !6448)
!6459 = !DILocation(line: 596, column: 3, scope: !6448)
!6460 = !DILocation(line: 598, column: 11, scope: !6425)
!6461 = !DILocation(line: 598, column: 15, scope: !6425)
!6462 = !DILocation(line: 598, column: 23, scope: !6425)
!6463 = !DILocation(line: 598, column: 2, scope: !6425)
!6464 = !DILocation(line: 600, column: 3, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 598, column: 29)
!6466 = !DILocation(line: 600, column: 6, scope: !6465)
!6467 = !DILocation(line: 600, column: 16, scope: !6465)
!6468 = !DILocation(line: 601, column: 3, scope: !6465)
!6469 = !DILocation(line: 603, column: 3, scope: !6465)
!6470 = !DILocation(line: 603, column: 6, scope: !6465)
!6471 = !DILocation(line: 603, column: 16, scope: !6465)
!6472 = !DILocation(line: 604, column: 3, scope: !6465)
!6473 = !DILocation(line: 606, column: 3, scope: !6465)
!6474 = !DILocation(line: 606, column: 6, scope: !6465)
!6475 = !DILocation(line: 606, column: 16, scope: !6465)
!6476 = !DILocation(line: 607, column: 3, scope: !6465)
!6477 = !DILocation(line: 609, column: 3, scope: !6465)
!6478 = !DILocation(line: 609, column: 6, scope: !6465)
!6479 = !DILocation(line: 609, column: 16, scope: !6465)
!6480 = !DILocation(line: 610, column: 3, scope: !6465)
!6481 = !DILocation(line: 612, column: 10, scope: !6425)
!6482 = !DILocation(line: 612, column: 14, scope: !6425)
!6483 = !DILocation(line: 612, column: 2, scope: !6425)
!6484 = !DILocation(line: 614, column: 3, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 612, column: 22)
!6486 = !DILocation(line: 614, column: 6, scope: !6485)
!6487 = !DILocation(line: 614, column: 19, scope: !6485)
!6488 = !DILocation(line: 615, column: 3, scope: !6485)
!6489 = !DILocation(line: 617, column: 3, scope: !6485)
!6490 = !DILocation(line: 617, column: 6, scope: !6485)
!6491 = !DILocation(line: 617, column: 19, scope: !6485)
!6492 = !DILocation(line: 618, column: 3, scope: !6485)
!6493 = !DILocation(line: 620, column: 3, scope: !6485)
!6494 = !DILocation(line: 620, column: 6, scope: !6485)
!6495 = !DILocation(line: 620, column: 19, scope: !6485)
!6496 = !DILocation(line: 621, column: 3, scope: !6485)
!6497 = !DILocation(line: 623, column: 3, scope: !6485)
!6498 = !DILocation(line: 623, column: 6, scope: !6485)
!6499 = !DILocation(line: 623, column: 19, scope: !6485)
!6500 = !DILocation(line: 624, column: 3, scope: !6485)
!6501 = !DILocation(line: 626, column: 3, scope: !6485)
!6502 = !DILocation(line: 626, column: 6, scope: !6485)
!6503 = !DILocation(line: 626, column: 19, scope: !6485)
!6504 = !DILocation(line: 627, column: 3, scope: !6485)
!6505 = !DILocation(line: 630, column: 25, scope: !6425)
!6506 = !DILocation(line: 630, column: 8, scope: !6425)
!6507 = !DILocation(line: 630, column: 6, scope: !6425)
!6508 = !DILocation(line: 631, column: 10, scope: !6425)
!6509 = !DILocation(line: 631, column: 14, scope: !6425)
!6510 = !DILocation(line: 631, column: 2, scope: !6425)
!6511 = !DILocation(line: 633, column: 3, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 631, column: 22)
!6513 = !DILocation(line: 633, column: 6, scope: !6512)
!6514 = !DILocation(line: 633, column: 19, scope: !6512)
!6515 = !DILocation(line: 634, column: 3, scope: !6512)
!6516 = !DILocation(line: 636, column: 3, scope: !6512)
!6517 = !DILocation(line: 636, column: 6, scope: !6512)
!6518 = !DILocation(line: 636, column: 19, scope: !6512)
!6519 = !DILocation(line: 637, column: 3, scope: !6512)
!6520 = !DILocation(line: 639, column: 3, scope: !6512)
!6521 = !DILocation(line: 639, column: 6, scope: !6512)
!6522 = !DILocation(line: 639, column: 19, scope: !6512)
!6523 = !DILocation(line: 640, column: 3, scope: !6512)
!6524 = !DILocation(line: 642, column: 3, scope: !6512)
!6525 = !DILocation(line: 642, column: 6, scope: !6512)
!6526 = !DILocation(line: 642, column: 19, scope: !6512)
!6527 = !DILocation(line: 643, column: 3, scope: !6512)
!6528 = !DILocation(line: 645, column: 3, scope: !6512)
!6529 = !DILocation(line: 645, column: 6, scope: !6512)
!6530 = !DILocation(line: 645, column: 19, scope: !6512)
!6531 = !DILocation(line: 646, column: 3, scope: !6512)
!6532 = !DILocation(line: 649, column: 25, scope: !6425)
!6533 = !DILocation(line: 649, column: 8, scope: !6425)
!6534 = !DILocation(line: 649, column: 6, scope: !6425)
!6535 = !DILocation(line: 650, column: 11, scope: !6425)
!6536 = !DILocation(line: 650, column: 15, scope: !6425)
!6537 = !DILocation(line: 650, column: 23, scope: !6425)
!6538 = !DILocation(line: 650, column: 2, scope: !6425)
!6539 = !DILocation(line: 652, column: 3, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 650, column: 29)
!6541 = !DILocation(line: 652, column: 6, scope: !6540)
!6542 = !DILocation(line: 652, column: 21, scope: !6540)
!6543 = !DILocation(line: 653, column: 3, scope: !6540)
!6544 = !DILocation(line: 655, column: 3, scope: !6540)
!6545 = !DILocation(line: 655, column: 6, scope: !6540)
!6546 = !DILocation(line: 655, column: 21, scope: !6540)
!6547 = !DILocation(line: 656, column: 3, scope: !6540)
!6548 = !DILocation(line: 658, column: 3, scope: !6540)
!6549 = !DILocation(line: 658, column: 6, scope: !6540)
!6550 = !DILocation(line: 658, column: 21, scope: !6540)
!6551 = !DILocation(line: 659, column: 3, scope: !6540)
!6552 = !DILocation(line: 661, column: 3, scope: !6540)
!6553 = !DILocation(line: 661, column: 6, scope: !6540)
!6554 = !DILocation(line: 661, column: 21, scope: !6540)
!6555 = !DILocation(line: 662, column: 3, scope: !6540)
!6556 = !DILocation(line: 664, column: 10, scope: !6425)
!6557 = !DILocation(line: 664, column: 14, scope: !6425)
!6558 = !DILocation(line: 664, column: 2, scope: !6425)
!6559 = !DILocation(line: 666, column: 3, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 664, column: 22)
!6561 = !DILocation(line: 666, column: 6, scope: !6560)
!6562 = !DILocation(line: 666, column: 24, scope: !6560)
!6563 = !DILocation(line: 667, column: 3, scope: !6560)
!6564 = !DILocation(line: 669, column: 3, scope: !6560)
!6565 = !DILocation(line: 669, column: 6, scope: !6560)
!6566 = !DILocation(line: 669, column: 24, scope: !6560)
!6567 = !DILocation(line: 670, column: 3, scope: !6560)
!6568 = !DILocation(line: 673, column: 2, scope: !6425)
!6569 = !DILocation(line: 674, column: 1, scope: !6425)
!6570 = distinct !DISubprogram(name: "div_u64", scope: !6571, file: !6571, line: 124, type: !6572, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!6571 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!6572 = !DISubroutineType(types: !6573)
!6573 = !{!296, !296, !304}
!6574 = !DILocalVariable(name: "dividend", arg: 1, scope: !6570, file: !6571, line: 124, type: !296)
!6575 = !DILocation(line: 124, column: 31, scope: !6570)
!6576 = !DILocalVariable(name: "divisor", arg: 2, scope: !6570, file: !6571, line: 124, type: !304)
!6577 = !DILocation(line: 124, column: 45, scope: !6570)
!6578 = !DILocalVariable(name: "remainder", scope: !6570, file: !6571, line: 126, type: !304)
!6579 = !DILocation(line: 126, column: 6, scope: !6570)
!6580 = !DILocation(line: 127, column: 21, scope: !6570)
!6581 = !DILocation(line: 127, column: 31, scope: !6570)
!6582 = !DILocation(line: 127, column: 9, scope: !6570)
!6583 = !DILocation(line: 127, column: 2, scope: !6570)
!6584 = distinct !DISubprogram(name: "div_u64_rem", scope: !6571, file: !6571, line: 25, type: !6585, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !505)
!6585 = !DISubroutineType(types: !6586)
!6586 = !{!296, !296, !304, !1565}
!6587 = !DILocalVariable(name: "dividend", arg: 1, scope: !6584, file: !6571, line: 25, type: !296)
!6588 = !DILocation(line: 25, column: 35, scope: !6584)
!6589 = !DILocalVariable(name: "divisor", arg: 2, scope: !6584, file: !6571, line: 25, type: !304)
!6590 = !DILocation(line: 25, column: 49, scope: !6584)
!6591 = !DILocalVariable(name: "remainder", arg: 3, scope: !6584, file: !6571, line: 25, type: !1565)
!6592 = !DILocation(line: 25, column: 63, scope: !6584)
!6593 = !DILocation(line: 27, column: 15, scope: !6584)
!6594 = !DILocation(line: 27, column: 26, scope: !6584)
!6595 = !DILocation(line: 27, column: 24, scope: !6584)
!6596 = !DILocation(line: 27, column: 3, scope: !6584)
!6597 = !DILocation(line: 27, column: 13, scope: !6584)
!6598 = !DILocation(line: 28, column: 9, scope: !6584)
!6599 = !DILocation(line: 28, column: 20, scope: !6584)
!6600 = !DILocation(line: 28, column: 18, scope: !6584)
!6601 = !DILocation(line: 28, column: 2, scope: !6584)
