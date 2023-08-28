; ModuleID = '../bcout/drivers/media/dvb-frontends/tda10023.llvm.bc'
source_filename = "drivers/media/dvb-frontends/tda10023.c"
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
%struct.kmem_cache = type opaque
%struct.qam_params = type { i8, i8, i8, i8, i8, i8 }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }
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
%struct.tda10023_state = type { %struct.i2c_adapter*, %struct.tda10023_config*, %struct.dvb_frontend, i8, i8, i32, i8, i8, i8, i32 }

@tda10023_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10023 DVB-C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 862000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 65024 }, [8 x i8] c"\01\12\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @tda10023_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda10023_init, i32 (%struct.dvb_frontend*)* @tda10023_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda10023_set_parameters, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* null, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tda10023_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @tda10023_read_status, i32 (%struct.dvb_frontend*, i32*)* @tda10023_read_ber, i32 (%struct.dvb_frontend*, i16*)* @tda10023_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @tda10023_read_snr, i32 (%struct.dvb_frontend*, i32*)* @tda10023_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @tda10023_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@__UNIQUE_ID_description220 = internal constant [63 x i8] c"tda10023.description=Philips TDA10023 DVB-C demodulator driver\00", section ".modinfo", align 1, !dbg !318
@__UNIQUE_ID_author221 = internal constant [42 x i8] c"tda10023.author=Georg Acher, Hartmut Birr\00", section ".modinfo", align 1, !dbg !325
@__UNIQUE_ID_file222 = internal constant [51 x i8] c"tda10023.file=drivers/media/dvb-frontends/tda10023\00", section ".modinfo", align 1, !dbg !330
@__UNIQUE_ID_license223 = internal constant [21 x i8] c"tda10023.license=GPL\00", section ".modinfo", align 1, !dbg !335
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"\013DVB: TDA10023(%d): %s, writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.tda10023_writereg = private unnamed_addr constant [18 x i8] c"tda10023_writereg\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"\013DVB: TDA10023(%d): %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.tda10023_readreg = private unnamed_addr constant [17 x i8] c"tda10023_readreg\00", align 1
@tda10023_set_parameters.qam_params = internal constant [6 x %struct.qam_params] [%struct.qam_params { i8 20, i8 120, i8 -116, i8 -106, i8 120, i8 76 }, %struct.qam_params { i8 0, i8 -121, i8 -94, i8 -111, i8 -116, i8 87 }, %struct.qam_params { i8 4, i8 100, i8 116, i8 -106, i8 -116, i8 87 }, %struct.qam_params { i8 8, i8 70, i8 67, i8 106, i8 106, i8 68 }, %struct.qam_params { i8 12, i8 54, i8 52, i8 126, i8 120, i8 76 }, %struct.qam_params { i8 16, i8 38, i8 35, i8 108, i8 92, i8 60 }], align 16, !dbg !340
@verbose = internal global i32 0, align 4, !dbg !4257
@.str.3 = private unnamed_addr constant [34 x i8] c"DVB: TDA10023(%d): AFC (%d) %dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"DVB: TDA10023(%d): [AFC (%d) %dHz]\0A\00", align 1
@__const.lock_tuner.buf = private unnamed_addr constant [2 x i8] c"\0F\C0", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"tda10023: lock tuner fails\0A\00", align 1
@__const.unlock_tuner.buf = private unnamed_addr constant [2 x i8] c"\0F@", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"tda10023: unlock tuner fails\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_description220, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_author221, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file222, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license223, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @tda10023_attach(%struct.tda10023_config* %config, %struct.i2c_adapter* %i2c, i8 zeroext %pwm) #0 !dbg !4265 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.tda10023_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %pwm.addr = alloca i8, align 1
  %state = alloca %struct.tda10023_state*, align 8
  store %struct.tda10023_config* %config, %struct.tda10023_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_config** %config.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  store i8 %pwm, i8* %pwm.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %pwm.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !4408, metadata !DIExpression()), !dbg !4422
  store %struct.tda10023_state* null, %struct.tda10023_state** %state, align 8, !dbg !4422
  %call = call i8* @kzalloc(i64 1312, i32 3264) #8, !dbg !4423
  %0 = bitcast i8* %call to %struct.tda10023_state*, !dbg !4423
  store %struct.tda10023_state* %0, %struct.tda10023_state** %state, align 8, !dbg !4424
  %1 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4425
  %cmp = icmp eq %struct.tda10023_state* %1, null, !dbg !4427
  br i1 %cmp, label %if.then, label %if.end, !dbg !4428

if.then:                                          ; preds = %entry
  br label %error, !dbg !4429

if.end:                                           ; preds = %entry
  %2 = load %struct.tda10023_config*, %struct.tda10023_config** %config.addr, align 8, !dbg !4430
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4431
  %config1 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %3, i32 0, i32 1, !dbg !4432
  store %struct.tda10023_config* %2, %struct.tda10023_config** %config1, align 8, !dbg !4433
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4434
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4435
  %i2c2 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %5, i32 0, i32 0, !dbg !4436
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4437
  %6 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4438
  %call3 = call i32 @tda10023_writereg(%struct.tda10023_state* %6, i8 zeroext 0, i8 zeroext 51) #8, !dbg !4439
  %7 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4440
  %call4 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %7, i8 zeroext 26) #8, !dbg !4442
  %conv = zext i8 %call4 to i32, !dbg !4442
  %and = and i32 %conv, 240, !dbg !4443
  %cmp5 = icmp ne i32 %and, 112, !dbg !4444
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4445

if.then7:                                         ; preds = %if.end
  br label %error, !dbg !4446

if.end8:                                          ; preds = %if.end
  %8 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4447
  %frontend = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %8, i32 0, i32 2, !dbg !4448
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4449
  %9 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @tda10023_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4450
  %10 = load i8, i8* %pwm.addr, align 1, !dbg !4451
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4452
  %pwm9 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %11, i32 0, i32 3, !dbg !4453
  store i8 %10, i8* %pwm9, align 8, !dbg !4454
  %12 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4455
  %reg0 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %12, i32 0, i32 4, !dbg !4456
  store i8 35, i8* %reg0, align 1, !dbg !4457
  %13 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4458
  %config10 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %13, i32 0, i32 1, !dbg !4460
  %14 = load %struct.tda10023_config*, %struct.tda10023_config** %config10, align 8, !dbg !4460
  %xtal = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %14, i32 0, i32 2, !dbg !4461
  %15 = load i32, i32* %xtal, align 4, !dbg !4461
  %tobool = icmp ne i32 %15, 0, !dbg !4458
  br i1 %tobool, label %if.then11, label %if.else, !dbg !4462

if.then11:                                        ; preds = %if.end8
  %16 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4463
  %config12 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %16, i32 0, i32 1, !dbg !4465
  %17 = load %struct.tda10023_config*, %struct.tda10023_config** %config12, align 8, !dbg !4465
  %xtal13 = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %17, i32 0, i32 2, !dbg !4466
  %18 = load i32, i32* %xtal13, align 4, !dbg !4466
  %19 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4467
  %xtal14 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %19, i32 0, i32 5, !dbg !4468
  store i32 %18, i32* %xtal14, align 4, !dbg !4469
  %20 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4470
  %config15 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %20, i32 0, i32 1, !dbg !4471
  %21 = load %struct.tda10023_config*, %struct.tda10023_config** %config15, align 8, !dbg !4471
  %pll_m = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %21, i32 0, i32 3, !dbg !4472
  %22 = load i8, i8* %pll_m, align 4, !dbg !4472
  %23 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4473
  %pll_m16 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %23, i32 0, i32 6, !dbg !4474
  store i8 %22, i8* %pll_m16, align 8, !dbg !4475
  %24 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4476
  %config17 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %24, i32 0, i32 1, !dbg !4477
  %25 = load %struct.tda10023_config*, %struct.tda10023_config** %config17, align 8, !dbg !4477
  %pll_p = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %25, i32 0, i32 4, !dbg !4478
  %26 = load i8, i8* %pll_p, align 1, !dbg !4478
  %27 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4479
  %pll_p18 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %27, i32 0, i32 7, !dbg !4480
  store i8 %26, i8* %pll_p18, align 1, !dbg !4481
  %28 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4482
  %config19 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %28, i32 0, i32 1, !dbg !4483
  %29 = load %struct.tda10023_config*, %struct.tda10023_config** %config19, align 8, !dbg !4483
  %pll_n = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %29, i32 0, i32 5, !dbg !4484
  %30 = load i8, i8* %pll_n, align 2, !dbg !4484
  %31 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4485
  %pll_n20 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %31, i32 0, i32 8, !dbg !4486
  store i8 %30, i8* %pll_n20, align 2, !dbg !4487
  br label %if.end25, !dbg !4488

if.else:                                          ; preds = %if.end8
  %32 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4489
  %xtal21 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %32, i32 0, i32 5, !dbg !4491
  store i32 28920000, i32* %xtal21, align 4, !dbg !4492
  %33 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4493
  %pll_m22 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %33, i32 0, i32 6, !dbg !4494
  store i8 8, i8* %pll_m22, align 8, !dbg !4495
  %34 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4496
  %pll_p23 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %34, i32 0, i32 7, !dbg !4497
  store i8 4, i8* %pll_p23, align 1, !dbg !4498
  %35 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4499
  %pll_n24 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %35, i32 0, i32 8, !dbg !4500
  store i8 1, i8* %pll_n24, align 2, !dbg !4501
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then11
  %36 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4502
  %xtal26 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %36, i32 0, i32 5, !dbg !4503
  %37 = load i32, i32* %xtal26, align 4, !dbg !4503
  %38 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4504
  %pll_m27 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %38, i32 0, i32 6, !dbg !4505
  %39 = load i8, i8* %pll_m27, align 8, !dbg !4505
  %conv28 = zext i8 %39 to i32, !dbg !4504
  %mul = mul i32 %37, %conv28, !dbg !4506
  %40 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4507
  %pll_n29 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %40, i32 0, i32 8, !dbg !4508
  %41 = load i8, i8* %pll_n29, align 2, !dbg !4508
  %conv30 = zext i8 %41 to i32, !dbg !4507
  %42 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4509
  %pll_p31 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %42, i32 0, i32 7, !dbg !4510
  %43 = load i8, i8* %pll_p31, align 1, !dbg !4510
  %conv32 = zext i8 %43 to i32, !dbg !4509
  %mul33 = mul i32 %conv30, %conv32, !dbg !4511
  %div = udiv i32 %mul, %mul33, !dbg !4512
  %44 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4513
  %sysclk = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %44, i32 0, i32 9, !dbg !4514
  store i32 %div, i32* %sysclk, align 4, !dbg !4515
  %45 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4516
  %sysclk34 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %45, i32 0, i32 9, !dbg !4517
  %46 = load i32, i32* %sysclk34, align 4, !dbg !4517
  %div35 = udiv i32 %46, 2, !dbg !4518
  %div36 = udiv i32 %div35, 64, !dbg !4519
  %47 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4520
  %frontend37 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %47, i32 0, i32 2, !dbg !4521
  %ops38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend37, i32 0, i32 1, !dbg !4522
  %info = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops38, i32 0, i32 0, !dbg !4523
  %symbol_rate_min = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info, i32 0, i32 5, !dbg !4524
  store i32 %div36, i32* %symbol_rate_min, align 8, !dbg !4525
  %48 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4526
  %sysclk39 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %48, i32 0, i32 9, !dbg !4527
  %49 = load i32, i32* %sysclk39, align 4, !dbg !4527
  %div40 = udiv i32 %49, 2, !dbg !4528
  %div41 = udiv i32 %div40, 4, !dbg !4529
  %50 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4530
  %frontend42 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %50, i32 0, i32 2, !dbg !4531
  %ops43 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend42, i32 0, i32 1, !dbg !4532
  %info44 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops43, i32 0, i32 0, !dbg !4533
  %symbol_rate_max = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info44, i32 0, i32 6, !dbg !4534
  store i32 %div41, i32* %symbol_rate_max, align 4, !dbg !4535
  %51 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4536
  %52 = bitcast %struct.tda10023_state* %51 to i8*, !dbg !4536
  %53 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4537
  %frontend45 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %53, i32 0, i32 2, !dbg !4538
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend45, i32 0, i32 3, !dbg !4539
  store i8* %52, i8** %demodulator_priv, align 8, !dbg !4540
  %54 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4541
  %frontend46 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %54, i32 0, i32 2, !dbg !4542
  store %struct.dvb_frontend* %frontend46, %struct.dvb_frontend** %retval, align 8, !dbg !4543
  br label %return, !dbg !4543

error:                                            ; preds = %if.then7, %if.then
  call void @llvm.dbg.label(metadata !4544), !dbg !4545
  %55 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !4546
  %56 = bitcast %struct.tda10023_state* %55 to i8*, !dbg !4546
  call void @kfree(i8* %56) #8, !dbg !4547
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4548
  br label %return, !dbg !4548

return:                                           ; preds = %error, %if.end25
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4549
  ret %struct.dvb_frontend* %57, !dbg !4549
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4550 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4553, metadata !DIExpression()), !dbg !4557
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4563, metadata !DIExpression()), !dbg !4564
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4565, metadata !DIExpression()), !dbg !4566
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4567, metadata !DIExpression()), !dbg !4568
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4569, metadata !DIExpression()), !dbg !4573
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4575, metadata !DIExpression()), !dbg !4579
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4581, metadata !DIExpression()), !dbg !4585
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4590, metadata !DIExpression()), !dbg !4591
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4592, metadata !DIExpression()), !dbg !4593
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4594, metadata !DIExpression()), !dbg !4595
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4596, metadata !DIExpression()), !dbg !4597
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4598, metadata !DIExpression()), !dbg !4599
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4600, metadata !DIExpression()), !dbg !4601
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4602, metadata !DIExpression()), !dbg !4603
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4604, metadata !DIExpression()), !dbg !4605
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4608, metadata !DIExpression()), !dbg !4609
  %0 = load i64, i64* %size.addr, align 8, !dbg !4610
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4611
  %or = or i32 %1, 256, !dbg !4612
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4613
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4614
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4615

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4616
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4617
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4618

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4619
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4620
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4621
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4622
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4599
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4623
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4624
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4625
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4626
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4627
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4628
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4629
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4629
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4629
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4629
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4629
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4630
  br label %kmalloc.exit, !dbg !4630

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4631
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4632
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4632
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4634

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4635
  br label %kmalloc_index.exit.i, !dbg !4635

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4636
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4638
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4639

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4640
  br label %kmalloc_index.exit.i, !dbg !4640

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4643
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4644

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4645
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4646
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4647

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4648
  br label %kmalloc_index.exit.i, !dbg !4648

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4649
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4651
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4652

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4653
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4654
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4655

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4656
  br label %kmalloc_index.exit.i, !dbg !4656

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4657
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4659
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4660

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4661
  br label %kmalloc_index.exit.i, !dbg !4661

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4664
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4665

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4666
  br label %kmalloc_index.exit.i, !dbg !4666

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4667
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4669
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4670

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4674
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4675

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4676
  br label %kmalloc_index.exit.i, !dbg !4676

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4677
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4679
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4680

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4681
  br label %kmalloc_index.exit.i, !dbg !4681

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4682
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4684
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4685

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4686
  br label %kmalloc_index.exit.i, !dbg !4686

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4687
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4689
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4690

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4691
  br label %kmalloc_index.exit.i, !dbg !4691

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4692
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4694
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4695

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4696
  br label %kmalloc_index.exit.i, !dbg !4696

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4697
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4699
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4700

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4701
  br label %kmalloc_index.exit.i, !dbg !4701

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4702
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4704
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4705

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4706
  br label %kmalloc_index.exit.i, !dbg !4706

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4707
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4709
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4710

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4711
  br label %kmalloc_index.exit.i, !dbg !4711

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4712
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4714
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4715

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4716
  br label %kmalloc_index.exit.i, !dbg !4716

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4717
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4719
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4720

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4721
  br label %kmalloc_index.exit.i, !dbg !4721

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4722
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4724
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4725

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4726
  br label %kmalloc_index.exit.i, !dbg !4726

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4727
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4729
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4730

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4731
  br label %kmalloc_index.exit.i, !dbg !4731

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4732
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4734
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4735

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4736
  br label %kmalloc_index.exit.i, !dbg !4736

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4737
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4739
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4740

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4741
  br label %kmalloc_index.exit.i, !dbg !4741

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4742
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4744
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4745

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4746
  br label %kmalloc_index.exit.i, !dbg !4746

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4747
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4749
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4750

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4751
  br label %kmalloc_index.exit.i, !dbg !4751

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4752
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4754
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4755

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4756
  br label %kmalloc_index.exit.i, !dbg !4756

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4757
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4759
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4760

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4764
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4765

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4767
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4769
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4770

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4771
  br label %kmalloc_index.exit.i, !dbg !4771

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4772
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4774
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4775

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4776
  br label %kmalloc_index.exit.i, !dbg !4776

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4777, !srcloc !4780
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4781, !srcloc !4784
  unreachable, !dbg !4785

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4786
  store i32 %45, i32* %index.i, align 4, !dbg !4787
  %46 = load i32, i32* %index.i, align 4, !dbg !4788
  %tobool.i = icmp ne i32 %46, 0, !dbg !4788
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4790

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4791
  br label %kmalloc.exit, !dbg !4791

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4792
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4793
  %and.i.i = and i32 %48, 17, !dbg !4793
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4793
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4793
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4793
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4793
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4795

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4796
  br label %kmalloc_type.exit.i, !dbg !4796

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4797
  %and2.i.i = and i32 %49, 1, !dbg !4798
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4797
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4797
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4797
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4799
  br label %kmalloc_type.exit.i, !dbg !4799

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4800
  %idxprom.i = zext i32 %51 to i64, !dbg !4801
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4801
  %52 = load i32, i32* %index.i, align 4, !dbg !4802
  %idxprom6.i = zext i32 %52 to i64, !dbg !4801
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4801
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4801
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4803
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4804
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4805
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4806
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4807
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4807
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4807
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4807
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4807
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4568
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4808
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4809
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4810
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4811
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4812
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4813
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4814
  store i8* %62, i8** %retval.i, align 8, !dbg !4815
  br label %kmalloc.exit, !dbg !4815

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4816
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4817
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4818
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4818
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4818
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4818
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4818
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4819
  br label %kmalloc.exit, !dbg !4819

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4820
  ret i8* %65, !dbg !4821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_writereg(%struct.tda10023_state* %state, i8 zeroext %reg, i8 zeroext %data) #0 !dbg !4822 {
entry:
  %state.addr = alloca %struct.tda10023_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %ret = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct.tda10023_state* %state, %struct.tda10023_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4827, metadata !DIExpression()), !dbg !4828
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4829, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !4831, metadata !DIExpression()), !dbg !4833
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !4834
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4835
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4834
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !4834
  %1 = load i8, i8* %data.addr, align 1, !dbg !4836
  store i8 %1, i8* %arrayinit.element, align 1, !dbg !4834
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !4837, metadata !DIExpression()), !dbg !4838
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !4839
  %2 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4840
  %config = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %2, i32 0, i32 1, !dbg !4841
  %3 = load %struct.tda10023_config*, %struct.tda10023_config** %config, align 8, !dbg !4841
  %demod_address = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %3, i32 0, i32 0, !dbg !4842
  %4 = load i8, i8* %demod_address, align 4, !dbg !4842
  %conv = zext i8 %4 to i16, !dbg !4840
  store i16 %conv, i16* %addr, align 8, !dbg !4839
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !4839
  store i16 0, i16* %flags, align 2, !dbg !4839
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !4839
  store i16 2, i16* %len, align 4, !dbg !4839
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !4839
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !4843
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !4839
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4844, metadata !DIExpression()), !dbg !4845
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4846
  %i2c = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %5, i32 0, i32 0, !dbg !4847
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4847
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #8, !dbg !4848
  store i32 %call, i32* %ret, align 4, !dbg !4849
  %7 = load i32, i32* %ret, align 4, !dbg !4850
  %cmp = icmp ne i32 %7, 1, !dbg !4852
  br i1 %cmp, label %if.then, label %if.end, !dbg !4853

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %num, metadata !4854, metadata !DIExpression()), !dbg !4856
  %8 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4857
  %frontend = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %8, i32 0, i32 2, !dbg !4858
  %dvb = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 2, !dbg !4859
  %9 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb, align 8, !dbg !4859
  %tobool = icmp ne %struct.dvb_adapter* %9, null, !dbg !4857
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4857

cond.true:                                        ; preds = %if.then
  %10 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4860
  %frontend3 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %10, i32 0, i32 2, !dbg !4861
  %dvb4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend3, i32 0, i32 2, !dbg !4862
  %11 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb4, align 8, !dbg !4862
  %num5 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %11, i32 0, i32 0, !dbg !4863
  %12 = load i32, i32* %num5, align 8, !dbg !4863
  br label %cond.end, !dbg !4857

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !4857

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ -1, %cond.false ], !dbg !4857
  store i32 %cond, i32* %num, align 4, !dbg !4856
  %13 = load i32, i32* %num, align 4, !dbg !4864
  %14 = load i8, i8* %reg.addr, align 1, !dbg !4865
  %conv6 = zext i8 %14 to i32, !dbg !4865
  %15 = load i8, i8* %data.addr, align 1, !dbg !4866
  %conv7 = zext i8 %15 to i32, !dbg !4866
  %16 = load i32, i32* %ret, align 4, !dbg !4867
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10023_writereg, i64 0, i64 0), i32 %conv6, i32 %conv7, i32 %16) #12, !dbg !4868
  br label %if.end, !dbg !4869

if.end:                                           ; preds = %cond.end, %entry
  %17 = load i32, i32* %ret, align 4, !dbg !4870
  %cmp9 = icmp ne i32 %17, 1, !dbg !4871
  %18 = zext i1 %cmp9 to i64, !dbg !4872
  %cond11 = select i1 %cmp9, i32 -121, i32 0, !dbg !4872
  ret i32 %cond11, !dbg !4873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @tda10023_readreg(%struct.tda10023_state* %state, i8 zeroext %reg) #0 !dbg !4874 {
entry:
  %state.addr = alloca %struct.tda10023_state*, align 8
  %reg.addr = alloca i8, align 1
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  %ret = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct.tda10023_state* %state, %struct.tda10023_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4879, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4881, metadata !DIExpression()), !dbg !4883
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4884
  %0 = load i8, i8* %reg.addr, align 1, !dbg !4885
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !4884
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4886, metadata !DIExpression()), !dbg !4887
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4887
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4887
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4888, metadata !DIExpression()), !dbg !4890
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4891
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4892
  %2 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4893
  %config = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %2, i32 0, i32 1, !dbg !4894
  %3 = load %struct.tda10023_config*, %struct.tda10023_config** %config, align 8, !dbg !4894
  %demod_address = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %3, i32 0, i32 0, !dbg !4895
  %4 = load i8, i8* %demod_address, align 4, !dbg !4895
  %conv = zext i8 %4 to i16, !dbg !4893
  store i16 %conv, i16* %addr, align 16, !dbg !4892
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4892
  store i16 0, i16* %flags, align 2, !dbg !4892
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4892
  store i16 1, i16* %len, align 4, !dbg !4892
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4892
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4896
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4892
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4891
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4897
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4898
  %config3 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %5, i32 0, i32 1, !dbg !4899
  %6 = load %struct.tda10023_config*, %struct.tda10023_config** %config3, align 8, !dbg !4899
  %demod_address4 = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %6, i32 0, i32 0, !dbg !4900
  %7 = load i8, i8* %demod_address4, align 4, !dbg !4900
  %conv5 = zext i8 %7 to i16, !dbg !4898
  store i16 %conv5, i16* %addr2, align 16, !dbg !4897
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4897
  store i16 1, i16* %flags6, align 2, !dbg !4897
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4897
  store i16 1, i16* %len7, align 4, !dbg !4897
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4897
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4901
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !4897
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4902, metadata !DIExpression()), !dbg !4903
  %8 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4904
  %i2c = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %8, i32 0, i32 0, !dbg !4905
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4905
  %arraydecay10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4906
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %arraydecay10, i32 2) #8, !dbg !4907
  store i32 %call, i32* %ret, align 4, !dbg !4908
  %10 = load i32, i32* %ret, align 4, !dbg !4909
  %cmp = icmp ne i32 %10, 2, !dbg !4911
  br i1 %cmp, label %if.then, label %if.end, !dbg !4912

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %num, metadata !4913, metadata !DIExpression()), !dbg !4915
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4916
  %frontend = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %11, i32 0, i32 2, !dbg !4917
  %dvb = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 2, !dbg !4918
  %12 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb, align 8, !dbg !4918
  %tobool = icmp ne %struct.dvb_adapter* %12, null, !dbg !4916
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4916

cond.true:                                        ; preds = %if.then
  %13 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !4919
  %frontend12 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %13, i32 0, i32 2, !dbg !4920
  %dvb13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend12, i32 0, i32 2, !dbg !4921
  %14 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb13, align 8, !dbg !4921
  %num14 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %14, i32 0, i32 0, !dbg !4922
  %15 = load i32, i32* %num14, align 8, !dbg !4922
  br label %cond.end, !dbg !4916

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !4916

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ -1, %cond.false ], !dbg !4916
  store i32 %cond, i32* %num, align 4, !dbg !4915
  %16 = load i32, i32* %num, align 4, !dbg !4923
  %17 = load i8, i8* %reg.addr, align 1, !dbg !4924
  %conv15 = zext i8 %17 to i32, !dbg !4924
  %18 = load i32, i32* %ret, align 4, !dbg !4925
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.tda10023_readreg, i64 0, i64 0), i32 %conv15, i32 %18) #12, !dbg !4926
  br label %if.end, !dbg !4927

if.end:                                           ; preds = %cond.end, %entry
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4928
  %19 = load i8, i8* %arrayidx, align 1, !dbg !4928
  ret i8 %19, !dbg !4929
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
define internal i32 @get_order(i64 %size) #6 !dbg !4930 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4934, metadata !DIExpression()), !dbg !4939
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4941, metadata !DIExpression()), !dbg !4942
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4943, metadata !DIExpression()), !dbg !4944
  %0 = load i64, i64* %size.addr, align 8, !dbg !4945
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4947
  br i1 %1, label %if.then, label %if.end447, !dbg !4948

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4949
  %tobool = icmp ne i64 %2, 0, !dbg !4949
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4952

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4953
  br label %return, !dbg !4953

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4954
  %cmp = icmp ult i64 %3, 4096, !dbg !4956
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4957

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4958
  br label %return, !dbg !4958

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub = sub i64 %4, 1, !dbg !4959
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4959
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4959

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub4 = sub i64 %6, 1, !dbg !4959
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4959
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4959

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub6 = sub i64 %8, 1, !dbg !4959
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4959
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4959

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4959

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub9 = sub i64 %9, 1, !dbg !4959
  %and = and i64 %sub9, -9223372036854775808, !dbg !4959
  %tobool10 = icmp ne i64 %and, 0, !dbg !4959
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4959

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4959

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub13 = sub i64 %10, 1, !dbg !4959
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4959
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4959
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4959

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4959

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub18 = sub i64 %11, 1, !dbg !4959
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4959
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4959
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4959

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4959

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub23 = sub i64 %12, 1, !dbg !4959
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4959
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4959
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4959

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4959

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub28 = sub i64 %13, 1, !dbg !4959
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4959
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4959
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4959

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4959

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub33 = sub i64 %14, 1, !dbg !4959
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4959
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4959
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4959

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4959

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub38 = sub i64 %15, 1, !dbg !4959
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4959
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4959
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4959

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4959

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub43 = sub i64 %16, 1, !dbg !4959
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4959
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4959
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4959

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4959

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub48 = sub i64 %17, 1, !dbg !4959
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4959
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4959
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4959

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4959

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub53 = sub i64 %18, 1, !dbg !4959
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4959
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4959
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4959

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4959

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub58 = sub i64 %19, 1, !dbg !4959
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4959
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4959
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4959

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4959

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub63 = sub i64 %20, 1, !dbg !4959
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4959
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4959
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4959

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4959

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub68 = sub i64 %21, 1, !dbg !4959
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4959
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4959
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4959

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4959

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub73 = sub i64 %22, 1, !dbg !4959
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4959
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4959
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4959

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4959

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub78 = sub i64 %23, 1, !dbg !4959
  %and79 = and i64 %sub78, 562949953421312, !dbg !4959
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4959
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4959

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4959

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub83 = sub i64 %24, 1, !dbg !4959
  %and84 = and i64 %sub83, 281474976710656, !dbg !4959
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4959
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4959

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4959

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub88 = sub i64 %25, 1, !dbg !4959
  %and89 = and i64 %sub88, 140737488355328, !dbg !4959
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4959
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4959

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4959

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub93 = sub i64 %26, 1, !dbg !4959
  %and94 = and i64 %sub93, 70368744177664, !dbg !4959
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4959
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4959

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4959

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub98 = sub i64 %27, 1, !dbg !4959
  %and99 = and i64 %sub98, 35184372088832, !dbg !4959
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4959
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4959

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4959

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub103 = sub i64 %28, 1, !dbg !4959
  %and104 = and i64 %sub103, 17592186044416, !dbg !4959
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4959
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4959

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4959

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub108 = sub i64 %29, 1, !dbg !4959
  %and109 = and i64 %sub108, 8796093022208, !dbg !4959
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4959
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4959

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4959

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub113 = sub i64 %30, 1, !dbg !4959
  %and114 = and i64 %sub113, 4398046511104, !dbg !4959
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4959
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4959

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4959

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub118 = sub i64 %31, 1, !dbg !4959
  %and119 = and i64 %sub118, 2199023255552, !dbg !4959
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4959
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4959

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4959

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub123 = sub i64 %32, 1, !dbg !4959
  %and124 = and i64 %sub123, 1099511627776, !dbg !4959
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4959
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4959

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4959

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub128 = sub i64 %33, 1, !dbg !4959
  %and129 = and i64 %sub128, 549755813888, !dbg !4959
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4959
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4959

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4959

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub133 = sub i64 %34, 1, !dbg !4959
  %and134 = and i64 %sub133, 274877906944, !dbg !4959
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4959
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4959

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4959

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub138 = sub i64 %35, 1, !dbg !4959
  %and139 = and i64 %sub138, 137438953472, !dbg !4959
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4959
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4959

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4959

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub143 = sub i64 %36, 1, !dbg !4959
  %and144 = and i64 %sub143, 68719476736, !dbg !4959
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4959
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4959

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4959

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub148 = sub i64 %37, 1, !dbg !4959
  %and149 = and i64 %sub148, 34359738368, !dbg !4959
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4959
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4959

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4959

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub153 = sub i64 %38, 1, !dbg !4959
  %and154 = and i64 %sub153, 17179869184, !dbg !4959
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4959
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4959

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4959

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub158 = sub i64 %39, 1, !dbg !4959
  %and159 = and i64 %sub158, 8589934592, !dbg !4959
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4959
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4959

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4959

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub163 = sub i64 %40, 1, !dbg !4959
  %and164 = and i64 %sub163, 4294967296, !dbg !4959
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4959
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4959

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4959

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub168 = sub i64 %41, 1, !dbg !4959
  %and169 = and i64 %sub168, 2147483648, !dbg !4959
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4959
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4959

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4959

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub173 = sub i64 %42, 1, !dbg !4959
  %and174 = and i64 %sub173, 1073741824, !dbg !4959
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4959
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4959

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4959

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub178 = sub i64 %43, 1, !dbg !4959
  %and179 = and i64 %sub178, 536870912, !dbg !4959
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4959
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4959

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4959

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub183 = sub i64 %44, 1, !dbg !4959
  %and184 = and i64 %sub183, 268435456, !dbg !4959
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4959
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4959

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4959

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub188 = sub i64 %45, 1, !dbg !4959
  %and189 = and i64 %sub188, 134217728, !dbg !4959
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4959
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4959

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4959

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub193 = sub i64 %46, 1, !dbg !4959
  %and194 = and i64 %sub193, 67108864, !dbg !4959
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4959
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4959

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4959

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub198 = sub i64 %47, 1, !dbg !4959
  %and199 = and i64 %sub198, 33554432, !dbg !4959
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4959
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4959

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4959

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub203 = sub i64 %48, 1, !dbg !4959
  %and204 = and i64 %sub203, 16777216, !dbg !4959
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4959
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4959

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4959

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub208 = sub i64 %49, 1, !dbg !4959
  %and209 = and i64 %sub208, 8388608, !dbg !4959
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4959
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4959

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4959

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub213 = sub i64 %50, 1, !dbg !4959
  %and214 = and i64 %sub213, 4194304, !dbg !4959
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4959
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4959

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4959

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub218 = sub i64 %51, 1, !dbg !4959
  %and219 = and i64 %sub218, 2097152, !dbg !4959
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4959
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4959

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4959

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub223 = sub i64 %52, 1, !dbg !4959
  %and224 = and i64 %sub223, 1048576, !dbg !4959
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4959
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4959

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4959

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub228 = sub i64 %53, 1, !dbg !4959
  %and229 = and i64 %sub228, 524288, !dbg !4959
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4959
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4959

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4959

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub233 = sub i64 %54, 1, !dbg !4959
  %and234 = and i64 %sub233, 262144, !dbg !4959
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4959
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4959

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4959

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub238 = sub i64 %55, 1, !dbg !4959
  %and239 = and i64 %sub238, 131072, !dbg !4959
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4959
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4959

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4959

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub243 = sub i64 %56, 1, !dbg !4959
  %and244 = and i64 %sub243, 65536, !dbg !4959
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4959
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4959

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4959

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub248 = sub i64 %57, 1, !dbg !4959
  %and249 = and i64 %sub248, 32768, !dbg !4959
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4959
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4959

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4959

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub253 = sub i64 %58, 1, !dbg !4959
  %and254 = and i64 %sub253, 16384, !dbg !4959
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4959
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4959

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4959

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub258 = sub i64 %59, 1, !dbg !4959
  %and259 = and i64 %sub258, 8192, !dbg !4959
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4959
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4959

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4959

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub263 = sub i64 %60, 1, !dbg !4959
  %and264 = and i64 %sub263, 4096, !dbg !4959
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4959
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4959

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4959

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub268 = sub i64 %61, 1, !dbg !4959
  %and269 = and i64 %sub268, 2048, !dbg !4959
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4959
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4959

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4959

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub273 = sub i64 %62, 1, !dbg !4959
  %and274 = and i64 %sub273, 1024, !dbg !4959
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4959
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4959

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4959

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub278 = sub i64 %63, 1, !dbg !4959
  %and279 = and i64 %sub278, 512, !dbg !4959
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4959
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4959

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4959

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub283 = sub i64 %64, 1, !dbg !4959
  %and284 = and i64 %sub283, 256, !dbg !4959
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4959
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4959

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4959

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub288 = sub i64 %65, 1, !dbg !4959
  %and289 = and i64 %sub288, 128, !dbg !4959
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4959
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4959

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4959

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub293 = sub i64 %66, 1, !dbg !4959
  %and294 = and i64 %sub293, 64, !dbg !4959
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4959
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4959

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4959

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub298 = sub i64 %67, 1, !dbg !4959
  %and299 = and i64 %sub298, 32, !dbg !4959
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4959
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4959

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4959

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub303 = sub i64 %68, 1, !dbg !4959
  %and304 = and i64 %sub303, 16, !dbg !4959
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4959
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4959

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4959

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub308 = sub i64 %69, 1, !dbg !4959
  %and309 = and i64 %sub308, 8, !dbg !4959
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4959
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4959

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4959

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub313 = sub i64 %70, 1, !dbg !4959
  %and314 = and i64 %sub313, 4, !dbg !4959
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4959
  %71 = zext i1 %tobool315 to i64, !dbg !4959
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4959
  br label %cond.end, !dbg !4959

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4959
  br label %cond.end317, !dbg !4959

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4959
  br label %cond.end319, !dbg !4959

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4959
  br label %cond.end321, !dbg !4959

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4959
  br label %cond.end323, !dbg !4959

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4959
  br label %cond.end325, !dbg !4959

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4959
  br label %cond.end327, !dbg !4959

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4959
  br label %cond.end329, !dbg !4959

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4959
  br label %cond.end331, !dbg !4959

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4959
  br label %cond.end333, !dbg !4959

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4959
  br label %cond.end335, !dbg !4959

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4959
  br label %cond.end337, !dbg !4959

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4959
  br label %cond.end339, !dbg !4959

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4959
  br label %cond.end341, !dbg !4959

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4959
  br label %cond.end343, !dbg !4959

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4959
  br label %cond.end345, !dbg !4959

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4959
  br label %cond.end347, !dbg !4959

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4959
  br label %cond.end349, !dbg !4959

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4959
  br label %cond.end351, !dbg !4959

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4959
  br label %cond.end353, !dbg !4959

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4959
  br label %cond.end355, !dbg !4959

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4959
  br label %cond.end357, !dbg !4959

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4959
  br label %cond.end359, !dbg !4959

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4959
  br label %cond.end361, !dbg !4959

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4959
  br label %cond.end363, !dbg !4959

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4959
  br label %cond.end365, !dbg !4959

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4959
  br label %cond.end367, !dbg !4959

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4959
  br label %cond.end369, !dbg !4959

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4959
  br label %cond.end371, !dbg !4959

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4959
  br label %cond.end373, !dbg !4959

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4959
  br label %cond.end375, !dbg !4959

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4959
  br label %cond.end377, !dbg !4959

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4959
  br label %cond.end379, !dbg !4959

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4959
  br label %cond.end381, !dbg !4959

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4959
  br label %cond.end383, !dbg !4959

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4959
  br label %cond.end385, !dbg !4959

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4959
  br label %cond.end387, !dbg !4959

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4959
  br label %cond.end389, !dbg !4959

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4959
  br label %cond.end391, !dbg !4959

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4959
  br label %cond.end393, !dbg !4959

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4959
  br label %cond.end395, !dbg !4959

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4959
  br label %cond.end397, !dbg !4959

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4959
  br label %cond.end399, !dbg !4959

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4959
  br label %cond.end401, !dbg !4959

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4959
  br label %cond.end403, !dbg !4959

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4959
  br label %cond.end405, !dbg !4959

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4959
  br label %cond.end407, !dbg !4959

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4959
  br label %cond.end409, !dbg !4959

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4959
  br label %cond.end411, !dbg !4959

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4959
  br label %cond.end413, !dbg !4959

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4959
  br label %cond.end415, !dbg !4959

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4959
  br label %cond.end417, !dbg !4959

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4959
  br label %cond.end419, !dbg !4959

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4959
  br label %cond.end421, !dbg !4959

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4959
  br label %cond.end423, !dbg !4959

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4959
  br label %cond.end425, !dbg !4959

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4959
  br label %cond.end427, !dbg !4959

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4959
  br label %cond.end429, !dbg !4959

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4959
  br label %cond.end431, !dbg !4959

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4959
  br label %cond.end433, !dbg !4959

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4959
  br label %cond.end435, !dbg !4959

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4959
  br label %cond.end437, !dbg !4959

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4959
  br label %cond.end440, !dbg !4959

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4959

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4959
  br label %cond.end444, !dbg !4959

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4959
  %sub443 = sub i64 %72, 1, !dbg !4959
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4959
  br label %cond.end444, !dbg !4959

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4959
  %sub446 = sub i32 %cond445, 12, !dbg !4960
  %add = add i32 %sub446, 1, !dbg !4961
  store i32 %add, i32* %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4963
  %dec = add i64 %73, -1, !dbg !4963
  store i64 %dec, i64* %size.addr, align 8, !dbg !4963
  %74 = load i64, i64* %size.addr, align 8, !dbg !4964
  %shr = lshr i64 %74, 12, !dbg !4964
  store i64 %shr, i64* %size.addr, align 8, !dbg !4964
  %75 = load i64, i64* %size.addr, align 8, !dbg !4965
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4942
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4966
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4967
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4966, !srcloc !4968
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4966
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4969
  %add.i = add i32 %79, 1, !dbg !4970
  store i32 %add.i, i32* %retval, align 4, !dbg !4971
  br label %return, !dbg !4971

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4972
  ret i32 %80, !dbg !4972
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4973 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4934, metadata !DIExpression()), !dbg !4977
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4941, metadata !DIExpression()), !dbg !4979
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  %0 = load i64, i64* %n.addr, align 8, !dbg !4982
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4979
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4983
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4984
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4983, !srcloc !4968
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4983
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4985
  %add.i = add i32 %4, 1, !dbg !4986
  %sub = sub i32 %add.i, 1, !dbg !4987
  ret i32 %sub, !dbg !4988
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4989 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5001
  ret i8* %0, !dbg !5002
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda10023_release(%struct.dvb_frontend* %fe) #0 !dbg !5003 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5006, metadata !DIExpression()), !dbg !5007
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5008
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5009
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5009
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5008
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5007
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5010
  %4 = bitcast %struct.tda10023_state* %3 to i8*, !dbg !5010
  call void @kfree(i8* %4) #8, !dbg !5011
  ret void, !dbg !5012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_init(%struct.dvb_frontend* %fe) #0 !dbg !5013 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  %tda10023_inittab = alloca [126 x i8], align 16
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5014, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5016, metadata !DIExpression()), !dbg !5017
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5018
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5019
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5019
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5018
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5017
  call void @llvm.dbg.declare(metadata [126 x i8]* %tda10023_inittab, metadata !5020, metadata !DIExpression()), !dbg !5024
  %arrayinit.begin = getelementptr inbounds [126 x i8], [126 x i8]* %tda10023_inittab, i64 0, i64 0, !dbg !5025
  store i8 42, i8* %arrayinit.begin, align 1, !dbg !5025
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element, align 1, !dbg !5025
  %arrayinit.element1 = getelementptr inbounds i8, i8* %arrayinit.element, i64 1, !dbg !5025
  store i8 2, i8* %arrayinit.element1, align 1, !dbg !5025
  %arrayinit.element2 = getelementptr inbounds i8, i8* %arrayinit.element1, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element2, align 1, !dbg !5025
  %arrayinit.element3 = getelementptr inbounds i8, i8* %arrayinit.element2, i64 1, !dbg !5025
  store i8 100, i8* %arrayinit.element3, align 1, !dbg !5025
  %arrayinit.element4 = getelementptr inbounds i8, i8* %arrayinit.element3, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element4, align 1, !dbg !5025
  %arrayinit.element5 = getelementptr inbounds i8, i8* %arrayinit.element4, i64 1, !dbg !5025
  store i8 42, i8* %arrayinit.element5, align 1, !dbg !5025
  %arrayinit.element6 = getelementptr inbounds i8, i8* %arrayinit.element5, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element6, align 1, !dbg !5025
  %arrayinit.element7 = getelementptr inbounds i8, i8* %arrayinit.element6, i64 1, !dbg !5025
  store i8 3, i8* %arrayinit.element7, align 1, !dbg !5025
  %arrayinit.element8 = getelementptr inbounds i8, i8* %arrayinit.element7, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element8, align 1, !dbg !5025
  %arrayinit.element9 = getelementptr inbounds i8, i8* %arrayinit.element8, i64 1, !dbg !5025
  store i8 100, i8* %arrayinit.element9, align 1, !dbg !5025
  %arrayinit.element10 = getelementptr inbounds i8, i8* %arrayinit.element9, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element10, align 1, !dbg !5025
  %arrayinit.element11 = getelementptr inbounds i8, i8* %arrayinit.element10, i64 1, !dbg !5025
  store i8 40, i8* %arrayinit.element11, align 1, !dbg !5025
  %arrayinit.element12 = getelementptr inbounds i8, i8* %arrayinit.element11, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element12, align 1, !dbg !5025
  %arrayinit.element13 = getelementptr inbounds i8, i8* %arrayinit.element12, i64 1, !dbg !5025
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5026
  %pll_m = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %3, i32 0, i32 6, !dbg !5027
  %4 = load i8, i8* %pll_m, align 8, !dbg !5027
  %conv = zext i8 %4 to i32, !dbg !5026
  %sub = sub i32 %conv, 1, !dbg !5028
  %conv14 = trunc i32 %sub to i8, !dbg !5029
  store i8 %conv14, i8* %arrayinit.element13, align 1, !dbg !5025
  %arrayinit.element15 = getelementptr inbounds i8, i8* %arrayinit.element13, i64 1, !dbg !5025
  store i8 41, i8* %arrayinit.element15, align 1, !dbg !5025
  %arrayinit.element16 = getelementptr inbounds i8, i8* %arrayinit.element15, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element16, align 1, !dbg !5025
  %arrayinit.element17 = getelementptr inbounds i8, i8* %arrayinit.element16, i64 1, !dbg !5025
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5030
  %pll_p = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %5, i32 0, i32 7, !dbg !5031
  %6 = load i8, i8* %pll_p, align 1, !dbg !5031
  %conv18 = zext i8 %6 to i32, !dbg !5030
  %sub19 = sub i32 %conv18, 1, !dbg !5032
  %shl = shl i32 %sub19, 6, !dbg !5033
  %7 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5034
  %pll_n = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %7, i32 0, i32 8, !dbg !5035
  %8 = load i8, i8* %pll_n, align 2, !dbg !5035
  %conv20 = zext i8 %8 to i32, !dbg !5034
  %sub21 = sub i32 %conv20, 1, !dbg !5036
  %or = or i32 %shl, %sub21, !dbg !5037
  %conv22 = trunc i32 %or to i8, !dbg !5038
  store i8 %conv22, i8* %arrayinit.element17, align 1, !dbg !5025
  %arrayinit.element23 = getelementptr inbounds i8, i8* %arrayinit.element17, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element23, align 1, !dbg !5025
  %arrayinit.element24 = getelementptr inbounds i8, i8* %arrayinit.element23, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element24, align 1, !dbg !5025
  %arrayinit.element25 = getelementptr inbounds i8, i8* %arrayinit.element24, i64 1, !dbg !5025
  store i8 35, i8* %arrayinit.element25, align 1, !dbg !5025
  %arrayinit.element26 = getelementptr inbounds i8, i8* %arrayinit.element25, i64 1, !dbg !5025
  store i8 42, i8* %arrayinit.element26, align 1, !dbg !5025
  %arrayinit.element27 = getelementptr inbounds i8, i8* %arrayinit.element26, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element27, align 1, !dbg !5025
  %arrayinit.element28 = getelementptr inbounds i8, i8* %arrayinit.element27, i64 1, !dbg !5025
  store i8 8, i8* %arrayinit.element28, align 1, !dbg !5025
  %arrayinit.element29 = getelementptr inbounds i8, i8* %arrayinit.element28, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element29, align 1, !dbg !5025
  %arrayinit.element30 = getelementptr inbounds i8, i8* %arrayinit.element29, i64 1, !dbg !5025
  store i8 100, i8* %arrayinit.element30, align 1, !dbg !5025
  %arrayinit.element31 = getelementptr inbounds i8, i8* %arrayinit.element30, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element31, align 1, !dbg !5025
  %arrayinit.element32 = getelementptr inbounds i8, i8* %arrayinit.element31, i64 1, !dbg !5025
  store i8 31, i8* %arrayinit.element32, align 1, !dbg !5025
  %arrayinit.element33 = getelementptr inbounds i8, i8* %arrayinit.element32, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element33, align 1, !dbg !5025
  %arrayinit.element34 = getelementptr inbounds i8, i8* %arrayinit.element33, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element34, align 1, !dbg !5025
  %arrayinit.element35 = getelementptr inbounds i8, i8* %arrayinit.element34, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element35, align 1, !dbg !5025
  %arrayinit.element36 = getelementptr inbounds i8, i8* %arrayinit.element35, i64 1, !dbg !5025
  store i8 100, i8* %arrayinit.element36, align 1, !dbg !5025
  %arrayinit.element37 = getelementptr inbounds i8, i8* %arrayinit.element36, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element37, align 1, !dbg !5025
  %arrayinit.element38 = getelementptr inbounds i8, i8* %arrayinit.element37, i64 1, !dbg !5025
  store i8 -26, i8* %arrayinit.element38, align 1, !dbg !5025
  %arrayinit.element39 = getelementptr inbounds i8, i8* %arrayinit.element38, i64 1, !dbg !5025
  store i8 12, i8* %arrayinit.element39, align 1, !dbg !5025
  %arrayinit.element40 = getelementptr inbounds i8, i8* %arrayinit.element39, i64 1, !dbg !5025
  store i8 4, i8* %arrayinit.element40, align 1, !dbg !5025
  %arrayinit.element41 = getelementptr inbounds i8, i8* %arrayinit.element40, i64 1, !dbg !5025
  store i8 16, i8* %arrayinit.element41, align 1, !dbg !5025
  %arrayinit.element42 = getelementptr inbounds i8, i8* %arrayinit.element41, i64 1, !dbg !5025
  store i8 -64, i8* %arrayinit.element42, align 1, !dbg !5025
  %arrayinit.element43 = getelementptr inbounds i8, i8* %arrayinit.element42, i64 1, !dbg !5025
  store i8 -128, i8* %arrayinit.element43, align 1, !dbg !5025
  %arrayinit.element44 = getelementptr inbounds i8, i8* %arrayinit.element43, i64 1, !dbg !5025
  store i8 14, i8* %arrayinit.element44, align 1, !dbg !5025
  %arrayinit.element45 = getelementptr inbounds i8, i8* %arrayinit.element44, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element45, align 1, !dbg !5025
  %arrayinit.element46 = getelementptr inbounds i8, i8* %arrayinit.element45, i64 1, !dbg !5025
  store i8 -126, i8* %arrayinit.element46, align 1, !dbg !5025
  %arrayinit.element47 = getelementptr inbounds i8, i8* %arrayinit.element46, i64 1, !dbg !5025
  store i8 3, i8* %arrayinit.element47, align 1, !dbg !5025
  %arrayinit.element48 = getelementptr inbounds i8, i8* %arrayinit.element47, i64 1, !dbg !5025
  store i8 8, i8* %arrayinit.element48, align 1, !dbg !5025
  %arrayinit.element49 = getelementptr inbounds i8, i8* %arrayinit.element48, i64 1, !dbg !5025
  store i8 8, i8* %arrayinit.element49, align 1, !dbg !5025
  %arrayinit.element50 = getelementptr inbounds i8, i8* %arrayinit.element49, i64 1, !dbg !5025
  store i8 46, i8* %arrayinit.element50, align 1, !dbg !5025
  %arrayinit.element51 = getelementptr inbounds i8, i8* %arrayinit.element50, i64 1, !dbg !5025
  store i8 -65, i8* %arrayinit.element51, align 1, !dbg !5025
  %arrayinit.element52 = getelementptr inbounds i8, i8* %arrayinit.element51, i64 1, !dbg !5025
  store i8 48, i8* %arrayinit.element52, align 1, !dbg !5025
  %arrayinit.element53 = getelementptr inbounds i8, i8* %arrayinit.element52, i64 1, !dbg !5025
  store i8 1, i8* %arrayinit.element53, align 1, !dbg !5025
  %arrayinit.element54 = getelementptr inbounds i8, i8* %arrayinit.element53, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element54, align 1, !dbg !5025
  %arrayinit.element55 = getelementptr inbounds i8, i8* %arrayinit.element54, i64 1, !dbg !5025
  store i8 48, i8* %arrayinit.element55, align 1, !dbg !5025
  %arrayinit.element56 = getelementptr inbounds i8, i8* %arrayinit.element55, i64 1, !dbg !5025
  store i8 30, i8* %arrayinit.element56, align 1, !dbg !5025
  %arrayinit.element57 = getelementptr inbounds i8, i8* %arrayinit.element56, i64 1, !dbg !5025
  store i8 -124, i8* %arrayinit.element57, align 1, !dbg !5025
  %arrayinit.element58 = getelementptr inbounds i8, i8* %arrayinit.element57, i64 1, !dbg !5025
  store i8 -124, i8* %arrayinit.element58, align 1, !dbg !5025
  %arrayinit.element59 = getelementptr inbounds i8, i8* %arrayinit.element58, i64 1, !dbg !5025
  store i8 27, i8* %arrayinit.element59, align 1, !dbg !5025
  %arrayinit.element60 = getelementptr inbounds i8, i8* %arrayinit.element59, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element60, align 1, !dbg !5025
  %arrayinit.element61 = getelementptr inbounds i8, i8* %arrayinit.element60, i64 1, !dbg !5025
  store i8 -56, i8* %arrayinit.element61, align 1, !dbg !5025
  %arrayinit.element62 = getelementptr inbounds i8, i8* %arrayinit.element61, i64 1, !dbg !5025
  store i8 59, i8* %arrayinit.element62, align 1, !dbg !5025
  %arrayinit.element63 = getelementptr inbounds i8, i8* %arrayinit.element62, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element63, align 1, !dbg !5025
  %arrayinit.element64 = getelementptr inbounds i8, i8* %arrayinit.element63, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element64, align 1, !dbg !5025
  %arrayinit.element65 = getelementptr inbounds i8, i8* %arrayinit.element64, i64 1, !dbg !5025
  store i8 60, i8* %arrayinit.element65, align 1, !dbg !5025
  %arrayinit.element66 = getelementptr inbounds i8, i8* %arrayinit.element65, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element66, align 1, !dbg !5025
  %arrayinit.element67 = getelementptr inbounds i8, i8* %arrayinit.element66, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element67, align 1, !dbg !5025
  %arrayinit.element68 = getelementptr inbounds i8, i8* %arrayinit.element67, i64 1, !dbg !5025
  store i8 52, i8* %arrayinit.element68, align 1, !dbg !5025
  %arrayinit.element69 = getelementptr inbounds i8, i8* %arrayinit.element68, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element69, align 1, !dbg !5025
  %arrayinit.element70 = getelementptr inbounds i8, i8* %arrayinit.element69, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element70, align 1, !dbg !5025
  %arrayinit.element71 = getelementptr inbounds i8, i8* %arrayinit.element70, i64 1, !dbg !5025
  store i8 53, i8* %arrayinit.element71, align 1, !dbg !5025
  %arrayinit.element72 = getelementptr inbounds i8, i8* %arrayinit.element71, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element72, align 1, !dbg !5025
  %arrayinit.element73 = getelementptr inbounds i8, i8* %arrayinit.element72, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element73, align 1, !dbg !5025
  %arrayinit.element74 = getelementptr inbounds i8, i8* %arrayinit.element73, i64 1, !dbg !5025
  store i8 54, i8* %arrayinit.element74, align 1, !dbg !5025
  %arrayinit.element75 = getelementptr inbounds i8, i8* %arrayinit.element74, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element75, align 1, !dbg !5025
  %arrayinit.element76 = getelementptr inbounds i8, i8* %arrayinit.element75, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element76, align 1, !dbg !5025
  %arrayinit.element77 = getelementptr inbounds i8, i8* %arrayinit.element76, i64 1, !dbg !5025
  store i8 6, i8* %arrayinit.element77, align 1, !dbg !5025
  %arrayinit.element78 = getelementptr inbounds i8, i8* %arrayinit.element77, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element78, align 1, !dbg !5025
  %arrayinit.element79 = getelementptr inbounds i8, i8* %arrayinit.element78, i64 1, !dbg !5025
  store i8 127, i8* %arrayinit.element79, align 1, !dbg !5025
  %arrayinit.element80 = getelementptr inbounds i8, i8* %arrayinit.element79, i64 1, !dbg !5025
  store i8 28, i8* %arrayinit.element80, align 1, !dbg !5025
  %arrayinit.element81 = getelementptr inbounds i8, i8* %arrayinit.element80, i64 1, !dbg !5025
  store i8 48, i8* %arrayinit.element81, align 1, !dbg !5025
  %arrayinit.element82 = getelementptr inbounds i8, i8* %arrayinit.element81, i64 1, !dbg !5025
  store i8 48, i8* %arrayinit.element82, align 1, !dbg !5025
  %arrayinit.element83 = getelementptr inbounds i8, i8* %arrayinit.element82, i64 1, !dbg !5025
  store i8 55, i8* %arrayinit.element83, align 1, !dbg !5025
  %arrayinit.element84 = getelementptr inbounds i8, i8* %arrayinit.element83, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element84, align 1, !dbg !5025
  %arrayinit.element85 = getelementptr inbounds i8, i8* %arrayinit.element84, i64 1, !dbg !5025
  store i8 -10, i8* %arrayinit.element85, align 1, !dbg !5025
  %arrayinit.element86 = getelementptr inbounds i8, i8* %arrayinit.element85, i64 1, !dbg !5025
  store i8 56, i8* %arrayinit.element86, align 1, !dbg !5025
  %arrayinit.element87 = getelementptr inbounds i8, i8* %arrayinit.element86, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element87, align 1, !dbg !5025
  %arrayinit.element88 = getelementptr inbounds i8, i8* %arrayinit.element87, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element88, align 1, !dbg !5025
  %arrayinit.element89 = getelementptr inbounds i8, i8* %arrayinit.element88, i64 1, !dbg !5025
  store i8 2, i8* %arrayinit.element89, align 1, !dbg !5025
  %arrayinit.element90 = getelementptr inbounds i8, i8* %arrayinit.element89, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element90, align 1, !dbg !5025
  %arrayinit.element91 = getelementptr inbounds i8, i8* %arrayinit.element90, i64 1, !dbg !5025
  store i8 -109, i8* %arrayinit.element91, align 1, !dbg !5025
  %arrayinit.element92 = getelementptr inbounds i8, i8* %arrayinit.element91, i64 1, !dbg !5025
  store i8 45, i8* %arrayinit.element92, align 1, !dbg !5025
  %arrayinit.element93 = getelementptr inbounds i8, i8* %arrayinit.element92, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element93, align 1, !dbg !5025
  %arrayinit.element94 = getelementptr inbounds i8, i8* %arrayinit.element93, i64 1, !dbg !5025
  store i8 -10, i8* %arrayinit.element94, align 1, !dbg !5025
  %arrayinit.element95 = getelementptr inbounds i8, i8* %arrayinit.element94, i64 1, !dbg !5025
  store i8 4, i8* %arrayinit.element95, align 1, !dbg !5025
  %arrayinit.element96 = getelementptr inbounds i8, i8* %arrayinit.element95, i64 1, !dbg !5025
  store i8 16, i8* %arrayinit.element96, align 1, !dbg !5025
  %arrayinit.element97 = getelementptr inbounds i8, i8* %arrayinit.element96, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element97, align 1, !dbg !5025
  %arrayinit.element98 = getelementptr inbounds i8, i8* %arrayinit.element97, i64 1, !dbg !5025
  store i8 18, i8* %arrayinit.element98, align 1, !dbg !5025
  %arrayinit.element99 = getelementptr inbounds i8, i8* %arrayinit.element98, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element99, align 1, !dbg !5025
  %arrayinit.element100 = getelementptr inbounds i8, i8* %arrayinit.element99, i64 1, !dbg !5025
  store i8 -95, i8* %arrayinit.element100, align 1, !dbg !5025
  %arrayinit.element101 = getelementptr inbounds i8, i8* %arrayinit.element100, i64 1, !dbg !5025
  store i8 43, i8* %arrayinit.element101, align 1, !dbg !5025
  %arrayinit.element102 = getelementptr inbounds i8, i8* %arrayinit.element101, i64 1, !dbg !5025
  store i8 1, i8* %arrayinit.element102, align 1, !dbg !5025
  %arrayinit.element103 = getelementptr inbounds i8, i8* %arrayinit.element102, i64 1, !dbg !5025
  store i8 -95, i8* %arrayinit.element103, align 1, !dbg !5025
  %arrayinit.element104 = getelementptr inbounds i8, i8* %arrayinit.element103, i64 1, !dbg !5025
  store i8 32, i8* %arrayinit.element104, align 1, !dbg !5025
  %arrayinit.element105 = getelementptr inbounds i8, i8* %arrayinit.element104, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element105, align 1, !dbg !5025
  %arrayinit.element106 = getelementptr inbounds i8, i8* %arrayinit.element105, i64 1, !dbg !5025
  store i8 4, i8* %arrayinit.element106, align 1, !dbg !5025
  %arrayinit.element107 = getelementptr inbounds i8, i8* %arrayinit.element106, i64 1, !dbg !5025
  store i8 44, i8* %arrayinit.element107, align 1, !dbg !5025
  %arrayinit.element108 = getelementptr inbounds i8, i8* %arrayinit.element107, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element108, align 1, !dbg !5025
  %arrayinit.element109 = getelementptr inbounds i8, i8* %arrayinit.element108, i64 1, !dbg !5025
  store i8 13, i8* %arrayinit.element109, align 1, !dbg !5025
  %arrayinit.element110 = getelementptr inbounds i8, i8* %arrayinit.element109, i64 1, !dbg !5025
  store i8 -60, i8* %arrayinit.element110, align 1, !dbg !5025
  %arrayinit.element111 = getelementptr inbounds i8, i8* %arrayinit.element110, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element111, align 1, !dbg !5025
  %arrayinit.element112 = getelementptr inbounds i8, i8* %arrayinit.element111, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element112, align 1, !dbg !5025
  %arrayinit.element113 = getelementptr inbounds i8, i8* %arrayinit.element112, i64 1, !dbg !5025
  store i8 -61, i8* %arrayinit.element113, align 1, !dbg !5025
  %arrayinit.element114 = getelementptr inbounds i8, i8* %arrayinit.element113, i64 1, !dbg !5025
  store i8 48, i8* %arrayinit.element114, align 1, !dbg !5025
  %arrayinit.element115 = getelementptr inbounds i8, i8* %arrayinit.element114, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element115, align 1, !dbg !5025
  %arrayinit.element116 = getelementptr inbounds i8, i8* %arrayinit.element115, i64 1, !dbg !5025
  store i8 -75, i8* %arrayinit.element116, align 1, !dbg !5025
  %arrayinit.element117 = getelementptr inbounds i8, i8* %arrayinit.element116, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element117, align 1, !dbg !5025
  %arrayinit.element118 = getelementptr inbounds i8, i8* %arrayinit.element117, i64 1, !dbg !5025
  store i8 25, i8* %arrayinit.element118, align 1, !dbg !5025
  %arrayinit.element119 = getelementptr inbounds i8, i8* %arrayinit.element118, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element119, align 1, !dbg !5025
  %arrayinit.element120 = getelementptr inbounds i8, i8* %arrayinit.element119, i64 1, !dbg !5025
  store i8 3, i8* %arrayinit.element120, align 1, !dbg !5025
  %arrayinit.element121 = getelementptr inbounds i8, i8* %arrayinit.element120, i64 1, !dbg !5025
  store i8 1, i8* %arrayinit.element121, align 1, !dbg !5025
  %arrayinit.element122 = getelementptr inbounds i8, i8* %arrayinit.element121, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element122, align 1, !dbg !5025
  %arrayinit.element123 = getelementptr inbounds i8, i8* %arrayinit.element122, i64 1, !dbg !5025
  store i8 3, i8* %arrayinit.element123, align 1, !dbg !5025
  %arrayinit.element124 = getelementptr inbounds i8, i8* %arrayinit.element123, i64 1, !dbg !5025
  store i8 3, i8* %arrayinit.element124, align 1, !dbg !5025
  %arrayinit.element125 = getelementptr inbounds i8, i8* %arrayinit.element124, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element125, align 1, !dbg !5025
  %arrayinit.element126 = getelementptr inbounds i8, i8* %arrayinit.element125, i64 1, !dbg !5025
  store i8 100, i8* %arrayinit.element126, align 1, !dbg !5025
  %arrayinit.element127 = getelementptr inbounds i8, i8* %arrayinit.element126, i64 1, !dbg !5025
  store i8 0, i8* %arrayinit.element127, align 1, !dbg !5025
  %arrayinit.element128 = getelementptr inbounds i8, i8* %arrayinit.element127, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element128, align 1, !dbg !5025
  %arrayinit.element129 = getelementptr inbounds i8, i8* %arrayinit.element128, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element129, align 1, !dbg !5025
  %arrayinit.element130 = getelementptr inbounds i8, i8* %arrayinit.element129, i64 1, !dbg !5025
  store i8 -1, i8* %arrayinit.element130, align 1, !dbg !5025
  %9 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5039
  %config = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %9, i32 0, i32 1, !dbg !5041
  %10 = load %struct.tda10023_config*, %struct.tda10023_config** %config, align 8, !dbg !5041
  %deltaf = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %10, i32 0, i32 7, !dbg !5042
  %11 = load i16, i16* %deltaf, align 4, !dbg !5042
  %tobool = icmp ne i16 %11, 0, !dbg !5039
  br i1 %tobool, label %if.then, label %if.end, !dbg !5043

if.then:                                          ; preds = %entry
  %12 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5044
  %config131 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %12, i32 0, i32 1, !dbg !5046
  %13 = load %struct.tda10023_config*, %struct.tda10023_config** %config131, align 8, !dbg !5046
  %deltaf132 = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %13, i32 0, i32 7, !dbg !5047
  %14 = load i16, i16* %deltaf132, align 4, !dbg !5047
  %conv133 = zext i16 %14 to i32, !dbg !5044
  %and = and i32 %conv133, 255, !dbg !5048
  %conv134 = trunc i32 %and to i8, !dbg !5049
  %arrayidx = getelementptr [126 x i8], [126 x i8]* %tda10023_inittab, i64 0, i64 80, !dbg !5050
  store i8 %conv134, i8* %arrayidx, align 16, !dbg !5051
  %15 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5052
  %config135 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %15, i32 0, i32 1, !dbg !5053
  %16 = load %struct.tda10023_config*, %struct.tda10023_config** %config135, align 8, !dbg !5053
  %deltaf136 = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %16, i32 0, i32 7, !dbg !5054
  %17 = load i16, i16* %deltaf136, align 4, !dbg !5054
  %conv137 = zext i16 %17 to i32, !dbg !5052
  %shr = ashr i32 %conv137, 8, !dbg !5055
  %conv138 = trunc i32 %shr to i8, !dbg !5056
  %arrayidx139 = getelementptr [126 x i8], [126 x i8]* %tda10023_inittab, i64 0, i64 83, !dbg !5057
  store i8 %conv138, i8* %arrayidx139, align 1, !dbg !5058
  br label %if.end, !dbg !5059

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5060
  %config140 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %18, i32 0, i32 1, !dbg !5062
  %19 = load %struct.tda10023_config*, %struct.tda10023_config** %config140, align 8, !dbg !5062
  %output_mode = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %19, i32 0, i32 6, !dbg !5063
  %20 = load i8, i8* %output_mode, align 1, !dbg !5063
  %tobool141 = icmp ne i8 %20, 0, !dbg !5060
  br i1 %tobool141, label %if.then142, label %if.end146, !dbg !5064

if.then142:                                       ; preds = %if.end
  %21 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5065
  %config143 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %21, i32 0, i32 1, !dbg !5066
  %22 = load %struct.tda10023_config*, %struct.tda10023_config** %config143, align 8, !dbg !5066
  %output_mode144 = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %22, i32 0, i32 6, !dbg !5067
  %23 = load i8, i8* %output_mode144, align 1, !dbg !5067
  %arrayidx145 = getelementptr [126 x i8], [126 x i8]* %tda10023_inittab, i64 0, i64 95, !dbg !5068
  store i8 %23, i8* %arrayidx145, align 1, !dbg !5069
  br label %if.end146, !dbg !5068

if.end146:                                        ; preds = %if.then142, %if.end
  %24 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5070
  %arraydecay = getelementptr inbounds [126 x i8], [126 x i8]* %tda10023_inittab, i64 0, i64 0, !dbg !5071
  call void @tda10023_writetab(%struct.tda10023_state* %24, i8* %arraydecay) #8, !dbg !5072
  ret i32 0, !dbg !5073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5074 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5075, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5077, metadata !DIExpression()), !dbg !5078
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5079
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5080
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5080
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5079
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5078
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5081
  %call = call i32 @tda10023_writereg(%struct.tda10023_state* %3, i8 zeroext 27, i8 zeroext 2) #8, !dbg !5082
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5083
  %call1 = call i32 @tda10023_writereg(%struct.tda10023_state* %4, i8 zeroext 0, i8 zeroext -128) #8, !dbg !5084
  ret i32 0, !dbg !5085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_set_parameters(%struct.dvb_frontend* %fe) #0 !dbg !342 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %delsys = alloca i32, align 4
  %qam = alloca i32, align 4
  %is_annex_c = alloca i8, align 1
  %state = alloca %struct.tda10023_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5088, metadata !DIExpression()), !dbg !5089
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5090
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5091
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5089
  call void @llvm.dbg.declare(metadata i32* %delsys, metadata !5092, metadata !DIExpression()), !dbg !5093
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5094
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 15, !dbg !5095
  %2 = load i32, i32* %delivery_system, align 4, !dbg !5095
  store i32 %2, i32* %delsys, align 4, !dbg !5093
  call void @llvm.dbg.declare(metadata i32* %qam, metadata !5096, metadata !DIExpression()), !dbg !5097
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5098
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 1, !dbg !5099
  %4 = load i32, i32* %modulation, align 4, !dbg !5099
  store i32 %4, i32* %qam, align 4, !dbg !5097
  call void @llvm.dbg.declare(metadata i8* %is_annex_c, metadata !5100, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5102, metadata !DIExpression()), !dbg !5103
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5104
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 3, !dbg !5105
  %6 = load i8*, i8** %demodulator_priv, align 8, !dbg !5105
  %7 = bitcast i8* %6 to %struct.tda10023_state*, !dbg !5104
  store %struct.tda10023_state* %7, %struct.tda10023_state** %state, align 8, !dbg !5103
  %8 = load i32, i32* %delsys, align 4, !dbg !5106
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 18, label %sw.bb1
  ], !dbg !5107

sw.bb:                                            ; preds = %entry
  store i8 0, i8* %is_annex_c, align 1, !dbg !5108
  br label %sw.epilog, !dbg !5110

sw.bb1:                                           ; preds = %entry
  store i8 1, i8* %is_annex_c, align 1, !dbg !5111
  br label %sw.epilog, !dbg !5112

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %9 = load i32, i32* %qam, align 4, !dbg !5114
  switch i32 %9, label %sw.default3 [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb2
    i32 2, label %sw.bb2
    i32 3, label %sw.bb2
    i32 4, label %sw.bb2
    i32 5, label %sw.bb2
  ], !dbg !5115

sw.bb2:                                           ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog4, !dbg !5116

sw.default3:                                      ; preds = %sw.epilog
  store i32 -22, i32* %retval, align 4, !dbg !5118
  br label %return, !dbg !5118

sw.epilog4:                                       ; preds = %sw.bb2
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5119
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1, !dbg !5121
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5122
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5123
  %11 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5123
  %tobool = icmp ne i32 (%struct.dvb_frontend*)* %11, null, !dbg !5119
  br i1 %tobool, label %if.then, label %if.end14, !dbg !5124

if.then:                                          ; preds = %sw.epilog4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5125
  %ops5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1, !dbg !5127
  %tuner_ops6 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops5, i32 0, i32 30, !dbg !5128
  %set_params7 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops6, i32 0, i32 6, !dbg !5129
  %13 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params7, align 8, !dbg !5129
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5130
  %call = call i32 %13(%struct.dvb_frontend* %14) #8, !dbg !5125
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5131
  %ops8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1, !dbg !5133
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops8, i32 0, i32 26, !dbg !5134
  %16 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5134
  %tobool9 = icmp ne i32 (%struct.dvb_frontend*, i32)* %16, null, !dbg !5131
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !5135

if.then10:                                        ; preds = %if.then
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5136
  %ops11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1, !dbg !5137
  %i2c_gate_ctrl12 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops11, i32 0, i32 26, !dbg !5138
  %18 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl12, align 8, !dbg !5138
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5139
  %call13 = call i32 %18(%struct.dvb_frontend* %19, i32 0) #8, !dbg !5136
  br label %if.end, !dbg !5136

if.end:                                           ; preds = %if.then10, %if.then
  br label %if.end14, !dbg !5140

if.end14:                                         ; preds = %if.end, %sw.epilog4
  %20 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5141
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5142
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 10, !dbg !5143
  %22 = load i32, i32* %symbol_rate, align 4, !dbg !5143
  %call15 = call i32 @tda10023_set_symbolrate(%struct.tda10023_state* %20, i32 %22) #8, !dbg !5144
  %23 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5145
  %24 = load i32, i32* %qam, align 4, !dbg !5146
  %idxprom = zext i32 %24 to i64, !dbg !5147
  %arrayidx = getelementptr [6 x %struct.qam_params], [6 x %struct.qam_params]* @tda10023_set_parameters.qam_params, i64 0, i64 %idxprom, !dbg !5147
  %lockthr = getelementptr inbounds %struct.qam_params, %struct.qam_params* %arrayidx, i32 0, i32 1, !dbg !5148
  %25 = load i8, i8* %lockthr, align 1, !dbg !5148
  %call16 = call i32 @tda10023_writereg(%struct.tda10023_state* %23, i8 zeroext 5, i8 zeroext %25) #8, !dbg !5149
  %26 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5150
  %27 = load i32, i32* %qam, align 4, !dbg !5151
  %idxprom17 = zext i32 %27 to i64, !dbg !5152
  %arrayidx18 = getelementptr [6 x %struct.qam_params], [6 x %struct.qam_params]* @tda10023_set_parameters.qam_params, i64 0, i64 %idxprom17, !dbg !5152
  %mseth = getelementptr inbounds %struct.qam_params, %struct.qam_params* %arrayidx18, i32 0, i32 2, !dbg !5153
  %28 = load i8, i8* %mseth, align 2, !dbg !5153
  %call19 = call i32 @tda10023_writereg(%struct.tda10023_state* %26, i8 zeroext 8, i8 zeroext %28) #8, !dbg !5154
  %29 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5155
  %30 = load i32, i32* %qam, align 4, !dbg !5156
  %idxprom20 = zext i32 %30 to i64, !dbg !5157
  %arrayidx21 = getelementptr [6 x %struct.qam_params], [6 x %struct.qam_params]* @tda10023_set_parameters.qam_params, i64 0, i64 %idxprom20, !dbg !5157
  %aref = getelementptr inbounds %struct.qam_params, %struct.qam_params* %arrayidx21, i32 0, i32 3, !dbg !5158
  %31 = load i8, i8* %aref, align 1, !dbg !5158
  %call22 = call i32 @tda10023_writereg(%struct.tda10023_state* %29, i8 zeroext 9, i8 zeroext %31) #8, !dbg !5159
  %32 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5160
  %33 = load i32, i32* %qam, align 4, !dbg !5161
  %idxprom23 = zext i32 %33 to i64, !dbg !5162
  %arrayidx24 = getelementptr [6 x %struct.qam_params], [6 x %struct.qam_params]* @tda10023_set_parameters.qam_params, i64 0, i64 %idxprom23, !dbg !5162
  %agcrefnyq = getelementptr inbounds %struct.qam_params, %struct.qam_params* %arrayidx24, i32 0, i32 4, !dbg !5163
  %34 = load i8, i8* %agcrefnyq, align 2, !dbg !5163
  %call25 = call i32 @tda10023_writereg(%struct.tda10023_state* %32, i8 zeroext -76, i8 zeroext %34) #8, !dbg !5164
  %35 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5165
  %36 = load i32, i32* %qam, align 4, !dbg !5166
  %idxprom26 = zext i32 %36 to i64, !dbg !5167
  %arrayidx27 = getelementptr [6 x %struct.qam_params], [6 x %struct.qam_params]* @tda10023_set_parameters.qam_params, i64 0, i64 %idxprom26, !dbg !5167
  %eragnyq_thd = getelementptr inbounds %struct.qam_params, %struct.qam_params* %arrayidx27, i32 0, i32 5, !dbg !5168
  %37 = load i8, i8* %eragnyq_thd, align 1, !dbg !5168
  %call28 = call i32 @tda10023_writereg(%struct.tda10023_state* %35, i8 zeroext -74, i8 zeroext %37) #8, !dbg !5169
  %38 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5170
  %call29 = call i32 @tda10023_writebit(%struct.tda10023_state* %38, i8 zeroext 4, i8 zeroext 64, i8 zeroext 64) #8, !dbg !5171
  %39 = load i8, i8* %is_annex_c, align 1, !dbg !5172
  %tobool30 = trunc i8 %39 to i1, !dbg !5172
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !5174

if.then31:                                        ; preds = %if.end14
  %40 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5175
  %call32 = call i32 @tda10023_writebit(%struct.tda10023_state* %40, i8 zeroext 61, i8 zeroext -4, i8 zeroext 3) #8, !dbg !5176
  br label %if.end34, !dbg !5176

if.else:                                          ; preds = %if.end14
  %41 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5177
  %call33 = call i32 @tda10023_writebit(%struct.tda10023_state* %41, i8 zeroext 61, i8 zeroext -4, i8 zeroext 2) #8, !dbg !5178
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31
  %42 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5179
  %43 = load i32, i32* %qam, align 4, !dbg !5180
  %idxprom35 = zext i32 %43 to i64, !dbg !5181
  %arrayidx36 = getelementptr [6 x %struct.qam_params], [6 x %struct.qam_params]* @tda10023_set_parameters.qam_params, i64 0, i64 %idxprom35, !dbg !5181
  %qam37 = getelementptr inbounds %struct.qam_params, %struct.qam_params* %arrayidx36, i32 0, i32 0, !dbg !5182
  %44 = load i8, i8* %qam37, align 2, !dbg !5182
  %call38 = call i32 @tda10023_setup_reg0(%struct.tda10023_state* %42, i8 zeroext %44) #8, !dbg !5183
  store i32 0, i32* %retval, align 4, !dbg !5184
  br label %return, !dbg !5184

return:                                           ; preds = %if.end34, %sw.default3, %sw.default
  %45 = load i32, i32* %retval, align 4, !dbg !5185
  ret i32 %45, !dbg !5185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !5186 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  %sync = alloca i32, align 4
  %inv = alloca i32, align 4
  %afc = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5191, metadata !DIExpression()), !dbg !5192
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5193
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5194
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5194
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5193
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5192
  call void @llvm.dbg.declare(metadata i32* %sync, metadata !5195, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.declare(metadata i32* %inv, metadata !5197, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.declare(metadata i8* %afc, metadata !5199, metadata !DIExpression()), !dbg !5203
  store i8 0, i8* %afc, align 1, !dbg !5203
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5204
  %call = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %3, i8 zeroext 17) #8, !dbg !5205
  %conv = zext i8 %call to i32, !dbg !5205
  store i32 %conv, i32* %sync, align 4, !dbg !5206
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5207
  %call1 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %4, i8 zeroext 25) #8, !dbg !5208
  store i8 %call1, i8* %afc, align 1, !dbg !5209
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5210
  %call2 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %5, i8 zeroext 4) #8, !dbg !5211
  %conv3 = zext i8 %call2 to i32, !dbg !5211
  store i32 %conv3, i32* %inv, align 4, !dbg !5212
  %6 = load i32, i32* @verbose, align 4, !dbg !5213
  %tobool = icmp ne i32 %6, 0, !dbg !5213
  br i1 %tobool, label %if.then, label %if.end, !dbg !5215

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %sync, align 4, !dbg !5216
  %and = and i32 %7, 2, !dbg !5218
  %tobool4 = icmp ne i32 %and, 0, !dbg !5216
  %8 = zext i1 %tobool4 to i64, !dbg !5216
  %cond = select i1 %tobool4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), !dbg !5216
  %9 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5219
  %frontend = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %9, i32 0, i32 2, !dbg !5220
  %dvb = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 2, !dbg !5221
  %10 = load %struct.dvb_adapter*, %struct.dvb_adapter** %dvb, align 8, !dbg !5221
  %num = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %10, i32 0, i32 0, !dbg !5222
  %11 = load i32, i32* %num, align 8, !dbg !5222
  %12 = load i8, i8* %afc, align 1, !dbg !5223
  %conv5 = sext i8 %12 to i32, !dbg !5223
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5224
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 10, !dbg !5225
  %14 = load i32, i32* %symbol_rate, align 4, !dbg !5225
  %15 = load i8, i8* %afc, align 1, !dbg !5226
  %conv6 = sext i8 %15 to i32, !dbg !5226
  %mul = mul i32 %14, %conv6, !dbg !5227
  %sub = sub i32 0, %mul, !dbg !5228
  %shr = ashr i32 %sub, 10, !dbg !5229
  %call7 = call i32 (i8*, ...) @printk(i8* %cond, i32 %11, i32 %conv5, i32 %shr) #12, !dbg !5230
  br label %if.end, !dbg !5231

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %inv, align 4, !dbg !5232
  %and8 = and i32 %16, 32, !dbg !5233
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5232
  %17 = zext i1 %tobool9 to i64, !dbg !5232
  %cond10 = select i1 %tobool9, i32 0, i32 1, !dbg !5232
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5234
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 4, !dbg !5235
  store i32 %cond10, i32* %inversion, align 4, !dbg !5236
  %19 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5237
  %reg0 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %19, i32 0, i32 4, !dbg !5238
  %20 = load i8, i8* %reg0, align 1, !dbg !5238
  %conv11 = zext i8 %20 to i32, !dbg !5237
  %shr12 = ashr i32 %conv11, 2, !dbg !5239
  %and13 = and i32 %shr12, 7, !dbg !5240
  %add = add i32 %and13, 1, !dbg !5241
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5242
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 1, !dbg !5243
  store i32 %add, i32* %modulation, align 4, !dbg !5244
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5245
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 5, !dbg !5246
  store i32 0, i32* %fec_inner, align 4, !dbg !5247
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5248
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0, !dbg !5249
  %24 = load i32, i32* %frequency, align 4, !dbg !5249
  %add14 = add i32 %24, 31250, !dbg !5250
  %div = udiv i32 %add14, 62500, !dbg !5251
  %mul15 = mul i32 %div, 62500, !dbg !5252
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5253
  %frequency16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0, !dbg !5254
  store i32 %mul15, i32* %frequency16, align 4, !dbg !5255
  %26 = load i32, i32* %sync, align 4, !dbg !5256
  %and17 = and i32 %26, 2, !dbg !5258
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5258
  br i1 %tobool18, label %if.then19, label %if.end26, !dbg !5259

if.then19:                                        ; preds = %if.end
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5260
  %symbol_rate20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 10, !dbg !5261
  %28 = load i32, i32* %symbol_rate20, align 4, !dbg !5261
  %29 = load i8, i8* %afc, align 1, !dbg !5262
  %conv21 = sext i8 %29 to i32, !dbg !5262
  %mul22 = mul i32 %28, %conv21, !dbg !5263
  %shr23 = ashr i32 %mul22, 10, !dbg !5264
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5265
  %frequency24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 0, !dbg !5266
  %31 = load i32, i32* %frequency24, align 4, !dbg !5267
  %sub25 = sub i32 %31, %shr23, !dbg !5267
  store i32 %sub25, i32* %frequency24, align 4, !dbg !5267
  br label %if.end26, !dbg !5265

if.end26:                                         ; preds = %if.then19, %if.end
  ret i32 0, !dbg !5268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5269 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  %sync = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5276
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5277
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5277
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5276
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5275
  call void @llvm.dbg.declare(metadata i32* %sync, metadata !5278, metadata !DIExpression()), !dbg !5279
  %3 = load i32*, i32** %status.addr, align 8, !dbg !5280
  store i32 0, i32* %3, align 4, !dbg !5281
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5282
  %call = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %4, i8 zeroext 17) #8, !dbg !5283
  %conv = zext i8 %call to i32, !dbg !5283
  store i32 %conv, i32* %sync, align 4, !dbg !5284
  %5 = load i32, i32* %sync, align 4, !dbg !5285
  %and = and i32 %5, 2, !dbg !5287
  %tobool = icmp ne i32 %and, 0, !dbg !5287
  br i1 %tobool, label %if.then, label %if.end, !dbg !5288

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5289
  %7 = load i32, i32* %6, align 4, !dbg !5290
  %or = or i32 %7, 3, !dbg !5290
  store i32 %or, i32* %6, align 4, !dbg !5290
  br label %if.end, !dbg !5291

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %sync, align 4, !dbg !5292
  %and1 = and i32 %8, 4, !dbg !5294
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5294
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5295

if.then3:                                         ; preds = %if.end
  %9 = load i32*, i32** %status.addr, align 8, !dbg !5296
  %10 = load i32, i32* %9, align 4, !dbg !5297
  %or4 = or i32 %10, 12, !dbg !5297
  store i32 %or4, i32* %9, align 4, !dbg !5297
  br label %if.end5, !dbg !5298

if.end5:                                          ; preds = %if.then3, %if.end
  %11 = load i32, i32* %sync, align 4, !dbg !5299
  %and6 = and i32 %11, 8, !dbg !5301
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5301
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5302

if.then8:                                         ; preds = %if.end5
  %12 = load i32*, i32** %status.addr, align 8, !dbg !5303
  %13 = load i32, i32* %12, align 4, !dbg !5304
  %or9 = or i32 %13, 16, !dbg !5304
  store i32 %or9, i32* %12, align 4, !dbg !5304
  br label %if.end10, !dbg !5305

if.end10:                                         ; preds = %if.then8, %if.end5
  ret i32 0, !dbg !5306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5307 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  %c = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5308, metadata !DIExpression()), !dbg !5309
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5312, metadata !DIExpression()), !dbg !5313
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5314
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5315
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5315
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5314
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5313
  call void @llvm.dbg.declare(metadata i8* %a, metadata !5316, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.declare(metadata i8* %b, metadata !5318, metadata !DIExpression()), !dbg !5319
  call void @llvm.dbg.declare(metadata i8* %c, metadata !5320, metadata !DIExpression()), !dbg !5321
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5322
  %call = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %3, i8 zeroext 20) #8, !dbg !5323
  store i8 %call, i8* %a, align 1, !dbg !5324
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5325
  %call1 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %4, i8 zeroext 21) #8, !dbg !5326
  store i8 %call1, i8* %b, align 1, !dbg !5327
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5328
  %call2 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %5, i8 zeroext 22) #8, !dbg !5329
  %conv = zext i8 %call2 to i32, !dbg !5329
  %and = and i32 %conv, 15, !dbg !5330
  %conv3 = trunc i32 %and to i8, !dbg !5329
  store i8 %conv3, i8* %c, align 1, !dbg !5331
  %6 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5332
  %call4 = call i32 @tda10023_writebit(%struct.tda10023_state* %6, i8 zeroext 16, i8 zeroext -64, i8 zeroext 0) #8, !dbg !5333
  %7 = load i8, i8* %a, align 1, !dbg !5334
  %conv5 = zext i8 %7 to i32, !dbg !5334
  %8 = load i8, i8* %b, align 1, !dbg !5335
  %conv6 = zext i8 %8 to i32, !dbg !5335
  %shl = shl i32 %conv6, 8, !dbg !5336
  %or = or i32 %conv5, %shl, !dbg !5337
  %9 = load i8, i8* %c, align 1, !dbg !5338
  %conv7 = zext i8 %9 to i32, !dbg !5338
  %shl8 = shl i32 %conv7, 16, !dbg !5339
  %or9 = or i32 %or, %shl8, !dbg !5340
  %10 = load i32*, i32** %ber.addr, align 8, !dbg !5341
  store i32 %or9, i32* %10, align 4, !dbg !5342
  ret i32 0, !dbg !5343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5344 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  %ifgain = alloca i8, align 1
  %gain = alloca i16, align 2
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5351
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5352
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5352
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5351
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5350
  call void @llvm.dbg.declare(metadata i8* %ifgain, metadata !5353, metadata !DIExpression()), !dbg !5354
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5355
  %call = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %3, i8 zeroext 47) #8, !dbg !5356
  store i8 %call, i8* %ifgain, align 1, !dbg !5354
  call void @llvm.dbg.declare(metadata i16* %gain, metadata !5357, metadata !DIExpression()), !dbg !5358
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5359
  %call1 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %4, i8 zeroext 23) #8, !dbg !5360
  %conv = zext i8 %call1 to i32, !dbg !5360
  %sub = sub i32 255, %conv, !dbg !5361
  %5 = load i8, i8* %ifgain, align 1, !dbg !5362
  %conv2 = zext i8 %5 to i32, !dbg !5362
  %sub3 = sub i32 255, %conv2, !dbg !5363
  %div = sdiv i32 %sub3, 16, !dbg !5364
  %add = add i32 %sub, %div, !dbg !5365
  %conv4 = trunc i32 %add to i16, !dbg !5366
  store i16 %conv4, i16* %gain, align 2, !dbg !5358
  %6 = load i16, i16* %gain, align 2, !dbg !5367
  %conv5 = zext i16 %6 to i32, !dbg !5367
  %cmp = icmp sgt i32 %conv5, 144, !dbg !5369
  br i1 %cmp, label %if.then, label %if.end, !dbg !5370

if.then:                                          ; preds = %entry
  %7 = load i16, i16* %gain, align 2, !dbg !5371
  %conv7 = zext i16 %7 to i32, !dbg !5371
  %8 = load i16, i16* %gain, align 2, !dbg !5372
  %conv8 = zext i16 %8 to i32, !dbg !5372
  %sub9 = sub i32 %conv8, 144, !dbg !5373
  %mul = mul i32 2, %sub9, !dbg !5374
  %add10 = add i32 %conv7, %mul, !dbg !5375
  %conv11 = trunc i32 %add10 to i16, !dbg !5371
  store i16 %conv11, i16* %gain, align 2, !dbg !5376
  br label %if.end, !dbg !5377

if.end:                                           ; preds = %if.then, %entry
  %9 = load i16, i16* %gain, align 2, !dbg !5378
  %conv12 = zext i16 %9 to i32, !dbg !5378
  %cmp13 = icmp sgt i32 %conv12, 255, !dbg !5380
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5381

if.then15:                                        ; preds = %if.end
  store i16 255, i16* %gain, align 2, !dbg !5382
  br label %if.end16, !dbg !5383

if.end16:                                         ; preds = %if.then15, %if.end
  %10 = load i16, i16* %gain, align 2, !dbg !5384
  %conv17 = zext i16 %10 to i32, !dbg !5384
  %shl = shl i32 %conv17, 8, !dbg !5385
  %11 = load i16, i16* %gain, align 2, !dbg !5386
  %conv18 = zext i16 %11 to i32, !dbg !5386
  %or = or i32 %shl, %conv18, !dbg !5387
  %conv19 = trunc i32 %or to i16, !dbg !5388
  %12 = load i16*, i16** %strength.addr, align 8, !dbg !5389
  store i16 %conv19, i16* %12, align 2, !dbg !5390
  ret i32 0, !dbg !5391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5392 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  %quality = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5399
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5400
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5400
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5399
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5398
  call void @llvm.dbg.declare(metadata i8* %quality, metadata !5401, metadata !DIExpression()), !dbg !5402
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5403
  %call = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %3, i8 zeroext 24) #8, !dbg !5404
  %conv = zext i8 %call to i32, !dbg !5404
  %neg = xor i32 %conv, -1, !dbg !5405
  %conv1 = trunc i32 %neg to i8, !dbg !5405
  store i8 %conv1, i8* %quality, align 1, !dbg !5402
  %4 = load i8, i8* %quality, align 1, !dbg !5406
  %conv2 = zext i8 %4 to i32, !dbg !5406
  %shl = shl i32 %conv2, 8, !dbg !5407
  %5 = load i8, i8* %quality, align 1, !dbg !5408
  %conv3 = zext i8 %5 to i32, !dbg !5408
  %or = or i32 %shl, %conv3, !dbg !5409
  %conv4 = trunc i32 %or to i16, !dbg !5410
  %6 = load i16*, i16** %snr.addr, align 8, !dbg !5411
  store i16 %conv4, i16* %6, align 2, !dbg !5412
  ret i32 0, !dbg !5413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5414 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.tda10023_state*, align 8
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  %c = alloca i8, align 1
  %d = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5419, metadata !DIExpression()), !dbg !5420
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5421
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5422
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5422
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5421
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5420
  call void @llvm.dbg.declare(metadata i8* %a, metadata !5423, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.declare(metadata i8* %b, metadata !5425, metadata !DIExpression()), !dbg !5426
  call void @llvm.dbg.declare(metadata i8* %c, metadata !5427, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.declare(metadata i8* %d, metadata !5429, metadata !DIExpression()), !dbg !5430
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5431
  %call = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %3, i8 zeroext 116) #8, !dbg !5432
  store i8 %call, i8* %a, align 1, !dbg !5433
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5434
  %call1 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %4, i8 zeroext 117) #8, !dbg !5435
  store i8 %call1, i8* %b, align 1, !dbg !5436
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5437
  %call2 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %5, i8 zeroext 118) #8, !dbg !5438
  store i8 %call2, i8* %c, align 1, !dbg !5439
  %6 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5440
  %call3 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %6, i8 zeroext 119) #8, !dbg !5441
  store i8 %call3, i8* %d, align 1, !dbg !5442
  %7 = load i8, i8* %a, align 1, !dbg !5443
  %conv = zext i8 %7 to i32, !dbg !5443
  %8 = load i8, i8* %b, align 1, !dbg !5444
  %conv4 = zext i8 %8 to i32, !dbg !5444
  %shl = shl i32 %conv4, 8, !dbg !5445
  %or = or i32 %conv, %shl, !dbg !5446
  %9 = load i8, i8* %c, align 1, !dbg !5447
  %conv5 = zext i8 %9 to i32, !dbg !5447
  %shl6 = shl i32 %conv5, 16, !dbg !5448
  %or7 = or i32 %or, %shl6, !dbg !5449
  %10 = load i8, i8* %d, align 1, !dbg !5450
  %conv8 = zext i8 %10 to i32, !dbg !5450
  %shl9 = shl i32 %conv8, 24, !dbg !5451
  %or10 = or i32 %or7, %shl9, !dbg !5452
  %11 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5453
  store i32 %or10, i32* %11, align 4, !dbg !5454
  %12 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5455
  %call11 = call i32 @tda10023_writebit(%struct.tda10023_state* %12, i8 zeroext 16, i8 zeroext 32, i8 zeroext 0) #8, !dbg !5456
  %13 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5457
  %call12 = call i32 @tda10023_writebit(%struct.tda10023_state* %13, i8 zeroext 16, i8 zeroext 32, i8 zeroext 32) #8, !dbg !5458
  %14 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5459
  %call13 = call i32 @tda10023_writebit(%struct.tda10023_state* %14, i8 zeroext 19, i8 zeroext 1, i8 zeroext 0) #8, !dbg !5460
  ret i32 0, !dbg !5461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !5462 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.tda10023_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5463, metadata !DIExpression()), !dbg !5464
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state, metadata !5467, metadata !DIExpression()), !dbg !5468
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5469
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5470
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5470
  %2 = bitcast i8* %1 to %struct.tda10023_state*, !dbg !5469
  store %struct.tda10023_state* %2, %struct.tda10023_state** %state, align 8, !dbg !5468
  %3 = load i32, i32* %enable.addr, align 4, !dbg !5471
  %tobool = icmp ne i32 %3, 0, !dbg !5471
  br i1 %tobool, label %if.then, label %if.else, !dbg !5473

if.then:                                          ; preds = %entry
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5474
  %call = call i32 @lock_tuner(%struct.tda10023_state* %4) #8, !dbg !5476
  br label %if.end, !dbg !5477

if.else:                                          ; preds = %entry
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state, align 8, !dbg !5478
  %call1 = call i32 @unlock_tuner(%struct.tda10023_state* %5) #8, !dbg !5480
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !5481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda10023_writetab(%struct.tda10023_state* %state, i8* %tab) #0 !dbg !5482 {
entry:
  %state.addr = alloca %struct.tda10023_state*, align 8
  %tab.addr = alloca i8*, align 8
  %r = alloca i8, align 1
  %m = alloca i8, align 1
  %v = alloca i8, align 1
  store %struct.tda10023_state* %state, %struct.tda10023_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  store i8* %tab, i8** %tab.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %tab.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  call void @llvm.dbg.declare(metadata i8* %r, metadata !5489, metadata !DIExpression()), !dbg !5490
  call void @llvm.dbg.declare(metadata i8* %m, metadata !5491, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.declare(metadata i8* %v, metadata !5493, metadata !DIExpression()), !dbg !5494
  br label %while.body, !dbg !5495

while.body:                                       ; preds = %entry, %if.end10
  %0 = load i8*, i8** %tab.addr, align 8, !dbg !5496
  %incdec.ptr = getelementptr i8, i8* %0, i32 1, !dbg !5496
  store i8* %incdec.ptr, i8** %tab.addr, align 8, !dbg !5496
  %1 = load i8, i8* %0, align 1, !dbg !5498
  store i8 %1, i8* %r, align 1, !dbg !5499
  %2 = load i8*, i8** %tab.addr, align 8, !dbg !5500
  %incdec.ptr1 = getelementptr i8, i8* %2, i32 1, !dbg !5500
  store i8* %incdec.ptr1, i8** %tab.addr, align 8, !dbg !5500
  %3 = load i8, i8* %2, align 1, !dbg !5501
  store i8 %3, i8* %m, align 1, !dbg !5502
  %4 = load i8*, i8** %tab.addr, align 8, !dbg !5503
  %incdec.ptr2 = getelementptr i8, i8* %4, i32 1, !dbg !5503
  store i8* %incdec.ptr2, i8** %tab.addr, align 8, !dbg !5503
  %5 = load i8, i8* %4, align 1, !dbg !5504
  store i8 %5, i8* %v, align 1, !dbg !5505
  %6 = load i8, i8* %r, align 1, !dbg !5506
  %conv = zext i8 %6 to i32, !dbg !5506
  %cmp = icmp eq i32 %conv, 255, !dbg !5508
  br i1 %cmp, label %if.then, label %if.else9, !dbg !5509

if.then:                                          ; preds = %while.body
  %7 = load i8, i8* %m, align 1, !dbg !5510
  %conv4 = zext i8 %7 to i32, !dbg !5510
  %cmp5 = icmp eq i32 %conv4, 255, !dbg !5513
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !5514

if.then7:                                         ; preds = %if.then
  br label %while.end, !dbg !5515

if.else:                                          ; preds = %if.then
  %8 = load i8, i8* %m, align 1, !dbg !5516
  %conv8 = zext i8 %8 to i32, !dbg !5516
  call void @msleep(i32 %conv8) #8, !dbg !5517
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end10, !dbg !5518

if.else9:                                         ; preds = %while.body
  %9 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5519
  %10 = load i8, i8* %r, align 1, !dbg !5520
  %11 = load i8, i8* %m, align 1, !dbg !5521
  %12 = load i8, i8* %v, align 1, !dbg !5522
  %call = call i32 @tda10023_writebit(%struct.tda10023_state* %9, i8 zeroext %10, i8 zeroext %11, i8 zeroext %12) #8, !dbg !5523
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.end
  br label %while.body, !dbg !5495, !llvm.loop !5524

while.end:                                        ; preds = %if.then7
  ret void, !dbg !5526
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_writebit(%struct.tda10023_state* %state, i8 zeroext %reg, i8 zeroext %mask, i8 zeroext %data) #0 !dbg !5527 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda10023_state*, align 8
  %reg.addr = alloca i8, align 1
  %mask.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %val = alloca i8, align 1
  store %struct.tda10023_state* %state, %struct.tda10023_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  %0 = load i8, i8* %mask.addr, align 1, !dbg !5538
  %conv = zext i8 %0 to i32, !dbg !5538
  %cmp = icmp eq i32 %conv, 255, !dbg !5540
  br i1 %cmp, label %if.then, label %if.else, !dbg !5541

if.then:                                          ; preds = %entry
  %1 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5542
  %2 = load i8, i8* %reg.addr, align 1, !dbg !5543
  %3 = load i8, i8* %data.addr, align 1, !dbg !5544
  %call = call i32 @tda10023_writereg(%struct.tda10023_state* %1, i8 zeroext %2, i8 zeroext %3) #8, !dbg !5545
  store i32 %call, i32* %retval, align 4, !dbg !5546
  br label %return, !dbg !5546

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5547, metadata !DIExpression()), !dbg !5549
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5550
  %5 = load i8, i8* %reg.addr, align 1, !dbg !5551
  %call2 = call zeroext i8 @tda10023_readreg(%struct.tda10023_state* %4, i8 zeroext %5) #8, !dbg !5552
  store i8 %call2, i8* %val, align 1, !dbg !5553
  %6 = load i8, i8* %mask.addr, align 1, !dbg !5554
  %conv3 = zext i8 %6 to i32, !dbg !5554
  %neg = xor i32 %conv3, -1, !dbg !5555
  %7 = load i8, i8* %val, align 1, !dbg !5556
  %conv4 = zext i8 %7 to i32, !dbg !5556
  %and = and i32 %conv4, %neg, !dbg !5556
  %conv5 = trunc i32 %and to i8, !dbg !5556
  store i8 %conv5, i8* %val, align 1, !dbg !5556
  %8 = load i8, i8* %data.addr, align 1, !dbg !5557
  %conv6 = zext i8 %8 to i32, !dbg !5557
  %9 = load i8, i8* %mask.addr, align 1, !dbg !5558
  %conv7 = zext i8 %9 to i32, !dbg !5558
  %and8 = and i32 %conv6, %conv7, !dbg !5559
  %10 = load i8, i8* %val, align 1, !dbg !5560
  %conv9 = zext i8 %10 to i32, !dbg !5560
  %or = or i32 %conv9, %and8, !dbg !5560
  %conv10 = trunc i32 %or to i8, !dbg !5560
  store i8 %conv10, i8* %val, align 1, !dbg !5560
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5561
  %12 = load i8, i8* %reg.addr, align 1, !dbg !5562
  %13 = load i8, i8* %val, align 1, !dbg !5563
  %call11 = call i32 @tda10023_writereg(%struct.tda10023_state* %11, i8 zeroext %12, i8 zeroext %13) #8, !dbg !5564
  store i32 %call11, i32* %retval, align 4, !dbg !5565
  br label %return, !dbg !5565

return:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5566
  ret i32 %14, !dbg !5566
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_set_symbolrate(%struct.tda10023_state* %state, i32 %sr) #0 !dbg !5567 {
entry:
  %state.addr = alloca %struct.tda10023_state*, align 8
  %sr.addr = alloca i32, align 4
  %BDR = alloca i32, align 4
  %BDRI = alloca i32, align 4
  %SFIL = alloca i16, align 2
  %NDEC = alloca i16, align 2
  %sysclk_x_10 = alloca i32, align 4
  %BDRX = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.tda10023_state* %state, %struct.tda10023_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state.addr, metadata !5570, metadata !DIExpression()), !dbg !5571
  store i32 %sr, i32* %sr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sr.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  call void @llvm.dbg.declare(metadata i32* %BDR, metadata !5574, metadata !DIExpression()), !dbg !5575
  call void @llvm.dbg.declare(metadata i32* %BDRI, metadata !5576, metadata !DIExpression()), !dbg !5577
  call void @llvm.dbg.declare(metadata i16* %SFIL, metadata !5578, metadata !DIExpression()), !dbg !5579
  store i16 0, i16* %SFIL, align 2, !dbg !5579
  call void @llvm.dbg.declare(metadata i16* %NDEC, metadata !5580, metadata !DIExpression()), !dbg !5581
  store i16 0, i16* %NDEC, align 2, !dbg !5581
  call void @llvm.dbg.declare(metadata i32* %sysclk_x_10, metadata !5582, metadata !DIExpression()), !dbg !5583
  %0 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5584
  %sysclk = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %0, i32 0, i32 9, !dbg !5585
  %1 = load i32, i32* %sysclk, align 4, !dbg !5585
  %mul = mul i32 %1, 10, !dbg !5586
  store i32 %mul, i32* %sysclk_x_10, align 4, !dbg !5583
  %2 = load i32, i32* %sr.addr, align 4, !dbg !5587
  %3 = load i32, i32* %sysclk_x_10, align 4, !dbg !5589
  %div = udiv i32 %3, 984, !dbg !5590
  %cmp = icmp ult i32 %2, %div, !dbg !5591
  br i1 %cmp, label %if.then, label %if.else, !dbg !5592

if.then:                                          ; preds = %entry
  store i16 3, i16* %NDEC, align 2, !dbg !5593
  store i16 1, i16* %SFIL, align 2, !dbg !5595
  br label %if.end29, !dbg !5596

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %sr.addr, align 4, !dbg !5597
  %5 = load i32, i32* %sysclk_x_10, align 4, !dbg !5599
  %div1 = udiv i32 %5, 640, !dbg !5600
  %cmp2 = icmp ult i32 %4, %div1, !dbg !5601
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !5602

if.then3:                                         ; preds = %if.else
  store i16 3, i16* %NDEC, align 2, !dbg !5603
  store i16 0, i16* %SFIL, align 2, !dbg !5605
  br label %if.end28, !dbg !5606

if.else4:                                         ; preds = %if.else
  %6 = load i32, i32* %sr.addr, align 4, !dbg !5607
  %7 = load i32, i32* %sysclk_x_10, align 4, !dbg !5609
  %div5 = udiv i32 %7, 492, !dbg !5610
  %cmp6 = icmp ult i32 %6, %div5, !dbg !5611
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !5612

if.then7:                                         ; preds = %if.else4
  store i16 2, i16* %NDEC, align 2, !dbg !5613
  store i16 1, i16* %SFIL, align 2, !dbg !5615
  br label %if.end27, !dbg !5616

if.else8:                                         ; preds = %if.else4
  %8 = load i32, i32* %sr.addr, align 4, !dbg !5617
  %9 = load i32, i32* %sysclk_x_10, align 4, !dbg !5619
  %div9 = udiv i32 %9, 320, !dbg !5620
  %cmp10 = icmp ult i32 %8, %div9, !dbg !5621
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !5622

if.then11:                                        ; preds = %if.else8
  store i16 2, i16* %NDEC, align 2, !dbg !5623
  store i16 0, i16* %SFIL, align 2, !dbg !5625
  br label %if.end26, !dbg !5626

if.else12:                                        ; preds = %if.else8
  %10 = load i32, i32* %sr.addr, align 4, !dbg !5627
  %11 = load i32, i32* %sysclk_x_10, align 4, !dbg !5629
  %div13 = udiv i32 %11, 246, !dbg !5630
  %cmp14 = icmp ult i32 %10, %div13, !dbg !5631
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !5632

if.then15:                                        ; preds = %if.else12
  store i16 1, i16* %NDEC, align 2, !dbg !5633
  store i16 1, i16* %SFIL, align 2, !dbg !5635
  br label %if.end25, !dbg !5636

if.else16:                                        ; preds = %if.else12
  %12 = load i32, i32* %sr.addr, align 4, !dbg !5637
  %13 = load i32, i32* %sysclk_x_10, align 4, !dbg !5639
  %div17 = udiv i32 %13, 160, !dbg !5640
  %cmp18 = icmp ult i32 %12, %div17, !dbg !5641
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !5642

if.then19:                                        ; preds = %if.else16
  store i16 1, i16* %NDEC, align 2, !dbg !5643
  store i16 0, i16* %SFIL, align 2, !dbg !5645
  br label %if.end24, !dbg !5646

if.else20:                                        ; preds = %if.else16
  %14 = load i32, i32* %sr.addr, align 4, !dbg !5647
  %15 = load i32, i32* %sysclk_x_10, align 4, !dbg !5649
  %div21 = udiv i32 %15, 123, !dbg !5650
  %cmp22 = icmp ult i32 %14, %div21, !dbg !5651
  br i1 %cmp22, label %if.then23, label %if.end, !dbg !5652

if.then23:                                        ; preds = %if.else20
  store i16 0, i16* %NDEC, align 2, !dbg !5653
  store i16 1, i16* %SFIL, align 2, !dbg !5655
  br label %if.end, !dbg !5656

if.end:                                           ; preds = %if.then23, %if.else20
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then15
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then11
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then7
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then3
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  %16 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5657
  %sysclk30 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %16, i32 0, i32 9, !dbg !5658
  %17 = load i32, i32* %sysclk30, align 4, !dbg !5658
  %mul31 = mul i32 %17, 16, !dbg !5659
  store i32 %mul31, i32* %BDRI, align 4, !dbg !5660
  %18 = load i16, i16* %NDEC, align 2, !dbg !5661
  %conv = zext i16 %18 to i32, !dbg !5661
  %19 = load i32, i32* %BDRI, align 4, !dbg !5662
  %shr = ashr i32 %19, %conv, !dbg !5662
  store i32 %shr, i32* %BDRI, align 4, !dbg !5662
  %20 = load i32, i32* %sr.addr, align 4, !dbg !5663
  %div32 = udiv i32 %20, 2, !dbg !5664
  %21 = load i32, i32* %BDRI, align 4, !dbg !5665
  %add = add i32 %21, %div32, !dbg !5665
  store i32 %add, i32* %BDRI, align 4, !dbg !5665
  %22 = load i32, i32* %sr.addr, align 4, !dbg !5666
  %23 = load i32, i32* %BDRI, align 4, !dbg !5667
  %div33 = udiv i32 %23, %22, !dbg !5667
  store i32 %div33, i32* %BDRI, align 4, !dbg !5667
  %24 = load i32, i32* %BDRI, align 4, !dbg !5668
  %cmp34 = icmp sgt i32 %24, 255, !dbg !5670
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5671

if.then36:                                        ; preds = %if.end29
  store i32 255, i32* %BDRI, align 4, !dbg !5672
  br label %if.end37, !dbg !5673

if.end37:                                         ; preds = %if.then36, %if.end29
  call void @llvm.dbg.declare(metadata i64* %BDRX, metadata !5674, metadata !DIExpression()), !dbg !5676
  %25 = load i16, i16* %NDEC, align 2, !dbg !5677
  %conv38 = zext i16 %25 to i32, !dbg !5677
  %add39 = add i32 24, %conv38, !dbg !5678
  %shl = shl i32 1, %add39, !dbg !5679
  %conv40 = sext i32 %shl to i64, !dbg !5680
  store i64 %conv40, i64* %BDRX, align 8, !dbg !5681
  %26 = load i32, i32* %sr.addr, align 4, !dbg !5682
  %conv41 = zext i32 %26 to i64, !dbg !5682
  %27 = load i64, i64* %BDRX, align 8, !dbg !5683
  %mul42 = mul i64 %27, %conv41, !dbg !5683
  store i64 %mul42, i64* %BDRX, align 8, !dbg !5683
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5684, metadata !DIExpression()), !dbg !5686
  %28 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5686
  %sysclk43 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %28, i32 0, i32 9, !dbg !5686
  %29 = load i32, i32* %sysclk43, align 4, !dbg !5686
  store i32 %29, i32* %__base, align 4, !dbg !5686
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5687, metadata !DIExpression()), !dbg !5686
  %30 = load i64, i64* %BDRX, align 8, !dbg !5686
  %31 = load i32, i32* %__base, align 4, !dbg !5686
  %conv44 = zext i32 %31 to i64, !dbg !5686
  %rem = urem i64 %30, %conv44, !dbg !5686
  %conv45 = trunc i64 %rem to i32, !dbg !5686
  store i32 %conv45, i32* %__rem, align 4, !dbg !5686
  %32 = load i64, i64* %BDRX, align 8, !dbg !5686
  %33 = load i32, i32* %__base, align 4, !dbg !5686
  %conv46 = zext i32 %33 to i64, !dbg !5686
  %div47 = udiv i64 %32, %conv46, !dbg !5686
  store i64 %div47, i64* %BDRX, align 8, !dbg !5686
  %34 = load i32, i32* %__rem, align 4, !dbg !5686
  store i32 %34, i32* %tmp, align 4, !dbg !5686
  %35 = load i32, i32* %tmp, align 4, !dbg !5686
  %36 = load i64, i64* %BDRX, align 8, !dbg !5688
  %conv48 = trunc i64 %36 to i32, !dbg !5689
  store i32 %conv48, i32* %BDR, align 4, !dbg !5690
  %37 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5691
  %38 = load i16, i16* %NDEC, align 2, !dbg !5692
  %conv49 = zext i16 %38 to i32, !dbg !5692
  %shl50 = shl i32 %conv49, 6, !dbg !5693
  %conv51 = trunc i32 %shl50 to i8, !dbg !5692
  %call = call i32 @tda10023_writebit(%struct.tda10023_state* %37, i8 zeroext 3, i8 zeroext -64, i8 zeroext %conv51) #8, !dbg !5694
  %39 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5695
  %40 = load i32, i32* %BDR, align 4, !dbg !5696
  %and = and i32 %40, 255, !dbg !5697
  %conv52 = trunc i32 %and to i8, !dbg !5696
  %call53 = call i32 @tda10023_writereg(%struct.tda10023_state* %39, i8 zeroext 10, i8 zeroext %conv52) #8, !dbg !5698
  %41 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5699
  %42 = load i32, i32* %BDR, align 4, !dbg !5700
  %shr54 = ashr i32 %42, 8, !dbg !5701
  %and55 = and i32 %shr54, 255, !dbg !5702
  %conv56 = trunc i32 %and55 to i8, !dbg !5703
  %call57 = call i32 @tda10023_writereg(%struct.tda10023_state* %41, i8 zeroext 11, i8 zeroext %conv56) #8, !dbg !5704
  %43 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5705
  %44 = load i32, i32* %BDR, align 4, !dbg !5706
  %shr58 = ashr i32 %44, 16, !dbg !5707
  %and59 = and i32 %shr58, 31, !dbg !5708
  %conv60 = trunc i32 %and59 to i8, !dbg !5709
  %call61 = call i32 @tda10023_writereg(%struct.tda10023_state* %43, i8 zeroext 12, i8 zeroext %conv60) #8, !dbg !5710
  %45 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5711
  %46 = load i32, i32* %BDRI, align 4, !dbg !5712
  %conv62 = trunc i32 %46 to i8, !dbg !5712
  %call63 = call i32 @tda10023_writereg(%struct.tda10023_state* %45, i8 zeroext 13, i8 zeroext %conv62) #8, !dbg !5713
  %47 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5714
  %48 = load i16, i16* %SFIL, align 2, !dbg !5715
  %conv64 = sext i16 %48 to i32, !dbg !5715
  %shl65 = shl i32 %conv64, 7, !dbg !5716
  %conv66 = trunc i32 %shl65 to i8, !dbg !5717
  %call67 = call i32 @tda10023_writereg(%struct.tda10023_state* %47, i8 zeroext 61, i8 zeroext %conv66) #8, !dbg !5718
  ret i32 0, !dbg !5719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10023_setup_reg0(%struct.tda10023_state* %state, i8 zeroext %reg0) #0 !dbg !5720 {
entry:
  %state.addr = alloca %struct.tda10023_state*, align 8
  %reg0.addr = alloca i8, align 1
  store %struct.tda10023_state* %state, %struct.tda10023_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state.addr, metadata !5723, metadata !DIExpression()), !dbg !5724
  store i8 %reg0, i8* %reg0.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg0.addr, metadata !5725, metadata !DIExpression()), !dbg !5726
  %0 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5727
  %reg01 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %0, i32 0, i32 4, !dbg !5728
  %1 = load i8, i8* %reg01, align 1, !dbg !5728
  %conv = zext i8 %1 to i32, !dbg !5727
  %and = and i32 %conv, 99, !dbg !5729
  %2 = load i8, i8* %reg0.addr, align 1, !dbg !5730
  %conv2 = zext i8 %2 to i32, !dbg !5730
  %or = or i32 %conv2, %and, !dbg !5730
  %conv3 = trunc i32 %or to i8, !dbg !5730
  store i8 %conv3, i8* %reg0.addr, align 1, !dbg !5730
  %3 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5731
  %4 = load i8, i8* %reg0.addr, align 1, !dbg !5732
  %conv4 = zext i8 %4 to i32, !dbg !5732
  %and5 = and i32 %conv4, 254, !dbg !5733
  %conv6 = trunc i32 %and5 to i8, !dbg !5732
  %call = call i32 @tda10023_writereg(%struct.tda10023_state* %3, i8 zeroext 0, i8 zeroext %conv6) #8, !dbg !5734
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5735
  %6 = load i8, i8* %reg0.addr, align 1, !dbg !5736
  %conv7 = zext i8 %6 to i32, !dbg !5736
  %or8 = or i32 %conv7, 1, !dbg !5737
  %conv9 = trunc i32 %or8 to i8, !dbg !5736
  %call10 = call i32 @tda10023_writereg(%struct.tda10023_state* %5, i8 zeroext 0, i8 zeroext %conv9) #8, !dbg !5738
  %7 = load i8, i8* %reg0.addr, align 1, !dbg !5739
  %8 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5740
  %reg011 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %8, i32 0, i32 4, !dbg !5741
  store i8 %7, i8* %reg011, align 1, !dbg !5742
  ret i32 0, !dbg !5743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lock_tuner(%struct.tda10023_state* %state) #0 !dbg !5744 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda10023_state*, align 8
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.tda10023_state* %state, %struct.tda10023_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5749, metadata !DIExpression()), !dbg !5750
  %0 = bitcast [2 x i8]* %buf to i8*, !dbg !5750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.lock_tuner.buf, i32 0, i32 0), i64 2, i1 false), !dbg !5750
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5751, metadata !DIExpression()), !dbg !5752
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5753
  %1 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5754
  %config = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %1, i32 0, i32 1, !dbg !5755
  %2 = load %struct.tda10023_config*, %struct.tda10023_config** %config, align 8, !dbg !5755
  %demod_address = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %2, i32 0, i32 0, !dbg !5756
  %3 = load i8, i8* %demod_address, align 4, !dbg !5756
  %conv = zext i8 %3 to i16, !dbg !5754
  store i16 %conv, i16* %addr, align 8, !dbg !5753
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5753
  store i16 0, i16* %flags, align 2, !dbg !5753
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5753
  store i16 2, i16* %len, align 4, !dbg !5753
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5753
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5757
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !5753
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5758
  %i2c = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %4, i32 0, i32 0, !dbg !5760
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5760
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %5, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5761
  %cmp = icmp ne i32 %call, 1, !dbg !5762
  br i1 %cmp, label %if.then, label %if.end, !dbg !5763

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !5764
  store i32 -121, i32* %retval, align 4, !dbg !5766
  br label %return, !dbg !5766

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5767
  br label %return, !dbg !5767

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5768
  ret i32 %6, !dbg !5768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @unlock_tuner(%struct.tda10023_state* %state) #0 !dbg !5769 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda10023_state*, align 8
  %buf = alloca [2 x i8], align 1
  %msg_post = alloca %struct.i2c_msg, align 8
  store %struct.tda10023_state* %state, %struct.tda10023_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda10023_state** %state.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = bitcast [2 x i8]* %buf to i8*, !dbg !5773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.unlock_tuner.buf, i32 0, i32 0), i64 2, i1 false), !dbg !5773
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg_post, metadata !5774, metadata !DIExpression()), !dbg !5775
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg_post, i32 0, i32 0, !dbg !5776
  %1 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5777
  %config = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %1, i32 0, i32 1, !dbg !5778
  %2 = load %struct.tda10023_config*, %struct.tda10023_config** %config, align 8, !dbg !5778
  %demod_address = getelementptr inbounds %struct.tda10023_config, %struct.tda10023_config* %2, i32 0, i32 0, !dbg !5779
  %3 = load i8, i8* %demod_address, align 4, !dbg !5779
  %conv = zext i8 %3 to i16, !dbg !5777
  store i16 %conv, i16* %addr, align 8, !dbg !5776
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg_post, i32 0, i32 1, !dbg !5776
  store i16 0, i16* %flags, align 2, !dbg !5776
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg_post, i32 0, i32 2, !dbg !5776
  store i16 2, i16* %len, align 4, !dbg !5776
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg_post, i32 0, i32 3, !dbg !5776
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5780
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !5776
  %4 = load %struct.tda10023_state*, %struct.tda10023_state** %state.addr, align 8, !dbg !5781
  %i2c = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %4, i32 0, i32 0, !dbg !5783
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5783
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %5, %struct.i2c_msg* %msg_post, i32 1) #8, !dbg !5784
  %cmp = icmp ne i32 %call, 1, !dbg !5785
  br i1 %cmp, label %if.then, label %if.end, !dbg !5786

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !5787
  store i32 -121, i32* %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5790
  br label %return, !dbg !5790

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5791
  ret i32 %6, !dbg !5791
}

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
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4260, !4261, !4262, !4263}
!llvm.ident = !{!4264}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tda10023_ops", scope: !2, file: !3, line: 562, type: !4259, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !302, globals: !317, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/tda10023.c", directory: "/home/lizy2001/genbc/linux")
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !284, line: 305, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289}
!286 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda10023_output_mode", file: !291, line: 23, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "drivers/media/dvb-frontends/tda1002x.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294, !295, !296}
!293 = !DIEnumerator(name: "TDA10023_OUTPUT_MODE_PARALLEL_A", value: 224, isUnsigned: true)
!294 = !DIEnumerator(name: "TDA10023_OUTPUT_MODE_PARALLEL_B", value: 161, isUnsigned: true)
!295 = !DIEnumerator(name: "TDA10023_OUTPUT_MODE_PARALLEL_C", value: 160, isUnsigned: true)
!296 = !DIEnumerator(name: "TDA10023_OUTPUT_MODE_SERIAL", value: 161, isUnsigned: true)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !298, line: 10, baseType: !7, size: 32, elements: !299)
!298 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301}
!300 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!301 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!302 = !{!303, !305, !306, !310, !314}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !304, line: 148, baseType: !7)
!304 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !307, line: 21, baseType: !308)
!307 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !309, line: 27, baseType: !7)
!309 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !304, line: 107, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !307, line: 23, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !309, line: 31, baseType: !313)
!313 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !307, line: 20, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !309, line: 26, baseType: !316)
!316 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!317 = !{!318, !325, !330, !335, !0, !340, !4257}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description220", scope: !2, file: !3, line: 593, type: !320, isLocal: true, isDefinition: true, align: 8)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 504, elements: !323)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!323 = !{!324}
!324 = !DISubrange(count: 63)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author221", scope: !2, file: !3, line: 594, type: !327, isLocal: true, isDefinition: true, align: 8)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 336, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 42)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file222", scope: !2, file: !3, line: 595, type: !332, isLocal: true, isDefinition: true, align: 8)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 408, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 51)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license223", scope: !2, file: !3, line: 595, type: !337, isLocal: true, isDefinition: true, align: 8)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 168, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 21)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "qam_params", scope: !342, file: !3, line: 298, type: !4247, isLocal: true, isDefinition: true)
!342 = distinct !DISubprogram(name: "tda10023_set_parameters", scope: !3, file: !3, line: 291, type: !343, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!343 = !DISubroutineType(types: !344)
!344 = !{!316, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !347)
!347 = !{!348, !362, !656, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4245, !4246}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !346, file: !51, line: 687, baseType: !349, size: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !350, line: 19, size: 32, elements: !351)
!350 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !349, file: !350, line: 20, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !354, line: 113, baseType: !355)
!354 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !354, line: 111, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !355, file: !354, line: 112, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !304, line: 168, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 166, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !359, file: !304, line: 167, baseType: !316, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !346, file: !51, line: 688, baseType: !363, size: 6016, offset: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !364)
!364 = !{!365, !380, !387, !391, !392, !393, !395, !396, !402, !410, !414, !415, !425, !508, !512, !517, !525, !526, !527, !528, !540, !551, !555, !559, !563, !568, !573, !577, !578, !579, !583, !637}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !363, file: !51, line: 436, baseType: !366, size: 1280)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !367)
!367 = !{!368, !372, !373, !374, !375, !376, !377, !378, !379}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !366, file: !51, line: 339, baseType: !369, size: 1024)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 1024, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !366, file: !51, line: 340, baseType: !306, size: 32, offset: 1024)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !366, file: !51, line: 341, baseType: !306, size: 32, offset: 1056)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !366, file: !51, line: 342, baseType: !306, size: 32, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !366, file: !51, line: 343, baseType: !306, size: 32, offset: 1120)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !366, file: !51, line: 344, baseType: !306, size: 32, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !366, file: !51, line: 345, baseType: !306, size: 32, offset: 1184)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !366, file: !51, line: 346, baseType: !306, size: 32, offset: 1216)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !366, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !363, file: !51, line: 438, baseType: !381, size: 64, offset: 1280)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 64, elements: !385)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !307, line: 17, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !309, line: 21, baseType: !384)
!384 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!385 = !{!386}
!386 = !DISubrange(count: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !363, file: !51, line: 440, baseType: !388, size: 64, offset: 1344)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !345}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !363, file: !51, line: 441, baseType: !388, size: 64, offset: 1408)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !363, file: !51, line: 442, baseType: !388, size: 64, offset: 1472)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !363, file: !51, line: 444, baseType: !394, size: 64, offset: 1536)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !363, file: !51, line: 445, baseType: !394, size: 64, offset: 1600)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !363, file: !51, line: 447, baseType: !397, size: 64, offset: 1664)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!316, !345, !400, !316}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !363, file: !51, line: 450, baseType: !403, size: 64, offset: 1728)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!316, !345, !406, !7, !408, !409}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !304, line: 30, baseType: !407)
!407 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !363, file: !51, line: 457, baseType: !411, size: 64, offset: 1792)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!50, !345}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !363, file: !51, line: 460, baseType: !394, size: 64, offset: 1856)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !363, file: !51, line: 461, baseType: !416, size: 64, offset: 1920)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!316, !345, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !421)
!421 = !{!422, !423, !424}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !420, file: !51, line: 70, baseType: !316, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !420, file: !51, line: 71, baseType: !316, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !420, file: !51, line: 72, baseType: !316, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !363, file: !51, line: 463, baseType: !426, size: 64, offset: 1984)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!316, !345, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !501, !502, !503, !504, !505, !506, !507}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !430, file: !51, line: 587, baseType: !306, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !430, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !430, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !430, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !430, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !430, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !430, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !430, file: !51, line: 595, baseType: !306, size: 32, offset: 224)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !430, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !430, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !430, file: !51, line: 598, baseType: !306, size: 32, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !430, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !430, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !430, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !430, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !430, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !430, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !430, file: !51, line: 610, baseType: !382, size: 8, offset: 544)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !430, file: !51, line: 611, baseType: !382, size: 8, offset: 552)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !430, file: !51, line: 612, baseType: !382, size: 8, offset: 560)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !430, file: !51, line: 613, baseType: !306, size: 32, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !430, file: !51, line: 614, baseType: !306, size: 32, offset: 608)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !430, file: !51, line: 615, baseType: !382, size: 8, offset: 640)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !430, file: !51, line: 621, baseType: !456, size: 384, offset: 672)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 384, elements: !463)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !51, line: 616, size: 128, elements: !458)
!458 = !{!459, !460, !461, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !457, file: !51, line: 617, baseType: !382, size: 8)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !457, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !457, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !457, file: !51, line: 620, baseType: !382, size: 8, offset: 96)
!463 = !{!464}
!464 = !DISubrange(count: 3)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !430, file: !51, line: 624, baseType: !306, size: 32, offset: 1056)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !430, file: !51, line: 627, baseType: !306, size: 32, offset: 1088)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !430, file: !51, line: 630, baseType: !382, size: 8, offset: 1120)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !430, file: !51, line: 631, baseType: !382, size: 8, offset: 1128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !430, file: !51, line: 632, baseType: !382, size: 8, offset: 1136)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !430, file: !51, line: 633, baseType: !382, size: 8, offset: 1144)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !430, file: !51, line: 634, baseType: !382, size: 8, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !430, file: !51, line: 635, baseType: !382, size: 8, offset: 1160)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !430, file: !51, line: 637, baseType: !382, size: 8, offset: 1168)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !430, file: !51, line: 638, baseType: !382, size: 8, offset: 1176)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !430, file: !51, line: 639, baseType: !382, size: 8, offset: 1184)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !430, file: !51, line: 640, baseType: !382, size: 8, offset: 1192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !430, file: !51, line: 641, baseType: !382, size: 8, offset: 1200)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !430, file: !51, line: 642, baseType: !382, size: 8, offset: 1208)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !430, file: !51, line: 643, baseType: !382, size: 8, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !430, file: !51, line: 644, baseType: !382, size: 8, offset: 1224)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !430, file: !51, line: 645, baseType: !382, size: 8, offset: 1232)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !430, file: !51, line: 647, baseType: !306, size: 32, offset: 1248)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !430, file: !51, line: 650, baseType: !484, size: 296, offset: 1280)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !484, file: !6, line: 826, baseType: !383, size: 8)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !484, file: !6, line: 827, baseType: !488, size: 288, offset: 8)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 288, elements: !499)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !489, file: !6, line: 804, baseType: !383, size: 8)
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !6, line: 805, baseType: !493, size: 64, offset: 8)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !6, line: 805, size: 64, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !493, file: !6, line: 806, baseType: !312, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !493, file: !6, line: 807, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !309, line: 30, baseType: !498)
!498 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!499 = !{!500}
!500 = !DISubrange(count: 4)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !430, file: !51, line: 651, baseType: !484, size: 296, offset: 1576)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !430, file: !51, line: 652, baseType: !484, size: 296, offset: 1872)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !430, file: !51, line: 653, baseType: !484, size: 296, offset: 2168)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !430, file: !51, line: 654, baseType: !484, size: 296, offset: 2464)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !430, file: !51, line: 655, baseType: !484, size: 296, offset: 2760)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !430, file: !51, line: 656, baseType: !484, size: 296, offset: 3056)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !430, file: !51, line: 657, baseType: !484, size: 296, offset: 3352)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !363, file: !51, line: 466, baseType: !509, size: 64, offset: 2048)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!316, !345, !409}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !363, file: !51, line: 467, baseType: !513, size: 64, offset: 2112)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!316, !345, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !363, file: !51, line: 468, baseType: !518, size: 64, offset: 2176)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!316, !345, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !307, line: 19, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !309, line: 24, baseType: !524)
!524 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !363, file: !51, line: 469, baseType: !518, size: 64, offset: 2240)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !363, file: !51, line: 470, baseType: !513, size: 64, offset: 2304)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !363, file: !51, line: 472, baseType: !394, size: 64, offset: 2368)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !363, file: !51, line: 473, baseType: !529, size: 64, offset: 2432)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!316, !345, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !534)
!534 = !{!535, !539}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !533, file: !6, line: 174, baseType: !536, size: 48)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 48, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 6)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !533, file: !6, line: 175, baseType: !383, size: 8, offset: 48)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !363, file: !51, line: 474, baseType: !541, size: 64, offset: 2496)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!316, !345, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !546)
!546 = !{!547, !549, !550}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !545, file: !6, line: 196, baseType: !548, size: 32)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 32, elements: !499)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !545, file: !6, line: 197, baseType: !383, size: 8, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !545, file: !6, line: 198, baseType: !316, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !363, file: !51, line: 475, baseType: !552, size: 64, offset: 2560)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!316, !345, !171}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !363, file: !51, line: 477, baseType: !556, size: 64, offset: 2624)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!316, !345, !78}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !363, file: !51, line: 478, baseType: !560, size: 64, offset: 2688)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!316, !345, !73}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !363, file: !51, line: 480, baseType: !564, size: 64, offset: 2752)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!316, !345, !567}
!567 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !363, file: !51, line: 481, baseType: !569, size: 64, offset: 2816)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!316, !345, !572}
!572 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !363, file: !51, line: 482, baseType: !574, size: 64, offset: 2880)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!316, !345, !316}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !363, file: !51, line: 483, baseType: !574, size: 64, offset: 2944)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !363, file: !51, line: 484, baseType: !394, size: 64, offset: 3008)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !363, file: !51, line: 490, baseType: !580, size: 64, offset: 3072)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!175, !345}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !363, file: !51, line: 492, baseType: !584, size: 2304, offset: 3136)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !585)
!585 = !{!586, !596, !597, !598, !599, !600, !601, !602, !613, !617, !618, !619, !620, !621, !622, !627, !632, !636}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !584, file: !51, line: 228, baseType: !587, size: 1216)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !51, line: 89, baseType: !369, size: 1024)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !587, file: !51, line: 91, baseType: !306, size: 32, offset: 1024)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !587, file: !51, line: 92, baseType: !306, size: 32, offset: 1056)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !587, file: !51, line: 93, baseType: !306, size: 32, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !587, file: !51, line: 95, baseType: !306, size: 32, offset: 1120)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !587, file: !51, line: 96, baseType: !306, size: 32, offset: 1152)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !587, file: !51, line: 97, baseType: !306, size: 32, offset: 1184)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !584, file: !51, line: 230, baseType: !388, size: 64, offset: 1216)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !584, file: !51, line: 231, baseType: !394, size: 64, offset: 1280)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !584, file: !51, line: 232, baseType: !394, size: 64, offset: 1344)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !584, file: !51, line: 233, baseType: !394, size: 64, offset: 1408)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !584, file: !51, line: 234, baseType: !394, size: 64, offset: 1472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !584, file: !51, line: 237, baseType: !394, size: 64, offset: 1536)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !584, file: !51, line: 238, baseType: !603, size: 64, offset: 1600)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!316, !345, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !608)
!608 = !{!609, !610, !611, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !607, file: !51, line: 115, baseType: !7, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !607, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !607, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !607, file: !51, line: 118, baseType: !311, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !584, file: !51, line: 240, baseType: !614, size: 64, offset: 1664)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!316, !345, !305}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !584, file: !51, line: 242, baseType: !513, size: 64, offset: 1728)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !584, file: !51, line: 243, baseType: !513, size: 64, offset: 1792)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !584, file: !51, line: 244, baseType: !513, size: 64, offset: 1856)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !584, file: !51, line: 248, baseType: !513, size: 64, offset: 1920)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !584, file: !51, line: 249, baseType: !518, size: 64, offset: 1984)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !584, file: !51, line: 250, baseType: !623, size: 64, offset: 2048)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!316, !345, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !584, file: !51, line: 258, baseType: !628, size: 64, offset: 2112)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!316, !345, !631, !316}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !584, file: !51, line: 267, baseType: !633, size: 64, offset: 2176)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!316, !345, !306}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !584, file: !51, line: 268, baseType: !633, size: 64, offset: 2240)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !363, file: !51, line: 493, baseType: !638, size: 576, offset: 5440)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !639)
!639 = !{!640, !645, !649, !650, !651, !652, !653, !654, !655}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !638, file: !51, line: 304, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !641, file: !51, line: 277, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !638, file: !51, line: 306, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !345, !606}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !638, file: !51, line: 308, baseType: !518, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !638, file: !51, line: 309, baseType: !623, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !638, file: !51, line: 310, baseType: !388, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !638, file: !51, line: 311, baseType: !388, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !638, file: !51, line: 312, baseType: !388, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !638, file: !51, line: 313, baseType: !574, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !638, file: !51, line: 316, baseType: !614, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !346, file: !51, line: 689, baseType: !657, size: 64, offset: 6080)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !659)
!659 = !{!660, !661, !667, !668, !670, !672, !673, !4213, !4214, !4215, !4234}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !658, file: !272, line: 102, baseType: !316, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !658, file: !272, line: 103, baseType: !662, size: 128, offset: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !304, line: 178, size: 128, elements: !663)
!663 = !{!664, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !304, line: 179, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !662, file: !304, line: 179, baseType: !665, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !658, file: !272, line: 104, baseType: !662, size: 128, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !272, line: 105, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !658, file: !272, line: 106, baseType: !671, size: 48, offset: 384)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 48, elements: !537)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !658, file: !272, line: 107, baseType: !305, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !658, file: !272, line: 109, baseType: !674, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !676)
!676 = !{!677, !3670, !3671, !3674, !3675, !3726, !3814, !3815, !3816, !3817, !3818, !3827, !3932, !3945, !4140, !4141, !4145, !4147, !4148, !4149, !4153, !4159, !4160, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4201, !4202, !4203, !4206, !4209, !4210, !4211, !4212}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !675, file: !237, line: 462, baseType: !678, size: 512)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !679, line: 64, size: 512, elements: !680)
!679 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!680 = !{!681, !682, !683, !685, !742, !3525, !3664, !3665, !3666, !3667, !3668, !3669}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !678, file: !679, line: 65, baseType: !669, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !678, file: !679, line: 66, baseType: !662, size: 128, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !678, file: !679, line: 67, baseType: !684, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !678, file: !679, line: 68, baseType: !686, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !679, line: 192, size: 704, elements: !688)
!688 = !{!689, !690, !706, !707}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !687, file: !679, line: 193, baseType: !662, size: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !687, file: !679, line: 194, baseType: !691, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !692, line: 83, baseType: !693)
!692 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !692, line: 71, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !692, line: 72, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !692, line: 72, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !696, file: !692, line: 73, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !692, line: 20, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !699, file: !692, line: 21, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !703, line: 25, baseType: !704)
!703 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 25, elements: !705)
!705 = !{}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !687, file: !679, line: 195, baseType: !678, size: 512, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !687, file: !679, line: 196, baseType: !708, size: 64, offset: 640)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !679, line: 156, size: 192, elements: !711)
!711 = !{!712, !717, !722}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !710, file: !679, line: 157, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!316, !686, !684}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !710, file: !679, line: 158, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!669, !686, !684}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !710, file: !679, line: 159, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!316, !686, !684, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !679, line: 148, size: 20736, elements: !729)
!729 = !{!730, !732, !736, !737, !741}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !728, file: !679, line: 149, baseType: !731, size: 192)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 192, elements: !463)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !728, file: !679, line: 150, baseType: !733, size: 4096, offset: 192)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 4096, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !728, file: !679, line: 151, baseType: !316, size: 32, offset: 4288)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !728, file: !679, line: 152, baseType: !738, size: 16384, offset: 4320)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 16384, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 2048)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !728, file: !679, line: 153, baseType: !316, size: 32, offset: 20704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !678, file: !679, line: 69, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !679, line: 138, size: 448, elements: !745)
!745 = !{!746, !750, !777, !779, !3487, !3515, !3519}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !744, file: !679, line: 139, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !684}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !744, file: !679, line: 140, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !754, line: 230, size: 128, elements: !755)
!754 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!755 = !{!756, !770}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !753, file: !754, line: 231, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!760, !684, !764, !644}
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !304, line: 60, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !762, line: 73, baseType: !763)
!762 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !762, line: 15, baseType: !567)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !754, line: 30, size: 128, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !765, file: !754, line: 31, baseType: !669, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !765, file: !754, line: 32, baseType: !769, size: 16, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !304, line: 19, baseType: !524)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !753, file: !754, line: 232, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!760, !684, !764, !669, !774}
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !304, line: 55, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !762, line: 72, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !762, line: 16, baseType: !572)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !744, file: !679, line: 141, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !744, file: !679, line: 142, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !754, line: 84, size: 320, elements: !784)
!784 = !{!785, !786, !790, !3484, !3485}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !783, file: !754, line: 85, baseType: !669, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !783, file: !754, line: 86, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!769, !684, !764, !316}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !783, file: !754, line: 88, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!769, !684, !794, !316}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !754, line: 168, size: 448, elements: !796)
!796 = !{!797, !798, !799, !800, !3479, !3480}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !795, file: !754, line: 169, baseType: !765, size: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !795, file: !754, line: 170, baseType: !774, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !795, file: !754, line: 171, baseType: !305, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !795, file: !754, line: 172, baseType: !801, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!760, !804, !684, !794, !644, !973, !774}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !806)
!806 = !{!807, !825, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3462, !3463, !3472, !3473, !3474, !3475, !3476, !3477, !3478}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !805, file: !208, line: 920, baseType: !808, size: 128)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !208, line: 917, size: 128, elements: !809)
!809 = !{!810, !816}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !808, file: !208, line: 918, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !812, line: 58, size: 64, elements: !813)
!812 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !811, file: !812, line: 59, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !808, file: !208, line: 919, baseType: !817, size: 128, align: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !304, line: 216, size: 128, align: 64, elements: !818)
!818 = !{!819, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !304, line: 217, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !817, file: !304, line: 218, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !820}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !805, file: !208, line: 921, baseType: !826, size: 128, offset: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !827, line: 8, size: 128, elements: !828)
!827 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!828 = !{!829, !833}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !826, file: !827, line: 9, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !832, line: 18, flags: DIFlagFwdDecl)
!832 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !826, file: !827, line: 10, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !832, line: 89, size: 1536, elements: !836)
!836 = !{!837, !838, !848, !856, !857, !872, !3413, !3415, !3427, !3428, !3429, !3430, !3431, !3436, !3437, !3438}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !835, file: !832, line: 91, baseType: !7, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !835, file: !832, line: 92, baseType: !839, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !840, line: 277, baseType: !841)
!840 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !840, line: 277, size: 32, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !841, file: !840, line: 277, baseType: !844, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !840, line: 70, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !840, line: 65, size: 32, elements: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !845, file: !840, line: 66, baseType: !7, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !835, file: !832, line: 93, baseType: !849, size: 128, offset: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !850, line: 38, size: 128, elements: !851)
!850 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852, !854}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !850, line: 39, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !849, file: !850, line: 39, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !835, file: !832, line: 94, baseType: !834, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !835, file: !832, line: 95, baseType: !858, size: 128, offset: 256)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !832, line: 47, size: 128, elements: !859)
!859 = !{!860, !869}
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !832, line: 48, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !832, line: 48, size: 64, elements: !862)
!862 = !{!863, !868}
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !832, line: 49, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !832, line: 49, size: 64, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !864, file: !832, line: 50, baseType: !306, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !864, file: !832, line: 50, baseType: !306, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !861, file: !832, line: 52, baseType: !311, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !832, line: 54, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !835, file: !832, line: 96, baseType: !873, size: 64, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !875)
!875 = !{!876, !877, !878, !886, !893, !894, !1038, !3107, !3108, !3109, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3381, !3389, !3390, !3391, !3409, !3410, !3411, !3412}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !874, file: !208, line: 611, baseType: !769, size: 16)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !874, file: !208, line: 612, baseType: !524, size: 16, offset: 16)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !874, file: !208, line: 613, baseType: !879, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !880, line: 23, baseType: !881)
!880 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !880, line: 21, size: 32, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !881, file: !880, line: 22, baseType: !884, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !304, line: 32, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !762, line: 49, baseType: !7)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !874, file: !208, line: 614, baseType: !887, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !880, line: 28, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !880, line: 26, size: 32, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !888, file: !880, line: 27, baseType: !891, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !304, line: 33, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !762, line: 50, baseType: !7)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !874, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !874, file: !208, line: 622, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !898)
!898 = !{!899, !903, !916, !920, !926, !930, !934, !938, !942, !946, !950, !951, !957, !961, !985, !1014, !1018, !1024, !1029, !1033, !1034}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !897, file: !208, line: 1865, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!834, !873, !834, !7}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !897, file: !208, line: 1866, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!669, !834, !873, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !909, line: 10, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!910 = !{!911, !915}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !908, file: !909, line: 11, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !305}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !908, file: !909, line: 12, baseType: !305, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !897, file: !208, line: 1867, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!316, !873, !316}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !897, file: !208, line: 1868, baseType: !921, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!924, !873, !316}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !897, file: !208, line: 1870, baseType: !927, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!316, !834, !644, !316}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !897, file: !208, line: 1872, baseType: !931, size: 64, offset: 320)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!316, !873, !834, !769, !406}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !897, file: !208, line: 1873, baseType: !935, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!316, !834, !873, !834}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !897, file: !208, line: 1874, baseType: !939, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!316, !873, !834}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !897, file: !208, line: 1875, baseType: !943, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!316, !873, !834, !669}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !897, file: !208, line: 1876, baseType: !947, size: 64, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!316, !873, !834, !769}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !897, file: !208, line: 1877, baseType: !939, size: 64, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !897, file: !208, line: 1878, baseType: !952, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!316, !873, !834, !769, !955}
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !304, line: 16, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !304, line: 13, baseType: !306)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !897, file: !208, line: 1879, baseType: !958, size: 64, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!316, !873, !834, !873, !834, !7}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !897, file: !208, line: 1881, baseType: !962, size: 64, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!316, !834, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !975, !982, !983, !984}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !966, file: !208, line: 220, baseType: !7, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !966, file: !208, line: 221, baseType: !769, size: 16, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !966, file: !208, line: 222, baseType: !879, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !966, file: !208, line: 223, baseType: !887, size: 32, offset: 96)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !966, file: !208, line: 224, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !304, line: 46, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !762, line: 88, baseType: !498)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !966, file: !208, line: 225, baseType: !976, size: 128, offset: 192)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !977, line: 13, size: 128, elements: !978)
!977 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!978 = !{!979, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !976, file: !977, line: 14, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !977, line: 8, baseType: !497)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !976, file: !977, line: 15, baseType: !567, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !966, file: !208, line: 226, baseType: !976, size: 128, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !966, file: !208, line: 227, baseType: !976, size: 128, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !966, file: !208, line: 234, baseType: !804, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !897, file: !208, line: 1882, baseType: !986, size: 64, offset: 896)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!316, !989, !991, !306, !7}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !993, line: 22, size: 1152, elements: !994)
!993 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!994 = !{!995, !996, !997, !998, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !992, file: !993, line: 23, baseType: !306, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !992, file: !993, line: 24, baseType: !769, size: 16, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !992, file: !993, line: 25, baseType: !7, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !992, file: !993, line: 26, baseType: !999, size: 32, offset: 96)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !304, line: 104, baseType: !306)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !992, file: !993, line: 27, baseType: !311, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !992, file: !993, line: 28, baseType: !311, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !992, file: !993, line: 37, baseType: !311, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !992, file: !993, line: 38, baseType: !955, size: 32, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !992, file: !993, line: 39, baseType: !955, size: 32, offset: 352)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !992, file: !993, line: 40, baseType: !879, size: 32, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !992, file: !993, line: 41, baseType: !887, size: 32, offset: 416)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !993, line: 42, baseType: !973, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !992, file: !993, line: 43, baseType: !976, size: 128, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !992, file: !993, line: 44, baseType: !976, size: 128, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !992, file: !993, line: 45, baseType: !976, size: 128, offset: 768)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !992, file: !993, line: 46, baseType: !976, size: 128, offset: 896)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !992, file: !993, line: 47, baseType: !311, size: 64, offset: 1024)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !992, file: !993, line: 48, baseType: !311, size: 64, offset: 1088)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !897, file: !208, line: 1883, baseType: !1015, size: 64, offset: 960)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!760, !834, !644, !774}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !897, file: !208, line: 1884, baseType: !1019, size: 64, offset: 1024)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!316, !873, !1022, !311, !311}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !897, file: !208, line: 1886, baseType: !1025, size: 64, offset: 1088)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!316, !873, !1028, !316}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !897, file: !208, line: 1887, baseType: !1030, size: 64, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!316, !873, !834, !804, !7, !769}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !897, file: !208, line: 1890, baseType: !947, size: 64, offset: 1216)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !897, file: !208, line: 1891, baseType: !1035, size: 64, offset: 1280)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!316, !873, !924, !316}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !874, file: !208, line: 623, baseType: !1039, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1097, !2715, !2797, !2880, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2896, !2900, !2901, !2904, !2905, !2908, !2909, !2910, !2951, !2977, !2978, !2979, !2980, !2981, !2982, !2985, !2987, !2994, !2995, !2997, !2998, !2999, !3058, !3059, !3074, !3075, !3076, !3077, !3078, !3081, !3082, !3083, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1040, file: !208, line: 1417, baseType: !662, size: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1040, file: !208, line: 1418, baseType: !955, size: 32, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1040, file: !208, line: 1419, baseType: !384, size: 8, offset: 160)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1040, file: !208, line: 1420, baseType: !572, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1040, file: !208, line: 1421, baseType: !973, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1040, file: !208, line: 1422, baseType: !1048, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1060, !1064, !1068, !1072, !1076, !1077, !1087, !1090, !1091, !1092, !1094, !1095, !1096}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1049, file: !208, line: 2229, baseType: !669, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1049, file: !208, line: 2230, baseType: !316, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1049, file: !208, line: 2238, baseType: !1054, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!316, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1059, line: 28, flags: DIFlagFwdDecl)
!1059 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1049, file: !208, line: 2239, baseType: !1061, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1049, file: !208, line: 2240, baseType: !1065, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!834, !1048, !316, !669, !305}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1049, file: !208, line: 2242, baseType: !1069, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !1039}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1049, file: !208, line: 2243, baseType: !1073, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1075, line: 76, flags: DIFlagFwdDecl)
!1075 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1049, file: !208, line: 2244, baseType: !1048, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1049, file: !208, line: 2245, baseType: !1078, size: 64, offset: 512)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !304, line: 182, size: 64, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1078, file: !304, line: 183, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !304, line: 186, size: 128, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !304, line: 187, baseType: !1081, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1082, file: !304, line: 187, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1049, file: !208, line: 2247, baseType: !1088, offset: 576)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1089, line: 187, elements: !705)
!1089 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1049, file: !208, line: 2248, baseType: !1088, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1049, file: !208, line: 2249, baseType: !1088, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1049, file: !208, line: 2250, baseType: !1093, offset: 576)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, elements: !463)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1049, file: !208, line: 2252, baseType: !1088, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1049, file: !208, line: 2253, baseType: !1088, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1049, file: !208, line: 2254, baseType: !1088, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1040, file: !208, line: 1423, baseType: !1098, size: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1101)
!1101 = !{!1102, !1106, !1110, !1111, !1115, !1121, !1125, !1126, !1127, !1131, !1135, !1136, !1137, !1138, !1144, !1149, !1150, !1157, !1158, !1159, !1160, !2699, !2714}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1100, file: !208, line: 1936, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!873, !1039}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1100, file: !208, line: 1937, baseType: !1107, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !873}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1100, file: !208, line: 1938, baseType: !1107, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1100, file: !208, line: 1940, baseType: !1112, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !873, !316}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1100, file: !208, line: 1941, baseType: !1116, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!316, !873, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1100, file: !208, line: 1942, baseType: !1122, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!316, !873}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1100, file: !208, line: 1943, baseType: !1107, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1100, file: !208, line: 1944, baseType: !1069, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1100, file: !208, line: 1945, baseType: !1128, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!316, !1039, !316}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1100, file: !208, line: 1946, baseType: !1132, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!316, !1039}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1100, file: !208, line: 1947, baseType: !1132, size: 64, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1100, file: !208, line: 1948, baseType: !1132, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1100, file: !208, line: 1949, baseType: !1132, size: 64, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1100, file: !208, line: 1950, baseType: !1139, size: 64, offset: 832)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!316, !834, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1100, file: !208, line: 1951, baseType: !1145, size: 64, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!316, !1039, !1148, !644}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1100, file: !208, line: 1952, baseType: !1069, size: 64, offset: 960)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1100, file: !208, line: 1954, baseType: !1151, size: 64, offset: 1024)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!316, !1154, !834}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1156, line: 539, flags: DIFlagFwdDecl)
!1156 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1100, file: !208, line: 1955, baseType: !1151, size: 64, offset: 1088)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1100, file: !208, line: 1956, baseType: !1151, size: 64, offset: 1152)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1100, file: !208, line: 1957, baseType: !1151, size: 64, offset: 1216)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1100, file: !208, line: 1963, baseType: !1161, size: 64, offset: 1280)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!316, !1039, !1164, !303}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1166, line: 68, size: 512, align: 128, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !{!1168, !1169, !2691, !2698}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1165, file: !1166, line: 69, baseType: !572, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1166, line: 77, baseType: !1170, size: 320, offset: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !1166, line: 77, size: 320, elements: !1171)
!1171 = !{!1172, !1353, !1358, !1386, !1394, !1400, !2683, !2690}
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1166, line: 78, baseType: !1173, size: 320)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1166, line: 78, size: 320, elements: !1174)
!1174 = !{!1175, !1176, !1351, !1352}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1173, file: !1166, line: 84, baseType: !662, size: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1173, file: !1166, line: 86, baseType: !1177, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1179)
!1179 = !{!1180, !1181, !1188, !1189, !1190, !1205, !1221, !1222, !1223, !1224, !1344, !1345, !1348, !1349, !1350}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1178, file: !208, line: 452, baseType: !873, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1178, file: !208, line: 453, baseType: !1182, size: 128, offset: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1183, line: 292, size: 128, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !{!1185, !1186, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1182, file: !1183, line: 293, baseType: !691)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1182, file: !1183, line: 295, baseType: !303, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1182, file: !1183, line: 296, baseType: !305, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1178, file: !208, line: 454, baseType: !303, size: 32, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1178, file: !208, line: 455, baseType: !358, size: 32, offset: 224)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1178, file: !208, line: 460, baseType: !1191, size: 128, offset: 256)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1192, line: 125, size: 128, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1204}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1191, file: !1192, line: 126, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1192, line: 31, size: 64, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1195, file: !1192, line: 32, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1192, line: 24, size: 192, align: 64, elements: !1200)
!1200 = !{!1201, !1202, !1203}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1199, file: !1192, line: 25, baseType: !572, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1199, file: !1192, line: 26, baseType: !1198, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1199, file: !1192, line: 27, baseType: !1198, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1191, file: !1192, line: 127, baseType: !1198, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1178, file: !208, line: 461, baseType: !1206, size: 256, offset: 384)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1207, line: 35, size: 256, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1217, !1218, !1220}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1206, file: !1207, line: 36, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1211, line: 13, baseType: !1212)
!1211 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !304, line: 175, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 173, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1213, file: !304, line: 174, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !307, line: 22, baseType: !497)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1206, file: !1207, line: 42, baseType: !1210, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1206, file: !1207, line: 46, baseType: !1219, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !692, line: 29, baseType: !699)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1206, file: !1207, line: 47, baseType: !662, size: 128, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1178, file: !208, line: 462, baseType: !572, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1178, file: !208, line: 463, baseType: !572, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1178, file: !208, line: 464, baseType: !572, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1178, file: !208, line: 465, baseType: !1225, size: 64, offset: 832)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1228)
!1228 = !{!1229, !1233, !1237, !1241, !1245, !1249, !1255, !1261, !1265, !1270, !1274, !1278, !1282, !1308, !1312, !1318, !1319, !1320, !1324, !1329, !1333, !1340}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1227, file: !208, line: 368, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!316, !1164, !1119}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1227, file: !208, line: 369, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!316, !804, !1164}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1227, file: !208, line: 372, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!316, !1177, !1119}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1227, file: !208, line: 375, baseType: !1242, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!316, !1164}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1227, file: !208, line: 381, baseType: !1246, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!316, !804, !1177, !665, !7}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1227, file: !208, line: 383, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1227, file: !208, line: 385, baseType: !1256, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!316, !804, !1177, !973, !7, !7, !1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1227, file: !208, line: 388, baseType: !1262, size: 64, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!316, !804, !1177, !973, !7, !7, !1164, !305}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1227, file: !208, line: 393, baseType: !1266, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1269, !1177, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !304, line: 125, baseType: !311)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1227, file: !208, line: 394, baseType: !1271, size: 64, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1164, !7, !7}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1227, file: !208, line: 395, baseType: !1275, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!316, !1164, !303}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1227, file: !208, line: 396, baseType: !1279, size: 64, offset: 704)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !1164}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1227, file: !208, line: 397, baseType: !1283, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!760, !1286, !1306}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1295, !1296, !1297, !1298, !1299}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1287, file: !208, line: 321, baseType: !804, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1287, file: !208, line: 326, baseType: !973, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1287, file: !208, line: 327, baseType: !1292, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !1286, !567, !567}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1287, file: !208, line: 328, baseType: !305, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1287, file: !208, line: 329, baseType: !316, size: 32, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1287, file: !208, line: 330, baseType: !522, size: 16, offset: 288)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1287, file: !208, line: 331, baseType: !522, size: 16, offset: 304)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !208, line: 332, baseType: !1300, size: 64, offset: 320)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !208, line: 332, size: 64, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1300, file: !208, line: 333, baseType: !7, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1300, file: !208, line: 334, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1227, file: !208, line: 402, baseType: !1309, size: 64, offset: 832)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!316, !1177, !1164, !1164, !183}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1227, file: !208, line: 404, baseType: !1313, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!406, !1164, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1317, line: 305, baseType: !7)
!1317 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1227, file: !208, line: 405, baseType: !1279, size: 64, offset: 960)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1227, file: !208, line: 406, baseType: !1242, size: 64, offset: 1024)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1227, file: !208, line: 407, baseType: !1321, size: 64, offset: 1088)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!316, !1164, !572, !572}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1227, file: !208, line: 409, baseType: !1325, size: 64, offset: 1152)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !1164, !1328, !1328}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1227, file: !208, line: 410, baseType: !1330, size: 64, offset: 1216)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!316, !1177, !1164}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1227, file: !208, line: 413, baseType: !1334, size: 64, offset: 1280)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!316, !1337, !804, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1227, file: !208, line: 415, baseType: !1341, size: 64, offset: 1344)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !804}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1178, file: !208, line: 466, baseType: !572, size: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1178, file: !208, line: 467, baseType: !1346, size: 32, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1347, line: 8, baseType: !306)
!1347 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1178, file: !208, line: 468, baseType: !691, offset: 992)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1178, file: !208, line: 469, baseType: !662, size: 128, offset: 1024)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1178, file: !208, line: 470, baseType: !305, size: 64, offset: 1152)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1173, file: !1166, line: 87, baseType: !572, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1173, file: !1166, line: 94, baseType: !572, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1166, line: 96, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1166, line: 96, size: 64, elements: !1355)
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1354, file: !1166, line: 101, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !304, line: 143, baseType: !311)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1166, line: 103, baseType: !1359, size: 320)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1166, line: 103, size: 320, elements: !1360)
!1360 = !{!1361, !1371, !1374, !1375}
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !1166, line: 104, baseType: !1362, size: 128)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !1166, line: 104, size: 128, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1362, file: !1166, line: 105, baseType: !662, size: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !1166, line: 106, baseType: !1366, size: 128)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1362, file: !1166, line: 106, size: 128, elements: !1367)
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1366, file: !1166, line: 107, baseType: !1164, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1366, file: !1166, line: 109, baseType: !316, size: 32, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1366, file: !1166, line: 110, baseType: !316, size: 32, offset: 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1359, file: !1166, line: 117, baseType: !1372, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1166, line: 117, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1359, file: !1166, line: 119, baseType: !305, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !1166, line: 120, baseType: !1376, size: 64, offset: 256)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !1166, line: 120, size: 64, elements: !1377)
!1377 = !{!1378, !1379, !1380}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1376, file: !1166, line: 121, baseType: !305, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1376, file: !1166, line: 122, baseType: !572, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !1166, line: 123, baseType: !1381, size: 32)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1376, file: !1166, line: 123, size: 32, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1381, file: !1166, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1381, file: !1166, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1381, file: !1166, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1166, line: 130, baseType: !1387, size: 192)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1166, line: 130, size: 192, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1387, file: !1166, line: 131, baseType: !572, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1387, file: !1166, line: 134, baseType: !384, size: 8, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1387, file: !1166, line: 135, baseType: !384, size: 8, offset: 72)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1387, file: !1166, line: 136, baseType: !358, size: 32, offset: 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1387, file: !1166, line: 137, baseType: !7, size: 32, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1166, line: 139, baseType: !1395, size: 256)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1166, line: 139, size: 256, elements: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1395, file: !1166, line: 140, baseType: !572, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1395, file: !1166, line: 141, baseType: !358, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1395, file: !1166, line: 143, baseType: !662, size: 128, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1166, line: 145, baseType: !1401, size: 256)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1166, line: 145, size: 256, elements: !1402)
!1402 = !{!1403, !1404, !1406, !1407, !2682}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1401, file: !1166, line: 146, baseType: !572, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1401, file: !1166, line: 147, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1156, line: 509, baseType: !1164)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1401, file: !1166, line: 148, baseType: !572, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1166, line: 149, baseType: !1408, size: 64, offset: 192)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !1166, line: 149, size: 64, elements: !1409)
!1409 = !{!1410, !2681}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1408, file: !1166, line: 150, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1166, line: 388, size: 7296, elements: !1413)
!1413 = !{!1414, !2677}
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1166, line: 389, baseType: !1415, size: 7296)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !1166, line: 389, size: 7296, elements: !1416)
!1416 = !{!1417, !1455, !1456, !1457, !1461, !1462, !1463, !1464, !1465, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1506, !1512, !1515, !1561, !1562, !2661, !2662, !2665, !2666, !2667, !2670, !2671, !2672, !2675, !2676}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1415, file: !1166, line: 390, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1166, line: 305, size: 1472, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1435, !1436, !1441, !1442, !1445, !1449, !1450, !1451, !1452, !1453}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1419, file: !1166, line: 308, baseType: !572, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1419, file: !1166, line: 309, baseType: !572, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1419, file: !1166, line: 313, baseType: !1418, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1419, file: !1166, line: 313, baseType: !1418, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1419, file: !1166, line: 315, baseType: !1199, size: 192, align: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1419, file: !1166, line: 323, baseType: !572, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1419, file: !1166, line: 327, baseType: !1411, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1419, file: !1166, line: 333, baseType: !1429, size: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1156, line: 284, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1156, line: 284, size: 64, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1430, file: !1156, line: 284, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1434, line: 19, baseType: !572)
!1434 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1419, file: !1166, line: 334, baseType: !572, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1419, file: !1166, line: 343, baseType: !1437, size: 256, offset: 704)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !1166, line: 340, size: 256, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1437, file: !1166, line: 341, baseType: !1199, size: 192, align: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1437, file: !1166, line: 342, baseType: !572, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1419, file: !1166, line: 351, baseType: !662, size: 128, offset: 960)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1419, file: !1166, line: 353, baseType: !1443, size: 64, offset: 1088)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1166, line: 353, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1419, file: !1166, line: 356, baseType: !1446, size: 64, offset: 1152)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1166, line: 356, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1419, file: !1166, line: 359, baseType: !572, size: 64, offset: 1216)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1419, file: !1166, line: 361, baseType: !804, size: 64, offset: 1280)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1419, file: !1166, line: 362, baseType: !305, size: 64, offset: 1344)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1419, file: !1166, line: 365, baseType: !1210, size: 64, offset: 1408)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1419, file: !1166, line: 373, baseType: !1454, offset: 1472)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1166, line: 296, elements: !705)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1415, file: !1166, line: 391, baseType: !1195, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1415, file: !1166, line: 392, baseType: !311, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1415, file: !1166, line: 394, baseType: !1458, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!572, !804, !572, !572, !572, !572}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1415, file: !1166, line: 398, baseType: !572, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1415, file: !1166, line: 399, baseType: !572, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1415, file: !1166, line: 405, baseType: !572, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1415, file: !1166, line: 406, baseType: !572, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1415, file: !1166, line: 407, baseType: !1466, size: 64, offset: 512)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1156, line: 286, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1156, line: 286, size: 64, elements: !1469)
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1468, file: !1156, line: 286, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1434, line: 18, baseType: !572)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1415, file: !1166, line: 416, baseType: !358, size: 32, offset: 576)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1415, file: !1166, line: 428, baseType: !358, size: 32, offset: 608)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1415, file: !1166, line: 437, baseType: !358, size: 32, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1415, file: !1166, line: 447, baseType: !358, size: 32, offset: 672)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1415, file: !1166, line: 450, baseType: !1210, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1415, file: !1166, line: 452, baseType: !316, size: 32, offset: 768)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1415, file: !1166, line: 454, baseType: !691, offset: 800)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1415, file: !1166, line: 457, baseType: !1206, size: 256, offset: 832)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1415, file: !1166, line: 459, baseType: !662, size: 128, offset: 1088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1415, file: !1166, line: 466, baseType: !572, size: 64, offset: 1216)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1415, file: !1166, line: 467, baseType: !572, size: 64, offset: 1280)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1415, file: !1166, line: 469, baseType: !572, size: 64, offset: 1344)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1415, file: !1166, line: 470, baseType: !572, size: 64, offset: 1408)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1415, file: !1166, line: 471, baseType: !1212, size: 64, offset: 1472)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1415, file: !1166, line: 472, baseType: !572, size: 64, offset: 1536)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1415, file: !1166, line: 473, baseType: !572, size: 64, offset: 1600)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1415, file: !1166, line: 474, baseType: !572, size: 64, offset: 1664)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1415, file: !1166, line: 475, baseType: !572, size: 64, offset: 1728)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1415, file: !1166, line: 477, baseType: !691, offset: 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1415, file: !1166, line: 478, baseType: !572, size: 64, offset: 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1415, file: !1166, line: 478, baseType: !572, size: 64, offset: 1856)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1415, file: !1166, line: 478, baseType: !572, size: 64, offset: 1920)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1415, file: !1166, line: 478, baseType: !572, size: 64, offset: 1984)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1415, file: !1166, line: 479, baseType: !572, size: 64, offset: 2048)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1415, file: !1166, line: 479, baseType: !572, size: 64, offset: 2112)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1415, file: !1166, line: 479, baseType: !572, size: 64, offset: 2176)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1415, file: !1166, line: 480, baseType: !572, size: 64, offset: 2240)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1415, file: !1166, line: 480, baseType: !572, size: 64, offset: 2304)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1415, file: !1166, line: 480, baseType: !572, size: 64, offset: 2368)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1415, file: !1166, line: 480, baseType: !572, size: 64, offset: 2432)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1415, file: !1166, line: 482, baseType: !1503, size: 2816, offset: 2496)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 2816, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 44)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1415, file: !1166, line: 488, baseType: !1507, size: 256, offset: 5312)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1508, line: 60, size: 256, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1507, file: !1508, line: 61, baseType: !1511, size: 256)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1210, size: 256, elements: !499)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1415, file: !1166, line: 490, baseType: !1513, size: 64, offset: 5568)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1166, line: 490, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1415, file: !1166, line: 493, baseType: !1516, size: 896, offset: 5632)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1517, line: 53, baseType: !1518)
!1517 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1517, line: 13, size: 896, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1526, !1527, !1534, !1535, !1555, !1556, !1557}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1518, file: !1517, line: 18, baseType: !311, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1518, file: !1517, line: 28, baseType: !1212, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1518, file: !1517, line: 31, baseType: !1206, size: 256, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1518, file: !1517, line: 32, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1517, line: 32, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1518, file: !1517, line: 37, baseType: !524, size: 16, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !1517, line: 40, baseType: !1528, size: 192, offset: 512)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1529, line: 53, size: 192, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1528, file: !1529, line: 54, baseType: !1210, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1528, file: !1529, line: 55, baseType: !691, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1528, file: !1529, line: 59, baseType: !662, size: 128, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1518, file: !1517, line: 41, baseType: !305, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1518, file: !1517, line: 42, baseType: !1536, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1539, line: 13, size: 896, elements: !1540)
!1539 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1538, file: !1539, line: 14, baseType: !305, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1538, file: !1539, line: 15, baseType: !572, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1538, file: !1539, line: 17, baseType: !572, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1538, file: !1539, line: 17, baseType: !572, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1538, file: !1539, line: 19, baseType: !567, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1538, file: !1539, line: 21, baseType: !567, size: 64, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1538, file: !1539, line: 22, baseType: !567, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1538, file: !1539, line: 23, baseType: !567, size: 64, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1538, file: !1539, line: 24, baseType: !567, size: 64, offset: 512)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1538, file: !1539, line: 25, baseType: !567, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1538, file: !1539, line: 26, baseType: !567, size: 64, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1538, file: !1539, line: 27, baseType: !567, size: 64, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1538, file: !1539, line: 28, baseType: !567, size: 64, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1538, file: !1539, line: 29, baseType: !567, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1518, file: !1517, line: 44, baseType: !358, size: 32, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1518, file: !1517, line: 50, baseType: !522, size: 16, offset: 864)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1518, file: !1517, line: 51, baseType: !1558, size: 16, offset: 880)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !307, line: 18, baseType: !1559)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !309, line: 23, baseType: !1560)
!1560 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !1166, line: 495, baseType: !572, size: 64, offset: 6528)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1415, file: !1166, line: 497, baseType: !1563, size: 64, offset: 6592)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1166, line: 381, size: 384, elements: !1565)
!1565 = !{!1566, !1567, !2660}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1564, file: !1166, line: 382, baseType: !358, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1564, file: !1166, line: 383, baseType: !1568, size: 128, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1166, line: 376, size: 128, elements: !1569)
!1569 = !{!1570, !2658}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1568, file: !1166, line: 377, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1573, line: 640, size: 48640, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1581, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1596, !1614, !1625, !1706, !1707, !1708, !1719, !1720, !1722, !1723, !1724, !1725, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1806, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1844, !1846, !1847, !1848, !1860, !1861, !1862, !1863, !1864, !1865, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1889, !1894, !2076, !2077, !2078, !2079, !2083, !2086, !2089, !2092, !2095, !2099, !2200, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2246, !2247, !2248, !2249, !2250, !2255, !2256, !2257, !2260, !2261, !2264, !2267, !2270, !2273, !2316, !2319, !2320, !2399, !2400, !2403, !2404, !2407, !2408, !2409, !2413, !2414, !2415, !2428, !2429, !2430, !2440, !2445, !2448, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1572, file: !1573, line: 646, baseType: !1576, size: 128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1577, line: 56, size: 128, elements: !1578)
!1577 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !1577, line: 57, baseType: !572, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1576, file: !1577, line: 58, baseType: !306, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1572, file: !1573, line: 649, baseType: !1582, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !567)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1572, file: !1573, line: 657, baseType: !305, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1572, file: !1573, line: 658, baseType: !353, size: 32, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1572, file: !1573, line: 660, baseType: !7, size: 32, offset: 288)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1572, file: !1573, line: 661, baseType: !7, size: 32, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1572, file: !1573, line: 684, baseType: !316, size: 32, offset: 352)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1572, file: !1573, line: 686, baseType: !316, size: 32, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1572, file: !1573, line: 687, baseType: !316, size: 32, offset: 416)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1572, file: !1573, line: 688, baseType: !316, size: 32, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1572, file: !1573, line: 689, baseType: !7, size: 32, offset: 480)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1572, file: !1573, line: 691, baseType: !1593, size: 64, offset: 512)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1573, line: 691, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1572, file: !1573, line: 692, baseType: !1597, size: 832, offset: 576)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1573, line: 451, size: 832, elements: !1598)
!1598 = !{!1599, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1597, file: !1573, line: 453, baseType: !1600, size: 128)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1573, line: 325, size: 128, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1600, file: !1573, line: 326, baseType: !572, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1600, file: !1573, line: 327, baseType: !306, size: 32, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1597, file: !1573, line: 454, baseType: !1199, size: 192, align: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1597, file: !1573, line: 455, baseType: !662, size: 128, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1597, file: !1573, line: 456, baseType: !7, size: 32, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1597, file: !1573, line: 458, baseType: !311, size: 64, offset: 512)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1597, file: !1573, line: 459, baseType: !311, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1597, file: !1573, line: 460, baseType: !311, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1597, file: !1573, line: 461, baseType: !311, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1597, file: !1573, line: 463, baseType: !311, size: 64, offset: 768)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1597, file: !1573, line: 465, baseType: !1613, offset: 832)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1573, line: 415, elements: !705)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1572, file: !1573, line: 693, baseType: !1615, size: 384, offset: 1408)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1573, line: 489, size: 384, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1615, file: !1573, line: 490, baseType: !662, size: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1615, file: !1573, line: 491, baseType: !572, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1615, file: !1573, line: 492, baseType: !572, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1615, file: !1573, line: 493, baseType: !7, size: 32, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1615, file: !1573, line: 494, baseType: !524, size: 16, offset: 288)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1615, file: !1573, line: 495, baseType: !524, size: 16, offset: 304)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1615, file: !1573, line: 497, baseType: !1624, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1572, file: !1573, line: 697, baseType: !1626, size: 1792, offset: 1792)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1573, line: 507, size: 1792, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1703, !1704}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1626, file: !1573, line: 508, baseType: !1199, size: 192, align: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1626, file: !1573, line: 515, baseType: !311, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1626, file: !1573, line: 516, baseType: !311, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1626, file: !1573, line: 517, baseType: !311, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1626, file: !1573, line: 518, baseType: !311, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1626, file: !1573, line: 519, baseType: !311, size: 64, offset: 448)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1626, file: !1573, line: 526, baseType: !1216, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1626, file: !1573, line: 527, baseType: !311, size: 64, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !1573, line: 528, baseType: !7, size: 32, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1626, file: !1573, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1626, file: !1573, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1626, file: !1573, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1626, file: !1573, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1626, file: !1573, line: 563, baseType: !1642, size: 512, offset: 704)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1643)
!1643 = !{!1644, !1652, !1653, !1658, !1699, !1700, !1701, !1702}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1642, file: !191, line: 119, baseType: !1645, size: 256)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1646, line: 9, size: 256, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1645, file: !1646, line: 10, baseType: !1199, size: 192, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1645, file: !1646, line: 11, baseType: !1650, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1651, line: 29, baseType: !1216)
!1651 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1642, file: !191, line: 120, baseType: !1650, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1642, file: !191, line: 121, baseType: !1654, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!190, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1642, file: !191, line: 122, baseType: !1659, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1661)
!1661 = !{!1662, !1680, !1681, !1684, !1689, !1690, !1694, !1698}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1660, file: !191, line: 160, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1664, file: !191, line: 215, baseType: !1219)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1664, file: !191, line: 216, baseType: !7, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1664, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1664, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1664, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1664, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1664, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1664, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1664, file: !191, line: 233, baseType: !1650, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1664, file: !191, line: 234, baseType: !1657, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1664, file: !191, line: 235, baseType: !1650, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1664, file: !191, line: 236, baseType: !1657, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1664, file: !191, line: 237, baseType: !1679, size: 4096, offset: 512)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1660, size: 4096, elements: !385)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1660, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1660, file: !191, line: 162, baseType: !1682, size: 32, offset: 96)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !304, line: 27, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !762, line: 96, baseType: !316)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1660, file: !191, line: 163, baseType: !1685, size: 32, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !840, line: 276, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !840, line: 276, size: 32, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1686, file: !840, line: 276, baseType: !844, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1660, file: !191, line: 164, baseType: !1657, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1660, file: !191, line: 165, baseType: !1691, size: 128, offset: 256)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1646, line: 14, size: 128, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1691, file: !1646, line: 15, baseType: !1191, size: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1660, file: !191, line: 166, baseType: !1695, size: 64, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1650}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1660, file: !191, line: 167, baseType: !1650, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1642, file: !191, line: 123, baseType: !382, size: 8, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1642, file: !191, line: 124, baseType: !382, size: 8, offset: 456)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1642, file: !191, line: 125, baseType: !382, size: 8, offset: 464)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1642, file: !191, line: 126, baseType: !382, size: 8, offset: 472)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1626, file: !1573, line: 572, baseType: !1642, size: 512, offset: 1216)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1626, file: !1573, line: 580, baseType: !1705, size: 64, offset: 1728)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1572, file: !1573, line: 721, baseType: !7, size: 32, offset: 3584)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1572, file: !1573, line: 722, baseType: !316, size: 32, offset: 3616)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1572, file: !1573, line: 723, baseType: !1709, size: 64, offset: 3648)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1712, line: 17, baseType: !1713)
!1712 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1712, line: 17, size: 64, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1713, file: !1712, line: 17, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 1)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1572, file: !1573, line: 724, baseType: !1711, size: 64, offset: 3712)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1572, file: !1573, line: 749, baseType: !1721, offset: 3776)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1573, line: 290, elements: !705)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1572, file: !1573, line: 751, baseType: !662, size: 128, offset: 3776)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1572, file: !1573, line: 757, baseType: !1411, size: 64, offset: 3904)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1572, file: !1573, line: 758, baseType: !1411, size: 64, offset: 3968)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1572, file: !1573, line: 761, baseType: !1726, size: 320, offset: 4032)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1508, line: 34, size: 320, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1726, file: !1508, line: 35, baseType: !311, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1726, file: !1508, line: 36, baseType: !1730, size: 256, offset: 64)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 256, elements: !499)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1572, file: !1573, line: 766, baseType: !316, size: 32, offset: 4352)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1572, file: !1573, line: 767, baseType: !316, size: 32, offset: 4384)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1572, file: !1573, line: 768, baseType: !316, size: 32, offset: 4416)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1572, file: !1573, line: 770, baseType: !316, size: 32, offset: 4448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1572, file: !1573, line: 772, baseType: !572, size: 64, offset: 4480)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1572, file: !1573, line: 775, baseType: !7, size: 32, offset: 4544)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1572, file: !1573, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1572, file: !1573, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1572, file: !1573, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1572, file: !1573, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1572, file: !1573, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1572, file: !1573, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1572, file: !1573, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1572, file: !1573, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1572, file: !1573, line: 831, baseType: !572, size: 64, offset: 4672)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1572, file: !1573, line: 833, baseType: !1747, size: 384, offset: 4736)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1748)
!1748 = !{!1749, !1754}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1747, file: !196, line: 26, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!567, !1753}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !196, line: 27, baseType: !1755, size: 320, offset: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1747, file: !196, line: 27, size: 320, elements: !1756)
!1756 = !{!1757, !1766, !1791}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1755, file: !196, line: 36, baseType: !1758, size: 320)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !196, line: 29, size: 320, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1758, file: !196, line: 30, baseType: !516, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1758, file: !196, line: 31, baseType: !306, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1758, file: !196, line: 32, baseType: !306, size: 32, offset: 96)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1758, file: !196, line: 33, baseType: !306, size: 32, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1758, file: !196, line: 34, baseType: !311, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1758, file: !196, line: 35, baseType: !516, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1755, file: !196, line: 46, baseType: !1767, size: 192)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !196, line: 38, size: 192, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1790}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1767, file: !196, line: 39, baseType: !1682, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1767, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !196, line: 41, baseType: !1772, size: 64, offset: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1767, file: !196, line: 41, size: 64, elements: !1773)
!1773 = !{!1774, !1782}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1772, file: !196, line: 42, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1777, line: 7, size: 128, elements: !1778)
!1777 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !{!1779, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1776, file: !1777, line: 8, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !762, line: 93, baseType: !498)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1776, file: !1777, line: 9, baseType: !498, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1772, file: !196, line: 43, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1785, line: 7, size: 64, elements: !1786)
!1785 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1786 = !{!1787, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1784, file: !1785, line: 8, baseType: !1788, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1785, line: 5, baseType: !314)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1784, file: !1785, line: 9, baseType: !314, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1767, file: !196, line: 45, baseType: !311, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1755, file: !196, line: 54, baseType: !1792, size: 256)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !196, line: 48, size: 256, elements: !1793)
!1793 = !{!1794, !1802, !1803, !1804, !1805}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1792, file: !196, line: 49, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1797, line: 36, size: 64, elements: !1798)
!1797 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1798 = !{!1799, !1800, !1801}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1796, file: !1797, line: 37, baseType: !316, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1796, file: !1797, line: 38, baseType: !1560, size: 16, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1796, file: !1797, line: 39, baseType: !1560, size: 16, offset: 48)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1792, file: !196, line: 50, baseType: !316, size: 32, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1792, file: !196, line: 51, baseType: !316, size: 32, offset: 96)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1792, file: !196, line: 52, baseType: !572, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1792, file: !196, line: 53, baseType: !572, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1572, file: !1573, line: 835, baseType: !1807, size: 32, offset: 5120)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !304, line: 22, baseType: !1808)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !762, line: 28, baseType: !316)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1572, file: !1573, line: 836, baseType: !1807, size: 32, offset: 5152)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1572, file: !1573, line: 840, baseType: !572, size: 64, offset: 5184)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1572, file: !1573, line: 849, baseType: !1571, size: 64, offset: 5248)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1572, file: !1573, line: 852, baseType: !1571, size: 64, offset: 5312)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1572, file: !1573, line: 857, baseType: !662, size: 128, offset: 5376)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1572, file: !1573, line: 858, baseType: !662, size: 128, offset: 5504)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1572, file: !1573, line: 859, baseType: !1571, size: 64, offset: 5632)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1572, file: !1573, line: 867, baseType: !662, size: 128, offset: 5696)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1572, file: !1573, line: 868, baseType: !662, size: 128, offset: 5824)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1572, file: !1573, line: 871, baseType: !1819, size: 64, offset: 5952)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825, !1827, !1828, !1835, !1836}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1820, file: !217, line: 61, baseType: !353, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1820, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1820, file: !217, line: 63, baseType: !691, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1820, file: !217, line: 65, baseType: !1826, size: 256, offset: 64)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1078, size: 256, elements: !499)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1820, file: !217, line: 66, baseType: !1078, size: 64, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1820, file: !217, line: 68, baseType: !1829, size: 128, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1830, line: 40, baseType: !1831)
!1830 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1830, line: 36, size: 128, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1831, file: !1830, line: 37, baseType: !691)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1831, file: !1830, line: 38, baseType: !662, size: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1820, file: !217, line: 69, baseType: !817, size: 128, align: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1820, file: !217, line: 70, baseType: !1837, size: 128, offset: 640)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, size: 128, elements: !1717)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1838, file: !217, line: 55, baseType: !316, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1838, file: !217, line: 56, baseType: !1842, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1572, file: !1573, line: 872, baseType: !1845, size: 512, offset: 6016)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 512, elements: !499)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1572, file: !1573, line: 873, baseType: !662, size: 128, offset: 6528)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1572, file: !1573, line: 874, baseType: !662, size: 128, offset: 6656)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1572, file: !1573, line: 876, baseType: !1849, size: 64, offset: 6784)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1851, line: 26, size: 192, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1850, file: !1851, line: 27, baseType: !7, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1850, file: !1851, line: 28, baseType: !1855, size: 128, offset: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1856, line: 43, size: 128, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1855, file: !1856, line: 44, baseType: !1219)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1855, file: !1856, line: 45, baseType: !662, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1572, file: !1573, line: 879, baseType: !1148, size: 64, offset: 6848)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1572, file: !1573, line: 882, baseType: !1148, size: 64, offset: 6912)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1572, file: !1573, line: 884, baseType: !311, size: 64, offset: 6976)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1572, file: !1573, line: 885, baseType: !311, size: 64, offset: 7040)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1572, file: !1573, line: 890, baseType: !311, size: 64, offset: 7104)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1572, file: !1573, line: 891, baseType: !1866, size: 128, offset: 7168)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1573, line: 242, size: 128, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1866, file: !1573, line: 244, baseType: !311, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1866, file: !1573, line: 245, baseType: !311, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1866, file: !1573, line: 246, baseType: !1219, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1572, file: !1573, line: 900, baseType: !572, size: 64, offset: 7296)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1572, file: !1573, line: 901, baseType: !572, size: 64, offset: 7360)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1572, file: !1573, line: 904, baseType: !311, size: 64, offset: 7424)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1572, file: !1573, line: 907, baseType: !311, size: 64, offset: 7488)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1572, file: !1573, line: 910, baseType: !572, size: 64, offset: 7552)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1572, file: !1573, line: 911, baseType: !572, size: 64, offset: 7616)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1572, file: !1573, line: 914, baseType: !1878, size: 640, offset: 7680)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1879, line: 123, size: 640, elements: !1880)
!1879 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !{!1881, !1887, !1888}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1878, file: !1879, line: 124, baseType: !1882, size: 576)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, size: 576, elements: !463)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1879, line: 108, size: 192, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1883, file: !1879, line: 109, baseType: !311, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1883, file: !1879, line: 110, baseType: !1691, size: 128, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1878, file: !1879, line: 125, baseType: !7, size: 32, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1878, file: !1879, line: 126, baseType: !7, size: 32, offset: 608)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1572, file: !1573, line: 917, baseType: !1890, size: 192, offset: 8320)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1879, line: 134, size: 192, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1890, file: !1879, line: 135, baseType: !817, size: 128, align: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1890, file: !1879, line: 136, baseType: !7, size: 32, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1572, file: !1573, line: 923, baseType: !1895, size: 64, offset: 8512)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1898, line: 111, size: 1280, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1919, !1920, !1921, !1922, !1923, !1924, !2029, !2030, !2031, !2032, !2058, !2061, !2071}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1897, file: !1898, line: 112, baseType: !358, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1897, file: !1898, line: 120, baseType: !879, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1897, file: !1898, line: 121, baseType: !887, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1897, file: !1898, line: 122, baseType: !879, size: 32, offset: 96)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1897, file: !1898, line: 123, baseType: !887, size: 32, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1897, file: !1898, line: 124, baseType: !879, size: 32, offset: 160)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1897, file: !1898, line: 125, baseType: !887, size: 32, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1897, file: !1898, line: 126, baseType: !879, size: 32, offset: 224)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1897, file: !1898, line: 127, baseType: !887, size: 32, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1897, file: !1898, line: 128, baseType: !7, size: 32, offset: 288)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1897, file: !1898, line: 129, baseType: !1911, size: 64, offset: 320)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1912, line: 26, baseType: !1913)
!1912 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1912, line: 24, size: 64, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1913, file: !1912, line: 25, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 64, elements: !1917)
!1917 = !{!1918}
!1918 = !DISubrange(count: 2)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1897, file: !1898, line: 130, baseType: !1911, size: 64, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1897, file: !1898, line: 131, baseType: !1911, size: 64, offset: 448)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1897, file: !1898, line: 132, baseType: !1911, size: 64, offset: 512)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1897, file: !1898, line: 133, baseType: !1911, size: 64, offset: 576)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1897, file: !1898, line: 135, baseType: !384, size: 8, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1897, file: !1898, line: 137, baseType: !1925, size: 64, offset: 704)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1927, line: 189, size: 1664, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1928 = !{!1929, !1930, !1933, !1938, !1939, !1942, !1943, !1948, !1949, !1950, !1951, !1953, !1954, !1955, !1956, !1957, !1993, !2014}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1926, file: !1927, line: 190, baseType: !353, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1926, file: !1927, line: 191, baseType: !1931, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1927, line: 28, baseType: !1932)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !304, line: 98, baseType: !314)
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1927, line: 192, baseType: !1934, size: 192, offset: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !1927, line: 192, size: 192, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1934, file: !1927, line: 193, baseType: !662, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1934, file: !1927, line: 194, baseType: !1199, size: 192, align: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1926, file: !1927, line: 199, baseType: !1206, size: 256, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1926, file: !1927, line: 200, baseType: !1940, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1927, line: 200, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1926, file: !1927, line: 201, baseType: !305, size: 64, offset: 576)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1927, line: 202, baseType: !1944, size: 64, offset: 640)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !1927, line: 202, size: 64, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1944, file: !1927, line: 203, baseType: !980, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1944, file: !1927, line: 204, baseType: !980, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1926, file: !1927, line: 206, baseType: !980, size: 64, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1926, file: !1927, line: 207, baseType: !879, size: 32, offset: 768)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1926, file: !1927, line: 208, baseType: !887, size: 32, offset: 800)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1926, file: !1927, line: 209, baseType: !1952, size: 32, offset: 832)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1927, line: 31, baseType: !999)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1926, file: !1927, line: 210, baseType: !524, size: 16, offset: 864)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1926, file: !1927, line: 211, baseType: !524, size: 16, offset: 880)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1926, file: !1927, line: 215, baseType: !1560, size: 16, offset: 896)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1926, file: !1927, line: 222, baseType: !572, size: 64, offset: 960)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1927, line: 239, baseType: !1958, size: 320, offset: 1024)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !1927, line: 239, size: 320, elements: !1959)
!1959 = !{!1960, !1985}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1958, file: !1927, line: 240, baseType: !1961, size: 320)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1927, line: 108, size: 320, elements: !1962)
!1962 = !{!1963, !1964, !1974, !1977, !1984}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1961, file: !1927, line: 110, baseType: !572, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1927, line: 111, baseType: !1965, size: 64, offset: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !1927, line: 111, size: 64, elements: !1966)
!1966 = !{!1967, !1973}
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1927, line: 112, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1965, file: !1927, line: 112, size: 64, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1968, file: !1927, line: 114, baseType: !522, size: 16)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1968, file: !1927, line: 115, baseType: !1972, size: 48, offset: 16)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 48, elements: !537)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1965, file: !1927, line: 121, baseType: !572, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1961, file: !1927, line: 123, baseType: !1975, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1927, line: 96, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1961, file: !1927, line: 124, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1927, line: 102, size: 192, elements: !1980)
!1980 = !{!1981, !1982, !1983}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1979, file: !1927, line: 103, baseType: !817, size: 128, align: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1979, file: !1927, line: 104, baseType: !353, size: 32, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1979, file: !1927, line: 105, baseType: !406, size: 8, offset: 160)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1961, file: !1927, line: 125, baseType: !669, size: 64, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1927, line: 241, baseType: !1986, size: 320)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1927, line: 241, size: 320, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1992}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1986, file: !1927, line: 242, baseType: !572, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1986, file: !1927, line: 243, baseType: !572, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1986, file: !1927, line: 244, baseType: !1975, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1986, file: !1927, line: 245, baseType: !1978, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1986, file: !1927, line: 246, baseType: !644, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1927, line: 254, baseType: !1994, size: 256, offset: 1344)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !1927, line: 254, size: 256, elements: !1995)
!1995 = !{!1996, !2002}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1994, file: !1927, line: 255, baseType: !1997, size: 256)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1927, line: 128, size: 256, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1997, file: !1927, line: 129, baseType: !305, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1997, file: !1927, line: 130, baseType: !2001, size: 256)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 256, elements: !499)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1994, file: !1927, line: 256, baseType: !2003, size: 256)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1994, file: !1927, line: 256, size: 256, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2003, file: !1927, line: 258, baseType: !662, size: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2003, file: !1927, line: 259, baseType: !2007, size: 128, offset: 128)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2008, line: 22, size: 128, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2009 = !{!2010, !2013}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2007, file: !2008, line: 23, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2008, line: 23, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2007, file: !2008, line: 24, baseType: !572, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1926, file: !1927, line: 274, baseType: !2015, size: 64, offset: 1600)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1927, line: 170, size: 192, elements: !2017)
!2017 = !{!2018, !2027, !2028}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2016, file: !1927, line: 171, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1927, line: 165, baseType: !2020)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!316, !1925, !2023, !2025, !1925}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1997)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2016, file: !1927, line: 172, baseType: !1925, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2016, file: !1927, line: 173, baseType: !1975, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1897, file: !1898, line: 138, baseType: !1925, size: 64, offset: 768)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1897, file: !1898, line: 139, baseType: !1925, size: 64, offset: 832)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1897, file: !1898, line: 140, baseType: !1925, size: 64, offset: 896)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1897, file: !1898, line: 145, baseType: !2033, size: 64, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2035, line: 13, size: 896, elements: !2036)
!2035 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2036 = !{!2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2034, file: !2035, line: 14, baseType: !353, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2034, file: !2035, line: 15, baseType: !358, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2034, file: !2035, line: 16, baseType: !358, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2034, file: !2035, line: 21, baseType: !1210, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2034, file: !2035, line: 27, baseType: !572, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2034, file: !2035, line: 28, baseType: !572, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2034, file: !2035, line: 29, baseType: !1210, size: 64, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2034, file: !2035, line: 32, baseType: !1082, size: 128, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2034, file: !2035, line: 33, baseType: !879, size: 32, offset: 512)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2034, file: !2035, line: 37, baseType: !1210, size: 64, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2034, file: !2035, line: 44, baseType: !2048, size: 256, offset: 640)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2049, line: 15, size: 256, elements: !2050)
!2049 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2048, file: !2049, line: 16, baseType: !1219)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2048, file: !2049, line: 18, baseType: !316, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2048, file: !2049, line: 19, baseType: !316, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2048, file: !2049, line: 20, baseType: !316, size: 32, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2048, file: !2049, line: 21, baseType: !316, size: 32, offset: 96)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2048, file: !2049, line: 22, baseType: !572, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2048, file: !2049, line: 23, baseType: !572, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1897, file: !1898, line: 146, baseType: !2059, size: 64, offset: 1024)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !880, line: 18, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1897, file: !1898, line: 147, baseType: !2062, size: 64, offset: 1088)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1898, line: 25, size: 64, elements: !2064)
!2064 = !{!2065, !2066, !2067}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2063, file: !1898, line: 26, baseType: !358, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2063, file: !1898, line: 27, baseType: !316, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2063, file: !1898, line: 28, baseType: !2068, offset: 64)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 0)
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1898, line: 149, baseType: !2072, size: 128, offset: 1152)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !1898, line: 149, size: 128, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2072, file: !1898, line: 150, baseType: !316, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2072, file: !1898, line: 151, baseType: !817, size: 128, align: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1572, file: !1573, line: 926, baseType: !1895, size: 64, offset: 8576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1572, file: !1573, line: 929, baseType: !1895, size: 64, offset: 8640)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1572, file: !1573, line: 933, baseType: !1925, size: 64, offset: 8704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1572, file: !1573, line: 943, baseType: !2080, size: 128, offset: 8768)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 128, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 16)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1572, file: !1573, line: 945, baseType: !2084, size: 64, offset: 8896)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1573, line: 49, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1572, file: !1573, line: 956, baseType: !2087, size: 64, offset: 8960)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1573, line: 45, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1572, file: !1573, line: 959, baseType: !2090, size: 64, offset: 9024)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1573, line: 959, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1572, file: !1573, line: 962, baseType: !2093, size: 64, offset: 9088)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1573, line: 66, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1572, file: !1573, line: 966, baseType: !2096, size: 64, offset: 9152)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2098, line: 35, flags: DIFlagFwdDecl)
!2098 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1572, file: !1573, line: 969, baseType: !2100, size: 64, offset: 9216)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2102, line: 82, size: 7296, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2139, !2148, !2149, !2151, !2152, !2153, !2156, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2186, !2187, !2194, !2195, !2196, !2197, !2198, !2199}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2101, file: !2102, line: 83, baseType: !353, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2101, file: !2102, line: 84, baseType: !358, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2101, file: !2102, line: 85, baseType: !316, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2101, file: !2102, line: 86, baseType: !662, size: 128, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2101, file: !2102, line: 88, baseType: !1829, size: 128, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2101, file: !2102, line: 91, baseType: !1571, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2101, file: !2102, line: 94, baseType: !2111, size: 192, offset: 448)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2112, line: 30, size: 192, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2111, file: !2112, line: 31, baseType: !662, size: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2111, file: !2112, line: 32, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2117, line: 25, baseType: !2118)
!2117 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2117, line: 23, size: 64, elements: !2119)
!2119 = !{!2120}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2118, file: !2117, line: 24, baseType: !1716, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2101, file: !2102, line: 97, baseType: !1078, size: 64, offset: 640)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2101, file: !2102, line: 100, baseType: !316, size: 32, offset: 704)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2101, file: !2102, line: 106, baseType: !316, size: 32, offset: 736)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2101, file: !2102, line: 107, baseType: !1571, size: 64, offset: 768)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2101, file: !2102, line: 110, baseType: !316, size: 32, offset: 832)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2101, file: !2102, line: 111, baseType: !7, size: 32, offset: 864)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2101, file: !2102, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2101, file: !2102, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2101, file: !2102, line: 128, baseType: !316, size: 32, offset: 928)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2101, file: !2102, line: 129, baseType: !662, size: 128, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2101, file: !2102, line: 132, baseType: !1642, size: 512, offset: 1088)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2101, file: !2102, line: 133, baseType: !1650, size: 64, offset: 1600)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2101, file: !2102, line: 140, baseType: !2134, size: 256, offset: 1664)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2135, size: 256, elements: !1917)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2102, line: 38, size: 128, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2135, file: !2102, line: 39, baseType: !311, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2135, file: !2102, line: 40, baseType: !311, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2101, file: !2102, line: 146, baseType: !2140, size: 192, offset: 1920)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2102, line: 66, size: 192, elements: !2141)
!2141 = !{!2142}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2140, file: !2102, line: 67, baseType: !2143, size: 192)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2102, line: 47, size: 192, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2143, file: !2102, line: 48, baseType: !1212, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2143, file: !2102, line: 49, baseType: !1212, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2143, file: !2102, line: 50, baseType: !1212, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2101, file: !2102, line: 150, baseType: !1878, size: 640, offset: 2112)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2101, file: !2102, line: 153, baseType: !2150, size: 256, offset: 2752)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1819, size: 256, elements: !499)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2101, file: !2102, line: 159, baseType: !1819, size: 64, offset: 3008)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2101, file: !2102, line: 162, baseType: !316, size: 32, offset: 3072)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2101, file: !2102, line: 164, baseType: !2154, size: 64, offset: 3136)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2102, line: 164, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2101, file: !2102, line: 175, baseType: !2157, size: 32, offset: 3200)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !840, line: 805, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !840, line: 798, size: 32, elements: !2159)
!2159 = !{!2160, !2161}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2158, file: !840, line: 803, baseType: !839, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2158, file: !840, line: 804, baseType: !691, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2101, file: !2102, line: 176, baseType: !311, size: 64, offset: 3264)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2101, file: !2102, line: 176, baseType: !311, size: 64, offset: 3328)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2101, file: !2102, line: 176, baseType: !311, size: 64, offset: 3392)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2101, file: !2102, line: 176, baseType: !311, size: 64, offset: 3456)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2101, file: !2102, line: 177, baseType: !311, size: 64, offset: 3520)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2101, file: !2102, line: 178, baseType: !311, size: 64, offset: 3584)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2101, file: !2102, line: 179, baseType: !1866, size: 128, offset: 3648)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2101, file: !2102, line: 180, baseType: !572, size: 64, offset: 3776)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2101, file: !2102, line: 180, baseType: !572, size: 64, offset: 3840)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2101, file: !2102, line: 180, baseType: !572, size: 64, offset: 3904)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2101, file: !2102, line: 180, baseType: !572, size: 64, offset: 3968)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2101, file: !2102, line: 181, baseType: !572, size: 64, offset: 4032)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2101, file: !2102, line: 181, baseType: !572, size: 64, offset: 4096)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2101, file: !2102, line: 181, baseType: !572, size: 64, offset: 4160)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2101, file: !2102, line: 181, baseType: !572, size: 64, offset: 4224)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2101, file: !2102, line: 182, baseType: !572, size: 64, offset: 4288)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2101, file: !2102, line: 182, baseType: !572, size: 64, offset: 4352)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2101, file: !2102, line: 182, baseType: !572, size: 64, offset: 4416)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2101, file: !2102, line: 182, baseType: !572, size: 64, offset: 4480)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2101, file: !2102, line: 183, baseType: !572, size: 64, offset: 4544)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2101, file: !2102, line: 183, baseType: !572, size: 64, offset: 4608)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2101, file: !2102, line: 184, baseType: !2184, offset: 4672)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2185, line: 12, elements: !705)
!2185 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2101, file: !2102, line: 192, baseType: !313, size: 64, offset: 4672)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2101, file: !2102, line: 203, baseType: !2188, size: 2048, offset: 4736)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2189, size: 2048, elements: !2081)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2190, line: 43, size: 128, elements: !2191)
!2190 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2189, file: !2190, line: 44, baseType: !776, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2189, file: !2190, line: 45, baseType: !776, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2101, file: !2102, line: 220, baseType: !406, size: 8, offset: 6784)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2101, file: !2102, line: 221, baseType: !1560, size: 16, offset: 6800)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2101, file: !2102, line: 222, baseType: !1560, size: 16, offset: 6816)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2101, file: !2102, line: 224, baseType: !1411, size: 64, offset: 6848)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2101, file: !2102, line: 227, baseType: !1528, size: 192, offset: 6912)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2101, file: !2102, line: 233, baseType: !1528, size: 192, offset: 7104)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1572, file: !1573, line: 970, baseType: !2201, size: 64, offset: 9280)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2102, line: 20, size: 16576, elements: !2203)
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2202, file: !2102, line: 21, baseType: !691)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2202, file: !2102, line: 22, baseType: !353, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2202, file: !2102, line: 23, baseType: !1829, size: 128, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2202, file: !2102, line: 24, baseType: !2208, size: 16384, offset: 192)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2209, size: 16384, elements: !734)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2112, line: 49, size: 256, elements: !2210)
!2210 = !{!2211}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2209, file: !2112, line: 50, baseType: !2212, size: 256)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2112, line: 35, size: 256, elements: !2213)
!2213 = !{!2214, !2221, !2222, !2228}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2212, file: !2112, line: 37, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2216, line: 19, baseType: !2217)
!2216 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2216, line: 18, baseType: !2219)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !316}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2212, file: !2112, line: 38, baseType: !572, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2212, file: !2112, line: 44, baseType: !2223, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2216, line: 22, baseType: !2224)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2216, line: 21, baseType: !2226)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2212, file: !2112, line: 46, baseType: !2116, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1572, file: !1573, line: 971, baseType: !2116, size: 64, offset: 9344)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1572, file: !1573, line: 972, baseType: !2116, size: 64, offset: 9408)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1572, file: !1573, line: 974, baseType: !2116, size: 64, offset: 9472)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1572, file: !1573, line: 975, baseType: !2111, size: 192, offset: 9536)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1572, file: !1573, line: 976, baseType: !572, size: 64, offset: 9728)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1572, file: !1573, line: 977, baseType: !774, size: 64, offset: 9792)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1572, file: !1573, line: 978, baseType: !7, size: 32, offset: 9856)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1572, file: !1573, line: 980, baseType: !820, size: 64, offset: 9920)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1572, file: !1573, line: 989, baseType: !2238, size: 128, offset: 9984)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2239, line: 35, size: 128, elements: !2240)
!2239 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2240 = !{!2241, !2242, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2238, file: !2239, line: 36, baseType: !316, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2238, file: !2239, line: 37, baseType: !358, size: 32, offset: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2238, file: !2239, line: 38, baseType: !2244, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2239, line: 23, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1572, file: !1573, line: 992, baseType: !311, size: 64, offset: 10112)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1572, file: !1573, line: 993, baseType: !311, size: 64, offset: 10176)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1572, file: !1573, line: 996, baseType: !691, offset: 10240)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1572, file: !1573, line: 999, baseType: !1219, offset: 10240)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1572, file: !1573, line: 1001, baseType: !2251, size: 64, offset: 10240)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1573, line: 636, size: 64, elements: !2252)
!2252 = !{!2253}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2251, file: !1573, line: 637, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1572, file: !1573, line: 1005, baseType: !1191, size: 128, offset: 10304)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1572, file: !1573, line: 1007, baseType: !1571, size: 64, offset: 10432)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1572, file: !1573, line: 1009, baseType: !2258, size: 64, offset: 10496)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1573, line: 1009, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1572, file: !1573, line: 1043, baseType: !305, size: 64, offset: 10560)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1572, file: !1573, line: 1046, baseType: !2262, size: 64, offset: 10624)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1573, line: 41, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1572, file: !1573, line: 1050, baseType: !2265, size: 64, offset: 10688)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1573, line: 42, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1572, file: !1573, line: 1054, baseType: !2268, size: 64, offset: 10752)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1573, line: 55, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1572, file: !1573, line: 1056, baseType: !2271, size: 64, offset: 10816)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1573, line: 40, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1572, file: !1573, line: 1058, baseType: !2274, size: 64, offset: 10880)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2276, line: 99, size: 704, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2303, !2304}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2275, file: !2276, line: 100, baseType: !1210, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2275, file: !2276, line: 101, baseType: !358, size: 32, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2275, file: !2276, line: 102, baseType: !358, size: 32, offset: 96)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2275, file: !2276, line: 105, baseType: !691, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2275, file: !2276, line: 107, baseType: !524, size: 16, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2275, file: !2276, line: 109, baseType: !1182, size: 128, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2275, file: !2276, line: 110, baseType: !2285, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2276, line: 73, size: 448, elements: !2287)
!2287 = !{!2288, !2291, !2292, !2297, !2302}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2286, file: !2276, line: 74, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2276, line: 74, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2286, file: !2276, line: 75, baseType: !2274, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !2276, line: 83, baseType: !2293, size: 128, offset: 128)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2286, file: !2276, line: 83, size: 128, elements: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2293, file: !2276, line: 84, baseType: !662, size: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2293, file: !2276, line: 85, baseType: !1372, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !2276, line: 87, baseType: !2298, size: 128, offset: 256)
!2298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2286, file: !2276, line: 87, size: 128, elements: !2299)
!2299 = !{!2300, !2301}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2298, file: !2276, line: 88, baseType: !1082, size: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2298, file: !2276, line: 89, baseType: !817, size: 128, align: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2286, file: !2276, line: 92, baseType: !7, size: 32, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2275, file: !2276, line: 111, baseType: !1078, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2275, file: !2276, line: 113, baseType: !2305, size: 256, offset: 448)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2306, line: 102, size: 256, elements: !2307)
!2306 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2307 = !{!2308, !2309, !2310}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2305, file: !2306, line: 103, baseType: !1210, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2305, file: !2306, line: 104, baseType: !662, size: 128, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2305, file: !2306, line: 105, baseType: !2311, size: 64, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2306, line: 21, baseType: !2312)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1572, file: !1573, line: 1061, baseType: !2317, size: 64, offset: 10944)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1573, line: 43, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1572, file: !1573, line: 1064, baseType: !572, size: 64, offset: 11008)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1572, file: !1573, line: 1065, baseType: !2321, size: 64, offset: 11072)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2112, line: 14, baseType: !2323)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2112, line: 12, size: 384, elements: !2324)
!2324 = !{!2325}
!2325 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !2112, line: 13, baseType: !2326, size: 384)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2323, file: !2112, line: 13, size: 384, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2326, file: !2112, line: 13, baseType: !316, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2326, file: !2112, line: 13, baseType: !316, size: 32, offset: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2326, file: !2112, line: 13, baseType: !316, size: 32, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2326, file: !2112, line: 13, baseType: !2332, size: 256, offset: 128)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2333, line: 32, size: 256, elements: !2334)
!2333 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2334 = !{!2335, !2340, !2353, !2359, !2368, !2388, !2393}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2332, file: !2333, line: 37, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2333, line: 34, size: 64, elements: !2337)
!2337 = !{!2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2336, file: !2333, line: 35, baseType: !1808, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2336, file: !2333, line: 36, baseType: !885, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2332, file: !2333, line: 45, baseType: !2341, size: 192)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2333, line: 40, size: 192, elements: !2342)
!2342 = !{!2343, !2345, !2346, !2352}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2341, file: !2333, line: 41, baseType: !2344, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !762, line: 95, baseType: !316)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2341, file: !2333, line: 42, baseType: !316, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2341, file: !2333, line: 43, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2333, line: 11, baseType: !2348)
!2348 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2333, line: 8, size: 64, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2348, file: !2333, line: 9, baseType: !316, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2348, file: !2333, line: 10, baseType: !305, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2341, file: !2333, line: 44, baseType: !316, size: 32, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2332, file: !2333, line: 52, baseType: !2354, size: 128)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2333, line: 48, size: 128, elements: !2355)
!2355 = !{!2356, !2357, !2358}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2354, file: !2333, line: 49, baseType: !1808, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2354, file: !2333, line: 50, baseType: !885, size: 32, offset: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2354, file: !2333, line: 51, baseType: !2347, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2332, file: !2333, line: 61, baseType: !2360, size: 256)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2333, line: 55, size: 256, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2367}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2360, file: !2333, line: 56, baseType: !1808, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2360, file: !2333, line: 57, baseType: !885, size: 32, offset: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2360, file: !2333, line: 58, baseType: !316, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2360, file: !2333, line: 59, baseType: !2366, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !762, line: 94, baseType: !763)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2360, file: !2333, line: 60, baseType: !2366, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2332, file: !2333, line: 95, baseType: !2369, size: 256)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2333, line: 64, size: 256, elements: !2370)
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2369, file: !2333, line: 65, baseType: !305, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !2369, file: !2333, line: 77, baseType: !2373, size: 192, offset: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2369, file: !2333, line: 77, size: 192, elements: !2374)
!2374 = !{!2375, !2376, !2383}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2373, file: !2333, line: 82, baseType: !1560, size: 16)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2373, file: !2333, line: 88, baseType: !2377, size: 192)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2373, file: !2333, line: 84, size: 192, elements: !2378)
!2378 = !{!2379, !2381, !2382}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2377, file: !2333, line: 85, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 64, elements: !385)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2377, file: !2333, line: 86, baseType: !305, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2377, file: !2333, line: 87, baseType: !305, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2373, file: !2333, line: 93, baseType: !2384, size: 96)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2373, file: !2333, line: 90, size: 96, elements: !2385)
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2384, file: !2333, line: 91, baseType: !2380, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2384, file: !2333, line: 92, baseType: !308, size: 32, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2332, file: !2333, line: 101, baseType: !2389, size: 128)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2333, line: 98, size: 128, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2389, file: !2333, line: 99, baseType: !567, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2389, file: !2333, line: 100, baseType: !316, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2332, file: !2333, line: 108, baseType: !2394, size: 128)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2333, line: 104, size: 128, elements: !2395)
!2395 = !{!2396, !2397, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2394, file: !2333, line: 105, baseType: !305, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2394, file: !2333, line: 106, baseType: !316, size: 32, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2394, file: !2333, line: 107, baseType: !7, size: 32, offset: 96)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1572, file: !1573, line: 1067, baseType: !2184, offset: 11136)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1572, file: !1573, line: 1099, baseType: !2401, size: 64, offset: 11136)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1573, line: 56, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1572, file: !1573, line: 1103, baseType: !662, size: 128, offset: 11200)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1572, file: !1573, line: 1104, baseType: !2405, size: 64, offset: 11328)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1573, line: 46, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1572, file: !1573, line: 1105, baseType: !1528, size: 192, offset: 11392)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1572, file: !1573, line: 1106, baseType: !7, size: 32, offset: 11584)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1572, file: !1573, line: 1109, baseType: !2410, size: 128, offset: 11648)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2411, size: 128, elements: !1917)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1573, line: 51, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1572, file: !1573, line: 1110, baseType: !1528, size: 192, offset: 11776)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1572, file: !1573, line: 1111, baseType: !662, size: 128, offset: 11968)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1572, file: !1573, line: 1173, baseType: !2416, size: 64, offset: 12096)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2418, line: 62, size: 256, align: 256, elements: !2419)
!2418 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2419 = !{!2420, !2421, !2422, !2427}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2417, file: !2418, line: 75, baseType: !308, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2417, file: !2418, line: 90, baseType: !308, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2417, file: !2418, line: 124, baseType: !2423, size: 64, offset: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2417, file: !2418, line: 109, size: 64, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2423, file: !2418, line: 110, baseType: !312, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2423, file: !2418, line: 112, baseType: !312, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !2418, line: 144, baseType: !308, size: 32, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1572, file: !1573, line: 1174, baseType: !306, size: 32, offset: 12160)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1572, file: !1573, line: 1179, baseType: !572, size: 64, offset: 12224)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1572, file: !1573, line: 1182, baseType: !2431, size: 128, offset: 12288)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1508, line: 76, size: 128, elements: !2432)
!2432 = !{!2433, !2438, !2439}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2431, file: !1508, line: 85, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2435, line: 7, size: 64, elements: !2436)
!2435 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2434, file: !2435, line: 12, baseType: !1713, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2431, file: !1508, line: 88, baseType: !406, size: 8, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2431, file: !1508, line: 95, baseType: !406, size: 8, offset: 72)
!2440 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1573, line: 1184, baseType: !2441, size: 128, offset: 12416)
!2441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !1573, line: 1184, size: 128, elements: !2442)
!2442 = !{!2443, !2444}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2441, file: !1573, line: 1185, baseType: !353, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2441, file: !1573, line: 1186, baseType: !817, size: 128, align: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1572, file: !1573, line: 1190, baseType: !2446, size: 64, offset: 12544)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1573, line: 53, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1572, file: !1573, line: 1192, baseType: !2449, size: 128, offset: 12608)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1508, line: 64, size: 128, elements: !2450)
!2450 = !{!2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2449, file: !1508, line: 65, baseType: !1164, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2449, file: !1508, line: 67, baseType: !308, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2449, file: !1508, line: 68, baseType: !308, size: 32, offset: 96)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1572, file: !1573, line: 1206, baseType: !316, size: 32, offset: 12736)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1572, file: !1573, line: 1207, baseType: !316, size: 32, offset: 12768)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1572, file: !1573, line: 1209, baseType: !572, size: 64, offset: 12800)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1572, file: !1573, line: 1219, baseType: !311, size: 64, offset: 12864)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1572, file: !1573, line: 1220, baseType: !311, size: 64, offset: 12928)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1572, file: !1573, line: 1317, baseType: !316, size: 32, offset: 12992)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1572, file: !1573, line: 1319, baseType: !1571, size: 64, offset: 13056)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1572, file: !1573, line: 1322, baseType: !2462, size: 64, offset: 13120)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2464, line: 56, size: 512, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2474}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2463, file: !2464, line: 57, baseType: !2462, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2463, file: !2464, line: 58, baseType: !305, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2463, file: !2464, line: 59, baseType: !572, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2464, line: 60, baseType: !572, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2463, file: !2464, line: 61, baseType: !1259, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2463, file: !2464, line: 62, baseType: !7, size: 32, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2463, file: !2464, line: 63, baseType: !2473, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !304, line: 153, baseType: !311)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2463, file: !2464, line: 64, baseType: !2475, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1572, file: !1573, line: 1326, baseType: !353, size: 32, offset: 13184)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1572, file: !1573, line: 1342, baseType: !305, size: 64, offset: 13248)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1572, file: !1573, line: 1343, baseType: !312, size: 64, offset: 13312)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1572, file: !1573, line: 1344, baseType: !311, size: 64, offset: 13376)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1572, file: !1573, line: 1345, baseType: !312, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1572, file: !1573, line: 1346, baseType: !312, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1572, file: !1573, line: 1347, baseType: !312, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1572, file: !1573, line: 1348, baseType: !817, size: 128, align: 64, offset: 13504)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1572, file: !1573, line: 1358, baseType: !2486, size: 34816, offset: 13824)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2487, line: 485, size: 34816, elements: !2488)
!2487 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2488 = !{!2489, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2518, !2519, !2520, !2521, !2522, !2523, !2526, !2527, !2528}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2486, file: !2487, line: 487, baseType: !2490, size: 192)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2491, size: 192, elements: !463)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2492, line: 16, size: 64, elements: !2493)
!2492 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2493 = !{!2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2491, file: !2492, line: 17, baseType: !522, size: 16)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2491, file: !2492, line: 18, baseType: !522, size: 16, offset: 16)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2491, file: !2492, line: 19, baseType: !522, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2491, file: !2492, line: 19, baseType: !522, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2491, file: !2492, line: 19, baseType: !522, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2491, file: !2492, line: 19, baseType: !522, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2491, file: !2492, line: 19, baseType: !522, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2491, file: !2492, line: 20, baseType: !522, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2491, file: !2492, line: 20, baseType: !522, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2491, file: !2492, line: 20, baseType: !522, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2491, file: !2492, line: 20, baseType: !522, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2491, file: !2492, line: 20, baseType: !522, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2491, file: !2492, line: 20, baseType: !522, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2486, file: !2487, line: 491, baseType: !572, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2486, file: !2487, line: 495, baseType: !524, size: 16, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2486, file: !2487, line: 496, baseType: !524, size: 16, offset: 272)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2486, file: !2487, line: 497, baseType: !524, size: 16, offset: 288)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2486, file: !2487, line: 498, baseType: !524, size: 16, offset: 304)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2486, file: !2487, line: 502, baseType: !572, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2486, file: !2487, line: 503, baseType: !572, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2486, file: !2487, line: 514, baseType: !2515, size: 256, offset: 448)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2516, size: 256, elements: !499)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2487, line: 483, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2486, file: !2487, line: 516, baseType: !572, size: 64, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2486, file: !2487, line: 518, baseType: !572, size: 64, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2486, file: !2487, line: 520, baseType: !572, size: 64, offset: 832)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2486, file: !2487, line: 521, baseType: !572, size: 64, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2486, file: !2487, line: 522, baseType: !572, size: 64, offset: 960)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2486, file: !2487, line: 528, baseType: !2524, size: 64, offset: 1024)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2487, line: 10, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2486, file: !2487, line: 535, baseType: !572, size: 64, offset: 1088)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2486, file: !2487, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2486, file: !2487, line: 540, baseType: !2529, size: 33280, offset: 1536)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2530, line: 317, size: 33280, elements: !2531)
!2530 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2531 = !{!2532, !2533, !2534}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2529, file: !2530, line: 330, baseType: !7, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2529, file: !2530, line: 337, baseType: !572, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2529, file: !2530, line: 348, baseType: !2535, size: 32768, offset: 512)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2530, line: 304, size: 32768, elements: !2536)
!2536 = !{!2537, !2552, !2591, !2641, !2654}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2535, file: !2530, line: 305, baseType: !2538, size: 896)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2530, line: 12, size: 896, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2551}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2538, file: !2530, line: 13, baseType: !306, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2538, file: !2530, line: 14, baseType: !306, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2538, file: !2530, line: 15, baseType: !306, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2538, file: !2530, line: 16, baseType: !306, size: 32, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2538, file: !2530, line: 17, baseType: !306, size: 32, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2538, file: !2530, line: 18, baseType: !306, size: 32, offset: 160)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2538, file: !2530, line: 19, baseType: !306, size: 32, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2538, file: !2530, line: 22, baseType: !2548, size: 640, offset: 224)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 640, elements: !2549)
!2549 = !{!2550}
!2550 = !DISubrange(count: 20)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2538, file: !2530, line: 25, baseType: !306, size: 32, offset: 864)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2535, file: !2530, line: 306, baseType: !2553, size: 4096, align: 128)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2530, line: 34, size: 4096, align: 128, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2574, !2575, !2576, !2580, !2582, !2586}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2553, file: !2530, line: 35, baseType: !522, size: 16)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2553, file: !2530, line: 36, baseType: !522, size: 16, offset: 16)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2553, file: !2530, line: 37, baseType: !522, size: 16, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2553, file: !2530, line: 38, baseType: !522, size: 16, offset: 48)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !2530, line: 39, baseType: !2560, size: 128, offset: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2553, file: !2530, line: 39, size: 128, elements: !2561)
!2561 = !{!2562, !2567}
!2562 = !DIDerivedType(tag: DW_TAG_member, scope: !2560, file: !2530, line: 40, baseType: !2563, size: 128)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2560, file: !2530, line: 40, size: 128, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2563, file: !2530, line: 41, baseType: !311, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2563, file: !2530, line: 42, baseType: !311, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !2560, file: !2530, line: 44, baseType: !2568, size: 128)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2560, file: !2530, line: 44, size: 128, elements: !2569)
!2569 = !{!2570, !2571, !2572, !2573}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2568, file: !2530, line: 45, baseType: !306, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2568, file: !2530, line: 46, baseType: !306, size: 32, offset: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2568, file: !2530, line: 47, baseType: !306, size: 32, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2568, file: !2530, line: 48, baseType: !306, size: 32, offset: 96)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2553, file: !2530, line: 51, baseType: !306, size: 32, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2553, file: !2530, line: 52, baseType: !306, size: 32, offset: 224)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2553, file: !2530, line: 55, baseType: !2577, size: 1024, offset: 256)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 1024, elements: !2578)
!2578 = !{!2579}
!2579 = !DISubrange(count: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2553, file: !2530, line: 58, baseType: !2581, size: 2048, offset: 1280)
!2581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 2048, elements: !734)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2553, file: !2530, line: 60, baseType: !2583, size: 384, offset: 3328)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 384, elements: !2584)
!2584 = !{!2585}
!2585 = !DISubrange(count: 12)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !2530, line: 62, baseType: !2587, size: 384, offset: 3712)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2553, file: !2530, line: 62, size: 384, elements: !2588)
!2588 = !{!2589, !2590}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2587, file: !2530, line: 63, baseType: !2583, size: 384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2587, file: !2530, line: 64, baseType: !2583, size: 384)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2535, file: !2530, line: 307, baseType: !2592, size: 1088)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2530, line: 79, size: 1088, elements: !2593)
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2640}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2592, file: !2530, line: 80, baseType: !306, size: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2592, file: !2530, line: 81, baseType: !306, size: 32, offset: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2592, file: !2530, line: 82, baseType: !306, size: 32, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2592, file: !2530, line: 83, baseType: !306, size: 32, offset: 96)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2592, file: !2530, line: 84, baseType: !306, size: 32, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2592, file: !2530, line: 85, baseType: !306, size: 32, offset: 160)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2592, file: !2530, line: 86, baseType: !306, size: 32, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2592, file: !2530, line: 88, baseType: !2548, size: 640, offset: 224)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2592, file: !2530, line: 89, baseType: !382, size: 8, offset: 864)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2592, file: !2530, line: 90, baseType: !382, size: 8, offset: 872)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2592, file: !2530, line: 91, baseType: !382, size: 8, offset: 880)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2592, file: !2530, line: 92, baseType: !382, size: 8, offset: 888)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2592, file: !2530, line: 93, baseType: !382, size: 8, offset: 896)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2592, file: !2530, line: 94, baseType: !382, size: 8, offset: 904)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2592, file: !2530, line: 95, baseType: !2609, size: 64, offset: 960)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2611, line: 11, size: 128, elements: !2612)
!2611 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2612 = !{!2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2610, file: !2611, line: 12, baseType: !567, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2610, file: !2611, line: 13, baseType: !2615, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2617, line: 56, size: 1344, elements: !2618)
!2617 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2618 = !{!2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2616, file: !2617, line: 61, baseType: !572, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2616, file: !2617, line: 62, baseType: !572, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2616, file: !2617, line: 63, baseType: !572, size: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2616, file: !2617, line: 64, baseType: !572, size: 64, offset: 192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2616, file: !2617, line: 65, baseType: !572, size: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2616, file: !2617, line: 66, baseType: !572, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2616, file: !2617, line: 68, baseType: !572, size: 64, offset: 384)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2616, file: !2617, line: 69, baseType: !572, size: 64, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2616, file: !2617, line: 70, baseType: !572, size: 64, offset: 512)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2616, file: !2617, line: 71, baseType: !572, size: 64, offset: 576)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2616, file: !2617, line: 72, baseType: !572, size: 64, offset: 640)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2616, file: !2617, line: 73, baseType: !572, size: 64, offset: 704)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2616, file: !2617, line: 74, baseType: !572, size: 64, offset: 768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2616, file: !2617, line: 75, baseType: !572, size: 64, offset: 832)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2616, file: !2617, line: 76, baseType: !572, size: 64, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2616, file: !2617, line: 81, baseType: !572, size: 64, offset: 960)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2616, file: !2617, line: 83, baseType: !572, size: 64, offset: 1024)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2616, file: !2617, line: 84, baseType: !572, size: 64, offset: 1088)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2616, file: !2617, line: 85, baseType: !572, size: 64, offset: 1152)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2616, file: !2617, line: 86, baseType: !572, size: 64, offset: 1216)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2616, file: !2617, line: 87, baseType: !572, size: 64, offset: 1280)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2592, file: !2530, line: 96, baseType: !306, size: 32, offset: 1024)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2535, file: !2530, line: 308, baseType: !2642, size: 4608, align: 512)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2530, line: 289, size: 4608, align: 512, elements: !2643)
!2643 = !{!2644, !2645, !2652}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2642, file: !2530, line: 290, baseType: !2553, size: 4096, align: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2642, file: !2530, line: 291, baseType: !2646, size: 512, offset: 4096)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2530, line: 268, size: 512, elements: !2647)
!2647 = !{!2648, !2649, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2646, file: !2530, line: 269, baseType: !311, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2646, file: !2530, line: 270, baseType: !311, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2646, file: !2530, line: 271, baseType: !2651, size: 384, offset: 128)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 384, elements: !537)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2642, file: !2530, line: 292, baseType: !2653, offset: 4608)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, elements: !2069)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2535, file: !2530, line: 309, baseType: !2655, size: 32768)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 32768, elements: !2656)
!2656 = !{!2657}
!2657 = !DISubrange(count: 4096)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1568, file: !1166, line: 378, baseType: !2659, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1564, file: !1166, line: 384, baseType: !1850, size: 192, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1415, file: !1166, line: 500, baseType: !691, offset: 6656)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1415, file: !1166, line: 501, baseType: !2663, size: 64, offset: 6656)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1166, line: 387, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1415, file: !1166, line: 516, baseType: !2059, size: 64, offset: 6720)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1415, file: !1166, line: 519, baseType: !804, size: 64, offset: 6784)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1415, file: !1166, line: 521, baseType: !2668, size: 64, offset: 6848)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1166, line: 521, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1415, file: !1166, line: 545, baseType: !358, size: 32, offset: 6912)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1415, file: !1166, line: 548, baseType: !406, size: 8, offset: 6944)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1415, file: !1166, line: 550, baseType: !2673, offset: 6952)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2674, line: 142, elements: !705)
!2674 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1415, file: !1166, line: 554, baseType: !2305, size: 256, offset: 6976)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1415, file: !1166, line: 557, baseType: !306, size: 32, offset: 7232)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1412, file: !1166, line: 565, baseType: !2678, offset: 7296)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, elements: !2679)
!2679 = !{!2680}
!2680 = !DISubrange(count: -1)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1408, file: !1166, line: 151, baseType: !358, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1401, file: !1166, line: 156, baseType: !691, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1166, line: 159, baseType: !2684, size: 128)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1166, line: 159, size: 128, elements: !2685)
!2685 = !{!2686, !2689}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2684, file: !1166, line: 161, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1166, line: 161, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2684, file: !1166, line: 162, baseType: !305, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1170, file: !1166, line: 176, baseType: !817, size: 128, align: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !1166, line: 179, baseType: !2692, size: 32, offset: 384)
!2692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1165, file: !1166, line: 179, size: 32, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2692, file: !1166, line: 184, baseType: !358, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2692, file: !1166, line: 192, baseType: !7, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2692, file: !1166, line: 194, baseType: !7, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2692, file: !1166, line: 195, baseType: !316, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1165, file: !1166, line: 199, baseType: !358, size: 32, offset: 416)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1100, file: !208, line: 1964, baseType: !2700, size: 64, offset: 1344)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!567, !1039, !2703}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2705, line: 12, size: 256, elements: !2706)
!2705 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2706 = !{!2707, !2708, !2709, !2710, !2711}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2704, file: !2705, line: 13, baseType: !303, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2704, file: !2705, line: 16, baseType: !316, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2704, file: !2705, line: 23, baseType: !572, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2704, file: !2705, line: 30, baseType: !572, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2704, file: !2705, line: 33, baseType: !2712, size: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1166, line: 27, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1100, file: !208, line: 1966, baseType: !2700, size: 64, offset: 1408)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1040, file: !208, line: 1424, baseType: !2716, size: 64, offset: 448)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2719)
!2719 = !{!2720, !2766, !2770, !2774, !2775, !2776, !2777, !2778, !2783, !2788, !2792}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2718, file: !202, line: 323, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!316, !2724}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2726)
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2751, !2752, !2753}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2725, file: !202, line: 295, baseType: !1082, size: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2725, file: !202, line: 296, baseType: !662, size: 128, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2725, file: !202, line: 297, baseType: !662, size: 128, offset: 256)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2725, file: !202, line: 298, baseType: !662, size: 128, offset: 384)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2725, file: !202, line: 299, baseType: !1528, size: 192, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2725, file: !202, line: 300, baseType: !691, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2725, file: !202, line: 301, baseType: !358, size: 32, offset: 704)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2725, file: !202, line: 302, baseType: !1039, size: 64, offset: 768)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2725, file: !202, line: 303, baseType: !2736, size: 64, offset: 832)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2737)
!2737 = !{!2738, !2750}
!2738 = !DIDerivedType(tag: DW_TAG_member, scope: !2736, file: !202, line: 69, baseType: !2739, size: 32)
!2739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2736, file: !202, line: 69, size: 32, elements: !2740)
!2740 = !{!2741, !2742, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2739, file: !202, line: 70, baseType: !879, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2739, file: !202, line: 71, baseType: !887, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2739, file: !202, line: 72, baseType: !2744, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2745, line: 24, baseType: !2746)
!2745 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2745, line: 22, size: 32, elements: !2747)
!2747 = !{!2748}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2746, file: !2745, line: 23, baseType: !2749, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2745, line: 20, baseType: !885)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2736, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2725, file: !202, line: 304, baseType: !973, size: 64, offset: 896)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2725, file: !202, line: 305, baseType: !572, size: 64, offset: 960)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2725, file: !202, line: 306, baseType: !2754, size: 576, offset: 1024)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2755)
!2755 = !{!2756, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2754, file: !202, line: 206, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !498)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2754, file: !202, line: 207, baseType: !2757, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2754, file: !202, line: 208, baseType: !2757, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2754, file: !202, line: 209, baseType: !2757, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2754, file: !202, line: 210, baseType: !2757, size: 64, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2754, file: !202, line: 211, baseType: !2757, size: 64, offset: 320)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2754, file: !202, line: 212, baseType: !2757, size: 64, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2754, file: !202, line: 213, baseType: !980, size: 64, offset: 448)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2754, file: !202, line: 214, baseType: !980, size: 64, offset: 512)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2718, file: !202, line: 324, baseType: !2767, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!2724, !1039, !316}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2718, file: !202, line: 325, baseType: !2771, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2724}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2718, file: !202, line: 326, baseType: !2721, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2718, file: !202, line: 327, baseType: !2721, size: 64, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2718, file: !202, line: 328, baseType: !2721, size: 64, offset: 320)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2718, file: !202, line: 329, baseType: !1128, size: 64, offset: 384)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2718, file: !202, line: 332, baseType: !2779, size: 64, offset: 448)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!2782, !873}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2718, file: !202, line: 333, baseType: !2784, size: 64, offset: 512)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!316, !873, !2787}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2718, file: !202, line: 335, baseType: !2789, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!316, !873, !2782}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2718, file: !202, line: 337, baseType: !2793, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!316, !1039, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1040, file: !208, line: 1425, baseType: !2798, size: 64, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2800)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2801)
!2801 = !{!2802, !2806, !2807, !2811, !2812, !2813, !2828, !2851, !2855, !2856, !2879}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2800, file: !202, line: 429, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!316, !1039, !316, !316, !989}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2800, file: !202, line: 430, baseType: !1128, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2800, file: !202, line: 431, baseType: !2808, size: 64, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!316, !1039, !7}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2800, file: !202, line: 432, baseType: !2808, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2800, file: !202, line: 433, baseType: !1128, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2800, file: !202, line: 434, baseType: !2814, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!316, !1039, !316, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2819)
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2818, file: !202, line: 416, baseType: !316, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2818, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2818, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2818, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2818, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2818, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2818, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2818, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2800, file: !202, line: 435, baseType: !2829, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!316, !1039, !2736, !2832}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2833, file: !202, line: 344, baseType: !316, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2833, file: !202, line: 345, baseType: !311, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2833, file: !202, line: 346, baseType: !311, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2833, file: !202, line: 347, baseType: !311, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2833, file: !202, line: 348, baseType: !311, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2833, file: !202, line: 349, baseType: !311, size: 64, offset: 320)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2833, file: !202, line: 350, baseType: !311, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2833, file: !202, line: 351, baseType: !1216, size: 64, offset: 448)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2833, file: !202, line: 353, baseType: !1216, size: 64, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2833, file: !202, line: 354, baseType: !316, size: 32, offset: 576)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2833, file: !202, line: 355, baseType: !316, size: 32, offset: 608)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2833, file: !202, line: 356, baseType: !311, size: 64, offset: 640)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2833, file: !202, line: 357, baseType: !311, size: 64, offset: 704)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2833, file: !202, line: 358, baseType: !311, size: 64, offset: 768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2833, file: !202, line: 359, baseType: !1216, size: 64, offset: 832)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2833, file: !202, line: 360, baseType: !316, size: 32, offset: 896)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2800, file: !202, line: 436, baseType: !2852, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!316, !1039, !2796, !2832}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2800, file: !202, line: 438, baseType: !2829, size: 64, offset: 512)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2800, file: !202, line: 439, baseType: !2857, size: 64, offset: 576)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!316, !1039, !2860}
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2862)
!2862 = !{!2863, !2864}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2861, file: !202, line: 410, baseType: !7, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2861, file: !202, line: 411, baseType: !2865, size: 1344, offset: 64)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2866, size: 1344, elements: !463)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2878}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2866, file: !202, line: 396, baseType: !7, size: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2866, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2866, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2866, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2866, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2866, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2866, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2866, file: !202, line: 404, baseType: !313, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2866, file: !202, line: 405, baseType: !2877, size: 64, offset: 320)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !304, line: 126, baseType: !311)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2866, file: !202, line: 406, baseType: !2877, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2800, file: !202, line: 440, baseType: !2808, size: 64, offset: 640)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1040, file: !208, line: 1426, baseType: !2881, size: 64, offset: 576)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2883)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1040, file: !208, line: 1427, baseType: !572, size: 64, offset: 640)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1040, file: !208, line: 1428, baseType: !572, size: 64, offset: 704)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1040, file: !208, line: 1429, baseType: !572, size: 64, offset: 768)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1040, file: !208, line: 1430, baseType: !834, size: 64, offset: 832)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1040, file: !208, line: 1431, baseType: !1206, size: 256, offset: 896)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1040, file: !208, line: 1432, baseType: !316, size: 32, offset: 1152)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1040, file: !208, line: 1433, baseType: !358, size: 32, offset: 1184)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1040, file: !208, line: 1437, baseType: !2892, size: 64, offset: 1216)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2895)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1040, file: !208, line: 1449, baseType: !2897, size: 64, offset: 1280)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !850, line: 34, size: 64, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2897, file: !850, line: 35, baseType: !853, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1040, file: !208, line: 1450, baseType: !662, size: 128, offset: 1344)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1040, file: !208, line: 1451, baseType: !2902, size: 64, offset: 1472)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1040, file: !208, line: 1452, baseType: !2271, size: 64, offset: 1536)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1040, file: !208, line: 1453, baseType: !2906, size: 64, offset: 1600)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1040, file: !208, line: 1454, baseType: !1082, size: 128, offset: 1664)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1040, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1040, file: !208, line: 1456, baseType: !2911, size: 2432, offset: 1856)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2917, !2949}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2911, file: !202, line: 519, baseType: !7, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2911, file: !202, line: 520, baseType: !1206, size: 256, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2911, file: !202, line: 521, baseType: !2916, size: 192, offset: 320)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 192, elements: !463)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2911, file: !202, line: 522, baseType: !2918, size: 1728, offset: 512)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2919, size: 1728, elements: !463)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2920)
!2920 = !{!2921, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2919, file: !202, line: 223, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2924)
!2924 = !{!2925, !2926, !2939, !2940}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2923, file: !202, line: 444, baseType: !316, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2923, file: !202, line: 445, baseType: !2927, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2930)
!2930 = !{!2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2929, file: !202, line: 311, baseType: !1128, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2929, file: !202, line: 312, baseType: !1128, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2929, file: !202, line: 313, baseType: !1128, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2929, file: !202, line: 314, baseType: !1128, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2929, file: !202, line: 315, baseType: !2721, size: 64, offset: 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2929, file: !202, line: 316, baseType: !2721, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2929, file: !202, line: 317, baseType: !2721, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2929, file: !202, line: 318, baseType: !2793, size: 64, offset: 448)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2923, file: !202, line: 446, baseType: !1073, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2923, file: !202, line: 447, baseType: !2922, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2919, file: !202, line: 224, baseType: !316, size: 32, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2919, file: !202, line: 226, baseType: !662, size: 128, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2919, file: !202, line: 227, baseType: !572, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2919, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2919, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2919, file: !202, line: 230, baseType: !2757, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2919, file: !202, line: 231, baseType: !2757, size: 64, offset: 448)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2919, file: !202, line: 232, baseType: !305, size: 64, offset: 512)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2911, file: !202, line: 523, baseType: !2950, size: 192, offset: 2240)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2927, size: 192, elements: !463)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1040, file: !208, line: 1458, baseType: !2952, size: 2112, offset: 4288)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2952, file: !208, line: 1411, baseType: !316, size: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2952, file: !208, line: 1412, baseType: !1829, size: 128, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2952, file: !208, line: 1413, baseType: !2957, size: 1920, offset: 192)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2958, size: 1920, elements: !463)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2959, line: 12, size: 640, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2960 = !{!2961, !2969, !2970, !2975, !2976}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2958, file: !2959, line: 13, baseType: !2962, size: 320)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2963, line: 17, size: 320, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2962, file: !2963, line: 18, baseType: !316, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2962, file: !2963, line: 19, baseType: !316, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2962, file: !2963, line: 20, baseType: !1829, size: 128, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2962, file: !2963, line: 22, baseType: !817, size: 128, align: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2958, file: !2959, line: 14, baseType: !408, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2958, file: !2959, line: 15, baseType: !2971, size: 64, offset: 384)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2972, line: 16, size: 64, elements: !2973)
!2972 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2971, file: !2972, line: 17, baseType: !1571, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2958, file: !2959, line: 16, baseType: !1829, size: 128, offset: 448)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2958, file: !2959, line: 17, baseType: !358, size: 32, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1040, file: !208, line: 1465, baseType: !305, size: 64, offset: 6400)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1040, file: !208, line: 1468, baseType: !306, size: 32, offset: 6464)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1040, file: !208, line: 1470, baseType: !980, size: 64, offset: 6528)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1040, file: !208, line: 1471, baseType: !980, size: 64, offset: 6592)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1040, file: !208, line: 1473, baseType: !308, size: 32, offset: 6656)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1040, file: !208, line: 1474, baseType: !2983, size: 64, offset: 6720)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1040, file: !208, line: 1477, baseType: !2986, size: 256, offset: 6784)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 256, elements: !2578)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1040, file: !208, line: 1478, baseType: !2988, size: 128, offset: 7040)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2989, line: 18, baseType: !2990)
!2989 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2989, line: 16, size: 128, elements: !2991)
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2990, file: !2989, line: 17, baseType: !2993, size: 128)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 128, elements: !2081)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1040, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1040, file: !208, line: 1481, baseType: !2996, size: 32, offset: 7200)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !304, line: 150, baseType: !7)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1040, file: !208, line: 1487, baseType: !1528, size: 192, offset: 7232)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1040, file: !208, line: 1493, baseType: !669, size: 64, offset: 7424)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1040, file: !208, line: 1495, baseType: !3000, size: 64, offset: 7488)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3002)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !832, line: 135, size: 1024, align: 512, elements: !3003)
!3003 = !{!3004, !3008, !3009, !3016, !3022, !3026, !3030, !3034, !3035, !3039, !3043, !3048, !3052}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3002, file: !832, line: 136, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!316, !834, !7}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3002, file: !832, line: 137, baseType: !3005, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3002, file: !832, line: 138, baseType: !3010, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!316, !3013, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3002, file: !832, line: 139, baseType: !3017, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!316, !3013, !7, !669, !3020}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3002, file: !832, line: 141, baseType: !3023, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!316, !3013}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3002, file: !832, line: 142, baseType: !3027, size: 64, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!316, !834}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3002, file: !832, line: 143, baseType: !3031, size: 64, offset: 384)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !834}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3002, file: !832, line: 144, baseType: !3031, size: 64, offset: 448)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3002, file: !832, line: 145, baseType: !3036, size: 64, offset: 512)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !834, !873}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3002, file: !832, line: 146, baseType: !3040, size: 64, offset: 576)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!644, !834, !644, !316}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3002, file: !832, line: 147, baseType: !3044, size: 64, offset: 640)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!830, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3002, file: !832, line: 148, baseType: !3049, size: 64, offset: 704)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!316, !989, !406}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3002, file: !832, line: 149, baseType: !3053, size: 64, offset: 768)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!834, !834, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1040, file: !208, line: 1500, baseType: !316, size: 32, offset: 7552)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1040, file: !208, line: 1502, baseType: !3060, size: 448, offset: 7616)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2705, line: 60, size: 448, elements: !3061)
!3061 = !{!3062, !3067, !3068, !3069, !3070, !3071, !3072}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3060, file: !2705, line: 61, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!572, !3066, !2703}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3060, file: !2705, line: 63, baseType: !3063, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3060, file: !2705, line: 66, baseType: !567, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3060, file: !2705, line: 67, baseType: !316, size: 32, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3060, file: !2705, line: 68, baseType: !7, size: 32, offset: 224)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3060, file: !2705, line: 71, baseType: !662, size: 128, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3060, file: !2705, line: 77, baseType: !3073, size: 64, offset: 384)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1040, file: !208, line: 1505, baseType: !1210, size: 64, offset: 8064)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1040, file: !208, line: 1508, baseType: !1210, size: 64, offset: 8128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1040, file: !208, line: 1511, baseType: !316, size: 32, offset: 8192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1040, file: !208, line: 1514, baseType: !1346, size: 32, offset: 8224)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1040, file: !208, line: 1517, baseType: !3079, size: 64, offset: 8256)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2306, line: 18, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1040, file: !208, line: 1518, baseType: !1078, size: 64, offset: 8320)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1040, file: !208, line: 1525, baseType: !2059, size: 64, offset: 8384)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1040, file: !208, line: 1532, baseType: !3084, size: 64, offset: 8448)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3085, line: 52, size: 64, elements: !3086)
!3085 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3086 = !{!3087}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3084, file: !3085, line: 53, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3085, line: 40, size: 256, elements: !3090)
!3090 = !{!3091, !3092, !3097}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3089, file: !3085, line: 42, baseType: !691)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3089, file: !3085, line: 44, baseType: !3093, size: 192)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3085, line: 28, size: 192, elements: !3094)
!3094 = !{!3095, !3096}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3093, file: !3085, line: 29, baseType: !662, size: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3093, file: !3085, line: 31, baseType: !567, size: 64, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3089, file: !3085, line: 49, baseType: !567, size: 64, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1040, file: !208, line: 1533, baseType: !3084, size: 64, offset: 8512)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1040, file: !208, line: 1534, baseType: !817, size: 128, align: 64, offset: 8576)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1040, file: !208, line: 1535, baseType: !2305, size: 256, offset: 8704)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1040, file: !208, line: 1537, baseType: !1528, size: 192, offset: 8960)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1040, file: !208, line: 1542, baseType: !316, size: 32, offset: 9152)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1040, file: !208, line: 1545, baseType: !691, offset: 9184)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1040, file: !208, line: 1546, baseType: !662, size: 128, offset: 9216)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1040, file: !208, line: 1548, baseType: !691, offset: 9344)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1040, file: !208, line: 1549, baseType: !662, size: 128, offset: 9344)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !874, file: !208, line: 624, baseType: !1177, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !874, file: !208, line: 631, baseType: !572, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !208, line: 639, baseType: !3110, size: 32, offset: 384)
!3110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !208, line: 639, size: 32, elements: !3111)
!3111 = !{!3112, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3110, file: !208, line: 640, baseType: !3113, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3110, file: !208, line: 641, baseType: !7, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !874, file: !208, line: 643, baseType: !955, size: 32, offset: 416)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !874, file: !208, line: 644, baseType: !973, size: 64, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !874, file: !208, line: 645, baseType: !976, size: 128, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !874, file: !208, line: 646, baseType: !976, size: 128, offset: 640)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !874, file: !208, line: 647, baseType: !976, size: 128, offset: 768)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !874, file: !208, line: 648, baseType: !691, offset: 896)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !874, file: !208, line: 649, baseType: !524, size: 16, offset: 896)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !874, file: !208, line: 650, baseType: !382, size: 8, offset: 912)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !874, file: !208, line: 651, baseType: !382, size: 8, offset: 920)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !874, file: !208, line: 652, baseType: !2877, size: 64, offset: 960)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !874, file: !208, line: 659, baseType: !572, size: 64, offset: 1024)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !874, file: !208, line: 660, baseType: !1206, size: 256, offset: 1088)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !874, file: !208, line: 662, baseType: !572, size: 64, offset: 1344)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !874, file: !208, line: 663, baseType: !572, size: 64, offset: 1408)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !874, file: !208, line: 665, baseType: !1082, size: 128, offset: 1472)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !874, file: !208, line: 666, baseType: !662, size: 128, offset: 1600)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !874, file: !208, line: 675, baseType: !662, size: 128, offset: 1728)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !874, file: !208, line: 676, baseType: !662, size: 128, offset: 1856)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !874, file: !208, line: 677, baseType: !662, size: 128, offset: 1984)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !208, line: 678, baseType: !3135, size: 128, offset: 2112)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !208, line: 678, size: 128, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3135, file: !208, line: 679, baseType: !1078, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3135, file: !208, line: 680, baseType: !817, size: 128, align: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !874, file: !208, line: 682, baseType: !1212, size: 64, offset: 2240)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !874, file: !208, line: 683, baseType: !1212, size: 64, offset: 2304)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !874, file: !208, line: 684, baseType: !358, size: 32, offset: 2368)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !874, file: !208, line: 685, baseType: !358, size: 32, offset: 2400)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !874, file: !208, line: 686, baseType: !358, size: 32, offset: 2432)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !874, file: !208, line: 688, baseType: !358, size: 32, offset: 2464)
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !208, line: 690, baseType: !3146, size: 64, offset: 2496)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !208, line: 690, size: 64, elements: !3147)
!3147 = !{!3148, !3380}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3146, file: !208, line: 691, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3151)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !3152)
!3152 = !{!3153, !3154, !3158, !3163, !3167, !3168, !3169, !3173, !3186, !3187, !3204, !3208, !3209, !3213, !3214, !3218, !3223, !3224, !3228, !3232, !3340, !3344, !3345, !3349, !3350, !3354, !3358, !3363, !3367, !3371, !3375, !3379}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3151, file: !208, line: 1823, baseType: !1073, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3151, file: !208, line: 1824, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!973, !804, !973, !316}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3151, file: !208, line: 1825, baseType: !3159, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!760, !804, !644, !774, !3162}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3151, file: !208, line: 1826, baseType: !3164, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!760, !804, !669, !774, !3162}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3151, file: !208, line: 1827, baseType: !1283, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3151, file: !208, line: 1828, baseType: !1283, size: 64, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3151, file: !208, line: 1829, baseType: !3170, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!316, !1286, !406}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3151, file: !208, line: 1830, baseType: !3174, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!316, !804, !3177}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3179)
!3179 = !{!3180, !3185}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3178, file: !208, line: 1777, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3182)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!316, !3177, !669, !316, !973, !311, !7}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3178, file: !208, line: 1778, baseType: !973, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3151, file: !208, line: 1831, baseType: !3174, size: 64, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3151, file: !208, line: 1832, baseType: !3188, size: 64, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!3191, !804, !3193}
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3192, line: 52, baseType: !7)
!3192 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3195, line: 43, size: 128, elements: !3196)
!3195 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3196 = !{!3197, !3203}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3194, file: !3195, line: 44, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3195, line: 37, baseType: !3199)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !804, !3202, !3193}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3194, file: !3195, line: 45, baseType: !3191, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3151, file: !208, line: 1833, baseType: !3205, size: 64, offset: 640)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!567, !804, !7, !572}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3151, file: !208, line: 1834, baseType: !3205, size: 64, offset: 704)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3151, file: !208, line: 1835, baseType: !3210, size: 64, offset: 768)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!316, !804, !1418}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3151, file: !208, line: 1836, baseType: !572, size: 64, offset: 832)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3151, file: !208, line: 1837, baseType: !3215, size: 64, offset: 896)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!316, !873, !804}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3151, file: !208, line: 1838, baseType: !3219, size: 64, offset: 960)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!316, !804, !3222}
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !305)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3151, file: !208, line: 1839, baseType: !3215, size: 64, offset: 1024)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3151, file: !208, line: 1840, baseType: !3225, size: 64, offset: 1088)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!316, !804, !973, !973, !316}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3151, file: !208, line: 1841, baseType: !3229, size: 64, offset: 1152)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!316, !316, !804, !316}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3151, file: !208, line: 1842, baseType: !3233, size: 64, offset: 1216)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!316, !804, !316, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3270, !3271, !3272, !3285, !3316}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3237, file: !208, line: 1063, baseType: !3236, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3237, file: !208, line: 1064, baseType: !662, size: 128, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3237, file: !208, line: 1065, baseType: !1082, size: 128, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3237, file: !208, line: 1066, baseType: !662, size: 128, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3237, file: !208, line: 1069, baseType: !662, size: 128, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3237, file: !208, line: 1072, baseType: !3222, size: 64, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3237, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3237, file: !208, line: 1074, baseType: !384, size: 8, offset: 672)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3237, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3237, file: !208, line: 1076, baseType: !316, size: 32, offset: 736)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3237, file: !208, line: 1077, baseType: !1829, size: 128, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3237, file: !208, line: 1078, baseType: !804, size: 64, offset: 896)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3237, file: !208, line: 1079, baseType: !973, size: 64, offset: 960)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3237, file: !208, line: 1080, baseType: !973, size: 64, offset: 1024)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3237, file: !208, line: 1082, baseType: !3254, size: 64, offset: 1088)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3256)
!3256 = !{!3257, !3265, !3266, !3267, !3268, !3269}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3255, file: !208, line: 1315, baseType: !3258)
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3259, line: 20, baseType: !3260)
!3259 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3259, line: 11, elements: !3261)
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3260, file: !3259, line: 12, baseType: !3263)
!3263 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !703, line: 33, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 31, elements: !705)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3255, file: !208, line: 1316, baseType: !316, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3255, file: !208, line: 1317, baseType: !316, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3255, file: !208, line: 1318, baseType: !3254, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3255, file: !208, line: 1319, baseType: !804, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3255, file: !208, line: 1320, baseType: !817, size: 128, align: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3237, file: !208, line: 1084, baseType: !572, size: 64, offset: 1152)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3237, file: !208, line: 1085, baseType: !572, size: 64, offset: 1216)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3237, file: !208, line: 1087, baseType: !3273, size: 64, offset: 1280)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3276)
!3276 = !{!3277, !3281}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3275, file: !208, line: 1012, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3236, !3236}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3275, file: !208, line: 1013, baseType: !3282, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !3236}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3237, file: !208, line: 1088, baseType: !3286, size: 64, offset: 1344)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3288)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3289)
!3289 = !{!3290, !3294, !3298, !3299, !3303, !3307, !3311, !3315}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3288, file: !208, line: 1017, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!3222, !3222}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3288, file: !208, line: 1018, baseType: !3295, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{null, !3222}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3288, file: !208, line: 1019, baseType: !3282, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3288, file: !208, line: 1020, baseType: !3300, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!316, !3236, !316}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3288, file: !208, line: 1021, baseType: !3304, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!406, !3236}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3288, file: !208, line: 1022, baseType: !3308, size: 64, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!316, !3236, !316, !665}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3288, file: !208, line: 1023, baseType: !3312, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3236, !1260}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3288, file: !208, line: 1024, baseType: !3304, size: 64, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3237, file: !208, line: 1097, baseType: !3317, size: 256, offset: 1408)
!3317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3237, file: !208, line: 1089, size: 256, elements: !3318)
!3318 = !{!3319, !3328, !3334}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3317, file: !208, line: 1090, baseType: !3320, size: 256)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3321, line: 10, size: 256, elements: !3322)
!3321 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3322 = !{!3323, !3324, !3327}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3320, file: !3321, line: 11, baseType: !306, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3320, file: !3321, line: 12, baseType: !3325, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3321, line: 5, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3320, file: !3321, line: 13, baseType: !662, size: 128, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3317, file: !208, line: 1091, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3321, line: 17, size: 64, elements: !3330)
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3329, file: !3321, line: 18, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3321, line: 16, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3317, file: !208, line: 1096, baseType: !3335, size: 192)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !208, line: 1092, size: 192, elements: !3336)
!3336 = !{!3337, !3338, !3339}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3335, file: !208, line: 1093, baseType: !662, size: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3335, file: !208, line: 1094, baseType: !316, size: 32, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3335, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3151, file: !208, line: 1843, baseType: !3341, size: 64, offset: 1280)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!760, !804, !1164, !316, !774, !3162, !316}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3151, file: !208, line: 1844, baseType: !1458, size: 64, offset: 1344)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3151, file: !208, line: 1845, baseType: !3346, size: 64, offset: 1408)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!316, !316}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3151, file: !208, line: 1846, baseType: !3233, size: 64, offset: 1472)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3151, file: !208, line: 1847, baseType: !3351, size: 64, offset: 1536)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!760, !2446, !804, !3162, !774, !7}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3151, file: !208, line: 1848, baseType: !3355, size: 64, offset: 1600)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!760, !804, !3162, !2446, !774, !7}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3151, file: !208, line: 1849, baseType: !3359, size: 64, offset: 1664)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!316, !804, !567, !3362, !1260}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3151, file: !208, line: 1850, baseType: !3364, size: 64, offset: 1728)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!567, !804, !316, !973, !973}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3151, file: !208, line: 1852, baseType: !3368, size: 64, offset: 1792)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !1154, !804}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3151, file: !208, line: 1856, baseType: !3372, size: 64, offset: 1856)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!760, !804, !973, !804, !973, !774, !7}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3151, file: !208, line: 1858, baseType: !3376, size: 64, offset: 1920)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!973, !804, !973, !804, !973, !973, !7}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3151, file: !208, line: 1861, baseType: !3225, size: 64, offset: 1984)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3146, file: !208, line: 692, baseType: !1107, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !874, file: !208, line: 694, baseType: !3382, size: 64, offset: 2560)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3383, file: !208, line: 1101, baseType: !691)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3383, file: !208, line: 1102, baseType: !662, size: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3383, file: !208, line: 1103, baseType: !662, size: 128, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3383, file: !208, line: 1104, baseType: !662, size: 128, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !874, file: !208, line: 695, baseType: !1178, size: 1216, align: 64, offset: 2624)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !874, file: !208, line: 696, baseType: !662, size: 128, offset: 3840)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !208, line: 697, baseType: !3392, size: 64, offset: 3968)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !208, line: 697, size: 64, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3407, !3408}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3392, file: !208, line: 698, baseType: !2446, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3392, file: !208, line: 699, baseType: !2902, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3392, file: !208, line: 700, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3399, line: 14, size: 832, elements: !3400)
!3399 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3398, file: !3399, line: 15, baseType: !678, size: 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3398, file: !3399, line: 16, baseType: !1073, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3398, file: !3399, line: 17, baseType: !3149, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3398, file: !3399, line: 18, baseType: !662, size: 128, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3398, file: !3399, line: 19, baseType: !955, size: 32, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3398, file: !3399, line: 20, baseType: !7, size: 32, offset: 800)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3392, file: !208, line: 701, baseType: !644, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3392, file: !208, line: 702, baseType: !7, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !874, file: !208, line: 705, baseType: !308, size: 32, offset: 4032)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !874, file: !208, line: 708, baseType: !308, size: 32, offset: 4064)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !874, file: !208, line: 709, baseType: !2983, size: 64, offset: 4096)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !874, file: !208, line: 720, baseType: !305, size: 64, offset: 4160)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !835, file: !832, line: 98, baseType: !3414, size: 256, offset: 448)
!3414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !2578)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !835, file: !832, line: 101, baseType: !3416, size: 32, offset: 704)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3417, line: 25, size: 32, elements: !3418)
!3417 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3418 = !{!3419}
!3419 = !DIDerivedType(tag: DW_TAG_member, scope: !3416, file: !3417, line: 26, baseType: !3420, size: 32)
!3420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3416, file: !3417, line: 26, size: 32, elements: !3421)
!3421 = !{!3422}
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !3417, line: 30, baseType: !3423, size: 32)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3420, file: !3417, line: 30, size: 32, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3423, file: !3417, line: 31, baseType: !691)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3423, file: !3417, line: 32, baseType: !316, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !835, file: !832, line: 102, baseType: !3000, size: 64, offset: 768)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !835, file: !832, line: 103, baseType: !1039, size: 64, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !835, file: !832, line: 104, baseType: !572, size: 64, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !835, file: !832, line: 105, baseType: !305, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !832, line: 107, baseType: !3432, size: 128, offset: 1024)
!3432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !832, line: 107, size: 128, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3432, file: !832, line: 108, baseType: !662, size: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3432, file: !832, line: 109, baseType: !3202, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !835, file: !832, line: 111, baseType: !662, size: 128, offset: 1152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !835, file: !832, line: 112, baseType: !662, size: 128, offset: 1280)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !835, file: !832, line: 120, baseType: !3439, size: 128, offset: 1408)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !832, line: 116, size: 128, elements: !3440)
!3440 = !{!3441, !3442, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3439, file: !832, line: 117, baseType: !1082, size: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3439, file: !832, line: 118, baseType: !849, size: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3439, file: !832, line: 119, baseType: !817, size: 128, align: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !805, file: !208, line: 922, baseType: !873, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !805, file: !208, line: 923, baseType: !3149, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !805, file: !208, line: 929, baseType: !691, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !805, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !805, file: !208, line: 931, baseType: !1210, size: 64, offset: 448)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !805, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !805, file: !208, line: 933, baseType: !2996, size: 32, offset: 544)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !805, file: !208, line: 934, baseType: !1528, size: 192, offset: 576)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !805, file: !208, line: 935, baseType: !973, size: 64, offset: 768)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !805, file: !208, line: 936, baseType: !3454, size: 192, offset: 832)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !208, line: 886, baseType: !3258)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3454, file: !208, line: 887, baseType: !1819, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3454, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3454, file: !208, line: 889, baseType: !879, size: 32, offset: 96)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3454, file: !208, line: 889, baseType: !879, size: 32, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3454, file: !208, line: 890, baseType: !316, size: 32, offset: 160)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !805, file: !208, line: 937, baseType: !1895, size: 64, offset: 1024)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !805, file: !208, line: 938, baseType: !3464, size: 256, offset: 1088)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3464, file: !208, line: 897, baseType: !572, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3464, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3464, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3464, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3464, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3464, file: !208, line: 904, baseType: !973, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !805, file: !208, line: 940, baseType: !311, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !805, file: !208, line: 945, baseType: !305, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !805, file: !208, line: 949, baseType: !662, size: 128, offset: 1472)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !805, file: !208, line: 950, baseType: !662, size: 128, offset: 1600)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !805, file: !208, line: 952, baseType: !1177, size: 64, offset: 1728)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !805, file: !208, line: 953, baseType: !1346, size: 32, offset: 1792)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !805, file: !208, line: 954, baseType: !1346, size: 32, offset: 1824)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !795, file: !754, line: 174, baseType: !801, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !795, file: !754, line: 176, baseType: !3481, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!316, !804, !684, !794, !1418}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !783, file: !754, line: 90, baseType: !778, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !783, file: !754, line: 91, baseType: !3486, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !744, file: !679, line: 143, baseType: !3488, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!3491, !684}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3494)
!3494 = !{!3495, !3496, !3500, !3504, !3510, !3514}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3493, file: !225, line: 40, baseType: !224, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3493, file: !225, line: 41, baseType: !3497, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!406}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3493, file: !225, line: 42, baseType: !3501, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!305}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3493, file: !225, line: 43, baseType: !3505, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!2475, !3508}
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3493, file: !225, line: 44, baseType: !3511, size: 64, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!2475}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3493, file: !225, line: 45, baseType: !912, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !744, file: !679, line: 144, baseType: !3516, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!2475, !684}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !744, file: !679, line: 145, baseType: !3520, size: 64, offset: 384)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !684, !3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !678, file: !679, line: 70, baseType: !3526, size: 64, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1059, line: 123, size: 1024, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3657, !3658, !3659, !3660, !3661}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3527, file: !1059, line: 124, baseType: !358, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3527, file: !1059, line: 125, baseType: !358, size: 32, offset: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3527, file: !1059, line: 135, baseType: !3526, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3527, file: !1059, line: 136, baseType: !669, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3527, file: !1059, line: 138, baseType: !1199, size: 192, align: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3527, file: !1059, line: 140, baseType: !2475, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3527, file: !1059, line: 141, baseType: !7, size: 32, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !3527, file: !1059, line: 142, baseType: !3537, size: 256, offset: 512)
!3537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3527, file: !1059, line: 142, size: 256, elements: !3538)
!3538 = !{!3539, !3585, !3589}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3537, file: !1059, line: 143, baseType: !3540, size: 192)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1059, line: 91, size: 192, elements: !3541)
!3541 = !{!3542, !3543, !3544}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3540, file: !1059, line: 92, baseType: !572, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3540, file: !1059, line: 94, baseType: !1195, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3540, file: !1059, line: 100, baseType: !3545, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1059, line: 180, size: 704, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3557, !3558, !3559, !3583, !3584}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3546, file: !1059, line: 182, baseType: !3526, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3546, file: !1059, line: 183, baseType: !7, size: 32, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3546, file: !1059, line: 186, baseType: !3551, size: 192, offset: 128)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3552, line: 19, size: 192, elements: !3553)
!3552 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3553 = !{!3554, !3555, !3556}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3551, file: !3552, line: 20, baseType: !1182, size: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3551, file: !3552, line: 21, baseType: !7, size: 32, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3551, file: !3552, line: 22, baseType: !7, size: 32, offset: 160)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3546, file: !1059, line: 187, baseType: !306, size: 32, offset: 320)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3546, file: !1059, line: 188, baseType: !306, size: 32, offset: 352)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3546, file: !1059, line: 189, baseType: !3560, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1059, line: 168, size: 320, elements: !3562)
!3562 = !{!3563, !3567, !3571, !3575, !3579}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3561, file: !1059, line: 169, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!316, !1154, !3545}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3561, file: !1059, line: 171, baseType: !3568, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!316, !3526, !669, !769}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3561, file: !1059, line: 173, baseType: !3572, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!316, !3526}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3561, file: !1059, line: 174, baseType: !3576, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!316, !3526, !3526, !669}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3561, file: !1059, line: 176, baseType: !3580, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!316, !1154, !3526, !3545}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3546, file: !1059, line: 192, baseType: !662, size: 128, offset: 448)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3546, file: !1059, line: 194, baseType: !1829, size: 128, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3537, file: !1059, line: 144, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1059, line: 103, size: 64, elements: !3587)
!3587 = !{!3588}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3586, file: !1059, line: 104, baseType: !3526, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3537, file: !1059, line: 145, baseType: !3590, size: 256)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1059, line: 107, size: 256, elements: !3591)
!3591 = !{!3592, !3652, !3655, !3656}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3590, file: !1059, line: 108, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1059, line: 217, size: 768, elements: !3596)
!3596 = !{!3597, !3617, !3621, !3625, !3629, !3633, !3637, !3641, !3642, !3643, !3644, !3648}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3595, file: !1059, line: 222, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!316, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1059, line: 197, size: 1088, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3602, file: !1059, line: 199, baseType: !3526, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3602, file: !1059, line: 200, baseType: !804, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3602, file: !1059, line: 201, baseType: !1154, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3602, file: !1059, line: 202, baseType: !305, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3602, file: !1059, line: 205, baseType: !1528, size: 192, offset: 256)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3602, file: !1059, line: 206, baseType: !1528, size: 192, offset: 448)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3602, file: !1059, line: 207, baseType: !316, size: 32, offset: 640)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3602, file: !1059, line: 208, baseType: !662, size: 128, offset: 704)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3602, file: !1059, line: 209, baseType: !644, size: 64, offset: 832)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3602, file: !1059, line: 211, baseType: !774, size: 64, offset: 896)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3602, file: !1059, line: 212, baseType: !406, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3602, file: !1059, line: 213, baseType: !406, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3602, file: !1059, line: 214, baseType: !1446, size: 64, offset: 1024)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3595, file: !1059, line: 223, baseType: !3618, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !3601}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3595, file: !1059, line: 236, baseType: !3622, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!316, !1154, !305}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3595, file: !1059, line: 238, baseType: !3626, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!305, !1154, !3162}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3595, file: !1059, line: 239, baseType: !3630, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!305, !1154, !305, !3162}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3595, file: !1059, line: 240, baseType: !3634, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !1154, !305}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3595, file: !1059, line: 242, baseType: !3638, size: 64, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!760, !3601, !644, !774, !973}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3595, file: !1059, line: 252, baseType: !774, size: 64, offset: 448)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3595, file: !1059, line: 259, baseType: !406, size: 8, offset: 512)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3595, file: !1059, line: 260, baseType: !3638, size: 64, offset: 576)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3595, file: !1059, line: 263, baseType: !3645, size: 64, offset: 640)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!3191, !3601, !3193}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3595, file: !1059, line: 266, baseType: !3649, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!316, !3601, !1418}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3590, file: !1059, line: 109, baseType: !3653, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1059, line: 31, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3590, file: !1059, line: 110, baseType: !973, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3590, file: !1059, line: 111, baseType: !3526, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3527, file: !1059, line: 148, baseType: !305, size: 64, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3527, file: !1059, line: 154, baseType: !311, size: 64, offset: 832)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3527, file: !1059, line: 156, baseType: !524, size: 16, offset: 896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3527, file: !1059, line: 157, baseType: !769, size: 16, offset: 912)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3527, file: !1059, line: 158, baseType: !3662, size: 64, offset: 960)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1059, line: 32, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !678, file: !679, line: 71, baseType: !349, size: 32, offset: 448)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !678, file: !679, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !678, file: !679, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !678, file: !679, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !678, file: !679, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !678, file: !679, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !675, file: !237, line: 463, baseType: !674, size: 64, offset: 512)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !675, file: !237, line: 465, baseType: !3672, size: 64, offset: 576)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !675, file: !237, line: 467, baseType: !669, size: 64, offset: 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !237, line: 468, baseType: !3676, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3678)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3679)
!3679 = !{!3680, !3681, !3682, !3686, !3691, !3695}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3678, file: !237, line: 88, baseType: !669, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3678, file: !237, line: 89, baseType: !780, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3678, file: !237, line: 90, baseType: !3683, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!316, !674, !727}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3678, file: !237, line: 91, baseType: !3687, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!644, !674, !3690, !3523, !3524}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3678, file: !237, line: 93, baseType: !3692, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{null, !674}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3678, file: !237, line: 95, baseType: !3696, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3698)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3699)
!3699 = !{!3700, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3698, file: !244, line: 279, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!316, !674}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3698, file: !244, line: 280, baseType: !3692, size: 64, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3698, file: !244, line: 281, baseType: !3701, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3698, file: !244, line: 282, baseType: !3701, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3698, file: !244, line: 283, baseType: !3701, size: 64, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3698, file: !244, line: 284, baseType: !3701, size: 64, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3698, file: !244, line: 285, baseType: !3701, size: 64, offset: 384)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3698, file: !244, line: 286, baseType: !3701, size: 64, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3698, file: !244, line: 287, baseType: !3701, size: 64, offset: 512)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3698, file: !244, line: 288, baseType: !3701, size: 64, offset: 576)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3698, file: !244, line: 289, baseType: !3701, size: 64, offset: 640)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3698, file: !244, line: 290, baseType: !3701, size: 64, offset: 704)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3698, file: !244, line: 291, baseType: !3701, size: 64, offset: 768)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3698, file: !244, line: 292, baseType: !3701, size: 64, offset: 832)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3698, file: !244, line: 293, baseType: !3701, size: 64, offset: 896)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3698, file: !244, line: 294, baseType: !3701, size: 64, offset: 960)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3698, file: !244, line: 295, baseType: !3701, size: 64, offset: 1024)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3698, file: !244, line: 296, baseType: !3701, size: 64, offset: 1088)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3698, file: !244, line: 297, baseType: !3701, size: 64, offset: 1152)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3698, file: !244, line: 298, baseType: !3701, size: 64, offset: 1216)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3698, file: !244, line: 299, baseType: !3701, size: 64, offset: 1280)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3698, file: !244, line: 300, baseType: !3701, size: 64, offset: 1344)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3698, file: !244, line: 301, baseType: !3701, size: 64, offset: 1408)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !675, file: !237, line: 470, baseType: !3727, size: 64, offset: 768)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3729, line: 82, size: 1408, elements: !3730)
!3729 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3809, !3812, !3813}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3728, file: !3729, line: 83, baseType: !669, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3728, file: !3729, line: 84, baseType: !669, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3728, file: !3729, line: 85, baseType: !674, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3728, file: !3729, line: 86, baseType: !780, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3728, file: !3729, line: 87, baseType: !780, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3728, file: !3729, line: 88, baseType: !780, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3728, file: !3729, line: 90, baseType: !3738, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!316, !674, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749, !3750, !3760, !3773, !3774, !3775, !3776, !3777, !3785, !3786, !3787, !3788, !3789, !3790}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3742, file: !231, line: 96, baseType: !669, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3742, file: !231, line: 97, baseType: !3727, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3742, file: !231, line: 99, baseType: !1073, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3742, file: !231, line: 100, baseType: !669, size: 64, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3742, file: !231, line: 102, baseType: !406, size: 8, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3742, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3742, file: !231, line: 105, baseType: !3751, size: 64, offset: 320)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3753)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3754, line: 262, size: 1600, elements: !3755)
!3754 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3755 = !{!3756, !3757, !3758, !3759}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3753, file: !3754, line: 263, baseType: !2986, size: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3753, file: !3754, line: 264, baseType: !2986, size: 256, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3753, file: !3754, line: 265, baseType: !369, size: 1024, offset: 512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3753, file: !3754, line: 266, baseType: !2475, size: 64, offset: 1536)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3742, file: !231, line: 106, baseType: !3761, size: 64, offset: 384)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3763)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3754, line: 210, size: 256, elements: !3764)
!3764 = !{!3765, !3769, !3771, !3772}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3763, file: !3754, line: 211, baseType: !3766, size: 72)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 72, elements: !3767)
!3767 = !{!3768}
!3768 = !DISubrange(count: 9)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3763, file: !3754, line: 212, baseType: !3770, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3754, line: 14, baseType: !572)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3763, file: !3754, line: 213, baseType: !308, size: 32, offset: 192)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3763, file: !3754, line: 214, baseType: !308, size: 32, offset: 224)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3742, file: !231, line: 108, baseType: !3701, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3742, file: !231, line: 109, baseType: !3692, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3742, file: !231, line: 110, baseType: !3701, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3742, file: !231, line: 111, baseType: !3692, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3742, file: !231, line: 112, baseType: !3778, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!316, !674, !3781}
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3783)
!3783 = !{!3784}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3782, file: !244, line: 51, baseType: !316, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3742, file: !231, line: 113, baseType: !3701, size: 64, offset: 768)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3742, file: !231, line: 114, baseType: !780, size: 64, offset: 832)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3742, file: !231, line: 115, baseType: !780, size: 64, offset: 896)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3742, file: !231, line: 117, baseType: !3696, size: 64, offset: 960)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3742, file: !231, line: 118, baseType: !3692, size: 64, offset: 1024)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3742, file: !231, line: 120, baseType: !3791, size: 64, offset: 1088)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3728, file: !3729, line: 91, baseType: !3683, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3728, file: !3729, line: 92, baseType: !3701, size: 64, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3728, file: !3729, line: 93, baseType: !3692, size: 64, offset: 576)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3728, file: !3729, line: 94, baseType: !3701, size: 64, offset: 640)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3728, file: !3729, line: 95, baseType: !3692, size: 64, offset: 704)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3728, file: !3729, line: 97, baseType: !3701, size: 64, offset: 768)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3728, file: !3729, line: 98, baseType: !3701, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3728, file: !3729, line: 100, baseType: !3778, size: 64, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3728, file: !3729, line: 101, baseType: !3701, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3728, file: !3729, line: 103, baseType: !3701, size: 64, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3728, file: !3729, line: 105, baseType: !3701, size: 64, offset: 1088)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3728, file: !3729, line: 107, baseType: !3696, size: 64, offset: 1152)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3728, file: !3729, line: 109, baseType: !3806, size: 64, offset: 1216)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3808)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3729, line: 109, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3728, file: !3729, line: 111, baseType: !3810, size: 64, offset: 1280)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3729, line: 111, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3728, file: !3729, line: 112, baseType: !1088, offset: 1344)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3728, file: !3729, line: 114, baseType: !406, size: 8, offset: 1344)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !675, file: !237, line: 471, baseType: !3741, size: 64, offset: 832)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !675, file: !237, line: 473, baseType: !305, size: 64, offset: 896)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !675, file: !237, line: 475, baseType: !305, size: 64, offset: 960)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !675, file: !237, line: 480, baseType: !1528, size: 192, offset: 1024)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !675, file: !237, line: 484, baseType: !3819, size: 576, offset: 1216)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3819, file: !237, line: 362, baseType: !662, size: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3819, file: !237, line: 363, baseType: !662, size: 128, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3819, file: !237, line: 364, baseType: !662, size: 128, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3819, file: !237, line: 365, baseType: !662, size: 128, offset: 384)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3819, file: !237, line: 366, baseType: !406, size: 8, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3819, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !675, file: !237, line: 485, baseType: !3828, size: 2304, offset: 1792)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3829)
!3829 = !{!3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3925, !3929}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3828, file: !244, line: 566, baseType: !3781, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3828, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3828, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3828, file: !244, line: 569, baseType: !406, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3828, file: !244, line: 570, baseType: !406, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3828, file: !244, line: 571, baseType: !406, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3828, file: !244, line: 572, baseType: !406, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3828, file: !244, line: 573, baseType: !406, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3828, file: !244, line: 574, baseType: !406, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3828, file: !244, line: 575, baseType: !406, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3828, file: !244, line: 576, baseType: !406, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3828, file: !244, line: 577, baseType: !306, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3828, file: !244, line: 578, baseType: !691, offset: 96)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3828, file: !244, line: 580, baseType: !662, size: 128, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3828, file: !244, line: 581, baseType: !1850, size: 192, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3828, file: !244, line: 582, baseType: !3846, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3848, line: 43, size: 1472, elements: !3849)
!3848 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3857, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3847, file: !3848, line: 44, baseType: !669, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3847, file: !3848, line: 45, baseType: !316, size: 32, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3847, file: !3848, line: 46, baseType: !662, size: 128, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3847, file: !3848, line: 47, baseType: !691, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3847, file: !3848, line: 48, baseType: !3855, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3847, file: !3848, line: 49, baseType: !3858, size: 320, offset: 320)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3859, line: 11, size: 320, elements: !3860)
!3859 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3860 = !{!3861, !3862, !3863, !3868}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3858, file: !3859, line: 16, baseType: !1082, size: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3858, file: !3859, line: 17, baseType: !572, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3858, file: !3859, line: 18, baseType: !3864, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !3867}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3858, file: !3859, line: 19, baseType: !306, size: 32, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3847, file: !3848, line: 50, baseType: !572, size: 64, offset: 640)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3847, file: !3848, line: 51, baseType: !1650, size: 64, offset: 704)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3847, file: !3848, line: 52, baseType: !1650, size: 64, offset: 768)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3847, file: !3848, line: 53, baseType: !1650, size: 64, offset: 832)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3847, file: !3848, line: 54, baseType: !1650, size: 64, offset: 896)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3847, file: !3848, line: 55, baseType: !1650, size: 64, offset: 960)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3847, file: !3848, line: 56, baseType: !572, size: 64, offset: 1024)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3847, file: !3848, line: 57, baseType: !572, size: 64, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3847, file: !3848, line: 58, baseType: !572, size: 64, offset: 1152)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3847, file: !3848, line: 59, baseType: !572, size: 64, offset: 1216)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3847, file: !3848, line: 60, baseType: !572, size: 64, offset: 1280)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3847, file: !3848, line: 61, baseType: !674, size: 64, offset: 1344)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3847, file: !3848, line: 62, baseType: !406, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3847, file: !3848, line: 63, baseType: !406, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3828, file: !244, line: 583, baseType: !406, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3828, file: !244, line: 584, baseType: !406, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3828, file: !244, line: 585, baseType: !406, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3828, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3828, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3828, file: !244, line: 592, baseType: !1642, size: 512, offset: 576)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3828, file: !244, line: 593, baseType: !311, size: 64, offset: 1088)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3828, file: !244, line: 594, baseType: !2305, size: 256, offset: 1152)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3828, file: !244, line: 595, baseType: !1829, size: 128, offset: 1408)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3828, file: !244, line: 596, baseType: !3855, size: 64, offset: 1536)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3828, file: !244, line: 597, baseType: !358, size: 32, offset: 1600)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3828, file: !244, line: 598, baseType: !358, size: 32, offset: 1632)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3828, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3828, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3828, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3828, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3828, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3828, file: !244, line: 604, baseType: !406, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3828, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3828, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3828, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3828, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3828, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3828, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3828, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3828, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3828, file: !244, line: 613, baseType: !316, size: 32, offset: 1792)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3828, file: !244, line: 614, baseType: !316, size: 32, offset: 1824)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3828, file: !244, line: 615, baseType: !311, size: 64, offset: 1856)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3828, file: !244, line: 616, baseType: !311, size: 64, offset: 1920)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3828, file: !244, line: 617, baseType: !311, size: 64, offset: 1984)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3828, file: !244, line: 618, baseType: !311, size: 64, offset: 2048)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3828, file: !244, line: 620, baseType: !3916, size: 64, offset: 2112)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3922}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3917, file: !244, line: 537, baseType: !691)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3917, file: !244, line: 538, baseType: !7, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3917, file: !244, line: 540, baseType: !662, size: 128, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3917, file: !244, line: 543, baseType: !3923, size: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3828, file: !244, line: 621, baseType: !3926, size: 64, offset: 2176)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !674, !314}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3828, file: !244, line: 622, baseType: !3930, size: 64, offset: 2240)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !675, file: !237, line: 486, baseType: !3933, size: 64, offset: 4096)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3942, !3943, !3944}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3934, file: !244, line: 643, baseType: !3698, size: 1472)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3934, file: !244, line: 644, baseType: !3701, size: 64, offset: 1472)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3934, file: !244, line: 645, baseType: !3939, size: 64, offset: 1536)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !674, !406}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3934, file: !244, line: 646, baseType: !3701, size: 64, offset: 1600)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3934, file: !244, line: 647, baseType: !3692, size: 64, offset: 1664)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3934, file: !244, line: 648, baseType: !3692, size: 64, offset: 1728)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !675, file: !237, line: 493, baseType: !3946, size: 64, offset: 4160)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3948)
!3948 = !{!3949, !3950, !3951, !4124, !4125, !4126, !4127, !4128, !4129, !4132, !4133, !4134, !4135, !4136, !4137, !4138}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3947, file: !258, line: 163, baseType: !662, size: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3947, file: !258, line: 164, baseType: !669, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3947, file: !258, line: 165, baseType: !3952, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3954)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3955)
!3955 = !{!3956, !4074, !4085, !4090, !4094, !4101, !4105, !4109, !4116, !4120}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3954, file: !258, line: 106, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!316, !3946, !3960, !257}
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3962, line: 51, size: 1344, elements: !3963)
!3962 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3963 = !{!3964, !3965, !3967, !3968, !4058, !4067, !4068, !4069, !4070, !4071, !4072, !4073}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3961, file: !3962, line: 52, baseType: !669, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3961, file: !3962, line: 53, baseType: !3966, size: 32, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3962, line: 28, baseType: !306)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3961, file: !3962, line: 54, baseType: !669, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3961, file: !3962, line: 55, baseType: !3969, size: 192, offset: 192)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3970, line: 17, size: 192, elements: !3971)
!3970 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3971 = !{!3972, !3974, !4057}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3969, file: !3970, line: 18, baseType: !3973, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3969, file: !3970, line: 19, baseType: !3975, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3970, line: 110, size: 1152, elements: !3978)
!3978 = !{!3979, !3983, !3987, !3993, !3999, !4003, !4007, !4012, !4016, !4017, !4021, !4025, !4029, !4040, !4041, !4042, !4043, !4053}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3977, file: !3970, line: 111, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!3973, !3973}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3977, file: !3970, line: 112, baseType: !3984, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{null, !3973}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3977, file: !3970, line: 113, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!406, !3991}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3969)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3977, file: !3970, line: 114, baseType: !3994, size: 64, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!2475, !3991, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3977, file: !3970, line: 116, baseType: !4000, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!406, !3991, !669}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3977, file: !3970, line: 118, baseType: !4004, size: 64, offset: 320)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!316, !3991, !669, !7, !305, !774}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3977, file: !3970, line: 123, baseType: !4008, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!316, !3991, !669, !4011, !774}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3977, file: !3970, line: 126, baseType: !4013, size: 64, offset: 448)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!669, !3991}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3977, file: !3970, line: 127, baseType: !4013, size: 64, offset: 512)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3977, file: !3970, line: 128, baseType: !4018, size: 64, offset: 576)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!3973, !3991}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3977, file: !3970, line: 130, baseType: !4022, size: 64, offset: 640)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!3973, !3991, !3973}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3977, file: !3970, line: 133, baseType: !4026, size: 64, offset: 704)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!3973, !3991, !669}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3977, file: !3970, line: 135, baseType: !4030, size: 64, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!316, !3991, !669, !669, !7, !7, !4033}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3970, line: 43, size: 640, elements: !4035)
!4035 = !{!4036, !4037, !4038}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4034, file: !3970, line: 44, baseType: !3973, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4034, file: !3970, line: 45, baseType: !7, size: 32, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4034, file: !3970, line: 46, baseType: !4039, size: 512, offset: 128)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 512, elements: !385)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3977, file: !3970, line: 140, baseType: !4022, size: 64, offset: 832)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3977, file: !3970, line: 143, baseType: !4018, size: 64, offset: 896)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3977, file: !3970, line: 145, baseType: !3980, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3977, file: !3970, line: 146, baseType: !4044, size: 64, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!316, !3991, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3970, line: 29, size: 128, elements: !4049)
!4049 = !{!4050, !4051, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4048, file: !3970, line: 30, baseType: !7, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4048, file: !3970, line: 31, baseType: !7, size: 32, offset: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4048, file: !3970, line: 32, baseType: !3991, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3977, file: !3970, line: 148, baseType: !4054, size: 64, offset: 1088)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!316, !3991, !674}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3969, file: !3970, line: 20, baseType: !674, size: 64, offset: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3961, file: !3962, line: 57, baseType: !4059, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3962, line: 31, size: 704, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4060, file: !3962, line: 32, baseType: !644, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4060, file: !3962, line: 33, baseType: !316, size: 32, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4060, file: !3962, line: 34, baseType: !305, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4060, file: !3962, line: 35, baseType: !4059, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4060, file: !3962, line: 43, baseType: !795, size: 448, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3961, file: !3962, line: 58, baseType: !4059, size: 64, offset: 448)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3961, file: !3962, line: 59, baseType: !3960, size: 64, offset: 512)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3961, file: !3962, line: 60, baseType: !3960, size: 64, offset: 576)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3961, file: !3962, line: 61, baseType: !3960, size: 64, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3961, file: !3962, line: 63, baseType: !678, size: 512, offset: 704)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3961, file: !3962, line: 65, baseType: !572, size: 64, offset: 1216)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3961, file: !3962, line: 66, baseType: !305, size: 64, offset: 1280)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3954, file: !258, line: 108, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!316, !3946, !4078, !257}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4080)
!4080 = !{!4081, !4082, !4083}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4079, file: !258, line: 64, baseType: !3973, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4079, file: !258, line: 65, baseType: !316, size: 32, offset: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4079, file: !258, line: 66, baseType: !4084, size: 512, offset: 96)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 512, elements: !2081)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3954, file: !258, line: 110, baseType: !4086, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!316, !3946, !7, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !304, line: 164, baseType: !572)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3954, file: !258, line: 111, baseType: !4091, size: 64, offset: 192)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{null, !3946, !7}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3954, file: !258, line: 112, baseType: !4095, size: 64, offset: 256)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!316, !3946, !3960, !4098, !7, !4100, !408}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3954, file: !258, line: 117, baseType: !4102, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!316, !3946, !7, !7, !305}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3954, file: !258, line: 119, baseType: !4106, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !3946, !7, !7}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3954, file: !258, line: 121, baseType: !4110, size: 64, offset: 448)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!316, !3946, !4113, !406}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4115, line: 11, flags: DIFlagFwdDecl)
!4115 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3954, file: !258, line: 122, baseType: !4117, size: 64, offset: 512)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{null, !3946, !4113}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3954, file: !258, line: 123, baseType: !4121, size: 64, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!316, !3946, !4078, !4100, !408}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3947, file: !258, line: 166, baseType: !305, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3947, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3947, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3947, file: !258, line: 171, baseType: !3973, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3947, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3947, file: !258, line: 173, baseType: !4130, size: 64, offset: 512)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3947, file: !258, line: 175, baseType: !3946, size: 64, offset: 576)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3947, file: !258, line: 182, baseType: !4089, size: 64, offset: 640)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3947, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3947, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3947, file: !258, line: 185, baseType: !1182, size: 128, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3947, file: !258, line: 186, baseType: !1528, size: 192, offset: 896)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3947, file: !258, line: 187, baseType: !4139, offset: 1088)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2679)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !675, file: !237, line: 499, baseType: !662, size: 128, offset: 4224)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !675, file: !237, line: 502, baseType: !4142, size: 64, offset: 4352)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4144)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !675, file: !237, line: 504, baseType: !4146, size: 64, offset: 4416)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !675, file: !237, line: 505, baseType: !311, size: 64, offset: 4480)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !675, file: !237, line: 510, baseType: !311, size: 64, offset: 4544)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !675, file: !237, line: 511, baseType: !4150, size: 64, offset: 4608)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4152)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !675, file: !237, line: 513, baseType: !4154, size: 64, offset: 4672)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4156)
!4156 = !{!4157, !4158}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4155, file: !237, line: 293, baseType: !7, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4155, file: !237, line: 294, baseType: !572, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !675, file: !237, line: 515, baseType: !662, size: 128, offset: 4736)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !675, file: !237, line: 526, baseType: !4161, offset: 4864)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4162, line: 5, elements: !705)
!4162 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !675, file: !237, line: 528, baseType: !3960, size: 64, offset: 4864)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !675, file: !237, line: 529, baseType: !3973, size: 64, offset: 4928)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !675, file: !237, line: 534, baseType: !955, size: 32, offset: 4992)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !675, file: !237, line: 535, baseType: !306, size: 32, offset: 5024)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !675, file: !237, line: 537, baseType: !691, offset: 5056)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !675, file: !237, line: 538, baseType: !662, size: 128, offset: 5056)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !675, file: !237, line: 540, baseType: !4170, size: 64, offset: 5184)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4172, line: 54, size: 960, elements: !4173)
!4172 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4173 = !{!4174, !4175, !4176, !4177, !4178, !4179, !4180, !4184, !4188, !4189, !4190, !4191, !4195, !4199, !4200}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4171, file: !4172, line: 55, baseType: !669, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4171, file: !4172, line: 56, baseType: !1073, size: 64, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4171, file: !4172, line: 58, baseType: !780, size: 64, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4171, file: !4172, line: 59, baseType: !780, size: 64, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4171, file: !4172, line: 60, baseType: !684, size: 64, offset: 256)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4171, file: !4172, line: 62, baseType: !3683, size: 64, offset: 320)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4171, file: !4172, line: 63, baseType: !4181, size: 64, offset: 384)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!644, !674, !3690}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4171, file: !4172, line: 65, baseType: !4185, size: 64, offset: 448)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !4170}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4171, file: !4172, line: 66, baseType: !3692, size: 64, offset: 512)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4171, file: !4172, line: 68, baseType: !3701, size: 64, offset: 576)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4171, file: !4172, line: 70, baseType: !3491, size: 64, offset: 640)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4171, file: !4172, line: 71, baseType: !4192, size: 64, offset: 704)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!2475, !674}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4171, file: !4172, line: 73, baseType: !4196, size: 64, offset: 768)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !674, !3523, !3524}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4171, file: !4172, line: 75, baseType: !3696, size: 64, offset: 832)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4171, file: !4172, line: 77, baseType: !3810, size: 64, offset: 896)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !675, file: !237, line: 541, baseType: !780, size: 64, offset: 5248)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !675, file: !237, line: 543, baseType: !3692, size: 64, offset: 5312)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !675, file: !237, line: 544, baseType: !4204, size: 64, offset: 5376)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !675, file: !237, line: 545, baseType: !4207, size: 64, offset: 5440)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !675, file: !237, line: 547, baseType: !406, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !675, file: !237, line: 548, baseType: !406, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !675, file: !237, line: 549, baseType: !406, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !675, file: !237, line: 550, baseType: !406, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !658, file: !272, line: 111, baseType: !1073, size: 64, offset: 576)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !658, file: !272, line: 113, baseType: !316, size: 32, offset: 640)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !658, file: !272, line: 114, baseType: !4216, size: 64, offset: 704)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4218)
!4218 = !{!4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4233}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4217, file: !272, line: 158, baseType: !662, size: 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4217, file: !272, line: 159, baseType: !3149, size: 64, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4217, file: !272, line: 160, baseType: !657, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4217, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4217, file: !272, line: 162, baseType: !316, size: 32, offset: 288)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4217, file: !272, line: 163, baseType: !306, size: 32, offset: 320)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4217, file: !272, line: 167, baseType: !316, size: 32, offset: 352)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4217, file: !272, line: 168, baseType: !316, size: 32, offset: 384)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4217, file: !272, line: 169, baseType: !316, size: 32, offset: 416)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4217, file: !272, line: 171, baseType: !1829, size: 128, offset: 448)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4217, file: !272, line: 173, baseType: !4230, size: 64, offset: 576)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!316, !804, !7, !305}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4217, file: !272, line: 187, baseType: !305, size: 64, offset: 640)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !658, file: !272, line: 115, baseType: !1528, size: 192, offset: 768)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !346, file: !51, line: 690, baseType: !305, size: 64, offset: 6144)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !346, file: !51, line: 691, baseType: !305, size: 64, offset: 6208)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !346, file: !51, line: 692, baseType: !305, size: 64, offset: 6272)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !346, file: !51, line: 693, baseType: !305, size: 64, offset: 6336)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !346, file: !51, line: 694, baseType: !305, size: 64, offset: 6400)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !346, file: !51, line: 695, baseType: !430, size: 3648, offset: 6464)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !346, file: !51, line: 698, baseType: !4242, size: 64, offset: 10112)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!316, !305, !316, !316, !316}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !346, file: !51, line: 699, baseType: !316, size: 32, offset: 10176)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !346, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4248, size: 288, elements: !537)
!4248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4249)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qam_params", file: !3, line: 287, size: 48, elements: !4250)
!4250 = !{!4251, !4252, !4253, !4254, !4255, !4256}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "qam", scope: !4249, file: !3, line: 288, baseType: !382, size: 8)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "lockthr", scope: !4249, file: !3, line: 288, baseType: !382, size: 8, offset: 8)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "mseth", scope: !4249, file: !3, line: 288, baseType: !382, size: 8, offset: 16)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "aref", scope: !4249, file: !3, line: 288, baseType: !382, size: 8, offset: 24)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "agcrefnyq", scope: !4249, file: !3, line: 288, baseType: !382, size: 8, offset: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "eragnyq_thd", scope: !4249, file: !3, line: 288, baseType: !382, size: 8, offset: 40)
!4257 = !DIGlobalVariableExpression(var: !4258, expr: !DIExpression())
!4258 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 50, type: !316, isLocal: true, isDefinition: true)
!4259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!4260 = !{i32 7, !"Dwarf Version", i32 4}
!4261 = !{i32 2, !"Debug Info Version", i32 3}
!4262 = !{i32 1, !"wchar_size", i32 2}
!4263 = !{i32 1, !"Code Model", i32 2}
!4264 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4265 = distinct !DISubprogram(name: "tda10023_attach", scope: !3, file: !3, line: 507, type: !4266, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!345, !4268, !4280, !382}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4270)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda10023_config", file: !291, line: 30, size: 128, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4270, file: !291, line: 32, baseType: !382, size: 8)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !4270, file: !291, line: 33, baseType: !382, size: 8, offset: 8)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "xtal", scope: !4270, file: !291, line: 36, baseType: !306, size: 32, offset: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "pll_m", scope: !4270, file: !291, line: 37, baseType: !382, size: 8, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "pll_p", scope: !4270, file: !291, line: 38, baseType: !382, size: 8, offset: 72)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "pll_n", scope: !4270, file: !291, line: 39, baseType: !382, size: 8, offset: 80)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "output_mode", scope: !4270, file: !291, line: 42, baseType: !382, size: 8, offset: 88)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "deltaf", scope: !4270, file: !291, line: 45, baseType: !522, size: 16, offset: 96)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4282, line: 695, size: 7552, elements: !4283)
!4282 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4283 = !{!4284, !4285, !4286, !4323, !4324, !4338, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4355, !4356, !4357, !4358, !4390, !4401}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4281, file: !4282, line: 696, baseType: !1073, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4281, file: !4282, line: 697, baseType: !7, size: 32, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4281, file: !4282, line: 698, baseType: !4287, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4289)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4282, line: 519, size: 320, elements: !4290)
!4290 = !{!4291, !4304, !4305, !4318, !4319}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4289, file: !4282, line: 529, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!316, !4280, !4295, !316}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4297, line: 69, size: 128, elements: !4298)
!4297 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4298 = !{!4299, !4300, !4301, !4302}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4296, file: !4297, line: 70, baseType: !523, size: 16)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4296, file: !4297, line: 71, baseType: !523, size: 16, offset: 16)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4296, file: !4297, line: 84, baseType: !523, size: 16, offset: 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4296, file: !4297, line: 85, baseType: !4303, size: 64, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4289, file: !4282, line: 531, baseType: !4292, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4289, file: !4282, line: 533, baseType: !4306, size: 64, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!316, !4280, !522, !524, !322, !382, !316, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4297, line: 135, size: 272, elements: !4311)
!4311 = !{!4312, !4313, !4314}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4310, file: !4297, line: 136, baseType: !383, size: 8)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4310, file: !4297, line: 137, baseType: !523, size: 16)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4310, file: !4297, line: 138, baseType: !4315, size: 272)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 272, elements: !4316)
!4316 = !{!4317}
!4317 = !DISubrange(count: 34)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4289, file: !4282, line: 536, baseType: !4306, size: 64, offset: 192)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4289, file: !4282, line: 541, baseType: !4320, size: 64, offset: 256)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!306, !4280}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4281, file: !4282, line: 699, baseType: !305, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4281, file: !4282, line: 702, baseType: !4325, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4282, line: 557, size: 192, elements: !4328)
!4328 = !{!4329, !4333, !4337}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4327, file: !4282, line: 558, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !4280, !7}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4327, file: !4282, line: 559, baseType: !4334, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!316, !4280, !7}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4327, file: !4282, line: 560, baseType: !4330, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4281, file: !4282, line: 703, baseType: !4339, size: 192, offset: 320)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4340, line: 30, size: 192, elements: !4341)
!4340 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4341 = !{!4342, !4343, !4344}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4339, file: !4340, line: 31, baseType: !1219)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4339, file: !4340, line: 32, baseType: !1191, size: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4339, file: !4340, line: 33, baseType: !1571, size: 64, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4281, file: !4282, line: 704, baseType: !4339, size: 192, offset: 512)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4281, file: !4282, line: 706, baseType: !316, size: 32, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4281, file: !4282, line: 707, baseType: !316, size: 32, offset: 736)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4281, file: !4282, line: 708, baseType: !675, size: 5568, offset: 768)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4281, file: !4282, line: 709, baseType: !572, size: 64, offset: 6336)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4281, file: !4282, line: 713, baseType: !316, size: 32, offset: 6400)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4281, file: !4282, line: 714, baseType: !4352, size: 384, offset: 6432)
!4352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 384, elements: !4353)
!4353 = !{!4354}
!4354 = !DISubrange(count: 48)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4281, file: !4282, line: 715, baseType: !1850, size: 192, offset: 6848)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4281, file: !4282, line: 717, baseType: !1528, size: 192, offset: 7040)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4281, file: !4282, line: 718, baseType: !662, size: 128, offset: 7232)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4281, file: !4282, line: 720, baseType: !4359, size: 64, offset: 7360)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4282, line: 618, size: 832, elements: !4361)
!4361 = !{!4362, !4366, !4367, !4371, !4372, !4373, !4374, !4378, !4379, !4382, !4383, !4386, !4389}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4360, file: !4282, line: 619, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!316, !4280}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4360, file: !4282, line: 621, baseType: !4363, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4360, file: !4282, line: 622, baseType: !4368, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{null, !4280, !316}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4360, file: !4282, line: 623, baseType: !4363, size: 64, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4360, file: !4282, line: 624, baseType: !4368, size: 64, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4360, file: !4282, line: 625, baseType: !4363, size: 64, offset: 320)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4360, file: !4282, line: 627, baseType: !4375, size: 64, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !4280}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4360, file: !4282, line: 628, baseType: !4375, size: 64, offset: 448)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4360, file: !4282, line: 631, baseType: !4380, size: 64, offset: 512)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4282, line: 631, flags: DIFlagFwdDecl)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4360, file: !4282, line: 632, baseType: !4380, size: 64, offset: 576)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4360, file: !4282, line: 633, baseType: !4384, size: 64, offset: 640)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4282, line: 633, flags: DIFlagFwdDecl)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4360, file: !4282, line: 634, baseType: !4387, size: 64, offset: 704)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4282, line: 634, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4360, file: !4282, line: 635, baseType: !4387, size: 64, offset: 768)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4281, file: !4282, line: 721, baseType: !4391, size: 64, offset: 7424)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4393)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4282, line: 664, size: 192, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4393, file: !4282, line: 665, baseType: !311, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4393, file: !4282, line: 666, baseType: !316, size: 32, offset: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4393, file: !4282, line: 667, baseType: !522, size: 16, offset: 96)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4393, file: !4282, line: 668, baseType: !522, size: 16, offset: 112)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4393, file: !4282, line: 669, baseType: !522, size: 16, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4393, file: !4282, line: 670, baseType: !522, size: 16, offset: 144)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4281, file: !4282, line: 723, baseType: !3946, size: 64, offset: 7488)
!4402 = !DILocalVariable(name: "config", arg: 1, scope: !4265, file: !3, line: 507, type: !4268)
!4403 = !DILocation(line: 507, column: 68, scope: !4265)
!4404 = !DILocalVariable(name: "i2c", arg: 2, scope: !4265, file: !3, line: 508, type: !4280)
!4405 = !DILocation(line: 508, column: 30, scope: !4265)
!4406 = !DILocalVariable(name: "pwm", arg: 3, scope: !4265, file: !3, line: 509, type: !382)
!4407 = !DILocation(line: 509, column: 13, scope: !4265)
!4408 = !DILocalVariable(name: "state", scope: !4265, file: !3, line: 511, type: !4409)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda10023_state", file: !3, line: 31, size: 10496, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4410, file: !3, line: 32, baseType: !4280, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4410, file: !3, line: 34, baseType: !4268, size: 64, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4410, file: !3, line: 35, baseType: !346, size: 10240, offset: 128)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pwm", scope: !4410, file: !3, line: 37, baseType: !382, size: 8, offset: 10368)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "reg0", scope: !4410, file: !3, line: 38, baseType: !382, size: 8, offset: 10376)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "xtal", scope: !4410, file: !3, line: 41, baseType: !306, size: 32, offset: 10400)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "pll_m", scope: !4410, file: !3, line: 42, baseType: !382, size: 8, offset: 10432)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "pll_p", scope: !4410, file: !3, line: 43, baseType: !382, size: 8, offset: 10440)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "pll_n", scope: !4410, file: !3, line: 44, baseType: !382, size: 8, offset: 10448)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "sysclk", scope: !4410, file: !3, line: 45, baseType: !306, size: 32, offset: 10464)
!4422 = !DILocation(line: 511, column: 25, scope: !4265)
!4423 = !DILocation(line: 514, column: 10, scope: !4265)
!4424 = !DILocation(line: 514, column: 8, scope: !4265)
!4425 = !DILocation(line: 515, column: 6, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 515, column: 6)
!4427 = !DILocation(line: 515, column: 12, scope: !4426)
!4428 = !DILocation(line: 515, column: 6, scope: !4265)
!4429 = !DILocation(line: 515, column: 21, scope: !4426)
!4430 = !DILocation(line: 518, column: 18, scope: !4265)
!4431 = !DILocation(line: 518, column: 2, scope: !4265)
!4432 = !DILocation(line: 518, column: 9, scope: !4265)
!4433 = !DILocation(line: 518, column: 16, scope: !4265)
!4434 = !DILocation(line: 519, column: 15, scope: !4265)
!4435 = !DILocation(line: 519, column: 2, scope: !4265)
!4436 = !DILocation(line: 519, column: 9, scope: !4265)
!4437 = !DILocation(line: 519, column: 13, scope: !4265)
!4438 = !DILocation(line: 522, column: 21, scope: !4265)
!4439 = !DILocation(line: 522, column: 2, scope: !4265)
!4440 = !DILocation(line: 524, column: 24, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 524, column: 6)
!4442 = !DILocation(line: 524, column: 7, scope: !4441)
!4443 = !DILocation(line: 524, column: 37, scope: !4441)
!4444 = !DILocation(line: 524, column: 45, scope: !4441)
!4445 = !DILocation(line: 524, column: 6, scope: !4265)
!4446 = !DILocation(line: 524, column: 54, scope: !4441)
!4447 = !DILocation(line: 527, column: 10, scope: !4265)
!4448 = !DILocation(line: 527, column: 17, scope: !4265)
!4449 = !DILocation(line: 527, column: 26, scope: !4265)
!4450 = !DILocation(line: 527, column: 2, scope: !4265)
!4451 = !DILocation(line: 528, column: 15, scope: !4265)
!4452 = !DILocation(line: 528, column: 2, scope: !4265)
!4453 = !DILocation(line: 528, column: 9, scope: !4265)
!4454 = !DILocation(line: 528, column: 13, scope: !4265)
!4455 = !DILocation(line: 529, column: 2, scope: !4265)
!4456 = !DILocation(line: 529, column: 9, scope: !4265)
!4457 = !DILocation(line: 529, column: 14, scope: !4265)
!4458 = !DILocation(line: 530, column: 6, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 530, column: 6)
!4460 = !DILocation(line: 530, column: 13, scope: !4459)
!4461 = !DILocation(line: 530, column: 21, scope: !4459)
!4462 = !DILocation(line: 530, column: 6, scope: !4265)
!4463 = !DILocation(line: 531, column: 18, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 530, column: 27)
!4465 = !DILocation(line: 531, column: 25, scope: !4464)
!4466 = !DILocation(line: 531, column: 33, scope: !4464)
!4467 = !DILocation(line: 531, column: 3, scope: !4464)
!4468 = !DILocation(line: 531, column: 10, scope: !4464)
!4469 = !DILocation(line: 531, column: 16, scope: !4464)
!4470 = !DILocation(line: 532, column: 18, scope: !4464)
!4471 = !DILocation(line: 532, column: 25, scope: !4464)
!4472 = !DILocation(line: 532, column: 33, scope: !4464)
!4473 = !DILocation(line: 532, column: 3, scope: !4464)
!4474 = !DILocation(line: 532, column: 10, scope: !4464)
!4475 = !DILocation(line: 532, column: 16, scope: !4464)
!4476 = !DILocation(line: 533, column: 18, scope: !4464)
!4477 = !DILocation(line: 533, column: 25, scope: !4464)
!4478 = !DILocation(line: 533, column: 33, scope: !4464)
!4479 = !DILocation(line: 533, column: 3, scope: !4464)
!4480 = !DILocation(line: 533, column: 10, scope: !4464)
!4481 = !DILocation(line: 533, column: 16, scope: !4464)
!4482 = !DILocation(line: 534, column: 18, scope: !4464)
!4483 = !DILocation(line: 534, column: 25, scope: !4464)
!4484 = !DILocation(line: 534, column: 33, scope: !4464)
!4485 = !DILocation(line: 534, column: 3, scope: !4464)
!4486 = !DILocation(line: 534, column: 10, scope: !4464)
!4487 = !DILocation(line: 534, column: 16, scope: !4464)
!4488 = !DILocation(line: 535, column: 2, scope: !4464)
!4489 = !DILocation(line: 537, column: 3, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 535, column: 9)
!4491 = !DILocation(line: 537, column: 10, scope: !4490)
!4492 = !DILocation(line: 537, column: 16, scope: !4490)
!4493 = !DILocation(line: 538, column: 3, scope: !4490)
!4494 = !DILocation(line: 538, column: 10, scope: !4490)
!4495 = !DILocation(line: 538, column: 16, scope: !4490)
!4496 = !DILocation(line: 539, column: 3, scope: !4490)
!4497 = !DILocation(line: 539, column: 10, scope: !4490)
!4498 = !DILocation(line: 539, column: 16, scope: !4490)
!4499 = !DILocation(line: 540, column: 3, scope: !4490)
!4500 = !DILocation(line: 540, column: 10, scope: !4490)
!4501 = !DILocation(line: 540, column: 16, scope: !4490)
!4502 = !DILocation(line: 544, column: 19, scope: !4265)
!4503 = !DILocation(line: 544, column: 26, scope: !4265)
!4504 = !DILocation(line: 544, column: 33, scope: !4265)
!4505 = !DILocation(line: 544, column: 40, scope: !4265)
!4506 = !DILocation(line: 544, column: 31, scope: !4265)
!4507 = !DILocation(line: 545, column: 5, scope: !4265)
!4508 = !DILocation(line: 545, column: 12, scope: !4265)
!4509 = !DILocation(line: 545, column: 20, scope: !4265)
!4510 = !DILocation(line: 545, column: 27, scope: !4265)
!4511 = !DILocation(line: 545, column: 18, scope: !4265)
!4512 = !DILocation(line: 544, column: 46, scope: !4265)
!4513 = !DILocation(line: 544, column: 2, scope: !4265)
!4514 = !DILocation(line: 544, column: 9, scope: !4265)
!4515 = !DILocation(line: 544, column: 16, scope: !4265)
!4516 = !DILocation(line: 547, column: 46, scope: !4265)
!4517 = !DILocation(line: 547, column: 53, scope: !4265)
!4518 = !DILocation(line: 547, column: 59, scope: !4265)
!4519 = !DILocation(line: 547, column: 62, scope: !4265)
!4520 = !DILocation(line: 547, column: 2, scope: !4265)
!4521 = !DILocation(line: 547, column: 9, scope: !4265)
!4522 = !DILocation(line: 547, column: 18, scope: !4265)
!4523 = !DILocation(line: 547, column: 22, scope: !4265)
!4524 = !DILocation(line: 547, column: 27, scope: !4265)
!4525 = !DILocation(line: 547, column: 43, scope: !4265)
!4526 = !DILocation(line: 548, column: 46, scope: !4265)
!4527 = !DILocation(line: 548, column: 53, scope: !4265)
!4528 = !DILocation(line: 548, column: 59, scope: !4265)
!4529 = !DILocation(line: 548, column: 62, scope: !4265)
!4530 = !DILocation(line: 548, column: 2, scope: !4265)
!4531 = !DILocation(line: 548, column: 9, scope: !4265)
!4532 = !DILocation(line: 548, column: 18, scope: !4265)
!4533 = !DILocation(line: 548, column: 22, scope: !4265)
!4534 = !DILocation(line: 548, column: 27, scope: !4265)
!4535 = !DILocation(line: 548, column: 43, scope: !4265)
!4536 = !DILocation(line: 554, column: 37, scope: !4265)
!4537 = !DILocation(line: 554, column: 2, scope: !4265)
!4538 = !DILocation(line: 554, column: 9, scope: !4265)
!4539 = !DILocation(line: 554, column: 18, scope: !4265)
!4540 = !DILocation(line: 554, column: 35, scope: !4265)
!4541 = !DILocation(line: 555, column: 10, scope: !4265)
!4542 = !DILocation(line: 555, column: 17, scope: !4265)
!4543 = !DILocation(line: 555, column: 2, scope: !4265)
!4544 = !DILabel(scope: !4265, name: "error", file: !3, line: 557)
!4545 = !DILocation(line: 557, column: 1, scope: !4265)
!4546 = !DILocation(line: 558, column: 8, scope: !4265)
!4547 = !DILocation(line: 558, column: 2, scope: !4265)
!4548 = !DILocation(line: 559, column: 2, scope: !4265)
!4549 = !DILocation(line: 560, column: 1, scope: !4265)
!4550 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4551, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!305, !774, !303}
!4553 = !DILocalVariable(name: "s", arg: 1, scope: !4554, file: !284, line: 445, type: !1372)
!4554 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4555, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!305, !1372, !303, !774}
!4557 = !DILocation(line: 445, column: 72, scope: !4554, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 552, column: 10, scope: !4559, inlinedAt: !4562)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !284, line: 540, column: 34)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !284, line: 540, column: 6)
!4561 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4551, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4562 = distinct !DILocation(line: 664, column: 9, scope: !4550)
!4563 = !DILocalVariable(name: "flags", arg: 2, scope: !4554, file: !284, line: 446, type: !303)
!4564 = !DILocation(line: 446, column: 9, scope: !4554, inlinedAt: !4558)
!4565 = !DILocalVariable(name: "size", arg: 3, scope: !4554, file: !284, line: 446, type: !774)
!4566 = !DILocation(line: 446, column: 23, scope: !4554, inlinedAt: !4558)
!4567 = !DILocalVariable(name: "ret", scope: !4554, file: !284, line: 448, type: !305)
!4568 = !DILocation(line: 448, column: 8, scope: !4554, inlinedAt: !4558)
!4569 = !DILocalVariable(name: "flags", arg: 1, scope: !4570, file: !284, line: 318, type: !303)
!4570 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4571, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!283, !303}
!4573 = !DILocation(line: 318, column: 67, scope: !4570, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 553, column: 20, scope: !4559, inlinedAt: !4562)
!4575 = !DILocalVariable(name: "size", arg: 1, scope: !4576, file: !284, line: 346, type: !774)
!4576 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4577, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!7, !774}
!4579 = !DILocation(line: 346, column: 58, scope: !4576, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 547, column: 11, scope: !4559, inlinedAt: !4562)
!4581 = !DILocalVariable(name: "size", arg: 1, scope: !4582, file: !284, line: 472, type: !774)
!4582 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4583, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!305, !774, !303, !7}
!4585 = !DILocation(line: 472, column: 28, scope: !4582, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 481, column: 9, scope: !4587, inlinedAt: !4588)
!4587 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4551, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4588 = distinct !DILocation(line: 545, column: 11, scope: !4589, inlinedAt: !4562)
!4589 = distinct !DILexicalBlock(scope: !4559, file: !284, line: 544, column: 7)
!4590 = !DILocalVariable(name: "flags", arg: 2, scope: !4582, file: !284, line: 472, type: !303)
!4591 = !DILocation(line: 472, column: 40, scope: !4582, inlinedAt: !4586)
!4592 = !DILocalVariable(name: "order", arg: 3, scope: !4582, file: !284, line: 472, type: !7)
!4593 = !DILocation(line: 472, column: 60, scope: !4582, inlinedAt: !4586)
!4594 = !DILocalVariable(name: "size", arg: 1, scope: !4587, file: !284, line: 478, type: !774)
!4595 = !DILocation(line: 478, column: 51, scope: !4587, inlinedAt: !4588)
!4596 = !DILocalVariable(name: "flags", arg: 2, scope: !4587, file: !284, line: 478, type: !303)
!4597 = !DILocation(line: 478, column: 63, scope: !4587, inlinedAt: !4588)
!4598 = !DILocalVariable(name: "order", scope: !4587, file: !284, line: 480, type: !7)
!4599 = !DILocation(line: 480, column: 15, scope: !4587, inlinedAt: !4588)
!4600 = !DILocalVariable(name: "size", arg: 1, scope: !4561, file: !284, line: 538, type: !774)
!4601 = !DILocation(line: 538, column: 45, scope: !4561, inlinedAt: !4562)
!4602 = !DILocalVariable(name: "flags", arg: 2, scope: !4561, file: !284, line: 538, type: !303)
!4603 = !DILocation(line: 538, column: 57, scope: !4561, inlinedAt: !4562)
!4604 = !DILocalVariable(name: "index", scope: !4559, file: !284, line: 542, type: !7)
!4605 = !DILocation(line: 542, column: 16, scope: !4559, inlinedAt: !4562)
!4606 = !DILocalVariable(name: "size", arg: 1, scope: !4550, file: !284, line: 662, type: !774)
!4607 = !DILocation(line: 662, column: 36, scope: !4550)
!4608 = !DILocalVariable(name: "flags", arg: 2, scope: !4550, file: !284, line: 662, type: !303)
!4609 = !DILocation(line: 662, column: 48, scope: !4550)
!4610 = !DILocation(line: 664, column: 17, scope: !4550)
!4611 = !DILocation(line: 664, column: 23, scope: !4550)
!4612 = !DILocation(line: 664, column: 29, scope: !4550)
!4613 = !DILocation(line: 540, column: 27, scope: !4560, inlinedAt: !4562)
!4614 = !DILocation(line: 540, column: 6, scope: !4560, inlinedAt: !4562)
!4615 = !DILocation(line: 540, column: 6, scope: !4561, inlinedAt: !4562)
!4616 = !DILocation(line: 544, column: 7, scope: !4589, inlinedAt: !4562)
!4617 = !DILocation(line: 544, column: 12, scope: !4589, inlinedAt: !4562)
!4618 = !DILocation(line: 544, column: 7, scope: !4559, inlinedAt: !4562)
!4619 = !DILocation(line: 545, column: 25, scope: !4589, inlinedAt: !4562)
!4620 = !DILocation(line: 545, column: 31, scope: !4589, inlinedAt: !4562)
!4621 = !DILocation(line: 480, column: 33, scope: !4587, inlinedAt: !4588)
!4622 = !DILocation(line: 480, column: 23, scope: !4587, inlinedAt: !4588)
!4623 = !DILocation(line: 481, column: 29, scope: !4587, inlinedAt: !4588)
!4624 = !DILocation(line: 481, column: 35, scope: !4587, inlinedAt: !4588)
!4625 = !DILocation(line: 481, column: 42, scope: !4587, inlinedAt: !4588)
!4626 = !DILocation(line: 474, column: 23, scope: !4582, inlinedAt: !4586)
!4627 = !DILocation(line: 474, column: 29, scope: !4582, inlinedAt: !4586)
!4628 = !DILocation(line: 474, column: 36, scope: !4582, inlinedAt: !4586)
!4629 = !DILocation(line: 474, column: 9, scope: !4582, inlinedAt: !4586)
!4630 = !DILocation(line: 545, column: 4, scope: !4589, inlinedAt: !4562)
!4631 = !DILocation(line: 547, column: 25, scope: !4559, inlinedAt: !4562)
!4632 = !DILocation(line: 348, column: 7, scope: !4633, inlinedAt: !4580)
!4633 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 348, column: 6)
!4634 = !DILocation(line: 348, column: 6, scope: !4576, inlinedAt: !4580)
!4635 = !DILocation(line: 349, column: 3, scope: !4633, inlinedAt: !4580)
!4636 = !DILocation(line: 351, column: 6, scope: !4637, inlinedAt: !4580)
!4637 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 351, column: 6)
!4638 = !DILocation(line: 351, column: 11, scope: !4637, inlinedAt: !4580)
!4639 = !DILocation(line: 351, column: 6, scope: !4576, inlinedAt: !4580)
!4640 = !DILocation(line: 352, column: 3, scope: !4637, inlinedAt: !4580)
!4641 = !DILocation(line: 354, column: 32, scope: !4642, inlinedAt: !4580)
!4642 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 354, column: 6)
!4643 = !DILocation(line: 354, column: 37, scope: !4642, inlinedAt: !4580)
!4644 = !DILocation(line: 354, column: 42, scope: !4642, inlinedAt: !4580)
!4645 = !DILocation(line: 354, column: 45, scope: !4642, inlinedAt: !4580)
!4646 = !DILocation(line: 354, column: 50, scope: !4642, inlinedAt: !4580)
!4647 = !DILocation(line: 354, column: 6, scope: !4576, inlinedAt: !4580)
!4648 = !DILocation(line: 355, column: 3, scope: !4642, inlinedAt: !4580)
!4649 = !DILocation(line: 356, column: 32, scope: !4650, inlinedAt: !4580)
!4650 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 356, column: 6)
!4651 = !DILocation(line: 356, column: 37, scope: !4650, inlinedAt: !4580)
!4652 = !DILocation(line: 356, column: 43, scope: !4650, inlinedAt: !4580)
!4653 = !DILocation(line: 356, column: 46, scope: !4650, inlinedAt: !4580)
!4654 = !DILocation(line: 356, column: 51, scope: !4650, inlinedAt: !4580)
!4655 = !DILocation(line: 356, column: 6, scope: !4576, inlinedAt: !4580)
!4656 = !DILocation(line: 357, column: 3, scope: !4650, inlinedAt: !4580)
!4657 = !DILocation(line: 358, column: 6, scope: !4658, inlinedAt: !4580)
!4658 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 358, column: 6)
!4659 = !DILocation(line: 358, column: 11, scope: !4658, inlinedAt: !4580)
!4660 = !DILocation(line: 358, column: 6, scope: !4576, inlinedAt: !4580)
!4661 = !DILocation(line: 358, column: 26, scope: !4658, inlinedAt: !4580)
!4662 = !DILocation(line: 359, column: 6, scope: !4663, inlinedAt: !4580)
!4663 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 359, column: 6)
!4664 = !DILocation(line: 359, column: 11, scope: !4663, inlinedAt: !4580)
!4665 = !DILocation(line: 359, column: 6, scope: !4576, inlinedAt: !4580)
!4666 = !DILocation(line: 359, column: 26, scope: !4663, inlinedAt: !4580)
!4667 = !DILocation(line: 360, column: 6, scope: !4668, inlinedAt: !4580)
!4668 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 360, column: 6)
!4669 = !DILocation(line: 360, column: 11, scope: !4668, inlinedAt: !4580)
!4670 = !DILocation(line: 360, column: 6, scope: !4576, inlinedAt: !4580)
!4671 = !DILocation(line: 360, column: 26, scope: !4668, inlinedAt: !4580)
!4672 = !DILocation(line: 361, column: 6, scope: !4673, inlinedAt: !4580)
!4673 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 361, column: 6)
!4674 = !DILocation(line: 361, column: 11, scope: !4673, inlinedAt: !4580)
!4675 = !DILocation(line: 361, column: 6, scope: !4576, inlinedAt: !4580)
!4676 = !DILocation(line: 361, column: 26, scope: !4673, inlinedAt: !4580)
!4677 = !DILocation(line: 362, column: 6, scope: !4678, inlinedAt: !4580)
!4678 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 362, column: 6)
!4679 = !DILocation(line: 362, column: 11, scope: !4678, inlinedAt: !4580)
!4680 = !DILocation(line: 362, column: 6, scope: !4576, inlinedAt: !4580)
!4681 = !DILocation(line: 362, column: 26, scope: !4678, inlinedAt: !4580)
!4682 = !DILocation(line: 363, column: 6, scope: !4683, inlinedAt: !4580)
!4683 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 363, column: 6)
!4684 = !DILocation(line: 363, column: 11, scope: !4683, inlinedAt: !4580)
!4685 = !DILocation(line: 363, column: 6, scope: !4576, inlinedAt: !4580)
!4686 = !DILocation(line: 363, column: 26, scope: !4683, inlinedAt: !4580)
!4687 = !DILocation(line: 364, column: 6, scope: !4688, inlinedAt: !4580)
!4688 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 364, column: 6)
!4689 = !DILocation(line: 364, column: 11, scope: !4688, inlinedAt: !4580)
!4690 = !DILocation(line: 364, column: 6, scope: !4576, inlinedAt: !4580)
!4691 = !DILocation(line: 364, column: 26, scope: !4688, inlinedAt: !4580)
!4692 = !DILocation(line: 365, column: 6, scope: !4693, inlinedAt: !4580)
!4693 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 365, column: 6)
!4694 = !DILocation(line: 365, column: 11, scope: !4693, inlinedAt: !4580)
!4695 = !DILocation(line: 365, column: 6, scope: !4576, inlinedAt: !4580)
!4696 = !DILocation(line: 365, column: 26, scope: !4693, inlinedAt: !4580)
!4697 = !DILocation(line: 366, column: 6, scope: !4698, inlinedAt: !4580)
!4698 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 366, column: 6)
!4699 = !DILocation(line: 366, column: 11, scope: !4698, inlinedAt: !4580)
!4700 = !DILocation(line: 366, column: 6, scope: !4576, inlinedAt: !4580)
!4701 = !DILocation(line: 366, column: 26, scope: !4698, inlinedAt: !4580)
!4702 = !DILocation(line: 367, column: 6, scope: !4703, inlinedAt: !4580)
!4703 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 367, column: 6)
!4704 = !DILocation(line: 367, column: 11, scope: !4703, inlinedAt: !4580)
!4705 = !DILocation(line: 367, column: 6, scope: !4576, inlinedAt: !4580)
!4706 = !DILocation(line: 367, column: 26, scope: !4703, inlinedAt: !4580)
!4707 = !DILocation(line: 368, column: 6, scope: !4708, inlinedAt: !4580)
!4708 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 368, column: 6)
!4709 = !DILocation(line: 368, column: 11, scope: !4708, inlinedAt: !4580)
!4710 = !DILocation(line: 368, column: 6, scope: !4576, inlinedAt: !4580)
!4711 = !DILocation(line: 368, column: 26, scope: !4708, inlinedAt: !4580)
!4712 = !DILocation(line: 369, column: 6, scope: !4713, inlinedAt: !4580)
!4713 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 369, column: 6)
!4714 = !DILocation(line: 369, column: 11, scope: !4713, inlinedAt: !4580)
!4715 = !DILocation(line: 369, column: 6, scope: !4576, inlinedAt: !4580)
!4716 = !DILocation(line: 369, column: 26, scope: !4713, inlinedAt: !4580)
!4717 = !DILocation(line: 370, column: 6, scope: !4718, inlinedAt: !4580)
!4718 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 370, column: 6)
!4719 = !DILocation(line: 370, column: 11, scope: !4718, inlinedAt: !4580)
!4720 = !DILocation(line: 370, column: 6, scope: !4576, inlinedAt: !4580)
!4721 = !DILocation(line: 370, column: 26, scope: !4718, inlinedAt: !4580)
!4722 = !DILocation(line: 371, column: 6, scope: !4723, inlinedAt: !4580)
!4723 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 371, column: 6)
!4724 = !DILocation(line: 371, column: 11, scope: !4723, inlinedAt: !4580)
!4725 = !DILocation(line: 371, column: 6, scope: !4576, inlinedAt: !4580)
!4726 = !DILocation(line: 371, column: 26, scope: !4723, inlinedAt: !4580)
!4727 = !DILocation(line: 372, column: 6, scope: !4728, inlinedAt: !4580)
!4728 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 372, column: 6)
!4729 = !DILocation(line: 372, column: 11, scope: !4728, inlinedAt: !4580)
!4730 = !DILocation(line: 372, column: 6, scope: !4576, inlinedAt: !4580)
!4731 = !DILocation(line: 372, column: 26, scope: !4728, inlinedAt: !4580)
!4732 = !DILocation(line: 373, column: 6, scope: !4733, inlinedAt: !4580)
!4733 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 373, column: 6)
!4734 = !DILocation(line: 373, column: 11, scope: !4733, inlinedAt: !4580)
!4735 = !DILocation(line: 373, column: 6, scope: !4576, inlinedAt: !4580)
!4736 = !DILocation(line: 373, column: 26, scope: !4733, inlinedAt: !4580)
!4737 = !DILocation(line: 374, column: 6, scope: !4738, inlinedAt: !4580)
!4738 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 374, column: 6)
!4739 = !DILocation(line: 374, column: 11, scope: !4738, inlinedAt: !4580)
!4740 = !DILocation(line: 374, column: 6, scope: !4576, inlinedAt: !4580)
!4741 = !DILocation(line: 374, column: 26, scope: !4738, inlinedAt: !4580)
!4742 = !DILocation(line: 375, column: 6, scope: !4743, inlinedAt: !4580)
!4743 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 375, column: 6)
!4744 = !DILocation(line: 375, column: 11, scope: !4743, inlinedAt: !4580)
!4745 = !DILocation(line: 375, column: 6, scope: !4576, inlinedAt: !4580)
!4746 = !DILocation(line: 375, column: 27, scope: !4743, inlinedAt: !4580)
!4747 = !DILocation(line: 376, column: 6, scope: !4748, inlinedAt: !4580)
!4748 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 376, column: 6)
!4749 = !DILocation(line: 376, column: 11, scope: !4748, inlinedAt: !4580)
!4750 = !DILocation(line: 376, column: 6, scope: !4576, inlinedAt: !4580)
!4751 = !DILocation(line: 376, column: 32, scope: !4748, inlinedAt: !4580)
!4752 = !DILocation(line: 377, column: 6, scope: !4753, inlinedAt: !4580)
!4753 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 377, column: 6)
!4754 = !DILocation(line: 377, column: 11, scope: !4753, inlinedAt: !4580)
!4755 = !DILocation(line: 377, column: 6, scope: !4576, inlinedAt: !4580)
!4756 = !DILocation(line: 377, column: 32, scope: !4753, inlinedAt: !4580)
!4757 = !DILocation(line: 378, column: 6, scope: !4758, inlinedAt: !4580)
!4758 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 378, column: 6)
!4759 = !DILocation(line: 378, column: 11, scope: !4758, inlinedAt: !4580)
!4760 = !DILocation(line: 378, column: 6, scope: !4576, inlinedAt: !4580)
!4761 = !DILocation(line: 378, column: 32, scope: !4758, inlinedAt: !4580)
!4762 = !DILocation(line: 379, column: 6, scope: !4763, inlinedAt: !4580)
!4763 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 379, column: 6)
!4764 = !DILocation(line: 379, column: 11, scope: !4763, inlinedAt: !4580)
!4765 = !DILocation(line: 379, column: 6, scope: !4576, inlinedAt: !4580)
!4766 = !DILocation(line: 379, column: 33, scope: !4763, inlinedAt: !4580)
!4767 = !DILocation(line: 380, column: 6, scope: !4768, inlinedAt: !4580)
!4768 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 380, column: 6)
!4769 = !DILocation(line: 380, column: 11, scope: !4768, inlinedAt: !4580)
!4770 = !DILocation(line: 380, column: 6, scope: !4576, inlinedAt: !4580)
!4771 = !DILocation(line: 380, column: 33, scope: !4768, inlinedAt: !4580)
!4772 = !DILocation(line: 381, column: 6, scope: !4773, inlinedAt: !4580)
!4773 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 381, column: 6)
!4774 = !DILocation(line: 381, column: 11, scope: !4773, inlinedAt: !4580)
!4775 = !DILocation(line: 381, column: 6, scope: !4576, inlinedAt: !4580)
!4776 = !DILocation(line: 381, column: 33, scope: !4773, inlinedAt: !4580)
!4777 = !DILocation(line: 382, column: 2, scope: !4778, inlinedAt: !4580)
!4778 = distinct !DILexicalBlock(scope: !4779, file: !284, line: 382, column: 2)
!4779 = distinct !DILexicalBlock(scope: !4576, file: !284, line: 382, column: 2)
!4780 = !{i32 -2144227269, i32 -2144227240, i32 -2144227194, i32 -2144227136, i32 -2144227082, i32 -2144227028, i32 -2144226973, i32 -2144226942}
!4781 = !DILocation(line: 382, column: 2, scope: !4782, inlinedAt: !4580)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !284, line: 382, column: 2)
!4783 = distinct !DILexicalBlock(scope: !4779, file: !284, line: 382, column: 2)
!4784 = !{i32 -2144226499, i32 -2144226492, i32 -2144226438, i32 -2144226407, i32 -2144226377}
!4785 = !DILocation(line: 382, column: 2, scope: !4783, inlinedAt: !4580)
!4786 = !DILocation(line: 386, column: 1, scope: !4576, inlinedAt: !4580)
!4787 = !DILocation(line: 547, column: 9, scope: !4559, inlinedAt: !4562)
!4788 = !DILocation(line: 549, column: 8, scope: !4789, inlinedAt: !4562)
!4789 = distinct !DILexicalBlock(scope: !4559, file: !284, line: 549, column: 7)
!4790 = !DILocation(line: 549, column: 7, scope: !4559, inlinedAt: !4562)
!4791 = !DILocation(line: 550, column: 4, scope: !4789, inlinedAt: !4562)
!4792 = !DILocation(line: 553, column: 33, scope: !4559, inlinedAt: !4562)
!4793 = !DILocation(line: 325, column: 6, scope: !4794, inlinedAt: !4574)
!4794 = distinct !DILexicalBlock(scope: !4570, file: !284, line: 325, column: 6)
!4795 = !DILocation(line: 325, column: 6, scope: !4570, inlinedAt: !4574)
!4796 = !DILocation(line: 326, column: 3, scope: !4794, inlinedAt: !4574)
!4797 = !DILocation(line: 332, column: 9, scope: !4570, inlinedAt: !4574)
!4798 = !DILocation(line: 332, column: 15, scope: !4570, inlinedAt: !4574)
!4799 = !DILocation(line: 332, column: 2, scope: !4570, inlinedAt: !4574)
!4800 = !DILocation(line: 336, column: 1, scope: !4570, inlinedAt: !4574)
!4801 = !DILocation(line: 553, column: 5, scope: !4559, inlinedAt: !4562)
!4802 = !DILocation(line: 553, column: 41, scope: !4559, inlinedAt: !4562)
!4803 = !DILocation(line: 554, column: 5, scope: !4559, inlinedAt: !4562)
!4804 = !DILocation(line: 554, column: 12, scope: !4559, inlinedAt: !4562)
!4805 = !DILocation(line: 448, column: 31, scope: !4554, inlinedAt: !4558)
!4806 = !DILocation(line: 448, column: 34, scope: !4554, inlinedAt: !4558)
!4807 = !DILocation(line: 448, column: 14, scope: !4554, inlinedAt: !4558)
!4808 = !DILocation(line: 450, column: 22, scope: !4554, inlinedAt: !4558)
!4809 = !DILocation(line: 450, column: 25, scope: !4554, inlinedAt: !4558)
!4810 = !DILocation(line: 450, column: 30, scope: !4554, inlinedAt: !4558)
!4811 = !DILocation(line: 450, column: 36, scope: !4554, inlinedAt: !4558)
!4812 = !DILocation(line: 450, column: 8, scope: !4554, inlinedAt: !4558)
!4813 = !DILocation(line: 450, column: 6, scope: !4554, inlinedAt: !4558)
!4814 = !DILocation(line: 451, column: 9, scope: !4554, inlinedAt: !4558)
!4815 = !DILocation(line: 552, column: 3, scope: !4559, inlinedAt: !4562)
!4816 = !DILocation(line: 557, column: 19, scope: !4561, inlinedAt: !4562)
!4817 = !DILocation(line: 557, column: 25, scope: !4561, inlinedAt: !4562)
!4818 = !DILocation(line: 557, column: 9, scope: !4561, inlinedAt: !4562)
!4819 = !DILocation(line: 557, column: 2, scope: !4561, inlinedAt: !4562)
!4820 = !DILocation(line: 558, column: 1, scope: !4561, inlinedAt: !4562)
!4821 = !DILocation(line: 664, column: 2, scope: !4550)
!4822 = distinct !DISubprogram(name: "tda10023_writereg", scope: !3, file: !3, line: 69, type: !4823, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!316, !4409, !382, !382}
!4825 = !DILocalVariable(name: "state", arg: 1, scope: !4822, file: !3, line: 69, type: !4409)
!4826 = !DILocation(line: 69, column: 54, scope: !4822)
!4827 = !DILocalVariable(name: "reg", arg: 2, scope: !4822, file: !3, line: 69, type: !382)
!4828 = !DILocation(line: 69, column: 64, scope: !4822)
!4829 = !DILocalVariable(name: "data", arg: 3, scope: !4822, file: !3, line: 69, type: !382)
!4830 = !DILocation(line: 69, column: 72, scope: !4822)
!4831 = !DILocalVariable(name: "buf", scope: !4822, file: !3, line: 71, type: !4832)
!4832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 16, elements: !1917)
!4833 = !DILocation(line: 71, column: 5, scope: !4822)
!4834 = !DILocation(line: 71, column: 13, scope: !4822)
!4835 = !DILocation(line: 71, column: 15, scope: !4822)
!4836 = !DILocation(line: 71, column: 20, scope: !4822)
!4837 = !DILocalVariable(name: "msg", scope: !4822, file: !3, line: 72, type: !4296)
!4838 = !DILocation(line: 72, column: 17, scope: !4822)
!4839 = !DILocation(line: 72, column: 23, scope: !4822)
!4840 = !DILocation(line: 72, column: 33, scope: !4822)
!4841 = !DILocation(line: 72, column: 40, scope: !4822)
!4842 = !DILocation(line: 72, column: 48, scope: !4822)
!4843 = !DILocation(line: 72, column: 82, scope: !4822)
!4844 = !DILocalVariable(name: "ret", scope: !4822, file: !3, line: 73, type: !316)
!4845 = !DILocation(line: 73, column: 6, scope: !4822)
!4846 = !DILocation(line: 75, column: 22, scope: !4822)
!4847 = !DILocation(line: 75, column: 29, scope: !4822)
!4848 = !DILocation(line: 75, column: 8, scope: !4822)
!4849 = !DILocation(line: 75, column: 6, scope: !4822)
!4850 = !DILocation(line: 76, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 76, column: 6)
!4852 = !DILocation(line: 76, column: 10, scope: !4851)
!4853 = !DILocation(line: 76, column: 6, scope: !4822)
!4854 = !DILocalVariable(name: "num", scope: !4855, file: !3, line: 77, type: !316)
!4855 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 76, column: 16)
!4856 = !DILocation(line: 77, column: 7, scope: !4855)
!4857 = !DILocation(line: 77, column: 13, scope: !4855)
!4858 = !DILocation(line: 77, column: 20, scope: !4855)
!4859 = !DILocation(line: 77, column: 29, scope: !4855)
!4860 = !DILocation(line: 77, column: 35, scope: !4855)
!4861 = !DILocation(line: 77, column: 42, scope: !4855)
!4862 = !DILocation(line: 77, column: 51, scope: !4855)
!4863 = !DILocation(line: 77, column: 56, scope: !4855)
!4864 = !DILocation(line: 79, column: 4, scope: !4855)
!4865 = !DILocation(line: 79, column: 19, scope: !4855)
!4866 = !DILocation(line: 79, column: 24, scope: !4855)
!4867 = !DILocation(line: 79, column: 30, scope: !4855)
!4868 = !DILocation(line: 78, column: 3, scope: !4855)
!4869 = !DILocation(line: 80, column: 2, scope: !4855)
!4870 = !DILocation(line: 81, column: 10, scope: !4822)
!4871 = !DILocation(line: 81, column: 14, scope: !4822)
!4872 = !DILocation(line: 81, column: 9, scope: !4822)
!4873 = !DILocation(line: 81, column: 2, scope: !4822)
!4874 = distinct !DISubprogram(name: "tda10023_readreg", scope: !3, file: !3, line: 52, type: !4875, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!382, !4409, !382}
!4877 = !DILocalVariable(name: "state", arg: 1, scope: !4874, file: !3, line: 52, type: !4409)
!4878 = !DILocation(line: 52, column: 52, scope: !4874)
!4879 = !DILocalVariable(name: "reg", arg: 2, scope: !4874, file: !3, line: 52, type: !382)
!4880 = !DILocation(line: 52, column: 62, scope: !4874)
!4881 = !DILocalVariable(name: "b0", scope: !4874, file: !3, line: 54, type: !4882)
!4882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 8, elements: !1717)
!4883 = !DILocation(line: 54, column: 5, scope: !4874)
!4884 = !DILocation(line: 54, column: 13, scope: !4874)
!4885 = !DILocation(line: 54, column: 15, scope: !4874)
!4886 = !DILocalVariable(name: "b1", scope: !4874, file: !3, line: 55, type: !4882)
!4887 = !DILocation(line: 55, column: 5, scope: !4874)
!4888 = !DILocalVariable(name: "msg", scope: !4874, file: !3, line: 56, type: !4889)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4296, size: 256, elements: !1917)
!4890 = !DILocation(line: 56, column: 17, scope: !4874)
!4891 = !DILocation(line: 56, column: 26, scope: !4874)
!4892 = !DILocation(line: 56, column: 28, scope: !4874)
!4893 = !DILocation(line: 56, column: 38, scope: !4874)
!4894 = !DILocation(line: 56, column: 45, scope: !4874)
!4895 = !DILocation(line: 56, column: 53, scope: !4874)
!4896 = !DILocation(line: 56, column: 87, scope: !4874)
!4897 = !DILocation(line: 57, column: 7, scope: !4874)
!4898 = !DILocation(line: 57, column: 17, scope: !4874)
!4899 = !DILocation(line: 57, column: 24, scope: !4874)
!4900 = !DILocation(line: 57, column: 32, scope: !4874)
!4901 = !DILocation(line: 57, column: 73, scope: !4874)
!4902 = !DILocalVariable(name: "ret", scope: !4874, file: !3, line: 58, type: !316)
!4903 = !DILocation(line: 58, column: 6, scope: !4874)
!4904 = !DILocation(line: 60, column: 22, scope: !4874)
!4905 = !DILocation(line: 60, column: 29, scope: !4874)
!4906 = !DILocation(line: 60, column: 34, scope: !4874)
!4907 = !DILocation(line: 60, column: 8, scope: !4874)
!4908 = !DILocation(line: 60, column: 6, scope: !4874)
!4909 = !DILocation(line: 61, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 61, column: 6)
!4911 = !DILocation(line: 61, column: 10, scope: !4910)
!4912 = !DILocation(line: 61, column: 6, scope: !4874)
!4913 = !DILocalVariable(name: "num", scope: !4914, file: !3, line: 62, type: !316)
!4914 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 61, column: 16)
!4915 = !DILocation(line: 62, column: 7, scope: !4914)
!4916 = !DILocation(line: 62, column: 13, scope: !4914)
!4917 = !DILocation(line: 62, column: 20, scope: !4914)
!4918 = !DILocation(line: 62, column: 29, scope: !4914)
!4919 = !DILocation(line: 62, column: 35, scope: !4914)
!4920 = !DILocation(line: 62, column: 42, scope: !4914)
!4921 = !DILocation(line: 62, column: 51, scope: !4914)
!4922 = !DILocation(line: 62, column: 56, scope: !4914)
!4923 = !DILocation(line: 64, column: 4, scope: !4914)
!4924 = !DILocation(line: 64, column: 19, scope: !4914)
!4925 = !DILocation(line: 64, column: 24, scope: !4914)
!4926 = !DILocation(line: 63, column: 3, scope: !4914)
!4927 = !DILocation(line: 65, column: 2, scope: !4914)
!4928 = !DILocation(line: 66, column: 9, scope: !4874)
!4929 = !DILocation(line: 66, column: 2, scope: !4874)
!4930 = distinct !DISubprogram(name: "get_order", scope: !4931, file: !4931, line: 29, type: !4932, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4931 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!316, !572}
!4934 = !DILocalVariable(name: "x", arg: 1, scope: !4935, file: !4936, line: 366, type: !312)
!4935 = distinct !DISubprogram(name: "fls64", scope: !4936, file: !4936, line: 366, type: !4937, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4936 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!316, !312}
!4939 = !DILocation(line: 366, column: 40, scope: !4935, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 46, column: 9, scope: !4930)
!4941 = !DILocalVariable(name: "bitpos", scope: !4935, file: !4936, line: 368, type: !316)
!4942 = !DILocation(line: 368, column: 6, scope: !4935, inlinedAt: !4940)
!4943 = !DILocalVariable(name: "size", arg: 1, scope: !4930, file: !4931, line: 29, type: !572)
!4944 = !DILocation(line: 29, column: 63, scope: !4930)
!4945 = !DILocation(line: 31, column: 27, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4930, file: !4931, line: 31, column: 6)
!4947 = !DILocation(line: 31, column: 6, scope: !4946)
!4948 = !DILocation(line: 31, column: 6, scope: !4930)
!4949 = !DILocation(line: 32, column: 8, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4951, file: !4931, line: 32, column: 7)
!4951 = distinct !DILexicalBlock(scope: !4946, file: !4931, line: 31, column: 34)
!4952 = !DILocation(line: 32, column: 7, scope: !4951)
!4953 = !DILocation(line: 33, column: 4, scope: !4950)
!4954 = !DILocation(line: 35, column: 7, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4951, file: !4931, line: 35, column: 7)
!4956 = !DILocation(line: 35, column: 12, scope: !4955)
!4957 = !DILocation(line: 35, column: 7, scope: !4951)
!4958 = !DILocation(line: 36, column: 4, scope: !4955)
!4959 = !DILocation(line: 38, column: 10, scope: !4951)
!4960 = !DILocation(line: 38, column: 28, scope: !4951)
!4961 = !DILocation(line: 38, column: 41, scope: !4951)
!4962 = !DILocation(line: 38, column: 3, scope: !4951)
!4963 = !DILocation(line: 41, column: 6, scope: !4930)
!4964 = !DILocation(line: 42, column: 7, scope: !4930)
!4965 = !DILocation(line: 46, column: 15, scope: !4930)
!4966 = !DILocation(line: 374, column: 2, scope: !4935, inlinedAt: !4940)
!4967 = !DILocation(line: 376, column: 14, scope: !4935, inlinedAt: !4940)
!4968 = !{i32 257134}
!4969 = !DILocation(line: 377, column: 9, scope: !4935, inlinedAt: !4940)
!4970 = !DILocation(line: 377, column: 16, scope: !4935, inlinedAt: !4940)
!4971 = !DILocation(line: 46, column: 2, scope: !4930)
!4972 = !DILocation(line: 48, column: 1, scope: !4930)
!4973 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4974, file: !4974, line: 30, type: !4975, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4974 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!316, !311}
!4977 = !DILocation(line: 366, column: 40, scope: !4935, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 32, column: 9, scope: !4973)
!4979 = !DILocation(line: 368, column: 6, scope: !4935, inlinedAt: !4978)
!4980 = !DILocalVariable(name: "n", arg: 1, scope: !4973, file: !4974, line: 30, type: !311)
!4981 = !DILocation(line: 30, column: 21, scope: !4973)
!4982 = !DILocation(line: 32, column: 15, scope: !4973)
!4983 = !DILocation(line: 374, column: 2, scope: !4935, inlinedAt: !4978)
!4984 = !DILocation(line: 376, column: 14, scope: !4935, inlinedAt: !4978)
!4985 = !DILocation(line: 377, column: 9, scope: !4935, inlinedAt: !4978)
!4986 = !DILocation(line: 377, column: 16, scope: !4935, inlinedAt: !4978)
!4987 = !DILocation(line: 32, column: 18, scope: !4973)
!4988 = !DILocation(line: 32, column: 2, scope: !4973)
!4989 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4990, file: !4990, line: 137, type: !4991, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!4990 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!305, !1372, !2475, !774, !303}
!4993 = !DILocalVariable(name: "s", arg: 1, scope: !4989, file: !4990, line: 137, type: !1372)
!4994 = !DILocation(line: 137, column: 54, scope: !4989)
!4995 = !DILocalVariable(name: "object", arg: 2, scope: !4989, file: !4990, line: 137, type: !2475)
!4996 = !DILocation(line: 137, column: 69, scope: !4989)
!4997 = !DILocalVariable(name: "size", arg: 3, scope: !4989, file: !4990, line: 138, type: !774)
!4998 = !DILocation(line: 138, column: 12, scope: !4989)
!4999 = !DILocalVariable(name: "flags", arg: 4, scope: !4989, file: !4990, line: 138, type: !303)
!5000 = !DILocation(line: 138, column: 24, scope: !4989)
!5001 = !DILocation(line: 140, column: 17, scope: !4989)
!5002 = !DILocation(line: 140, column: 2, scope: !4989)
!5003 = distinct !DISubprogram(name: "tda10023_release", scope: !3, file: !3, line: 499, type: !389, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5004 = !DILocalVariable(name: "fe", arg: 1, scope: !5003, file: !3, line: 499, type: !345)
!5005 = !DILocation(line: 499, column: 51, scope: !5003)
!5006 = !DILocalVariable(name: "state", scope: !5003, file: !3, line: 501, type: !4409)
!5007 = !DILocation(line: 501, column: 25, scope: !5003)
!5008 = !DILocation(line: 501, column: 33, scope: !5003)
!5009 = !DILocation(line: 501, column: 37, scope: !5003)
!5010 = !DILocation(line: 502, column: 8, scope: !5003)
!5011 = !DILocation(line: 502, column: 2, scope: !5003)
!5012 = !DILocation(line: 503, column: 1, scope: !5003)
!5013 = distinct !DISubprogram(name: "tda10023_init", scope: !3, file: !3, line: 217, type: !343, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5014 = !DILocalVariable(name: "fe", arg: 1, scope: !5013, file: !3, line: 217, type: !345)
!5015 = !DILocation(line: 217, column: 48, scope: !5013)
!5016 = !DILocalVariable(name: "state", scope: !5013, file: !3, line: 219, type: !4409)
!5017 = !DILocation(line: 219, column: 25, scope: !5013)
!5018 = !DILocation(line: 219, column: 33, scope: !5013)
!5019 = !DILocation(line: 219, column: 37, scope: !5013)
!5020 = !DILocalVariable(name: "tda10023_inittab", scope: !5013, file: !3, line: 220, type: !5021)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 1008, elements: !5022)
!5022 = !{!5023}
!5023 = !DISubrange(count: 126)
!5024 = !DILocation(line: 220, column: 5, scope: !5013)
!5025 = !DILocation(line: 220, column: 26, scope: !5013)
!5026 = !DILocation(line: 227, column: 24, scope: !5013)
!5027 = !DILocation(line: 227, column: 31, scope: !5013)
!5028 = !DILocation(line: 227, column: 36, scope: !5013)
!5029 = !DILocation(line: 227, column: 23, scope: !5013)
!5030 = !DILocation(line: 229, column: 25, scope: !5013)
!5031 = !DILocation(line: 229, column: 32, scope: !5013)
!5032 = !DILocation(line: 229, column: 37, scope: !5013)
!5033 = !DILocation(line: 229, column: 40, scope: !5013)
!5034 = !DILocation(line: 229, column: 46, scope: !5013)
!5035 = !DILocation(line: 229, column: 53, scope: !5013)
!5036 = !DILocation(line: 229, column: 58, scope: !5013)
!5037 = !DILocation(line: 229, column: 44, scope: !5013)
!5038 = !DILocation(line: 229, column: 23, scope: !5013)
!5039 = !DILocation(line: 274, column: 6, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 274, column: 6)
!5041 = !DILocation(line: 274, column: 13, scope: !5040)
!5042 = !DILocation(line: 274, column: 21, scope: !5040)
!5043 = !DILocation(line: 274, column: 6, scope: !5013)
!5044 = !DILocation(line: 275, column: 27, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 274, column: 29)
!5046 = !DILocation(line: 275, column: 34, scope: !5045)
!5047 = !DILocation(line: 275, column: 42, scope: !5045)
!5048 = !DILocation(line: 275, column: 49, scope: !5045)
!5049 = !DILocation(line: 275, column: 26, scope: !5045)
!5050 = !DILocation(line: 275, column: 3, scope: !5045)
!5051 = !DILocation(line: 275, column: 24, scope: !5045)
!5052 = !DILocation(line: 276, column: 27, scope: !5045)
!5053 = !DILocation(line: 276, column: 34, scope: !5045)
!5054 = !DILocation(line: 276, column: 42, scope: !5045)
!5055 = !DILocation(line: 276, column: 49, scope: !5045)
!5056 = !DILocation(line: 276, column: 26, scope: !5045)
!5057 = !DILocation(line: 276, column: 3, scope: !5045)
!5058 = !DILocation(line: 276, column: 24, scope: !5045)
!5059 = !DILocation(line: 277, column: 2, scope: !5045)
!5060 = !DILocation(line: 279, column: 6, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 279, column: 6)
!5062 = !DILocation(line: 279, column: 13, scope: !5061)
!5063 = !DILocation(line: 279, column: 21, scope: !5061)
!5064 = !DILocation(line: 279, column: 6, scope: !5013)
!5065 = !DILocation(line: 280, column: 26, scope: !5061)
!5066 = !DILocation(line: 280, column: 33, scope: !5061)
!5067 = !DILocation(line: 280, column: 41, scope: !5061)
!5068 = !DILocation(line: 280, column: 3, scope: !5061)
!5069 = !DILocation(line: 280, column: 24, scope: !5061)
!5070 = !DILocation(line: 282, column: 20, scope: !5013)
!5071 = !DILocation(line: 282, column: 27, scope: !5013)
!5072 = !DILocation(line: 282, column: 2, scope: !5013)
!5073 = !DILocation(line: 284, column: 2, scope: !5013)
!5074 = distinct !DISubprogram(name: "tda10023_sleep", scope: !3, file: !3, line: 477, type: !343, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5075 = !DILocalVariable(name: "fe", arg: 1, scope: !5074, file: !3, line: 477, type: !345)
!5076 = !DILocation(line: 477, column: 48, scope: !5074)
!5077 = !DILocalVariable(name: "state", scope: !5074, file: !3, line: 479, type: !4409)
!5078 = !DILocation(line: 479, column: 25, scope: !5074)
!5079 = !DILocation(line: 479, column: 33, scope: !5074)
!5080 = !DILocation(line: 479, column: 37, scope: !5074)
!5081 = !DILocation(line: 481, column: 21, scope: !5074)
!5082 = !DILocation(line: 481, column: 2, scope: !5074)
!5083 = !DILocation(line: 482, column: 21, scope: !5074)
!5084 = !DILocation(line: 482, column: 2, scope: !5074)
!5085 = !DILocation(line: 484, column: 2, scope: !5074)
!5086 = !DILocalVariable(name: "fe", arg: 1, scope: !342, file: !3, line: 291, type: !345)
!5087 = !DILocation(line: 291, column: 57, scope: !342)
!5088 = !DILocalVariable(name: "c", scope: !342, file: !3, line: 293, type: !429)
!5089 = !DILocation(line: 293, column: 34, scope: !342)
!5090 = !DILocation(line: 293, column: 39, scope: !342)
!5091 = !DILocation(line: 293, column: 43, scope: !342)
!5092 = !DILocalVariable(name: "delsys", scope: !342, file: !3, line: 294, type: !306)
!5093 = !DILocation(line: 294, column: 6, scope: !342)
!5094 = !DILocation(line: 294, column: 16, scope: !342)
!5095 = !DILocation(line: 294, column: 19, scope: !342)
!5096 = !DILocalVariable(name: "qam", scope: !342, file: !3, line: 295, type: !7)
!5097 = !DILocation(line: 295, column: 11, scope: !342)
!5098 = !DILocation(line: 295, column: 17, scope: !342)
!5099 = !DILocation(line: 295, column: 20, scope: !342)
!5100 = !DILocalVariable(name: "is_annex_c", scope: !342, file: !3, line: 296, type: !406)
!5101 = !DILocation(line: 296, column: 7, scope: !342)
!5102 = !DILocalVariable(name: "state", scope: !342, file: !3, line: 297, type: !4409)
!5103 = !DILocation(line: 297, column: 25, scope: !342)
!5104 = !DILocation(line: 297, column: 33, scope: !342)
!5105 = !DILocation(line: 297, column: 37, scope: !342)
!5106 = !DILocation(line: 308, column: 10, scope: !342)
!5107 = !DILocation(line: 308, column: 2, scope: !342)
!5108 = !DILocation(line: 310, column: 14, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !342, file: !3, line: 308, column: 18)
!5110 = !DILocation(line: 311, column: 3, scope: !5109)
!5111 = !DILocation(line: 313, column: 14, scope: !5109)
!5112 = !DILocation(line: 314, column: 3, scope: !5109)
!5113 = !DILocation(line: 316, column: 3, scope: !5109)
!5114 = !DILocation(line: 326, column: 10, scope: !342)
!5115 = !DILocation(line: 326, column: 2, scope: !342)
!5116 = !DILocation(line: 333, column: 3, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !342, file: !3, line: 326, column: 15)
!5118 = !DILocation(line: 335, column: 3, scope: !5117)
!5119 = !DILocation(line: 338, column: 6, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !342, file: !3, line: 338, column: 6)
!5121 = !DILocation(line: 338, column: 10, scope: !5120)
!5122 = !DILocation(line: 338, column: 14, scope: !5120)
!5123 = !DILocation(line: 338, column: 24, scope: !5120)
!5124 = !DILocation(line: 338, column: 6, scope: !342)
!5125 = !DILocation(line: 339, column: 3, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 338, column: 36)
!5127 = !DILocation(line: 339, column: 7, scope: !5126)
!5128 = !DILocation(line: 339, column: 11, scope: !5126)
!5129 = !DILocation(line: 339, column: 21, scope: !5126)
!5130 = !DILocation(line: 339, column: 32, scope: !5126)
!5131 = !DILocation(line: 340, column: 7, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 340, column: 7)
!5133 = !DILocation(line: 340, column: 11, scope: !5132)
!5134 = !DILocation(line: 340, column: 15, scope: !5132)
!5135 = !DILocation(line: 340, column: 7, scope: !5126)
!5136 = !DILocation(line: 340, column: 30, scope: !5132)
!5137 = !DILocation(line: 340, column: 34, scope: !5132)
!5138 = !DILocation(line: 340, column: 38, scope: !5132)
!5139 = !DILocation(line: 340, column: 52, scope: !5132)
!5140 = !DILocation(line: 341, column: 2, scope: !5126)
!5141 = !DILocation(line: 343, column: 26, scope: !342)
!5142 = !DILocation(line: 343, column: 33, scope: !342)
!5143 = !DILocation(line: 343, column: 36, scope: !342)
!5144 = !DILocation(line: 343, column: 2, scope: !342)
!5145 = !DILocation(line: 344, column: 20, scope: !342)
!5146 = !DILocation(line: 344, column: 44, scope: !342)
!5147 = !DILocation(line: 344, column: 33, scope: !342)
!5148 = !DILocation(line: 344, column: 49, scope: !342)
!5149 = !DILocation(line: 344, column: 2, scope: !342)
!5150 = !DILocation(line: 345, column: 20, scope: !342)
!5151 = !DILocation(line: 345, column: 44, scope: !342)
!5152 = !DILocation(line: 345, column: 33, scope: !342)
!5153 = !DILocation(line: 345, column: 49, scope: !342)
!5154 = !DILocation(line: 345, column: 2, scope: !342)
!5155 = !DILocation(line: 346, column: 20, scope: !342)
!5156 = !DILocation(line: 346, column: 44, scope: !342)
!5157 = !DILocation(line: 346, column: 33, scope: !342)
!5158 = !DILocation(line: 346, column: 49, scope: !342)
!5159 = !DILocation(line: 346, column: 2, scope: !342)
!5160 = !DILocation(line: 347, column: 20, scope: !342)
!5161 = !DILocation(line: 347, column: 44, scope: !342)
!5162 = !DILocation(line: 347, column: 33, scope: !342)
!5163 = !DILocation(line: 347, column: 49, scope: !342)
!5164 = !DILocation(line: 347, column: 2, scope: !342)
!5165 = !DILocation(line: 348, column: 20, scope: !342)
!5166 = !DILocation(line: 348, column: 44, scope: !342)
!5167 = !DILocation(line: 348, column: 33, scope: !342)
!5168 = !DILocation(line: 348, column: 49, scope: !342)
!5169 = !DILocation(line: 348, column: 2, scope: !342)
!5170 = !DILocation(line: 353, column: 20, scope: !342)
!5171 = !DILocation(line: 353, column: 2, scope: !342)
!5172 = !DILocation(line: 355, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !342, file: !3, line: 355, column: 6)
!5174 = !DILocation(line: 355, column: 6, scope: !342)
!5175 = !DILocation(line: 356, column: 21, scope: !5173)
!5176 = !DILocation(line: 356, column: 3, scope: !5173)
!5177 = !DILocation(line: 358, column: 21, scope: !5173)
!5178 = !DILocation(line: 358, column: 3, scope: !5173)
!5179 = !DILocation(line: 360, column: 22, scope: !342)
!5180 = !DILocation(line: 360, column: 40, scope: !342)
!5181 = !DILocation(line: 360, column: 29, scope: !342)
!5182 = !DILocation(line: 360, column: 45, scope: !342)
!5183 = !DILocation(line: 360, column: 2, scope: !342)
!5184 = !DILocation(line: 362, column: 2, scope: !342)
!5185 = !DILocation(line: 363, column: 1, scope: !342)
!5186 = distinct !DISubprogram(name: "tda10023_get_frontend", scope: !3, file: !3, line: 446, type: !427, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5187 = !DILocalVariable(name: "fe", arg: 1, scope: !5186, file: !3, line: 446, type: !345)
!5188 = !DILocation(line: 446, column: 55, scope: !5186)
!5189 = !DILocalVariable(name: "p", arg: 2, scope: !5186, file: !3, line: 447, type: !429)
!5190 = !DILocation(line: 447, column: 38, scope: !5186)
!5191 = !DILocalVariable(name: "state", scope: !5186, file: !3, line: 449, type: !4409)
!5192 = !DILocation(line: 449, column: 25, scope: !5186)
!5193 = !DILocation(line: 449, column: 33, scope: !5186)
!5194 = !DILocation(line: 449, column: 37, scope: !5186)
!5195 = !DILocalVariable(name: "sync", scope: !5186, file: !3, line: 450, type: !316)
!5196 = !DILocation(line: 450, column: 6, scope: !5186)
!5197 = !DILocalVariable(name: "inv", scope: !5186, file: !3, line: 450, type: !316)
!5198 = !DILocation(line: 450, column: 11, scope: !5186)
!5199 = !DILocalVariable(name: "afc", scope: !5186, file: !3, line: 451, type: !5200)
!5200 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !307, line: 16, baseType: !5201)
!5201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !309, line: 20, baseType: !5202)
!5202 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5203 = !DILocation(line: 451, column: 5, scope: !5186)
!5204 = !DILocation(line: 453, column: 26, scope: !5186)
!5205 = !DILocation(line: 453, column: 9, scope: !5186)
!5206 = !DILocation(line: 453, column: 7, scope: !5186)
!5207 = !DILocation(line: 454, column: 25, scope: !5186)
!5208 = !DILocation(line: 454, column: 8, scope: !5186)
!5209 = !DILocation(line: 454, column: 6, scope: !5186)
!5210 = !DILocation(line: 455, column: 25, scope: !5186)
!5211 = !DILocation(line: 455, column: 8, scope: !5186)
!5212 = !DILocation(line: 455, column: 6, scope: !5186)
!5213 = !DILocation(line: 457, column: 6, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 457, column: 6)
!5215 = !DILocation(line: 457, column: 6, scope: !5186)
!5216 = !DILocation(line: 459, column: 10, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 457, column: 15)
!5218 = !DILocation(line: 459, column: 15, scope: !5217)
!5219 = !DILocation(line: 461, column: 4, scope: !5217)
!5220 = !DILocation(line: 461, column: 11, scope: !5217)
!5221 = !DILocation(line: 461, column: 20, scope: !5217)
!5222 = !DILocation(line: 461, column: 25, scope: !5217)
!5223 = !DILocation(line: 461, column: 30, scope: !5217)
!5224 = !DILocation(line: 462, column: 17, scope: !5217)
!5225 = !DILocation(line: 462, column: 20, scope: !5217)
!5226 = !DILocation(line: 462, column: 34, scope: !5217)
!5227 = !DILocation(line: 462, column: 32, scope: !5217)
!5228 = !DILocation(line: 462, column: 10, scope: !5217)
!5229 = !DILocation(line: 462, column: 39, scope: !5217)
!5230 = !DILocation(line: 459, column: 3, scope: !5217)
!5231 = !DILocation(line: 463, column: 2, scope: !5217)
!5232 = !DILocation(line: 465, column: 18, scope: !5186)
!5233 = !DILocation(line: 465, column: 21, scope: !5186)
!5234 = !DILocation(line: 465, column: 2, scope: !5186)
!5235 = !DILocation(line: 465, column: 5, scope: !5186)
!5236 = !DILocation(line: 465, column: 15, scope: !5186)
!5237 = !DILocation(line: 466, column: 20, scope: !5186)
!5238 = !DILocation(line: 466, column: 27, scope: !5186)
!5239 = !DILocation(line: 466, column: 32, scope: !5186)
!5240 = !DILocation(line: 466, column: 38, scope: !5186)
!5241 = !DILocation(line: 466, column: 43, scope: !5186)
!5242 = !DILocation(line: 466, column: 2, scope: !5186)
!5243 = !DILocation(line: 466, column: 5, scope: !5186)
!5244 = !DILocation(line: 466, column: 16, scope: !5186)
!5245 = !DILocation(line: 468, column: 2, scope: !5186)
!5246 = !DILocation(line: 468, column: 5, scope: !5186)
!5247 = !DILocation(line: 468, column: 15, scope: !5186)
!5248 = !DILocation(line: 469, column: 19, scope: !5186)
!5249 = !DILocation(line: 469, column: 22, scope: !5186)
!5250 = !DILocation(line: 469, column: 32, scope: !5186)
!5251 = !DILocation(line: 469, column: 41, scope: !5186)
!5252 = !DILocation(line: 469, column: 50, scope: !5186)
!5253 = !DILocation(line: 469, column: 2, scope: !5186)
!5254 = !DILocation(line: 469, column: 5, scope: !5186)
!5255 = !DILocation(line: 469, column: 15, scope: !5186)
!5256 = !DILocation(line: 471, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 471, column: 6)
!5258 = !DILocation(line: 471, column: 11, scope: !5257)
!5259 = !DILocation(line: 471, column: 6, scope: !5186)
!5260 = !DILocation(line: 472, column: 25, scope: !5257)
!5261 = !DILocation(line: 472, column: 28, scope: !5257)
!5262 = !DILocation(line: 472, column: 42, scope: !5257)
!5263 = !DILocation(line: 472, column: 40, scope: !5257)
!5264 = !DILocation(line: 472, column: 47, scope: !5257)
!5265 = !DILocation(line: 472, column: 3, scope: !5257)
!5266 = !DILocation(line: 472, column: 6, scope: !5257)
!5267 = !DILocation(line: 472, column: 16, scope: !5257)
!5268 = !DILocation(line: 474, column: 2, scope: !5186)
!5269 = distinct !DISubprogram(name: "tda10023_read_status", scope: !3, file: !3, line: 365, type: !510, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5270 = !DILocalVariable(name: "fe", arg: 1, scope: !5269, file: !3, line: 365, type: !345)
!5271 = !DILocation(line: 365, column: 54, scope: !5269)
!5272 = !DILocalVariable(name: "status", arg: 2, scope: !5269, file: !3, line: 366, type: !409)
!5273 = !DILocation(line: 366, column: 21, scope: !5269)
!5274 = !DILocalVariable(name: "state", scope: !5269, file: !3, line: 368, type: !4409)
!5275 = !DILocation(line: 368, column: 25, scope: !5269)
!5276 = !DILocation(line: 368, column: 33, scope: !5269)
!5277 = !DILocation(line: 368, column: 37, scope: !5269)
!5278 = !DILocalVariable(name: "sync", scope: !5269, file: !3, line: 369, type: !316)
!5279 = !DILocation(line: 369, column: 6, scope: !5269)
!5280 = !DILocation(line: 371, column: 3, scope: !5269)
!5281 = !DILocation(line: 371, column: 10, scope: !5269)
!5282 = !DILocation(line: 377, column: 27, scope: !5269)
!5283 = !DILocation(line: 377, column: 9, scope: !5269)
!5284 = !DILocation(line: 377, column: 7, scope: !5269)
!5285 = !DILocation(line: 379, column: 6, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 379, column: 6)
!5287 = !DILocation(line: 379, column: 11, scope: !5286)
!5288 = !DILocation(line: 379, column: 6, scope: !5269)
!5289 = !DILocation(line: 380, column: 4, scope: !5286)
!5290 = !DILocation(line: 380, column: 11, scope: !5286)
!5291 = !DILocation(line: 380, column: 3, scope: !5286)
!5292 = !DILocation(line: 382, column: 6, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 382, column: 6)
!5294 = !DILocation(line: 382, column: 11, scope: !5293)
!5295 = !DILocation(line: 382, column: 6, scope: !5269)
!5296 = !DILocation(line: 383, column: 4, scope: !5293)
!5297 = !DILocation(line: 383, column: 11, scope: !5293)
!5298 = !DILocation(line: 383, column: 3, scope: !5293)
!5299 = !DILocation(line: 385, column: 6, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 385, column: 6)
!5301 = !DILocation(line: 385, column: 11, scope: !5300)
!5302 = !DILocation(line: 385, column: 6, scope: !5269)
!5303 = !DILocation(line: 386, column: 4, scope: !5300)
!5304 = !DILocation(line: 386, column: 11, scope: !5300)
!5305 = !DILocation(line: 386, column: 3, scope: !5300)
!5306 = !DILocation(line: 388, column: 2, scope: !5269)
!5307 = distinct !DISubprogram(name: "tda10023_read_ber", scope: !3, file: !3, line: 391, type: !514, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5308 = !DILocalVariable(name: "fe", arg: 1, scope: !5307, file: !3, line: 391, type: !345)
!5309 = !DILocation(line: 391, column: 51, scope: !5307)
!5310 = !DILocalVariable(name: "ber", arg: 2, scope: !5307, file: !3, line: 391, type: !516)
!5311 = !DILocation(line: 391, column: 60, scope: !5307)
!5312 = !DILocalVariable(name: "state", scope: !5307, file: !3, line: 393, type: !4409)
!5313 = !DILocation(line: 393, column: 25, scope: !5307)
!5314 = !DILocation(line: 393, column: 33, scope: !5307)
!5315 = !DILocation(line: 393, column: 37, scope: !5307)
!5316 = !DILocalVariable(name: "a", scope: !5307, file: !3, line: 394, type: !382)
!5317 = !DILocation(line: 394, column: 5, scope: !5307)
!5318 = !DILocalVariable(name: "b", scope: !5307, file: !3, line: 394, type: !382)
!5319 = !DILocation(line: 394, column: 7, scope: !5307)
!5320 = !DILocalVariable(name: "c", scope: !5307, file: !3, line: 394, type: !382)
!5321 = !DILocation(line: 394, column: 9, scope: !5307)
!5322 = !DILocation(line: 395, column: 21, scope: !5307)
!5323 = !DILocation(line: 395, column: 4, scope: !5307)
!5324 = !DILocation(line: 395, column: 3, scope: !5307)
!5325 = !DILocation(line: 396, column: 21, scope: !5307)
!5326 = !DILocation(line: 396, column: 4, scope: !5307)
!5327 = !DILocation(line: 396, column: 3, scope: !5307)
!5328 = !DILocation(line: 397, column: 21, scope: !5307)
!5329 = !DILocation(line: 397, column: 4, scope: !5307)
!5330 = !DILocation(line: 397, column: 33, scope: !5307)
!5331 = !DILocation(line: 397, column: 3, scope: !5307)
!5332 = !DILocation(line: 398, column: 21, scope: !5307)
!5333 = !DILocation(line: 398, column: 2, scope: !5307)
!5334 = !DILocation(line: 400, column: 9, scope: !5307)
!5335 = !DILocation(line: 400, column: 14, scope: !5307)
!5336 = !DILocation(line: 400, column: 15, scope: !5307)
!5337 = !DILocation(line: 400, column: 11, scope: !5307)
!5338 = !DILocation(line: 400, column: 22, scope: !5307)
!5339 = !DILocation(line: 400, column: 23, scope: !5307)
!5340 = !DILocation(line: 400, column: 19, scope: !5307)
!5341 = !DILocation(line: 400, column: 3, scope: !5307)
!5342 = !DILocation(line: 400, column: 7, scope: !5307)
!5343 = !DILocation(line: 401, column: 2, scope: !5307)
!5344 = distinct !DISubprogram(name: "tda10023_read_signal_strength", scope: !3, file: !3, line: 404, type: !519, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5345 = !DILocalVariable(name: "fe", arg: 1, scope: !5344, file: !3, line: 404, type: !345)
!5346 = !DILocation(line: 404, column: 63, scope: !5344)
!5347 = !DILocalVariable(name: "strength", arg: 2, scope: !5344, file: !3, line: 404, type: !521)
!5348 = !DILocation(line: 404, column: 72, scope: !5344)
!5349 = !DILocalVariable(name: "state", scope: !5344, file: !3, line: 406, type: !4409)
!5350 = !DILocation(line: 406, column: 25, scope: !5344)
!5351 = !DILocation(line: 406, column: 33, scope: !5344)
!5352 = !DILocation(line: 406, column: 37, scope: !5344)
!5353 = !DILocalVariable(name: "ifgain", scope: !5344, file: !3, line: 407, type: !382)
!5354 = !DILocation(line: 407, column: 5, scope: !5344)
!5355 = !DILocation(line: 407, column: 29, scope: !5344)
!5356 = !DILocation(line: 407, column: 12, scope: !5344)
!5357 = !DILocalVariable(name: "gain", scope: !5344, file: !3, line: 409, type: !522)
!5358 = !DILocation(line: 409, column: 6, scope: !5344)
!5359 = !DILocation(line: 409, column: 36, scope: !5344)
!5360 = !DILocation(line: 409, column: 19, scope: !5344)
!5361 = !DILocation(line: 409, column: 18, scope: !5344)
!5362 = !DILocation(line: 409, column: 58, scope: !5344)
!5363 = !DILocation(line: 409, column: 57, scope: !5344)
!5364 = !DILocation(line: 409, column: 65, scope: !5344)
!5365 = !DILocation(line: 409, column: 51, scope: !5344)
!5366 = !DILocation(line: 409, column: 13, scope: !5344)
!5367 = !DILocation(line: 411, column: 6, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 411, column: 6)
!5369 = !DILocation(line: 411, column: 10, scope: !5368)
!5370 = !DILocation(line: 411, column: 6, scope: !5344)
!5371 = !DILocation(line: 412, column: 8, scope: !5368)
!5372 = !DILocation(line: 412, column: 16, scope: !5368)
!5373 = !DILocation(line: 412, column: 20, scope: !5368)
!5374 = !DILocation(line: 412, column: 14, scope: !5368)
!5375 = !DILocation(line: 412, column: 12, scope: !5368)
!5376 = !DILocation(line: 412, column: 7, scope: !5368)
!5377 = !DILocation(line: 412, column: 3, scope: !5368)
!5378 = !DILocation(line: 413, column: 6, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 413, column: 6)
!5380 = !DILocation(line: 413, column: 10, scope: !5379)
!5381 = !DILocation(line: 413, column: 6, scope: !5344)
!5382 = !DILocation(line: 414, column: 7, scope: !5379)
!5383 = !DILocation(line: 414, column: 3, scope: !5379)
!5384 = !DILocation(line: 416, column: 15, scope: !5344)
!5385 = !DILocation(line: 416, column: 19, scope: !5344)
!5386 = !DILocation(line: 416, column: 24, scope: !5344)
!5387 = !DILocation(line: 416, column: 23, scope: !5344)
!5388 = !DILocation(line: 416, column: 14, scope: !5344)
!5389 = !DILocation(line: 416, column: 3, scope: !5344)
!5390 = !DILocation(line: 416, column: 12, scope: !5344)
!5391 = !DILocation(line: 417, column: 2, scope: !5344)
!5392 = distinct !DISubprogram(name: "tda10023_read_snr", scope: !3, file: !3, line: 420, type: !519, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5393 = !DILocalVariable(name: "fe", arg: 1, scope: !5392, file: !3, line: 420, type: !345)
!5394 = !DILocation(line: 420, column: 51, scope: !5392)
!5395 = !DILocalVariable(name: "snr", arg: 2, scope: !5392, file: !3, line: 420, type: !521)
!5396 = !DILocation(line: 420, column: 60, scope: !5392)
!5397 = !DILocalVariable(name: "state", scope: !5392, file: !3, line: 422, type: !4409)
!5398 = !DILocation(line: 422, column: 25, scope: !5392)
!5399 = !DILocation(line: 422, column: 33, scope: !5392)
!5400 = !DILocation(line: 422, column: 37, scope: !5392)
!5401 = !DILocalVariable(name: "quality", scope: !5392, file: !3, line: 424, type: !382)
!5402 = !DILocation(line: 424, column: 5, scope: !5392)
!5403 = !DILocation(line: 424, column: 33, scope: !5392)
!5404 = !DILocation(line: 424, column: 16, scope: !5392)
!5405 = !DILocation(line: 424, column: 15, scope: !5392)
!5406 = !DILocation(line: 425, column: 10, scope: !5392)
!5407 = !DILocation(line: 425, column: 18, scope: !5392)
!5408 = !DILocation(line: 425, column: 26, scope: !5392)
!5409 = !DILocation(line: 425, column: 24, scope: !5392)
!5410 = !DILocation(line: 425, column: 9, scope: !5392)
!5411 = !DILocation(line: 425, column: 3, scope: !5392)
!5412 = !DILocation(line: 425, column: 7, scope: !5392)
!5413 = !DILocation(line: 426, column: 2, scope: !5392)
!5414 = distinct !DISubprogram(name: "tda10023_read_ucblocks", scope: !3, file: !3, line: 429, type: !514, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5415 = !DILocalVariable(name: "fe", arg: 1, scope: !5414, file: !3, line: 429, type: !345)
!5416 = !DILocation(line: 429, column: 56, scope: !5414)
!5417 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5414, file: !3, line: 429, type: !516)
!5418 = !DILocation(line: 429, column: 65, scope: !5414)
!5419 = !DILocalVariable(name: "state", scope: !5414, file: !3, line: 431, type: !4409)
!5420 = !DILocation(line: 431, column: 25, scope: !5414)
!5421 = !DILocation(line: 431, column: 33, scope: !5414)
!5422 = !DILocation(line: 431, column: 37, scope: !5414)
!5423 = !DILocalVariable(name: "a", scope: !5414, file: !3, line: 432, type: !382)
!5424 = !DILocation(line: 432, column: 5, scope: !5414)
!5425 = !DILocalVariable(name: "b", scope: !5414, file: !3, line: 432, type: !382)
!5426 = !DILocation(line: 432, column: 7, scope: !5414)
!5427 = !DILocalVariable(name: "c", scope: !5414, file: !3, line: 432, type: !382)
!5428 = !DILocation(line: 432, column: 9, scope: !5414)
!5429 = !DILocalVariable(name: "d", scope: !5414, file: !3, line: 432, type: !382)
!5430 = !DILocation(line: 432, column: 11, scope: !5414)
!5431 = !DILocation(line: 433, column: 23, scope: !5414)
!5432 = !DILocation(line: 433, column: 5, scope: !5414)
!5433 = !DILocation(line: 433, column: 3, scope: !5414)
!5434 = !DILocation(line: 434, column: 23, scope: !5414)
!5435 = !DILocation(line: 434, column: 5, scope: !5414)
!5436 = !DILocation(line: 434, column: 3, scope: !5414)
!5437 = !DILocation(line: 435, column: 23, scope: !5414)
!5438 = !DILocation(line: 435, column: 5, scope: !5414)
!5439 = !DILocation(line: 435, column: 3, scope: !5414)
!5440 = !DILocation(line: 436, column: 23, scope: !5414)
!5441 = !DILocation(line: 436, column: 5, scope: !5414)
!5442 = !DILocation(line: 436, column: 3, scope: !5414)
!5443 = !DILocation(line: 437, column: 14, scope: !5414)
!5444 = !DILocation(line: 437, column: 19, scope: !5414)
!5445 = !DILocation(line: 437, column: 20, scope: !5414)
!5446 = !DILocation(line: 437, column: 16, scope: !5414)
!5447 = !DILocation(line: 437, column: 26, scope: !5414)
!5448 = !DILocation(line: 437, column: 27, scope: !5414)
!5449 = !DILocation(line: 437, column: 24, scope: !5414)
!5450 = !DILocation(line: 437, column: 34, scope: !5414)
!5451 = !DILocation(line: 437, column: 35, scope: !5414)
!5452 = !DILocation(line: 437, column: 32, scope: !5414)
!5453 = !DILocation(line: 437, column: 3, scope: !5414)
!5454 = !DILocation(line: 437, column: 12, scope: !5414)
!5455 = !DILocation(line: 439, column: 21, scope: !5414)
!5456 = !DILocation(line: 439, column: 2, scope: !5414)
!5457 = !DILocation(line: 440, column: 21, scope: !5414)
!5458 = !DILocation(line: 440, column: 2, scope: !5414)
!5459 = !DILocation(line: 441, column: 21, scope: !5414)
!5460 = !DILocation(line: 441, column: 2, scope: !5414)
!5461 = !DILocation(line: 443, column: 2, scope: !5414)
!5462 = distinct !DISubprogram(name: "tda10023_i2c_gate_ctrl", scope: !3, file: !3, line: 487, type: !575, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5463 = !DILocalVariable(name: "fe", arg: 1, scope: !5462, file: !3, line: 487, type: !345)
!5464 = !DILocation(line: 487, column: 56, scope: !5462)
!5465 = !DILocalVariable(name: "enable", arg: 2, scope: !5462, file: !3, line: 487, type: !316)
!5466 = !DILocation(line: 487, column: 64, scope: !5462)
!5467 = !DILocalVariable(name: "state", scope: !5462, file: !3, line: 489, type: !4409)
!5468 = !DILocation(line: 489, column: 25, scope: !5462)
!5469 = !DILocation(line: 489, column: 33, scope: !5462)
!5470 = !DILocation(line: 489, column: 37, scope: !5462)
!5471 = !DILocation(line: 491, column: 6, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 491, column: 6)
!5473 = !DILocation(line: 491, column: 6, scope: !5462)
!5474 = !DILocation(line: 492, column: 14, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 491, column: 14)
!5476 = !DILocation(line: 492, column: 3, scope: !5475)
!5477 = !DILocation(line: 493, column: 2, scope: !5475)
!5478 = !DILocation(line: 494, column: 16, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 493, column: 9)
!5480 = !DILocation(line: 494, column: 3, scope: !5479)
!5481 = !DILocation(line: 496, column: 2, scope: !5462)
!5482 = distinct !DISubprogram(name: "tda10023_writetab", scope: !3, file: !3, line: 98, type: !5483, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{null, !4409, !631}
!5485 = !DILocalVariable(name: "state", arg: 1, scope: !5482, file: !3, line: 98, type: !4409)
!5486 = !DILocation(line: 98, column: 54, scope: !5482)
!5487 = !DILocalVariable(name: "tab", arg: 2, scope: !5482, file: !3, line: 98, type: !631)
!5488 = !DILocation(line: 98, column: 65, scope: !5482)
!5489 = !DILocalVariable(name: "r", scope: !5482, file: !3, line: 100, type: !382)
!5490 = !DILocation(line: 100, column: 5, scope: !5482)
!5491 = !DILocalVariable(name: "m", scope: !5482, file: !3, line: 100, type: !382)
!5492 = !DILocation(line: 100, column: 7, scope: !5482)
!5493 = !DILocalVariable(name: "v", scope: !5482, file: !3, line: 100, type: !382)
!5494 = !DILocation(line: 100, column: 9, scope: !5482)
!5495 = !DILocation(line: 101, column: 2, scope: !5482)
!5496 = !DILocation(line: 102, column: 9, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 101, column: 12)
!5498 = !DILocation(line: 102, column: 5, scope: !5497)
!5499 = !DILocation(line: 102, column: 4, scope: !5497)
!5500 = !DILocation(line: 103, column: 9, scope: !5497)
!5501 = !DILocation(line: 103, column: 5, scope: !5497)
!5502 = !DILocation(line: 103, column: 4, scope: !5497)
!5503 = !DILocation(line: 104, column: 9, scope: !5497)
!5504 = !DILocation(line: 104, column: 5, scope: !5497)
!5505 = !DILocation(line: 104, column: 4, scope: !5497)
!5506 = !DILocation(line: 105, column: 7, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 105, column: 7)
!5508 = !DILocation(line: 105, column: 8, scope: !5507)
!5509 = !DILocation(line: 105, column: 7, scope: !5497)
!5510 = !DILocation(line: 106, column: 8, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 106, column: 8)
!5512 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 105, column: 16)
!5513 = !DILocation(line: 106, column: 9, scope: !5511)
!5514 = !DILocation(line: 106, column: 8, scope: !5512)
!5515 = !DILocation(line: 107, column: 5, scope: !5511)
!5516 = !DILocation(line: 109, column: 12, scope: !5511)
!5517 = !DILocation(line: 109, column: 5, scope: !5511)
!5518 = !DILocation(line: 110, column: 3, scope: !5512)
!5519 = !DILocation(line: 112, column: 22, scope: !5507)
!5520 = !DILocation(line: 112, column: 28, scope: !5507)
!5521 = !DILocation(line: 112, column: 30, scope: !5507)
!5522 = !DILocation(line: 112, column: 32, scope: !5507)
!5523 = !DILocation(line: 112, column: 4, scope: !5507)
!5524 = distinct !{!5524, !5495, !5525}
!5525 = !DILocation(line: 113, column: 2, scope: !5482)
!5526 = !DILocation(line: 114, column: 1, scope: !5482)
!5527 = distinct !DISubprogram(name: "tda10023_writebit", scope: !3, file: !3, line: 85, type: !5528, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!316, !4409, !382, !382, !382}
!5530 = !DILocalVariable(name: "state", arg: 1, scope: !5527, file: !3, line: 85, type: !4409)
!5531 = !DILocation(line: 85, column: 54, scope: !5527)
!5532 = !DILocalVariable(name: "reg", arg: 2, scope: !5527, file: !3, line: 85, type: !382)
!5533 = !DILocation(line: 85, column: 64, scope: !5527)
!5534 = !DILocalVariable(name: "mask", arg: 3, scope: !5527, file: !3, line: 85, type: !382)
!5535 = !DILocation(line: 85, column: 72, scope: !5527)
!5536 = !DILocalVariable(name: "data", arg: 4, scope: !5527, file: !3, line: 85, type: !382)
!5537 = !DILocation(line: 85, column: 80, scope: !5527)
!5538 = !DILocation(line: 87, column: 6, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 87, column: 6)
!5540 = !DILocation(line: 87, column: 10, scope: !5539)
!5541 = !DILocation(line: 87, column: 6, scope: !5527)
!5542 = !DILocation(line: 88, column: 28, scope: !5539)
!5543 = !DILocation(line: 88, column: 35, scope: !5539)
!5544 = !DILocation(line: 88, column: 40, scope: !5539)
!5545 = !DILocation(line: 88, column: 10, scope: !5539)
!5546 = !DILocation(line: 88, column: 3, scope: !5539)
!5547 = !DILocalVariable(name: "val", scope: !5548, file: !3, line: 90, type: !382)
!5548 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 89, column: 7)
!5549 = !DILocation(line: 90, column: 6, scope: !5548)
!5550 = !DILocation(line: 91, column: 24, scope: !5548)
!5551 = !DILocation(line: 91, column: 30, scope: !5548)
!5552 = !DILocation(line: 91, column: 7, scope: !5548)
!5553 = !DILocation(line: 91, column: 6, scope: !5548)
!5554 = !DILocation(line: 92, column: 9, scope: !5548)
!5555 = !DILocation(line: 92, column: 8, scope: !5548)
!5556 = !DILocation(line: 92, column: 6, scope: !5548)
!5557 = !DILocation(line: 93, column: 9, scope: !5548)
!5558 = !DILocation(line: 93, column: 14, scope: !5548)
!5559 = !DILocation(line: 93, column: 13, scope: !5548)
!5560 = !DILocation(line: 93, column: 6, scope: !5548)
!5561 = !DILocation(line: 94, column: 28, scope: !5548)
!5562 = !DILocation(line: 94, column: 35, scope: !5548)
!5563 = !DILocation(line: 94, column: 40, scope: !5548)
!5564 = !DILocation(line: 94, column: 10, scope: !5548)
!5565 = !DILocation(line: 94, column: 3, scope: !5548)
!5566 = !DILocation(line: 96, column: 1, scope: !5527)
!5567 = distinct !DISubprogram(name: "tda10023_set_symbolrate", scope: !3, file: !3, line: 155, type: !5568, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!316, !4409, !306}
!5570 = !DILocalVariable(name: "state", arg: 1, scope: !5567, file: !3, line: 155, type: !4409)
!5571 = !DILocation(line: 155, column: 60, scope: !5567)
!5572 = !DILocalVariable(name: "sr", arg: 2, scope: !5567, file: !3, line: 155, type: !306)
!5573 = !DILocation(line: 155, column: 71, scope: !5567)
!5574 = !DILocalVariable(name: "BDR", scope: !5567, file: !3, line: 157, type: !314)
!5575 = !DILocation(line: 157, column: 6, scope: !5567)
!5576 = !DILocalVariable(name: "BDRI", scope: !5567, file: !3, line: 158, type: !314)
!5577 = !DILocation(line: 158, column: 6, scope: !5567)
!5578 = !DILocalVariable(name: "SFIL", scope: !5567, file: !3, line: 159, type: !1558)
!5579 = !DILocation(line: 159, column: 6, scope: !5567)
!5580 = !DILocalVariable(name: "NDEC", scope: !5567, file: !3, line: 160, type: !522)
!5581 = !DILocation(line: 160, column: 6, scope: !5567)
!5582 = !DILocalVariable(name: "sysclk_x_10", scope: !5567, file: !3, line: 164, type: !306)
!5583 = !DILocation(line: 164, column: 6, scope: !5567)
!5584 = !DILocation(line: 164, column: 20, scope: !5567)
!5585 = !DILocation(line: 164, column: 27, scope: !5567)
!5586 = !DILocation(line: 164, column: 34, scope: !5567)
!5587 = !DILocation(line: 166, column: 6, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 166, column: 6)
!5589 = !DILocation(line: 166, column: 17, scope: !5588)
!5590 = !DILocation(line: 166, column: 28, scope: !5588)
!5591 = !DILocation(line: 166, column: 9, scope: !5588)
!5592 = !DILocation(line: 166, column: 6, scope: !5567)
!5593 = !DILocation(line: 167, column: 7, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 166, column: 35)
!5595 = !DILocation(line: 168, column: 7, scope: !5594)
!5596 = !DILocation(line: 169, column: 2, scope: !5594)
!5597 = !DILocation(line: 169, column: 13, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 169, column: 13)
!5599 = !DILocation(line: 169, column: 24, scope: !5598)
!5600 = !DILocation(line: 169, column: 35, scope: !5598)
!5601 = !DILocation(line: 169, column: 16, scope: !5598)
!5602 = !DILocation(line: 169, column: 13, scope: !5588)
!5603 = !DILocation(line: 170, column: 7, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 169, column: 42)
!5605 = !DILocation(line: 171, column: 7, scope: !5604)
!5606 = !DILocation(line: 172, column: 2, scope: !5604)
!5607 = !DILocation(line: 172, column: 13, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 172, column: 13)
!5609 = !DILocation(line: 172, column: 24, scope: !5608)
!5610 = !DILocation(line: 172, column: 35, scope: !5608)
!5611 = !DILocation(line: 172, column: 16, scope: !5608)
!5612 = !DILocation(line: 172, column: 13, scope: !5598)
!5613 = !DILocation(line: 173, column: 7, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 172, column: 42)
!5615 = !DILocation(line: 174, column: 7, scope: !5614)
!5616 = !DILocation(line: 175, column: 2, scope: !5614)
!5617 = !DILocation(line: 175, column: 13, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 175, column: 13)
!5619 = !DILocation(line: 175, column: 24, scope: !5618)
!5620 = !DILocation(line: 175, column: 35, scope: !5618)
!5621 = !DILocation(line: 175, column: 16, scope: !5618)
!5622 = !DILocation(line: 175, column: 13, scope: !5608)
!5623 = !DILocation(line: 176, column: 7, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 175, column: 42)
!5625 = !DILocation(line: 177, column: 7, scope: !5624)
!5626 = !DILocation(line: 178, column: 2, scope: !5624)
!5627 = !DILocation(line: 178, column: 13, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 178, column: 13)
!5629 = !DILocation(line: 178, column: 24, scope: !5628)
!5630 = !DILocation(line: 178, column: 35, scope: !5628)
!5631 = !DILocation(line: 178, column: 16, scope: !5628)
!5632 = !DILocation(line: 178, column: 13, scope: !5618)
!5633 = !DILocation(line: 179, column: 7, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 178, column: 42)
!5635 = !DILocation(line: 180, column: 7, scope: !5634)
!5636 = !DILocation(line: 181, column: 2, scope: !5634)
!5637 = !DILocation(line: 181, column: 13, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 181, column: 13)
!5639 = !DILocation(line: 181, column: 24, scope: !5638)
!5640 = !DILocation(line: 181, column: 35, scope: !5638)
!5641 = !DILocation(line: 181, column: 16, scope: !5638)
!5642 = !DILocation(line: 181, column: 13, scope: !5628)
!5643 = !DILocation(line: 182, column: 7, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 181, column: 42)
!5645 = !DILocation(line: 183, column: 7, scope: !5644)
!5646 = !DILocation(line: 184, column: 2, scope: !5644)
!5647 = !DILocation(line: 184, column: 13, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 184, column: 13)
!5649 = !DILocation(line: 184, column: 24, scope: !5648)
!5650 = !DILocation(line: 184, column: 35, scope: !5648)
!5651 = !DILocation(line: 184, column: 16, scope: !5648)
!5652 = !DILocation(line: 184, column: 13, scope: !5638)
!5653 = !DILocation(line: 185, column: 7, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 184, column: 42)
!5655 = !DILocation(line: 186, column: 7, scope: !5654)
!5656 = !DILocation(line: 187, column: 2, scope: !5654)
!5657 = !DILocation(line: 189, column: 10, scope: !5567)
!5658 = !DILocation(line: 189, column: 17, scope: !5567)
!5659 = !DILocation(line: 189, column: 24, scope: !5567)
!5660 = !DILocation(line: 189, column: 7, scope: !5567)
!5661 = !DILocation(line: 190, column: 9, scope: !5567)
!5662 = !DILocation(line: 190, column: 6, scope: !5567)
!5663 = !DILocation(line: 191, column: 9, scope: !5567)
!5664 = !DILocation(line: 191, column: 11, scope: !5567)
!5665 = !DILocation(line: 191, column: 7, scope: !5567)
!5666 = !DILocation(line: 192, column: 9, scope: !5567)
!5667 = !DILocation(line: 192, column: 7, scope: !5567)
!5668 = !DILocation(line: 194, column: 6, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 194, column: 6)
!5670 = !DILocation(line: 194, column: 10, scope: !5669)
!5671 = !DILocation(line: 194, column: 6, scope: !5567)
!5672 = !DILocation(line: 195, column: 7, scope: !5669)
!5673 = !DILocation(line: 195, column: 3, scope: !5669)
!5674 = !DILocalVariable(name: "BDRX", scope: !5675, file: !3, line: 198, type: !311)
!5675 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 197, column: 2)
!5676 = !DILocation(line: 198, column: 7, scope: !5675)
!5677 = !DILocation(line: 200, column: 15, scope: !5675)
!5678 = !DILocation(line: 200, column: 14, scope: !5675)
!5679 = !DILocation(line: 200, column: 9, scope: !5675)
!5680 = !DILocation(line: 200, column: 8, scope: !5675)
!5681 = !DILocation(line: 200, column: 7, scope: !5675)
!5682 = !DILocation(line: 201, column: 9, scope: !5675)
!5683 = !DILocation(line: 201, column: 7, scope: !5675)
!5684 = !DILocalVariable(name: "__base", scope: !5685, file: !3, line: 202, type: !999)
!5685 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 202, column: 3)
!5686 = !DILocation(line: 202, column: 3, scope: !5685)
!5687 = !DILocalVariable(name: "__rem", scope: !5685, file: !3, line: 202, type: !999)
!5688 = !DILocation(line: 204, column: 12, scope: !5675)
!5689 = !DILocation(line: 204, column: 7, scope: !5675)
!5690 = !DILocation(line: 204, column: 6, scope: !5675)
!5691 = !DILocation(line: 208, column: 21, scope: !5567)
!5692 = !DILocation(line: 208, column: 40, scope: !5567)
!5693 = !DILocation(line: 208, column: 44, scope: !5567)
!5694 = !DILocation(line: 208, column: 2, scope: !5567)
!5695 = !DILocation(line: 209, column: 21, scope: !5567)
!5696 = !DILocation(line: 209, column: 34, scope: !5567)
!5697 = !DILocation(line: 209, column: 37, scope: !5567)
!5698 = !DILocation(line: 209, column: 2, scope: !5567)
!5699 = !DILocation(line: 210, column: 21, scope: !5567)
!5700 = !DILocation(line: 210, column: 35, scope: !5567)
!5701 = !DILocation(line: 210, column: 38, scope: !5567)
!5702 = !DILocation(line: 210, column: 42, scope: !5567)
!5703 = !DILocation(line: 210, column: 34, scope: !5567)
!5704 = !DILocation(line: 210, column: 2, scope: !5567)
!5705 = !DILocation(line: 211, column: 21, scope: !5567)
!5706 = !DILocation(line: 211, column: 35, scope: !5567)
!5707 = !DILocation(line: 211, column: 38, scope: !5567)
!5708 = !DILocation(line: 211, column: 43, scope: !5567)
!5709 = !DILocation(line: 211, column: 34, scope: !5567)
!5710 = !DILocation(line: 211, column: 2, scope: !5567)
!5711 = !DILocation(line: 212, column: 21, scope: !5567)
!5712 = !DILocation(line: 212, column: 34, scope: !5567)
!5713 = !DILocation(line: 212, column: 2, scope: !5567)
!5714 = !DILocation(line: 213, column: 21, scope: !5567)
!5715 = !DILocation(line: 213, column: 35, scope: !5567)
!5716 = !DILocation(line: 213, column: 39, scope: !5567)
!5717 = !DILocation(line: 213, column: 34, scope: !5567)
!5718 = !DILocation(line: 213, column: 2, scope: !5567)
!5719 = !DILocation(line: 214, column: 2, scope: !5567)
!5720 = distinct !DISubprogram(name: "tda10023_setup_reg0", scope: !3, file: !3, line: 144, type: !5721, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!316, !4409, !382}
!5723 = !DILocalVariable(name: "state", arg: 1, scope: !5720, file: !3, line: 144, type: !4409)
!5724 = !DILocation(line: 144, column: 56, scope: !5720)
!5725 = !DILocalVariable(name: "reg0", arg: 2, scope: !5720, file: !3, line: 144, type: !382)
!5726 = !DILocation(line: 144, column: 66, scope: !5720)
!5727 = !DILocation(line: 146, column: 10, scope: !5720)
!5728 = !DILocation(line: 146, column: 17, scope: !5720)
!5729 = !DILocation(line: 146, column: 22, scope: !5720)
!5730 = !DILocation(line: 146, column: 7, scope: !5720)
!5731 = !DILocation(line: 148, column: 21, scope: !5720)
!5732 = !DILocation(line: 148, column: 34, scope: !5720)
!5733 = !DILocation(line: 148, column: 39, scope: !5720)
!5734 = !DILocation(line: 148, column: 2, scope: !5720)
!5735 = !DILocation(line: 149, column: 21, scope: !5720)
!5736 = !DILocation(line: 149, column: 34, scope: !5720)
!5737 = !DILocation(line: 149, column: 39, scope: !5720)
!5738 = !DILocation(line: 149, column: 2, scope: !5720)
!5739 = !DILocation(line: 151, column: 16, scope: !5720)
!5740 = !DILocation(line: 151, column: 2, scope: !5720)
!5741 = !DILocation(line: 151, column: 9, scope: !5720)
!5742 = !DILocation(line: 151, column: 14, scope: !5720)
!5743 = !DILocation(line: 152, column: 2, scope: !5720)
!5744 = distinct !DISubprogram(name: "lock_tuner", scope: !3, file: !3, line: 117, type: !5745, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{!316, !4409}
!5747 = !DILocalVariable(name: "state", arg: 1, scope: !5744, file: !3, line: 117, type: !4409)
!5748 = !DILocation(line: 117, column: 46, scope: !5744)
!5749 = !DILocalVariable(name: "buf", scope: !5744, file: !3, line: 119, type: !4832)
!5750 = !DILocation(line: 119, column: 5, scope: !5744)
!5751 = !DILocalVariable(name: "msg", scope: !5744, file: !3, line: 120, type: !4296)
!5752 = !DILocation(line: 120, column: 17, scope: !5744)
!5753 = !DILocation(line: 120, column: 23, scope: !5744)
!5754 = !DILocation(line: 120, column: 30, scope: !5744)
!5755 = !DILocation(line: 120, column: 37, scope: !5744)
!5756 = !DILocation(line: 120, column: 45, scope: !5744)
!5757 = !DILocation(line: 120, column: 75, scope: !5744)
!5758 = !DILocation(line: 122, column: 18, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 122, column: 5)
!5760 = !DILocation(line: 122, column: 25, scope: !5759)
!5761 = !DILocation(line: 122, column: 5, scope: !5759)
!5762 = !DILocation(line: 122, column: 39, scope: !5759)
!5763 = !DILocation(line: 122, column: 5, scope: !5744)
!5764 = !DILocation(line: 124, column: 3, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 123, column: 2)
!5766 = !DILocation(line: 125, column: 3, scope: !5765)
!5767 = !DILocation(line: 127, column: 2, scope: !5744)
!5768 = !DILocation(line: 128, column: 1, scope: !5744)
!5769 = distinct !DISubprogram(name: "unlock_tuner", scope: !3, file: !3, line: 131, type: !5745, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !705)
!5770 = !DILocalVariable(name: "state", arg: 1, scope: !5769, file: !3, line: 131, type: !4409)
!5771 = !DILocation(line: 131, column: 48, scope: !5769)
!5772 = !DILocalVariable(name: "buf", scope: !5769, file: !3, line: 133, type: !4832)
!5773 = !DILocation(line: 133, column: 5, scope: !5769)
!5774 = !DILocalVariable(name: "msg_post", scope: !5769, file: !3, line: 134, type: !4296)
!5775 = !DILocation(line: 134, column: 17, scope: !5769)
!5776 = !DILocation(line: 134, column: 26, scope: !5769)
!5777 = !DILocation(line: 134, column: 33, scope: !5769)
!5778 = !DILocation(line: 134, column: 40, scope: !5769)
!5779 = !DILocation(line: 134, column: 48, scope: !5769)
!5780 = !DILocation(line: 134, column: 78, scope: !5769)
!5781 = !DILocation(line: 136, column: 18, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 136, column: 5)
!5783 = !DILocation(line: 136, column: 25, scope: !5782)
!5784 = !DILocation(line: 136, column: 5, scope: !5782)
!5785 = !DILocation(line: 136, column: 44, scope: !5782)
!5786 = !DILocation(line: 136, column: 5, scope: !5769)
!5787 = !DILocation(line: 138, column: 3, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 137, column: 2)
!5789 = !DILocation(line: 139, column: 3, scope: !5788)
!5790 = !DILocation(line: 141, column: 2, scope: !5769)
!5791 = !DILocation(line: 142, column: 1, scope: !5769)
