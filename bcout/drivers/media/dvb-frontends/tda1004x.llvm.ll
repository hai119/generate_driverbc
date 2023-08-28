; ModuleID = '../bcout/drivers/media/dvb-frontends/tda1004x.llvm.bc'
source_filename = "drivers/media/dvb-frontends/tda1004x.c"
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
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)* }
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
%struct.tda1004x_state = type { %struct.i2c_adapter*, %struct.tda1004x_config*, %struct.dvb_frontend, i32 }

@.str = private unnamed_addr constant [44 x i8] c"\013Can't allocate memory for tda10045 state\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\013tda10045: chip is not answering. Giving up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\013Invalid tda1004x ID = 0x%02x. Can't proceed\0A\00", align 1
@tda10045_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10045H DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 858000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 732846 }, [8 x i8] c"\03\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @tda1004x_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda10045_init, i32 (%struct.dvb_frontend*)* @tda1004x_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* @tda1004x_write, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda1004x_set_fe, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @tda1004x_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tda1004x_get_fe, i32 (%struct.dvb_frontend*, i32*)* @tda1004x_read_status, i32 (%struct.dvb_frontend*, i32*)* @tda1004x_read_ber, i32 (%struct.dvb_frontend*, i16*)* @tda1004x_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @tda1004x_read_snr, i32 (%struct.dvb_frontend*, i32*)* @tda1004x_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @tda1004x_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [44 x i8] c"\013Can't allocate memory for tda10046 state\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013tda10046: chip is not answering. Giving up.\0A\00", align 1
@tda10046_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10046H DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 858000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 732846 }, [8 x i8] c"\03\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @tda1004x_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda10046_init, i32 (%struct.dvb_frontend*)* @tda1004x_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* @tda1004x_write, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda1004x_set_fe, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @tda1004x_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tda1004x_get_fe, i32 (%struct.dvb_frontend*, i32*)* @tda1004x_read_status, i32 (%struct.dvb_frontend*, i32*)* @tda1004x_read_ber, i32 (%struct.dvb_frontend*, i16*)* @tda1004x_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @tda1004x_read_snr, i32 (%struct.dvb_frontend*, i32*)* @tda1004x_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @tda1004x_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4514
@__param_str_debug = internal constant [15 x i8] c"tda1004x.debug\00", align 1, !dbg !4517
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !434
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !332
@__UNIQUE_ID_debugtype220 = internal constant [28 x i8] c"tda1004x.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !404
@__UNIQUE_ID_debug221 = internal constant [66 x i8] c"tda1004x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !409
@__UNIQUE_ID_description222 = internal constant [69 x i8] c"tda1004x.description=Philips TDA10045H & TDA10046H DVB-T Demodulator\00", section ".modinfo", align 1, !dbg !414
@__UNIQUE_ID_author223 = internal constant [54 x i8] c"tda1004x.author=Andrew de Quincey & Robert Schlabbach\00", section ".modinfo", align 1, !dbg !419
@__UNIQUE_ID_file224 = internal constant [51 x i8] c"tda1004x.file=drivers/media/dvb-frontends/tda1004x\00", section ".modinfo", align 1, !dbg !424
@__UNIQUE_ID_license225 = internal constant [21 x i8] c"tda1004x.license=GPL\00", section ".modinfo", align 1, !dbg !429
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\017tda1004x: %s: reg=0x%x\0A\00", align 1
@__func__.tda1004x_read_byte = private unnamed_addr constant [19 x i8] c"tda1004x_read_byte\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\017tda1004x: %s: error reg=0x%x, ret=%i\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\017tda1004x: %s: success reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\017tda1004x: %s\0A\00", align 1
@__func__.tda10045_init = private unnamed_addr constant [14 x i8] c"tda10045_init\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"tda1004x: firmware upload failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"\016tda1004x: waiting for firmware upload (%s)...\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"dvb-fe-tda10045.fw\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"\013tda1004x: no firmware upload (timeout or file not found?)\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"\016tda1004x: firmware upload complete\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.15 = private unnamed_addr constant [43 x i8] c"\013tda1004x: timeout waiting for DSP ready\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"\016tda1004x: found firmware revision %x -- invalid\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\016tda1004x: found firmware revision %x -- ok\0A\00", align 1
@tda10045h_set_bandwidth.bandwidth_6mhz = internal global [9 x i8] c"\02\00=\00`\1E\A7EO", align 1, !dbg !436
@tda10045h_set_bandwidth.bandwidth_7mhz = internal global [9 x i8] c"\02\007\00J/mv\DB", align 1, !dbg !4494
@tda10045h_set_bandwidth.bandwidth_8mhz = internal global [9 x i8] c"\02\00=\00H\17\89\C7\14", align 1, !dbg !4496
@.str.18 = private unnamed_addr constant [36 x i8] c"\017tda1004x: %s: reg=0x%x, len=0x%x\0A\00", align 1
@__func__.tda1004x_write_buf = private unnamed_addr constant [19 x i8] c"tda1004x_write_buf\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"\013tda1004x: Error during firmware upload\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"\017tda1004x: %s: fw_pos=0x%x\0A\00", align 1
@__func__.tda1004x_do_upload = private unnamed_addr constant [19 x i8] c"tda1004x_do_upload\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"\017tda1004x: %s: reg=0x%x, mask=0x%x, data=0x%x\0A\00", align 1
@__func__.tda1004x_write_mask = private unnamed_addr constant [20 x i8] c"tda1004x_write_mask\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"\017tda1004x: %s: reg=0x%x, data=0x%x\0A\00", align 1
@__func__.tda1004x_write_byteI = private unnamed_addr constant [21 x i8] c"tda1004x_write_byteI\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"\017tda1004x: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@__func__.tda1004x_set_fe = private unnamed_addr constant [16 x i8] c"tda1004x_set_fe\00", align 1
@tda10046h_set_bandwidth.bandwidth_6mhz_53M = internal global [5 x i8] c"{.\11\F0\D2", align 1, !dbg !4498
@tda10046h_set_bandwidth.bandwidth_7mhz_53M = internal global [5 x i8] c"j\02jC\9F", align 1, !dbg !4504
@tda10046h_set_bandwidth.bandwidth_8mhz_53M = internal global [5 x i8] c"\\2\C2\96m", align 1, !dbg !4506
@tda10046h_set_bandwidth.bandwidth_6mhz_48M = internal global [5 x i8] c"p\02I$\92", align 1, !dbg !4508
@tda10046h_set_bandwidth.bandwidth_7mhz_48M = internal global [5 x i8] c"`\02\AA\AA\AB", align 1, !dbg !4510
@tda10046h_set_bandwidth.bandwidth_8mhz_48M = internal global [5 x i8] c"T\03\0C0\C3", align 1, !dbg !4512
@__func__.tda1004x_get_fe = private unnamed_addr constant [16 x i8] c"tda1004x_get_fe\00", align 1
@__func__.tda1004x_read_status = private unnamed_addr constant [21 x i8] c"tda1004x_read_status\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"\017tda1004x: %s: fe_status=0x%x\0A\00", align 1
@__func__.tda1004x_read_ber = private unnamed_addr constant [18 x i8] c"tda1004x_read_ber\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"\017tda1004x: %s: ber=0x%x\0A\00", align 1
@__func__.tda1004x_read_signal_strength = private unnamed_addr constant [30 x i8] c"tda1004x_read_signal_strength\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"\017tda1004x: %s: signal=0x%x\0A\00", align 1
@__func__.tda1004x_read_snr = private unnamed_addr constant [18 x i8] c"tda1004x_read_snr\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"\017tda1004x: %s: snr=0x%x\0A\00", align 1
@__func__.tda1004x_read_ucblocks = private unnamed_addr constant [23 x i8] c"tda1004x_read_ucblocks\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"\017tda1004x: %s: ucblocks=0x%x\0A\00", align 1
@__func__.tda1004x_enable_tuner_i2c = private unnamed_addr constant [26 x i8] c"tda1004x_enable_tuner_i2c\00", align 1
@__func__.tda1004x_disable_tuner_i2c = private unnamed_addr constant [27 x i8] c"tda1004x_disable_tuner_i2c\00", align 1
@__func__.tda10046_init = private unnamed_addr constant [14 x i8] c"tda10046_init\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"\017tda1004x: %s: 16MHz Xtal, reducing I2C speed\0A\00", align 1
@__func__.tda10046_fwupload = private unnamed_addr constant [18 x i8] c"tda10046_fwupload\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\016tda1004x: trying to boot from eeprom\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"\016tda1004x: waiting for firmware upload...\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"dvb-fe-tda10046.fw\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"\016tda1004x: please rename the firmware file to %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [65 x i8] c"\013tda1004x: no request function defined, can't upload from file\0A\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"\016tda1004x: setting up plls for 53MHz sampling clock\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"\016tda1004x: setting up plls for 48MHz sampling clock\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"\017tda1004x: %s: setting up PLLs for a 4 MHz Xtal\0A\00", align 1
@__func__.tda10046_init_plls = private unnamed_addr constant [19 x i8] c"tda10046_init_plls\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"\017tda1004x: %s: setting up PLLs for a 16 MHz Xtal\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @tda10045_attach(%struct.tda1004x_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4527 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.tda1004x_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %id = alloca i32, align 4
  store %struct.tda1004x_config* %config, %struct.tda1004x_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_config** %config.addr, metadata !4530, metadata !DIExpression()), !dbg !4531
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4536, metadata !DIExpression()), !dbg !4537
  %call = call i8* @kzalloc(i64 1304, i32 3264) #8, !dbg !4538
  %0 = bitcast i8* %call to %struct.tda1004x_state*, !dbg !4538
  store %struct.tda1004x_state* %0, %struct.tda1004x_state** %state, align 8, !dbg !4539
  %1 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4540
  %tobool = icmp ne %struct.tda1004x_state* %1, null, !dbg !4540
  br i1 %tobool, label %if.end, label %if.then, !dbg !4542

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4543
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4545
  br label %return, !dbg !4545

if.end:                                           ; preds = %entry
  %2 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config.addr, align 8, !dbg !4546
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4547
  %config2 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %3, i32 0, i32 1, !dbg !4548
  store %struct.tda1004x_config* %2, %struct.tda1004x_config** %config2, align 8, !dbg !4549
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4550
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4551
  %i2c3 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %5, i32 0, i32 0, !dbg !4552
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c3, align 8, !dbg !4553
  %6 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4554
  %demod_type = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %6, i32 0, i32 3, !dbg !4555
  store i32 0, i32* %demod_type, align 8, !dbg !4556
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4557
  %call4 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %7, i32 0) #8, !dbg !4558
  store i32 %call4, i32* %id, align 4, !dbg !4559
  %8 = load i32, i32* %id, align 4, !dbg !4560
  %cmp = icmp slt i32 %8, 0, !dbg !4562
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !4563

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4564
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4566
  %10 = bitcast %struct.tda1004x_state* %9 to i8*, !dbg !4566
  call void @kfree(i8* %10) #8, !dbg !4567
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4568
  br label %return, !dbg !4568

if.end7:                                          ; preds = %if.end
  %11 = load i32, i32* %id, align 4, !dbg !4569
  %cmp8 = icmp ne i32 %11, 37, !dbg !4571
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !4572

if.then9:                                         ; preds = %if.end7
  %12 = load i32, i32* %id, align 4, !dbg !4573
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %12) #9, !dbg !4575
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4576
  %14 = bitcast %struct.tda1004x_state* %13 to i8*, !dbg !4576
  call void @kfree(i8* %14) #8, !dbg !4577
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4578
  br label %return, !dbg !4578

if.end11:                                         ; preds = %if.end7
  %15 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4579
  %frontend = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %15, i32 0, i32 2, !dbg !4580
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4581
  %16 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @tda10045_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4582
  %17 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4583
  %18 = bitcast %struct.tda1004x_state* %17 to i8*, !dbg !4583
  %19 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4584
  %frontend12 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %19, i32 0, i32 2, !dbg !4585
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend12, i32 0, i32 3, !dbg !4586
  store i8* %18, i8** %demodulator_priv, align 8, !dbg !4587
  %20 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4588
  %frontend13 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %20, i32 0, i32 2, !dbg !4589
  store %struct.dvb_frontend* %frontend13, %struct.dvb_frontend** %retval, align 8, !dbg !4590
  br label %return, !dbg !4590

return:                                           ; preds = %if.end11, %if.then9, %if.then5, %if.then
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4591
  ret %struct.dvb_frontend* %21, !dbg !4591
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4592 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4595, metadata !DIExpression()), !dbg !4599
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4605, metadata !DIExpression()), !dbg !4606
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4607, metadata !DIExpression()), !dbg !4608
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4609, metadata !DIExpression()), !dbg !4610
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4611, metadata !DIExpression()), !dbg !4615
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4617, metadata !DIExpression()), !dbg !4621
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4623, metadata !DIExpression()), !dbg !4627
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4632, metadata !DIExpression()), !dbg !4633
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4634, metadata !DIExpression()), !dbg !4635
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4636, metadata !DIExpression()), !dbg !4637
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4638, metadata !DIExpression()), !dbg !4639
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4640, metadata !DIExpression()), !dbg !4641
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4642, metadata !DIExpression()), !dbg !4643
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4644, metadata !DIExpression()), !dbg !4645
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4646, metadata !DIExpression()), !dbg !4647
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  %0 = load i64, i64* %size.addr, align 8, !dbg !4652
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4653
  %or = or i32 %1, 256, !dbg !4654
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4655
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4656
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4657

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4658
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4659
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4660

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4661
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4662
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4663
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4664
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4641
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4665
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4666
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4667
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4668
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4669
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4670
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4671
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4671
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4671
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4671
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4671
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4672
  br label %kmalloc.exit, !dbg !4672

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4673
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4674
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4674
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4676

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4677
  br label %kmalloc_index.exit.i, !dbg !4677

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4678
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4680
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4681

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4682
  br label %kmalloc_index.exit.i, !dbg !4682

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4683
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4685
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4686

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4687
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4688
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4689

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4690
  br label %kmalloc_index.exit.i, !dbg !4690

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4691
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4693
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4694

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4695
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4696
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4697

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4698
  br label %kmalloc_index.exit.i, !dbg !4698

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4699
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4701
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4702

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4703
  br label %kmalloc_index.exit.i, !dbg !4703

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4704
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4706
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4707

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4708
  br label %kmalloc_index.exit.i, !dbg !4708

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4709
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4711
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4712

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4713
  br label %kmalloc_index.exit.i, !dbg !4713

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4714
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4716
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4717

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4718
  br label %kmalloc_index.exit.i, !dbg !4718

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4719
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4721
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4722

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4723
  br label %kmalloc_index.exit.i, !dbg !4723

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4724
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4726
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4727

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4728
  br label %kmalloc_index.exit.i, !dbg !4728

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4729
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4731
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4732

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4733
  br label %kmalloc_index.exit.i, !dbg !4733

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4734
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4736
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4737

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4738
  br label %kmalloc_index.exit.i, !dbg !4738

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4739
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4741
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4742

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4743
  br label %kmalloc_index.exit.i, !dbg !4743

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4744
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4746
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4747

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4748
  br label %kmalloc_index.exit.i, !dbg !4748

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4749
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4751
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4752

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4753
  br label %kmalloc_index.exit.i, !dbg !4753

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4754
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4756
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4757

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4758
  br label %kmalloc_index.exit.i, !dbg !4758

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4759
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4761
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4762

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4763
  br label %kmalloc_index.exit.i, !dbg !4763

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4764
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4766
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4767

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4768
  br label %kmalloc_index.exit.i, !dbg !4768

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4769
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4771
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4772

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4773
  br label %kmalloc_index.exit.i, !dbg !4773

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4774
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4776
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4777

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4778
  br label %kmalloc_index.exit.i, !dbg !4778

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4779
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4781
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4782

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4783
  br label %kmalloc_index.exit.i, !dbg !4783

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4784
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4786
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4787

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4788
  br label %kmalloc_index.exit.i, !dbg !4788

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4789
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4791
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4792

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4793
  br label %kmalloc_index.exit.i, !dbg !4793

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4794
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4796
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4797

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4798
  br label %kmalloc_index.exit.i, !dbg !4798

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4799
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4801
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4802

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4803
  br label %kmalloc_index.exit.i, !dbg !4803

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4804
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4806
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4807

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4808
  br label %kmalloc_index.exit.i, !dbg !4808

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4809
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4811
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4812

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4813
  br label %kmalloc_index.exit.i, !dbg !4813

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4814
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4816
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4817

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4818
  br label %kmalloc_index.exit.i, !dbg !4818

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4819, !srcloc !4822
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !4823, !srcloc !4826
  unreachable, !dbg !4827

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4828
  store i32 %45, i32* %index.i, align 4, !dbg !4829
  %46 = load i32, i32* %index.i, align 4, !dbg !4830
  %tobool.i = icmp ne i32 %46, 0, !dbg !4830
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4832

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4833
  br label %kmalloc.exit, !dbg !4833

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4834
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4835
  %and.i.i = and i32 %48, 17, !dbg !4835
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4835
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4835
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4835
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4835
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4837

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4838
  br label %kmalloc_type.exit.i, !dbg !4838

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4839
  %and2.i.i = and i32 %49, 1, !dbg !4840
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4839
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4839
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4839
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4841
  br label %kmalloc_type.exit.i, !dbg !4841

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4842
  %idxprom.i = zext i32 %51 to i64, !dbg !4843
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4843
  %52 = load i32, i32* %index.i, align 4, !dbg !4844
  %idxprom6.i = zext i32 %52 to i64, !dbg !4843
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4843
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4843
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4845
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4846
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4847
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4848
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4849
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4849
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4849
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4849
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4849
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4610
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4850
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4851
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4852
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4853
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4854
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4855
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4856
  store i8* %62, i8** %retval.i, align 8, !dbg !4857
  br label %kmalloc.exit, !dbg !4857

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4858
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4859
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4860
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4860
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4860
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4860
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4860
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4861
  br label %kmalloc.exit, !dbg !4861

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4862
  ret i8* %65, !dbg !4863
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_read_byte(%struct.tda1004x_state* %state, i32 %reg) #0 !dbg !4864 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %reg.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4869, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4871, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.declare(metadata [1 x i8]* %b0, metadata !4873, metadata !DIExpression()), !dbg !4875
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4876
  %0 = load i32, i32* %reg.addr, align 4, !dbg !4877
  %conv = trunc i32 %0 to i8, !dbg !4877
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !4876
  call void @llvm.dbg.declare(metadata [1 x i8]* %b1, metadata !4878, metadata !DIExpression()), !dbg !4879
  %1 = bitcast [1 x i8]* %b1 to i8*, !dbg !4879
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 1, i1 false), !dbg !4879
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4880, metadata !DIExpression()), !dbg !4882
  %arrayinit.begin1 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4883
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 0, !dbg !4884
  store i16 0, i16* %addr, align 16, !dbg !4884
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 1, !dbg !4884
  store i16 0, i16* %flags, align 2, !dbg !4884
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 2, !dbg !4884
  store i16 1, i16* %len, align 4, !dbg !4884
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i32 0, i32 3, !dbg !4884
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %b0, i64 0, i64 0, !dbg !4885
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4884
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin1, i64 1, !dbg !4883
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4886
  store i16 0, i16* %addr2, align 16, !dbg !4886
  %flags3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4886
  store i16 1, i16* %flags3, align 2, !dbg !4886
  %len4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4886
  store i16 1, i16* %len4, align 4, !dbg !4886
  %buf5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4886
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4887
  store i8* %arraydecay6, i8** %buf5, align 8, !dbg !4886
  br label %do.body, !dbg !4888

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @debug, align 4, !dbg !4889
  %tobool = icmp ne i32 %2, 0, !dbg !4889
  br i1 %tobool, label %if.then, label %if.end, !dbg !4892

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %reg.addr, align 4, !dbg !4889
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda1004x_read_byte, i64 0, i64 0), i32 %3) #9, !dbg !4889
  br label %if.end, !dbg !4889

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4892

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !4893
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %4, i32 0, i32 1, !dbg !4894
  %5 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !4894
  %demod_address = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %5, i32 0, i32 0, !dbg !4895
  %6 = load i8, i8* %demod_address, align 8, !dbg !4895
  %conv7 = zext i8 %6 to i16, !dbg !4893
  %arrayidx = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4896
  %addr8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 0, !dbg !4897
  store i16 %conv7, i16* %addr8, align 16, !dbg !4898
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !4899
  %config9 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %7, i32 0, i32 1, !dbg !4900
  %8 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config9, align 8, !dbg !4900
  %demod_address10 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %8, i32 0, i32 0, !dbg !4901
  %9 = load i8, i8* %demod_address10, align 8, !dbg !4901
  %conv11 = zext i8 %9 to i16, !dbg !4899
  %arrayidx12 = getelementptr [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !4902
  %addr13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx12, i32 0, i32 0, !dbg !4903
  store i16 %conv11, i16* %addr13, align 16, !dbg !4904
  %10 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !4905
  %i2c = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %10, i32 0, i32 0, !dbg !4906
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4906
  %arraydecay14 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4907
  %call15 = call i32 @i2c_transfer(%struct.i2c_adapter* %11, %struct.i2c_msg* %arraydecay14, i32 2) #8, !dbg !4908
  store i32 %call15, i32* %ret, align 4, !dbg !4909
  %12 = load i32, i32* %ret, align 4, !dbg !4910
  %cmp = icmp ne i32 %12, 2, !dbg !4912
  br i1 %cmp, label %if.then17, label %if.end24, !dbg !4913

if.then17:                                        ; preds = %do.end
  br label %do.body18, !dbg !4914

do.body18:                                        ; preds = %if.then17
  %13 = load i32, i32* @debug, align 4, !dbg !4916
  %tobool19 = icmp ne i32 %13, 0, !dbg !4916
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !4919

if.then20:                                        ; preds = %do.body18
  %14 = load i32, i32* %reg.addr, align 4, !dbg !4916
  %15 = load i32, i32* %ret, align 4, !dbg !4916
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda1004x_read_byte, i64 0, i64 0), i32 %14, i32 %15) #9, !dbg !4916
  br label %if.end22, !dbg !4916

if.end22:                                         ; preds = %if.then20, %do.body18
  br label %do.end23, !dbg !4919

do.end23:                                         ; preds = %if.end22
  store i32 -22, i32* %retval, align 4, !dbg !4920
  br label %return, !dbg !4920

if.end24:                                         ; preds = %do.end
  br label %do.body25, !dbg !4921

do.body25:                                        ; preds = %if.end24
  %16 = load i32, i32* @debug, align 4, !dbg !4922
  %tobool26 = icmp ne i32 %16, 0, !dbg !4922
  br i1 %tobool26, label %if.then27, label %if.end31, !dbg !4925

if.then27:                                        ; preds = %do.body25
  %17 = load i32, i32* %reg.addr, align 4, !dbg !4922
  %arrayidx28 = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4922
  %18 = load i8, i8* %arrayidx28, align 1, !dbg !4922
  %conv29 = zext i8 %18 to i32, !dbg !4922
  %19 = load i32, i32* %ret, align 4, !dbg !4922
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda1004x_read_byte, i64 0, i64 0), i32 %17, i32 %conv29, i32 %19) #9, !dbg !4922
  br label %if.end31, !dbg !4922

if.end31:                                         ; preds = %if.then27, %do.body25
  br label %do.end32, !dbg !4925

do.end32:                                         ; preds = %if.end31
  %arrayidx33 = getelementptr [1 x i8], [1 x i8]* %b1, i64 0, i64 0, !dbg !4926
  %20 = load i8, i8* %arrayidx33, align 1, !dbg !4926
  %conv34 = zext i8 %20 to i32, !dbg !4926
  store i32 %conv34, i32* %retval, align 4, !dbg !4927
  br label %return, !dbg !4927

return:                                           ; preds = %do.end32, %do.end23
  %21 = load i32, i32* %retval, align 4, !dbg !4928
  ret i32 %21, !dbg !4928
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @tda10046_attach(%struct.tda1004x_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4929 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.tda1004x_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %id = alloca i32, align 4
  store %struct.tda1004x_config* %config, %struct.tda1004x_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_config** %config.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !4934, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4936, metadata !DIExpression()), !dbg !4937
  %call = call i8* @kzalloc(i64 1304, i32 3264) #8, !dbg !4938
  %0 = bitcast i8* %call to %struct.tda1004x_state*, !dbg !4938
  store %struct.tda1004x_state* %0, %struct.tda1004x_state** %state, align 8, !dbg !4939
  %1 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4940
  %tobool = icmp ne %struct.tda1004x_state* %1, null, !dbg !4940
  br i1 %tobool, label %if.end, label %if.then, !dbg !4942

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4943
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4945
  br label %return, !dbg !4945

if.end:                                           ; preds = %entry
  %2 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config.addr, align 8, !dbg !4946
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4947
  %config2 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %3, i32 0, i32 1, !dbg !4948
  store %struct.tda1004x_config* %2, %struct.tda1004x_config** %config2, align 8, !dbg !4949
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4950
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4951
  %i2c3 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %5, i32 0, i32 0, !dbg !4952
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c3, align 8, !dbg !4953
  %6 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4954
  %demod_type = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %6, i32 0, i32 3, !dbg !4955
  store i32 1, i32* %demod_type, align 8, !dbg !4956
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4957
  %call4 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %7, i32 0) #8, !dbg !4958
  store i32 %call4, i32* %id, align 4, !dbg !4959
  %8 = load i32, i32* %id, align 4, !dbg !4960
  %cmp = icmp slt i32 %8, 0, !dbg !4962
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !4963

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !4964
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4966
  %10 = bitcast %struct.tda1004x_state* %9 to i8*, !dbg !4966
  call void @kfree(i8* %10) #8, !dbg !4967
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4968
  br label %return, !dbg !4968

if.end7:                                          ; preds = %if.end
  %11 = load i32, i32* %id, align 4, !dbg !4969
  %cmp8 = icmp ne i32 %11, 70, !dbg !4971
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !4972

if.then9:                                         ; preds = %if.end7
  %12 = load i32, i32* %id, align 4, !dbg !4973
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %12) #9, !dbg !4975
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4976
  %14 = bitcast %struct.tda1004x_state* %13 to i8*, !dbg !4976
  call void @kfree(i8* %14) #8, !dbg !4977
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4978
  br label %return, !dbg !4978

if.end11:                                         ; preds = %if.end7
  %15 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4979
  %frontend = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %15, i32 0, i32 2, !dbg !4980
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4981
  %16 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @tda10046_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4982
  %17 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4983
  %18 = bitcast %struct.tda1004x_state* %17 to i8*, !dbg !4983
  %19 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4984
  %frontend12 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %19, i32 0, i32 2, !dbg !4985
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend12, i32 0, i32 3, !dbg !4986
  store i8* %18, i8** %demodulator_priv, align 8, !dbg !4987
  %20 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !4988
  %frontend13 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %20, i32 0, i32 2, !dbg !4989
  store %struct.dvb_frontend* %frontend13, %struct.dvb_frontend** %retval, align 8, !dbg !4990
  br label %return, !dbg !4990

return:                                           ; preds = %if.end11, %if.then9, %if.then5, %if.then
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4991
  ret %struct.dvb_frontend* %21, !dbg !4991
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

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
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

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
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda1004x_release(%struct.dvb_frontend* %fe) #0 !dbg !5065 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5068, metadata !DIExpression()), !dbg !5069
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5070
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5071
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5071
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5070
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5069
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5072
  %4 = bitcast %struct.tda1004x_state* %3 to i8*, !dbg !5072
  call void @kfree(i8* %4) #8, !dbg !5073
  ret void, !dbg !5074
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10045_init(%struct.dvb_frontend* %fe) #0 !dbg !5075 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5076, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5078, metadata !DIExpression()), !dbg !5079
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5080
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5081
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5081
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5080
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5079
  br label %do.body, !dbg !5082

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5083
  %tobool = icmp ne i32 %3, 0, !dbg !5083
  br i1 %tobool, label %if.then, label %if.end, !dbg !5086

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.tda10045_init, i64 0, i64 0)) #9, !dbg !5083
  br label %if.end, !dbg !5083

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5086

do.end:                                           ; preds = %if.end
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5087
  %call1 = call i32 @tda10045_fwupload(%struct.dvb_frontend* %4) #8, !dbg !5089
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5089
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5090

if.then3:                                         ; preds = %do.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !5091
  store i32 -5, i32* %retval, align 4, !dbg !5093
  br label %return, !dbg !5093

if.end5:                                          ; preds = %do.end
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5094
  %call6 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %5, i32 21, i32 16, i32 0) #8, !dbg !5095
  %6 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5096
  %call7 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %6, i32 7, i32 32, i32 0) #8, !dbg !5097
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5098
  %call8 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %7, i32 1, i32 8, i32 0) #8, !dbg !5099
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5100
  %call9 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %8, i32 22, i32 64, i32 0) #8, !dbg !5101
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5102
  %call10 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %9, i32 22, i32 128, i32 128) #8, !dbg !5103
  %10 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5104
  %call11 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %10, i32 1, i32 16, i32 16) #8, !dbg !5105
  %11 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5106
  %call12 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %11, i32 3, i32 192, i32 0) #8, !dbg !5107
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5108
  %call13 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %12, i32 30, i32 0) #8, !dbg !5109
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5110
  %call14 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %13, i32 31, i32 0) #8, !dbg !5111
  %14 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5112
  %call15 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %14, i32 36, i32 224, i32 160) #8, !dbg !5113
  %15 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5114
  %call16 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %15, i32 22, i32 16, i32 0) #8, !dbg !5115
  %16 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5116
  %call17 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %16, i32 21, i32 46) #8, !dbg !5117
  %17 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5118
  %18 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5119
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %18, i32 0, i32 1, !dbg !5120
  %19 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !5120
  %invert_oclk = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %19, i32 0, i32 2, !dbg !5121
  %20 = load i8, i8* %invert_oclk, align 2, !dbg !5121
  %conv = zext i8 %20 to i32, !dbg !5119
  %call18 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %17, i32 31, i32 1, i32 %conv) #8, !dbg !5122
  store i32 0, i32* %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

return:                                           ; preds = %if.end5, %if.then3
  %21 = load i32, i32* %retval, align 4, !dbg !5124
  ret i32 %21, !dbg !5124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5125 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %gpio_conf = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5128, metadata !DIExpression()), !dbg !5129
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5130
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5131
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5131
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5130
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5129
  call void @llvm.dbg.declare(metadata i32* %gpio_conf, metadata !5132, metadata !DIExpression()), !dbg !5133
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5134
  %demod_type = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %3, i32 0, i32 3, !dbg !5135
  %4 = load i32, i32* %demod_type, align 8, !dbg !5135
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !5136

sw.bb:                                            ; preds = %entry
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5137
  %call = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %5, i32 21, i32 16, i32 16) #8, !dbg !5139
  br label %sw.epilog, !dbg !5140

sw.bb1:                                           ; preds = %entry
  %6 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5141
  %call2 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %6, i32 59, i32 255) #8, !dbg !5142
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5143
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %7, i32 0, i32 1, !dbg !5144
  %8 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !5144
  %gpio_config = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %8, i32 0, i32 7, !dbg !5145
  %9 = load i32, i32* %gpio_config, align 4, !dbg !5145
  store i32 %9, i32* %gpio_conf, align 4, !dbg !5146
  %10 = load i32, i32* %gpio_conf, align 4, !dbg !5147
  %cmp = icmp sge i32 %10, 128, !dbg !5149
  br i1 %cmp, label %if.then, label %if.end, !dbg !5150

if.then:                                          ; preds = %sw.bb1
  %11 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5151
  %12 = load i32, i32* %gpio_conf, align 4, !dbg !5152
  %and = and i32 %12, 15, !dbg !5153
  %xor = xor i32 %and, 10, !dbg !5154
  %call3 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %11, i32 61, i32 15, i32 %xor) #8, !dbg !5155
  br label %if.end, !dbg !5155

if.end:                                           ; preds = %if.then, %sw.bb1
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5156
  %call4 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %13, i32 55, i32 192, i32 192) #8, !dbg !5157
  %14 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5158
  %call5 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %14, i32 7, i32 1, i32 1) #8, !dbg !5159
  br label %sw.epilog, !dbg !5160

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb
  ret i32 0, !dbg !5161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_write(%struct.dvb_frontend* %fe, i8* %buf, i32 %len) #0 !dbg !5162 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %state = alloca %struct.tda1004x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5169, metadata !DIExpression()), !dbg !5170
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5171
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5172
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5172
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5171
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5170
  %3 = load i32, i32* %len.addr, align 4, !dbg !5173
  %cmp = icmp ne i32 %3, 2, !dbg !5175
  br i1 %cmp, label %if.then, label %if.end, !dbg !5176

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5177
  br label %return, !dbg !5177

if.end:                                           ; preds = %entry
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5178
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5179
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !5179
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5179
  %conv = zext i8 %6 to i32, !dbg !5179
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5180
  %arrayidx1 = getelementptr i8, i8* %7, i64 1, !dbg !5180
  %8 = load i8, i8* %arrayidx1, align 1, !dbg !5180
  %conv2 = zext i8 %8 to i32, !dbg !5180
  %call = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %4, i32 %conv, i32 %conv2) #8, !dbg !5181
  store i32 %call, i32* %retval, align 4, !dbg !5182
  br label %return, !dbg !5182

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5183
  ret i32 %9, !dbg !5183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_set_fe(%struct.dvb_frontend* %fe) #0 !dbg !5184 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_params = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %tmp = alloca i32, align 4
  %inversion = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %fe_params, metadata !5187, metadata !DIExpression()), !dbg !5188
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5189
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5190
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5188
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5191, metadata !DIExpression()), !dbg !5192
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5193
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5194
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5194
  %3 = bitcast i8* %2 to %struct.tda1004x_state*, !dbg !5193
  store %struct.tda1004x_state* %3, %struct.tda1004x_state** %state, align 8, !dbg !5192
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5195, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.declare(metadata i32* %inversion, metadata !5197, metadata !DIExpression()), !dbg !5198
  br label %do.body, !dbg !5199

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5200
  %tobool = icmp ne i32 %4, 0, !dbg !5200
  br i1 %tobool, label %if.then, label %if.end, !dbg !5203

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tda1004x_set_fe, i64 0, i64 0)) #9, !dbg !5200
  br label %if.end, !dbg !5200

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5203

do.end:                                           ; preds = %if.end
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5204
  %demod_type = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %5, i32 0, i32 3, !dbg !5206
  %6 = load i32, i32* %demod_type, align 8, !dbg !5206
  %cmp = icmp eq i32 %6, 1, !dbg !5207
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !5208

if.then1:                                         ; preds = %do.end
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5209
  %call2 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %7, i32 1, i32 16, i32 16) #8, !dbg !5211
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5212
  %call3 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %8, i32 2, i32 128, i32 0) #8, !dbg !5213
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5214
  %call4 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %9, i32 3, i32 192, i32 0) #8, !dbg !5215
  %10 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5216
  %call5 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %10, i32 67, i32 4, i32 0) #8, !dbg !5217
  br label %if.end6, !dbg !5218

if.end6:                                          ; preds = %if.then1, %do.end
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5219
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1, !dbg !5221
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5222
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5223
  %12 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5223
  %tobool7 = icmp ne i32 (%struct.dvb_frontend*)* %12, null, !dbg !5219
  br i1 %tobool7, label %if.then8, label %if.end20, !dbg !5224

if.then8:                                         ; preds = %if.end6
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5225
  %ops9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1, !dbg !5227
  %tuner_ops10 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops9, i32 0, i32 30, !dbg !5228
  %set_params11 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops10, i32 0, i32 6, !dbg !5229
  %14 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params11, align 8, !dbg !5229
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5230
  %call12 = call i32 %14(%struct.dvb_frontend* %15) #8, !dbg !5225
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5231
  %ops13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1, !dbg !5233
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops13, i32 0, i32 26, !dbg !5234
  %17 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5234
  %tobool14 = icmp ne i32 (%struct.dvb_frontend*, i32)* %17, null, !dbg !5231
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !5235

if.then15:                                        ; preds = %if.then8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5236
  %ops16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1, !dbg !5237
  %i2c_gate_ctrl17 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops16, i32 0, i32 26, !dbg !5238
  %19 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl17, align 8, !dbg !5238
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5239
  %call18 = call i32 %19(%struct.dvb_frontend* %20, i32 0) #8, !dbg !5236
  br label %if.end19, !dbg !5236

if.end19:                                         ; preds = %if.then15, %if.then8
  br label %if.end20, !dbg !5240

if.end20:                                         ; preds = %if.end19, %if.end6
  %21 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5241
  %demod_type21 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %21, i32 0, i32 3, !dbg !5243
  %22 = load i32, i32* %demod_type21, align 8, !dbg !5243
  %cmp22 = icmp eq i32 %22, 0, !dbg !5244
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5245

if.then23:                                        ; preds = %if.end20
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5246
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 11, !dbg !5248
  store i32 9, i32* %code_rate_HP, align 4, !dbg !5249
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5250
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 8, !dbg !5251
  store i32 4, i32* %guard_interval, align 4, !dbg !5252
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5253
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 6, !dbg !5254
  store i32 2, i32* %transmission_mode, align 4, !dbg !5255
  br label %if.end24, !dbg !5256

if.end24:                                         ; preds = %if.then23, %if.end20
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5257
  %code_rate_HP25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 11, !dbg !5259
  %27 = load i32, i32* %code_rate_HP25, align 4, !dbg !5259
  %cmp26 = icmp eq i32 %27, 9, !dbg !5260
  br i1 %cmp26, label %if.then32, label %lor.lhs.false, !dbg !5261

lor.lhs.false:                                    ; preds = %if.end24
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5262
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 12, !dbg !5263
  %29 = load i32, i32* %code_rate_LP, align 4, !dbg !5263
  %cmp27 = icmp eq i32 %29, 9, !dbg !5264
  br i1 %cmp27, label %if.then32, label %lor.lhs.false28, !dbg !5265

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5266
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 1, !dbg !5267
  %31 = load i32, i32* %modulation, align 4, !dbg !5267
  %cmp29 = icmp eq i32 %31, 6, !dbg !5268
  br i1 %cmp29, label %if.then32, label %lor.lhs.false30, !dbg !5269

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5270
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 9, !dbg !5271
  %33 = load i32, i32* %hierarchy, align 4, !dbg !5271
  %cmp31 = icmp eq i32 %33, 4, !dbg !5272
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !5273

if.then32:                                        ; preds = %lor.lhs.false30, %lor.lhs.false28, %lor.lhs.false, %if.end24
  %34 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5274
  %call33 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %34, i32 1, i32 1, i32 1) #8, !dbg !5276
  %35 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5277
  %call34 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %35, i32 2, i32 3, i32 0) #8, !dbg !5278
  %36 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5279
  %call35 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %36, i32 2, i32 96, i32 0) #8, !dbg !5280
  %37 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5281
  %call36 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %37, i32 3, i32 63, i32 0) #8, !dbg !5282
  br label %if.end67, !dbg !5283

if.else:                                          ; preds = %lor.lhs.false30
  %38 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5284
  %call37 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %38, i32 1, i32 1, i32 0) #8, !dbg !5286
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5287
  %code_rate_HP38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 11, !dbg !5288
  %40 = load i32, i32* %code_rate_HP38, align 4, !dbg !5288
  %call39 = call i32 @tda1004x_encode_fec(i32 %40) #8, !dbg !5289
  store i32 %call39, i32* %tmp, align 4, !dbg !5290
  %41 = load i32, i32* %tmp, align 4, !dbg !5291
  %cmp40 = icmp slt i32 %41, 0, !dbg !5293
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !5294

if.then41:                                        ; preds = %if.else
  %42 = load i32, i32* %tmp, align 4, !dbg !5295
  store i32 %42, i32* %retval, align 4, !dbg !5296
  br label %return, !dbg !5296

if.end42:                                         ; preds = %if.else
  %43 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5297
  %44 = load i32, i32* %tmp, align 4, !dbg !5298
  %call43 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %43, i32 3, i32 7, i32 %44) #8, !dbg !5299
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5300
  %code_rate_LP44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 12, !dbg !5301
  %46 = load i32, i32* %code_rate_LP44, align 4, !dbg !5301
  %call45 = call i32 @tda1004x_encode_fec(i32 %46) #8, !dbg !5302
  store i32 %call45, i32* %tmp, align 4, !dbg !5303
  %47 = load i32, i32* %tmp, align 4, !dbg !5304
  %cmp46 = icmp slt i32 %47, 0, !dbg !5306
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !5307

if.then47:                                        ; preds = %if.end42
  %48 = load i32, i32* %tmp, align 4, !dbg !5308
  store i32 %48, i32* %retval, align 4, !dbg !5309
  br label %return, !dbg !5309

if.end48:                                         ; preds = %if.end42
  %49 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5310
  %50 = load i32, i32* %tmp, align 4, !dbg !5311
  %shl = shl i32 %50, 3, !dbg !5312
  %call49 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %49, i32 3, i32 56, i32 %shl) #8, !dbg !5313
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5314
  %modulation50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 1, !dbg !5315
  %52 = load i32, i32* %modulation50, align 4, !dbg !5315
  switch i32 %52, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb52
    i32 3, label %sw.bb54
  ], !dbg !5316

sw.bb:                                            ; preds = %if.end48
  %53 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5317
  %call51 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %53, i32 2, i32 3, i32 0) #8, !dbg !5319
  br label %sw.epilog, !dbg !5320

sw.bb52:                                          ; preds = %if.end48
  %54 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5321
  %call53 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %54, i32 2, i32 3, i32 1) #8, !dbg !5322
  br label %sw.epilog, !dbg !5323

sw.bb54:                                          ; preds = %if.end48
  %55 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5324
  %call55 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %55, i32 2, i32 3, i32 2) #8, !dbg !5325
  br label %sw.epilog, !dbg !5326

sw.default:                                       ; preds = %if.end48
  store i32 -22, i32* %retval, align 4, !dbg !5327
  br label %return, !dbg !5327

sw.epilog:                                        ; preds = %sw.bb54, %sw.bb52, %sw.bb
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5328
  %hierarchy56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 9, !dbg !5329
  %57 = load i32, i32* %hierarchy56, align 4, !dbg !5329
  switch i32 %57, label %sw.default65 [
    i32 0, label %sw.bb57
    i32 1, label %sw.bb59
    i32 2, label %sw.bb61
    i32 3, label %sw.bb63
  ], !dbg !5330

sw.bb57:                                          ; preds = %sw.epilog
  %58 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5331
  %call58 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %58, i32 2, i32 96, i32 0) #8, !dbg !5333
  br label %sw.epilog66, !dbg !5334

sw.bb59:                                          ; preds = %sw.epilog
  %59 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5335
  %call60 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %59, i32 2, i32 96, i32 32) #8, !dbg !5336
  br label %sw.epilog66, !dbg !5337

sw.bb61:                                          ; preds = %sw.epilog
  %60 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5338
  %call62 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %60, i32 2, i32 96, i32 64) #8, !dbg !5339
  br label %sw.epilog66, !dbg !5340

sw.bb63:                                          ; preds = %sw.epilog
  %61 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5341
  %call64 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %61, i32 2, i32 96, i32 96) #8, !dbg !5342
  br label %sw.epilog66, !dbg !5343

sw.default65:                                     ; preds = %sw.epilog
  store i32 -22, i32* %retval, align 4, !dbg !5344
  br label %return, !dbg !5344

sw.epilog66:                                      ; preds = %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57
  br label %if.end67

if.end67:                                         ; preds = %sw.epilog66, %if.then32
  %62 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5345
  %demod_type68 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %62, i32 0, i32 3, !dbg !5346
  %63 = load i32, i32* %demod_type68, align 8, !dbg !5346
  switch i32 %63, label %sw.epilog74 [
    i32 0, label %sw.bb69
    i32 1, label %sw.bb71
  ], !dbg !5347

sw.bb69:                                          ; preds = %if.end67
  %64 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5348
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5350
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 7, !dbg !5351
  %66 = load i32, i32* %bandwidth_hz, align 4, !dbg !5351
  %call70 = call i32 @tda10045h_set_bandwidth(%struct.tda1004x_state* %64, i32 %66) #8, !dbg !5352
  br label %sw.epilog74, !dbg !5353

sw.bb71:                                          ; preds = %if.end67
  %67 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5354
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5355
  %bandwidth_hz72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 7, !dbg !5356
  %69 = load i32, i32* %bandwidth_hz72, align 4, !dbg !5356
  %call73 = call i32 @tda10046h_set_bandwidth(%struct.tda1004x_state* %67, i32 %69) #8, !dbg !5357
  br label %sw.epilog74, !dbg !5358

sw.epilog74:                                      ; preds = %if.end67, %sw.bb71, %sw.bb69
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5359
  %inversion75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 4, !dbg !5360
  %71 = load i32, i32* %inversion75, align 4, !dbg !5360
  store i32 %71, i32* %inversion, align 4, !dbg !5361
  %72 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5362
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %72, i32 0, i32 1, !dbg !5364
  %73 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !5364
  %invert = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %73, i32 0, i32 1, !dbg !5365
  %74 = load i8, i8* %invert, align 1, !dbg !5365
  %tobool76 = icmp ne i8 %74, 0, !dbg !5362
  br i1 %tobool76, label %if.then77, label %if.end79, !dbg !5366

if.then77:                                        ; preds = %sw.epilog74
  %75 = load i32, i32* %inversion, align 4, !dbg !5367
  %tobool78 = icmp ne i32 %75, 0, !dbg !5367
  %76 = zext i1 %tobool78 to i64, !dbg !5367
  %cond = select i1 %tobool78, i32 0, i32 1, !dbg !5367
  store i32 %cond, i32* %inversion, align 4, !dbg !5368
  br label %if.end79, !dbg !5369

if.end79:                                         ; preds = %if.then77, %sw.epilog74
  %77 = load i32, i32* %inversion, align 4, !dbg !5370
  switch i32 %77, label %sw.default84 [
    i32 0, label %sw.bb80
    i32 1, label %sw.bb82
  ], !dbg !5371

sw.bb80:                                          ; preds = %if.end79
  %78 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5372
  %call81 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %78, i32 22, i32 32, i32 0) #8, !dbg !5374
  br label %sw.epilog85, !dbg !5375

sw.bb82:                                          ; preds = %if.end79
  %79 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5376
  %call83 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %79, i32 22, i32 32, i32 32) #8, !dbg !5377
  br label %sw.epilog85, !dbg !5378

sw.default84:                                     ; preds = %if.end79
  store i32 -22, i32* %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

sw.epilog85:                                      ; preds = %sw.bb82, %sw.bb80
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5380
  %guard_interval86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 8, !dbg !5381
  %81 = load i32, i32* %guard_interval86, align 4, !dbg !5381
  switch i32 %81, label %sw.default102 [
    i32 0, label %sw.bb87
    i32 1, label %sw.bb90
    i32 2, label %sw.bb93
    i32 3, label %sw.bb96
    i32 4, label %sw.bb99
  ], !dbg !5382

sw.bb87:                                          ; preds = %sw.epilog85
  %82 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5383
  %call88 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %82, i32 1, i32 2, i32 0) #8, !dbg !5385
  %83 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5386
  %call89 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %83, i32 2, i32 12, i32 0) #8, !dbg !5387
  br label %sw.epilog103, !dbg !5388

sw.bb90:                                          ; preds = %sw.epilog85
  %84 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5389
  %call91 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %84, i32 1, i32 2, i32 0) #8, !dbg !5390
  %85 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5391
  %call92 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %85, i32 2, i32 12, i32 4) #8, !dbg !5392
  br label %sw.epilog103, !dbg !5393

sw.bb93:                                          ; preds = %sw.epilog85
  %86 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5394
  %call94 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %86, i32 1, i32 2, i32 0) #8, !dbg !5395
  %87 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5396
  %call95 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %87, i32 2, i32 12, i32 8) #8, !dbg !5397
  br label %sw.epilog103, !dbg !5398

sw.bb96:                                          ; preds = %sw.epilog85
  %88 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5399
  %call97 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %88, i32 1, i32 2, i32 0) #8, !dbg !5400
  %89 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5401
  %call98 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %89, i32 2, i32 12, i32 12) #8, !dbg !5402
  br label %sw.epilog103, !dbg !5403

sw.bb99:                                          ; preds = %sw.epilog85
  %90 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5404
  %call100 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %90, i32 1, i32 2, i32 2) #8, !dbg !5405
  %91 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5406
  %call101 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %91, i32 2, i32 12, i32 0) #8, !dbg !5407
  br label %sw.epilog103, !dbg !5408

sw.default102:                                    ; preds = %sw.epilog85
  store i32 -22, i32* %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

sw.epilog103:                                     ; preds = %sw.bb99, %sw.bb96, %sw.bb93, %sw.bb90, %sw.bb87
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params, align 8, !dbg !5410
  %transmission_mode104 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 6, !dbg !5411
  %93 = load i32, i32* %transmission_mode104, align 4, !dbg !5411
  switch i32 %93, label %sw.default114 [
    i32 0, label %sw.bb105
    i32 1, label %sw.bb108
    i32 2, label %sw.bb111
  ], !dbg !5412

sw.bb105:                                         ; preds = %sw.epilog103
  %94 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5413
  %call106 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %94, i32 1, i32 4, i32 0) #8, !dbg !5415
  %95 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5416
  %call107 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %95, i32 2, i32 16, i32 0) #8, !dbg !5417
  br label %sw.epilog115, !dbg !5418

sw.bb108:                                         ; preds = %sw.epilog103
  %96 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5419
  %call109 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %96, i32 1, i32 4, i32 0) #8, !dbg !5420
  %97 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5421
  %call110 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %97, i32 2, i32 16, i32 16) #8, !dbg !5422
  br label %sw.epilog115, !dbg !5423

sw.bb111:                                         ; preds = %sw.epilog103
  %98 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5424
  %call112 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %98, i32 1, i32 4, i32 4) #8, !dbg !5425
  %99 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5426
  %call113 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %99, i32 2, i32 16, i32 0) #8, !dbg !5427
  br label %sw.epilog115, !dbg !5428

sw.default114:                                    ; preds = %sw.epilog103
  store i32 -22, i32* %retval, align 4, !dbg !5429
  br label %return, !dbg !5429

sw.epilog115:                                     ; preds = %sw.bb111, %sw.bb108, %sw.bb105
  %100 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5430
  %demod_type116 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %100, i32 0, i32 3, !dbg !5431
  %101 = load i32, i32* %demod_type116, align 8, !dbg !5431
  switch i32 %101, label %sw.epilog123 [
    i32 0, label %sw.bb117
    i32 1, label %sw.bb120
  ], !dbg !5432

sw.bb117:                                         ; preds = %sw.epilog115
  %102 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5433
  %call118 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %102, i32 7, i32 8, i32 8) #8, !dbg !5435
  %103 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5436
  %call119 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %103, i32 7, i32 8, i32 0) #8, !dbg !5437
  br label %sw.epilog123, !dbg !5438

sw.bb120:                                         ; preds = %sw.epilog115
  %104 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5439
  %call121 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %104, i32 1, i32 64, i32 64) #8, !dbg !5440
  call void @msleep(i32 1) #8, !dbg !5441
  %105 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5442
  %call122 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %105, i32 67, i32 4, i32 1) #8, !dbg !5443
  br label %sw.epilog123, !dbg !5444

sw.epilog123:                                     ; preds = %sw.epilog115, %sw.bb120, %sw.bb117
  call void @msleep(i32 10) #8, !dbg !5445
  store i32 0, i32* %retval, align 4, !dbg !5446
  br label %return, !dbg !5446

return:                                           ; preds = %sw.epilog123, %sw.default114, %sw.default102, %sw.default84, %sw.default65, %sw.default, %if.then47, %if.then41
  %106 = load i32, i32* %retval, align 4, !dbg !5447
  ret i32 %106, !dbg !5447
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5448 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5453
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5454
  store i32 800, i32* %min_delay_ms, align 4, !dbg !5455
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5456
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5457
  store i32 0, i32* %step_size, align 4, !dbg !5458
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5459
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5460
  store i32 0, i32* %max_drift, align 4, !dbg !5461
  ret i32 0, !dbg !5462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_get_fe(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %fe_params) #0 !dbg !5463 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_params.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %status = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5464, metadata !DIExpression()), !dbg !5465
  store %struct.dtv_frontend_properties* %fe_params, %struct.dtv_frontend_properties** %fe_params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %fe_params.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5468, metadata !DIExpression()), !dbg !5469
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5470
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5471
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5471
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5470
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5469
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5472, metadata !DIExpression()), !dbg !5473
  br label %do.body, !dbg !5474

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5475
  %tobool = icmp ne i32 %3, 0, !dbg !5475
  br i1 %tobool, label %if.then, label %if.end, !dbg !5478

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tda1004x_get_fe, i64 0, i64 0)) #9, !dbg !5475
  br label %if.end, !dbg !5475

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5478

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5479
  %call1 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %4, i32 6) #8, !dbg !5480
  store i32 %call1, i32* %status, align 4, !dbg !5481
  %5 = load i32, i32* %status, align 4, !dbg !5482
  %cmp = icmp eq i32 %5, -1, !dbg !5484
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5485

if.then2:                                         ; preds = %do.end
  store i32 -5, i32* %retval, align 4, !dbg !5486
  br label %return, !dbg !5486

if.end3:                                          ; preds = %do.end
  %6 = load i32, i32* %status, align 4, !dbg !5487
  %and = and i32 %6, 8, !dbg !5489
  %tobool4 = icmp ne i32 %and, 0, !dbg !5489
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5490

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

if.end6:                                          ; preds = %if.end3
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5492
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 4, !dbg !5493
  store i32 0, i32* %inversion, align 4, !dbg !5494
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5495
  %call7 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %8, i32 22) #8, !dbg !5497
  %and8 = and i32 %call7, 32, !dbg !5498
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5498
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5499

if.then10:                                        ; preds = %if.end6
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5500
  %inversion11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 4, !dbg !5501
  store i32 1, i32* %inversion11, align 4, !dbg !5502
  br label %if.end12, !dbg !5500

if.end12:                                         ; preds = %if.then10, %if.end6
  %10 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5503
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %10, i32 0, i32 1, !dbg !5505
  %11 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !5505
  %invert = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %11, i32 0, i32 1, !dbg !5506
  %12 = load i8, i8* %invert, align 1, !dbg !5506
  %tobool13 = icmp ne i8 %12, 0, !dbg !5503
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !5507

if.then14:                                        ; preds = %if.end12
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5508
  %inversion15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 4, !dbg !5509
  %14 = load i32, i32* %inversion15, align 4, !dbg !5509
  %tobool16 = icmp ne i32 %14, 0, !dbg !5508
  %15 = zext i1 %tobool16 to i64, !dbg !5508
  %cond = select i1 %tobool16, i32 0, i32 1, !dbg !5508
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5510
  %inversion17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 4, !dbg !5511
  store i32 %cond, i32* %inversion17, align 4, !dbg !5512
  br label %if.end18, !dbg !5510

if.end18:                                         ; preds = %if.then14, %if.end12
  %17 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5513
  %demod_type = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %17, i32 0, i32 3, !dbg !5514
  %18 = load i32, i32* %demod_type, align 8, !dbg !5514
  switch i32 %18, label %sw.epilog34 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ], !dbg !5515

sw.bb:                                            ; preds = %if.end18
  %19 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5516
  %call19 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %19, i32 53) #8, !dbg !5518
  switch i32 %call19, label %sw.epilog [
    i32 20, label %sw.bb20
    i32 219, label %sw.bb21
    i32 79, label %sw.bb23
  ], !dbg !5519

sw.bb20:                                          ; preds = %sw.bb
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5520
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 7, !dbg !5522
  store i32 8000000, i32* %bandwidth_hz, align 4, !dbg !5523
  br label %sw.epilog, !dbg !5524

sw.bb21:                                          ; preds = %sw.bb
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5525
  %bandwidth_hz22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 7, !dbg !5526
  store i32 7000000, i32* %bandwidth_hz22, align 4, !dbg !5527
  br label %sw.epilog, !dbg !5528

sw.bb23:                                          ; preds = %sw.bb
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5529
  %bandwidth_hz24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 7, !dbg !5530
  store i32 6000000, i32* %bandwidth_hz24, align 4, !dbg !5531
  br label %sw.epilog, !dbg !5532

sw.epilog:                                        ; preds = %sw.bb, %sw.bb23, %sw.bb21, %sw.bb20
  br label %sw.epilog34, !dbg !5533

sw.bb25:                                          ; preds = %if.end18
  %23 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5534
  %call26 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %23, i32 49) #8, !dbg !5535
  switch i32 %call26, label %sw.epilog33 [
    i32 92, label %sw.bb27
    i32 84, label %sw.bb27
    i32 106, label %sw.bb29
    i32 96, label %sw.bb29
    i32 123, label %sw.bb31
    i32 112, label %sw.bb31
  ], !dbg !5536

sw.bb27:                                          ; preds = %sw.bb25, %sw.bb25
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5537
  %bandwidth_hz28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 7, !dbg !5539
  store i32 8000000, i32* %bandwidth_hz28, align 4, !dbg !5540
  br label %sw.epilog33, !dbg !5541

sw.bb29:                                          ; preds = %sw.bb25, %sw.bb25
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5542
  %bandwidth_hz30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 7, !dbg !5543
  store i32 7000000, i32* %bandwidth_hz30, align 4, !dbg !5544
  br label %sw.epilog33, !dbg !5545

sw.bb31:                                          ; preds = %sw.bb25, %sw.bb25
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5546
  %bandwidth_hz32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 7, !dbg !5547
  store i32 6000000, i32* %bandwidth_hz32, align 4, !dbg !5548
  br label %sw.epilog33, !dbg !5549

sw.epilog33:                                      ; preds = %sw.bb25, %sw.bb31, %sw.bb29, %sw.bb27
  br label %sw.epilog34, !dbg !5550

sw.epilog34:                                      ; preds = %if.end18, %sw.epilog33, %sw.epilog
  %27 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5551
  %call35 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %27, i32 5) #8, !dbg !5552
  %and36 = and i32 %call35, 7, !dbg !5553
  %call37 = call i32 @tda1004x_decode_fec(i32 %and36) #8, !dbg !5554
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5555
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 11, !dbg !5556
  store i32 %call37, i32* %code_rate_HP, align 4, !dbg !5557
  %29 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5558
  %call38 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %29, i32 5) #8, !dbg !5559
  %shr = ashr i32 %call38, 3, !dbg !5560
  %and39 = and i32 %shr, 7, !dbg !5561
  %call40 = call i32 @tda1004x_decode_fec(i32 %and39) #8, !dbg !5562
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5563
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 12, !dbg !5564
  store i32 %call40, i32* %code_rate_LP, align 4, !dbg !5565
  %31 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5566
  %call41 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %31, i32 4) #8, !dbg !5567
  %and42 = and i32 %call41, 3, !dbg !5568
  switch i32 %and42, label %sw.epilog48 [
    i32 0, label %sw.bb43
    i32 1, label %sw.bb44
    i32 2, label %sw.bb46
  ], !dbg !5569

sw.bb43:                                          ; preds = %sw.epilog34
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5570
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 1, !dbg !5572
  store i32 0, i32* %modulation, align 4, !dbg !5573
  br label %sw.epilog48, !dbg !5574

sw.bb44:                                          ; preds = %sw.epilog34
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5575
  %modulation45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 1, !dbg !5576
  store i32 1, i32* %modulation45, align 4, !dbg !5577
  br label %sw.epilog48, !dbg !5578

sw.bb46:                                          ; preds = %sw.epilog34
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5579
  %modulation47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 1, !dbg !5580
  store i32 3, i32* %modulation47, align 4, !dbg !5581
  br label %sw.epilog48, !dbg !5582

sw.epilog48:                                      ; preds = %sw.epilog34, %sw.bb46, %sw.bb44, %sw.bb43
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5583
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 6, !dbg !5584
  store i32 0, i32* %transmission_mode, align 4, !dbg !5585
  %36 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5586
  %call49 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %36, i32 4) #8, !dbg !5588
  %and50 = and i32 %call49, 16, !dbg !5589
  %tobool51 = icmp ne i32 %and50, 0, !dbg !5589
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !5590

if.then52:                                        ; preds = %sw.epilog48
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5591
  %transmission_mode53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 6, !dbg !5592
  store i32 1, i32* %transmission_mode53, align 4, !dbg !5593
  br label %if.end54, !dbg !5591

if.end54:                                         ; preds = %if.then52, %sw.epilog48
  %38 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5594
  %call55 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %38, i32 4) #8, !dbg !5595
  %and56 = and i32 %call55, 12, !dbg !5596
  %shr57 = ashr i32 %and56, 2, !dbg !5597
  switch i32 %shr57, label %sw.epilog65 [
    i32 0, label %sw.bb58
    i32 1, label %sw.bb59
    i32 2, label %sw.bb61
    i32 3, label %sw.bb63
  ], !dbg !5598

sw.bb58:                                          ; preds = %if.end54
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5599
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 8, !dbg !5601
  store i32 0, i32* %guard_interval, align 4, !dbg !5602
  br label %sw.epilog65, !dbg !5603

sw.bb59:                                          ; preds = %if.end54
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5604
  %guard_interval60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 8, !dbg !5605
  store i32 1, i32* %guard_interval60, align 4, !dbg !5606
  br label %sw.epilog65, !dbg !5607

sw.bb61:                                          ; preds = %if.end54
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5608
  %guard_interval62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 8, !dbg !5609
  store i32 2, i32* %guard_interval62, align 4, !dbg !5610
  br label %sw.epilog65, !dbg !5611

sw.bb63:                                          ; preds = %if.end54
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5612
  %guard_interval64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 8, !dbg !5613
  store i32 3, i32* %guard_interval64, align 4, !dbg !5614
  br label %sw.epilog65, !dbg !5615

sw.epilog65:                                      ; preds = %if.end54, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb58
  %43 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5616
  %call66 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %43, i32 4) #8, !dbg !5617
  %and67 = and i32 %call66, 96, !dbg !5618
  %shr68 = ashr i32 %and67, 5, !dbg !5619
  switch i32 %shr68, label %sw.epilog76 [
    i32 0, label %sw.bb69
    i32 1, label %sw.bb70
    i32 2, label %sw.bb72
    i32 3, label %sw.bb74
  ], !dbg !5620

sw.bb69:                                          ; preds = %sw.epilog65
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5621
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 9, !dbg !5623
  store i32 0, i32* %hierarchy, align 4, !dbg !5624
  br label %sw.epilog76, !dbg !5625

sw.bb70:                                          ; preds = %sw.epilog65
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5626
  %hierarchy71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 9, !dbg !5627
  store i32 1, i32* %hierarchy71, align 4, !dbg !5628
  br label %sw.epilog76, !dbg !5629

sw.bb72:                                          ; preds = %sw.epilog65
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5630
  %hierarchy73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 9, !dbg !5631
  store i32 2, i32* %hierarchy73, align 4, !dbg !5632
  br label %sw.epilog76, !dbg !5633

sw.bb74:                                          ; preds = %sw.epilog65
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %fe_params.addr, align 8, !dbg !5634
  %hierarchy75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 9, !dbg !5635
  store i32 3, i32* %hierarchy75, align 4, !dbg !5636
  br label %sw.epilog76, !dbg !5637

sw.epilog76:                                      ; preds = %sw.epilog65, %sw.bb74, %sw.bb72, %sw.bb70, %sw.bb69
  store i32 0, i32* %retval, align 4, !dbg !5638
  br label %return, !dbg !5638

return:                                           ; preds = %sw.epilog76, %if.then5, %if.then2
  %48 = load i32, i32* %retval, align 4, !dbg !5639
  ret i32 %48, !dbg !5639
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_read_status(%struct.dvb_frontend* %fe, i32* %fe_status) #0 !dbg !5640 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_status.addr = alloca i32*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %status = alloca i32, align 4
  %cber = alloca i32, align 4
  %vber = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5641, metadata !DIExpression()), !dbg !5642
  store i32* %fe_status, i32** %fe_status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %fe_status.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5645, metadata !DIExpression()), !dbg !5646
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5647
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5648
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5648
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5647
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5646
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5649, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.declare(metadata i32* %cber, metadata !5651, metadata !DIExpression()), !dbg !5652
  call void @llvm.dbg.declare(metadata i32* %vber, metadata !5653, metadata !DIExpression()), !dbg !5654
  br label %do.body, !dbg !5655

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5656
  %tobool = icmp ne i32 %3, 0, !dbg !5656
  br i1 %tobool, label %if.then, label %if.end, !dbg !5659

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda1004x_read_status, i64 0, i64 0)) #9, !dbg !5656
  br label %if.end, !dbg !5656

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5659

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5660
  %call1 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %4, i32 6) #8, !dbg !5661
  store i32 %call1, i32* %status, align 4, !dbg !5662
  %5 = load i32, i32* %status, align 4, !dbg !5663
  %cmp = icmp eq i32 %5, -1, !dbg !5665
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5666

if.then2:                                         ; preds = %do.end
  store i32 -5, i32* %retval, align 4, !dbg !5667
  br label %return, !dbg !5667

if.end3:                                          ; preds = %do.end
  %6 = load i32*, i32** %fe_status.addr, align 8, !dbg !5668
  store i32 0, i32* %6, align 4, !dbg !5669
  %7 = load i32, i32* %status, align 4, !dbg !5670
  %and = and i32 %7, 4, !dbg !5672
  %tobool4 = icmp ne i32 %and, 0, !dbg !5672
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5673

if.then5:                                         ; preds = %if.end3
  %8 = load i32*, i32** %fe_status.addr, align 8, !dbg !5674
  %9 = load i32, i32* %8, align 4, !dbg !5675
  %or = or i32 %9, 1, !dbg !5675
  store i32 %or, i32* %8, align 4, !dbg !5675
  br label %if.end6, !dbg !5676

if.end6:                                          ; preds = %if.then5, %if.end3
  %10 = load i32, i32* %status, align 4, !dbg !5677
  %and7 = and i32 %10, 2, !dbg !5679
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5679
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5680

if.then9:                                         ; preds = %if.end6
  %11 = load i32*, i32** %fe_status.addr, align 8, !dbg !5681
  %12 = load i32, i32* %11, align 4, !dbg !5682
  %or10 = or i32 %12, 2, !dbg !5682
  store i32 %or10, i32* %11, align 4, !dbg !5682
  br label %if.end11, !dbg !5683

if.end11:                                         ; preds = %if.then9, %if.end6
  %13 = load i32, i32* %status, align 4, !dbg !5684
  %and12 = and i32 %13, 8, !dbg !5686
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5686
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !5687

if.then14:                                        ; preds = %if.end11
  %14 = load i32*, i32** %fe_status.addr, align 8, !dbg !5688
  %15 = load i32, i32* %14, align 4, !dbg !5689
  %or15 = or i32 %15, 28, !dbg !5689
  store i32 %or15, i32* %14, align 4, !dbg !5689
  br label %if.end16, !dbg !5690

if.end16:                                         ; preds = %if.then14, %if.end11
  %16 = load i32*, i32** %fe_status.addr, align 8, !dbg !5691
  %17 = load i32, i32* %16, align 4, !dbg !5693
  %and17 = and i32 %17, 4, !dbg !5694
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5694
  br i1 %tobool18, label %if.end34, label %if.then19, !dbg !5695

if.then19:                                        ; preds = %if.end16
  %18 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5696
  %call20 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %18, i32 34) #8, !dbg !5698
  store i32 %call20, i32* %cber, align 4, !dbg !5699
  %19 = load i32, i32* %cber, align 4, !dbg !5700
  %cmp21 = icmp eq i32 %19, -1, !dbg !5702
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5703

if.then22:                                        ; preds = %if.then19
  store i32 -5, i32* %retval, align 4, !dbg !5704
  br label %return, !dbg !5704

if.end23:                                         ; preds = %if.then19
  %20 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5705
  %call24 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %20, i32 33) #8, !dbg !5706
  store i32 %call24, i32* %status, align 4, !dbg !5707
  %21 = load i32, i32* %status, align 4, !dbg !5708
  %cmp25 = icmp eq i32 %21, -1, !dbg !5710
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !5711

if.then26:                                        ; preds = %if.end23
  store i32 -5, i32* %retval, align 4, !dbg !5712
  br label %return, !dbg !5712

if.end27:                                         ; preds = %if.end23
  %22 = load i32, i32* %status, align 4, !dbg !5713
  %shl = shl i32 %22, 8, !dbg !5714
  %23 = load i32, i32* %cber, align 4, !dbg !5715
  %or28 = or i32 %23, %shl, !dbg !5715
  store i32 %or28, i32* %cber, align 4, !dbg !5715
  %24 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5716
  %call29 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %24, i32 32) #8, !dbg !5717
  %25 = load i32, i32* %cber, align 4, !dbg !5718
  %cmp30 = icmp ne i32 %25, 65535, !dbg !5720
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !5721

if.then31:                                        ; preds = %if.end27
  %26 = load i32*, i32** %fe_status.addr, align 8, !dbg !5722
  %27 = load i32, i32* %26, align 4, !dbg !5723
  %or32 = or i32 %27, 4, !dbg !5723
  store i32 %or32, i32* %26, align 4, !dbg !5723
  br label %if.end33, !dbg !5724

if.end33:                                         ; preds = %if.then31, %if.end27
  br label %if.end34, !dbg !5725

if.end34:                                         ; preds = %if.end33, %if.end16
  %28 = load i32*, i32** %fe_status.addr, align 8, !dbg !5726
  %29 = load i32, i32* %28, align 4, !dbg !5728
  %and35 = and i32 %29, 4, !dbg !5729
  %tobool36 = icmp ne i32 %and35, 0, !dbg !5729
  br i1 %tobool36, label %land.lhs.true, label %if.end62, !dbg !5730

land.lhs.true:                                    ; preds = %if.end34
  %30 = load i32*, i32** %fe_status.addr, align 8, !dbg !5731
  %31 = load i32, i32* %30, align 4, !dbg !5732
  %and37 = and i32 %31, 8, !dbg !5733
  %tobool38 = icmp ne i32 %and37, 0, !dbg !5733
  br i1 %tobool38, label %if.end62, label %if.then39, !dbg !5734

if.then39:                                        ; preds = %land.lhs.true
  %32 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5735
  %call40 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %32, i32 38) #8, !dbg !5737
  store i32 %call40, i32* %vber, align 4, !dbg !5738
  %33 = load i32, i32* %vber, align 4, !dbg !5739
  %cmp41 = icmp eq i32 %33, -1, !dbg !5741
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !5742

if.then42:                                        ; preds = %if.then39
  store i32 -5, i32* %retval, align 4, !dbg !5743
  br label %return, !dbg !5743

if.end43:                                         ; preds = %if.then39
  %34 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5744
  %call44 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %34, i32 37) #8, !dbg !5745
  store i32 %call44, i32* %status, align 4, !dbg !5746
  %35 = load i32, i32* %status, align 4, !dbg !5747
  %cmp45 = icmp eq i32 %35, -1, !dbg !5749
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5750

if.then46:                                        ; preds = %if.end43
  store i32 -5, i32* %retval, align 4, !dbg !5751
  br label %return, !dbg !5751

if.end47:                                         ; preds = %if.end43
  %36 = load i32, i32* %status, align 4, !dbg !5752
  %shl48 = shl i32 %36, 8, !dbg !5753
  %37 = load i32, i32* %vber, align 4, !dbg !5754
  %or49 = or i32 %37, %shl48, !dbg !5754
  store i32 %or49, i32* %vber, align 4, !dbg !5754
  %38 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5755
  %call50 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %38, i32 36) #8, !dbg !5756
  store i32 %call50, i32* %status, align 4, !dbg !5757
  %39 = load i32, i32* %status, align 4, !dbg !5758
  %cmp51 = icmp eq i32 %39, -1, !dbg !5760
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5761

if.then52:                                        ; preds = %if.end47
  store i32 -5, i32* %retval, align 4, !dbg !5762
  br label %return, !dbg !5762

if.end53:                                         ; preds = %if.end47
  %40 = load i32, i32* %status, align 4, !dbg !5763
  %and54 = and i32 %40, 15, !dbg !5764
  %shl55 = shl i32 %and54, 16, !dbg !5765
  %41 = load i32, i32* %vber, align 4, !dbg !5766
  %or56 = or i32 %41, %shl55, !dbg !5766
  store i32 %or56, i32* %vber, align 4, !dbg !5766
  %42 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5767
  %call57 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %42, i32 35) #8, !dbg !5768
  %43 = load i32, i32* %vber, align 4, !dbg !5769
  %cmp58 = icmp slt i32 %43, 16632, !dbg !5771
  br i1 %cmp58, label %if.then59, label %if.end61, !dbg !5772

if.then59:                                        ; preds = %if.end53
  %44 = load i32*, i32** %fe_status.addr, align 8, !dbg !5773
  %45 = load i32, i32* %44, align 4, !dbg !5774
  %or60 = or i32 %45, 8, !dbg !5774
  store i32 %or60, i32* %44, align 4, !dbg !5774
  br label %if.end61, !dbg !5775

if.end61:                                         ; preds = %if.then59, %if.end53
  br label %if.end62, !dbg !5776

if.end62:                                         ; preds = %if.end61, %land.lhs.true, %if.end34
  br label %do.body63, !dbg !5777

do.body63:                                        ; preds = %if.end62
  %46 = load i32, i32* @debug, align 4, !dbg !5778
  %tobool64 = icmp ne i32 %46, 0, !dbg !5778
  br i1 %tobool64, label %if.then65, label %if.end67, !dbg !5781

if.then65:                                        ; preds = %do.body63
  %47 = load i32*, i32** %fe_status.addr, align 8, !dbg !5778
  %48 = load i32, i32* %47, align 4, !dbg !5778
  %call66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda1004x_read_status, i64 0, i64 0), i32 %48) #9, !dbg !5778
  br label %if.end67, !dbg !5778

if.end67:                                         ; preds = %if.then65, %do.body63
  br label %do.end68, !dbg !5781

do.end68:                                         ; preds = %if.end67
  store i32 0, i32* %retval, align 4, !dbg !5782
  br label %return, !dbg !5782

return:                                           ; preds = %do.end68, %if.then52, %if.then46, %if.then42, %if.then26, %if.then22, %if.then2
  %49 = load i32, i32* %retval, align 4, !dbg !5783
  ret i32 %49, !dbg !5783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5784 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5785, metadata !DIExpression()), !dbg !5786
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5787, metadata !DIExpression()), !dbg !5788
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5789, metadata !DIExpression()), !dbg !5790
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5791
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5792
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5792
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5791
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5790
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5793, metadata !DIExpression()), !dbg !5794
  br label %do.body, !dbg !5795

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5796
  %tobool = icmp ne i32 %3, 0, !dbg !5796
  br i1 %tobool, label %if.then, label %if.end, !dbg !5799

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda1004x_read_ber, i64 0, i64 0)) #9, !dbg !5796
  br label %if.end, !dbg !5796

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5799

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5800
  %call1 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %4, i32 34) #8, !dbg !5801
  store i32 %call1, i32* %tmp, align 4, !dbg !5802
  %5 = load i32, i32* %tmp, align 4, !dbg !5803
  %cmp = icmp slt i32 %5, 0, !dbg !5805
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5806

if.then2:                                         ; preds = %do.end
  store i32 -5, i32* %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

if.end3:                                          ; preds = %do.end
  %6 = load i32, i32* %tmp, align 4, !dbg !5808
  %shl = shl i32 %6, 1, !dbg !5809
  %7 = load i32*, i32** %ber.addr, align 8, !dbg !5810
  store i32 %shl, i32* %7, align 4, !dbg !5811
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5812
  %call4 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %8, i32 33) #8, !dbg !5813
  store i32 %call4, i32* %tmp, align 4, !dbg !5814
  %9 = load i32, i32* %tmp, align 4, !dbg !5815
  %cmp5 = icmp slt i32 %9, 0, !dbg !5817
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5818

if.then6:                                         ; preds = %if.end3
  store i32 -5, i32* %retval, align 4, !dbg !5819
  br label %return, !dbg !5819

if.end7:                                          ; preds = %if.end3
  %10 = load i32, i32* %tmp, align 4, !dbg !5820
  %shl8 = shl i32 %10, 9, !dbg !5821
  %11 = load i32*, i32** %ber.addr, align 8, !dbg !5822
  %12 = load i32, i32* %11, align 4, !dbg !5823
  %or = or i32 %12, %shl8, !dbg !5823
  store i32 %or, i32* %11, align 4, !dbg !5823
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5824
  %call9 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %13, i32 32) #8, !dbg !5825
  br label %do.body10, !dbg !5826

do.body10:                                        ; preds = %if.end7
  %14 = load i32, i32* @debug, align 4, !dbg !5827
  %tobool11 = icmp ne i32 %14, 0, !dbg !5827
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5830

if.then12:                                        ; preds = %do.body10
  %15 = load i32*, i32** %ber.addr, align 8, !dbg !5827
  %16 = load i32, i32* %15, align 4, !dbg !5827
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda1004x_read_ber, i64 0, i64 0), i32 %16) #9, !dbg !5827
  br label %if.end14, !dbg !5827

if.end14:                                         ; preds = %if.then12, %do.body10
  br label %do.end15, !dbg !5830

do.end15:                                         ; preds = %if.end14
  store i32 0, i32* %retval, align 4, !dbg !5831
  br label %return, !dbg !5831

return:                                           ; preds = %do.end15, %if.then6, %if.then2
  %17 = load i32, i32* %retval, align 4, !dbg !5832
  ret i32 %17, !dbg !5832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal) #0 !dbg !5833 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal.addr = alloca i16*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %tmp = alloca i32, align 4
  %reg = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  store i16* %signal, i16** %signal.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5838, metadata !DIExpression()), !dbg !5839
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5840
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5841
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5841
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5840
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5839
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5842, metadata !DIExpression()), !dbg !5843
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5844, metadata !DIExpression()), !dbg !5845
  store i32 0, i32* %reg, align 4, !dbg !5845
  br label %do.body, !dbg !5846

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5847
  %tobool = icmp ne i32 %3, 0, !dbg !5847
  br i1 %tobool, label %if.then, label %if.end, !dbg !5850

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tda1004x_read_signal_strength, i64 0, i64 0)) #9, !dbg !5847
  br label %if.end, !dbg !5847

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5850

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5851
  %demod_type = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %4, i32 0, i32 3, !dbg !5852
  %5 = load i32, i32* %demod_type, align 8, !dbg !5852
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !5853

sw.bb:                                            ; preds = %do.end
  store i32 26, i32* %reg, align 4, !dbg !5854
  br label %sw.epilog, !dbg !5856

sw.bb1:                                           ; preds = %do.end
  store i32 82, i32* %reg, align 4, !dbg !5857
  br label %sw.epilog, !dbg !5858

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  %6 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5859
  %7 = load i32, i32* %reg, align 4, !dbg !5860
  %call2 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %6, i32 %7) #8, !dbg !5861
  store i32 %call2, i32* %tmp, align 4, !dbg !5862
  %8 = load i32, i32* %tmp, align 4, !dbg !5863
  %cmp = icmp slt i32 %8, 0, !dbg !5865
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5866

if.then3:                                         ; preds = %sw.epilog
  store i32 -5, i32* %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

if.end4:                                          ; preds = %sw.epilog
  %9 = load i32, i32* %tmp, align 4, !dbg !5868
  %shl = shl i32 %9, 8, !dbg !5869
  %10 = load i32, i32* %tmp, align 4, !dbg !5870
  %or = or i32 %shl, %10, !dbg !5871
  %conv = trunc i32 %or to i16, !dbg !5872
  %11 = load i16*, i16** %signal.addr, align 8, !dbg !5873
  store i16 %conv, i16* %11, align 2, !dbg !5874
  br label %do.body5, !dbg !5875

do.body5:                                         ; preds = %if.end4
  %12 = load i32, i32* @debug, align 4, !dbg !5876
  %tobool6 = icmp ne i32 %12, 0, !dbg !5876
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !5879

if.then7:                                         ; preds = %do.body5
  %13 = load i16*, i16** %signal.addr, align 8, !dbg !5876
  %14 = load i16, i16* %13, align 2, !dbg !5876
  %conv8 = zext i16 %14 to i32, !dbg !5876
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tda1004x_read_signal_strength, i64 0, i64 0), i32 %conv8) #9, !dbg !5876
  br label %if.end10, !dbg !5876

if.end10:                                         ; preds = %if.then7, %do.body5
  br label %do.end11, !dbg !5879

do.end11:                                         ; preds = %if.end10
  store i32 0, i32* %retval, align 4, !dbg !5880
  br label %return, !dbg !5880

return:                                           ; preds = %do.end11, %if.then3
  %15 = load i32, i32* %retval, align 4, !dbg !5881
  ret i32 %15, !dbg !5881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5882 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5887, metadata !DIExpression()), !dbg !5888
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5889
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5890
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5890
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5889
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5888
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5891, metadata !DIExpression()), !dbg !5892
  br label %do.body, !dbg !5893

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5894
  %tobool = icmp ne i32 %3, 0, !dbg !5894
  br i1 %tobool, label %if.then, label %if.end, !dbg !5897

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda1004x_read_snr, i64 0, i64 0)) #9, !dbg !5894
  br label %if.end, !dbg !5894

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5897

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5898
  %call1 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %4, i32 28) #8, !dbg !5899
  store i32 %call1, i32* %tmp, align 4, !dbg !5900
  %5 = load i32, i32* %tmp, align 4, !dbg !5901
  %cmp = icmp slt i32 %5, 0, !dbg !5903
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5904

if.then2:                                         ; preds = %do.end
  store i32 -5, i32* %retval, align 4, !dbg !5905
  br label %return, !dbg !5905

if.end3:                                          ; preds = %do.end
  %6 = load i32, i32* %tmp, align 4, !dbg !5906
  %sub = sub i32 255, %6, !dbg !5907
  store i32 %sub, i32* %tmp, align 4, !dbg !5908
  %7 = load i32, i32* %tmp, align 4, !dbg !5909
  %shl = shl i32 %7, 8, !dbg !5910
  %8 = load i32, i32* %tmp, align 4, !dbg !5911
  %or = or i32 %shl, %8, !dbg !5912
  %conv = trunc i32 %or to i16, !dbg !5913
  %9 = load i16*, i16** %snr.addr, align 8, !dbg !5914
  store i16 %conv, i16* %9, align 2, !dbg !5915
  br label %do.body4, !dbg !5916

do.body4:                                         ; preds = %if.end3
  %10 = load i32, i32* @debug, align 4, !dbg !5917
  %tobool5 = icmp ne i32 %10, 0, !dbg !5917
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !5920

if.then6:                                         ; preds = %do.body4
  %11 = load i16*, i16** %snr.addr, align 8, !dbg !5917
  %12 = load i16, i16* %11, align 2, !dbg !5917
  %conv7 = zext i16 %12 to i32, !dbg !5917
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda1004x_read_snr, i64 0, i64 0), i32 %conv7) #9, !dbg !5917
  br label %if.end9, !dbg !5917

if.end9:                                          ; preds = %if.then6, %do.body4
  br label %do.end10, !dbg !5920

do.end10:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !5921
  br label %return, !dbg !5921

return:                                           ; preds = %do.end10, %if.then2
  %13 = load i32, i32* %retval, align 4, !dbg !5922
  ret i32 %13, !dbg !5922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5923 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %counter = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5924, metadata !DIExpression()), !dbg !5925
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !5928, metadata !DIExpression()), !dbg !5929
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5930
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5931
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5931
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !5930
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !5929
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5932, metadata !DIExpression()), !dbg !5933
  call void @llvm.dbg.declare(metadata i32* %tmp2, metadata !5934, metadata !DIExpression()), !dbg !5935
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !5936, metadata !DIExpression()), !dbg !5937
  br label %do.body, !dbg !5938

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5939
  %tobool = icmp ne i32 %3, 0, !dbg !5939
  br i1 %tobool, label %if.then, label %if.end, !dbg !5942

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda1004x_read_ucblocks, i64 0, i64 0)) #9, !dbg !5939
  br label %if.end, !dbg !5939

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5942

do.end:                                           ; preds = %if.end
  store i32 0, i32* %counter, align 4, !dbg !5943
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5944
  %call1 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %4, i32 39) #8, !dbg !5945
  store i32 %call1, i32* %tmp, align 4, !dbg !5946
  %5 = load i32, i32* %tmp, align 4, !dbg !5947
  %cmp = icmp slt i32 %5, 0, !dbg !5949
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5950

if.then2:                                         ; preds = %do.end
  store i32 -5, i32* %retval, align 4, !dbg !5951
  br label %return, !dbg !5951

if.end3:                                          ; preds = %do.end
  %6 = load i32, i32* %tmp, align 4, !dbg !5952
  %and = and i32 %6, 127, !dbg !5952
  store i32 %and, i32* %tmp, align 4, !dbg !5952
  br label %while.cond, !dbg !5953

while.cond:                                       ; preds = %if.end16, %if.end3
  %7 = load i32, i32* %counter, align 4, !dbg !5954
  %inc = add i32 %7, 1, !dbg !5954
  store i32 %inc, i32* %counter, align 4, !dbg !5954
  %cmp4 = icmp slt i32 %7, 5, !dbg !5955
  br i1 %cmp4, label %while.body, label %while.end, !dbg !5953

while.body:                                       ; preds = %while.cond
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5956
  %call5 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %8, i32 39, i32 128, i32 0) #8, !dbg !5958
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5959
  %call6 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %9, i32 39, i32 128, i32 0) #8, !dbg !5960
  %10 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5961
  %call7 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %10, i32 39, i32 128, i32 0) #8, !dbg !5962
  %11 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !5963
  %call8 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %11, i32 39) #8, !dbg !5964
  store i32 %call8, i32* %tmp2, align 4, !dbg !5965
  %12 = load i32, i32* %tmp2, align 4, !dbg !5966
  %cmp9 = icmp slt i32 %12, 0, !dbg !5968
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5969

if.then10:                                        ; preds = %while.body
  store i32 -5, i32* %retval, align 4, !dbg !5970
  br label %return, !dbg !5970

if.end11:                                         ; preds = %while.body
  %13 = load i32, i32* %tmp2, align 4, !dbg !5971
  %and12 = and i32 %13, 127, !dbg !5971
  store i32 %and12, i32* %tmp2, align 4, !dbg !5971
  %14 = load i32, i32* %tmp2, align 4, !dbg !5972
  %15 = load i32, i32* %tmp, align 4, !dbg !5974
  %cmp13 = icmp slt i32 %14, %15, !dbg !5975
  br i1 %cmp13, label %if.then15, label %lor.lhs.false, !dbg !5976

lor.lhs.false:                                    ; preds = %if.end11
  %16 = load i32, i32* %tmp2, align 4, !dbg !5977
  %cmp14 = icmp eq i32 %16, 0, !dbg !5978
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !5979

if.then15:                                        ; preds = %lor.lhs.false, %if.end11
  br label %while.end, !dbg !5980

if.end16:                                         ; preds = %lor.lhs.false
  br label %while.cond, !dbg !5953, !llvm.loop !5981

while.end:                                        ; preds = %if.then15, %while.cond
  %17 = load i32, i32* %tmp, align 4, !dbg !5983
  %cmp17 = icmp ne i32 %17, 127, !dbg !5985
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !5986

if.then18:                                        ; preds = %while.end
  %18 = load i32, i32* %tmp, align 4, !dbg !5987
  %19 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5988
  store i32 %18, i32* %19, align 4, !dbg !5989
  br label %if.end19, !dbg !5990

if.else:                                          ; preds = %while.end
  %20 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5991
  store i32 -1, i32* %20, align 4, !dbg !5992
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  br label %do.body20, !dbg !5993

do.body20:                                        ; preds = %if.end19
  %21 = load i32, i32* @debug, align 4, !dbg !5994
  %tobool21 = icmp ne i32 %21, 0, !dbg !5994
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !5997

if.then22:                                        ; preds = %do.body20
  %22 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5994
  %23 = load i32, i32* %22, align 4, !dbg !5994
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tda1004x_read_ucblocks, i64 0, i64 0), i32 %23) #9, !dbg !5994
  br label %if.end24, !dbg !5994

if.end24:                                         ; preds = %if.then22, %do.body20
  br label %do.end25, !dbg !5997

do.end25:                                         ; preds = %if.end24
  store i32 0, i32* %retval, align 4, !dbg !5998
  br label %return, !dbg !5998

return:                                           ; preds = %do.end25, %if.then10, %if.then2
  %24 = load i32, i32* %retval, align 4, !dbg !5999
  ret i32 %24, !dbg !5999
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !6000 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.tda1004x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !6003, metadata !DIExpression()), !dbg !6004
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !6005, metadata !DIExpression()), !dbg !6006
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6007
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6008
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6008
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !6007
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !6006
  %3 = load i32, i32* %enable.addr, align 4, !dbg !6009
  %tobool = icmp ne i32 %3, 0, !dbg !6009
  br i1 %tobool, label %if.then, label %if.else, !dbg !6011

if.then:                                          ; preds = %entry
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6012
  %call = call i32 @tda1004x_enable_tuner_i2c(%struct.tda1004x_state* %4) #8, !dbg !6014
  store i32 %call, i32* %retval, align 4, !dbg !6015
  br label %return, !dbg !6015

if.else:                                          ; preds = %entry
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6016
  %call1 = call i32 @tda1004x_disable_tuner_i2c(%struct.tda1004x_state* %5) #8, !dbg !6018
  store i32 %call1, i32* %retval, align 4, !dbg !6019
  br label %return, !dbg !6019

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !6020
  ret i32 %6, !dbg !6020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10045_fwupload(%struct.dvb_frontend* %fe) #0 !dbg !6021 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %ret = alloca i32, align 4
  %fw = alloca %struct.firmware*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !6024, metadata !DIExpression()), !dbg !6025
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6026
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6027
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6027
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !6026
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !6025
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6028, metadata !DIExpression()), !dbg !6029
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !6030, metadata !DIExpression()), !dbg !6031
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6032
  %call = call i32 @tda1004x_check_upload_ok(%struct.tda1004x_state* %3) #8, !dbg !6034
  %cmp = icmp eq i32 %call, 0, !dbg !6035
  br i1 %cmp, label %if.then, label %if.end, !dbg !6036

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6037
  br label %return, !dbg !6037

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !6038
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6039
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %4, i32 0, i32 1, !dbg !6040
  %5 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !6040
  %request_firmware = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %5, i32 0, i32 11, !dbg !6041
  %6 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)** %request_firmware, align 8, !dbg !6041
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6042
  %call2 = call i32 %6(%struct.dvb_frontend* %7, %struct.firmware** %fw, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !6039
  store i32 %call2, i32* %ret, align 4, !dbg !6043
  %8 = load i32, i32* %ret, align 4, !dbg !6044
  %tobool = icmp ne i32 %8, 0, !dbg !6044
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !6046

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !6047
  %9 = load i32, i32* %ret, align 4, !dbg !6049
  store i32 %9, i32* %retval, align 4, !dbg !6050
  br label %return, !dbg !6050

if.end5:                                          ; preds = %if.end
  %10 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6051
  %call6 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %10, i32 7, i32 16, i32 0) #8, !dbg !6052
  %11 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6053
  %call7 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %11, i32 7, i32 8, i32 8) #8, !dbg !6054
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6055
  %call8 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %12, i32 7, i32 8, i32 0) #8, !dbg !6056
  call void @msleep(i32 10) #8, !dbg !6057
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6058
  %call9 = call i32 @tda10045h_set_bandwidth(%struct.tda1004x_state* %13, i32 8000000) #8, !dbg !6059
  %14 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6060
  %15 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6061
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 1, !dbg !6062
  %16 = load i8*, i8** %data, align 8, !dbg !6062
  %17 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6063
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %17, i32 0, i32 0, !dbg !6064
  %18 = load i64, i64* %size, align 8, !dbg !6064
  %conv = trunc i64 %18 to i32, !dbg !6063
  %call10 = call i32 @tda1004x_do_upload(%struct.tda1004x_state* %14, i8* %16, i32 %conv, i8 zeroext 14, i8 zeroext 13) #8, !dbg !6065
  store i32 %call10, i32* %ret, align 4, !dbg !6066
  %19 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6067
  call void @release_firmware(%struct.firmware* %19) #8, !dbg !6068
  %20 = load i32, i32* %ret, align 4, !dbg !6069
  %tobool11 = icmp ne i32 %20, 0, !dbg !6069
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6071

if.then12:                                        ; preds = %if.end5
  %21 = load i32, i32* %ret, align 4, !dbg !6072
  store i32 %21, i32* %retval, align 4, !dbg !6073
  br label %return, !dbg !6073

if.end13:                                         ; preds = %if.end5
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !6074
  call void @msleep(i32 100) #8, !dbg !6075
  %22 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6076
  %call15 = call i32 @tda1004x_check_upload_ok(%struct.tda1004x_state* %22) #8, !dbg !6077
  store i32 %call15, i32* %retval, align 4, !dbg !6078
  br label %return, !dbg !6078

return:                                           ; preds = %if.end13, %if.then12, %if.then3, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !6079
  ret i32 %23, !dbg !6079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_write_mask(%struct.tda1004x_state* %state, i32 %reg, i32 %mask, i32 %data) #0 !dbg !6080 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !6085, metadata !DIExpression()), !dbg !6086
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !6087, metadata !DIExpression()), !dbg !6088
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6091, metadata !DIExpression()), !dbg !6092
  br label %do.body, !dbg !6093

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6094
  %tobool = icmp ne i32 %0, 0, !dbg !6094
  br i1 %tobool, label %if.then, label %if.end, !dbg !6097

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %reg.addr, align 4, !dbg !6094
  %2 = load i32, i32* %mask.addr, align 4, !dbg !6094
  %3 = load i32, i32* %data.addr, align 4, !dbg !6094
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tda1004x_write_mask, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #9, !dbg !6094
  br label %if.end, !dbg !6094

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6097

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6098
  %5 = load i32, i32* %reg.addr, align 4, !dbg !6099
  %call1 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %4, i32 %5) #8, !dbg !6100
  store i32 %call1, i32* %val, align 4, !dbg !6101
  %6 = load i32, i32* %val, align 4, !dbg !6102
  %cmp = icmp slt i32 %6, 0, !dbg !6104
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6105

if.then2:                                         ; preds = %do.end
  %7 = load i32, i32* %val, align 4, !dbg !6106
  store i32 %7, i32* %retval, align 4, !dbg !6107
  br label %return, !dbg !6107

if.end3:                                          ; preds = %do.end
  %8 = load i32, i32* %val, align 4, !dbg !6108
  %9 = load i32, i32* %mask.addr, align 4, !dbg !6109
  %neg = xor i32 %9, -1, !dbg !6110
  %and = and i32 %8, %neg, !dbg !6111
  store i32 %and, i32* %val, align 4, !dbg !6112
  %10 = load i32, i32* %data.addr, align 4, !dbg !6113
  %and4 = and i32 %10, 255, !dbg !6114
  %11 = load i32, i32* %val, align 4, !dbg !6115
  %or = or i32 %11, %and4, !dbg !6115
  store i32 %or, i32* %val, align 4, !dbg !6115
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6116
  %13 = load i32, i32* %reg.addr, align 4, !dbg !6117
  %14 = load i32, i32* %val, align 4, !dbg !6118
  %call5 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %12, i32 %13, i32 %14) #8, !dbg !6119
  store i32 %call5, i32* %retval, align 4, !dbg !6120
  br label %return, !dbg !6120

return:                                           ; preds = %if.end3, %if.then2
  %15 = load i32, i32* %retval, align 4, !dbg !6121
  ret i32 %15, !dbg !6121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_write_byteI(%struct.tda1004x_state* %state, i32 %reg, i32 %data) #0 !dbg !6122 {
entry:
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %reg.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6125, metadata !DIExpression()), !dbg !6126
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !6127, metadata !DIExpression()), !dbg !6128
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6131, metadata !DIExpression()), !dbg !6132
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !6133, metadata !DIExpression()), !dbg !6135
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6136
  %0 = load i32, i32* %reg.addr, align 4, !dbg !6137
  %conv = trunc i32 %0 to i8, !dbg !6137
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !6136
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !6136
  %1 = load i32, i32* %data.addr, align 4, !dbg !6138
  %conv1 = trunc i32 %1 to i8, !dbg !6138
  store i8 %conv1, i8* %arrayinit.element, align 1, !dbg !6136
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6139, metadata !DIExpression()), !dbg !6140
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6141
  store i16 0, i16* %addr, align 8, !dbg !6141
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6141
  store i16 0, i16* %flags, align 2, !dbg !6141
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6141
  store i16 2, i16* %len, align 4, !dbg !6141
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6141
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6142
  store i8* %arraydecay, i8** %buf2, align 8, !dbg !6141
  br label %do.body, !dbg !6143

do.body:                                          ; preds = %entry
  %2 = load i32, i32* @debug, align 4, !dbg !6144
  %tobool = icmp ne i32 %2, 0, !dbg !6144
  br i1 %tobool, label %if.then, label %if.end, !dbg !6147

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %reg.addr, align 4, !dbg !6144
  %4 = load i32, i32* %data.addr, align 4, !dbg !6144
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda1004x_write_byteI, i64 0, i64 0), i32 %3, i32 %4) #9, !dbg !6144
  br label %if.end, !dbg !6144

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6147

do.end:                                           ; preds = %if.end
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6148
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %5, i32 0, i32 1, !dbg !6149
  %6 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !6149
  %demod_address = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %6, i32 0, i32 0, !dbg !6150
  %7 = load i8, i8* %demod_address, align 8, !dbg !6150
  %conv3 = zext i8 %7 to i16, !dbg !6148
  %addr4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6151
  store i16 %conv3, i16* %addr4, align 8, !dbg !6152
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6153
  %i2c = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %8, i32 0, i32 0, !dbg !6154
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6154
  %call5 = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %msg, i32 1) #8, !dbg !6155
  store i32 %call5, i32* %ret, align 4, !dbg !6156
  %10 = load i32, i32* %ret, align 4, !dbg !6157
  %cmp = icmp ne i32 %10, 1, !dbg !6159
  br i1 %cmp, label %if.then7, label %if.end14, !dbg !6160

if.then7:                                         ; preds = %do.end
  br label %do.body8, !dbg !6161

do.body8:                                         ; preds = %if.then7
  %11 = load i32, i32* @debug, align 4, !dbg !6162
  %tobool9 = icmp ne i32 %11, 0, !dbg !6162
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !6165

if.then10:                                        ; preds = %do.body8
  %12 = load i32, i32* %reg.addr, align 4, !dbg !6162
  %13 = load i32, i32* %data.addr, align 4, !dbg !6162
  %14 = load i32, i32* %ret, align 4, !dbg !6162
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda1004x_write_byteI, i64 0, i64 0), i32 %12, i32 %13, i32 %14) #9, !dbg !6162
  br label %if.end12, !dbg !6162

if.end12:                                         ; preds = %if.then10, %do.body8
  br label %do.end13, !dbg !6165

do.end13:                                         ; preds = %if.end12
  br label %if.end14, !dbg !6165

if.end14:                                         ; preds = %do.end13, %do.end
  br label %do.body15, !dbg !6166

do.body15:                                        ; preds = %if.end14
  %15 = load i32, i32* @debug, align 4, !dbg !6167
  %tobool16 = icmp ne i32 %15, 0, !dbg !6167
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !6170

if.then17:                                        ; preds = %do.body15
  %16 = load i32, i32* %reg.addr, align 4, !dbg !6167
  %17 = load i32, i32* %data.addr, align 4, !dbg !6167
  %18 = load i32, i32* %ret, align 4, !dbg !6167
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tda1004x_write_byteI, i64 0, i64 0), i32 %16, i32 %17, i32 %18) #9, !dbg !6167
  br label %if.end19, !dbg !6167

if.end19:                                         ; preds = %if.then17, %do.body15
  br label %do.end20, !dbg !6170

do.end20:                                         ; preds = %if.end19
  %19 = load i32, i32* %ret, align 4, !dbg !6171
  %cmp21 = icmp ne i32 %19, 1, !dbg !6172
  %20 = zext i1 %cmp21 to i64, !dbg !6173
  %cond = select i1 %cmp21, i32 -1, i32 0, !dbg !6173
  ret i32 %cond, !dbg !6174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_check_upload_ok(%struct.tda1004x_state* %state) #0 !dbg !6175 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %data1 = alloca i8, align 1
  %data2 = alloca i8, align 1
  %timeout = alloca i64, align 8
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6178, metadata !DIExpression()), !dbg !6179
  call void @llvm.dbg.declare(metadata i8* %data1, metadata !6180, metadata !DIExpression()), !dbg !6181
  call void @llvm.dbg.declare(metadata i8* %data2, metadata !6182, metadata !DIExpression()), !dbg !6183
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !6184, metadata !DIExpression()), !dbg !6185
  %0 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6186
  %demod_type = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %0, i32 0, i32 3, !dbg !6188
  %1 = load i32, i32* %demod_type, align 8, !dbg !6188
  %cmp = icmp eq i32 %1, 1, !dbg !6189
  br i1 %cmp, label %if.then, label %if.else, !dbg !6190

if.then:                                          ; preds = %entry
  %2 = load volatile i64, i64* @jiffies, align 8, !dbg !6191
  %add = add i64 %2, 500, !dbg !6193
  store i64 %add, i64* %timeout, align 8, !dbg !6194
  br label %while.cond, !dbg !6195

while.cond:                                       ; preds = %if.end, %if.then
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6196
  %call = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %3, i32 6) #8, !dbg !6197
  %and = and i32 %call, 32, !dbg !6198
  %tobool = icmp ne i32 %and, 0, !dbg !6199
  %lnot = xor i1 %tobool, true, !dbg !6199
  br i1 %lnot, label %while.body, label %while.end, !dbg !6195

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %timeout, align 8, !dbg !6200
  %5 = load volatile i64, i64* @jiffies, align 8, !dbg !6200
  %sub = sub i64 %4, %5, !dbg !6200
  %cmp1 = icmp slt i64 %sub, 0, !dbg !6200
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !6203

if.then2:                                         ; preds = %while.body
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !6204
  br label %while.end, !dbg !6206

if.end:                                           ; preds = %while.body
  call void @msleep(i32 1) #8, !dbg !6207
  br label %while.cond, !dbg !6195, !llvm.loop !6208

while.end:                                        ; preds = %if.then2, %while.cond
  br label %if.end4, !dbg !6210

if.else:                                          ; preds = %entry
  call void @msleep(i32 100) #8, !dbg !6211
  br label %if.end4

if.end4:                                          ; preds = %if.else, %while.end
  %6 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6212
  %call5 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %6, i32 7, i32 16, i32 0) #8, !dbg !6213
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6214
  %call6 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %7, i32 17, i32 103) #8, !dbg !6215
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6216
  %call7 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %8, i32 19) #8, !dbg !6217
  %conv = trunc i32 %call7 to i8, !dbg !6217
  store i8 %conv, i8* %data1, align 1, !dbg !6218
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6219
  %call8 = call i32 @tda1004x_read_byte(%struct.tda1004x_state* %9, i32 20) #8, !dbg !6220
  %conv9 = trunc i32 %call8 to i8, !dbg !6220
  store i8 %conv9, i8* %data2, align 1, !dbg !6221
  %10 = load i8, i8* %data1, align 1, !dbg !6222
  %conv10 = zext i8 %10 to i32, !dbg !6222
  %cmp11 = icmp ne i32 %conv10, 103, !dbg !6224
  br i1 %cmp11, label %if.then20, label %lor.lhs.false, !dbg !6225

lor.lhs.false:                                    ; preds = %if.end4
  %11 = load i8, i8* %data2, align 1, !dbg !6226
  %conv13 = zext i8 %11 to i32, !dbg !6226
  %cmp14 = icmp slt i32 %conv13, 32, !dbg !6227
  br i1 %cmp14, label %if.then20, label %lor.lhs.false16, !dbg !6228

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %12 = load i8, i8* %data2, align 1, !dbg !6229
  %conv17 = zext i8 %12 to i32, !dbg !6229
  %cmp18 = icmp sgt i32 %conv17, 46, !dbg !6230
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !6231

if.then20:                                        ; preds = %lor.lhs.false16, %lor.lhs.false, %if.end4
  %13 = load i8, i8* %data2, align 1, !dbg !6232
  %conv21 = zext i8 %13 to i32, !dbg !6232
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0), i32 %conv21) #9, !dbg !6234
  store i32 -5, i32* %retval, align 4, !dbg !6235
  br label %return, !dbg !6235

if.end23:                                         ; preds = %lor.lhs.false16
  %14 = load i8, i8* %data2, align 1, !dbg !6236
  %conv24 = zext i8 %14 to i32, !dbg !6236
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i32 %conv24) #9, !dbg !6237
  store i32 0, i32* %retval, align 4, !dbg !6238
  br label %return, !dbg !6238

return:                                           ; preds = %if.end23, %if.then20
  %15 = load i32, i32* %retval, align 4, !dbg !6239
  ret i32 %15, !dbg !6239
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10045h_set_bandwidth(%struct.tda1004x_state* %state, i32 %bandwidth) #0 !dbg !438 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %bandwidth.addr = alloca i32, align 4
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  store i32 %bandwidth, i32* %bandwidth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bandwidth.addr, metadata !6242, metadata !DIExpression()), !dbg !6243
  %0 = load i32, i32* %bandwidth.addr, align 4, !dbg !6244
  switch i32 %0, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb1
    i32 8000000, label %sw.bb3
  ], !dbg !6245

sw.bb:                                            ; preds = %entry
  %1 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6246
  %call = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %1, i32 45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tda10045h_set_bandwidth.bandwidth_6mhz, i64 0, i64 0), i32 9) #8, !dbg !6248
  br label %sw.epilog, !dbg !6249

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6250
  %call2 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %2, i32 45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tda10045h_set_bandwidth.bandwidth_7mhz, i64 0, i64 0), i32 9) #8, !dbg !6251
  br label %sw.epilog, !dbg !6252

sw.bb3:                                           ; preds = %entry
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6253
  %call4 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %3, i32 45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tda10045h_set_bandwidth.bandwidth_8mhz, i64 0, i64 0), i32 9) #8, !dbg !6254
  br label %sw.epilog, !dbg !6255

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6256
  br label %return, !dbg !6256

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb
  %4 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6257
  %call5 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %4, i32 56, i32 0) #8, !dbg !6258
  store i32 0, i32* %retval, align 4, !dbg !6259
  br label %return, !dbg !6259

return:                                           ; preds = %sw.epilog, %sw.default
  %5 = load i32, i32* %retval, align 4, !dbg !6260
  ret i32 %5, !dbg !6260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_do_upload(%struct.tda1004x_state* %state, i8* %mem, i32 %len, i8 zeroext %dspCodeCounterReg, i8 zeroext %dspCodeInReg) #0 !dbg !6261 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %mem.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %dspCodeCounterReg.addr = alloca i8, align 1
  %dspCodeInReg.addr = alloca i8, align 1
  %buf = alloca [65 x i8], align 16
  %fw_msg = alloca %struct.i2c_msg, align 8
  %tx_size = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6264, metadata !DIExpression()), !dbg !6265
  store i8* %mem, i8** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mem.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  store i8 %dspCodeCounterReg, i8* %dspCodeCounterReg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %dspCodeCounterReg.addr, metadata !6270, metadata !DIExpression()), !dbg !6271
  store i8 %dspCodeInReg, i8* %dspCodeInReg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %dspCodeInReg.addr, metadata !6272, metadata !DIExpression()), !dbg !6273
  call void @llvm.dbg.declare(metadata [65 x i8]* %buf, metadata !6274, metadata !DIExpression()), !dbg !6278
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %fw_msg, metadata !6279, metadata !DIExpression()), !dbg !6280
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %fw_msg, i32 0, i32 0, !dbg !6281
  store i16 0, i16* %addr, align 8, !dbg !6281
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %fw_msg, i32 0, i32 1, !dbg !6281
  store i16 0, i16* %flags, align 2, !dbg !6281
  %len1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %fw_msg, i32 0, i32 2, !dbg !6281
  store i16 0, i16* %len1, align 4, !dbg !6281
  %buf2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %fw_msg, i32 0, i32 3, !dbg !6281
  %arraydecay = getelementptr inbounds [65 x i8], [65 x i8]* %buf, i64 0, i64 0, !dbg !6282
  store i8* %arraydecay, i8** %buf2, align 8, !dbg !6281
  call void @llvm.dbg.declare(metadata i32* %tx_size, metadata !6283, metadata !DIExpression()), !dbg !6284
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !6285, metadata !DIExpression()), !dbg !6286
  store i32 0, i32* %pos, align 4, !dbg !6286
  %0 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6287
  %1 = load i8, i8* %dspCodeCounterReg.addr, align 1, !dbg !6288
  %conv = zext i8 %1 to i32, !dbg !6288
  %call = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %0, i32 %conv, i32 0) #8, !dbg !6289
  %2 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6290
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %2, i32 0, i32 1, !dbg !6291
  %3 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !6291
  %demod_address = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %3, i32 0, i32 0, !dbg !6292
  %4 = load i8, i8* %demod_address, align 8, !dbg !6292
  %conv3 = zext i8 %4 to i16, !dbg !6290
  %addr4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %fw_msg, i32 0, i32 0, !dbg !6293
  store i16 %conv3, i16* %addr4, align 8, !dbg !6294
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6295
  %i2c = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %5, i32 0, i32 0, !dbg !6296
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6296
  call void @i2c_lock_bus(%struct.i2c_adapter* %6, i32 2) #8, !dbg !6297
  %7 = load i8, i8* %dspCodeInReg.addr, align 1, !dbg !6298
  %arrayidx = getelementptr [65 x i8], [65 x i8]* %buf, i64 0, i64 0, !dbg !6299
  store i8 %7, i8* %arrayidx, align 16, !dbg !6300
  br label %while.cond, !dbg !6301

while.cond:                                       ; preds = %do.end, %entry
  %8 = load i32, i32* %pos, align 4, !dbg !6302
  %9 = load i32, i32* %len.addr, align 4, !dbg !6303
  %cmp = icmp ne i32 %8, %9, !dbg !6304
  br i1 %cmp, label %while.body, label %while.end, !dbg !6301

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %len.addr, align 4, !dbg !6305
  %11 = load i32, i32* %pos, align 4, !dbg !6307
  %sub = sub i32 %10, %11, !dbg !6308
  store i32 %sub, i32* %tx_size, align 4, !dbg !6309
  %12 = load i32, i32* %tx_size, align 4, !dbg !6310
  %cmp6 = icmp sgt i32 %12, 16, !dbg !6312
  br i1 %cmp6, label %if.then, label %if.end, !dbg !6313

if.then:                                          ; preds = %while.body
  store i32 16, i32* %tx_size, align 4, !dbg !6314
  br label %if.end, !dbg !6315

if.end:                                           ; preds = %if.then, %while.body
  %arraydecay8 = getelementptr inbounds [65 x i8], [65 x i8]* %buf, i64 0, i64 0, !dbg !6316
  %add.ptr = getelementptr i8, i8* %arraydecay8, i64 1, !dbg !6317
  %13 = load i8*, i8** %mem.addr, align 8, !dbg !6318
  %14 = load i32, i32* %pos, align 4, !dbg !6319
  %idx.ext = sext i32 %14 to i64, !dbg !6320
  %add.ptr9 = getelementptr i8, i8* %13, i64 %idx.ext, !dbg !6320
  %15 = load i32, i32* %tx_size, align 4, !dbg !6321
  %conv10 = sext i32 %15 to i64, !dbg !6321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %add.ptr9, i64 %conv10, i1 false), !dbg !6322
  %16 = load i32, i32* %tx_size, align 4, !dbg !6323
  %add = add i32 %16, 1, !dbg !6324
  %conv11 = trunc i32 %add to i16, !dbg !6323
  %len12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %fw_msg, i32 0, i32 2, !dbg !6325
  store i16 %conv11, i16* %len12, align 4, !dbg !6326
  %17 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6327
  %i2c13 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %17, i32 0, i32 0, !dbg !6329
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c13, align 8, !dbg !6329
  %call14 = call i32 @__i2c_transfer(%struct.i2c_adapter* %18, %struct.i2c_msg* %fw_msg, i32 1) #8, !dbg !6330
  %cmp15 = icmp ne i32 %call14, 1, !dbg !6331
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !6332

if.then17:                                        ; preds = %if.end
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !6333
  %19 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6335
  %i2c19 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %19, i32 0, i32 0, !dbg !6336
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c19, align 8, !dbg !6336
  call void @i2c_unlock_bus(%struct.i2c_adapter* %20, i32 2) #8, !dbg !6337
  store i32 -5, i32* %retval, align 4, !dbg !6338
  br label %return, !dbg !6338

if.end20:                                         ; preds = %if.end
  %21 = load i32, i32* %tx_size, align 4, !dbg !6339
  %22 = load i32, i32* %pos, align 4, !dbg !6340
  %add21 = add i32 %22, %21, !dbg !6340
  store i32 %add21, i32* %pos, align 4, !dbg !6340
  br label %do.body, !dbg !6341

do.body:                                          ; preds = %if.end20
  %23 = load i32, i32* @debug, align 4, !dbg !6342
  %tobool = icmp ne i32 %23, 0, !dbg !6342
  br i1 %tobool, label %if.then22, label %if.end24, !dbg !6345

if.then22:                                        ; preds = %do.body
  %24 = load i32, i32* %pos, align 4, !dbg !6342
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda1004x_do_upload, i64 0, i64 0), i32 %24) #9, !dbg !6342
  br label %if.end24, !dbg !6342

if.end24:                                         ; preds = %if.then22, %do.body
  br label %do.end, !dbg !6345

do.end:                                           ; preds = %if.end24
  br label %while.cond, !dbg !6301, !llvm.loop !6346

while.end:                                        ; preds = %while.cond
  %25 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6348
  %i2c25 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %25, i32 0, i32 0, !dbg !6349
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c25, align 8, !dbg !6349
  call void @i2c_unlock_bus(%struct.i2c_adapter* %26, i32 2) #8, !dbg !6350
  call void @msleep(i32 100) #8, !dbg !6351
  store i32 0, i32* %retval, align 4, !dbg !6352
  br label %return, !dbg !6352

return:                                           ; preds = %while.end, %if.then17
  %27 = load i32, i32* %retval, align 4, !dbg !6353
  ret i32 %27, !dbg !6353
}

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_write_buf(%struct.tda1004x_state* %state, i32 %reg, i8* %buf, i32 %len) #0 !dbg !6354 {
entry:
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %reg.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !6360, metadata !DIExpression()), !dbg !6361
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6362, metadata !DIExpression()), !dbg !6363
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6364, metadata !DIExpression()), !dbg !6365
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6366, metadata !DIExpression()), !dbg !6367
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6368, metadata !DIExpression()), !dbg !6369
  br label %do.body, !dbg !6370

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6371
  %tobool = icmp ne i32 %0, 0, !dbg !6371
  br i1 %tobool, label %if.then, label %if.end, !dbg !6374

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %reg.addr, align 4, !dbg !6371
  %2 = load i32, i32* %len.addr, align 4, !dbg !6371
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda1004x_write_buf, i64 0, i64 0), i32 %1, i32 %2) #9, !dbg !6371
  br label %if.end, !dbg !6371

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6374

do.end:                                           ; preds = %if.end
  store i32 0, i32* %result, align 4, !dbg !6375
  store i32 0, i32* %i, align 4, !dbg !6376
  br label %for.cond, !dbg !6378

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load i32, i32* %i, align 4, !dbg !6379
  %4 = load i32, i32* %len.addr, align 4, !dbg !6381
  %cmp = icmp slt i32 %3, %4, !dbg !6382
  br i1 %cmp, label %for.body, label %for.end, !dbg !6383

for.body:                                         ; preds = %for.cond
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6384
  %6 = load i32, i32* %reg.addr, align 4, !dbg !6386
  %7 = load i32, i32* %i, align 4, !dbg !6387
  %add = add i32 %6, %7, !dbg !6388
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !6389
  %9 = load i32, i32* %i, align 4, !dbg !6390
  %idxprom = sext i32 %9 to i64, !dbg !6389
  %arrayidx = getelementptr i8, i8* %8, i64 %idxprom, !dbg !6389
  %10 = load i8, i8* %arrayidx, align 1, !dbg !6389
  %conv = zext i8 %10 to i32, !dbg !6389
  %call1 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %5, i32 %add, i32 %conv) #8, !dbg !6391
  store i32 %call1, i32* %result, align 4, !dbg !6392
  %11 = load i32, i32* %result, align 4, !dbg !6393
  %cmp2 = icmp ne i32 %11, 0, !dbg !6395
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6396

if.then4:                                         ; preds = %for.body
  br label %for.end, !dbg !6397

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !6398

for.inc:                                          ; preds = %if.end5
  %12 = load i32, i32* %i, align 4, !dbg !6399
  %inc = add i32 %12, 1, !dbg !6399
  store i32 %inc, i32* %i, align 4, !dbg !6399
  br label %for.cond, !dbg !6400, !llvm.loop !6401

for.end:                                          ; preds = %if.then4, %for.cond
  %13 = load i32, i32* %result, align 4, !dbg !6403
  ret i32 %13, !dbg !6404
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !6405 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !6406, metadata !DIExpression()), !dbg !6407
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6408, metadata !DIExpression()), !dbg !6409
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !6410
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !6411
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !6411
  %lock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 0, !dbg !6412
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %lock_bus, align 8, !dbg !6412
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !6413
  %4 = load i32, i32* %flags.addr, align 4, !dbg !6414
  call void %2(%struct.i2c_adapter* %3, i32 %4) #8, !dbg !6410
  ret void, !dbg !6415
}

; Function Attrs: noredzone
declare dso_local i32 @__i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !6416 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6419, metadata !DIExpression()), !dbg !6420
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !6421
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !6422
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !6422
  %unlock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 2, !dbg !6423
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %unlock_bus, align 8, !dbg !6423
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !6424
  %4 = load i32, i32* %flags.addr, align 4, !dbg !6425
  call void %2(%struct.i2c_adapter* %3, i32 %4) #8, !dbg !6421
  ret void, !dbg !6426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_encode_fec(i32 %fec) #0 !dbg !6427 {
entry:
  %retval = alloca i32, align 4
  %fec.addr = alloca i32, align 4
  store i32 %fec, i32* %fec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fec.addr, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load i32, i32* %fec.addr, align 4, !dbg !6430
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 5, label %sw.bb3
    i32 7, label %sw.bb4
  ], !dbg !6431

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6432
  br label %return, !dbg !6432

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !6434
  br label %return, !dbg !6434

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %retval, align 4, !dbg !6435
  br label %return, !dbg !6435

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4, !dbg !6436
  br label %return, !dbg !6436

sw.bb4:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !6437
  br label %return, !dbg !6437

sw.epilog:                                        ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6438
  br label %return, !dbg !6438

return:                                           ; preds = %sw.epilog, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !6439
  ret i32 %1, !dbg !6439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10046h_set_bandwidth(%struct.tda1004x_state* %state, i32 %bandwidth) #0 !dbg !4500 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %bandwidth.addr = alloca i32, align 4
  %tda10046_clk53m = alloca i32, align 4
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6440, metadata !DIExpression()), !dbg !6441
  store i32 %bandwidth, i32* %bandwidth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bandwidth.addr, metadata !6442, metadata !DIExpression()), !dbg !6443
  call void @llvm.dbg.declare(metadata i32* %tda10046_clk53m, metadata !6444, metadata !DIExpression()), !dbg !6445
  %0 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6446
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %0, i32 0, i32 1, !dbg !6448
  %1 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !6448
  %if_freq = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %1, i32 0, i32 5, !dbg !6449
  %2 = load i32, i32* %if_freq, align 4, !dbg !6449
  %cmp = icmp eq i32 %2, 2, !dbg !6450
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6451

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6452
  %config1 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %3, i32 0, i32 1, !dbg !6453
  %4 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config1, align 8, !dbg !6453
  %if_freq2 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %4, i32 0, i32 5, !dbg !6454
  %5 = load i32, i32* %if_freq2, align 4, !dbg !6454
  %cmp3 = icmp eq i32 %5, 3, !dbg !6455
  br i1 %cmp3, label %if.then, label %if.else, !dbg !6456

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %tda10046_clk53m, align 4, !dbg !6457
  br label %if.end, !dbg !6458

if.else:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %tda10046_clk53m, align 4, !dbg !6459
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %bandwidth.addr, align 4, !dbg !6460
  switch i32 %6, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb15
    i32 8000000, label %sw.bb29
  ], !dbg !6461

sw.bb:                                            ; preds = %if.end
  %7 = load i32, i32* %tda10046_clk53m, align 4, !dbg !6462
  %tobool = icmp ne i32 %7, 0, !dbg !6462
  br i1 %tobool, label %if.then4, label %if.else5, !dbg !6465

if.then4:                                         ; preds = %sw.bb
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6466
  %call = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %8, i32 49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tda10046h_set_bandwidth.bandwidth_6mhz_53M, i64 0, i64 0), i32 5) #8, !dbg !6467
  br label %if.end7, !dbg !6467

if.else5:                                         ; preds = %sw.bb
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6468
  %call6 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %9, i32 49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tda10046h_set_bandwidth.bandwidth_6mhz_48M, i64 0, i64 0), i32 5) #8, !dbg !6469
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then4
  %10 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6470
  %config8 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %10, i32 0, i32 1, !dbg !6472
  %11 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config8, align 8, !dbg !6472
  %if_freq9 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %11, i32 0, i32 5, !dbg !6473
  %12 = load i32, i32* %if_freq9, align 4, !dbg !6473
  %cmp10 = icmp eq i32 %12, 2, !dbg !6474
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !6475

if.then11:                                        ; preds = %if.end7
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6476
  %call12 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %13, i32 77, i32 10) #8, !dbg !6478
  %14 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6479
  %call13 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %14, i32 78, i32 171) #8, !dbg !6480
  br label %if.end14, !dbg !6481

if.end14:                                         ; preds = %if.then11, %if.end7
  br label %sw.epilog, !dbg !6482

sw.bb15:                                          ; preds = %if.end
  %15 = load i32, i32* %tda10046_clk53m, align 4, !dbg !6483
  %tobool16 = icmp ne i32 %15, 0, !dbg !6483
  br i1 %tobool16, label %if.then17, label %if.else19, !dbg !6485

if.then17:                                        ; preds = %sw.bb15
  %16 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6486
  %call18 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %16, i32 49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tda10046h_set_bandwidth.bandwidth_7mhz_53M, i64 0, i64 0), i32 5) #8, !dbg !6487
  br label %if.end21, !dbg !6487

if.else19:                                        ; preds = %sw.bb15
  %17 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6488
  %call20 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %17, i32 49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tda10046h_set_bandwidth.bandwidth_7mhz_48M, i64 0, i64 0), i32 5) #8, !dbg !6489
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %18 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6490
  %config22 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %18, i32 0, i32 1, !dbg !6492
  %19 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config22, align 8, !dbg !6492
  %if_freq23 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %19, i32 0, i32 5, !dbg !6493
  %20 = load i32, i32* %if_freq23, align 4, !dbg !6493
  %cmp24 = icmp eq i32 %20, 2, !dbg !6494
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !6495

if.then25:                                        ; preds = %if.end21
  %21 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6496
  %call26 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %21, i32 77, i32 12) #8, !dbg !6498
  %22 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6499
  %call27 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %22, i32 78, i32 0) #8, !dbg !6500
  br label %if.end28, !dbg !6501

if.end28:                                         ; preds = %if.then25, %if.end21
  br label %sw.epilog, !dbg !6502

sw.bb29:                                          ; preds = %if.end
  %23 = load i32, i32* %tda10046_clk53m, align 4, !dbg !6503
  %tobool30 = icmp ne i32 %23, 0, !dbg !6503
  br i1 %tobool30, label %if.then31, label %if.else33, !dbg !6505

if.then31:                                        ; preds = %sw.bb29
  %24 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6506
  %call32 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %24, i32 49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tda10046h_set_bandwidth.bandwidth_8mhz_53M, i64 0, i64 0), i32 5) #8, !dbg !6507
  br label %if.end35, !dbg !6507

if.else33:                                        ; preds = %sw.bb29
  %25 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6508
  %call34 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %25, i32 49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @tda10046h_set_bandwidth.bandwidth_8mhz_48M, i64 0, i64 0), i32 5) #8, !dbg !6509
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then31
  %26 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6510
  %config36 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %26, i32 0, i32 1, !dbg !6512
  %27 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config36, align 8, !dbg !6512
  %if_freq37 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %27, i32 0, i32 5, !dbg !6513
  %28 = load i32, i32* %if_freq37, align 4, !dbg !6513
  %cmp38 = icmp eq i32 %28, 2, !dbg !6514
  br i1 %cmp38, label %if.then39, label %if.end42, !dbg !6515

if.then39:                                        ; preds = %if.end35
  %29 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6516
  %call40 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %29, i32 77, i32 13) #8, !dbg !6518
  %30 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6519
  %call41 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %30, i32 78, i32 85) #8, !dbg !6520
  br label %if.end42, !dbg !6521

if.end42:                                         ; preds = %if.then39, %if.end35
  br label %sw.epilog, !dbg !6522

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !6523
  br label %return, !dbg !6523

sw.epilog:                                        ; preds = %if.end42, %if.end28, %if.end14
  store i32 0, i32* %retval, align 4, !dbg !6524
  br label %return, !dbg !6524

return:                                           ; preds = %sw.epilog, %sw.default
  %31 = load i32, i32* %retval, align 4, !dbg !6525
  ret i32 %31, !dbg !6525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_decode_fec(i32 %tdafec) #0 !dbg !6526 {
entry:
  %retval = alloca i32, align 4
  %tdafec.addr = alloca i32, align 4
  store i32 %tdafec, i32* %tdafec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tdafec.addr, metadata !6527, metadata !DIExpression()), !dbg !6528
  %0 = load i32, i32* %tdafec.addr, align 4, !dbg !6529
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !6530

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !6531
  br label %return, !dbg !6531

sw.bb1:                                           ; preds = %entry
  store i32 2, i32* %retval, align 4, !dbg !6533
  br label %return, !dbg !6533

sw.bb2:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4, !dbg !6534
  br label %return, !dbg !6534

sw.bb3:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4, !dbg !6535
  br label %return, !dbg !6535

sw.bb4:                                           ; preds = %entry
  store i32 7, i32* %retval, align 4, !dbg !6536
  br label %return, !dbg !6536

sw.epilog:                                        ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !6537
  br label %return, !dbg !6537

return:                                           ; preds = %sw.epilog, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !6538
  ret i32 %1, !dbg !6538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_enable_tuner_i2c(%struct.tda1004x_state* %state) #0 !dbg !6539 {
entry:
  %state.addr = alloca %struct.tda1004x_state*, align 8
  %result = alloca i32, align 4
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6540, metadata !DIExpression()), !dbg !6541
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6542, metadata !DIExpression()), !dbg !6543
  br label %do.body, !dbg !6544

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6545
  %tobool = icmp ne i32 %0, 0, !dbg !6545
  br i1 %tobool, label %if.then, label %if.end, !dbg !6548

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tda1004x_enable_tuner_i2c, i64 0, i64 0)) #9, !dbg !6545
  br label %if.end, !dbg !6545

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6548

do.end:                                           ; preds = %if.end
  %1 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6549
  %call1 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %1, i32 7, i32 2, i32 2) #8, !dbg !6550
  store i32 %call1, i32* %result, align 4, !dbg !6551
  call void @msleep(i32 20) #8, !dbg !6552
  %2 = load i32, i32* %result, align 4, !dbg !6553
  ret i32 %2, !dbg !6554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda1004x_disable_tuner_i2c(%struct.tda1004x_state* %state) #0 !dbg !6555 {
entry:
  %state.addr = alloca %struct.tda1004x_state*, align 8
  store %struct.tda1004x_state* %state, %struct.tda1004x_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state.addr, metadata !6556, metadata !DIExpression()), !dbg !6557
  br label %do.body, !dbg !6558

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6559
  %tobool = icmp ne i32 %0, 0, !dbg !6559
  br i1 %tobool, label %if.then, label %if.end, !dbg !6562

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tda1004x_disable_tuner_i2c, i64 0, i64 0)) #9, !dbg !6559
  br label %if.end, !dbg !6559

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6562

do.end:                                           ; preds = %if.end
  %1 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state.addr, align 8, !dbg !6563
  %call1 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %1, i32 7, i32 2, i32 0) #8, !dbg !6564
  ret i32 %call1, !dbg !6565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10046_init(%struct.dvb_frontend* %fe) #0 !dbg !6566 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6567, metadata !DIExpression()), !dbg !6568
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !6569, metadata !DIExpression()), !dbg !6570
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6571
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6572
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6572
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !6571
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !6570
  br label %do.body, !dbg !6573

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6574
  %tobool = icmp ne i32 %3, 0, !dbg !6574
  br i1 %tobool, label %if.then, label %if.end, !dbg !6577

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.tda10046_init, i64 0, i64 0)) #9, !dbg !6574
  br label %if.end, !dbg !6574

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6577

do.end:                                           ; preds = %if.end
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6578
  %call1 = call i32 @tda10046_fwupload(%struct.dvb_frontend* %4) #8, !dbg !6580
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6580
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6581

if.then3:                                         ; preds = %do.end
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !6582
  store i32 -5, i32* %retval, align 4, !dbg !6584
  br label %return, !dbg !6584

if.end5:                                          ; preds = %do.end
  %5 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6585
  %call6 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %5, i32 7, i32 32, i32 0) #8, !dbg !6586
  %6 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6587
  %call7 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %6, i32 1, i32 135) #8, !dbg !6588
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6589
  %call8 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %7, i32 22, i32 136) #8, !dbg !6590
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6591
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %8, i32 0, i32 1, !dbg !6592
  %9 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !6592
  %agc_config = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %9, i32 0, i32 6, !dbg !6593
  %10 = load i32, i32* %agc_config, align 8, !dbg !6593
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
    i32 3, label %sw.bb17
  ], !dbg !6594

sw.bb:                                            ; preds = %if.end5
  %11 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6595
  %call9 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %11, i32 67, i32 0) #8, !dbg !6597
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6598
  %call10 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %12, i32 61, i32 240, i32 96) #8, !dbg !6599
  br label %sw.epilog, !dbg !6600

sw.bb11:                                          ; preds = %if.end5
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6601
  %call12 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %13, i32 67, i32 10) #8, !dbg !6602
  %14 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6603
  %call13 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %14, i32 61, i32 240, i32 96) #8, !dbg !6604
  br label %sw.epilog, !dbg !6605

sw.bb14:                                          ; preds = %if.end5
  %15 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6606
  %call15 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %15, i32 67, i32 10) #8, !dbg !6607
  %16 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6608
  %call16 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %16, i32 61, i32 240, i32 0) #8, !dbg !6609
  br label %sw.epilog, !dbg !6610

sw.bb17:                                          ; preds = %if.end5
  %17 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6611
  %call18 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %17, i32 67, i32 2) #8, !dbg !6612
  %18 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6613
  %call19 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %18, i32 68, i32 112) #8, !dbg !6614
  %19 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6615
  %call20 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %19, i32 69, i32 8) #8, !dbg !6616
  %20 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6617
  %call21 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %20, i32 61, i32 240, i32 96) #8, !dbg !6618
  br label %sw.epilog, !dbg !6619

sw.epilog:                                        ; preds = %if.end5, %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb
  %21 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6620
  %config22 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %21, i32 0, i32 1, !dbg !6622
  %22 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config22, align 8, !dbg !6622
  %ts_mode = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %22, i32 0, i32 3, !dbg !6623
  %23 = load i32, i32* %ts_mode, align 4, !dbg !6623
  %cmp = icmp eq i32 %23, 0, !dbg !6624
  br i1 %cmp, label %if.then23, label %if.else, !dbg !6625

if.then23:                                        ; preds = %sw.epilog
  %24 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6626
  %call24 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %24, i32 59, i32 192, i32 64) #8, !dbg !6628
  %25 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6629
  %26 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6630
  %config25 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %26, i32 0, i32 1, !dbg !6631
  %27 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config25, align 8, !dbg !6631
  %invert_oclk = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %27, i32 0, i32 2, !dbg !6632
  %28 = load i8, i8* %invert_oclk, align 2, !dbg !6632
  %conv = zext i8 %28 to i32, !dbg !6630
  %shl = shl i32 %conv, 7, !dbg !6633
  %call26 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %25, i32 58, i32 128, i32 %shl) #8, !dbg !6634
  br label %if.end33, !dbg !6635

if.else:                                          ; preds = %sw.epilog
  %29 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6636
  %call27 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %29, i32 59, i32 192, i32 128) #8, !dbg !6638
  %30 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6639
  %31 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6640
  %config28 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %31, i32 0, i32 1, !dbg !6641
  %32 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config28, align 8, !dbg !6641
  %invert_oclk29 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %32, i32 0, i32 2, !dbg !6642
  %33 = load i8, i8* %invert_oclk29, align 2, !dbg !6642
  %conv30 = zext i8 %33 to i32, !dbg !6640
  %shl31 = shl i32 %conv30, 4, !dbg !6643
  %call32 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %30, i32 61, i32 16, i32 %shl31) #8, !dbg !6644
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then23
  %34 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6645
  %call34 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %34, i32 55, i32 56) #8, !dbg !6646
  %35 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6647
  %call35 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %35, i32 59, i32 62, i32 56) #8, !dbg !6648
  %36 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6649
  %call36 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %36, i32 71, i32 0) #8, !dbg !6650
  %37 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6651
  %call37 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %37, i32 72, i32 255) #8, !dbg !6652
  %38 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6653
  %call38 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %38, i32 73, i32 0) #8, !dbg !6654
  %39 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6655
  %call39 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %39, i32 74, i32 255) #8, !dbg !6656
  %40 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6657
  %call40 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %40, i32 70, i32 18) #8, !dbg !6658
  %41 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6659
  %call41 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %41, i32 79, i32 26) #8, !dbg !6660
  %42 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6661
  %call42 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %42, i32 30, i32 7) #8, !dbg !6662
  %43 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6663
  %call43 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %43, i32 31, i32 192) #8, !dbg !6664
  store i32 0, i32* %retval, align 4, !dbg !6665
  br label %return, !dbg !6665

return:                                           ; preds = %if.end33, %if.then3
  %44 = load i32, i32* %retval, align 4, !dbg !6666
  ret i32 %44, !dbg !6666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda10046_fwupload(%struct.dvb_frontend* %fe) #0 !dbg !6667 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %ret = alloca i32, align 4
  %confc4 = alloca i32, align 4
  %fw = alloca %struct.firmware*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6668, metadata !DIExpression()), !dbg !6669
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !6670, metadata !DIExpression()), !dbg !6671
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6672
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6673
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6673
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !6672
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !6671
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6674, metadata !DIExpression()), !dbg !6675
  call void @llvm.dbg.declare(metadata i32* %confc4, metadata !6676, metadata !DIExpression()), !dbg !6677
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !6678, metadata !DIExpression()), !dbg !6679
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6680
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %3, i32 0, i32 1, !dbg !6682
  %4 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !6682
  %xtal_freq = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %4, i32 0, i32 4, !dbg !6683
  %5 = load i32, i32* %xtal_freq, align 8, !dbg !6683
  %cmp = icmp eq i32 %5, 0, !dbg !6684
  br i1 %cmp, label %if.then, label %if.else, !dbg !6685

if.then:                                          ; preds = %entry
  store i32 0, i32* %confc4, align 4, !dbg !6686
  br label %if.end2, !dbg !6688

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !6689

do.body:                                          ; preds = %if.else
  %6 = load i32, i32* @debug, align 4, !dbg !6691
  %tobool = icmp ne i32 %6, 0, !dbg !6691
  br i1 %tobool, label %if.then1, label %if.end, !dbg !6694

if.then1:                                         ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tda10046_fwupload, i64 0, i64 0)) #9, !dbg !6691
  br label %if.end, !dbg !6691

if.end:                                           ; preds = %if.then1, %do.body
  br label %do.end, !dbg !6694

do.end:                                           ; preds = %if.end
  store i32 128, i32* %confc4, align 4, !dbg !6695
  br label %if.end2

if.end2:                                          ; preds = %do.end, %if.then
  %7 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6696
  %8 = load i32, i32* %confc4, align 4, !dbg !6697
  %call3 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %7, i32 7, i32 %8) #8, !dbg !6698
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6699
  %call4 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %9, i32 59, i32 1, i32 0) #8, !dbg !6700
  %10 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6701
  %config5 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %10, i32 0, i32 1, !dbg !6703
  %11 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config5, align 8, !dbg !6703
  %gpio_config = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %11, i32 0, i32 7, !dbg !6704
  %12 = load i32, i32* %gpio_config, align 4, !dbg !6704
  %cmp6 = icmp ne i32 %12, 0, !dbg !6705
  br i1 %cmp6, label %if.then7, label %if.end12, !dbg !6706

if.then7:                                         ; preds = %if.end2
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6707
  %call8 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %13, i32 60, i32 51) #8, !dbg !6709
  %14 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6710
  %15 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6711
  %config9 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %15, i32 0, i32 1, !dbg !6712
  %16 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config9, align 8, !dbg !6712
  %gpio_config10 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %16, i32 0, i32 7, !dbg !6713
  %17 = load i32, i32* %gpio_config10, align 4, !dbg !6713
  %and = and i32 %17, 15, !dbg !6714
  %call11 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %14, i32 61, i32 15, i32 %and) #8, !dbg !6715
  br label %if.end12, !dbg !6716

if.end12:                                         ; preds = %if.then7, %if.end2
  call void @msleep(i32 10) #8, !dbg !6717
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6718
  call void @tda10046_init_plls(%struct.dvb_frontend* %18) #8, !dbg !6719
  %19 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6720
  %call13 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %19, i32 55, i32 192, i32 0) #8, !dbg !6721
  %20 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6722
  %call14 = call i32 @tda1004x_check_upload_ok(%struct.tda1004x_state* %20) #8, !dbg !6724
  %cmp15 = icmp eq i32 %call14, 0, !dbg !6725
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6726

if.then16:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !6727
  br label %return, !dbg !6727

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !6728
  %21 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6729
  %call19 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %21, i32 7, i32 4) #8, !dbg !6730
  call void @msleep(i32 300) #8, !dbg !6731
  %22 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6732
  %23 = load i32, i32* %confc4, align 4, !dbg !6733
  %call20 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %22, i32 7, i32 %23) #8, !dbg !6734
  %24 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6735
  %call21 = call i32 @tda1004x_check_upload_ok(%struct.tda1004x_state* %24) #8, !dbg !6737
  %cmp22 = icmp eq i32 %call21, 0, !dbg !6738
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !6739

if.then23:                                        ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !6740
  br label %return, !dbg !6740

if.end24:                                         ; preds = %if.end17
  %25 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6741
  %config25 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %25, i32 0, i32 1, !dbg !6743
  %26 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config25, align 8, !dbg !6743
  %request_firmware = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %26, i32 0, i32 11, !dbg !6744
  %27 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)** %request_firmware, align 8, !dbg !6744
  %cmp26 = icmp ne i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)* %27, null, !dbg !6745
  br i1 %cmp26, label %if.then27, label %if.else44, !dbg !6746

if.then27:                                        ; preds = %if.end24
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !6747
  %28 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6749
  %config29 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %28, i32 0, i32 1, !dbg !6750
  %29 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config29, align 8, !dbg !6750
  %request_firmware30 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %29, i32 0, i32 11, !dbg !6751
  %30 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)** %request_firmware30, align 8, !dbg !6751
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6752
  %call31 = call i32 %30(%struct.dvb_frontend* %31, %struct.firmware** %fw, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !6749
  store i32 %call31, i32* %ret, align 4, !dbg !6753
  %32 = load i32, i32* %ret, align 4, !dbg !6754
  %tobool32 = icmp ne i32 %32, 0, !dbg !6754
  br i1 %tobool32, label %if.then33, label %if.end43, !dbg !6756

if.then33:                                        ; preds = %if.then27
  %33 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6757
  %config34 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %33, i32 0, i32 1, !dbg !6759
  %34 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config34, align 8, !dbg !6759
  %request_firmware35 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %34, i32 0, i32 11, !dbg !6760
  %35 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i8*)** %request_firmware35, align 8, !dbg !6760
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6761
  %call36 = call i32 %35(%struct.dvb_frontend* %36, %struct.firmware** %fw, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !6757
  store i32 %call36, i32* %ret, align 4, !dbg !6762
  %37 = load i32, i32* %ret, align 4, !dbg !6763
  %tobool37 = icmp ne i32 %37, 0, !dbg !6763
  br i1 %tobool37, label %if.then38, label %if.else40, !dbg !6765

if.then38:                                        ; preds = %if.then33
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !6766
  %38 = load i32, i32* %ret, align 4, !dbg !6768
  store i32 %38, i32* %retval, align 4, !dbg !6769
  br label %return, !dbg !6769

if.else40:                                        ; preds = %if.then33
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !6770
  br label %if.end42

if.end42:                                         ; preds = %if.else40
  br label %if.end43, !dbg !6772

if.end43:                                         ; preds = %if.end42, %if.then27
  br label %if.end46, !dbg !6773

if.else44:                                        ; preds = %if.end24
  %call45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !6774
  store i32 -5, i32* %retval, align 4, !dbg !6776
  br label %return, !dbg !6776

if.end46:                                         ; preds = %if.end43
  %39 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6777
  %call47 = call i32 @tda1004x_write_mask(%struct.tda1004x_state* %39, i32 7, i32 8, i32 8) #8, !dbg !6778
  %40 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6779
  %41 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6780
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1, !dbg !6781
  %42 = load i8*, i8** %data, align 8, !dbg !6781
  %43 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6782
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0, !dbg !6783
  %44 = load i64, i64* %size, align 8, !dbg !6783
  %conv = trunc i64 %44 to i32, !dbg !6782
  %call48 = call i32 @tda1004x_do_upload(%struct.tda1004x_state* %40, i8* %42, i32 %conv, i8 zeroext 87, i8 zeroext 88) #8, !dbg !6784
  store i32 %call48, i32* %ret, align 4, !dbg !6785
  %45 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !6786
  call void @release_firmware(%struct.firmware* %45) #8, !dbg !6787
  %46 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6788
  %call49 = call i32 @tda1004x_check_upload_ok(%struct.tda1004x_state* %46) #8, !dbg !6789
  store i32 %call49, i32* %retval, align 4, !dbg !6790
  br label %return, !dbg !6790

return:                                           ; preds = %if.end46, %if.else44, %if.then38, %if.then23, %if.then16
  %47 = load i32, i32* %retval, align 4, !dbg !6791
  ret i32 %47, !dbg !6791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda10046_init_plls(%struct.dvb_frontend* %fe) #0 !dbg !6792 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.tda1004x_state*, align 8
  %tda10046_clk53m = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6793, metadata !DIExpression()), !dbg !6794
  call void @llvm.dbg.declare(metadata %struct.tda1004x_state** %state, metadata !6795, metadata !DIExpression()), !dbg !6796
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6797
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6798
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6798
  %2 = bitcast i8* %1 to %struct.tda1004x_state*, !dbg !6797
  store %struct.tda1004x_state* %2, %struct.tda1004x_state** %state, align 8, !dbg !6796
  call void @llvm.dbg.declare(metadata i32* %tda10046_clk53m, metadata !6799, metadata !DIExpression()), !dbg !6800
  %3 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6801
  %config = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %3, i32 0, i32 1, !dbg !6803
  %4 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config, align 8, !dbg !6803
  %if_freq = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %4, i32 0, i32 5, !dbg !6804
  %5 = load i32, i32* %if_freq, align 4, !dbg !6804
  %cmp = icmp eq i32 %5, 2, !dbg !6805
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6806

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6807
  %config1 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %6, i32 0, i32 1, !dbg !6808
  %7 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config1, align 8, !dbg !6808
  %if_freq2 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %7, i32 0, i32 5, !dbg !6809
  %8 = load i32, i32* %if_freq2, align 4, !dbg !6809
  %cmp3 = icmp eq i32 %8, 3, !dbg !6810
  br i1 %cmp3, label %if.then, label %if.else, !dbg !6811

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %tda10046_clk53m, align 4, !dbg !6812
  br label %if.end, !dbg !6813

if.else:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %tda10046_clk53m, align 4, !dbg !6814
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6815
  %call = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %9, i32 45, i32 240) #8, !dbg !6816
  %10 = load i32, i32* %tda10046_clk53m, align 4, !dbg !6817
  %tobool = icmp ne i32 %10, 0, !dbg !6817
  br i1 %tobool, label %if.then4, label %if.else7, !dbg !6819

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !6820
  %11 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6822
  %call6 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %11, i32 47, i32 8) #8, !dbg !6823
  br label %if.end10, !dbg !6824

if.else7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !6825
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6827
  %call9 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %12, i32 47, i32 3) #8, !dbg !6828
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.then4
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6829
  %config11 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %13, i32 0, i32 1, !dbg !6831
  %14 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config11, align 8, !dbg !6831
  %xtal_freq = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %14, i32 0, i32 4, !dbg !6832
  %15 = load i32, i32* %xtal_freq, align 8, !dbg !6832
  %cmp12 = icmp eq i32 %15, 0, !dbg !6833
  br i1 %cmp12, label %if.then13, label %if.else19, !dbg !6834

if.then13:                                        ; preds = %if.end10
  br label %do.body, !dbg !6835

do.body:                                          ; preds = %if.then13
  %16 = load i32, i32* @debug, align 4, !dbg !6837
  %tobool14 = icmp ne i32 %16, 0, !dbg !6837
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !6840

if.then15:                                        ; preds = %do.body
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda10046_init_plls, i64 0, i64 0)) #9, !dbg !6837
  br label %if.end17, !dbg !6837

if.end17:                                         ; preds = %if.then15, %do.body
  br label %do.end, !dbg !6840

do.end:                                           ; preds = %if.end17
  %17 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6841
  %call18 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %17, i32 48, i32 0) #8, !dbg !6842
  br label %if.end27, !dbg !6843

if.else19:                                        ; preds = %if.end10
  br label %do.body20, !dbg !6844

do.body20:                                        ; preds = %if.else19
  %18 = load i32, i32* @debug, align 4, !dbg !6846
  %tobool21 = icmp ne i32 %18, 0, !dbg !6846
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !6849

if.then22:                                        ; preds = %do.body20
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tda10046_init_plls, i64 0, i64 0)) #9, !dbg !6846
  br label %if.end24, !dbg !6846

if.end24:                                         ; preds = %if.then22, %do.body20
  br label %do.end25, !dbg !6849

do.end25:                                         ; preds = %if.end24
  %19 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6850
  %call26 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %19, i32 48, i32 3) #8, !dbg !6851
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %do.end
  %20 = load i32, i32* %tda10046_clk53m, align 4, !dbg !6852
  %tobool28 = icmp ne i32 %20, 0, !dbg !6852
  br i1 %tobool28, label %if.then29, label %if.else31, !dbg !6854

if.then29:                                        ; preds = %if.end27
  %21 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6855
  %call30 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %21, i32 62, i32 103) #8, !dbg !6856
  br label %if.end33, !dbg !6856

if.else31:                                        ; preds = %if.end27
  %22 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6857
  %call32 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %22, i32 62, i32 114) #8, !dbg !6858
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then29
  %23 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6859
  %config34 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %23, i32 0, i32 1, !dbg !6860
  %24 = load %struct.tda1004x_config*, %struct.tda1004x_config** %config34, align 8, !dbg !6860
  %if_freq35 = getelementptr inbounds %struct.tda1004x_config, %struct.tda1004x_config* %24, i32 0, i32 5, !dbg !6861
  %25 = load i32, i32* %if_freq35, align 4, !dbg !6861
  switch i32 %25, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb38
    i32 0, label %sw.bb41
    i32 1, label %sw.bb44
  ], !dbg !6862

sw.bb:                                            ; preds = %if.end33
  %26 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6863
  %call36 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %26, i32 77, i32 12) #8, !dbg !6865
  %27 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6866
  %call37 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %27, i32 78, i32 0) #8, !dbg !6867
  br label %sw.epilog, !dbg !6868

sw.bb38:                                          ; preds = %if.end33
  %28 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6869
  %call39 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %28, i32 77, i32 13) #8, !dbg !6870
  %29 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6871
  %call40 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %29, i32 78, i32 199) #8, !dbg !6872
  br label %sw.epilog, !dbg !6873

sw.bb41:                                          ; preds = %if.end33
  %30 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6874
  %call42 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %30, i32 77, i32 215) #8, !dbg !6875
  %31 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6876
  %call43 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %31, i32 78, i32 89) #8, !dbg !6877
  br label %sw.epilog, !dbg !6878

sw.bb44:                                          ; preds = %if.end33
  %32 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6879
  %call45 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %32, i32 77, i32 215) #8, !dbg !6880
  %33 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6881
  %call46 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %33, i32 78, i32 63) #8, !dbg !6882
  br label %sw.epilog, !dbg !6883

sw.epilog:                                        ; preds = %if.end33, %sw.bb44, %sw.bb41, %sw.bb38, %sw.bb
  %34 = load %struct.tda1004x_state*, %struct.tda1004x_state** %state, align 8, !dbg !6884
  %call47 = call i32 @tda10046h_set_bandwidth(%struct.tda1004x_state* %34, i32 8000000) #8, !dbg !6885
  call void @msleep(i32 120) #8, !dbg !6886
  ret void, !dbg !6887
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
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
!llvm.module.flags = !{!4522, !4523, !4524, !4525}
!llvm.ident = !{!4526}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tda10045_ops", scope: !2, file: !3, line: 1235, type: !4516, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !326, globals: !331, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/tda1004x.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !288, !292, !298, !304, !315, !319}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda10046_tsout", file: !284, line: 51, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/dvb-frontends/tda1004x.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287}
!286 = !DIEnumerator(name: "TDA10046_TS_PARALLEL", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "TDA10046_TS_SERIAL", value: 1, isUnsigned: true)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda10046_xtal", file: !284, line: 16, baseType: !7, size: 32, elements: !289)
!289 = !{!290, !291}
!290 = !DIEnumerator(name: "TDA10046_XTAL_4M", value: 0, isUnsigned: true)
!291 = !DIEnumerator(name: "TDA10046_XTAL_16M", value: 1, isUnsigned: true)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda10046_if", file: !284, line: 44, baseType: !7, size: 32, elements: !293)
!293 = !{!294, !295, !296, !297}
!294 = !DIEnumerator(name: "TDA10046_FREQ_3617", value: 0, isUnsigned: true)
!295 = !DIEnumerator(name: "TDA10046_FREQ_3613", value: 1, isUnsigned: true)
!296 = !DIEnumerator(name: "TDA10046_FREQ_045", value: 2, isUnsigned: true)
!297 = !DIEnumerator(name: "TDA10046_FREQ_052", value: 3, isUnsigned: true)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda10046_agc", file: !284, line: 21, baseType: !7, size: 32, elements: !299)
!299 = !{!300, !301, !302, !303}
!300 = !DIEnumerator(name: "TDA10046_AGC_DEFAULT", value: 0, isUnsigned: true)
!301 = !DIEnumerator(name: "TDA10046_AGC_IFO_AUTO_NEG", value: 1, isUnsigned: true)
!302 = !DIEnumerator(name: "TDA10046_AGC_IFO_AUTO_POS", value: 2, isUnsigned: true)
!303 = !DIEnumerator(name: "TDA10046_AGC_TDA827X", value: 3, isUnsigned: true)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda10046_gpio", file: !284, line: 32, baseType: !7, size: 32, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314}
!306 = !DIEnumerator(name: "TDA10046_GPTRI", value: 0, isUnsigned: true)
!307 = !DIEnumerator(name: "TDA10046_GP00", value: 64, isUnsigned: true)
!308 = !DIEnumerator(name: "TDA10046_GP01", value: 66, isUnsigned: true)
!309 = !DIEnumerator(name: "TDA10046_GP10", value: 72, isUnsigned: true)
!310 = !DIEnumerator(name: "TDA10046_GP11", value: 74, isUnsigned: true)
!311 = !DIEnumerator(name: "TDA10046_GP00_I", value: 128, isUnsigned: true)
!312 = !DIEnumerator(name: "TDA10046_GP01_I", value: 130, isUnsigned: true)
!313 = !DIEnumerator(name: "TDA10046_GP10_I", value: 136, isUnsigned: true)
!314 = !DIEnumerator(name: "TDA10046_GP11_I", value: 138, isUnsigned: true)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda1004x_demod", file: !284, line: 93, baseType: !7, size: 32, elements: !316)
!316 = !{!317, !318}
!317 = !DIEnumerator(name: "TDA1004X_DEMOD_TDA10045", value: 0, isUnsigned: true)
!318 = !DIEnumerator(name: "TDA1004X_DEMOD_TDA10046", value: 1, isUnsigned: true)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !320, line: 305, baseType: !7, size: 32, elements: !321)
!320 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !323, !324, !325}
!322 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!323 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!324 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!325 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!326 = !{!327, !329, !330}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !328, line: 148, baseType: !7)
!328 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!330 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!331 = !{!332, !404, !409, !414, !419, !424, !429, !434, !0, !436, !4494, !4496, !4498, !4504, !4506, !4508, !4510, !4512, !4514, !4517}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 1374, type: !334, isLocal: true, isDefinition: true, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !336, line: 69, size: 320, elements: !337)
!336 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !342, !346, !367, !374, !378, !382}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !336, line: 70, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !335, file: !336, line: 71, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !345, line: 76, flags: DIFlagFwdDecl)
!345 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !335, file: !336, line: 72, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !336, line: 47, size: 256, elements: !350)
!350 = !{!351, !352, !358, !363}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !336, line: 49, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !349, file: !336, line: 51, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !339, !357}
!356 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !349, file: !336, line: 53, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!356, !362, !357}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !349, file: !336, line: 55, baseType: !364, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !329}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !335, file: !336, line: 73, baseType: !368, size: 16, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !370, line: 19, baseType: !371)
!370 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !372, line: 24, baseType: !373)
!372 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!373 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !335, file: !336, line: 74, baseType: !375, size: 8, offset: 208)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !370, line: 16, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !372, line: 20, baseType: !377)
!377 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !336, line: 75, baseType: !379, size: 8, offset: 216)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !370, line: 17, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !372, line: 21, baseType: !381)
!381 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !336, line: 76, baseType: !383, size: 64, offset: 256)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !336, line: 76, size: 64, elements: !384)
!384 = !{!385, !386, !393}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !383, file: !336, line: 77, baseType: !329, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !383, file: !336, line: 78, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !336, line: 86, size: 128, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !389, file: !336, line: 87, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !389, file: !336, line: 88, baseType: !362, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !383, file: !336, line: 79, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !336, line: 92, size: 256, elements: !397)
!397 = !{!398, !399, !400, !402, !403}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !396, file: !336, line: 94, baseType: !7, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !396, file: !336, line: 95, baseType: !7, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !396, file: !336, line: 96, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !396, file: !336, line: 97, baseType: !347, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !396, file: !336, line: 98, baseType: !329, size: 64, offset: 192)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 1374, type: !406, isLocal: true, isDefinition: true, align: 8)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 224, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 28)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 1375, type: !411, isLocal: true, isDefinition: true, align: 8)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 528, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 66)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 1377, type: !416, isLocal: true, isDefinition: true, align: 8)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 552, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 69)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 1378, type: !421, isLocal: true, isDefinition: true, align: 8)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 432, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 54)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 1379, type: !426, isLocal: true, isDefinition: true, align: 8)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 408, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 51)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 1379, type: !431, isLocal: true, isDefinition: true, align: 8)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 168, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 21)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 29, type: !356, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "bandwidth_6mhz", scope: !438, file: !3, line: 216, type: !4493, isLocal: true, isDefinition: true)
!438 = distinct !DISubprogram(name: "tda10045h_set_bandwidth", scope: !3, file: !3, line: 213, type: !439, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!439 = !DISubroutineType(types: !440)
!440 = !{!356, !441, !488}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda1004x_state", file: !284, line: 98, size: 10432, elements: !443)
!443 = !{!444, !4142, !4491, !4492}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !442, file: !284, line: 99, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !447, line: 695, size: 7552, elements: !448)
!447 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449, !450, !451, !490, !491, !505, !3535, !3536, !3537, !3538, !4089, !4090, !4091, !4095, !4096, !4097, !4098, !4130, !4141}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !446, file: !447, line: 696, baseType: !343, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !446, file: !447, line: 697, baseType: !7, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !446, file: !447, line: 698, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !447, line: 519, size: 320, elements: !455)
!455 = !{!456, !469, !470, !483, !484}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !454, file: !447, line: 529, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!356, !445, !460, !356}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !462, line: 69, size: 128, elements: !463)
!462 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !465, !466, !467}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !461, file: !462, line: 70, baseType: !371, size: 16)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !462, line: 71, baseType: !371, size: 16, offset: 16)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !461, file: !462, line: 84, baseType: !371, size: 16, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !461, file: !462, line: 85, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !454, file: !447, line: 531, baseType: !457, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !454, file: !447, line: 533, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!356, !445, !369, !373, !341, !379, !356, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !462, line: 135, size: 272, elements: !476)
!476 = !{!477, !478, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !475, file: !462, line: 136, baseType: !380, size: 8)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !475, file: !462, line: 137, baseType: !371, size: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !475, file: !462, line: 138, baseType: !480, size: 272)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 272, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 34)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !454, file: !447, line: 536, baseType: !471, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !454, file: !447, line: 541, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !445}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !370, line: 21, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !372, line: 27, baseType: !7)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !446, file: !447, line: 699, baseType: !329, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !446, file: !447, line: 702, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !447, line: 557, size: 192, elements: !495)
!495 = !{!496, !500, !504}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !494, file: !447, line: 558, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !445, !7}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !494, file: !447, line: 559, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!356, !445, !7}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !494, file: !447, line: 560, baseType: !497, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !446, file: !447, line: 703, baseType: !506, size: 192, offset: 320)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !507, line: 30, size: 192, elements: !508)
!507 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!508 = !{!509, !519, !535}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !506, file: !507, line: 31, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !511, line: 29, baseType: !512)
!511 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !511, line: 20, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !512, file: !511, line: 21, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !516, line: 25, baseType: !517)
!516 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 25, elements: !518)
!518 = !{}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !506, file: !507, line: 32, baseType: !520, size: 128)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !521, line: 125, size: 128, elements: !522)
!521 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!522 = !{!523, !534}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !520, file: !521, line: 126, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !521, line: 31, size: 64, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !524, file: !521, line: 32, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !521, line: 24, size: 192, align: 64, elements: !529)
!529 = !{!530, !532, !533}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !528, file: !521, line: 25, baseType: !531, size: 64)
!531 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !528, file: !521, line: 26, baseType: !527, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !528, file: !521, line: 27, baseType: !527, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !520, file: !521, line: 127, baseType: !527, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !506, file: !507, line: 33, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !538, line: 640, size: 48640, elements: !539)
!538 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!539 = !{!540, !546, !548, !549, !559, !560, !561, !562, !563, !564, !565, !566, !570, !596, !607, !699, !700, !701, !712, !713, !715, !716, !2837, !2838, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2920, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2935, !2936, !2937, !2939, !2940, !2941, !2942, !2943, !2944, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2968, !2973, !2974, !2975, !2976, !2977, !2979, !2982, !2985, !2988, !2991, !2995, !3096, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3142, !3143, !3144, !3145, !3146, !3151, !3152, !3153, !3156, !3157, !3160, !3163, !3166, !3167, !3199, !3202, !3203, !3282, !3283, !3286, !3287, !3290, !3291, !3292, !3296, !3297, !3298, !3311, !3312, !3313, !3323, !3328, !3329, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !537, file: !538, line: 646, baseType: !541, size: 128)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !542, line: 56, size: 128, elements: !543)
!542 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !542, line: 57, baseType: !531, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !541, file: !542, line: 58, baseType: !488, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !537, file: !538, line: 649, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !330)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !537, file: !538, line: 657, baseType: !329, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !537, file: !538, line: 658, baseType: !550, size: 32, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !551, line: 113, baseType: !552)
!551 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !551, line: 111, size: 32, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !552, file: !551, line: 112, baseType: !555, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !328, line: 168, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 166, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !556, file: !328, line: 167, baseType: !356, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !538, line: 660, baseType: !7, size: 32, offset: 288)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !537, file: !538, line: 661, baseType: !7, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !537, file: !538, line: 684, baseType: !356, size: 32, offset: 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !537, file: !538, line: 686, baseType: !356, size: 32, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !537, file: !538, line: 687, baseType: !356, size: 32, offset: 416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !537, file: !538, line: 688, baseType: !356, size: 32, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !537, file: !538, line: 689, baseType: !7, size: 32, offset: 480)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !537, file: !538, line: 691, baseType: !567, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !538, line: 691, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !537, file: !538, line: 692, baseType: !571, size: 832, offset: 576)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !538, line: 451, size: 832, elements: !572)
!572 = !{!573, !578, !579, !585, !586, !590, !591, !592, !593, !594}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !571, file: !538, line: 453, baseType: !574, size: 128)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !538, line: 325, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !574, file: !538, line: 326, baseType: !531, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !574, file: !538, line: 327, baseType: !488, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !571, file: !538, line: 454, baseType: !528, size: 192, align: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !571, file: !538, line: 455, baseType: !580, size: 128, offset: 320)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !328, line: 178, size: 128, elements: !581)
!581 = !{!582, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !328, line: 179, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !580, file: !328, line: 179, baseType: !583, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !571, file: !538, line: 456, baseType: !7, size: 32, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !571, file: !538, line: 458, baseType: !587, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !370, line: 23, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !372, line: 31, baseType: !589)
!589 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !571, file: !538, line: 459, baseType: !587, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !571, file: !538, line: 460, baseType: !587, size: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !571, file: !538, line: 461, baseType: !587, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !571, file: !538, line: 463, baseType: !587, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !571, file: !538, line: 465, baseType: !595, offset: 832)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !538, line: 415, elements: !518)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !537, file: !538, line: 693, baseType: !597, size: 384, offset: 1408)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !538, line: 489, size: 384, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !597, file: !538, line: 490, baseType: !580, size: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !597, file: !538, line: 491, baseType: !531, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !597, file: !538, line: 492, baseType: !531, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !597, file: !538, line: 493, baseType: !7, size: 32, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !597, file: !538, line: 494, baseType: !373, size: 16, offset: 288)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !597, file: !538, line: 495, baseType: !373, size: 16, offset: 304)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !597, file: !538, line: 497, baseType: !606, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !537, file: !538, line: 697, baseType: !608, size: 1792, offset: 1792)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !538, line: 507, size: 1792, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !620, !621, !622, !623, !624, !625, !626, !696, !697}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !608, file: !538, line: 508, baseType: !528, size: 192, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !608, file: !538, line: 515, baseType: !587, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !608, file: !538, line: 516, baseType: !587, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !608, file: !538, line: 517, baseType: !587, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !608, file: !538, line: 518, baseType: !587, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !608, file: !538, line: 519, baseType: !587, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !608, file: !538, line: 526, baseType: !617, size: 64, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !370, line: 22, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !372, line: 30, baseType: !619)
!619 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !608, file: !538, line: 527, baseType: !587, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !538, line: 528, baseType: !7, size: 32, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !608, file: !538, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !608, file: !538, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !608, file: !538, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !608, file: !538, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !608, file: !538, line: 563, baseType: !627, size: 512, offset: 704)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !628)
!628 = !{!629, !637, !638, !643, !692, !693, !694, !695}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !191, line: 119, baseType: !630, size: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !631, line: 9, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !631, line: 10, baseType: !528, size: 192, align: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !630, file: !631, line: 11, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !636, line: 29, baseType: !617)
!636 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !627, file: !191, line: 120, baseType: !635, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !627, file: !191, line: 121, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!190, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !627, file: !191, line: 122, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !646)
!646 = !{!647, !667, !668, !672, !682, !683, !687, !691}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !645, file: !191, line: 160, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !649, file: !191, line: 215, baseType: !510)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !649, file: !191, line: 216, baseType: !7, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !649, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !649, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !649, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !649, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !649, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !649, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !649, file: !191, line: 233, baseType: !635, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !649, file: !191, line: 234, baseType: !642, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !649, file: !191, line: 235, baseType: !635, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !649, file: !191, line: 236, baseType: !642, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !649, file: !191, line: 237, baseType: !664, size: 4096, offset: 512)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 4096, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 8)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !645, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !645, file: !191, line: 162, baseType: !669, size: 32, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !328, line: 27, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !671, line: 96, baseType: !356)
!671 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !645, file: !191, line: 163, baseType: !673, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !674, line: 276, baseType: !675)
!674 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !674, line: 276, size: 32, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !675, file: !674, line: 276, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !674, line: 70, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !674, line: 65, size: 32, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !679, file: !674, line: 66, baseType: !7, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !645, file: !191, line: 164, baseType: !642, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !645, file: !191, line: 165, baseType: !684, size: 128, offset: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !631, line: 14, size: 128, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !684, file: !631, line: 15, baseType: !520, size: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !645, file: !191, line: 166, baseType: !688, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!635}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !645, file: !191, line: 167, baseType: !635, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !627, file: !191, line: 123, baseType: !379, size: 8, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !627, file: !191, line: 124, baseType: !379, size: 8, offset: 456)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !627, file: !191, line: 125, baseType: !379, size: 8, offset: 464)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !627, file: !191, line: 126, baseType: !379, size: 8, offset: 472)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !608, file: !538, line: 572, baseType: !627, size: 512, offset: 1216)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !608, file: !538, line: 580, baseType: !698, size: 64, offset: 1728)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !537, file: !538, line: 721, baseType: !7, size: 32, offset: 3584)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !537, file: !538, line: 722, baseType: !356, size: 32, offset: 3616)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !537, file: !538, line: 723, baseType: !702, size: 64, offset: 3648)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !705, line: 17, baseType: !706)
!705 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !705, line: 17, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !706, file: !705, line: 17, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 64, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 1)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !537, file: !538, line: 724, baseType: !704, size: 64, offset: 3712)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !537, file: !538, line: 749, baseType: !714, offset: 3776)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !538, line: 290, elements: !518)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !537, file: !538, line: 751, baseType: !580, size: 128, offset: 3776)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !537, file: !538, line: 757, baseType: !717, size: 64, offset: 3904)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !719, line: 388, size: 7296, elements: !720)
!719 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !2833}
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !719, line: 389, baseType: !722, size: 7296)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !719, line: 389, size: 7296, elements: !723)
!723 = !{!724, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2746, !2752, !2755, !2794, !2795, !2817, !2818, !2821, !2822, !2823, !2826, !2827, !2828, !2831, !2832}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !722, file: !719, line: 390, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !719, line: 305, size: 1472, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !743, !744, !749, !750, !753, !757, !758, !2694, !2695, !2696}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !726, file: !719, line: 308, baseType: !531, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !726, file: !719, line: 309, baseType: !531, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !726, file: !719, line: 313, baseType: !725, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !726, file: !719, line: 313, baseType: !725, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !726, file: !719, line: 315, baseType: !528, size: 192, align: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !726, file: !719, line: 323, baseType: !531, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !726, file: !719, line: 327, baseType: !717, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !726, file: !719, line: 333, baseType: !736, size: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !737, line: 284, baseType: !738)
!737 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !737, line: 284, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !738, file: !737, line: 284, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !742, line: 19, baseType: !531)
!742 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !726, file: !719, line: 334, baseType: !531, size: 64, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !726, file: !719, line: 343, baseType: !745, size: 256, offset: 704)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !726, file: !719, line: 340, size: 256, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !745, file: !719, line: 341, baseType: !528, size: 192, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !745, file: !719, line: 342, baseType: !531, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !726, file: !719, line: 351, baseType: !580, size: 128, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !726, file: !719, line: 353, baseType: !751, size: 64, offset: 1088)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !719, line: 353, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !726, file: !719, line: 356, baseType: !754, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !719, line: 356, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !726, file: !719, line: 359, baseType: !531, size: 64, offset: 1216)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !726, file: !719, line: 361, baseType: !759, size: 64, offset: 1280)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !761)
!761 = !{!762, !780, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2493, !2678, !2687, !2688, !2689, !2690, !2691, !2692, !2693}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !760, file: !208, line: 920, baseType: !763, size: 128)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !208, line: 917, size: 128, elements: !764)
!764 = !{!765, !771}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !763, file: !208, line: 918, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !767, line: 58, size: 64, elements: !768)
!767 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !767, line: 59, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !763, file: !208, line: 919, baseType: !772, size: 128, align: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !328, line: 216, size: 128, align: 64, elements: !773)
!773 = !{!774, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !328, line: 217, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !772, file: !328, line: 218, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !775}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !760, file: !208, line: 921, baseType: !781, size: 128, offset: 128)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !782, line: 8, size: 128, elements: !783)
!782 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !788}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !781, file: !782, line: 9, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !787, line: 18, flags: DIFlagFwdDecl)
!787 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !781, file: !782, line: 10, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !787, line: 89, size: 1536, elements: !791)
!791 = !{!792, !793, !798, !806, !807, !822, !2423, !2425, !2437, !2438, !2439, !2440, !2441, !2446, !2447, !2448}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !790, file: !787, line: 91, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !790, file: !787, line: 92, baseType: !794, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !674, line: 277, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !674, line: 277, size: 32, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !795, file: !674, line: 277, baseType: !678, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !790, file: !787, line: 93, baseType: !799, size: 128, offset: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !800, line: 38, size: 128, elements: !801)
!800 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !804}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !799, file: !800, line: 39, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !799, file: !800, line: 39, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !790, file: !787, line: 94, baseType: !789, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !790, file: !787, line: 95, baseType: !808, size: 128, offset: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !787, line: 47, size: 128, elements: !809)
!809 = !{!810, !819}
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !787, line: 48, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !787, line: 48, size: 64, elements: !812)
!812 = !{!813, !818}
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !787, line: 49, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !787, line: 49, size: 64, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !814, file: !787, line: 50, baseType: !488, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !814, file: !787, line: 50, baseType: !488, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !811, file: !787, line: 52, baseType: !587, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !808, file: !787, line: 54, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !790, file: !787, line: 96, baseType: !823, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !825)
!825 = !{!826, !828, !829, !837, !844, !845, !994, !1812, !1813, !1814, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !2091, !2099, !2100, !2101, !2419, !2420, !2421, !2422}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !824, file: !208, line: 611, baseType: !827, size: 16)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !328, line: 19, baseType: !373)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !824, file: !208, line: 612, baseType: !373, size: 16, offset: 16)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !824, file: !208, line: 613, baseType: !830, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !831, line: 23, baseType: !832)
!831 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !831, line: 21, size: 32, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !832, file: !831, line: 22, baseType: !835, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !328, line: 32, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !671, line: 49, baseType: !7)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !824, file: !208, line: 614, baseType: !838, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !831, line: 28, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !831, line: 26, size: 32, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !839, file: !831, line: 27, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !328, line: 33, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !671, line: 50, baseType: !7)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !824, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !824, file: !208, line: 622, baseType: !846, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !849)
!849 = !{!850, !854, !864, !868, !874, !878, !884, !888, !892, !896, !900, !901, !907, !911, !935, !964, !974, !980, !985, !989, !990}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !848, file: !208, line: 1865, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!789, !823, !789, !7}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !848, file: !208, line: 1866, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!339, !789, !823, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !860, line: 10, size: 128, elements: !861)
!860 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !859, file: !860, line: 11, baseType: !364, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !859, file: !860, line: 12, baseType: !329, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !848, file: !208, line: 1867, baseType: !865, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!356, !823, !356}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !848, file: !208, line: 1868, baseType: !869, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!872, !823, !356}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !848, file: !208, line: 1870, baseType: !875, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!356, !789, !362, !356}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !848, file: !208, line: 1872, baseType: !879, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!356, !823, !789, !827, !882}
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !328, line: 30, baseType: !883)
!883 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !848, file: !208, line: 1873, baseType: !885, size: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!356, !789, !823, !789}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !848, file: !208, line: 1874, baseType: !889, size: 64, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!356, !823, !789}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !848, file: !208, line: 1875, baseType: !893, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!356, !823, !789, !339}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !848, file: !208, line: 1876, baseType: !897, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!356, !823, !789, !827}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !848, file: !208, line: 1877, baseType: !889, size: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !848, file: !208, line: 1878, baseType: !902, size: 64, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!356, !823, !789, !827, !905}
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !328, line: 16, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !328, line: 13, baseType: !488)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !848, file: !208, line: 1879, baseType: !908, size: 64, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!356, !823, !789, !823, !789, !7}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !848, file: !208, line: 1881, baseType: !912, size: 64, offset: 832)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!356, !789, !915}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !925, !932, !933, !934}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !916, file: !208, line: 220, baseType: !7, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !916, file: !208, line: 221, baseType: !827, size: 16, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !916, file: !208, line: 222, baseType: !830, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !916, file: !208, line: 223, baseType: !838, size: 32, offset: 96)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !916, file: !208, line: 224, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !328, line: 46, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !671, line: 88, baseType: !619)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !916, file: !208, line: 225, baseType: !926, size: 128, offset: 192)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !927, line: 13, size: 128, elements: !928)
!927 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!928 = !{!929, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !926, file: !927, line: 14, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !927, line: 8, baseType: !618)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !926, file: !927, line: 15, baseType: !330, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !916, file: !208, line: 226, baseType: !926, size: 128, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !916, file: !208, line: 227, baseType: !926, size: 128, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !916, file: !208, line: 234, baseType: !759, size: 64, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !848, file: !208, line: 1882, baseType: !936, size: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!356, !939, !941, !488, !7}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !943, line: 22, size: 1152, elements: !944)
!943 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!944 = !{!945, !946, !947, !948, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !942, file: !943, line: 23, baseType: !488, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !942, file: !943, line: 24, baseType: !827, size: 16, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !942, file: !943, line: 25, baseType: !7, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !942, file: !943, line: 26, baseType: !949, size: 32, offset: 96)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !328, line: 104, baseType: !488)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !942, file: !943, line: 27, baseType: !587, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !942, file: !943, line: 28, baseType: !587, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !942, file: !943, line: 37, baseType: !587, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !942, file: !943, line: 38, baseType: !905, size: 32, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !942, file: !943, line: 39, baseType: !905, size: 32, offset: 352)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !942, file: !943, line: 40, baseType: !830, size: 32, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !942, file: !943, line: 41, baseType: !838, size: 32, offset: 416)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !942, file: !943, line: 42, baseType: !923, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !942, file: !943, line: 43, baseType: !926, size: 128, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !942, file: !943, line: 44, baseType: !926, size: 128, offset: 640)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !942, file: !943, line: 45, baseType: !926, size: 128, offset: 768)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !942, file: !943, line: 46, baseType: !926, size: 128, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !942, file: !943, line: 47, baseType: !587, size: 64, offset: 1024)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !942, file: !943, line: 48, baseType: !587, size: 64, offset: 1088)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !848, file: !208, line: 1883, baseType: !965, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!968, !789, !362, !971}
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !328, line: 60, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !671, line: 73, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !671, line: 15, baseType: !330)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !328, line: 55, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !671, line: 72, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !671, line: 16, baseType: !531)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !848, file: !208, line: 1884, baseType: !975, size: 64, offset: 1024)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!356, !823, !978, !587, !587}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !848, file: !208, line: 1886, baseType: !981, size: 64, offset: 1088)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!356, !823, !984, !356}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !848, file: !208, line: 1887, baseType: !986, size: 64, offset: 1152)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!356, !823, !789, !759, !7, !827}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !848, file: !208, line: 1890, baseType: !897, size: 64, offset: 1216)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !848, file: !208, line: 1891, baseType: !991, size: 64, offset: 1280)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!356, !823, !872, !356}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !824, file: !208, line: 623, baseType: !995, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1052, !1389, !1477, !1560, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1576, !1580, !1581, !1584, !1587, !1590, !1591, !1592, !1633, !1665, !1666, !1667, !1668, !1669, !1670, !1673, !1677, !1686, !1687, !1689, !1690, !1691, !1750, !1751, !1766, !1767, !1768, !1769, !1770, !1774, !1775, !1778, !1793, !1794, !1795, !1806, !1807, !1808, !1809, !1810, !1811}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !996, file: !208, line: 1417, baseType: !580, size: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !996, file: !208, line: 1418, baseType: !905, size: 32, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !996, file: !208, line: 1419, baseType: !381, size: 8, offset: 160)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !996, file: !208, line: 1420, baseType: !531, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !996, file: !208, line: 1421, baseType: !923, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !996, file: !208, line: 1422, baseType: !1004, size: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1016, !1020, !1024, !1028, !1029, !1030, !1040, !1043, !1044, !1045, !1049, !1050, !1051}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1005, file: !208, line: 2229, baseType: !339, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1005, file: !208, line: 2230, baseType: !356, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1005, file: !208, line: 2238, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!356, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1015, line: 28, flags: DIFlagFwdDecl)
!1015 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1005, file: !208, line: 2239, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1005, file: !208, line: 2240, baseType: !1021, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!789, !1004, !356, !339, !329}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1005, file: !208, line: 2242, baseType: !1025, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !995}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1005, file: !208, line: 2243, baseType: !343, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1005, file: !208, line: 2244, baseType: !1004, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1005, file: !208, line: 2245, baseType: !1031, size: 64, offset: 512)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !328, line: 182, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1031, file: !328, line: 183, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !328, line: 186, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1035, file: !328, line: 187, baseType: !1034, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1035, file: !328, line: 187, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1005, file: !208, line: 2247, baseType: !1041, offset: 576)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1042, line: 187, elements: !518)
!1042 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1005, file: !208, line: 2248, baseType: !1041, offset: 576)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1005, file: !208, line: 2249, baseType: !1041, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1005, file: !208, line: 2250, baseType: !1046, offset: 576)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 3)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1005, file: !208, line: 2252, baseType: !1041, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1005, file: !208, line: 2253, baseType: !1041, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1005, file: !208, line: 2254, baseType: !1041, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !996, file: !208, line: 1423, baseType: !1053, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1056)
!1056 = !{!1057, !1061, !1065, !1066, !1070, !1076, !1080, !1081, !1082, !1086, !1090, !1091, !1092, !1093, !1099, !1104, !1105, !1111, !1112, !1113, !1114, !1373, !1388}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1055, file: !208, line: 1936, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!823, !995}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1055, file: !208, line: 1937, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !823}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1055, file: !208, line: 1938, baseType: !1062, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1055, file: !208, line: 1940, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !823, !356}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1055, file: !208, line: 1941, baseType: !1071, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!356, !823, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1055, file: !208, line: 1942, baseType: !1077, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!356, !823}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1055, file: !208, line: 1943, baseType: !1062, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1055, file: !208, line: 1944, baseType: !1025, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1055, file: !208, line: 1945, baseType: !1083, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!356, !995, !356}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1055, file: !208, line: 1946, baseType: !1087, size: 64, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!356, !995}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1055, file: !208, line: 1947, baseType: !1087, size: 64, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1055, file: !208, line: 1948, baseType: !1087, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1055, file: !208, line: 1949, baseType: !1087, size: 64, offset: 768)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1055, file: !208, line: 1950, baseType: !1094, size: 64, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!356, !789, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1055, file: !208, line: 1951, baseType: !1100, size: 64, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!356, !995, !1103, !362}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1055, file: !208, line: 1952, baseType: !1025, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1055, file: !208, line: 1954, baseType: !1106, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!356, !1109, !789}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !737, line: 539, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1055, file: !208, line: 1955, baseType: !1106, size: 64, offset: 1088)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1055, file: !208, line: 1956, baseType: !1106, size: 64, offset: 1152)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1055, file: !208, line: 1957, baseType: !1106, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1055, file: !208, line: 1963, baseType: !1115, size: 64, offset: 1280)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!356, !995, !1118, !327}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !719, line: 68, size: 512, align: 128, elements: !1120)
!1120 = !{!1121, !1122, !1365, !1372}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1119, file: !719, line: 69, baseType: !531, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !719, line: 77, baseType: !1123, size: 320, offset: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !719, line: 77, size: 320, elements: !1124)
!1124 = !{!1125, !1297, !1302, !1330, !1338, !1344, !1357, !1364}
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !719, line: 78, baseType: !1126, size: 320)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !719, line: 78, size: 320, elements: !1127)
!1127 = !{!1128, !1129, !1295, !1296}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1126, file: !719, line: 84, baseType: !580, size: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1126, file: !719, line: 86, baseType: !1130, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1132)
!1132 = !{!1133, !1134, !1148, !1149, !1150, !1151, !1165, !1166, !1167, !1168, !1288, !1289, !1292, !1293, !1294}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1131, file: !208, line: 452, baseType: !823, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1131, file: !208, line: 453, baseType: !1135, size: 128, offset: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1136, line: 292, size: 128, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1137 = !{!1138, !1146, !1147}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1135, file: !1136, line: 293, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !511, line: 83, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !511, line: 71, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !511, line: 72, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1140, file: !511, line: 72, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1143, file: !511, line: 73, baseType: !512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1135, file: !1136, line: 295, baseType: !327, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1135, file: !1136, line: 296, baseType: !329, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1131, file: !208, line: 454, baseType: !327, size: 32, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1131, file: !208, line: 455, baseType: !555, size: 32, offset: 224)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1131, file: !208, line: 460, baseType: !520, size: 128, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1131, file: !208, line: 461, baseType: !1152, size: 256, offset: 384)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1153, line: 35, size: 256, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1162, !1163, !1164}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1152, file: !1153, line: 36, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1157, line: 13, baseType: !1158)
!1157 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !328, line: 175, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 173, size: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1159, file: !328, line: 174, baseType: !617, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1152, file: !1153, line: 42, baseType: !1156, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1152, file: !1153, line: 46, baseType: !510, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1152, file: !1153, line: 47, baseType: !580, size: 128, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1131, file: !208, line: 462, baseType: !531, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1131, file: !208, line: 463, baseType: !531, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1131, file: !208, line: 464, baseType: !531, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1131, file: !208, line: 465, baseType: !1169, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1172)
!1172 = !{!1173, !1177, !1181, !1185, !1189, !1193, !1199, !1205, !1209, !1214, !1218, !1222, !1226, !1252, !1256, !1262, !1263, !1264, !1268, !1273, !1277, !1284}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1171, file: !208, line: 368, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!356, !1118, !1074}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1171, file: !208, line: 369, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!356, !759, !1118}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1171, file: !208, line: 372, baseType: !1182, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!356, !1130, !1074}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1171, file: !208, line: 375, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!356, !1118}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1171, file: !208, line: 381, baseType: !1190, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!356, !759, !1130, !583, !7}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1171, file: !208, line: 383, baseType: !1194, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1171, file: !208, line: 385, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!356, !759, !1130, !923, !7, !7, !1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1171, file: !208, line: 388, baseType: !1206, size: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!356, !759, !1130, !923, !7, !7, !1118, !329}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1171, file: !208, line: 393, baseType: !1210, size: 64, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1213, !1130, !1213}
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !328, line: 125, baseType: !587)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1171, file: !208, line: 394, baseType: !1215, size: 64, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !1118, !7, !7}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1171, file: !208, line: 395, baseType: !1219, size: 64, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!356, !1118, !327}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1171, file: !208, line: 396, baseType: !1223, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !1118}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1171, file: !208, line: 397, baseType: !1227, size: 64, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!968, !1230, !1250}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1239, !1240, !1241, !1242, !1243}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1231, file: !208, line: 321, baseType: !759, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1231, file: !208, line: 326, baseType: !923, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1231, file: !208, line: 327, baseType: !1236, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !1230, !330, !330}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1231, file: !208, line: 328, baseType: !329, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1231, file: !208, line: 329, baseType: !356, size: 32, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1231, file: !208, line: 330, baseType: !369, size: 16, offset: 288)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1231, file: !208, line: 331, baseType: !369, size: 16, offset: 304)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !208, line: 332, baseType: !1244, size: 64, offset: 320)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !208, line: 332, size: 64, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1244, file: !208, line: 333, baseType: !7, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1244, file: !208, line: 334, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1171, file: !208, line: 402, baseType: !1253, size: 64, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!356, !1130, !1118, !1118, !183}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1171, file: !208, line: 404, baseType: !1257, size: 64, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!882, !1118, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1261, line: 305, baseType: !7)
!1261 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1171, file: !208, line: 405, baseType: !1223, size: 64, offset: 960)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1171, file: !208, line: 406, baseType: !1186, size: 64, offset: 1024)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1171, file: !208, line: 407, baseType: !1265, size: 64, offset: 1088)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!356, !1118, !531, !531}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1171, file: !208, line: 409, baseType: !1269, size: 64, offset: 1152)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !1118, !1272, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1171, file: !208, line: 410, baseType: !1274, size: 64, offset: 1216)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!356, !1130, !1118}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1171, file: !208, line: 413, baseType: !1278, size: 64, offset: 1280)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!356, !1281, !759, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1171, file: !208, line: 415, baseType: !1285, size: 64, offset: 1344)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !759}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !208, line: 466, baseType: !531, size: 64, offset: 896)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1131, file: !208, line: 467, baseType: !1290, size: 32, offset: 960)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1291, line: 8, baseType: !488)
!1291 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1131, file: !208, line: 468, baseType: !1139, offset: 992)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1131, file: !208, line: 469, baseType: !580, size: 128, offset: 1024)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1131, file: !208, line: 470, baseType: !329, size: 64, offset: 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1126, file: !719, line: 87, baseType: !531, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1126, file: !719, line: 94, baseType: !531, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !719, line: 96, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !719, line: 96, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1298, file: !719, line: 101, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !328, line: 143, baseType: !587)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !719, line: 103, baseType: !1303, size: 320)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !719, line: 103, size: 320, elements: !1304)
!1304 = !{!1305, !1315, !1318, !1319}
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !719, line: 104, baseType: !1306, size: 128)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1303, file: !719, line: 104, size: 128, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1306, file: !719, line: 105, baseType: !580, size: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !719, line: 106, baseType: !1310, size: 128)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !719, line: 106, size: 128, elements: !1311)
!1311 = !{!1312, !1313, !1314}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1310, file: !719, line: 107, baseType: !1118, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1310, file: !719, line: 109, baseType: !356, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1310, file: !719, line: 110, baseType: !356, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1303, file: !719, line: 117, baseType: !1316, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !719, line: 117, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1303, file: !719, line: 119, baseType: !329, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !719, line: 120, baseType: !1320, size: 64, offset: 256)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1303, file: !719, line: 120, size: 64, elements: !1321)
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1320, file: !719, line: 121, baseType: !329, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1320, file: !719, line: 122, baseType: !531, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !719, line: 123, baseType: !1325, size: 32)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !719, line: 123, size: 32, elements: !1326)
!1326 = !{!1327, !1328, !1329}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1325, file: !719, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1325, file: !719, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1325, file: !719, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !719, line: 130, baseType: !1331, size: 192)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !719, line: 130, size: 192, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1331, file: !719, line: 131, baseType: !531, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1331, file: !719, line: 134, baseType: !381, size: 8, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1331, file: !719, line: 135, baseType: !381, size: 8, offset: 72)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1331, file: !719, line: 136, baseType: !555, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1331, file: !719, line: 137, baseType: !7, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !719, line: 139, baseType: !1339, size: 256)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !719, line: 139, size: 256, elements: !1340)
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1339, file: !719, line: 140, baseType: !531, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1339, file: !719, line: 141, baseType: !555, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1339, file: !719, line: 143, baseType: !580, size: 128, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !719, line: 145, baseType: !1345, size: 256)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !719, line: 145, size: 256, elements: !1346)
!1346 = !{!1347, !1348, !1350, !1351, !1356}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1345, file: !719, line: 146, baseType: !531, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1345, file: !719, line: 147, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !737, line: 509, baseType: !1118)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1345, file: !719, line: 148, baseType: !531, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !719, line: 149, baseType: !1352, size: 64, offset: 192)
!1352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1345, file: !719, line: 149, size: 64, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1352, file: !719, line: 150, baseType: !717, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1352, file: !719, line: 151, baseType: !555, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1345, file: !719, line: 156, baseType: !1139, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !719, line: 159, baseType: !1358, size: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !719, line: 159, size: 128, elements: !1359)
!1359 = !{!1360, !1363}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1358, file: !719, line: 161, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !719, line: 161, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1358, file: !719, line: 162, baseType: !329, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1123, file: !719, line: 176, baseType: !772, size: 128, align: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !719, line: 179, baseType: !1366, size: 32, offset: 384)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !719, line: 179, size: 32, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1366, file: !719, line: 184, baseType: !555, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1366, file: !719, line: 192, baseType: !7, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1366, file: !719, line: 194, baseType: !7, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1366, file: !719, line: 195, baseType: !356, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1119, file: !719, line: 199, baseType: !555, size: 32, offset: 416)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1055, file: !208, line: 1964, baseType: !1374, size: 64, offset: 1344)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!330, !995, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1379, line: 12, size: 256, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1382, !1383, !1384, !1385}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1378, file: !1379, line: 13, baseType: !327, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1378, file: !1379, line: 16, baseType: !356, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1378, file: !1379, line: 23, baseType: !531, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1378, file: !1379, line: 30, baseType: !531, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1378, file: !1379, line: 33, baseType: !1386, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !719, line: 27, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1055, file: !208, line: 1966, baseType: !1374, size: 64, offset: 1408)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !996, file: !208, line: 1424, baseType: !1390, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !1393)
!1393 = !{!1394, !1446, !1450, !1454, !1455, !1456, !1457, !1458, !1463, !1468, !1472}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1392, file: !202, line: 323, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!356, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1412, !1413, !1414, !1415, !1431, !1432, !1433}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1399, file: !202, line: 295, baseType: !1035, size: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1399, file: !202, line: 296, baseType: !580, size: 128, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1399, file: !202, line: 297, baseType: !580, size: 128, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1399, file: !202, line: 298, baseType: !580, size: 128, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1399, file: !202, line: 299, baseType: !1406, size: 192, offset: 512)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1407, line: 53, size: 192, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1408 = !{!1409, !1410, !1411}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1406, file: !1407, line: 54, baseType: !1156, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1406, file: !1407, line: 55, baseType: !1139, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1406, file: !1407, line: 59, baseType: !580, size: 128, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1399, file: !202, line: 300, baseType: !1139, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1399, file: !202, line: 301, baseType: !555, size: 32, offset: 704)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1399, file: !202, line: 302, baseType: !995, size: 64, offset: 768)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1399, file: !202, line: 303, baseType: !1416, size: 64, offset: 832)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !1417)
!1417 = !{!1418, !1430}
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !202, line: 69, baseType: !1419, size: 32)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1416, file: !202, line: 69, size: 32, elements: !1420)
!1420 = !{!1421, !1422, !1423}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1419, file: !202, line: 70, baseType: !830, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1419, file: !202, line: 71, baseType: !838, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1419, file: !202, line: 72, baseType: !1424, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1425, line: 24, baseType: !1426)
!1425 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1425, line: 22, size: 32, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1426, file: !1425, line: 23, baseType: !1429, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1425, line: 20, baseType: !836)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1416, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1399, file: !202, line: 304, baseType: !923, size: 64, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1399, file: !202, line: 305, baseType: !531, size: 64, offset: 960)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1399, file: !202, line: 306, baseType: !1434, size: 576, offset: 1024)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !1435)
!1435 = !{!1436, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1434, file: !202, line: 206, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !619)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1434, file: !202, line: 207, baseType: !1437, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1434, file: !202, line: 208, baseType: !1437, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1434, file: !202, line: 209, baseType: !1437, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1434, file: !202, line: 210, baseType: !1437, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1434, file: !202, line: 211, baseType: !1437, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1434, file: !202, line: 212, baseType: !1437, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1434, file: !202, line: 213, baseType: !930, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1434, file: !202, line: 214, baseType: !930, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1392, file: !202, line: 324, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1398, !995, !356}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1392, file: !202, line: 325, baseType: !1451, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1398}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1392, file: !202, line: 326, baseType: !1395, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1392, file: !202, line: 327, baseType: !1395, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1392, file: !202, line: 328, baseType: !1395, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1392, file: !202, line: 329, baseType: !1083, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1392, file: !202, line: 332, baseType: !1459, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1462, !823}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1392, file: !202, line: 333, baseType: !1464, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!356, !823, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1392, file: !202, line: 335, baseType: !1469, size: 64, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!356, !823, !1462}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1392, file: !202, line: 337, baseType: !1473, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!356, !995, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !996, file: !208, line: 1425, baseType: !1478, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !1481)
!1481 = !{!1482, !1486, !1487, !1491, !1492, !1493, !1508, !1531, !1535, !1536, !1559}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1480, file: !202, line: 429, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!356, !995, !356, !356, !939}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1480, file: !202, line: 430, baseType: !1083, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1480, file: !202, line: 431, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!356, !995, !7}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1480, file: !202, line: 432, baseType: !1488, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1480, file: !202, line: 433, baseType: !1083, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1480, file: !202, line: 434, baseType: !1494, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!356, !995, !356, !1497}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1498, file: !202, line: 416, baseType: !356, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1498, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1498, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1498, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1498, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1498, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1498, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1498, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1480, file: !202, line: 435, baseType: !1509, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!356, !995, !1416, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1513, file: !202, line: 344, baseType: !356, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1513, file: !202, line: 345, baseType: !587, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1513, file: !202, line: 346, baseType: !587, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1513, file: !202, line: 347, baseType: !587, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1513, file: !202, line: 348, baseType: !587, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1513, file: !202, line: 349, baseType: !587, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1513, file: !202, line: 350, baseType: !587, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1513, file: !202, line: 351, baseType: !617, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1513, file: !202, line: 353, baseType: !617, size: 64, offset: 512)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1513, file: !202, line: 354, baseType: !356, size: 32, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1513, file: !202, line: 355, baseType: !356, size: 32, offset: 608)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1513, file: !202, line: 356, baseType: !587, size: 64, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1513, file: !202, line: 357, baseType: !587, size: 64, offset: 704)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1513, file: !202, line: 358, baseType: !587, size: 64, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1513, file: !202, line: 359, baseType: !617, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1513, file: !202, line: 360, baseType: !356, size: 32, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1480, file: !202, line: 436, baseType: !1532, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!356, !995, !1476, !1512}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1480, file: !202, line: 438, baseType: !1509, size: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1480, file: !202, line: 439, baseType: !1537, size: 64, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!356, !995, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1541, file: !202, line: 410, baseType: !7, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1541, file: !202, line: 411, baseType: !1545, size: 1344, offset: 64)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1546, size: 1344, elements: !1047)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1558}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !202, line: 396, baseType: !7, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1546, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1546, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1546, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1546, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1546, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1546, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1546, file: !202, line: 404, baseType: !589, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1546, file: !202, line: 405, baseType: !1557, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !328, line: 126, baseType: !587)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1546, file: !202, line: 406, baseType: !1557, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1480, file: !202, line: 440, baseType: !1488, size: 64, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !996, file: !208, line: 1426, baseType: !1561, size: 64, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !996, file: !208, line: 1427, baseType: !531, size: 64, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !996, file: !208, line: 1428, baseType: !531, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !996, file: !208, line: 1429, baseType: !531, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !996, file: !208, line: 1430, baseType: !789, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !996, file: !208, line: 1431, baseType: !1152, size: 256, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !996, file: !208, line: 1432, baseType: !356, size: 32, offset: 1152)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !996, file: !208, line: 1433, baseType: !555, size: 32, offset: 1184)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !996, file: !208, line: 1437, baseType: !1572, size: 64, offset: 1216)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !996, file: !208, line: 1449, baseType: !1577, size: 64, offset: 1280)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !800, line: 34, size: 64, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1577, file: !800, line: 35, baseType: !803, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !996, file: !208, line: 1450, baseType: !580, size: 128, offset: 1344)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !996, file: !208, line: 1451, baseType: !1582, size: 64, offset: 1472)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !996, file: !208, line: 1452, baseType: !1585, size: 64, offset: 1536)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !538, line: 40, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !996, file: !208, line: 1453, baseType: !1588, size: 64, offset: 1600)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !996, file: !208, line: 1454, baseType: !1035, size: 128, offset: 1664)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !996, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !996, file: !208, line: 1456, baseType: !1593, size: 2432, offset: 1856)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1599, !1631}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !202, line: 519, baseType: !7, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1593, file: !202, line: 520, baseType: !1152, size: 256, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1593, file: !202, line: 521, baseType: !1598, size: 192, offset: 320)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 192, elements: !1047)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1593, file: !202, line: 522, baseType: !1600, size: 1728, offset: 512)
!1600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1601, size: 1728, elements: !1047)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !1602)
!1602 = !{!1603, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1601, file: !202, line: 223, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !1606)
!1606 = !{!1607, !1608, !1621, !1622}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1605, file: !202, line: 444, baseType: !356, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1605, file: !202, line: 445, baseType: !1609, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1611, file: !202, line: 311, baseType: !1083, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1611, file: !202, line: 312, baseType: !1083, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1611, file: !202, line: 313, baseType: !1083, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1611, file: !202, line: 314, baseType: !1083, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1611, file: !202, line: 315, baseType: !1395, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1611, file: !202, line: 316, baseType: !1395, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1611, file: !202, line: 317, baseType: !1395, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1611, file: !202, line: 318, baseType: !1473, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1605, file: !202, line: 446, baseType: !343, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1605, file: !202, line: 447, baseType: !1604, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1601, file: !202, line: 224, baseType: !356, size: 32, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1601, file: !202, line: 226, baseType: !580, size: 128, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1601, file: !202, line: 227, baseType: !531, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1601, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1601, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1601, file: !202, line: 230, baseType: !1437, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1601, file: !202, line: 231, baseType: !1437, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1601, file: !202, line: 232, baseType: !329, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1593, file: !202, line: 523, baseType: !1632, size: 192, offset: 2240)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1609, size: 192, elements: !1047)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !996, file: !208, line: 1458, baseType: !1634, size: 2112, offset: 4288)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !1635)
!1635 = !{!1636, !1637, !1644}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1634, file: !208, line: 1411, baseType: !356, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1634, file: !208, line: 1412, baseType: !1638, size: 128, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1639, line: 40, baseType: !1640)
!1639 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1639, line: 36, size: 128, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1640, file: !1639, line: 37, baseType: !1139)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1640, file: !1639, line: 38, baseType: !580, size: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1634, file: !208, line: 1413, baseType: !1645, size: 1920, offset: 192)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1646, size: 1920, elements: !1047)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1647, line: 12, size: 640, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !{!1649, !1657, !1658, !1663, !1664}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1646, file: !1647, line: 13, baseType: !1650, size: 320)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1651, line: 17, size: 320, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1650, file: !1651, line: 18, baseType: !356, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1650, file: !1651, line: 19, baseType: !356, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1650, file: !1651, line: 20, baseType: !1638, size: 128, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1650, file: !1651, line: 22, baseType: !772, size: 128, align: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1646, file: !1647, line: 14, baseType: !401, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1646, file: !1647, line: 15, baseType: !1659, size: 64, offset: 384)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1660, line: 16, size: 64, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1659, file: !1660, line: 17, baseType: !536, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1646, file: !1647, line: 16, baseType: !1638, size: 128, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1646, file: !1647, line: 17, baseType: !555, size: 32, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !996, file: !208, line: 1465, baseType: !329, size: 64, offset: 6400)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !996, file: !208, line: 1468, baseType: !488, size: 32, offset: 6464)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !996, file: !208, line: 1470, baseType: !930, size: 64, offset: 6528)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !996, file: !208, line: 1471, baseType: !930, size: 64, offset: 6592)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !996, file: !208, line: 1473, baseType: !489, size: 32, offset: 6656)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !996, file: !208, line: 1474, baseType: !1671, size: 64, offset: 6720)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !996, file: !208, line: 1477, baseType: !1674, size: 256, offset: 6784)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 256, elements: !1675)
!1675 = !{!1676}
!1676 = !DISubrange(count: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !996, file: !208, line: 1478, baseType: !1678, size: 128, offset: 7040)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1679, line: 18, baseType: !1680)
!1679 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1679, line: 16, size: 128, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1680, file: !1679, line: 17, baseType: !1683, size: 128)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, elements: !1684)
!1684 = !{!1685}
!1685 = !DISubrange(count: 16)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !996, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !996, file: !208, line: 1481, baseType: !1688, size: 32, offset: 7200)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !328, line: 150, baseType: !7)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !996, file: !208, line: 1487, baseType: !1406, size: 192, offset: 7232)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !996, file: !208, line: 1493, baseType: !339, size: 64, offset: 7424)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !996, file: !208, line: 1495, baseType: !1692, size: 64, offset: 7488)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !787, line: 135, size: 1024, align: 512, elements: !1695)
!1695 = !{!1696, !1700, !1701, !1708, !1714, !1718, !1722, !1726, !1727, !1731, !1735, !1740, !1744}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1694, file: !787, line: 136, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!356, !789, !7}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1694, file: !787, line: 137, baseType: !1697, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1694, file: !787, line: 138, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!356, !1705, !1707}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1694, file: !787, line: 139, baseType: !1709, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!356, !1705, !7, !339, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1694, file: !787, line: 141, baseType: !1715, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!356, !1705}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1694, file: !787, line: 142, baseType: !1719, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!356, !789}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1694, file: !787, line: 143, baseType: !1723, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !789}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1694, file: !787, line: 144, baseType: !1723, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1694, file: !787, line: 145, baseType: !1728, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !789, !823}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1694, file: !787, line: 146, baseType: !1732, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!362, !789, !362, !356}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1694, file: !787, line: 147, baseType: !1736, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!785, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1694, file: !787, line: 148, baseType: !1741, size: 64, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!356, !939, !882}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1694, file: !787, line: 149, baseType: !1745, size: 64, offset: 768)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!789, !789, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !996, file: !208, line: 1500, baseType: !356, size: 32, offset: 7552)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !996, file: !208, line: 1502, baseType: !1752, size: 448, offset: 7616)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1379, line: 60, size: 448, elements: !1753)
!1753 = !{!1754, !1759, !1760, !1761, !1762, !1763, !1764}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1752, file: !1379, line: 61, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!531, !1758, !1377}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1752, file: !1379, line: 63, baseType: !1755, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1752, file: !1379, line: 66, baseType: !330, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1752, file: !1379, line: 67, baseType: !356, size: 32, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1752, file: !1379, line: 68, baseType: !7, size: 32, offset: 224)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1752, file: !1379, line: 71, baseType: !580, size: 128, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1752, file: !1379, line: 77, baseType: !1765, size: 64, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !996, file: !208, line: 1505, baseType: !1156, size: 64, offset: 8064)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !996, file: !208, line: 1508, baseType: !1156, size: 64, offset: 8128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !996, file: !208, line: 1511, baseType: !356, size: 32, offset: 8192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !996, file: !208, line: 1514, baseType: !1290, size: 32, offset: 8224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !996, file: !208, line: 1517, baseType: !1771, size: 64, offset: 8256)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1773, line: 18, flags: DIFlagFwdDecl)
!1773 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !996, file: !208, line: 1518, baseType: !1031, size: 64, offset: 8320)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !996, file: !208, line: 1525, baseType: !1776, size: 64, offset: 8384)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !831, line: 18, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !996, file: !208, line: 1532, baseType: !1779, size: 64, offset: 8448)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1780, line: 52, size: 64, elements: !1781)
!1780 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !{!1782}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1779, file: !1780, line: 53, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1780, line: 40, size: 256, elements: !1785)
!1785 = !{!1786, !1787, !1792}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1784, file: !1780, line: 42, baseType: !1139)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1784, file: !1780, line: 44, baseType: !1788, size: 192)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1780, line: 28, size: 192, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1788, file: !1780, line: 29, baseType: !580, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1788, file: !1780, line: 31, baseType: !330, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1784, file: !1780, line: 49, baseType: !330, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !996, file: !208, line: 1533, baseType: !1779, size: 64, offset: 8512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !996, file: !208, line: 1534, baseType: !772, size: 128, align: 64, offset: 8576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !996, file: !208, line: 1535, baseType: !1796, size: 256, offset: 8704)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1773, line: 102, size: 256, elements: !1797)
!1797 = !{!1798, !1799, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1796, file: !1773, line: 103, baseType: !1156, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1796, file: !1773, line: 104, baseType: !580, size: 128, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1796, file: !1773, line: 105, baseType: !1801, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1773, line: 21, baseType: !1802)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !996, file: !208, line: 1537, baseType: !1406, size: 192, offset: 8960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !996, file: !208, line: 1542, baseType: !356, size: 32, offset: 9152)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !996, file: !208, line: 1545, baseType: !1139, offset: 9184)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !996, file: !208, line: 1546, baseType: !580, size: 128, offset: 9216)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !996, file: !208, line: 1548, baseType: !1139, offset: 9344)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !996, file: !208, line: 1549, baseType: !580, size: 128, offset: 9344)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !824, file: !208, line: 624, baseType: !1130, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !824, file: !208, line: 631, baseType: !531, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !208, line: 639, baseType: !1815, size: 32, offset: 384)
!1815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !208, line: 639, size: 32, elements: !1816)
!1816 = !{!1817, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1815, file: !208, line: 640, baseType: !1818, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1815, file: !208, line: 641, baseType: !7, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !824, file: !208, line: 643, baseType: !905, size: 32, offset: 416)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !824, file: !208, line: 644, baseType: !923, size: 64, offset: 448)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !824, file: !208, line: 645, baseType: !926, size: 128, offset: 512)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !824, file: !208, line: 646, baseType: !926, size: 128, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !824, file: !208, line: 647, baseType: !926, size: 128, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !824, file: !208, line: 648, baseType: !1139, offset: 896)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !824, file: !208, line: 649, baseType: !373, size: 16, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !824, file: !208, line: 650, baseType: !379, size: 8, offset: 912)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !824, file: !208, line: 651, baseType: !379, size: 8, offset: 920)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !824, file: !208, line: 652, baseType: !1557, size: 64, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !824, file: !208, line: 659, baseType: !531, size: 64, offset: 1024)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !824, file: !208, line: 660, baseType: !1152, size: 256, offset: 1088)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !824, file: !208, line: 662, baseType: !531, size: 64, offset: 1344)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !824, file: !208, line: 663, baseType: !531, size: 64, offset: 1408)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !824, file: !208, line: 665, baseType: !1035, size: 128, offset: 1472)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !824, file: !208, line: 666, baseType: !580, size: 128, offset: 1600)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !824, file: !208, line: 675, baseType: !580, size: 128, offset: 1728)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !824, file: !208, line: 676, baseType: !580, size: 128, offset: 1856)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !824, file: !208, line: 677, baseType: !580, size: 128, offset: 1984)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !208, line: 678, baseType: !1840, size: 128, offset: 2112)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !208, line: 678, size: 128, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1840, file: !208, line: 679, baseType: !1031, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1840, file: !208, line: 680, baseType: !772, size: 128, align: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !824, file: !208, line: 682, baseType: !1158, size: 64, offset: 2240)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !824, file: !208, line: 683, baseType: !1158, size: 64, offset: 2304)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !824, file: !208, line: 684, baseType: !555, size: 32, offset: 2368)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !824, file: !208, line: 685, baseType: !555, size: 32, offset: 2400)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !824, file: !208, line: 686, baseType: !555, size: 32, offset: 2432)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !824, file: !208, line: 688, baseType: !555, size: 32, offset: 2464)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !208, line: 690, baseType: !1851, size: 64, offset: 2496)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !208, line: 690, size: 64, elements: !1852)
!1852 = !{!1853, !2090}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1851, file: !208, line: 691, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !1857)
!1857 = !{!1858, !1859, !1863, !1868, !1872, !1873, !1874, !1878, !1891, !1892, !1909, !1913, !1914, !1918, !1919, !1923, !1928, !1929, !1933, !1937, !2045, !2049, !2053, !2057, !2058, !2064, !2068, !2073, !2077, !2081, !2085, !2089}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1856, file: !208, line: 1823, baseType: !343, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1856, file: !208, line: 1824, baseType: !1860, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!923, !759, !923, !356}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1856, file: !208, line: 1825, baseType: !1864, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!968, !759, !362, !971, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1856, file: !208, line: 1826, baseType: !1869, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!968, !759, !339, !971, !1867}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1856, file: !208, line: 1827, baseType: !1227, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1856, file: !208, line: 1828, baseType: !1227, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1856, file: !208, line: 1829, baseType: !1875, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!356, !1230, !882}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1856, file: !208, line: 1830, baseType: !1879, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!356, !759, !1882}
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !1884)
!1884 = !{!1885, !1890}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1883, file: !208, line: 1777, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!356, !1882, !339, !356, !923, !587, !7}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1883, file: !208, line: 1778, baseType: !923, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1856, file: !208, line: 1831, baseType: !1879, size: 64, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1856, file: !208, line: 1832, baseType: !1893, size: 64, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1896, !759, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1897, line: 52, baseType: !7)
!1897 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1900, line: 43, size: 128, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !{!1902, !1908}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1899, file: !1900, line: 44, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1900, line: 37, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !759, !1907, !1898}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1899, file: !1900, line: 45, baseType: !1896, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1856, file: !208, line: 1833, baseType: !1910, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!330, !759, !7, !531}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1856, file: !208, line: 1834, baseType: !1910, size: 64, offset: 704)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1856, file: !208, line: 1835, baseType: !1915, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!356, !759, !725}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1856, file: !208, line: 1836, baseType: !531, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1856, file: !208, line: 1837, baseType: !1920, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!356, !823, !759}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1856, file: !208, line: 1838, baseType: !1924, size: 64, offset: 960)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!356, !759, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !329)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1856, file: !208, line: 1839, baseType: !1920, size: 64, offset: 1024)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1856, file: !208, line: 1840, baseType: !1930, size: 64, offset: 1088)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!356, !759, !923, !923, !356}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1856, file: !208, line: 1841, baseType: !1934, size: 64, offset: 1152)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!356, !356, !759, !356}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1856, file: !208, line: 1842, baseType: !1938, size: 64, offset: 1216)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!356, !759, !356, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1975, !1976, !1977, !1990, !2021}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1942, file: !208, line: 1063, baseType: !1941, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1942, file: !208, line: 1064, baseType: !580, size: 128, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1942, file: !208, line: 1065, baseType: !1035, size: 128, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1942, file: !208, line: 1066, baseType: !580, size: 128, offset: 320)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1942, file: !208, line: 1069, baseType: !580, size: 128, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1942, file: !208, line: 1072, baseType: !1927, size: 64, offset: 576)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1942, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1942, file: !208, line: 1074, baseType: !381, size: 8, offset: 672)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1942, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1942, file: !208, line: 1076, baseType: !356, size: 32, offset: 736)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1942, file: !208, line: 1077, baseType: !1638, size: 128, offset: 768)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1942, file: !208, line: 1078, baseType: !759, size: 64, offset: 896)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1942, file: !208, line: 1079, baseType: !923, size: 64, offset: 960)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1942, file: !208, line: 1080, baseType: !923, size: 64, offset: 1024)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1942, file: !208, line: 1082, baseType: !1959, size: 64, offset: 1088)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !1961)
!1961 = !{!1962, !1970, !1971, !1972, !1973, !1974}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1960, file: !208, line: 1315, baseType: !1963)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1964, line: 20, baseType: !1965)
!1964 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1964, line: 11, elements: !1966)
!1966 = !{!1967}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1965, file: !1964, line: 12, baseType: !1968)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !516, line: 33, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 31, elements: !518)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1960, file: !208, line: 1316, baseType: !356, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1960, file: !208, line: 1317, baseType: !356, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1960, file: !208, line: 1318, baseType: !1959, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1960, file: !208, line: 1319, baseType: !759, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1960, file: !208, line: 1320, baseType: !772, size: 128, align: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1942, file: !208, line: 1084, baseType: !531, size: 64, offset: 1152)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1942, file: !208, line: 1085, baseType: !531, size: 64, offset: 1216)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1942, file: !208, line: 1087, baseType: !1978, size: 64, offset: 1280)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !1981)
!1981 = !{!1982, !1986}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1980, file: !208, line: 1012, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1941, !1941}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1980, file: !208, line: 1013, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1941}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1942, file: !208, line: 1088, baseType: !1991, size: 64, offset: 1344)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !1994)
!1994 = !{!1995, !1999, !2003, !2004, !2008, !2012, !2016, !2020}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1993, file: !208, line: 1017, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1927, !1927}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1993, file: !208, line: 1018, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1927}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1993, file: !208, line: 1019, baseType: !1987, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1993, file: !208, line: 1020, baseType: !2005, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!356, !1941, !356}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1993, file: !208, line: 1021, baseType: !2009, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!882, !1941}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1993, file: !208, line: 1022, baseType: !2013, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!356, !1941, !356, !583}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1993, file: !208, line: 1023, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !1941, !1204}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1993, file: !208, line: 1024, baseType: !2009, size: 64, offset: 448)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1942, file: !208, line: 1097, baseType: !2022, size: 256, offset: 1408)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !208, line: 1089, size: 256, elements: !2023)
!2023 = !{!2024, !2033, !2039}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2022, file: !208, line: 1090, baseType: !2025, size: 256)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2026, line: 10, size: 256, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !{!2028, !2029, !2032}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2025, file: !2026, line: 11, baseType: !488, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2025, file: !2026, line: 12, baseType: !2030, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2026, line: 5, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2025, file: !2026, line: 13, baseType: !580, size: 128, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2022, file: !208, line: 1091, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2026, line: 17, size: 64, elements: !2035)
!2035 = !{!2036}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2034, file: !2026, line: 18, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2026, line: 16, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2022, file: !208, line: 1096, baseType: !2040, size: 192)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !208, line: 1092, size: 192, elements: !2041)
!2041 = !{!2042, !2043, !2044}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2040, file: !208, line: 1093, baseType: !580, size: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2040, file: !208, line: 1094, baseType: !356, size: 32, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2040, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1856, file: !208, line: 1843, baseType: !2046, size: 64, offset: 1280)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!968, !759, !1118, !356, !971, !1867, !356}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1856, file: !208, line: 1844, baseType: !2050, size: 64, offset: 1344)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!531, !759, !531, !531, !531, !531}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1856, file: !208, line: 1845, baseType: !2054, size: 64, offset: 1408)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!356, !356}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1856, file: !208, line: 1846, baseType: !1938, size: 64, offset: 1472)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1856, file: !208, line: 1847, baseType: !2059, size: 64, offset: 1536)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!968, !2062, !759, !1867, !971, !7}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !538, line: 53, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1856, file: !208, line: 1848, baseType: !2065, size: 64, offset: 1600)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!968, !759, !1867, !2062, !971, !7}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1856, file: !208, line: 1849, baseType: !2069, size: 64, offset: 1664)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!356, !759, !330, !2072, !1204}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1856, file: !208, line: 1850, baseType: !2074, size: 64, offset: 1728)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!330, !759, !356, !923, !923}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1856, file: !208, line: 1852, baseType: !2078, size: 64, offset: 1792)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !1109, !759}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1856, file: !208, line: 1856, baseType: !2082, size: 64, offset: 1856)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!968, !759, !923, !759, !923, !971, !7}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1856, file: !208, line: 1858, baseType: !2086, size: 64, offset: 1920)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!923, !759, !923, !759, !923, !923, !7}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1856, file: !208, line: 1861, baseType: !1930, size: 64, offset: 1984)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1851, file: !208, line: 692, baseType: !1062, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !824, file: !208, line: 694, baseType: !2092, size: 64, offset: 2560)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2093, file: !208, line: 1101, baseType: !1139)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2093, file: !208, line: 1102, baseType: !580, size: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2093, file: !208, line: 1103, baseType: !580, size: 128, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2093, file: !208, line: 1104, baseType: !580, size: 128, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !824, file: !208, line: 695, baseType: !1131, size: 1216, align: 64, offset: 2624)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !824, file: !208, line: 696, baseType: !580, size: 128, offset: 3840)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !208, line: 697, baseType: !2102, size: 64, offset: 3968)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !208, line: 697, size: 64, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2417, !2418}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2102, file: !208, line: 698, baseType: !2062, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2102, file: !208, line: 699, baseType: !1582, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2102, file: !208, line: 700, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2109, line: 14, size: 832, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2412, !2413, !2414, !2415, !2416}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2108, file: !2109, line: 15, baseType: !2112, size: 512)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2113, line: 64, size: 512, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2116, !2117, !2119, !2161, !2263, !2402, !2407, !2408, !2409, !2410, !2411}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2112, file: !2113, line: 65, baseType: !339, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2112, file: !2113, line: 66, baseType: !580, size: 128, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2112, file: !2113, line: 67, baseType: !2118, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2112, file: !2113, line: 68, baseType: !2120, size: 64, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2113, line: 192, size: 704, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2121, file: !2113, line: 193, baseType: !580, size: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2121, file: !2113, line: 194, baseType: !1139, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2121, file: !2113, line: 195, baseType: !2112, size: 512, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2121, file: !2113, line: 196, baseType: !2127, size: 64, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2113, line: 156, size: 192, elements: !2130)
!2130 = !{!2131, !2136, !2141}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2129, file: !2113, line: 157, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2133)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!356, !2120, !2118}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2129, file: !2113, line: 158, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2138)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!339, !2120, !2118}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2129, file: !2113, line: 159, baseType: !2142, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!356, !2120, !2118, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2113, line: 148, size: 20736, elements: !2148)
!2148 = !{!2149, !2151, !2155, !2156, !2160}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2147, file: !2113, line: 149, baseType: !2150, size: 192)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 192, elements: !1047)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2147, file: !2113, line: 150, baseType: !2152, size: 4096, offset: 192)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 4096, elements: !2153)
!2153 = !{!2154}
!2154 = !DISubrange(count: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2147, file: !2113, line: 151, baseType: !356, size: 32, offset: 4288)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2147, file: !2113, line: 152, baseType: !2157, size: 16384, offset: 4320)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 16384, elements: !2158)
!2158 = !{!2159}
!2159 = !DISubrange(count: 2048)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2147, file: !2113, line: 153, baseType: !356, size: 32, offset: 20704)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2112, file: !2113, line: 69, baseType: !2162, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2113, line: 138, size: 448, elements: !2164)
!2164 = !{!2165, !2169, !2188, !2190, !2223, !2253, !2257}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2163, file: !2113, line: 139, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !2118}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2163, file: !2113, line: 140, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2173, line: 230, size: 128, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175, !2184}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2172, file: !2173, line: 231, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!968, !2118, !2179, !362}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2173, line: 30, size: 128, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2180, file: !2173, line: 31, baseType: !339, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2180, file: !2173, line: 32, baseType: !827, size: 16, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2172, file: !2173, line: 232, baseType: !2185, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!968, !2118, !2179, !339, !971}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2163, file: !2113, line: 141, baseType: !2189, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2163, file: !2113, line: 142, baseType: !2191, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2173, line: 84, size: 320, elements: !2195)
!2195 = !{!2196, !2197, !2201, !2220, !2221}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2194, file: !2173, line: 85, baseType: !339, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2194, file: !2173, line: 86, baseType: !2198, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!827, !2118, !2179, !356}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2194, file: !2173, line: 88, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!827, !2118, !2205, !356}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2173, line: 168, size: 448, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2215, !2216}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2206, file: !2173, line: 169, baseType: !2180, size: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2206, file: !2173, line: 170, baseType: !971, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2206, file: !2173, line: 171, baseType: !329, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2206, file: !2173, line: 172, baseType: !2212, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!968, !759, !2118, !2205, !362, !923, !971}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2206, file: !2173, line: 174, baseType: !2212, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2206, file: !2173, line: 176, baseType: !2217, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!356, !759, !2118, !2205, !725}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2194, file: !2173, line: 90, baseType: !2189, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2194, file: !2173, line: 91, baseType: !2222, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2163, file: !2113, line: 143, baseType: !2224, size: 64, offset: 256)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!2227, !2118}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !2230)
!2230 = !{!2231, !2232, !2236, !2240, !2248, !2252}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2229, file: !225, line: 40, baseType: !224, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2229, file: !225, line: 41, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!882}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2229, file: !225, line: 42, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!329}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2229, file: !225, line: 43, baseType: !2241, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2244, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2229, file: !225, line: 44, baseType: !2249, size: 64, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!2244}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2229, file: !225, line: 45, baseType: !364, size: 64, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2163, file: !2113, line: 144, baseType: !2254, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!2244, !2118}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2163, file: !2113, line: 145, baseType: !2258, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !2118, !2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2112, file: !2113, line: 70, baseType: !2264, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1015, line: 123, size: 1024, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2395, !2396, !2397, !2398, !2399}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2265, file: !1015, line: 124, baseType: !555, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2265, file: !1015, line: 125, baseType: !555, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2265, file: !1015, line: 135, baseType: !2264, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2265, file: !1015, line: 136, baseType: !339, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2265, file: !1015, line: 138, baseType: !528, size: 192, align: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2265, file: !1015, line: 140, baseType: !2244, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2265, file: !1015, line: 141, baseType: !7, size: 32, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2265, file: !1015, line: 142, baseType: !2275, size: 256, offset: 512)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2265, file: !1015, line: 142, size: 256, elements: !2276)
!2276 = !{!2277, !2323, !2327}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2275, file: !1015, line: 143, baseType: !2278, size: 192)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1015, line: 91, size: 192, elements: !2279)
!2279 = !{!2280, !2281, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2278, file: !1015, line: 92, baseType: !531, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2278, file: !1015, line: 94, baseType: !524, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2278, file: !1015, line: 100, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1015, line: 180, size: 704, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2295, !2296, !2297, !2321, !2322}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2284, file: !1015, line: 182, baseType: !2264, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2284, file: !1015, line: 183, baseType: !7, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2284, file: !1015, line: 186, baseType: !2289, size: 192, offset: 128)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2290, line: 19, size: 192, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293, !2294}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2289, file: !2290, line: 20, baseType: !1135, size: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2289, file: !2290, line: 21, baseType: !7, size: 32, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2289, file: !2290, line: 22, baseType: !7, size: 32, offset: 160)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2284, file: !1015, line: 187, baseType: !488, size: 32, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2284, file: !1015, line: 188, baseType: !488, size: 32, offset: 352)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2284, file: !1015, line: 189, baseType: !2298, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1015, line: 168, size: 320, elements: !2300)
!2300 = !{!2301, !2305, !2309, !2313, !2317}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2299, file: !1015, line: 169, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!356, !1109, !2283}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2299, file: !1015, line: 171, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!356, !2264, !339, !827}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2299, file: !1015, line: 173, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!356, !2264}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2299, file: !1015, line: 174, baseType: !2314, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!356, !2264, !2264, !339}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2299, file: !1015, line: 176, baseType: !2318, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!356, !1109, !2264, !2283}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2284, file: !1015, line: 192, baseType: !580, size: 128, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2284, file: !1015, line: 194, baseType: !1638, size: 128, offset: 576)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2275, file: !1015, line: 144, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1015, line: 103, size: 64, elements: !2325)
!2325 = !{!2326}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2324, file: !1015, line: 104, baseType: !2264, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2275, file: !1015, line: 145, baseType: !2328, size: 256)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1015, line: 107, size: 256, elements: !2329)
!2329 = !{!2330, !2390, !2393, !2394}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2328, file: !1015, line: 108, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1015, line: 217, size: 768, elements: !2334)
!2334 = !{!2335, !2355, !2359, !2363, !2367, !2371, !2375, !2379, !2380, !2381, !2382, !2386}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2333, file: !1015, line: 222, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!356, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1015, line: 197, size: 1088, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2340, file: !1015, line: 199, baseType: !2264, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2340, file: !1015, line: 200, baseType: !759, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2340, file: !1015, line: 201, baseType: !1109, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2340, file: !1015, line: 202, baseType: !329, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2340, file: !1015, line: 205, baseType: !1406, size: 192, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2340, file: !1015, line: 206, baseType: !1406, size: 192, offset: 448)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2340, file: !1015, line: 207, baseType: !356, size: 32, offset: 640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2340, file: !1015, line: 208, baseType: !580, size: 128, offset: 704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2340, file: !1015, line: 209, baseType: !362, size: 64, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2340, file: !1015, line: 211, baseType: !971, size: 64, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2340, file: !1015, line: 212, baseType: !882, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2340, file: !1015, line: 213, baseType: !882, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2340, file: !1015, line: 214, baseType: !754, size: 64, offset: 1024)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2333, file: !1015, line: 223, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2339}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2333, file: !1015, line: 236, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!356, !1109, !329}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2333, file: !1015, line: 238, baseType: !2364, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!329, !1109, !1867}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2333, file: !1015, line: 239, baseType: !2368, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!329, !1109, !329, !1867}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2333, file: !1015, line: 240, baseType: !2372, size: 64, offset: 320)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !1109, !329}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2333, file: !1015, line: 242, baseType: !2376, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!968, !2339, !362, !971, !923}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2333, file: !1015, line: 252, baseType: !971, size: 64, offset: 448)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2333, file: !1015, line: 259, baseType: !882, size: 8, offset: 512)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2333, file: !1015, line: 260, baseType: !2376, size: 64, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2333, file: !1015, line: 263, baseType: !2383, size: 64, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!1896, !2339, !1898}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2333, file: !1015, line: 266, baseType: !2387, size: 64, offset: 704)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!356, !2339, !725}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2328, file: !1015, line: 109, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1015, line: 31, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2328, file: !1015, line: 110, baseType: !923, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2328, file: !1015, line: 111, baseType: !2264, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2265, file: !1015, line: 148, baseType: !329, size: 64, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2265, file: !1015, line: 154, baseType: !587, size: 64, offset: 832)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2265, file: !1015, line: 156, baseType: !373, size: 16, offset: 896)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2265, file: !1015, line: 157, baseType: !827, size: 16, offset: 912)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2265, file: !1015, line: 158, baseType: !2400, size: 64, offset: 960)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1015, line: 32, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2112, file: !2113, line: 71, baseType: !2403, size: 32, offset: 448)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2404, line: 19, size: 32, elements: !2405)
!2404 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2405 = !{!2406}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2403, file: !2404, line: 20, baseType: !550, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2112, file: !2113, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2112, file: !2113, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2112, file: !2113, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2112, file: !2113, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2112, file: !2113, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2108, file: !2109, line: 16, baseType: !343, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2108, file: !2109, line: 17, baseType: !1854, size: 64, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2108, file: !2109, line: 18, baseType: !580, size: 128, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2108, file: !2109, line: 19, baseType: !905, size: 32, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2108, file: !2109, line: 20, baseType: !7, size: 32, offset: 800)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2102, file: !208, line: 701, baseType: !362, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2102, file: !208, line: 702, baseType: !7, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !824, file: !208, line: 705, baseType: !489, size: 32, offset: 4032)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !824, file: !208, line: 708, baseType: !489, size: 32, offset: 4064)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !824, file: !208, line: 709, baseType: !1671, size: 64, offset: 4096)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !824, file: !208, line: 720, baseType: !329, size: 64, offset: 4160)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !790, file: !787, line: 98, baseType: !2424, size: 256, offset: 448)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !1675)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !790, file: !787, line: 101, baseType: !2426, size: 32, offset: 704)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2427, line: 25, size: 32, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2428 = !{!2429}
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !2427, line: 26, baseType: !2430, size: 32)
!2430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !2427, line: 26, size: 32, elements: !2431)
!2431 = !{!2432}
!2432 = !DIDerivedType(tag: DW_TAG_member, scope: !2430, file: !2427, line: 30, baseType: !2433, size: 32)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2430, file: !2427, line: 30, size: 32, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2433, file: !2427, line: 31, baseType: !1139)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2433, file: !2427, line: 32, baseType: !356, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !790, file: !787, line: 102, baseType: !1692, size: 64, offset: 768)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !790, file: !787, line: 103, baseType: !995, size: 64, offset: 832)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !790, file: !787, line: 104, baseType: !531, size: 64, offset: 896)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !790, file: !787, line: 105, baseType: !329, size: 64, offset: 960)
!2441 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !787, line: 107, baseType: !2442, size: 128, offset: 1024)
!2442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !787, line: 107, size: 128, elements: !2443)
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2442, file: !787, line: 108, baseType: !580, size: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2442, file: !787, line: 109, baseType: !1907, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !790, file: !787, line: 111, baseType: !580, size: 128, offset: 1152)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !790, file: !787, line: 112, baseType: !580, size: 128, offset: 1280)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !790, file: !787, line: 120, baseType: !2449, size: 128, offset: 1408)
!2449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !787, line: 116, size: 128, elements: !2450)
!2450 = !{!2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2449, file: !787, line: 117, baseType: !1035, size: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2449, file: !787, line: 118, baseType: !799, size: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2449, file: !787, line: 119, baseType: !772, size: 128, align: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !760, file: !208, line: 922, baseType: !823, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !760, file: !208, line: 923, baseType: !1854, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !760, file: !208, line: 929, baseType: !1139, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !760, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !760, file: !208, line: 931, baseType: !1156, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !760, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !760, file: !208, line: 933, baseType: !1688, size: 32, offset: 544)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !760, file: !208, line: 934, baseType: !1406, size: 192, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !760, file: !208, line: 935, baseType: !923, size: 64, offset: 768)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !760, file: !208, line: 936, baseType: !2464, size: 192, offset: 832)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !2465)
!2465 = !{!2466, !2467, !2489, !2490, !2491, !2492}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2464, file: !208, line: 886, baseType: !1963)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2464, file: !208, line: 887, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !2470)
!2470 = !{!2471, !2472, !2473, !2474, !2478, !2479, !2480, !2481}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2469, file: !217, line: 61, baseType: !550, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2469, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2469, file: !217, line: 63, baseType: !1139, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2469, file: !217, line: 65, baseType: !2475, size: 256, offset: 64)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, size: 256, elements: !2476)
!2476 = !{!2477}
!2477 = !DISubrange(count: 4)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2469, file: !217, line: 66, baseType: !1031, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2469, file: !217, line: 68, baseType: !1638, size: 128, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2469, file: !217, line: 69, baseType: !772, size: 128, align: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2469, file: !217, line: 70, baseType: !2482, size: 128, offset: 640)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2483, size: 128, elements: !710)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !2484)
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2483, file: !217, line: 55, baseType: !356, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2483, file: !217, line: 56, baseType: !2487, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2464, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2464, file: !208, line: 889, baseType: !830, size: 32, offset: 96)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2464, file: !208, line: 889, baseType: !830, size: 32, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2464, file: !208, line: 890, baseType: !356, size: 32, offset: 160)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !760, file: !208, line: 937, baseType: !2494, size: 64, offset: 1024)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2497, line: 111, size: 1280, elements: !2498)
!2497 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2518, !2519, !2520, !2521, !2522, !2523, !2633, !2634, !2635, !2636, !2662, !2663, !2673}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2496, file: !2497, line: 112, baseType: !555, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2496, file: !2497, line: 120, baseType: !830, size: 32, offset: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2496, file: !2497, line: 121, baseType: !838, size: 32, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2496, file: !2497, line: 122, baseType: !830, size: 32, offset: 96)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2496, file: !2497, line: 123, baseType: !838, size: 32, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2496, file: !2497, line: 124, baseType: !830, size: 32, offset: 160)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2496, file: !2497, line: 125, baseType: !838, size: 32, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2496, file: !2497, line: 126, baseType: !830, size: 32, offset: 224)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2496, file: !2497, line: 127, baseType: !838, size: 32, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2496, file: !2497, line: 128, baseType: !7, size: 32, offset: 288)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2496, file: !2497, line: 129, baseType: !2510, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2511, line: 26, baseType: !2512)
!2511 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2511, line: 24, size: 64, elements: !2513)
!2513 = !{!2514}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2512, file: !2511, line: 25, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 64, elements: !2516)
!2516 = !{!2517}
!2517 = !DISubrange(count: 2)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2496, file: !2497, line: 130, baseType: !2510, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2496, file: !2497, line: 131, baseType: !2510, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2496, file: !2497, line: 132, baseType: !2510, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2496, file: !2497, line: 133, baseType: !2510, size: 64, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2496, file: !2497, line: 135, baseType: !381, size: 8, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2496, file: !2497, line: 137, baseType: !2524, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2526, line: 189, size: 1664, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2527 = !{!2528, !2529, !2534, !2539, !2540, !2543, !2544, !2549, !2550, !2551, !2552, !2554, !2555, !2556, !2558, !2559, !2597, !2618}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2525, file: !2526, line: 190, baseType: !550, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2525, file: !2526, line: 191, baseType: !2530, size: 32, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2526, line: 28, baseType: !2531)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !328, line: 98, baseType: !2532)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !370, line: 20, baseType: !2533)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !372, line: 26, baseType: !356)
!2534 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !2526, line: 192, baseType: !2535, size: 192, offset: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2525, file: !2526, line: 192, size: 192, elements: !2536)
!2536 = !{!2537, !2538}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2535, file: !2526, line: 193, baseType: !580, size: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2535, file: !2526, line: 194, baseType: !528, size: 192, align: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2525, file: !2526, line: 199, baseType: !1152, size: 256, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2525, file: !2526, line: 200, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2526, line: 200, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2525, file: !2526, line: 201, baseType: !329, size: 64, offset: 576)
!2544 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !2526, line: 202, baseType: !2545, size: 64, offset: 640)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2525, file: !2526, line: 202, size: 64, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2545, file: !2526, line: 203, baseType: !930, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2545, file: !2526, line: 204, baseType: !930, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2525, file: !2526, line: 206, baseType: !930, size: 64, offset: 704)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2525, file: !2526, line: 207, baseType: !830, size: 32, offset: 768)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2525, file: !2526, line: 208, baseType: !838, size: 32, offset: 800)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2525, file: !2526, line: 209, baseType: !2553, size: 32, offset: 832)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2526, line: 31, baseType: !949)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2525, file: !2526, line: 210, baseType: !373, size: 16, offset: 864)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2525, file: !2526, line: 211, baseType: !373, size: 16, offset: 880)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2525, file: !2526, line: 215, baseType: !2557, size: 16, offset: 896)
!2557 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2525, file: !2526, line: 222, baseType: !531, size: 64, offset: 960)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !2526, line: 239, baseType: !2560, size: 320, offset: 1024)
!2560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2525, file: !2526, line: 239, size: 320, elements: !2561)
!2561 = !{!2562, !2589}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2560, file: !2526, line: 240, baseType: !2563, size: 320)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2526, line: 108, size: 320, elements: !2564)
!2564 = !{!2565, !2566, !2578, !2581, !2588}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2563, file: !2526, line: 110, baseType: !531, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !2526, line: 111, baseType: !2567, size: 64, offset: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2563, file: !2526, line: 111, size: 64, elements: !2568)
!2568 = !{!2569, !2577}
!2569 = !DIDerivedType(tag: DW_TAG_member, scope: !2567, file: !2526, line: 112, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2567, file: !2526, line: 112, size: 64, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2570, file: !2526, line: 114, baseType: !369, size: 16)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2570, file: !2526, line: 115, baseType: !2574, size: 48, offset: 16)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 48, elements: !2575)
!2575 = !{!2576}
!2576 = !DISubrange(count: 6)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2567, file: !2526, line: 121, baseType: !531, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2563, file: !2526, line: 123, baseType: !2579, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2526, line: 96, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2563, file: !2526, line: 124, baseType: !2582, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2526, line: 102, size: 192, elements: !2584)
!2584 = !{!2585, !2586, !2587}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2583, file: !2526, line: 103, baseType: !772, size: 128, align: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2583, file: !2526, line: 104, baseType: !550, size: 32, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2583, file: !2526, line: 105, baseType: !882, size: 8, offset: 160)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2563, file: !2526, line: 125, baseType: !339, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2560, file: !2526, line: 241, baseType: !2590, size: 320)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2560, file: !2526, line: 241, size: 320, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2590, file: !2526, line: 242, baseType: !531, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2590, file: !2526, line: 243, baseType: !531, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2590, file: !2526, line: 244, baseType: !2579, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2590, file: !2526, line: 245, baseType: !2582, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2590, file: !2526, line: 246, baseType: !362, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !2526, line: 254, baseType: !2598, size: 256, offset: 1344)
!2598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2525, file: !2526, line: 254, size: 256, elements: !2599)
!2599 = !{!2600, !2606}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2598, file: !2526, line: 255, baseType: !2601, size: 256)
!2601 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2526, line: 128, size: 256, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2601, file: !2526, line: 129, baseType: !329, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2601, file: !2526, line: 130, baseType: !2605, size: 256)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !2476)
!2606 = !DIDerivedType(tag: DW_TAG_member, scope: !2598, file: !2526, line: 256, baseType: !2607, size: 256)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2598, file: !2526, line: 256, size: 256, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2607, file: !2526, line: 258, baseType: !580, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2607, file: !2526, line: 259, baseType: !2611, size: 128, offset: 128)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2612, line: 22, size: 128, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2613 = !{!2614, !2617}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2611, file: !2612, line: 23, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2612, line: 23, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2611, file: !2612, line: 24, baseType: !531, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2525, file: !2526, line: 274, baseType: !2619, size: 64, offset: 1600)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2526, line: 170, size: 192, elements: !2621)
!2621 = !{!2622, !2631, !2632}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2620, file: !2526, line: 171, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2526, line: 165, baseType: !2624)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!356, !2524, !2627, !2629, !2524}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2620, file: !2526, line: 172, baseType: !2524, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2620, file: !2526, line: 173, baseType: !2579, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2496, file: !2497, line: 138, baseType: !2524, size: 64, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2496, file: !2497, line: 139, baseType: !2524, size: 64, offset: 832)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2496, file: !2497, line: 140, baseType: !2524, size: 64, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2496, file: !2497, line: 145, baseType: !2637, size: 64, offset: 960)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2639, line: 13, size: 896, elements: !2640)
!2639 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2638, file: !2639, line: 14, baseType: !550, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2638, file: !2639, line: 15, baseType: !555, size: 32, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2638, file: !2639, line: 16, baseType: !555, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2638, file: !2639, line: 21, baseType: !1156, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2638, file: !2639, line: 27, baseType: !531, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2638, file: !2639, line: 28, baseType: !531, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2638, file: !2639, line: 29, baseType: !1156, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2638, file: !2639, line: 32, baseType: !1035, size: 128, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2638, file: !2639, line: 33, baseType: !830, size: 32, offset: 512)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2638, file: !2639, line: 37, baseType: !1156, size: 64, offset: 576)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2638, file: !2639, line: 44, baseType: !2652, size: 256, offset: 640)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2653, line: 15, size: 256, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2652, file: !2653, line: 16, baseType: !510)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2652, file: !2653, line: 18, baseType: !356, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2652, file: !2653, line: 19, baseType: !356, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2652, file: !2653, line: 20, baseType: !356, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2652, file: !2653, line: 21, baseType: !356, size: 32, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2652, file: !2653, line: 22, baseType: !531, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2652, file: !2653, line: 23, baseType: !531, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2496, file: !2497, line: 146, baseType: !1776, size: 64, offset: 1024)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2496, file: !2497, line: 147, baseType: !2664, size: 64, offset: 1088)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2497, line: 25, size: 64, elements: !2666)
!2666 = !{!2667, !2668, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2665, file: !2497, line: 26, baseType: !555, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2665, file: !2497, line: 27, baseType: !356, size: 32, offset: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2665, file: !2497, line: 28, baseType: !2670, offset: 64)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, elements: !2671)
!2671 = !{!2672}
!2672 = !DISubrange(count: 0)
!2673 = !DIDerivedType(tag: DW_TAG_member, scope: !2496, file: !2497, line: 149, baseType: !2674, size: 128, offset: 1152)
!2674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2496, file: !2497, line: 149, size: 128, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2674, file: !2497, line: 150, baseType: !356, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2674, file: !2497, line: 151, baseType: !772, size: 128, align: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !760, file: !208, line: 938, baseType: !2679, size: 256, offset: 1088)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !2680)
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2679, file: !208, line: 897, baseType: !531, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2679, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2679, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2679, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2679, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2679, file: !208, line: 904, baseType: !923, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !760, file: !208, line: 940, baseType: !587, size: 64, offset: 1344)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !760, file: !208, line: 945, baseType: !329, size: 64, offset: 1408)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !760, file: !208, line: 949, baseType: !580, size: 128, offset: 1472)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !760, file: !208, line: 950, baseType: !580, size: 128, offset: 1600)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !760, file: !208, line: 952, baseType: !1130, size: 64, offset: 1728)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !760, file: !208, line: 953, baseType: !1290, size: 32, offset: 1792)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !760, file: !208, line: 954, baseType: !1290, size: 32, offset: 1824)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !726, file: !719, line: 362, baseType: !329, size: 64, offset: 1344)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !726, file: !719, line: 365, baseType: !1156, size: 64, offset: 1408)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !726, file: !719, line: 373, baseType: !2697, offset: 1472)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !719, line: 296, elements: !518)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !722, file: !719, line: 391, baseType: !524, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !722, file: !719, line: 392, baseType: !587, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !722, file: !719, line: 394, baseType: !2050, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !722, file: !719, line: 398, baseType: !531, size: 64, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !722, file: !719, line: 399, baseType: !531, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !722, file: !719, line: 405, baseType: !531, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !722, file: !719, line: 406, baseType: !531, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !722, file: !719, line: 407, baseType: !2706, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !737, line: 286, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 286, size: 64, elements: !2709)
!2709 = !{!2710}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2708, file: !737, line: 286, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !742, line: 18, baseType: !531)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !722, file: !719, line: 416, baseType: !555, size: 32, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !722, file: !719, line: 428, baseType: !555, size: 32, offset: 608)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !722, file: !719, line: 437, baseType: !555, size: 32, offset: 640)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !722, file: !719, line: 447, baseType: !555, size: 32, offset: 672)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !722, file: !719, line: 450, baseType: !1156, size: 64, offset: 704)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !722, file: !719, line: 452, baseType: !356, size: 32, offset: 768)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !722, file: !719, line: 454, baseType: !1139, offset: 800)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !722, file: !719, line: 457, baseType: !1152, size: 256, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !722, file: !719, line: 459, baseType: !580, size: 128, offset: 1088)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !722, file: !719, line: 466, baseType: !531, size: 64, offset: 1216)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !722, file: !719, line: 467, baseType: !531, size: 64, offset: 1280)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !722, file: !719, line: 469, baseType: !531, size: 64, offset: 1344)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !722, file: !719, line: 470, baseType: !531, size: 64, offset: 1408)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !722, file: !719, line: 471, baseType: !1158, size: 64, offset: 1472)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !722, file: !719, line: 472, baseType: !531, size: 64, offset: 1536)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !722, file: !719, line: 473, baseType: !531, size: 64, offset: 1600)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !722, file: !719, line: 474, baseType: !531, size: 64, offset: 1664)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !722, file: !719, line: 475, baseType: !531, size: 64, offset: 1728)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !722, file: !719, line: 477, baseType: !1139, offset: 1792)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !722, file: !719, line: 478, baseType: !531, size: 64, offset: 1792)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !722, file: !719, line: 478, baseType: !531, size: 64, offset: 1856)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !722, file: !719, line: 478, baseType: !531, size: 64, offset: 1920)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !722, file: !719, line: 478, baseType: !531, size: 64, offset: 1984)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !722, file: !719, line: 479, baseType: !531, size: 64, offset: 2048)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !722, file: !719, line: 479, baseType: !531, size: 64, offset: 2112)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !722, file: !719, line: 479, baseType: !531, size: 64, offset: 2176)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !722, file: !719, line: 480, baseType: !531, size: 64, offset: 2240)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !722, file: !719, line: 480, baseType: !531, size: 64, offset: 2304)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !722, file: !719, line: 480, baseType: !531, size: 64, offset: 2368)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !722, file: !719, line: 480, baseType: !531, size: 64, offset: 2432)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !722, file: !719, line: 482, baseType: !2743, size: 2816, offset: 2496)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 2816, elements: !2744)
!2744 = !{!2745}
!2745 = !DISubrange(count: 44)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !722, file: !719, line: 488, baseType: !2747, size: 256, offset: 5312)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2748, line: 60, size: 256, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2747, file: !2748, line: 61, baseType: !2751, size: 256)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1156, size: 256, elements: !2476)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !722, file: !719, line: 490, baseType: !2753, size: 64, offset: 5568)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !719, line: 490, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !719, line: 493, baseType: !2756, size: 896, offset: 5632)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2757, line: 53, baseType: !2758)
!2757 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2757, line: 13, size: 896, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2763, !2766, !2767, !2768, !2769, !2789, !2790, !2791}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2758, file: !2757, line: 18, baseType: !587, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2758, file: !2757, line: 28, baseType: !1158, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2758, file: !2757, line: 31, baseType: !1152, size: 256, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2758, file: !2757, line: 32, baseType: !2764, size: 64, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2757, line: 32, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2758, file: !2757, line: 37, baseType: !373, size: 16, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2758, file: !2757, line: 40, baseType: !1406, size: 192, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2758, file: !2757, line: 41, baseType: !329, size: 64, offset: 704)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2758, file: !2757, line: 42, baseType: !2770, size: 64, offset: 768)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2773, line: 13, size: 896, elements: !2774)
!2773 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2774 = !{!2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2772, file: !2773, line: 14, baseType: !329, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2772, file: !2773, line: 15, baseType: !531, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2772, file: !2773, line: 17, baseType: !531, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2772, file: !2773, line: 17, baseType: !531, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2772, file: !2773, line: 19, baseType: !330, size: 64, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2772, file: !2773, line: 21, baseType: !330, size: 64, offset: 320)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2772, file: !2773, line: 22, baseType: !330, size: 64, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2772, file: !2773, line: 23, baseType: !330, size: 64, offset: 448)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2772, file: !2773, line: 24, baseType: !330, size: 64, offset: 512)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2772, file: !2773, line: 25, baseType: !330, size: 64, offset: 576)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2772, file: !2773, line: 26, baseType: !330, size: 64, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2772, file: !2773, line: 27, baseType: !330, size: 64, offset: 704)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2772, file: !2773, line: 28, baseType: !330, size: 64, offset: 768)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2772, file: !2773, line: 29, baseType: !330, size: 64, offset: 832)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2758, file: !2757, line: 44, baseType: !555, size: 32, offset: 832)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2758, file: !2757, line: 50, baseType: !369, size: 16, offset: 864)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2758, file: !2757, line: 51, baseType: !2792, size: 16, offset: 880)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !370, line: 18, baseType: !2793)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !372, line: 23, baseType: !2557)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !719, line: 495, baseType: !531, size: 64, offset: 6528)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !722, file: !719, line: 497, baseType: !2796, size: 64, offset: 6592)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !719, line: 381, size: 384, elements: !2798)
!2798 = !{!2799, !2800, !2806}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2797, file: !719, line: 382, baseType: !555, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2797, file: !719, line: 383, baseType: !2801, size: 128, offset: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !719, line: 376, size: 128, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2801, file: !719, line: 377, baseType: !536, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2801, file: !719, line: 378, baseType: !2805, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2797, file: !719, line: 384, baseType: !2807, size: 192, offset: 192)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2808, line: 26, size: 192, elements: !2809)
!2808 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2807, file: !2808, line: 27, baseType: !7, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2807, file: !2808, line: 28, baseType: !2812, size: 128, offset: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2813, line: 43, size: 128, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2814 = !{!2815, !2816}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2812, file: !2813, line: 44, baseType: !510)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2812, file: !2813, line: 45, baseType: !580, size: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !722, file: !719, line: 500, baseType: !1139, offset: 6656)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !722, file: !719, line: 501, baseType: !2819, size: 64, offset: 6656)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !719, line: 387, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !722, file: !719, line: 516, baseType: !1776, size: 64, offset: 6720)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !722, file: !719, line: 519, baseType: !759, size: 64, offset: 6784)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !722, file: !719, line: 521, baseType: !2824, size: 64, offset: 6848)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !719, line: 521, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !722, file: !719, line: 545, baseType: !555, size: 32, offset: 6912)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !722, file: !719, line: 548, baseType: !882, size: 8, offset: 6944)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !722, file: !719, line: 550, baseType: !2829, offset: 6952)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2830, line: 142, elements: !518)
!2830 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !722, file: !719, line: 554, baseType: !1796, size: 256, offset: 6976)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !722, file: !719, line: 557, baseType: !488, size: 32, offset: 7232)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !718, file: !719, line: 565, baseType: !2834, offset: 7296)
!2834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, elements: !2835)
!2835 = !{!2836}
!2836 = !DISubrange(count: -1)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !537, file: !538, line: 758, baseType: !717, size: 64, offset: 3968)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !537, file: !538, line: 761, baseType: !2839, size: 320, offset: 4032)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2748, line: 34, size: 320, elements: !2840)
!2840 = !{!2841, !2842}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2839, file: !2748, line: 35, baseType: !587, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2839, file: !2748, line: 36, baseType: !2843, size: 256, offset: 64)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 256, elements: !2476)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !537, file: !538, line: 766, baseType: !356, size: 32, offset: 4352)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !537, file: !538, line: 767, baseType: !356, size: 32, offset: 4384)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !537, file: !538, line: 768, baseType: !356, size: 32, offset: 4416)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !537, file: !538, line: 770, baseType: !356, size: 32, offset: 4448)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !537, file: !538, line: 772, baseType: !531, size: 64, offset: 4480)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !537, file: !538, line: 775, baseType: !7, size: 32, offset: 4544)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !537, file: !538, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !537, file: !538, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !537, file: !538, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !537, file: !538, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !537, file: !538, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !537, file: !538, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !537, file: !538, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !537, file: !538, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !537, file: !538, line: 831, baseType: !531, size: 64, offset: 4672)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !537, file: !538, line: 833, baseType: !2860, size: 384, offset: 4736)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !2861)
!2861 = !{!2862, !2867}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2860, file: !196, line: 26, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!330, !2866}
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, scope: !2860, file: !196, line: 27, baseType: !2868, size: 320, offset: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2860, file: !196, line: 27, size: 320, elements: !2869)
!2869 = !{!2870, !2880, !2905}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2868, file: !196, line: 36, baseType: !2871, size: 320)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2868, file: !196, line: 29, size: 320, elements: !2872)
!2872 = !{!2873, !2875, !2876, !2877, !2878, !2879}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2871, file: !196, line: 30, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2871, file: !196, line: 31, baseType: !488, size: 32, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !196, line: 32, baseType: !488, size: 32, offset: 96)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2871, file: !196, line: 33, baseType: !488, size: 32, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2871, file: !196, line: 34, baseType: !587, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2871, file: !196, line: 35, baseType: !2874, size: 64, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2868, file: !196, line: 46, baseType: !2881, size: 192)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2868, file: !196, line: 38, size: 192, elements: !2882)
!2882 = !{!2883, !2884, !2885, !2904}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2881, file: !196, line: 39, baseType: !669, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2881, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !196, line: 41, baseType: !2886, size: 64, offset: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !196, line: 41, size: 64, elements: !2887)
!2887 = !{!2888, !2896}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2886, file: !196, line: 42, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2891, line: 7, size: 128, elements: !2892)
!2891 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2892 = !{!2893, !2895}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2890, file: !2891, line: 8, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !671, line: 93, baseType: !619)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2890, file: !2891, line: 9, baseType: !619, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2886, file: !196, line: 43, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2899, line: 7, size: 64, elements: !2900)
!2899 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2900 = !{!2901, !2903}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2898, file: !2899, line: 8, baseType: !2902, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2899, line: 5, baseType: !2532)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2898, file: !2899, line: 9, baseType: !2532, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2881, file: !196, line: 45, baseType: !587, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2868, file: !196, line: 54, baseType: !2906, size: 256)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2868, file: !196, line: 48, size: 256, elements: !2907)
!2907 = !{!2908, !2916, !2917, !2918, !2919}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2906, file: !196, line: 49, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2911, line: 36, size: 64, elements: !2912)
!2911 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2912 = !{!2913, !2914, !2915}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2910, file: !2911, line: 37, baseType: !356, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2910, file: !2911, line: 38, baseType: !2557, size: 16, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2910, file: !2911, line: 39, baseType: !2557, size: 16, offset: 48)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2906, file: !196, line: 50, baseType: !356, size: 32, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2906, file: !196, line: 51, baseType: !356, size: 32, offset: 96)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2906, file: !196, line: 52, baseType: !531, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2906, file: !196, line: 53, baseType: !531, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !537, file: !538, line: 835, baseType: !2921, size: 32, offset: 5120)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !328, line: 22, baseType: !2922)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !671, line: 28, baseType: !356)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !537, file: !538, line: 836, baseType: !2921, size: 32, offset: 5152)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !537, file: !538, line: 840, baseType: !531, size: 64, offset: 5184)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !537, file: !538, line: 849, baseType: !536, size: 64, offset: 5248)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !537, file: !538, line: 852, baseType: !536, size: 64, offset: 5312)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !537, file: !538, line: 857, baseType: !580, size: 128, offset: 5376)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !537, file: !538, line: 858, baseType: !580, size: 128, offset: 5504)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !537, file: !538, line: 859, baseType: !536, size: 64, offset: 5632)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !537, file: !538, line: 867, baseType: !580, size: 128, offset: 5696)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !537, file: !538, line: 868, baseType: !580, size: 128, offset: 5824)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !537, file: !538, line: 871, baseType: !2468, size: 64, offset: 5952)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !537, file: !538, line: 872, baseType: !2934, size: 512, offset: 6016)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 512, elements: !2476)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !537, file: !538, line: 873, baseType: !580, size: 128, offset: 6528)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !537, file: !538, line: 874, baseType: !580, size: 128, offset: 6656)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !537, file: !538, line: 876, baseType: !2938, size: 64, offset: 6784)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !537, file: !538, line: 879, baseType: !1103, size: 64, offset: 6848)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !537, file: !538, line: 882, baseType: !1103, size: 64, offset: 6912)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !537, file: !538, line: 884, baseType: !587, size: 64, offset: 6976)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !537, file: !538, line: 885, baseType: !587, size: 64, offset: 7040)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !537, file: !538, line: 890, baseType: !587, size: 64, offset: 7104)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !537, file: !538, line: 891, baseType: !2945, size: 128, offset: 7168)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !538, line: 242, size: 128, elements: !2946)
!2946 = !{!2947, !2948, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2945, file: !538, line: 244, baseType: !587, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2945, file: !538, line: 245, baseType: !587, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2945, file: !538, line: 246, baseType: !510, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !537, file: !538, line: 900, baseType: !531, size: 64, offset: 7296)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !537, file: !538, line: 901, baseType: !531, size: 64, offset: 7360)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !537, file: !538, line: 904, baseType: !587, size: 64, offset: 7424)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !537, file: !538, line: 907, baseType: !587, size: 64, offset: 7488)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !537, file: !538, line: 910, baseType: !531, size: 64, offset: 7552)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !537, file: !538, line: 911, baseType: !531, size: 64, offset: 7616)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !537, file: !538, line: 914, baseType: !2957, size: 640, offset: 7680)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2958, line: 123, size: 640, elements: !2959)
!2958 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2959 = !{!2960, !2966, !2967}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2957, file: !2958, line: 124, baseType: !2961, size: 576)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2962, size: 576, elements: !1047)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2958, line: 108, size: 192, elements: !2963)
!2963 = !{!2964, !2965}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2962, file: !2958, line: 109, baseType: !587, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2962, file: !2958, line: 110, baseType: !684, size: 128, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2957, file: !2958, line: 125, baseType: !7, size: 32, offset: 576)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2957, file: !2958, line: 126, baseType: !7, size: 32, offset: 608)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !537, file: !538, line: 917, baseType: !2969, size: 192, offset: 8320)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2958, line: 134, size: 192, elements: !2970)
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2969, file: !2958, line: 135, baseType: !772, size: 128, align: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2969, file: !2958, line: 136, baseType: !7, size: 32, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !537, file: !538, line: 923, baseType: !2494, size: 64, offset: 8512)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !537, file: !538, line: 926, baseType: !2494, size: 64, offset: 8576)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !537, file: !538, line: 929, baseType: !2494, size: 64, offset: 8640)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !537, file: !538, line: 933, baseType: !2524, size: 64, offset: 8704)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !537, file: !538, line: 943, baseType: !2978, size: 128, offset: 8768)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 128, elements: !1684)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !537, file: !538, line: 945, baseType: !2980, size: 64, offset: 8896)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !538, line: 49, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !537, file: !538, line: 956, baseType: !2983, size: 64, offset: 8960)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !538, line: 45, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !537, file: !538, line: 959, baseType: !2986, size: 64, offset: 9024)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !538, line: 959, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !537, file: !538, line: 962, baseType: !2989, size: 64, offset: 9088)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !538, line: 66, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !537, file: !538, line: 966, baseType: !2992, size: 64, offset: 9152)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2994, line: 35, flags: DIFlagFwdDecl)
!2994 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !537, file: !538, line: 969, baseType: !2996, size: 64, offset: 9216)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2998, line: 82, size: 7296, elements: !2999)
!2998 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2999 = !{!3000, !3001, !3002, !3003, !3004, !3005, !3006, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3035, !3044, !3045, !3047, !3048, !3049, !3052, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3082, !3083, !3090, !3091, !3092, !3093, !3094, !3095}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2997, file: !2998, line: 83, baseType: !550, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2997, file: !2998, line: 84, baseType: !555, size: 32, offset: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2997, file: !2998, line: 85, baseType: !356, size: 32, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2997, file: !2998, line: 86, baseType: !580, size: 128, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2997, file: !2998, line: 88, baseType: !1638, size: 128, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2997, file: !2998, line: 91, baseType: !536, size: 64, offset: 384)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2997, file: !2998, line: 94, baseType: !3007, size: 192, offset: 448)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3008, line: 30, size: 192, elements: !3009)
!3008 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3007, file: !3008, line: 31, baseType: !580, size: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3007, file: !3008, line: 32, baseType: !3012, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3013, line: 25, baseType: !3014)
!3013 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3013, line: 23, size: 64, elements: !3015)
!3015 = !{!3016}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3014, file: !3013, line: 24, baseType: !709, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2997, file: !2998, line: 97, baseType: !1031, size: 64, offset: 640)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2997, file: !2998, line: 100, baseType: !356, size: 32, offset: 704)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2997, file: !2998, line: 106, baseType: !356, size: 32, offset: 736)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2997, file: !2998, line: 107, baseType: !536, size: 64, offset: 768)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2997, file: !2998, line: 110, baseType: !356, size: 32, offset: 832)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2997, file: !2998, line: 111, baseType: !7, size: 32, offset: 864)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2997, file: !2998, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2997, file: !2998, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2997, file: !2998, line: 128, baseType: !356, size: 32, offset: 928)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2997, file: !2998, line: 129, baseType: !580, size: 128, offset: 960)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2997, file: !2998, line: 132, baseType: !627, size: 512, offset: 1088)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2997, file: !2998, line: 133, baseType: !635, size: 64, offset: 1600)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2997, file: !2998, line: 140, baseType: !3030, size: 256, offset: 1664)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3031, size: 256, elements: !2516)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2998, line: 38, size: 128, elements: !3032)
!3032 = !{!3033, !3034}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3031, file: !2998, line: 39, baseType: !587, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3031, file: !2998, line: 40, baseType: !587, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2997, file: !2998, line: 146, baseType: !3036, size: 192, offset: 1920)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2998, line: 66, size: 192, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3036, file: !2998, line: 67, baseType: !3039, size: 192)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2998, line: 47, size: 192, elements: !3040)
!3040 = !{!3041, !3042, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3039, file: !2998, line: 48, baseType: !1158, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3039, file: !2998, line: 49, baseType: !1158, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3039, file: !2998, line: 50, baseType: !1158, size: 64, offset: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2997, file: !2998, line: 150, baseType: !2957, size: 640, offset: 2112)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2997, file: !2998, line: 153, baseType: !3046, size: 256, offset: 2752)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2468, size: 256, elements: !2476)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2997, file: !2998, line: 159, baseType: !2468, size: 64, offset: 3008)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2997, file: !2998, line: 162, baseType: !356, size: 32, offset: 3072)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2997, file: !2998, line: 164, baseType: !3050, size: 64, offset: 3136)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2998, line: 164, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2997, file: !2998, line: 175, baseType: !3053, size: 32, offset: 3200)
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !674, line: 805, baseType: !3054)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !674, line: 798, size: 32, elements: !3055)
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3054, file: !674, line: 803, baseType: !794, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3054, file: !674, line: 804, baseType: !1139, offset: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2997, file: !2998, line: 176, baseType: !587, size: 64, offset: 3264)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2997, file: !2998, line: 176, baseType: !587, size: 64, offset: 3328)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2997, file: !2998, line: 176, baseType: !587, size: 64, offset: 3392)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2997, file: !2998, line: 176, baseType: !587, size: 64, offset: 3456)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2997, file: !2998, line: 177, baseType: !587, size: 64, offset: 3520)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2997, file: !2998, line: 178, baseType: !587, size: 64, offset: 3584)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2997, file: !2998, line: 179, baseType: !2945, size: 128, offset: 3648)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2997, file: !2998, line: 180, baseType: !531, size: 64, offset: 3776)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2997, file: !2998, line: 180, baseType: !531, size: 64, offset: 3840)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2997, file: !2998, line: 180, baseType: !531, size: 64, offset: 3904)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2997, file: !2998, line: 180, baseType: !531, size: 64, offset: 3968)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2997, file: !2998, line: 181, baseType: !531, size: 64, offset: 4032)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2997, file: !2998, line: 181, baseType: !531, size: 64, offset: 4096)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2997, file: !2998, line: 181, baseType: !531, size: 64, offset: 4160)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2997, file: !2998, line: 181, baseType: !531, size: 64, offset: 4224)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2997, file: !2998, line: 182, baseType: !531, size: 64, offset: 4288)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2997, file: !2998, line: 182, baseType: !531, size: 64, offset: 4352)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2997, file: !2998, line: 182, baseType: !531, size: 64, offset: 4416)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2997, file: !2998, line: 182, baseType: !531, size: 64, offset: 4480)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2997, file: !2998, line: 183, baseType: !531, size: 64, offset: 4544)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2997, file: !2998, line: 183, baseType: !531, size: 64, offset: 4608)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2997, file: !2998, line: 184, baseType: !3080, offset: 4672)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3081, line: 12, elements: !518)
!3081 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2997, file: !2998, line: 192, baseType: !589, size: 64, offset: 4672)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2997, file: !2998, line: 203, baseType: !3084, size: 2048, offset: 4736)
!3084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3085, size: 2048, elements: !1684)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3086, line: 43, size: 128, elements: !3087)
!3086 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3085, file: !3086, line: 44, baseType: !973, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3085, file: !3086, line: 45, baseType: !973, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2997, file: !2998, line: 220, baseType: !882, size: 8, offset: 6784)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2997, file: !2998, line: 221, baseType: !2557, size: 16, offset: 6800)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2997, file: !2998, line: 222, baseType: !2557, size: 16, offset: 6816)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2997, file: !2998, line: 224, baseType: !717, size: 64, offset: 6848)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2997, file: !2998, line: 227, baseType: !1406, size: 192, offset: 6912)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2997, file: !2998, line: 233, baseType: !1406, size: 192, offset: 7104)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !537, file: !538, line: 970, baseType: !3097, size: 64, offset: 9280)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2998, line: 20, size: 16576, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3098, file: !2998, line: 21, baseType: !1139)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3098, file: !2998, line: 22, baseType: !550, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3098, file: !2998, line: 23, baseType: !1638, size: 128, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3098, file: !2998, line: 24, baseType: !3104, size: 16384, offset: 192)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3105, size: 16384, elements: !2153)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3008, line: 49, size: 256, elements: !3106)
!3106 = !{!3107}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3105, file: !3008, line: 50, baseType: !3108, size: 256)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3008, line: 35, size: 256, elements: !3109)
!3109 = !{!3110, !3117, !3118, !3124}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3108, file: !3008, line: 37, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3112, line: 19, baseType: !3113)
!3112 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3112, line: 18, baseType: !3115)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !356}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3108, file: !3008, line: 38, baseType: !531, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3108, file: !3008, line: 44, baseType: !3119, size: 64, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3112, line: 22, baseType: !3120)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3112, line: 21, baseType: !3122)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3108, file: !3008, line: 46, baseType: !3012, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !537, file: !538, line: 971, baseType: !3012, size: 64, offset: 9344)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !537, file: !538, line: 972, baseType: !3012, size: 64, offset: 9408)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !537, file: !538, line: 974, baseType: !3012, size: 64, offset: 9472)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !537, file: !538, line: 975, baseType: !3007, size: 192, offset: 9536)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !537, file: !538, line: 976, baseType: !531, size: 64, offset: 9728)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !537, file: !538, line: 977, baseType: !971, size: 64, offset: 9792)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !537, file: !538, line: 978, baseType: !7, size: 32, offset: 9856)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !537, file: !538, line: 980, baseType: !775, size: 64, offset: 9920)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !537, file: !538, line: 989, baseType: !3134, size: 128, offset: 9984)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3135, line: 35, size: 128, elements: !3136)
!3135 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3136 = !{!3137, !3138, !3139}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3134, file: !3135, line: 36, baseType: !356, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3134, file: !3135, line: 37, baseType: !555, size: 32, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3134, file: !3135, line: 38, baseType: !3140, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3135, line: 23, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !537, file: !538, line: 992, baseType: !587, size: 64, offset: 10112)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !537, file: !538, line: 993, baseType: !587, size: 64, offset: 10176)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !537, file: !538, line: 996, baseType: !1139, offset: 10240)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !537, file: !538, line: 999, baseType: !510, offset: 10240)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !537, file: !538, line: 1001, baseType: !3147, size: 64, offset: 10240)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !538, line: 636, size: 64, elements: !3148)
!3148 = !{!3149}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3147, file: !538, line: 637, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !537, file: !538, line: 1005, baseType: !520, size: 128, offset: 10304)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !537, file: !538, line: 1007, baseType: !536, size: 64, offset: 10432)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !537, file: !538, line: 1009, baseType: !3154, size: 64, offset: 10496)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !538, line: 1009, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !537, file: !538, line: 1043, baseType: !329, size: 64, offset: 10560)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !537, file: !538, line: 1046, baseType: !3158, size: 64, offset: 10624)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !538, line: 41, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !537, file: !538, line: 1050, baseType: !3161, size: 64, offset: 10688)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !538, line: 42, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !537, file: !538, line: 1054, baseType: !3164, size: 64, offset: 10752)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !538, line: 55, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !537, file: !538, line: 1056, baseType: !1585, size: 64, offset: 10816)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !537, file: !538, line: 1058, baseType: !3168, size: 64, offset: 10880)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3170, line: 99, size: 704, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3171 = !{!3172, !3173, !3174, !3175, !3176, !3177, !3178, !3197, !3198}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3169, file: !3170, line: 100, baseType: !1156, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3169, file: !3170, line: 101, baseType: !555, size: 32, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3169, file: !3170, line: 102, baseType: !555, size: 32, offset: 96)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3169, file: !3170, line: 105, baseType: !1139, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3169, file: !3170, line: 107, baseType: !373, size: 16, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3169, file: !3170, line: 109, baseType: !1135, size: 128, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3169, file: !3170, line: 110, baseType: !3179, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3170, line: 73, size: 448, elements: !3181)
!3181 = !{!3182, !3185, !3186, !3191, !3196}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3180, file: !3170, line: 74, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3170, line: 74, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3180, file: !3170, line: 75, baseType: !3168, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !3180, file: !3170, line: 83, baseType: !3187, size: 128, offset: 128)
!3187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3180, file: !3170, line: 83, size: 128, elements: !3188)
!3188 = !{!3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3187, file: !3170, line: 84, baseType: !580, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3187, file: !3170, line: 85, baseType: !1316, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3180, file: !3170, line: 87, baseType: !3192, size: 128, offset: 256)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3180, file: !3170, line: 87, size: 128, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3192, file: !3170, line: 88, baseType: !1035, size: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3192, file: !3170, line: 89, baseType: !772, size: 128, align: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3180, file: !3170, line: 92, baseType: !7, size: 32, offset: 384)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3169, file: !3170, line: 111, baseType: !1031, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3169, file: !3170, line: 113, baseType: !1796, size: 256, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !537, file: !538, line: 1061, baseType: !3200, size: 64, offset: 10944)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !538, line: 43, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !537, file: !538, line: 1064, baseType: !531, size: 64, offset: 11008)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !537, file: !538, line: 1065, baseType: !3204, size: 64, offset: 11072)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3008, line: 14, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3008, line: 12, size: 384, elements: !3207)
!3207 = !{!3208}
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !3206, file: !3008, line: 13, baseType: !3209, size: 384)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3206, file: !3008, line: 13, size: 384, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3209, file: !3008, line: 13, baseType: !356, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3209, file: !3008, line: 13, baseType: !356, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3209, file: !3008, line: 13, baseType: !356, size: 32, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3209, file: !3008, line: 13, baseType: !3215, size: 256, offset: 128)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3216, line: 32, size: 256, elements: !3217)
!3216 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3217 = !{!3218, !3223, !3236, !3242, !3251, !3271, !3276}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3215, file: !3216, line: 37, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 34, size: 64, elements: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3219, file: !3216, line: 35, baseType: !2922, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3219, file: !3216, line: 36, baseType: !836, size: 32, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3215, file: !3216, line: 45, baseType: !3224, size: 192)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 40, size: 192, elements: !3225)
!3225 = !{!3226, !3228, !3229, !3235}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3224, file: !3216, line: 41, baseType: !3227, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !671, line: 95, baseType: !356)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3224, file: !3216, line: 42, baseType: !356, size: 32, offset: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3224, file: !3216, line: 43, baseType: !3230, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3216, line: 11, baseType: !3231)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3216, line: 8, size: 64, elements: !3232)
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3231, file: !3216, line: 9, baseType: !356, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3231, file: !3216, line: 10, baseType: !329, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3224, file: !3216, line: 44, baseType: !356, size: 32, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3215, file: !3216, line: 52, baseType: !3237, size: 128)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 48, size: 128, elements: !3238)
!3238 = !{!3239, !3240, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3237, file: !3216, line: 49, baseType: !2922, size: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3237, file: !3216, line: 50, baseType: !836, size: 32, offset: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3237, file: !3216, line: 51, baseType: !3230, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3215, file: !3216, line: 61, baseType: !3243, size: 256)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 55, size: 256, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3250}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3243, file: !3216, line: 56, baseType: !2922, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3243, file: !3216, line: 57, baseType: !836, size: 32, offset: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3243, file: !3216, line: 58, baseType: !356, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3243, file: !3216, line: 59, baseType: !3249, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !671, line: 94, baseType: !970)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3243, file: !3216, line: 60, baseType: !3249, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3215, file: !3216, line: 95, baseType: !3252, size: 256)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 64, size: 256, elements: !3253)
!3253 = !{!3254, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3252, file: !3216, line: 65, baseType: !329, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3216, line: 77, baseType: !3256, size: 192, offset: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3216, line: 77, size: 192, elements: !3257)
!3257 = !{!3258, !3259, !3266}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3256, file: !3216, line: 82, baseType: !2557, size: 16)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3256, file: !3216, line: 88, baseType: !3260, size: 192)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !3216, line: 84, size: 192, elements: !3261)
!3261 = !{!3262, !3264, !3265}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3260, file: !3216, line: 85, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 64, elements: !665)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3260, file: !3216, line: 86, baseType: !329, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3260, file: !3216, line: 87, baseType: !329, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3256, file: !3216, line: 93, baseType: !3267, size: 96)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !3216, line: 90, size: 96, elements: !3268)
!3268 = !{!3269, !3270}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3267, file: !3216, line: 91, baseType: !3263, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3267, file: !3216, line: 92, baseType: !489, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3215, file: !3216, line: 101, baseType: !3272, size: 128)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 98, size: 128, elements: !3273)
!3273 = !{!3274, !3275}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3272, file: !3216, line: 99, baseType: !330, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3272, file: !3216, line: 100, baseType: !356, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3215, file: !3216, line: 108, baseType: !3277, size: 128)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !3216, line: 104, size: 128, elements: !3278)
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3277, file: !3216, line: 105, baseType: !329, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3277, file: !3216, line: 106, baseType: !356, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3277, file: !3216, line: 107, baseType: !7, size: 32, offset: 96)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !537, file: !538, line: 1067, baseType: !3080, offset: 11136)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !537, file: !538, line: 1099, baseType: !3284, size: 64, offset: 11136)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !538, line: 56, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !537, file: !538, line: 1103, baseType: !580, size: 128, offset: 11200)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !537, file: !538, line: 1104, baseType: !3288, size: 64, offset: 11328)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !538, line: 46, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !537, file: !538, line: 1105, baseType: !1406, size: 192, offset: 11392)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !537, file: !538, line: 1106, baseType: !7, size: 32, offset: 11584)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !537, file: !538, line: 1109, baseType: !3293, size: 128, offset: 11648)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3294, size: 128, elements: !2516)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !538, line: 51, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !537, file: !538, line: 1110, baseType: !1406, size: 192, offset: 11776)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !537, file: !538, line: 1111, baseType: !580, size: 128, offset: 11968)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !537, file: !538, line: 1173, baseType: !3299, size: 64, offset: 12096)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3301, line: 62, size: 256, align: 256, elements: !3302)
!3301 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3302 = !{!3303, !3304, !3305, !3310}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3300, file: !3301, line: 75, baseType: !489, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3300, file: !3301, line: 90, baseType: !489, size: 32, offset: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3300, file: !3301, line: 124, baseType: !3306, size: 64, offset: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3300, file: !3301, line: 109, size: 64, elements: !3307)
!3307 = !{!3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3306, file: !3301, line: 110, baseType: !588, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3306, file: !3301, line: 112, baseType: !588, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3300, file: !3301, line: 144, baseType: !489, size: 32, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !537, file: !538, line: 1174, baseType: !488, size: 32, offset: 12160)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !537, file: !538, line: 1179, baseType: !531, size: 64, offset: 12224)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !537, file: !538, line: 1182, baseType: !3314, size: 128, offset: 12288)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2748, line: 76, size: 128, elements: !3315)
!3315 = !{!3316, !3321, !3322}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3314, file: !2748, line: 85, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3318, line: 7, size: 64, elements: !3319)
!3318 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3319 = !{!3320}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3317, file: !3318, line: 12, baseType: !706, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3314, file: !2748, line: 88, baseType: !882, size: 8, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3314, file: !2748, line: 95, baseType: !882, size: 8, offset: 72)
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !538, line: 1184, baseType: !3324, size: 128, offset: 12416)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !538, line: 1184, size: 128, elements: !3325)
!3325 = !{!3326, !3327}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3324, file: !538, line: 1185, baseType: !550, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3324, file: !538, line: 1186, baseType: !772, size: 128, align: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !537, file: !538, line: 1190, baseType: !2062, size: 64, offset: 12544)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !537, file: !538, line: 1192, baseType: !3330, size: 128, offset: 12608)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2748, line: 64, size: 128, elements: !3331)
!3331 = !{!3332, !3333, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3330, file: !2748, line: 65, baseType: !1118, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3330, file: !2748, line: 67, baseType: !489, size: 32, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3330, file: !2748, line: 68, baseType: !489, size: 32, offset: 96)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !537, file: !538, line: 1206, baseType: !356, size: 32, offset: 12736)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !537, file: !538, line: 1207, baseType: !356, size: 32, offset: 12768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !537, file: !538, line: 1209, baseType: !531, size: 64, offset: 12800)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !537, file: !538, line: 1219, baseType: !587, size: 64, offset: 12864)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !537, file: !538, line: 1220, baseType: !587, size: 64, offset: 12928)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !537, file: !538, line: 1317, baseType: !356, size: 32, offset: 12992)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !537, file: !538, line: 1319, baseType: !536, size: 64, offset: 13056)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !537, file: !538, line: 1322, baseType: !3343, size: 64, offset: 13120)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3345, line: 56, size: 512, elements: !3346)
!3345 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3355}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3344, file: !3345, line: 57, baseType: !3343, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3344, file: !3345, line: 58, baseType: !329, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3344, file: !3345, line: 59, baseType: !531, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3344, file: !3345, line: 60, baseType: !531, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3344, file: !3345, line: 61, baseType: !1203, size: 64, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3344, file: !3345, line: 62, baseType: !7, size: 32, offset: 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3344, file: !3345, line: 63, baseType: !3354, size: 64, offset: 384)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !328, line: 153, baseType: !587)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3344, file: !3345, line: 64, baseType: !2244, size: 64, offset: 448)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !537, file: !538, line: 1326, baseType: !550, size: 32, offset: 13184)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !537, file: !538, line: 1342, baseType: !329, size: 64, offset: 13248)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !537, file: !538, line: 1343, baseType: !588, size: 64, offset: 13312)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !537, file: !538, line: 1344, baseType: !587, size: 64, offset: 13376)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !537, file: !538, line: 1345, baseType: !588, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !537, file: !538, line: 1346, baseType: !588, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !537, file: !538, line: 1347, baseType: !588, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !537, file: !538, line: 1348, baseType: !772, size: 128, align: 64, offset: 13504)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !537, file: !538, line: 1358, baseType: !3365, size: 34816, offset: 13824)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3366, line: 485, size: 34816, elements: !3367)
!3366 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3397, !3398, !3399, !3400, !3401, !3402, !3405, !3406, !3407}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3365, file: !3366, line: 487, baseType: !3369, size: 192)
!3369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3370, size: 192, elements: !1047)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3371, line: 16, size: 64, elements: !3372)
!3371 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3370, file: !3371, line: 17, baseType: !369, size: 16)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3370, file: !3371, line: 18, baseType: !369, size: 16, offset: 16)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3370, file: !3371, line: 19, baseType: !369, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3370, file: !3371, line: 19, baseType: !369, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3370, file: !3371, line: 19, baseType: !369, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3370, file: !3371, line: 19, baseType: !369, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3370, file: !3371, line: 19, baseType: !369, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3370, file: !3371, line: 20, baseType: !369, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3370, file: !3371, line: 20, baseType: !369, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3370, file: !3371, line: 20, baseType: !369, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3370, file: !3371, line: 20, baseType: !369, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3370, file: !3371, line: 20, baseType: !369, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3370, file: !3371, line: 20, baseType: !369, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3365, file: !3366, line: 491, baseType: !531, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3365, file: !3366, line: 495, baseType: !373, size: 16, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3365, file: !3366, line: 496, baseType: !373, size: 16, offset: 272)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3365, file: !3366, line: 497, baseType: !373, size: 16, offset: 288)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3365, file: !3366, line: 498, baseType: !373, size: 16, offset: 304)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3365, file: !3366, line: 502, baseType: !531, size: 64, offset: 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3365, file: !3366, line: 503, baseType: !531, size: 64, offset: 384)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3365, file: !3366, line: 514, baseType: !3394, size: 256, offset: 448)
!3394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3395, size: 256, elements: !2476)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3366, line: 483, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3365, file: !3366, line: 516, baseType: !531, size: 64, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3365, file: !3366, line: 518, baseType: !531, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3365, file: !3366, line: 520, baseType: !531, size: 64, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3365, file: !3366, line: 521, baseType: !531, size: 64, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3365, file: !3366, line: 522, baseType: !531, size: 64, offset: 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3365, file: !3366, line: 528, baseType: !3403, size: 64, offset: 1024)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3366, line: 10, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3365, file: !3366, line: 535, baseType: !531, size: 64, offset: 1088)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3365, file: !3366, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3365, file: !3366, line: 540, baseType: !3408, size: 33280, offset: 1536)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3409, line: 317, size: 33280, elements: !3410)
!3409 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3410 = !{!3411, !3412, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3408, file: !3409, line: 330, baseType: !7, size: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3408, file: !3409, line: 337, baseType: !531, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3408, file: !3409, line: 348, baseType: !3414, size: 32768, offset: 512)
!3414 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3409, line: 304, size: 32768, elements: !3415)
!3415 = !{!3416, !3431, !3468, !3518, !3531}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3414, file: !3409, line: 305, baseType: !3417, size: 896)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3409, line: 12, size: 896, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3430}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3417, file: !3409, line: 13, baseType: !488, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3417, file: !3409, line: 14, baseType: !488, size: 32, offset: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3417, file: !3409, line: 15, baseType: !488, size: 32, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3417, file: !3409, line: 16, baseType: !488, size: 32, offset: 96)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3417, file: !3409, line: 17, baseType: !488, size: 32, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3417, file: !3409, line: 18, baseType: !488, size: 32, offset: 160)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3417, file: !3409, line: 19, baseType: !488, size: 32, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3417, file: !3409, line: 22, baseType: !3427, size: 640, offset: 224)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 640, elements: !3428)
!3428 = !{!3429}
!3429 = !DISubrange(count: 20)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3417, file: !3409, line: 25, baseType: !488, size: 32, offset: 864)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3414, file: !3409, line: 306, baseType: !3432, size: 4096, align: 128)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3409, line: 34, size: 4096, align: 128, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3437, !3438, !3453, !3454, !3455, !3457, !3459, !3463}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3432, file: !3409, line: 35, baseType: !369, size: 16)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3432, file: !3409, line: 36, baseType: !369, size: 16, offset: 16)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3432, file: !3409, line: 37, baseType: !369, size: 16, offset: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3432, file: !3409, line: 38, baseType: !369, size: 16, offset: 48)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3432, file: !3409, line: 39, baseType: !3439, size: 128, offset: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3432, file: !3409, line: 39, size: 128, elements: !3440)
!3440 = !{!3441, !3446}
!3441 = !DIDerivedType(tag: DW_TAG_member, scope: !3439, file: !3409, line: 40, baseType: !3442, size: 128)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3439, file: !3409, line: 40, size: 128, elements: !3443)
!3443 = !{!3444, !3445}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3442, file: !3409, line: 41, baseType: !587, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3442, file: !3409, line: 42, baseType: !587, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3439, file: !3409, line: 44, baseType: !3447, size: 128)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3439, file: !3409, line: 44, size: 128, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3447, file: !3409, line: 45, baseType: !488, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3447, file: !3409, line: 46, baseType: !488, size: 32, offset: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3447, file: !3409, line: 47, baseType: !488, size: 32, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3447, file: !3409, line: 48, baseType: !488, size: 32, offset: 96)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3432, file: !3409, line: 51, baseType: !488, size: 32, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3432, file: !3409, line: 52, baseType: !488, size: 32, offset: 224)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3432, file: !3409, line: 55, baseType: !3456, size: 1024, offset: 256)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 1024, elements: !1675)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3432, file: !3409, line: 58, baseType: !3458, size: 2048, offset: 1280)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 2048, elements: !2153)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3432, file: !3409, line: 60, baseType: !3460, size: 384, offset: 3328)
!3460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 384, elements: !3461)
!3461 = !{!3462}
!3462 = !DISubrange(count: 12)
!3463 = !DIDerivedType(tag: DW_TAG_member, scope: !3432, file: !3409, line: 62, baseType: !3464, size: 384, offset: 3712)
!3464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3432, file: !3409, line: 62, size: 384, elements: !3465)
!3465 = !{!3466, !3467}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3464, file: !3409, line: 63, baseType: !3460, size: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3464, file: !3409, line: 64, baseType: !3460, size: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3414, file: !3409, line: 307, baseType: !3469, size: 1088)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3409, line: 79, size: 1088, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3517}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3469, file: !3409, line: 80, baseType: !488, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3469, file: !3409, line: 81, baseType: !488, size: 32, offset: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3469, file: !3409, line: 82, baseType: !488, size: 32, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3469, file: !3409, line: 83, baseType: !488, size: 32, offset: 96)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3469, file: !3409, line: 84, baseType: !488, size: 32, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3469, file: !3409, line: 85, baseType: !488, size: 32, offset: 160)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3469, file: !3409, line: 86, baseType: !488, size: 32, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3469, file: !3409, line: 88, baseType: !3427, size: 640, offset: 224)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3469, file: !3409, line: 89, baseType: !379, size: 8, offset: 864)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3469, file: !3409, line: 90, baseType: !379, size: 8, offset: 872)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3469, file: !3409, line: 91, baseType: !379, size: 8, offset: 880)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3469, file: !3409, line: 92, baseType: !379, size: 8, offset: 888)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3469, file: !3409, line: 93, baseType: !379, size: 8, offset: 896)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3469, file: !3409, line: 94, baseType: !379, size: 8, offset: 904)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3469, file: !3409, line: 95, baseType: !3486, size: 64, offset: 960)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3488, line: 11, size: 128, elements: !3489)
!3488 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3489 = !{!3490, !3491}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3487, file: !3488, line: 12, baseType: !330, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3487, file: !3488, line: 13, baseType: !3492, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3494, line: 56, size: 1344, elements: !3495)
!3494 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3493, file: !3494, line: 61, baseType: !531, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3493, file: !3494, line: 62, baseType: !531, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3493, file: !3494, line: 63, baseType: !531, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3493, file: !3494, line: 64, baseType: !531, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3493, file: !3494, line: 65, baseType: !531, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3493, file: !3494, line: 66, baseType: !531, size: 64, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3493, file: !3494, line: 68, baseType: !531, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3493, file: !3494, line: 69, baseType: !531, size: 64, offset: 448)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3493, file: !3494, line: 70, baseType: !531, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3493, file: !3494, line: 71, baseType: !531, size: 64, offset: 576)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3493, file: !3494, line: 72, baseType: !531, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3493, file: !3494, line: 73, baseType: !531, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3493, file: !3494, line: 74, baseType: !531, size: 64, offset: 768)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3493, file: !3494, line: 75, baseType: !531, size: 64, offset: 832)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3493, file: !3494, line: 76, baseType: !531, size: 64, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3493, file: !3494, line: 81, baseType: !531, size: 64, offset: 960)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3493, file: !3494, line: 83, baseType: !531, size: 64, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3493, file: !3494, line: 84, baseType: !531, size: 64, offset: 1088)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3493, file: !3494, line: 85, baseType: !531, size: 64, offset: 1152)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3493, file: !3494, line: 86, baseType: !531, size: 64, offset: 1216)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3493, file: !3494, line: 87, baseType: !531, size: 64, offset: 1280)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3469, file: !3409, line: 96, baseType: !488, size: 32, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3414, file: !3409, line: 308, baseType: !3519, size: 4608, align: 512)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3409, line: 289, size: 4608, align: 512, elements: !3520)
!3520 = !{!3521, !3522, !3529}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3519, file: !3409, line: 290, baseType: !3432, size: 4096, align: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3519, file: !3409, line: 291, baseType: !3523, size: 512, offset: 4096)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3409, line: 268, size: 512, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3523, file: !3409, line: 269, baseType: !587, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3523, file: !3409, line: 270, baseType: !587, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3523, file: !3409, line: 271, baseType: !3528, size: 384, offset: 128)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 384, elements: !2575)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3519, file: !3409, line: 292, baseType: !3530, offset: 4608)
!3530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !2671)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3414, file: !3409, line: 309, baseType: !3532, size: 32768)
!3532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 32768, elements: !3533)
!3533 = !{!3534}
!3534 = !DISubrange(count: 4096)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !446, file: !447, line: 704, baseType: !506, size: 192, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !446, file: !447, line: 706, baseType: !356, size: 32, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !446, file: !447, line: 707, baseType: !356, size: 32, offset: 736)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !446, file: !447, line: 708, baseType: !3539, size: 5568, offset: 768)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !3540)
!3540 = !{!3541, !3542, !3544, !3547, !3548, !3599, !3690, !3691, !3692, !3693, !3694, !3703, !3808, !3821, !4016, !4017, !4021, !4023, !4024, !4025, !4029, !4035, !4036, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4077, !4078, !4079, !4082, !4085, !4086, !4087, !4088}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3539, file: !237, line: 462, baseType: !2112, size: 512)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3539, file: !237, line: 463, baseType: !3543, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3539, file: !237, line: 465, baseType: !3545, size: 64, offset: 576)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3539, file: !237, line: 467, baseType: !339, size: 64, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3539, file: !237, line: 468, baseType: !3549, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3551)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3559, !3564, !3568}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3551, file: !237, line: 88, baseType: !339, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3551, file: !237, line: 89, baseType: !2191, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3551, file: !237, line: 90, baseType: !3556, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!356, !3543, !2146}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3551, file: !237, line: 91, baseType: !3560, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!362, !3543, !3563, !2261, !2262}
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3551, file: !237, line: 93, baseType: !3565, size: 64, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3543}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3551, file: !237, line: 95, baseType: !3569, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3571)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3572)
!3572 = !{!3573, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3571, file: !244, line: 279, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!356, !3543}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3571, file: !244, line: 280, baseType: !3565, size: 64, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3571, file: !244, line: 281, baseType: !3574, size: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3571, file: !244, line: 282, baseType: !3574, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3571, file: !244, line: 283, baseType: !3574, size: 64, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3571, file: !244, line: 284, baseType: !3574, size: 64, offset: 320)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3571, file: !244, line: 285, baseType: !3574, size: 64, offset: 384)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3571, file: !244, line: 286, baseType: !3574, size: 64, offset: 448)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3571, file: !244, line: 287, baseType: !3574, size: 64, offset: 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3571, file: !244, line: 288, baseType: !3574, size: 64, offset: 576)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3571, file: !244, line: 289, baseType: !3574, size: 64, offset: 640)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3571, file: !244, line: 290, baseType: !3574, size: 64, offset: 704)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3571, file: !244, line: 291, baseType: !3574, size: 64, offset: 768)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3571, file: !244, line: 292, baseType: !3574, size: 64, offset: 832)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3571, file: !244, line: 293, baseType: !3574, size: 64, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3571, file: !244, line: 294, baseType: !3574, size: 64, offset: 960)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3571, file: !244, line: 295, baseType: !3574, size: 64, offset: 1024)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3571, file: !244, line: 296, baseType: !3574, size: 64, offset: 1088)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3571, file: !244, line: 297, baseType: !3574, size: 64, offset: 1152)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3571, file: !244, line: 298, baseType: !3574, size: 64, offset: 1216)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3571, file: !244, line: 299, baseType: !3574, size: 64, offset: 1280)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3571, file: !244, line: 300, baseType: !3574, size: 64, offset: 1344)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3571, file: !244, line: 301, baseType: !3574, size: 64, offset: 1408)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3539, file: !237, line: 470, baseType: !3600, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3602, line: 82, size: 1408, elements: !3603)
!3602 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609, !3610, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3685, !3688, !3689}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3601, file: !3602, line: 83, baseType: !339, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3601, file: !3602, line: 84, baseType: !339, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3601, file: !3602, line: 85, baseType: !3543, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3601, file: !3602, line: 86, baseType: !2191, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3601, file: !3602, line: 87, baseType: !2191, size: 64, offset: 256)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3601, file: !3602, line: 88, baseType: !2191, size: 64, offset: 320)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3601, file: !3602, line: 90, baseType: !3611, size: 64, offset: 384)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!356, !3543, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623, !3636, !3649, !3650, !3651, !3652, !3653, !3661, !3662, !3663, !3664, !3665, !3666}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3615, file: !231, line: 96, baseType: !339, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3615, file: !231, line: 97, baseType: !3600, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3615, file: !231, line: 99, baseType: !343, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3615, file: !231, line: 100, baseType: !339, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3615, file: !231, line: 102, baseType: !882, size: 8, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3615, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3615, file: !231, line: 105, baseType: !3624, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3626)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3627, line: 262, size: 1600, elements: !3628)
!3627 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3628 = !{!3629, !3630, !3631, !3635}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3626, file: !3627, line: 263, baseType: !1674, size: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3626, file: !3627, line: 264, baseType: !1674, size: 256, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3626, file: !3627, line: 265, baseType: !3632, size: 1024, offset: 512)
!3632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 1024, elements: !3633)
!3633 = !{!3634}
!3634 = !DISubrange(count: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3626, file: !3627, line: 266, baseType: !2244, size: 64, offset: 1536)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3615, file: !231, line: 106, baseType: !3637, size: 64, offset: 384)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3627, line: 210, size: 256, elements: !3640)
!3640 = !{!3641, !3645, !3647, !3648}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3639, file: !3627, line: 211, baseType: !3642, size: 72)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 72, elements: !3643)
!3643 = !{!3644}
!3644 = !DISubrange(count: 9)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3639, file: !3627, line: 212, baseType: !3646, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3627, line: 14, baseType: !531)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3639, file: !3627, line: 213, baseType: !489, size: 32, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3639, file: !3627, line: 214, baseType: !489, size: 32, offset: 224)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3615, file: !231, line: 108, baseType: !3574, size: 64, offset: 448)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3615, file: !231, line: 109, baseType: !3565, size: 64, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3615, file: !231, line: 110, baseType: !3574, size: 64, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3615, file: !231, line: 111, baseType: !3565, size: 64, offset: 640)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3615, file: !231, line: 112, baseType: !3654, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!356, !3543, !3657}
!3657 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3658)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3659)
!3659 = !{!3660}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3658, file: !244, line: 51, baseType: !356, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3615, file: !231, line: 113, baseType: !3574, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3615, file: !231, line: 114, baseType: !2191, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3615, file: !231, line: 115, baseType: !2191, size: 64, offset: 896)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3615, file: !231, line: 117, baseType: !3569, size: 64, offset: 960)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3615, file: !231, line: 118, baseType: !3565, size: 64, offset: 1024)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3615, file: !231, line: 120, baseType: !3667, size: 64, offset: 1088)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3601, file: !3602, line: 91, baseType: !3556, size: 64, offset: 448)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3601, file: !3602, line: 92, baseType: !3574, size: 64, offset: 512)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3601, file: !3602, line: 93, baseType: !3565, size: 64, offset: 576)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3601, file: !3602, line: 94, baseType: !3574, size: 64, offset: 640)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3601, file: !3602, line: 95, baseType: !3565, size: 64, offset: 704)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3601, file: !3602, line: 97, baseType: !3574, size: 64, offset: 768)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3601, file: !3602, line: 98, baseType: !3574, size: 64, offset: 832)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3601, file: !3602, line: 100, baseType: !3654, size: 64, offset: 896)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3601, file: !3602, line: 101, baseType: !3574, size: 64, offset: 960)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3601, file: !3602, line: 103, baseType: !3574, size: 64, offset: 1024)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3601, file: !3602, line: 105, baseType: !3574, size: 64, offset: 1088)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3601, file: !3602, line: 107, baseType: !3569, size: 64, offset: 1152)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3601, file: !3602, line: 109, baseType: !3682, size: 64, offset: 1216)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3602, line: 109, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3601, file: !3602, line: 111, baseType: !3686, size: 64, offset: 1280)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3602, line: 111, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3601, file: !3602, line: 112, baseType: !1041, offset: 1344)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3601, file: !3602, line: 114, baseType: !882, size: 8, offset: 1344)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3539, file: !237, line: 471, baseType: !3614, size: 64, offset: 832)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3539, file: !237, line: 473, baseType: !329, size: 64, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3539, file: !237, line: 475, baseType: !329, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3539, file: !237, line: 480, baseType: !1406, size: 192, offset: 1024)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3539, file: !237, line: 484, baseType: !3695, size: 576, offset: 1216)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3695, file: !237, line: 362, baseType: !580, size: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3695, file: !237, line: 363, baseType: !580, size: 128, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3695, file: !237, line: 364, baseType: !580, size: 128, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3695, file: !237, line: 365, baseType: !580, size: 128, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3695, file: !237, line: 366, baseType: !882, size: 8, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3695, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3539, file: !237, line: 485, baseType: !3704, size: 2304, offset: 1792)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3801, !3805}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3704, file: !244, line: 566, baseType: !3657, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3704, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3704, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3704, file: !244, line: 569, baseType: !882, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3704, file: !244, line: 570, baseType: !882, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3704, file: !244, line: 571, baseType: !882, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3704, file: !244, line: 572, baseType: !882, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3704, file: !244, line: 573, baseType: !882, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3704, file: !244, line: 574, baseType: !882, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3704, file: !244, line: 575, baseType: !882, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3704, file: !244, line: 576, baseType: !882, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3704, file: !244, line: 577, baseType: !488, size: 32, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3704, file: !244, line: 578, baseType: !1139, offset: 96)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3704, file: !244, line: 580, baseType: !580, size: 128, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3704, file: !244, line: 581, baseType: !2807, size: 192, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3704, file: !244, line: 582, baseType: !3722, size: 64, offset: 448)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3724, line: 43, size: 1472, elements: !3725)
!3724 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3733, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3723, file: !3724, line: 44, baseType: !339, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3723, file: !3724, line: 45, baseType: !356, size: 32, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3723, file: !3724, line: 46, baseType: !580, size: 128, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3723, file: !3724, line: 47, baseType: !1139, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3723, file: !3724, line: 48, baseType: !3731, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3723, file: !3724, line: 49, baseType: !3734, size: 320, offset: 320)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3735, line: 11, size: 320, elements: !3736)
!3735 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3736 = !{!3737, !3738, !3739, !3744}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3734, file: !3735, line: 16, baseType: !1035, size: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3734, file: !3735, line: 17, baseType: !531, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3734, file: !3735, line: 18, baseType: !3740, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !3743}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3734, file: !3735, line: 19, baseType: !488, size: 32, offset: 256)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3723, file: !3724, line: 50, baseType: !531, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3723, file: !3724, line: 51, baseType: !635, size: 64, offset: 704)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3723, file: !3724, line: 52, baseType: !635, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3723, file: !3724, line: 53, baseType: !635, size: 64, offset: 832)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3723, file: !3724, line: 54, baseType: !635, size: 64, offset: 896)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3723, file: !3724, line: 55, baseType: !635, size: 64, offset: 960)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3723, file: !3724, line: 56, baseType: !531, size: 64, offset: 1024)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3723, file: !3724, line: 57, baseType: !531, size: 64, offset: 1088)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3723, file: !3724, line: 58, baseType: !531, size: 64, offset: 1152)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3723, file: !3724, line: 59, baseType: !531, size: 64, offset: 1216)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3723, file: !3724, line: 60, baseType: !531, size: 64, offset: 1280)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3723, file: !3724, line: 61, baseType: !3543, size: 64, offset: 1344)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3723, file: !3724, line: 62, baseType: !882, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3723, file: !3724, line: 63, baseType: !882, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3704, file: !244, line: 583, baseType: !882, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3704, file: !244, line: 584, baseType: !882, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3704, file: !244, line: 585, baseType: !882, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3704, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3704, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3704, file: !244, line: 592, baseType: !627, size: 512, offset: 576)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3704, file: !244, line: 593, baseType: !587, size: 64, offset: 1088)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3704, file: !244, line: 594, baseType: !1796, size: 256, offset: 1152)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3704, file: !244, line: 595, baseType: !1638, size: 128, offset: 1408)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3704, file: !244, line: 596, baseType: !3731, size: 64, offset: 1536)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3704, file: !244, line: 597, baseType: !555, size: 32, offset: 1600)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3704, file: !244, line: 598, baseType: !555, size: 32, offset: 1632)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3704, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3704, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3704, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3704, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3704, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3704, file: !244, line: 604, baseType: !882, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3704, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3704, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3704, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3704, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3704, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3704, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3704, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3704, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3704, file: !244, line: 613, baseType: !356, size: 32, offset: 1792)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3704, file: !244, line: 614, baseType: !356, size: 32, offset: 1824)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3704, file: !244, line: 615, baseType: !587, size: 64, offset: 1856)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3704, file: !244, line: 616, baseType: !587, size: 64, offset: 1920)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3704, file: !244, line: 617, baseType: !587, size: 64, offset: 1984)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3704, file: !244, line: 618, baseType: !587, size: 64, offset: 2048)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3704, file: !244, line: 620, baseType: !3792, size: 64, offset: 2112)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3794)
!3794 = !{!3795, !3796, !3797, !3798}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3793, file: !244, line: 537, baseType: !1139)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3793, file: !244, line: 538, baseType: !7, size: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3793, file: !244, line: 540, baseType: !580, size: 128, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3793, file: !244, line: 543, baseType: !3799, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3704, file: !244, line: 621, baseType: !3802, size: 64, offset: 2176)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3543, !2532}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3704, file: !244, line: 622, baseType: !3806, size: 64, offset: 2240)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3539, file: !237, line: 486, baseType: !3809, size: 64, offset: 4096)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3818, !3819, !3820}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3810, file: !244, line: 643, baseType: !3571, size: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3810, file: !244, line: 644, baseType: !3574, size: 64, offset: 1472)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3810, file: !244, line: 645, baseType: !3815, size: 64, offset: 1536)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !3543, !882}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3810, file: !244, line: 646, baseType: !3574, size: 64, offset: 1600)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3810, file: !244, line: 647, baseType: !3565, size: 64, offset: 1664)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3810, file: !244, line: 648, baseType: !3565, size: 64, offset: 1728)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3539, file: !237, line: 493, baseType: !3822, size: 64, offset: 4160)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3824)
!3824 = !{!3825, !3826, !3827, !4000, !4001, !4002, !4003, !4004, !4005, !4008, !4009, !4010, !4011, !4012, !4013, !4014}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3823, file: !258, line: 163, baseType: !580, size: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3823, file: !258, line: 164, baseType: !339, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3823, file: !258, line: 165, baseType: !3828, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3830)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3831)
!3831 = !{!3832, !3950, !3961, !3966, !3970, !3977, !3981, !3985, !3992, !3996}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3830, file: !258, line: 106, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!356, !3822, !3836, !257}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3838, line: 51, size: 1344, elements: !3839)
!3838 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3839 = !{!3840, !3841, !3843, !3844, !3934, !3943, !3944, !3945, !3946, !3947, !3948, !3949}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3837, file: !3838, line: 52, baseType: !339, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3837, file: !3838, line: 53, baseType: !3842, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3838, line: 28, baseType: !488)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3837, file: !3838, line: 54, baseType: !339, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3837, file: !3838, line: 55, baseType: !3845, size: 192, offset: 192)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3846, line: 17, size: 192, elements: !3847)
!3846 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3847 = !{!3848, !3850, !3933}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3845, file: !3846, line: 18, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3845, file: !3846, line: 19, baseType: !3851, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3853)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3846, line: 110, size: 1152, elements: !3854)
!3854 = !{!3855, !3859, !3863, !3869, !3875, !3879, !3883, !3888, !3892, !3893, !3897, !3901, !3905, !3916, !3917, !3918, !3919, !3929}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3853, file: !3846, line: 111, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!3849, !3849}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3853, file: !3846, line: 112, baseType: !3860, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{null, !3849}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3853, file: !3846, line: 113, baseType: !3864, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!882, !3867}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3845)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3853, file: !3846, line: 114, baseType: !3870, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!2244, !3867, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3539)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3853, file: !3846, line: 116, baseType: !3876, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!882, !3867, !339}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3853, file: !3846, line: 118, baseType: !3880, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!356, !3867, !339, !7, !329, !971}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3853, file: !3846, line: 123, baseType: !3884, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!356, !3867, !339, !3887, !971}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3853, file: !3846, line: 126, baseType: !3889, size: 64, offset: 448)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!339, !3867}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3853, file: !3846, line: 127, baseType: !3889, size: 64, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3853, file: !3846, line: 128, baseType: !3894, size: 64, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!3849, !3867}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3853, file: !3846, line: 130, baseType: !3898, size: 64, offset: 640)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!3849, !3867, !3849}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3853, file: !3846, line: 133, baseType: !3902, size: 64, offset: 704)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!3849, !3867, !339}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3853, file: !3846, line: 135, baseType: !3906, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!356, !3867, !339, !339, !7, !7, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3846, line: 43, size: 640, elements: !3911)
!3911 = !{!3912, !3913, !3914}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3910, file: !3846, line: 44, baseType: !3849, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3910, file: !3846, line: 45, baseType: !7, size: 32, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3910, file: !3846, line: 46, baseType: !3915, size: 512, offset: 128)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 512, elements: !665)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3853, file: !3846, line: 140, baseType: !3898, size: 64, offset: 832)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3853, file: !3846, line: 143, baseType: !3894, size: 64, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3853, file: !3846, line: 145, baseType: !3856, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3853, file: !3846, line: 146, baseType: !3920, size: 64, offset: 1024)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!356, !3867, !3923}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3846, line: 29, size: 128, elements: !3925)
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3924, file: !3846, line: 30, baseType: !7, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3924, file: !3846, line: 31, baseType: !7, size: 32, offset: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3924, file: !3846, line: 32, baseType: !3867, size: 64, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3853, file: !3846, line: 148, baseType: !3930, size: 64, offset: 1088)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!356, !3867, !3543}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3845, file: !3846, line: 20, baseType: !3543, size: 64, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3837, file: !3838, line: 57, baseType: !3935, size: 64, offset: 384)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3838, line: 31, size: 704, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3936, file: !3838, line: 32, baseType: !362, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3936, file: !3838, line: 33, baseType: !356, size: 32, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3936, file: !3838, line: 34, baseType: !329, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3936, file: !3838, line: 35, baseType: !3935, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3936, file: !3838, line: 43, baseType: !2206, size: 448, offset: 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3837, file: !3838, line: 58, baseType: !3935, size: 64, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3837, file: !3838, line: 59, baseType: !3836, size: 64, offset: 512)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3837, file: !3838, line: 60, baseType: !3836, size: 64, offset: 576)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3837, file: !3838, line: 61, baseType: !3836, size: 64, offset: 640)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3837, file: !3838, line: 63, baseType: !2112, size: 512, offset: 704)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3837, file: !3838, line: 65, baseType: !531, size: 64, offset: 1216)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3837, file: !3838, line: 66, baseType: !329, size: 64, offset: 1280)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3830, file: !258, line: 108, baseType: !3951, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!356, !3822, !3954, !257}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3956)
!3956 = !{!3957, !3958, !3959}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3955, file: !258, line: 64, baseType: !3849, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3955, file: !258, line: 65, baseType: !356, size: 32, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3955, file: !258, line: 66, baseType: !3960, size: 512, offset: 96)
!3960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 512, elements: !1684)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3830, file: !258, line: 110, baseType: !3962, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!356, !3822, !7, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !328, line: 164, baseType: !531)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3830, file: !258, line: 111, baseType: !3967, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{null, !3822, !7}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3830, file: !258, line: 112, baseType: !3971, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!356, !3822, !3836, !3974, !7, !3976, !401}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3830, file: !258, line: 117, baseType: !3978, size: 64, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!356, !3822, !7, !7, !329}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3830, file: !258, line: 119, baseType: !3982, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !3822, !7, !7}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3830, file: !258, line: 121, baseType: !3986, size: 64, offset: 448)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!356, !3822, !3989, !882}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3991, line: 11, flags: DIFlagFwdDecl)
!3991 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3830, file: !258, line: 122, baseType: !3993, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3822, !3989}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3830, file: !258, line: 123, baseType: !3997, size: 64, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!356, !3822, !3954, !3976, !401}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3823, file: !258, line: 166, baseType: !329, size: 64, offset: 256)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3823, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3823, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3823, file: !258, line: 171, baseType: !3849, size: 64, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3823, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3823, file: !258, line: 173, baseType: !4006, size: 64, offset: 512)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3823, file: !258, line: 175, baseType: !3822, size: 64, offset: 576)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3823, file: !258, line: 182, baseType: !3965, size: 64, offset: 640)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3823, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3823, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3823, file: !258, line: 185, baseType: !1135, size: 128, offset: 768)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3823, file: !258, line: 186, baseType: !1406, size: 192, offset: 896)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3823, file: !258, line: 187, baseType: !4015, offset: 1088)
!4015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2835)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3539, file: !237, line: 499, baseType: !580, size: 128, offset: 4224)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3539, file: !237, line: 502, baseType: !4018, size: 64, offset: 4352)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4020)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3539, file: !237, line: 504, baseType: !4022, size: 64, offset: 4416)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3539, file: !237, line: 505, baseType: !587, size: 64, offset: 4480)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3539, file: !237, line: 510, baseType: !587, size: 64, offset: 4544)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3539, file: !237, line: 511, baseType: !4026, size: 64, offset: 4608)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4028)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3539, file: !237, line: 513, baseType: !4030, size: 64, offset: 4672)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4032)
!4032 = !{!4033, !4034}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4031, file: !237, line: 293, baseType: !7, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4031, file: !237, line: 294, baseType: !531, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3539, file: !237, line: 515, baseType: !580, size: 128, offset: 4736)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3539, file: !237, line: 526, baseType: !4037, offset: 4864)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4038, line: 5, elements: !518)
!4038 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3539, file: !237, line: 528, baseType: !3836, size: 64, offset: 4864)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3539, file: !237, line: 529, baseType: !3849, size: 64, offset: 4928)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3539, file: !237, line: 534, baseType: !905, size: 32, offset: 4992)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3539, file: !237, line: 535, baseType: !488, size: 32, offset: 5024)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3539, file: !237, line: 537, baseType: !1139, offset: 5056)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3539, file: !237, line: 538, baseType: !580, size: 128, offset: 5056)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3539, file: !237, line: 540, baseType: !4046, size: 64, offset: 5184)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4048, line: 54, size: 960, elements: !4049)
!4048 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4049 = !{!4050, !4051, !4052, !4053, !4054, !4055, !4056, !4060, !4064, !4065, !4066, !4067, !4071, !4075, !4076}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4047, file: !4048, line: 55, baseType: !339, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4047, file: !4048, line: 56, baseType: !343, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4047, file: !4048, line: 58, baseType: !2191, size: 64, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4047, file: !4048, line: 59, baseType: !2191, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4047, file: !4048, line: 60, baseType: !2118, size: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4047, file: !4048, line: 62, baseType: !3556, size: 64, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4047, file: !4048, line: 63, baseType: !4057, size: 64, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!362, !3543, !3563}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4047, file: !4048, line: 65, baseType: !4061, size: 64, offset: 448)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !4046}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4047, file: !4048, line: 66, baseType: !3565, size: 64, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4047, file: !4048, line: 68, baseType: !3574, size: 64, offset: 576)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4047, file: !4048, line: 70, baseType: !2227, size: 64, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4047, file: !4048, line: 71, baseType: !4068, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!2244, !3543}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4047, file: !4048, line: 73, baseType: !4072, size: 64, offset: 768)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !3543, !2261, !2262}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4047, file: !4048, line: 75, baseType: !3569, size: 64, offset: 832)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4047, file: !4048, line: 77, baseType: !3686, size: 64, offset: 896)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3539, file: !237, line: 541, baseType: !2191, size: 64, offset: 5248)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3539, file: !237, line: 543, baseType: !3565, size: 64, offset: 5312)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3539, file: !237, line: 544, baseType: !4080, size: 64, offset: 5376)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3539, file: !237, line: 545, baseType: !4083, size: 64, offset: 5440)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3539, file: !237, line: 547, baseType: !882, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3539, file: !237, line: 548, baseType: !882, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3539, file: !237, line: 549, baseType: !882, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3539, file: !237, line: 550, baseType: !882, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !446, file: !447, line: 709, baseType: !531, size: 64, offset: 6336)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !446, file: !447, line: 713, baseType: !356, size: 32, offset: 6400)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !446, file: !447, line: 714, baseType: !4092, size: 384, offset: 6432)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 384, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 48)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !446, file: !447, line: 715, baseType: !2807, size: 192, offset: 6848)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !446, file: !447, line: 717, baseType: !1406, size: 192, offset: 7040)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !446, file: !447, line: 718, baseType: !580, size: 128, offset: 7232)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !446, file: !447, line: 720, baseType: !4099, size: 64, offset: 7360)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !447, line: 618, size: 832, elements: !4101)
!4101 = !{!4102, !4106, !4107, !4111, !4112, !4113, !4114, !4118, !4119, !4122, !4123, !4126, !4129}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4100, file: !447, line: 619, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!356, !445}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4100, file: !447, line: 621, baseType: !4103, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4100, file: !447, line: 622, baseType: !4108, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{null, !445, !356}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4100, file: !447, line: 623, baseType: !4103, size: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4100, file: !447, line: 624, baseType: !4108, size: 64, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4100, file: !447, line: 625, baseType: !4103, size: 64, offset: 320)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4100, file: !447, line: 627, baseType: !4115, size: 64, offset: 384)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !445}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4100, file: !447, line: 628, baseType: !4115, size: 64, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4100, file: !447, line: 631, baseType: !4120, size: 64, offset: 512)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !447, line: 631, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4100, file: !447, line: 632, baseType: !4120, size: 64, offset: 576)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4100, file: !447, line: 633, baseType: !4124, size: 64, offset: 640)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !447, line: 633, flags: DIFlagFwdDecl)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4100, file: !447, line: 634, baseType: !4127, size: 64, offset: 704)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !447, line: 634, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4100, file: !447, line: 635, baseType: !4127, size: 64, offset: 768)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !446, file: !447, line: 721, baseType: !4131, size: 64, offset: 7424)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4133)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !447, line: 664, size: 192, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138, !4139, !4140}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4133, file: !447, line: 665, baseType: !587, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4133, file: !447, line: 666, baseType: !356, size: 32, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4133, file: !447, line: 667, baseType: !369, size: 16, offset: 96)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4133, file: !447, line: 668, baseType: !369, size: 16, offset: 112)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4133, file: !447, line: 669, baseType: !369, size: 16, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4133, file: !447, line: 670, baseType: !369, size: 16, offset: 144)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !446, file: !447, line: 723, baseType: !3822, size: 64, offset: 7488)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !442, file: !284, line: 100, baseType: !4143, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4145)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda1004x_config", file: !284, line: 56, size: 320, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4145, file: !284, line: 59, baseType: !379, size: 8)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !4145, file: !284, line: 62, baseType: !379, size: 8, offset: 8)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "invert_oclk", scope: !4145, file: !284, line: 65, baseType: !379, size: 8, offset: 16)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "ts_mode", scope: !4145, file: !284, line: 68, baseType: !283, size: 32, offset: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "xtal_freq", scope: !4145, file: !284, line: 71, baseType: !288, size: 32, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "if_freq", scope: !4145, file: !284, line: 74, baseType: !292, size: 32, offset: 96)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "agc_config", scope: !4145, file: !284, line: 77, baseType: !298, size: 32, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_config", scope: !4145, file: !284, line: 80, baseType: !304, size: 32, offset: 160)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_address", scope: !4145, file: !284, line: 83, baseType: !379, size: 8, offset: 192)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "antenna_switch", scope: !4145, file: !284, line: 84, baseType: !379, size: 8, offset: 200)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate", scope: !4145, file: !284, line: 87, baseType: !379, size: 8, offset: 208)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "request_firmware", scope: !4145, file: !284, line: 90, baseType: !4159, size: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!356, !4162, !4482, !362}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4164)
!4164 = !{!4165, !4166, !4436, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4480, !4481}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4163, file: !51, line: 687, baseType: !2403, size: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4163, file: !51, line: 688, baseType: !4167, size: 6016, offset: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4168)
!4168 = !{!4169, !4181, !4183, !4187, !4188, !4189, !4193, !4194, !4200, !4205, !4209, !4210, !4220, !4297, !4301, !4305, !4310, !4311, !4312, !4313, !4323, !4334, !4338, !4342, !4346, !4350, !4354, !4358, !4359, !4360, !4364, !4418}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4167, file: !51, line: 436, baseType: !4170, size: 1280)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4171)
!4171 = !{!4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4170, file: !51, line: 339, baseType: !3632, size: 1024)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4170, file: !51, line: 340, baseType: !488, size: 32, offset: 1024)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4170, file: !51, line: 341, baseType: !488, size: 32, offset: 1056)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4170, file: !51, line: 342, baseType: !488, size: 32, offset: 1088)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4170, file: !51, line: 343, baseType: !488, size: 32, offset: 1120)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4170, file: !51, line: 344, baseType: !488, size: 32, offset: 1152)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4170, file: !51, line: 345, baseType: !488, size: 32, offset: 1184)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4170, file: !51, line: 346, baseType: !488, size: 32, offset: 1216)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4170, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4167, file: !51, line: 438, baseType: !4182, size: 64, offset: 1280)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 64, elements: !665)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4167, file: !51, line: 440, baseType: !4184, size: 64, offset: 1344)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{null, !4162}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4167, file: !51, line: 441, baseType: !4184, size: 64, offset: 1408)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4167, file: !51, line: 442, baseType: !4184, size: 64, offset: 1472)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4167, file: !51, line: 444, baseType: !4190, size: 64, offset: 1536)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!356, !4162}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4167, file: !51, line: 445, baseType: !4190, size: 64, offset: 1600)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4167, file: !51, line: 447, baseType: !4195, size: 64, offset: 1664)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!356, !4162, !4198, !356}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4167, file: !51, line: 450, baseType: !4201, size: 64, offset: 1728)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!356, !4162, !882, !7, !401, !4204}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4167, file: !51, line: 457, baseType: !4206, size: 64, offset: 1792)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!50, !4162}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4167, file: !51, line: 460, baseType: !4190, size: 64, offset: 1856)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4167, file: !51, line: 461, baseType: !4211, size: 64, offset: 1920)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!356, !4162, !4214}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4216)
!4216 = !{!4217, !4218, !4219}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4215, file: !51, line: 70, baseType: !356, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4215, file: !51, line: 71, baseType: !356, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4215, file: !51, line: 72, baseType: !356, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4167, file: !51, line: 463, baseType: !4221, size: 64, offset: 1984)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!356, !4162, !4224}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4225, file: !51, line: 587, baseType: !488, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4225, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4225, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4225, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4225, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4225, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4225, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4225, file: !51, line: 595, baseType: !488, size: 32, offset: 224)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4225, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4225, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4225, file: !51, line: 598, baseType: !488, size: 32, offset: 320)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4225, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4225, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4225, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4225, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4225, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4225, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4225, file: !51, line: 610, baseType: !379, size: 8, offset: 544)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4225, file: !51, line: 611, baseType: !379, size: 8, offset: 552)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4225, file: !51, line: 612, baseType: !379, size: 8, offset: 560)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4225, file: !51, line: 613, baseType: !488, size: 32, offset: 576)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4225, file: !51, line: 614, baseType: !488, size: 32, offset: 608)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4225, file: !51, line: 615, baseType: !379, size: 8, offset: 640)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4225, file: !51, line: 621, baseType: !4251, size: 384, offset: 672)
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4252, size: 384, elements: !1047)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4225, file: !51, line: 616, size: 128, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4257}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4252, file: !51, line: 617, baseType: !379, size: 8)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4252, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4252, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4252, file: !51, line: 620, baseType: !379, size: 8, offset: 96)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4225, file: !51, line: 624, baseType: !488, size: 32, offset: 1056)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4225, file: !51, line: 627, baseType: !488, size: 32, offset: 1088)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4225, file: !51, line: 630, baseType: !379, size: 8, offset: 1120)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4225, file: !51, line: 631, baseType: !379, size: 8, offset: 1128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4225, file: !51, line: 632, baseType: !379, size: 8, offset: 1136)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4225, file: !51, line: 633, baseType: !379, size: 8, offset: 1144)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4225, file: !51, line: 634, baseType: !379, size: 8, offset: 1152)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4225, file: !51, line: 635, baseType: !379, size: 8, offset: 1160)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4225, file: !51, line: 637, baseType: !379, size: 8, offset: 1168)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4225, file: !51, line: 638, baseType: !379, size: 8, offset: 1176)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4225, file: !51, line: 639, baseType: !379, size: 8, offset: 1184)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4225, file: !51, line: 640, baseType: !379, size: 8, offset: 1192)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4225, file: !51, line: 641, baseType: !379, size: 8, offset: 1200)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4225, file: !51, line: 642, baseType: !379, size: 8, offset: 1208)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4225, file: !51, line: 643, baseType: !379, size: 8, offset: 1216)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4225, file: !51, line: 644, baseType: !379, size: 8, offset: 1224)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4225, file: !51, line: 645, baseType: !379, size: 8, offset: 1232)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4225, file: !51, line: 647, baseType: !488, size: 32, offset: 1248)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4225, file: !51, line: 650, baseType: !4277, size: 296, offset: 1280)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4278)
!4278 = !{!4279, !4280}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4277, file: !6, line: 826, baseType: !380, size: 8)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4277, file: !6, line: 827, baseType: !4281, size: 288, offset: 8)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4282, size: 288, elements: !2476)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4283)
!4283 = !{!4284, !4285}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4282, file: !6, line: 804, baseType: !380, size: 8)
!4285 = !DIDerivedType(tag: DW_TAG_member, scope: !4282, file: !6, line: 805, baseType: !4286, size: 64, offset: 8)
!4286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4282, file: !6, line: 805, size: 64, elements: !4287)
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4286, file: !6, line: 806, baseType: !588, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4286, file: !6, line: 807, baseType: !618, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4225, file: !51, line: 651, baseType: !4277, size: 296, offset: 1576)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4225, file: !51, line: 652, baseType: !4277, size: 296, offset: 1872)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4225, file: !51, line: 653, baseType: !4277, size: 296, offset: 2168)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4225, file: !51, line: 654, baseType: !4277, size: 296, offset: 2464)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4225, file: !51, line: 655, baseType: !4277, size: 296, offset: 2760)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4225, file: !51, line: 656, baseType: !4277, size: 296, offset: 3056)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4225, file: !51, line: 657, baseType: !4277, size: 296, offset: 3352)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4167, file: !51, line: 466, baseType: !4298, size: 64, offset: 2048)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!356, !4162, !4204}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4167, file: !51, line: 467, baseType: !4302, size: 64, offset: 2112)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!356, !4162, !2874}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4167, file: !51, line: 468, baseType: !4306, size: 64, offset: 2176)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!356, !4162, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4167, file: !51, line: 469, baseType: !4306, size: 64, offset: 2240)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4167, file: !51, line: 470, baseType: !4302, size: 64, offset: 2304)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4167, file: !51, line: 472, baseType: !4190, size: 64, offset: 2368)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4167, file: !51, line: 473, baseType: !4314, size: 64, offset: 2432)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!356, !4162, !4317}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4319)
!4319 = !{!4320, !4322}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4318, file: !6, line: 174, baseType: !4321, size: 48)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 48, elements: !2575)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4318, file: !6, line: 175, baseType: !380, size: 8, offset: 48)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4167, file: !51, line: 474, baseType: !4324, size: 64, offset: 2496)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!356, !4162, !4327}
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4329)
!4329 = !{!4330, !4332, !4333}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4328, file: !6, line: 196, baseType: !4331, size: 32)
!4331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 32, elements: !2476)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4328, file: !6, line: 197, baseType: !380, size: 8, offset: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4328, file: !6, line: 198, baseType: !356, size: 32, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4167, file: !51, line: 475, baseType: !4335, size: 64, offset: 2560)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!356, !4162, !171}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4167, file: !51, line: 477, baseType: !4339, size: 64, offset: 2624)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!356, !4162, !78}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4167, file: !51, line: 478, baseType: !4343, size: 64, offset: 2688)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!356, !4162, !73}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4167, file: !51, line: 480, baseType: !4347, size: 64, offset: 2752)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!356, !4162, !330}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4167, file: !51, line: 481, baseType: !4351, size: 64, offset: 2816)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!356, !4162, !531}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4167, file: !51, line: 482, baseType: !4355, size: 64, offset: 2880)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!356, !4162, !356}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4167, file: !51, line: 483, baseType: !4355, size: 64, offset: 2944)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4167, file: !51, line: 484, baseType: !4190, size: 64, offset: 3008)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4167, file: !51, line: 490, baseType: !4361, size: 64, offset: 3072)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!175, !4162}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4167, file: !51, line: 492, baseType: !4365, size: 2304, offset: 3136)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4366)
!4366 = !{!4367, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4394, !4398, !4399, !4400, !4401, !4402, !4403, !4408, !4413, !4417}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4365, file: !51, line: 228, baseType: !4368, size: 1216)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4373, !4374, !4375, !4376}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4368, file: !51, line: 89, baseType: !3632, size: 1024)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4368, file: !51, line: 91, baseType: !488, size: 32, offset: 1024)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4368, file: !51, line: 92, baseType: !488, size: 32, offset: 1056)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4368, file: !51, line: 93, baseType: !488, size: 32, offset: 1088)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4368, file: !51, line: 95, baseType: !488, size: 32, offset: 1120)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4368, file: !51, line: 96, baseType: !488, size: 32, offset: 1152)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4368, file: !51, line: 97, baseType: !488, size: 32, offset: 1184)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4365, file: !51, line: 230, baseType: !4184, size: 64, offset: 1216)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4365, file: !51, line: 231, baseType: !4190, size: 64, offset: 1280)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4365, file: !51, line: 232, baseType: !4190, size: 64, offset: 1344)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4365, file: !51, line: 233, baseType: !4190, size: 64, offset: 1408)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4365, file: !51, line: 234, baseType: !4190, size: 64, offset: 1472)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4365, file: !51, line: 237, baseType: !4190, size: 64, offset: 1536)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4365, file: !51, line: 238, baseType: !4384, size: 64, offset: 1600)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!356, !4162, !4387}
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4388, file: !51, line: 115, baseType: !7, size: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4388, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4388, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4388, file: !51, line: 118, baseType: !587, size: 64, offset: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4365, file: !51, line: 240, baseType: !4395, size: 64, offset: 1664)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!356, !4162, !329}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4365, file: !51, line: 242, baseType: !4302, size: 64, offset: 1728)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4365, file: !51, line: 243, baseType: !4302, size: 64, offset: 1792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4365, file: !51, line: 244, baseType: !4302, size: 64, offset: 1856)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4365, file: !51, line: 248, baseType: !4302, size: 64, offset: 1920)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4365, file: !51, line: 249, baseType: !4306, size: 64, offset: 1984)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4365, file: !51, line: 250, baseType: !4404, size: 64, offset: 2048)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!356, !4162, !4407}
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4365, file: !51, line: 258, baseType: !4409, size: 64, offset: 2112)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!356, !4162, !4412, !356}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4365, file: !51, line: 267, baseType: !4414, size: 64, offset: 2176)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!356, !4162, !488}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4365, file: !51, line: 268, baseType: !4414, size: 64, offset: 2240)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4167, file: !51, line: 493, baseType: !4419, size: 576, offset: 5440)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4420)
!4420 = !{!4421, !4425, !4429, !4430, !4431, !4432, !4433, !4434, !4435}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4419, file: !51, line: 304, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4423)
!4423 = !{!4424}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4422, file: !51, line: 277, baseType: !362, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4419, file: !51, line: 306, baseType: !4426, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4162, !4387}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4419, file: !51, line: 308, baseType: !4306, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4419, file: !51, line: 309, baseType: !4404, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4419, file: !51, line: 310, baseType: !4184, size: 64, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4419, file: !51, line: 311, baseType: !4184, size: 64, offset: 320)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4419, file: !51, line: 312, baseType: !4184, size: 64, offset: 384)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4419, file: !51, line: 313, baseType: !4355, size: 64, offset: 448)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4419, file: !51, line: 316, baseType: !4395, size: 64, offset: 512)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4163, file: !51, line: 689, baseType: !4437, size: 64, offset: 6080)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4446, !4447, !4448, !4449, !4450, !4469}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4438, file: !272, line: 102, baseType: !356, size: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4438, file: !272, line: 103, baseType: !580, size: 128, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4438, file: !272, line: 104, baseType: !580, size: 128, offset: 192)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4438, file: !272, line: 105, baseType: !339, size: 64, offset: 320)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4438, file: !272, line: 106, baseType: !4445, size: 48, offset: 384)
!4445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 48, elements: !2575)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4438, file: !272, line: 107, baseType: !329, size: 64, offset: 448)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4438, file: !272, line: 109, baseType: !3543, size: 64, offset: 512)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4438, file: !272, line: 111, baseType: !343, size: 64, offset: 576)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4438, file: !272, line: 113, baseType: !356, size: 32, offset: 640)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4438, file: !272, line: 114, baseType: !4451, size: 64, offset: 704)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4453)
!4453 = !{!4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4468}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4452, file: !272, line: 158, baseType: !580, size: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4452, file: !272, line: 159, baseType: !1854, size: 64, offset: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4452, file: !272, line: 160, baseType: !4437, size: 64, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4452, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4452, file: !272, line: 162, baseType: !356, size: 32, offset: 288)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4452, file: !272, line: 163, baseType: !488, size: 32, offset: 320)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4452, file: !272, line: 167, baseType: !356, size: 32, offset: 352)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4452, file: !272, line: 168, baseType: !356, size: 32, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4452, file: !272, line: 169, baseType: !356, size: 32, offset: 416)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4452, file: !272, line: 171, baseType: !1638, size: 128, offset: 448)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4452, file: !272, line: 173, baseType: !4465, size: 64, offset: 576)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!356, !759, !7, !329}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4452, file: !272, line: 187, baseType: !329, size: 64, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4438, file: !272, line: 115, baseType: !1406, size: 192, offset: 768)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4163, file: !51, line: 690, baseType: !329, size: 64, offset: 6144)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4163, file: !51, line: 691, baseType: !329, size: 64, offset: 6208)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4163, file: !51, line: 692, baseType: !329, size: 64, offset: 6272)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4163, file: !51, line: 693, baseType: !329, size: 64, offset: 6336)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4163, file: !51, line: 694, baseType: !329, size: 64, offset: 6400)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4163, file: !51, line: 695, baseType: !4225, size: 3648, offset: 6464)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4163, file: !51, line: 698, baseType: !4477, size: 64, offset: 10112)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!356, !329, !356, !356, !356}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4163, file: !51, line: 699, baseType: !356, size: 32, offset: 10176)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4163, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4485)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !4486, line: 12, size: 192, elements: !4487)
!4486 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!4487 = !{!4488, !4489, !4490}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4485, file: !4486, line: 13, baseType: !971, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4485, file: !4486, line: 14, baseType: !4198, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4485, file: !4486, line: 17, baseType: !329, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !442, file: !284, line: 101, baseType: !4163, size: 10240, offset: 128)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "demod_type", scope: !442, file: !284, line: 104, baseType: !315, size: 32, offset: 10368)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 72, elements: !3643)
!4494 = !DIGlobalVariableExpression(var: !4495, expr: !DIExpression())
!4495 = distinct !DIGlobalVariable(name: "bandwidth_7mhz", scope: !438, file: !3, line: 217, type: !4493, isLocal: true, isDefinition: true)
!4496 = !DIGlobalVariableExpression(var: !4497, expr: !DIExpression())
!4497 = distinct !DIGlobalVariable(name: "bandwidth_8mhz", scope: !438, file: !3, line: 218, type: !4493, isLocal: true, isDefinition: true)
!4498 = !DIGlobalVariableExpression(var: !4499, expr: !DIExpression())
!4499 = distinct !DIGlobalVariable(name: "bandwidth_6mhz_53M", scope: !4500, file: !3, line: 245, type: !4501, isLocal: true, isDefinition: true)
!4500 = distinct !DISubprogram(name: "tda10046h_set_bandwidth", scope: !3, file: !3, line: 242, type: !439, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 40, elements: !4502)
!4502 = !{!4503}
!4503 = !DISubrange(count: 5)
!4504 = !DIGlobalVariableExpression(var: !4505, expr: !DIExpression())
!4505 = distinct !DIGlobalVariable(name: "bandwidth_7mhz_53M", scope: !4500, file: !3, line: 246, type: !4501, isLocal: true, isDefinition: true)
!4506 = !DIGlobalVariableExpression(var: !4507, expr: !DIExpression())
!4507 = distinct !DIGlobalVariable(name: "bandwidth_8mhz_53M", scope: !4500, file: !3, line: 247, type: !4501, isLocal: true, isDefinition: true)
!4508 = !DIGlobalVariableExpression(var: !4509, expr: !DIExpression())
!4509 = distinct !DIGlobalVariable(name: "bandwidth_6mhz_48M", scope: !4500, file: !3, line: 249, type: !4501, isLocal: true, isDefinition: true)
!4510 = !DIGlobalVariableExpression(var: !4511, expr: !DIExpression())
!4511 = distinct !DIGlobalVariable(name: "bandwidth_7mhz_48M", scope: !4500, file: !3, line: 250, type: !4501, isLocal: true, isDefinition: true)
!4512 = !DIGlobalVariableExpression(var: !4513, expr: !DIExpression())
!4513 = distinct !DIGlobalVariable(name: "bandwidth_8mhz_48M", scope: !4500, file: !3, line: 251, type: !4501, isLocal: true, isDefinition: true)
!4514 = !DIGlobalVariableExpression(var: !4515, expr: !DIExpression())
!4515 = distinct !DIGlobalVariable(name: "tda10046_ops", scope: !2, file: !3, line: 1305, type: !4516, isLocal: true, isDefinition: true)
!4516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4167)
!4517 = !DIGlobalVariableExpression(var: !4518, expr: !DIExpression())
!4518 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 1374, type: !4519, isLocal: true, isDefinition: true)
!4519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 120, elements: !4520)
!4520 = !{!4521}
!4521 = !DISubrange(count: 15)
!4522 = !{i32 7, !"Dwarf Version", i32 4}
!4523 = !{i32 2, !"Debug Info Version", i32 3}
!4524 = !{i32 1, !"wchar_size", i32 2}
!4525 = !{i32 1, !"Code Model", i32 2}
!4526 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4527 = distinct !DISubprogram(name: "tda10045_attach", scope: !3, file: !3, line: 1267, type: !4528, scopeLine: 1269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!4162, !4143, !445}
!4530 = !DILocalVariable(name: "config", arg: 1, scope: !4527, file: !3, line: 1267, type: !4143)
!4531 = !DILocation(line: 1267, column: 68, scope: !4527)
!4532 = !DILocalVariable(name: "i2c", arg: 2, scope: !4527, file: !3, line: 1268, type: !445)
!4533 = !DILocation(line: 1268, column: 30, scope: !4527)
!4534 = !DILocalVariable(name: "state", scope: !4527, file: !3, line: 1270, type: !441)
!4535 = !DILocation(line: 1270, column: 25, scope: !4527)
!4536 = !DILocalVariable(name: "id", scope: !4527, file: !3, line: 1271, type: !356)
!4537 = !DILocation(line: 1271, column: 6, scope: !4527)
!4538 = !DILocation(line: 1274, column: 10, scope: !4527)
!4539 = !DILocation(line: 1274, column: 8, scope: !4527)
!4540 = !DILocation(line: 1275, column: 7, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 1275, column: 6)
!4542 = !DILocation(line: 1275, column: 6, scope: !4527)
!4543 = !DILocation(line: 1276, column: 3, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 1275, column: 14)
!4545 = !DILocation(line: 1277, column: 3, scope: !4544)
!4546 = !DILocation(line: 1281, column: 18, scope: !4527)
!4547 = !DILocation(line: 1281, column: 2, scope: !4527)
!4548 = !DILocation(line: 1281, column: 9, scope: !4527)
!4549 = !DILocation(line: 1281, column: 16, scope: !4527)
!4550 = !DILocation(line: 1282, column: 15, scope: !4527)
!4551 = !DILocation(line: 1282, column: 2, scope: !4527)
!4552 = !DILocation(line: 1282, column: 9, scope: !4527)
!4553 = !DILocation(line: 1282, column: 13, scope: !4527)
!4554 = !DILocation(line: 1283, column: 2, scope: !4527)
!4555 = !DILocation(line: 1283, column: 9, scope: !4527)
!4556 = !DILocation(line: 1283, column: 20, scope: !4527)
!4557 = !DILocation(line: 1286, column: 26, scope: !4527)
!4558 = !DILocation(line: 1286, column: 7, scope: !4527)
!4559 = !DILocation(line: 1286, column: 5, scope: !4527)
!4560 = !DILocation(line: 1287, column: 6, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 1287, column: 6)
!4562 = !DILocation(line: 1287, column: 9, scope: !4561)
!4563 = !DILocation(line: 1287, column: 6, scope: !4527)
!4564 = !DILocation(line: 1288, column: 3, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 1287, column: 14)
!4566 = !DILocation(line: 1289, column: 9, scope: !4565)
!4567 = !DILocation(line: 1289, column: 3, scope: !4565)
!4568 = !DILocation(line: 1290, column: 3, scope: !4565)
!4569 = !DILocation(line: 1293, column: 6, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 1293, column: 6)
!4571 = !DILocation(line: 1293, column: 9, scope: !4570)
!4572 = !DILocation(line: 1293, column: 6, scope: !4527)
!4573 = !DILocation(line: 1294, column: 68, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 1293, column: 18)
!4575 = !DILocation(line: 1294, column: 3, scope: !4574)
!4576 = !DILocation(line: 1295, column: 9, scope: !4574)
!4577 = !DILocation(line: 1295, column: 3, scope: !4574)
!4578 = !DILocation(line: 1296, column: 3, scope: !4574)
!4579 = !DILocation(line: 1300, column: 10, scope: !4527)
!4580 = !DILocation(line: 1300, column: 17, scope: !4527)
!4581 = !DILocation(line: 1300, column: 26, scope: !4527)
!4582 = !DILocation(line: 1300, column: 2, scope: !4527)
!4583 = !DILocation(line: 1301, column: 37, scope: !4527)
!4584 = !DILocation(line: 1301, column: 2, scope: !4527)
!4585 = !DILocation(line: 1301, column: 9, scope: !4527)
!4586 = !DILocation(line: 1301, column: 18, scope: !4527)
!4587 = !DILocation(line: 1301, column: 35, scope: !4527)
!4588 = !DILocation(line: 1302, column: 10, scope: !4527)
!4589 = !DILocation(line: 1302, column: 17, scope: !4527)
!4590 = !DILocation(line: 1302, column: 2, scope: !4527)
!4591 = !DILocation(line: 1303, column: 1, scope: !4527)
!4592 = distinct !DISubprogram(name: "kzalloc", scope: !320, file: !320, line: 662, type: !4593, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!329, !971, !327}
!4595 = !DILocalVariable(name: "s", arg: 1, scope: !4596, file: !320, line: 445, type: !1316)
!4596 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !320, file: !320, line: 445, type: !4597, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!329, !1316, !327, !971}
!4599 = !DILocation(line: 445, column: 72, scope: !4596, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 552, column: 10, scope: !4601, inlinedAt: !4604)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !320, line: 540, column: 34)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !320, line: 540, column: 6)
!4603 = distinct !DISubprogram(name: "kmalloc", scope: !320, file: !320, line: 538, type: !4593, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4604 = distinct !DILocation(line: 664, column: 9, scope: !4592)
!4605 = !DILocalVariable(name: "flags", arg: 2, scope: !4596, file: !320, line: 446, type: !327)
!4606 = !DILocation(line: 446, column: 9, scope: !4596, inlinedAt: !4600)
!4607 = !DILocalVariable(name: "size", arg: 3, scope: !4596, file: !320, line: 446, type: !971)
!4608 = !DILocation(line: 446, column: 23, scope: !4596, inlinedAt: !4600)
!4609 = !DILocalVariable(name: "ret", scope: !4596, file: !320, line: 448, type: !329)
!4610 = !DILocation(line: 448, column: 8, scope: !4596, inlinedAt: !4600)
!4611 = !DILocalVariable(name: "flags", arg: 1, scope: !4612, file: !320, line: 318, type: !327)
!4612 = distinct !DISubprogram(name: "kmalloc_type", scope: !320, file: !320, line: 318, type: !4613, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!319, !327}
!4615 = !DILocation(line: 318, column: 67, scope: !4612, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 553, column: 20, scope: !4601, inlinedAt: !4604)
!4617 = !DILocalVariable(name: "size", arg: 1, scope: !4618, file: !320, line: 346, type: !971)
!4618 = distinct !DISubprogram(name: "kmalloc_index", scope: !320, file: !320, line: 346, type: !4619, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!7, !971}
!4621 = !DILocation(line: 346, column: 58, scope: !4618, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 547, column: 11, scope: !4601, inlinedAt: !4604)
!4623 = !DILocalVariable(name: "size", arg: 1, scope: !4624, file: !320, line: 472, type: !971)
!4624 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !320, file: !320, line: 472, type: !4625, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!329, !971, !327, !7}
!4627 = !DILocation(line: 472, column: 28, scope: !4624, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 481, column: 9, scope: !4629, inlinedAt: !4630)
!4629 = distinct !DISubprogram(name: "kmalloc_large", scope: !320, file: !320, line: 478, type: !4593, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4630 = distinct !DILocation(line: 545, column: 11, scope: !4631, inlinedAt: !4604)
!4631 = distinct !DILexicalBlock(scope: !4601, file: !320, line: 544, column: 7)
!4632 = !DILocalVariable(name: "flags", arg: 2, scope: !4624, file: !320, line: 472, type: !327)
!4633 = !DILocation(line: 472, column: 40, scope: !4624, inlinedAt: !4628)
!4634 = !DILocalVariable(name: "order", arg: 3, scope: !4624, file: !320, line: 472, type: !7)
!4635 = !DILocation(line: 472, column: 60, scope: !4624, inlinedAt: !4628)
!4636 = !DILocalVariable(name: "size", arg: 1, scope: !4629, file: !320, line: 478, type: !971)
!4637 = !DILocation(line: 478, column: 51, scope: !4629, inlinedAt: !4630)
!4638 = !DILocalVariable(name: "flags", arg: 2, scope: !4629, file: !320, line: 478, type: !327)
!4639 = !DILocation(line: 478, column: 63, scope: !4629, inlinedAt: !4630)
!4640 = !DILocalVariable(name: "order", scope: !4629, file: !320, line: 480, type: !7)
!4641 = !DILocation(line: 480, column: 15, scope: !4629, inlinedAt: !4630)
!4642 = !DILocalVariable(name: "size", arg: 1, scope: !4603, file: !320, line: 538, type: !971)
!4643 = !DILocation(line: 538, column: 45, scope: !4603, inlinedAt: !4604)
!4644 = !DILocalVariable(name: "flags", arg: 2, scope: !4603, file: !320, line: 538, type: !327)
!4645 = !DILocation(line: 538, column: 57, scope: !4603, inlinedAt: !4604)
!4646 = !DILocalVariable(name: "index", scope: !4601, file: !320, line: 542, type: !7)
!4647 = !DILocation(line: 542, column: 16, scope: !4601, inlinedAt: !4604)
!4648 = !DILocalVariable(name: "size", arg: 1, scope: !4592, file: !320, line: 662, type: !971)
!4649 = !DILocation(line: 662, column: 36, scope: !4592)
!4650 = !DILocalVariable(name: "flags", arg: 2, scope: !4592, file: !320, line: 662, type: !327)
!4651 = !DILocation(line: 662, column: 48, scope: !4592)
!4652 = !DILocation(line: 664, column: 17, scope: !4592)
!4653 = !DILocation(line: 664, column: 23, scope: !4592)
!4654 = !DILocation(line: 664, column: 29, scope: !4592)
!4655 = !DILocation(line: 540, column: 27, scope: !4602, inlinedAt: !4604)
!4656 = !DILocation(line: 540, column: 6, scope: !4602, inlinedAt: !4604)
!4657 = !DILocation(line: 540, column: 6, scope: !4603, inlinedAt: !4604)
!4658 = !DILocation(line: 544, column: 7, scope: !4631, inlinedAt: !4604)
!4659 = !DILocation(line: 544, column: 12, scope: !4631, inlinedAt: !4604)
!4660 = !DILocation(line: 544, column: 7, scope: !4601, inlinedAt: !4604)
!4661 = !DILocation(line: 545, column: 25, scope: !4631, inlinedAt: !4604)
!4662 = !DILocation(line: 545, column: 31, scope: !4631, inlinedAt: !4604)
!4663 = !DILocation(line: 480, column: 33, scope: !4629, inlinedAt: !4630)
!4664 = !DILocation(line: 480, column: 23, scope: !4629, inlinedAt: !4630)
!4665 = !DILocation(line: 481, column: 29, scope: !4629, inlinedAt: !4630)
!4666 = !DILocation(line: 481, column: 35, scope: !4629, inlinedAt: !4630)
!4667 = !DILocation(line: 481, column: 42, scope: !4629, inlinedAt: !4630)
!4668 = !DILocation(line: 474, column: 23, scope: !4624, inlinedAt: !4628)
!4669 = !DILocation(line: 474, column: 29, scope: !4624, inlinedAt: !4628)
!4670 = !DILocation(line: 474, column: 36, scope: !4624, inlinedAt: !4628)
!4671 = !DILocation(line: 474, column: 9, scope: !4624, inlinedAt: !4628)
!4672 = !DILocation(line: 545, column: 4, scope: !4631, inlinedAt: !4604)
!4673 = !DILocation(line: 547, column: 25, scope: !4601, inlinedAt: !4604)
!4674 = !DILocation(line: 348, column: 7, scope: !4675, inlinedAt: !4622)
!4675 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 348, column: 6)
!4676 = !DILocation(line: 348, column: 6, scope: !4618, inlinedAt: !4622)
!4677 = !DILocation(line: 349, column: 3, scope: !4675, inlinedAt: !4622)
!4678 = !DILocation(line: 351, column: 6, scope: !4679, inlinedAt: !4622)
!4679 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 351, column: 6)
!4680 = !DILocation(line: 351, column: 11, scope: !4679, inlinedAt: !4622)
!4681 = !DILocation(line: 351, column: 6, scope: !4618, inlinedAt: !4622)
!4682 = !DILocation(line: 352, column: 3, scope: !4679, inlinedAt: !4622)
!4683 = !DILocation(line: 354, column: 32, scope: !4684, inlinedAt: !4622)
!4684 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 354, column: 6)
!4685 = !DILocation(line: 354, column: 37, scope: !4684, inlinedAt: !4622)
!4686 = !DILocation(line: 354, column: 42, scope: !4684, inlinedAt: !4622)
!4687 = !DILocation(line: 354, column: 45, scope: !4684, inlinedAt: !4622)
!4688 = !DILocation(line: 354, column: 50, scope: !4684, inlinedAt: !4622)
!4689 = !DILocation(line: 354, column: 6, scope: !4618, inlinedAt: !4622)
!4690 = !DILocation(line: 355, column: 3, scope: !4684, inlinedAt: !4622)
!4691 = !DILocation(line: 356, column: 32, scope: !4692, inlinedAt: !4622)
!4692 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 356, column: 6)
!4693 = !DILocation(line: 356, column: 37, scope: !4692, inlinedAt: !4622)
!4694 = !DILocation(line: 356, column: 43, scope: !4692, inlinedAt: !4622)
!4695 = !DILocation(line: 356, column: 46, scope: !4692, inlinedAt: !4622)
!4696 = !DILocation(line: 356, column: 51, scope: !4692, inlinedAt: !4622)
!4697 = !DILocation(line: 356, column: 6, scope: !4618, inlinedAt: !4622)
!4698 = !DILocation(line: 357, column: 3, scope: !4692, inlinedAt: !4622)
!4699 = !DILocation(line: 358, column: 6, scope: !4700, inlinedAt: !4622)
!4700 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 358, column: 6)
!4701 = !DILocation(line: 358, column: 11, scope: !4700, inlinedAt: !4622)
!4702 = !DILocation(line: 358, column: 6, scope: !4618, inlinedAt: !4622)
!4703 = !DILocation(line: 358, column: 26, scope: !4700, inlinedAt: !4622)
!4704 = !DILocation(line: 359, column: 6, scope: !4705, inlinedAt: !4622)
!4705 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 359, column: 6)
!4706 = !DILocation(line: 359, column: 11, scope: !4705, inlinedAt: !4622)
!4707 = !DILocation(line: 359, column: 6, scope: !4618, inlinedAt: !4622)
!4708 = !DILocation(line: 359, column: 26, scope: !4705, inlinedAt: !4622)
!4709 = !DILocation(line: 360, column: 6, scope: !4710, inlinedAt: !4622)
!4710 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 360, column: 6)
!4711 = !DILocation(line: 360, column: 11, scope: !4710, inlinedAt: !4622)
!4712 = !DILocation(line: 360, column: 6, scope: !4618, inlinedAt: !4622)
!4713 = !DILocation(line: 360, column: 26, scope: !4710, inlinedAt: !4622)
!4714 = !DILocation(line: 361, column: 6, scope: !4715, inlinedAt: !4622)
!4715 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 361, column: 6)
!4716 = !DILocation(line: 361, column: 11, scope: !4715, inlinedAt: !4622)
!4717 = !DILocation(line: 361, column: 6, scope: !4618, inlinedAt: !4622)
!4718 = !DILocation(line: 361, column: 26, scope: !4715, inlinedAt: !4622)
!4719 = !DILocation(line: 362, column: 6, scope: !4720, inlinedAt: !4622)
!4720 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 362, column: 6)
!4721 = !DILocation(line: 362, column: 11, scope: !4720, inlinedAt: !4622)
!4722 = !DILocation(line: 362, column: 6, scope: !4618, inlinedAt: !4622)
!4723 = !DILocation(line: 362, column: 26, scope: !4720, inlinedAt: !4622)
!4724 = !DILocation(line: 363, column: 6, scope: !4725, inlinedAt: !4622)
!4725 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 363, column: 6)
!4726 = !DILocation(line: 363, column: 11, scope: !4725, inlinedAt: !4622)
!4727 = !DILocation(line: 363, column: 6, scope: !4618, inlinedAt: !4622)
!4728 = !DILocation(line: 363, column: 26, scope: !4725, inlinedAt: !4622)
!4729 = !DILocation(line: 364, column: 6, scope: !4730, inlinedAt: !4622)
!4730 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 364, column: 6)
!4731 = !DILocation(line: 364, column: 11, scope: !4730, inlinedAt: !4622)
!4732 = !DILocation(line: 364, column: 6, scope: !4618, inlinedAt: !4622)
!4733 = !DILocation(line: 364, column: 26, scope: !4730, inlinedAt: !4622)
!4734 = !DILocation(line: 365, column: 6, scope: !4735, inlinedAt: !4622)
!4735 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 365, column: 6)
!4736 = !DILocation(line: 365, column: 11, scope: !4735, inlinedAt: !4622)
!4737 = !DILocation(line: 365, column: 6, scope: !4618, inlinedAt: !4622)
!4738 = !DILocation(line: 365, column: 26, scope: !4735, inlinedAt: !4622)
!4739 = !DILocation(line: 366, column: 6, scope: !4740, inlinedAt: !4622)
!4740 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 366, column: 6)
!4741 = !DILocation(line: 366, column: 11, scope: !4740, inlinedAt: !4622)
!4742 = !DILocation(line: 366, column: 6, scope: !4618, inlinedAt: !4622)
!4743 = !DILocation(line: 366, column: 26, scope: !4740, inlinedAt: !4622)
!4744 = !DILocation(line: 367, column: 6, scope: !4745, inlinedAt: !4622)
!4745 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 367, column: 6)
!4746 = !DILocation(line: 367, column: 11, scope: !4745, inlinedAt: !4622)
!4747 = !DILocation(line: 367, column: 6, scope: !4618, inlinedAt: !4622)
!4748 = !DILocation(line: 367, column: 26, scope: !4745, inlinedAt: !4622)
!4749 = !DILocation(line: 368, column: 6, scope: !4750, inlinedAt: !4622)
!4750 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 368, column: 6)
!4751 = !DILocation(line: 368, column: 11, scope: !4750, inlinedAt: !4622)
!4752 = !DILocation(line: 368, column: 6, scope: !4618, inlinedAt: !4622)
!4753 = !DILocation(line: 368, column: 26, scope: !4750, inlinedAt: !4622)
!4754 = !DILocation(line: 369, column: 6, scope: !4755, inlinedAt: !4622)
!4755 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 369, column: 6)
!4756 = !DILocation(line: 369, column: 11, scope: !4755, inlinedAt: !4622)
!4757 = !DILocation(line: 369, column: 6, scope: !4618, inlinedAt: !4622)
!4758 = !DILocation(line: 369, column: 26, scope: !4755, inlinedAt: !4622)
!4759 = !DILocation(line: 370, column: 6, scope: !4760, inlinedAt: !4622)
!4760 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 370, column: 6)
!4761 = !DILocation(line: 370, column: 11, scope: !4760, inlinedAt: !4622)
!4762 = !DILocation(line: 370, column: 6, scope: !4618, inlinedAt: !4622)
!4763 = !DILocation(line: 370, column: 26, scope: !4760, inlinedAt: !4622)
!4764 = !DILocation(line: 371, column: 6, scope: !4765, inlinedAt: !4622)
!4765 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 371, column: 6)
!4766 = !DILocation(line: 371, column: 11, scope: !4765, inlinedAt: !4622)
!4767 = !DILocation(line: 371, column: 6, scope: !4618, inlinedAt: !4622)
!4768 = !DILocation(line: 371, column: 26, scope: !4765, inlinedAt: !4622)
!4769 = !DILocation(line: 372, column: 6, scope: !4770, inlinedAt: !4622)
!4770 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 372, column: 6)
!4771 = !DILocation(line: 372, column: 11, scope: !4770, inlinedAt: !4622)
!4772 = !DILocation(line: 372, column: 6, scope: !4618, inlinedAt: !4622)
!4773 = !DILocation(line: 372, column: 26, scope: !4770, inlinedAt: !4622)
!4774 = !DILocation(line: 373, column: 6, scope: !4775, inlinedAt: !4622)
!4775 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 373, column: 6)
!4776 = !DILocation(line: 373, column: 11, scope: !4775, inlinedAt: !4622)
!4777 = !DILocation(line: 373, column: 6, scope: !4618, inlinedAt: !4622)
!4778 = !DILocation(line: 373, column: 26, scope: !4775, inlinedAt: !4622)
!4779 = !DILocation(line: 374, column: 6, scope: !4780, inlinedAt: !4622)
!4780 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 374, column: 6)
!4781 = !DILocation(line: 374, column: 11, scope: !4780, inlinedAt: !4622)
!4782 = !DILocation(line: 374, column: 6, scope: !4618, inlinedAt: !4622)
!4783 = !DILocation(line: 374, column: 26, scope: !4780, inlinedAt: !4622)
!4784 = !DILocation(line: 375, column: 6, scope: !4785, inlinedAt: !4622)
!4785 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 375, column: 6)
!4786 = !DILocation(line: 375, column: 11, scope: !4785, inlinedAt: !4622)
!4787 = !DILocation(line: 375, column: 6, scope: !4618, inlinedAt: !4622)
!4788 = !DILocation(line: 375, column: 27, scope: !4785, inlinedAt: !4622)
!4789 = !DILocation(line: 376, column: 6, scope: !4790, inlinedAt: !4622)
!4790 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 376, column: 6)
!4791 = !DILocation(line: 376, column: 11, scope: !4790, inlinedAt: !4622)
!4792 = !DILocation(line: 376, column: 6, scope: !4618, inlinedAt: !4622)
!4793 = !DILocation(line: 376, column: 32, scope: !4790, inlinedAt: !4622)
!4794 = !DILocation(line: 377, column: 6, scope: !4795, inlinedAt: !4622)
!4795 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 377, column: 6)
!4796 = !DILocation(line: 377, column: 11, scope: !4795, inlinedAt: !4622)
!4797 = !DILocation(line: 377, column: 6, scope: !4618, inlinedAt: !4622)
!4798 = !DILocation(line: 377, column: 32, scope: !4795, inlinedAt: !4622)
!4799 = !DILocation(line: 378, column: 6, scope: !4800, inlinedAt: !4622)
!4800 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 378, column: 6)
!4801 = !DILocation(line: 378, column: 11, scope: !4800, inlinedAt: !4622)
!4802 = !DILocation(line: 378, column: 6, scope: !4618, inlinedAt: !4622)
!4803 = !DILocation(line: 378, column: 32, scope: !4800, inlinedAt: !4622)
!4804 = !DILocation(line: 379, column: 6, scope: !4805, inlinedAt: !4622)
!4805 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 379, column: 6)
!4806 = !DILocation(line: 379, column: 11, scope: !4805, inlinedAt: !4622)
!4807 = !DILocation(line: 379, column: 6, scope: !4618, inlinedAt: !4622)
!4808 = !DILocation(line: 379, column: 33, scope: !4805, inlinedAt: !4622)
!4809 = !DILocation(line: 380, column: 6, scope: !4810, inlinedAt: !4622)
!4810 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 380, column: 6)
!4811 = !DILocation(line: 380, column: 11, scope: !4810, inlinedAt: !4622)
!4812 = !DILocation(line: 380, column: 6, scope: !4618, inlinedAt: !4622)
!4813 = !DILocation(line: 380, column: 33, scope: !4810, inlinedAt: !4622)
!4814 = !DILocation(line: 381, column: 6, scope: !4815, inlinedAt: !4622)
!4815 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 381, column: 6)
!4816 = !DILocation(line: 381, column: 11, scope: !4815, inlinedAt: !4622)
!4817 = !DILocation(line: 381, column: 6, scope: !4618, inlinedAt: !4622)
!4818 = !DILocation(line: 381, column: 33, scope: !4815, inlinedAt: !4622)
!4819 = !DILocation(line: 382, column: 2, scope: !4820, inlinedAt: !4622)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !320, line: 382, column: 2)
!4821 = distinct !DILexicalBlock(scope: !4618, file: !320, line: 382, column: 2)
!4822 = !{i32 -2143532327, i32 -2143532298, i32 -2143532252, i32 -2143532194, i32 -2143532140, i32 -2143532086, i32 -2143532031, i32 -2143532000}
!4823 = !DILocation(line: 382, column: 2, scope: !4824, inlinedAt: !4622)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !320, line: 382, column: 2)
!4825 = distinct !DILexicalBlock(scope: !4821, file: !320, line: 382, column: 2)
!4826 = !{i32 -2143531557, i32 -2143531550, i32 -2143531496, i32 -2143531465, i32 -2143531435}
!4827 = !DILocation(line: 382, column: 2, scope: !4825, inlinedAt: !4622)
!4828 = !DILocation(line: 386, column: 1, scope: !4618, inlinedAt: !4622)
!4829 = !DILocation(line: 547, column: 9, scope: !4601, inlinedAt: !4604)
!4830 = !DILocation(line: 549, column: 8, scope: !4831, inlinedAt: !4604)
!4831 = distinct !DILexicalBlock(scope: !4601, file: !320, line: 549, column: 7)
!4832 = !DILocation(line: 549, column: 7, scope: !4601, inlinedAt: !4604)
!4833 = !DILocation(line: 550, column: 4, scope: !4831, inlinedAt: !4604)
!4834 = !DILocation(line: 553, column: 33, scope: !4601, inlinedAt: !4604)
!4835 = !DILocation(line: 325, column: 6, scope: !4836, inlinedAt: !4616)
!4836 = distinct !DILexicalBlock(scope: !4612, file: !320, line: 325, column: 6)
!4837 = !DILocation(line: 325, column: 6, scope: !4612, inlinedAt: !4616)
!4838 = !DILocation(line: 326, column: 3, scope: !4836, inlinedAt: !4616)
!4839 = !DILocation(line: 332, column: 9, scope: !4612, inlinedAt: !4616)
!4840 = !DILocation(line: 332, column: 15, scope: !4612, inlinedAt: !4616)
!4841 = !DILocation(line: 332, column: 2, scope: !4612, inlinedAt: !4616)
!4842 = !DILocation(line: 336, column: 1, scope: !4612, inlinedAt: !4616)
!4843 = !DILocation(line: 553, column: 5, scope: !4601, inlinedAt: !4604)
!4844 = !DILocation(line: 553, column: 41, scope: !4601, inlinedAt: !4604)
!4845 = !DILocation(line: 554, column: 5, scope: !4601, inlinedAt: !4604)
!4846 = !DILocation(line: 554, column: 12, scope: !4601, inlinedAt: !4604)
!4847 = !DILocation(line: 448, column: 31, scope: !4596, inlinedAt: !4600)
!4848 = !DILocation(line: 448, column: 34, scope: !4596, inlinedAt: !4600)
!4849 = !DILocation(line: 448, column: 14, scope: !4596, inlinedAt: !4600)
!4850 = !DILocation(line: 450, column: 22, scope: !4596, inlinedAt: !4600)
!4851 = !DILocation(line: 450, column: 25, scope: !4596, inlinedAt: !4600)
!4852 = !DILocation(line: 450, column: 30, scope: !4596, inlinedAt: !4600)
!4853 = !DILocation(line: 450, column: 36, scope: !4596, inlinedAt: !4600)
!4854 = !DILocation(line: 450, column: 8, scope: !4596, inlinedAt: !4600)
!4855 = !DILocation(line: 450, column: 6, scope: !4596, inlinedAt: !4600)
!4856 = !DILocation(line: 451, column: 9, scope: !4596, inlinedAt: !4600)
!4857 = !DILocation(line: 552, column: 3, scope: !4601, inlinedAt: !4604)
!4858 = !DILocation(line: 557, column: 19, scope: !4603, inlinedAt: !4604)
!4859 = !DILocation(line: 557, column: 25, scope: !4603, inlinedAt: !4604)
!4860 = !DILocation(line: 557, column: 9, scope: !4603, inlinedAt: !4604)
!4861 = !DILocation(line: 557, column: 2, scope: !4603, inlinedAt: !4604)
!4862 = !DILocation(line: 558, column: 1, scope: !4603, inlinedAt: !4604)
!4863 = !DILocation(line: 664, column: 2, scope: !4592)
!4864 = distinct !DISubprogram(name: "tda1004x_read_byte", scope: !3, file: !3, line: 135, type: !4865, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!356, !441, !356}
!4867 = !DILocalVariable(name: "state", arg: 1, scope: !4864, file: !3, line: 135, type: !441)
!4868 = !DILocation(line: 135, column: 54, scope: !4864)
!4869 = !DILocalVariable(name: "reg", arg: 2, scope: !4864, file: !3, line: 135, type: !356)
!4870 = !DILocation(line: 135, column: 65, scope: !4864)
!4871 = !DILocalVariable(name: "ret", scope: !4864, file: !3, line: 137, type: !356)
!4872 = !DILocation(line: 137, column: 6, scope: !4864)
!4873 = !DILocalVariable(name: "b0", scope: !4864, file: !3, line: 138, type: !4874)
!4874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 8, elements: !710)
!4875 = !DILocation(line: 138, column: 5, scope: !4864)
!4876 = !DILocation(line: 138, column: 12, scope: !4864)
!4877 = !DILocation(line: 138, column: 14, scope: !4864)
!4878 = !DILocalVariable(name: "b1", scope: !4864, file: !3, line: 139, type: !4874)
!4879 = !DILocation(line: 139, column: 5, scope: !4864)
!4880 = !DILocalVariable(name: "msg", scope: !4864, file: !3, line: 140, type: !4881)
!4881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 256, elements: !2516)
!4882 = !DILocation(line: 140, column: 17, scope: !4864)
!4883 = !DILocation(line: 140, column: 25, scope: !4864)
!4884 = !DILocation(line: 140, column: 26, scope: !4864)
!4885 = !DILocation(line: 140, column: 47, scope: !4864)
!4886 = !DILocation(line: 141, column: 5, scope: !4864)
!4887 = !DILocation(line: 141, column: 33, scope: !4864)
!4888 = !DILocation(line: 143, column: 2, scope: !4864)
!4889 = !DILocation(line: 143, column: 2, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 143, column: 2)
!4891 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 143, column: 2)
!4892 = !DILocation(line: 143, column: 2, scope: !4891)
!4893 = !DILocation(line: 145, column: 16, scope: !4864)
!4894 = !DILocation(line: 145, column: 23, scope: !4864)
!4895 = !DILocation(line: 145, column: 31, scope: !4864)
!4896 = !DILocation(line: 145, column: 2, scope: !4864)
!4897 = !DILocation(line: 145, column: 9, scope: !4864)
!4898 = !DILocation(line: 145, column: 14, scope: !4864)
!4899 = !DILocation(line: 146, column: 16, scope: !4864)
!4900 = !DILocation(line: 146, column: 23, scope: !4864)
!4901 = !DILocation(line: 146, column: 31, scope: !4864)
!4902 = !DILocation(line: 146, column: 2, scope: !4864)
!4903 = !DILocation(line: 146, column: 9, scope: !4864)
!4904 = !DILocation(line: 146, column: 14, scope: !4864)
!4905 = !DILocation(line: 147, column: 21, scope: !4864)
!4906 = !DILocation(line: 147, column: 28, scope: !4864)
!4907 = !DILocation(line: 147, column: 33, scope: !4864)
!4908 = !DILocation(line: 147, column: 8, scope: !4864)
!4909 = !DILocation(line: 147, column: 6, scope: !4864)
!4910 = !DILocation(line: 149, column: 6, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 149, column: 6)
!4912 = !DILocation(line: 149, column: 10, scope: !4911)
!4913 = !DILocation(line: 149, column: 6, scope: !4864)
!4914 = !DILocation(line: 150, column: 3, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 149, column: 16)
!4916 = !DILocation(line: 150, column: 3, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 150, column: 3)
!4918 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 150, column: 3)
!4919 = !DILocation(line: 150, column: 3, scope: !4918)
!4920 = !DILocation(line: 152, column: 3, scope: !4915)
!4921 = !DILocation(line: 155, column: 2, scope: !4864)
!4922 = !DILocation(line: 155, column: 2, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 155, column: 2)
!4924 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 155, column: 2)
!4925 = !DILocation(line: 155, column: 2, scope: !4924)
!4926 = !DILocation(line: 157, column: 9, scope: !4864)
!4927 = !DILocation(line: 157, column: 2, scope: !4864)
!4928 = !DILocation(line: 158, column: 1, scope: !4864)
!4929 = distinct !DISubprogram(name: "tda10046_attach", scope: !3, file: !3, line: 1337, type: !4528, scopeLine: 1339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4930 = !DILocalVariable(name: "config", arg: 1, scope: !4929, file: !3, line: 1337, type: !4143)
!4931 = !DILocation(line: 1337, column: 68, scope: !4929)
!4932 = !DILocalVariable(name: "i2c", arg: 2, scope: !4929, file: !3, line: 1338, type: !445)
!4933 = !DILocation(line: 1338, column: 30, scope: !4929)
!4934 = !DILocalVariable(name: "state", scope: !4929, file: !3, line: 1340, type: !441)
!4935 = !DILocation(line: 1340, column: 25, scope: !4929)
!4936 = !DILocalVariable(name: "id", scope: !4929, file: !3, line: 1341, type: !356)
!4937 = !DILocation(line: 1341, column: 6, scope: !4929)
!4938 = !DILocation(line: 1344, column: 10, scope: !4929)
!4939 = !DILocation(line: 1344, column: 8, scope: !4929)
!4940 = !DILocation(line: 1345, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 1345, column: 6)
!4942 = !DILocation(line: 1345, column: 6, scope: !4929)
!4943 = !DILocation(line: 1346, column: 3, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 1345, column: 14)
!4945 = !DILocation(line: 1347, column: 3, scope: !4944)
!4946 = !DILocation(line: 1351, column: 18, scope: !4929)
!4947 = !DILocation(line: 1351, column: 2, scope: !4929)
!4948 = !DILocation(line: 1351, column: 9, scope: !4929)
!4949 = !DILocation(line: 1351, column: 16, scope: !4929)
!4950 = !DILocation(line: 1352, column: 15, scope: !4929)
!4951 = !DILocation(line: 1352, column: 2, scope: !4929)
!4952 = !DILocation(line: 1352, column: 9, scope: !4929)
!4953 = !DILocation(line: 1352, column: 13, scope: !4929)
!4954 = !DILocation(line: 1353, column: 2, scope: !4929)
!4955 = !DILocation(line: 1353, column: 9, scope: !4929)
!4956 = !DILocation(line: 1353, column: 20, scope: !4929)
!4957 = !DILocation(line: 1356, column: 26, scope: !4929)
!4958 = !DILocation(line: 1356, column: 7, scope: !4929)
!4959 = !DILocation(line: 1356, column: 5, scope: !4929)
!4960 = !DILocation(line: 1357, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 1357, column: 6)
!4962 = !DILocation(line: 1357, column: 9, scope: !4961)
!4963 = !DILocation(line: 1357, column: 6, scope: !4929)
!4964 = !DILocation(line: 1358, column: 3, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 1357, column: 14)
!4966 = !DILocation(line: 1359, column: 9, scope: !4965)
!4967 = !DILocation(line: 1359, column: 3, scope: !4965)
!4968 = !DILocation(line: 1360, column: 3, scope: !4965)
!4969 = !DILocation(line: 1362, column: 6, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 1362, column: 6)
!4971 = !DILocation(line: 1362, column: 9, scope: !4970)
!4972 = !DILocation(line: 1362, column: 6, scope: !4929)
!4973 = !DILocation(line: 1363, column: 68, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 1362, column: 18)
!4975 = !DILocation(line: 1363, column: 3, scope: !4974)
!4976 = !DILocation(line: 1364, column: 9, scope: !4974)
!4977 = !DILocation(line: 1364, column: 3, scope: !4974)
!4978 = !DILocation(line: 1365, column: 3, scope: !4974)
!4979 = !DILocation(line: 1369, column: 10, scope: !4929)
!4980 = !DILocation(line: 1369, column: 17, scope: !4929)
!4981 = !DILocation(line: 1369, column: 26, scope: !4929)
!4982 = !DILocation(line: 1369, column: 2, scope: !4929)
!4983 = !DILocation(line: 1370, column: 37, scope: !4929)
!4984 = !DILocation(line: 1370, column: 2, scope: !4929)
!4985 = !DILocation(line: 1370, column: 9, scope: !4929)
!4986 = !DILocation(line: 1370, column: 18, scope: !4929)
!4987 = !DILocation(line: 1370, column: 35, scope: !4929)
!4988 = !DILocation(line: 1371, column: 10, scope: !4929)
!4989 = !DILocation(line: 1371, column: 17, scope: !4929)
!4990 = !DILocation(line: 1371, column: 2, scope: !4929)
!4991 = !DILocation(line: 1372, column: 1, scope: !4929)
!4992 = distinct !DISubprogram(name: "get_order", scope: !4993, file: !4993, line: 29, type: !4994, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4993 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!356, !531}
!4996 = !DILocalVariable(name: "x", arg: 1, scope: !4997, file: !4998, line: 366, type: !588)
!4997 = distinct !DISubprogram(name: "fls64", scope: !4998, file: !4998, line: 366, type: !4999, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!4998 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!356, !588}
!5001 = !DILocation(line: 366, column: 40, scope: !4997, inlinedAt: !5002)
!5002 = distinct !DILocation(line: 46, column: 9, scope: !4992)
!5003 = !DILocalVariable(name: "bitpos", scope: !4997, file: !4998, line: 368, type: !356)
!5004 = !DILocation(line: 368, column: 6, scope: !4997, inlinedAt: !5002)
!5005 = !DILocalVariable(name: "size", arg: 1, scope: !4992, file: !4993, line: 29, type: !531)
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
!5030 = !{i32 346146}
!5031 = !DILocation(line: 377, column: 9, scope: !4997, inlinedAt: !5002)
!5032 = !DILocation(line: 377, column: 16, scope: !4997, inlinedAt: !5002)
!5033 = !DILocation(line: 46, column: 2, scope: !4992)
!5034 = !DILocation(line: 48, column: 1, scope: !4992)
!5035 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5036, file: !5036, line: 30, type: !5037, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5036 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!356, !587}
!5039 = !DILocation(line: 366, column: 40, scope: !4997, inlinedAt: !5040)
!5040 = distinct !DILocation(line: 32, column: 9, scope: !5035)
!5041 = !DILocation(line: 368, column: 6, scope: !4997, inlinedAt: !5040)
!5042 = !DILocalVariable(name: "n", arg: 1, scope: !5035, file: !5036, line: 30, type: !587)
!5043 = !DILocation(line: 30, column: 21, scope: !5035)
!5044 = !DILocation(line: 32, column: 15, scope: !5035)
!5045 = !DILocation(line: 374, column: 2, scope: !4997, inlinedAt: !5040)
!5046 = !DILocation(line: 376, column: 14, scope: !4997, inlinedAt: !5040)
!5047 = !DILocation(line: 377, column: 9, scope: !4997, inlinedAt: !5040)
!5048 = !DILocation(line: 377, column: 16, scope: !4997, inlinedAt: !5040)
!5049 = !DILocation(line: 32, column: 18, scope: !5035)
!5050 = !DILocation(line: 32, column: 2, scope: !5035)
!5051 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5052, file: !5052, line: 137, type: !5053, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5052 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!329, !1316, !2244, !971, !327}
!5055 = !DILocalVariable(name: "s", arg: 1, scope: !5051, file: !5052, line: 137, type: !1316)
!5056 = !DILocation(line: 137, column: 54, scope: !5051)
!5057 = !DILocalVariable(name: "object", arg: 2, scope: !5051, file: !5052, line: 137, type: !2244)
!5058 = !DILocation(line: 137, column: 69, scope: !5051)
!5059 = !DILocalVariable(name: "size", arg: 3, scope: !5051, file: !5052, line: 138, type: !971)
!5060 = !DILocation(line: 138, column: 12, scope: !5051)
!5061 = !DILocalVariable(name: "flags", arg: 4, scope: !5051, file: !5052, line: 138, type: !327)
!5062 = !DILocation(line: 138, column: 24, scope: !5051)
!5063 = !DILocation(line: 140, column: 17, scope: !5051)
!5064 = !DILocation(line: 140, column: 2, scope: !5051)
!5065 = distinct !DISubprogram(name: "tda1004x_release", scope: !3, file: !3, line: 1229, type: !4185, scopeLine: 1230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5066 = !DILocalVariable(name: "fe", arg: 1, scope: !5065, file: !3, line: 1229, type: !4162)
!5067 = !DILocation(line: 1229, column: 51, scope: !5065)
!5068 = !DILocalVariable(name: "state", scope: !5065, file: !3, line: 1231, type: !441)
!5069 = !DILocation(line: 1231, column: 25, scope: !5065)
!5070 = !DILocation(line: 1231, column: 33, scope: !5065)
!5071 = !DILocation(line: 1231, column: 37, scope: !5065)
!5072 = !DILocation(line: 1232, column: 8, scope: !5065)
!5073 = !DILocation(line: 1232, column: 2, scope: !5065)
!5074 = !DILocation(line: 1233, column: 1, scope: !5065)
!5075 = distinct !DISubprogram(name: "tda10045_init", scope: !3, file: !3, line: 602, type: !4191, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5076 = !DILocalVariable(name: "fe", arg: 1, scope: !5075, file: !3, line: 602, type: !4162)
!5077 = !DILocation(line: 602, column: 47, scope: !5075)
!5078 = !DILocalVariable(name: "state", scope: !5075, file: !3, line: 604, type: !441)
!5079 = !DILocation(line: 604, column: 25, scope: !5075)
!5080 = !DILocation(line: 604, column: 33, scope: !5075)
!5081 = !DILocation(line: 604, column: 37, scope: !5075)
!5082 = !DILocation(line: 606, column: 2, scope: !5075)
!5083 = !DILocation(line: 606, column: 2, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 606, column: 2)
!5085 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 606, column: 2)
!5086 = !DILocation(line: 606, column: 2, scope: !5085)
!5087 = !DILocation(line: 608, column: 24, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 608, column: 6)
!5089 = !DILocation(line: 608, column: 6, scope: !5088)
!5090 = !DILocation(line: 608, column: 6, scope: !5075)
!5091 = !DILocation(line: 609, column: 3, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 608, column: 29)
!5093 = !DILocation(line: 610, column: 3, scope: !5092)
!5094 = !DILocation(line: 613, column: 22, scope: !5075)
!5095 = !DILocation(line: 613, column: 2, scope: !5075)
!5096 = !DILocation(line: 616, column: 22, scope: !5075)
!5097 = !DILocation(line: 616, column: 2, scope: !5075)
!5098 = !DILocation(line: 617, column: 22, scope: !5075)
!5099 = !DILocation(line: 617, column: 2, scope: !5075)
!5100 = !DILocation(line: 618, column: 22, scope: !5075)
!5101 = !DILocation(line: 618, column: 2, scope: !5075)
!5102 = !DILocation(line: 619, column: 22, scope: !5075)
!5103 = !DILocation(line: 619, column: 2, scope: !5075)
!5104 = !DILocation(line: 620, column: 22, scope: !5075)
!5105 = !DILocation(line: 620, column: 2, scope: !5075)
!5106 = !DILocation(line: 621, column: 22, scope: !5075)
!5107 = !DILocation(line: 621, column: 2, scope: !5075)
!5108 = !DILocation(line: 622, column: 23, scope: !5075)
!5109 = !DILocation(line: 622, column: 2, scope: !5075)
!5110 = !DILocation(line: 623, column: 23, scope: !5075)
!5111 = !DILocation(line: 623, column: 2, scope: !5075)
!5112 = !DILocation(line: 624, column: 22, scope: !5075)
!5113 = !DILocation(line: 624, column: 2, scope: !5075)
!5114 = !DILocation(line: 625, column: 22, scope: !5075)
!5115 = !DILocation(line: 625, column: 2, scope: !5075)
!5116 = !DILocation(line: 626, column: 23, scope: !5075)
!5117 = !DILocation(line: 626, column: 2, scope: !5075)
!5118 = !DILocation(line: 628, column: 22, scope: !5075)
!5119 = !DILocation(line: 628, column: 41, scope: !5075)
!5120 = !DILocation(line: 628, column: 48, scope: !5075)
!5121 = !DILocation(line: 628, column: 56, scope: !5075)
!5122 = !DILocation(line: 628, column: 2, scope: !5075)
!5123 = !DILocation(line: 630, column: 2, scope: !5075)
!5124 = !DILocation(line: 631, column: 1, scope: !5075)
!5125 = distinct !DISubprogram(name: "tda1004x_sleep", scope: !3, file: !3, line: 1182, type: !4191, scopeLine: 1183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5126 = !DILocalVariable(name: "fe", arg: 1, scope: !5125, file: !3, line: 1182, type: !4162)
!5127 = !DILocation(line: 1182, column: 48, scope: !5125)
!5128 = !DILocalVariable(name: "state", scope: !5125, file: !3, line: 1184, type: !441)
!5129 = !DILocation(line: 1184, column: 25, scope: !5125)
!5130 = !DILocation(line: 1184, column: 33, scope: !5125)
!5131 = !DILocation(line: 1184, column: 37, scope: !5125)
!5132 = !DILocalVariable(name: "gpio_conf", scope: !5125, file: !3, line: 1185, type: !356)
!5133 = !DILocation(line: 1185, column: 6, scope: !5125)
!5134 = !DILocation(line: 1187, column: 10, scope: !5125)
!5135 = !DILocation(line: 1187, column: 17, scope: !5125)
!5136 = !DILocation(line: 1187, column: 2, scope: !5125)
!5137 = !DILocation(line: 1189, column: 23, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 1187, column: 29)
!5139 = !DILocation(line: 1189, column: 3, scope: !5138)
!5140 = !DILocation(line: 1190, column: 3, scope: !5138)
!5141 = !DILocation(line: 1194, column: 24, scope: !5138)
!5142 = !DILocation(line: 1194, column: 3, scope: !5138)
!5143 = !DILocation(line: 1196, column: 15, scope: !5138)
!5144 = !DILocation(line: 1196, column: 22, scope: !5138)
!5145 = !DILocation(line: 1196, column: 30, scope: !5138)
!5146 = !DILocation(line: 1196, column: 13, scope: !5138)
!5147 = !DILocation(line: 1197, column: 7, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 1197, column: 7)
!5149 = !DILocation(line: 1197, column: 17, scope: !5148)
!5150 = !DILocation(line: 1197, column: 7, scope: !5138)
!5151 = !DILocation(line: 1198, column: 24, scope: !5148)
!5152 = !DILocation(line: 1199, column: 9, scope: !5148)
!5153 = !DILocation(line: 1199, column: 19, scope: !5148)
!5154 = !DILocation(line: 1199, column: 27, scope: !5148)
!5155 = !DILocation(line: 1198, column: 4, scope: !5148)
!5156 = !DILocation(line: 1201, column: 23, scope: !5138)
!5157 = !DILocation(line: 1201, column: 3, scope: !5138)
!5158 = !DILocation(line: 1202, column: 23, scope: !5138)
!5159 = !DILocation(line: 1202, column: 3, scope: !5138)
!5160 = !DILocation(line: 1203, column: 3, scope: !5138)
!5161 = !DILocation(line: 1206, column: 2, scope: !5125)
!5162 = distinct !DISubprogram(name: "tda1004x_write", scope: !3, file: !3, line: 592, type: !4196, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5163 = !DILocalVariable(name: "fe", arg: 1, scope: !5162, file: !3, line: 592, type: !4162)
!5164 = !DILocation(line: 592, column: 48, scope: !5162)
!5165 = !DILocalVariable(name: "buf", arg: 2, scope: !5162, file: !3, line: 592, type: !4198)
!5166 = !DILocation(line: 592, column: 61, scope: !5162)
!5167 = !DILocalVariable(name: "len", arg: 3, scope: !5162, file: !3, line: 592, type: !356)
!5168 = !DILocation(line: 592, column: 72, scope: !5162)
!5169 = !DILocalVariable(name: "state", scope: !5162, file: !3, line: 594, type: !441)
!5170 = !DILocation(line: 594, column: 25, scope: !5162)
!5171 = !DILocation(line: 594, column: 33, scope: !5162)
!5172 = !DILocation(line: 594, column: 37, scope: !5162)
!5173 = !DILocation(line: 596, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 596, column: 6)
!5175 = !DILocation(line: 596, column: 10, scope: !5174)
!5176 = !DILocation(line: 596, column: 6, scope: !5162)
!5177 = !DILocation(line: 597, column: 3, scope: !5174)
!5178 = !DILocation(line: 599, column: 30, scope: !5162)
!5179 = !DILocation(line: 599, column: 37, scope: !5162)
!5180 = !DILocation(line: 599, column: 45, scope: !5162)
!5181 = !DILocation(line: 599, column: 9, scope: !5162)
!5182 = !DILocation(line: 599, column: 2, scope: !5162)
!5183 = !DILocation(line: 600, column: 1, scope: !5162)
!5184 = distinct !DISubprogram(name: "tda1004x_set_fe", scope: !3, file: !3, line: 691, type: !4191, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5185 = !DILocalVariable(name: "fe", arg: 1, scope: !5184, file: !3, line: 691, type: !4162)
!5186 = !DILocation(line: 691, column: 49, scope: !5184)
!5187 = !DILocalVariable(name: "fe_params", scope: !5184, file: !3, line: 693, type: !4224)
!5188 = !DILocation(line: 693, column: 34, scope: !5184)
!5189 = !DILocation(line: 693, column: 47, scope: !5184)
!5190 = !DILocation(line: 693, column: 51, scope: !5184)
!5191 = !DILocalVariable(name: "state", scope: !5184, file: !3, line: 694, type: !441)
!5192 = !DILocation(line: 694, column: 25, scope: !5184)
!5193 = !DILocation(line: 694, column: 33, scope: !5184)
!5194 = !DILocation(line: 694, column: 37, scope: !5184)
!5195 = !DILocalVariable(name: "tmp", scope: !5184, file: !3, line: 695, type: !356)
!5196 = !DILocation(line: 695, column: 6, scope: !5184)
!5197 = !DILocalVariable(name: "inversion", scope: !5184, file: !3, line: 696, type: !356)
!5198 = !DILocation(line: 696, column: 6, scope: !5184)
!5199 = !DILocation(line: 698, column: 2, scope: !5184)
!5200 = !DILocation(line: 698, column: 2, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 698, column: 2)
!5202 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 698, column: 2)
!5203 = !DILocation(line: 698, column: 2, scope: !5202)
!5204 = !DILocation(line: 700, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 700, column: 6)
!5206 = !DILocation(line: 700, column: 13, scope: !5205)
!5207 = !DILocation(line: 700, column: 24, scope: !5205)
!5208 = !DILocation(line: 700, column: 6, scope: !5184)
!5209 = !DILocation(line: 702, column: 23, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 700, column: 52)
!5211 = !DILocation(line: 702, column: 3, scope: !5210)
!5212 = !DILocation(line: 703, column: 23, scope: !5210)
!5213 = !DILocation(line: 703, column: 3, scope: !5210)
!5214 = !DILocation(line: 704, column: 23, scope: !5210)
!5215 = !DILocation(line: 704, column: 3, scope: !5210)
!5216 = !DILocation(line: 707, column: 23, scope: !5210)
!5217 = !DILocation(line: 707, column: 3, scope: !5210)
!5218 = !DILocation(line: 708, column: 2, scope: !5210)
!5219 = !DILocation(line: 711, column: 6, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 711, column: 6)
!5221 = !DILocation(line: 711, column: 10, scope: !5220)
!5222 = !DILocation(line: 711, column: 14, scope: !5220)
!5223 = !DILocation(line: 711, column: 24, scope: !5220)
!5224 = !DILocation(line: 711, column: 6, scope: !5184)
!5225 = !DILocation(line: 712, column: 3, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 711, column: 36)
!5227 = !DILocation(line: 712, column: 7, scope: !5226)
!5228 = !DILocation(line: 712, column: 11, scope: !5226)
!5229 = !DILocation(line: 712, column: 21, scope: !5226)
!5230 = !DILocation(line: 712, column: 32, scope: !5226)
!5231 = !DILocation(line: 713, column: 7, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 713, column: 7)
!5233 = !DILocation(line: 713, column: 11, scope: !5232)
!5234 = !DILocation(line: 713, column: 15, scope: !5232)
!5235 = !DILocation(line: 713, column: 7, scope: !5226)
!5236 = !DILocation(line: 714, column: 4, scope: !5232)
!5237 = !DILocation(line: 714, column: 8, scope: !5232)
!5238 = !DILocation(line: 714, column: 12, scope: !5232)
!5239 = !DILocation(line: 714, column: 26, scope: !5232)
!5240 = !DILocation(line: 715, column: 2, scope: !5226)
!5241 = !DILocation(line: 719, column: 6, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 719, column: 6)
!5243 = !DILocation(line: 719, column: 13, scope: !5242)
!5244 = !DILocation(line: 719, column: 24, scope: !5242)
!5245 = !DILocation(line: 719, column: 6, scope: !5184)
!5246 = !DILocation(line: 720, column: 3, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 719, column: 52)
!5248 = !DILocation(line: 720, column: 14, scope: !5247)
!5249 = !DILocation(line: 720, column: 27, scope: !5247)
!5250 = !DILocation(line: 721, column: 3, scope: !5247)
!5251 = !DILocation(line: 721, column: 14, scope: !5247)
!5252 = !DILocation(line: 721, column: 29, scope: !5247)
!5253 = !DILocation(line: 722, column: 3, scope: !5247)
!5254 = !DILocation(line: 722, column: 14, scope: !5247)
!5255 = !DILocation(line: 722, column: 32, scope: !5247)
!5256 = !DILocation(line: 723, column: 2, scope: !5247)
!5257 = !DILocation(line: 726, column: 7, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 726, column: 6)
!5259 = !DILocation(line: 726, column: 18, scope: !5258)
!5260 = !DILocation(line: 726, column: 31, scope: !5258)
!5261 = !DILocation(line: 726, column: 44, scope: !5258)
!5262 = !DILocation(line: 727, column: 4, scope: !5258)
!5263 = !DILocation(line: 727, column: 15, scope: !5258)
!5264 = !DILocation(line: 727, column: 28, scope: !5258)
!5265 = !DILocation(line: 727, column: 41, scope: !5258)
!5266 = !DILocation(line: 728, column: 4, scope: !5258)
!5267 = !DILocation(line: 728, column: 15, scope: !5258)
!5268 = !DILocation(line: 728, column: 26, scope: !5258)
!5269 = !DILocation(line: 728, column: 39, scope: !5258)
!5270 = !DILocation(line: 729, column: 4, scope: !5258)
!5271 = !DILocation(line: 729, column: 15, scope: !5258)
!5272 = !DILocation(line: 729, column: 25, scope: !5258)
!5273 = !DILocation(line: 726, column: 6, scope: !5184)
!5274 = !DILocation(line: 730, column: 23, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 729, column: 45)
!5276 = !DILocation(line: 730, column: 3, scope: !5275)
!5277 = !DILocation(line: 731, column: 23, scope: !5275)
!5278 = !DILocation(line: 731, column: 3, scope: !5275)
!5279 = !DILocation(line: 732, column: 23, scope: !5275)
!5280 = !DILocation(line: 732, column: 3, scope: !5275)
!5281 = !DILocation(line: 733, column: 23, scope: !5275)
!5282 = !DILocation(line: 733, column: 3, scope: !5275)
!5283 = !DILocation(line: 734, column: 2, scope: !5275)
!5284 = !DILocation(line: 735, column: 23, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 734, column: 9)
!5286 = !DILocation(line: 735, column: 3, scope: !5285)
!5287 = !DILocation(line: 738, column: 29, scope: !5285)
!5288 = !DILocation(line: 738, column: 40, scope: !5285)
!5289 = !DILocation(line: 738, column: 9, scope: !5285)
!5290 = !DILocation(line: 738, column: 7, scope: !5285)
!5291 = !DILocation(line: 739, column: 7, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 739, column: 7)
!5293 = !DILocation(line: 739, column: 11, scope: !5292)
!5294 = !DILocation(line: 739, column: 7, scope: !5285)
!5295 = !DILocation(line: 740, column: 11, scope: !5292)
!5296 = !DILocation(line: 740, column: 4, scope: !5292)
!5297 = !DILocation(line: 741, column: 23, scope: !5285)
!5298 = !DILocation(line: 741, column: 52, scope: !5285)
!5299 = !DILocation(line: 741, column: 3, scope: !5285)
!5300 = !DILocation(line: 744, column: 29, scope: !5285)
!5301 = !DILocation(line: 744, column: 40, scope: !5285)
!5302 = !DILocation(line: 744, column: 9, scope: !5285)
!5303 = !DILocation(line: 744, column: 7, scope: !5285)
!5304 = !DILocation(line: 745, column: 7, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 745, column: 7)
!5306 = !DILocation(line: 745, column: 11, scope: !5305)
!5307 = !DILocation(line: 745, column: 7, scope: !5285)
!5308 = !DILocation(line: 746, column: 11, scope: !5305)
!5309 = !DILocation(line: 746, column: 4, scope: !5305)
!5310 = !DILocation(line: 747, column: 23, scope: !5285)
!5311 = !DILocation(line: 747, column: 55, scope: !5285)
!5312 = !DILocation(line: 747, column: 59, scope: !5285)
!5313 = !DILocation(line: 747, column: 3, scope: !5285)
!5314 = !DILocation(line: 750, column: 11, scope: !5285)
!5315 = !DILocation(line: 750, column: 22, scope: !5285)
!5316 = !DILocation(line: 750, column: 3, scope: !5285)
!5317 = !DILocation(line: 752, column: 24, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 750, column: 34)
!5319 = !DILocation(line: 752, column: 4, scope: !5318)
!5320 = !DILocation(line: 753, column: 4, scope: !5318)
!5321 = !DILocation(line: 756, column: 24, scope: !5318)
!5322 = !DILocation(line: 756, column: 4, scope: !5318)
!5323 = !DILocation(line: 757, column: 4, scope: !5318)
!5324 = !DILocation(line: 760, column: 24, scope: !5318)
!5325 = !DILocation(line: 760, column: 4, scope: !5318)
!5326 = !DILocation(line: 761, column: 4, scope: !5318)
!5327 = !DILocation(line: 764, column: 4, scope: !5318)
!5328 = !DILocation(line: 768, column: 11, scope: !5285)
!5329 = !DILocation(line: 768, column: 22, scope: !5285)
!5330 = !DILocation(line: 768, column: 3, scope: !5285)
!5331 = !DILocation(line: 770, column: 24, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 768, column: 33)
!5333 = !DILocation(line: 770, column: 4, scope: !5332)
!5334 = !DILocation(line: 771, column: 4, scope: !5332)
!5335 = !DILocation(line: 774, column: 24, scope: !5332)
!5336 = !DILocation(line: 774, column: 4, scope: !5332)
!5337 = !DILocation(line: 775, column: 4, scope: !5332)
!5338 = !DILocation(line: 778, column: 24, scope: !5332)
!5339 = !DILocation(line: 778, column: 4, scope: !5332)
!5340 = !DILocation(line: 779, column: 4, scope: !5332)
!5341 = !DILocation(line: 782, column: 24, scope: !5332)
!5342 = !DILocation(line: 782, column: 4, scope: !5332)
!5343 = !DILocation(line: 783, column: 4, scope: !5332)
!5344 = !DILocation(line: 786, column: 4, scope: !5332)
!5345 = !DILocation(line: 791, column: 10, scope: !5184)
!5346 = !DILocation(line: 791, column: 17, scope: !5184)
!5347 = !DILocation(line: 791, column: 2, scope: !5184)
!5348 = !DILocation(line: 793, column: 27, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 791, column: 29)
!5350 = !DILocation(line: 793, column: 34, scope: !5349)
!5351 = !DILocation(line: 793, column: 45, scope: !5349)
!5352 = !DILocation(line: 793, column: 3, scope: !5349)
!5353 = !DILocation(line: 794, column: 3, scope: !5349)
!5354 = !DILocation(line: 797, column: 27, scope: !5349)
!5355 = !DILocation(line: 797, column: 34, scope: !5349)
!5356 = !DILocation(line: 797, column: 45, scope: !5349)
!5357 = !DILocation(line: 797, column: 3, scope: !5349)
!5358 = !DILocation(line: 798, column: 3, scope: !5349)
!5359 = !DILocation(line: 802, column: 14, scope: !5184)
!5360 = !DILocation(line: 802, column: 25, scope: !5184)
!5361 = !DILocation(line: 802, column: 12, scope: !5184)
!5362 = !DILocation(line: 803, column: 6, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 803, column: 6)
!5364 = !DILocation(line: 803, column: 13, scope: !5363)
!5365 = !DILocation(line: 803, column: 21, scope: !5363)
!5366 = !DILocation(line: 803, column: 6, scope: !5184)
!5367 = !DILocation(line: 804, column: 15, scope: !5363)
!5368 = !DILocation(line: 804, column: 13, scope: !5363)
!5369 = !DILocation(line: 804, column: 3, scope: !5363)
!5370 = !DILocation(line: 805, column: 10, scope: !5184)
!5371 = !DILocation(line: 805, column: 2, scope: !5184)
!5372 = !DILocation(line: 807, column: 23, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 805, column: 21)
!5374 = !DILocation(line: 807, column: 3, scope: !5373)
!5375 = !DILocation(line: 808, column: 3, scope: !5373)
!5376 = !DILocation(line: 811, column: 23, scope: !5373)
!5377 = !DILocation(line: 811, column: 3, scope: !5373)
!5378 = !DILocation(line: 812, column: 3, scope: !5373)
!5379 = !DILocation(line: 815, column: 3, scope: !5373)
!5380 = !DILocation(line: 819, column: 10, scope: !5184)
!5381 = !DILocation(line: 819, column: 21, scope: !5184)
!5382 = !DILocation(line: 819, column: 2, scope: !5184)
!5383 = !DILocation(line: 821, column: 23, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 819, column: 37)
!5385 = !DILocation(line: 821, column: 3, scope: !5384)
!5386 = !DILocation(line: 822, column: 23, scope: !5384)
!5387 = !DILocation(line: 822, column: 3, scope: !5384)
!5388 = !DILocation(line: 823, column: 3, scope: !5384)
!5389 = !DILocation(line: 826, column: 23, scope: !5384)
!5390 = !DILocation(line: 826, column: 3, scope: !5384)
!5391 = !DILocation(line: 827, column: 23, scope: !5384)
!5392 = !DILocation(line: 827, column: 3, scope: !5384)
!5393 = !DILocation(line: 828, column: 3, scope: !5384)
!5394 = !DILocation(line: 831, column: 23, scope: !5384)
!5395 = !DILocation(line: 831, column: 3, scope: !5384)
!5396 = !DILocation(line: 832, column: 23, scope: !5384)
!5397 = !DILocation(line: 832, column: 3, scope: !5384)
!5398 = !DILocation(line: 833, column: 3, scope: !5384)
!5399 = !DILocation(line: 836, column: 23, scope: !5384)
!5400 = !DILocation(line: 836, column: 3, scope: !5384)
!5401 = !DILocation(line: 837, column: 23, scope: !5384)
!5402 = !DILocation(line: 837, column: 3, scope: !5384)
!5403 = !DILocation(line: 838, column: 3, scope: !5384)
!5404 = !DILocation(line: 841, column: 23, scope: !5384)
!5405 = !DILocation(line: 841, column: 3, scope: !5384)
!5406 = !DILocation(line: 842, column: 23, scope: !5384)
!5407 = !DILocation(line: 842, column: 3, scope: !5384)
!5408 = !DILocation(line: 843, column: 3, scope: !5384)
!5409 = !DILocation(line: 846, column: 3, scope: !5384)
!5410 = !DILocation(line: 850, column: 10, scope: !5184)
!5411 = !DILocation(line: 850, column: 21, scope: !5184)
!5412 = !DILocation(line: 850, column: 2, scope: !5184)
!5413 = !DILocation(line: 852, column: 23, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 850, column: 40)
!5415 = !DILocation(line: 852, column: 3, scope: !5414)
!5416 = !DILocation(line: 853, column: 23, scope: !5414)
!5417 = !DILocation(line: 853, column: 3, scope: !5414)
!5418 = !DILocation(line: 854, column: 3, scope: !5414)
!5419 = !DILocation(line: 857, column: 23, scope: !5414)
!5420 = !DILocation(line: 857, column: 3, scope: !5414)
!5421 = !DILocation(line: 858, column: 23, scope: !5414)
!5422 = !DILocation(line: 858, column: 3, scope: !5414)
!5423 = !DILocation(line: 859, column: 3, scope: !5414)
!5424 = !DILocation(line: 862, column: 23, scope: !5414)
!5425 = !DILocation(line: 862, column: 3, scope: !5414)
!5426 = !DILocation(line: 863, column: 23, scope: !5414)
!5427 = !DILocation(line: 863, column: 3, scope: !5414)
!5428 = !DILocation(line: 864, column: 3, scope: !5414)
!5429 = !DILocation(line: 867, column: 3, scope: !5414)
!5430 = !DILocation(line: 871, column: 10, scope: !5184)
!5431 = !DILocation(line: 871, column: 17, scope: !5184)
!5432 = !DILocation(line: 871, column: 2, scope: !5184)
!5433 = !DILocation(line: 873, column: 23, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 871, column: 29)
!5435 = !DILocation(line: 873, column: 3, scope: !5434)
!5436 = !DILocation(line: 874, column: 23, scope: !5434)
!5437 = !DILocation(line: 874, column: 3, scope: !5434)
!5438 = !DILocation(line: 875, column: 3, scope: !5434)
!5439 = !DILocation(line: 878, column: 23, scope: !5434)
!5440 = !DILocation(line: 878, column: 3, scope: !5434)
!5441 = !DILocation(line: 879, column: 3, scope: !5434)
!5442 = !DILocation(line: 880, column: 23, scope: !5434)
!5443 = !DILocation(line: 880, column: 3, scope: !5434)
!5444 = !DILocation(line: 881, column: 3, scope: !5434)
!5445 = !DILocation(line: 884, column: 2, scope: !5184)
!5446 = !DILocation(line: 886, column: 2, scope: !5184)
!5447 = !DILocation(line: 887, column: 1, scope: !5184)
!5448 = distinct !DISubprogram(name: "tda1004x_get_tune_settings", scope: !3, file: !3, line: 1220, type: !4212, scopeLine: 1221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5449 = !DILocalVariable(name: "fe", arg: 1, scope: !5448, file: !3, line: 1220, type: !4162)
!5450 = !DILocation(line: 1220, column: 60, scope: !5448)
!5451 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5448, file: !3, line: 1220, type: !4214)
!5452 = !DILocation(line: 1220, column: 99, scope: !5448)
!5453 = !DILocation(line: 1222, column: 2, scope: !5448)
!5454 = !DILocation(line: 1222, column: 14, scope: !5448)
!5455 = !DILocation(line: 1222, column: 27, scope: !5448)
!5456 = !DILocation(line: 1224, column: 2, scope: !5448)
!5457 = !DILocation(line: 1224, column: 14, scope: !5448)
!5458 = !DILocation(line: 1224, column: 24, scope: !5448)
!5459 = !DILocation(line: 1225, column: 2, scope: !5448)
!5460 = !DILocation(line: 1225, column: 14, scope: !5448)
!5461 = !DILocation(line: 1225, column: 24, scope: !5448)
!5462 = !DILocation(line: 1226, column: 2, scope: !5448)
!5463 = distinct !DISubprogram(name: "tda1004x_get_fe", scope: !3, file: !3, line: 889, type: !4222, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5464 = !DILocalVariable(name: "fe", arg: 1, scope: !5463, file: !3, line: 889, type: !4162)
!5465 = !DILocation(line: 889, column: 49, scope: !5463)
!5466 = !DILocalVariable(name: "fe_params", arg: 2, scope: !5463, file: !3, line: 890, type: !4224)
!5467 = !DILocation(line: 890, column: 39, scope: !5463)
!5468 = !DILocalVariable(name: "state", scope: !5463, file: !3, line: 892, type: !441)
!5469 = !DILocation(line: 892, column: 25, scope: !5463)
!5470 = !DILocation(line: 892, column: 33, scope: !5463)
!5471 = !DILocation(line: 892, column: 37, scope: !5463)
!5472 = !DILocalVariable(name: "status", scope: !5463, file: !3, line: 893, type: !356)
!5473 = !DILocation(line: 893, column: 6, scope: !5463)
!5474 = !DILocation(line: 895, column: 2, scope: !5463)
!5475 = !DILocation(line: 895, column: 2, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 895, column: 2)
!5477 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 895, column: 2)
!5478 = !DILocation(line: 895, column: 2, scope: !5477)
!5479 = !DILocation(line: 897, column: 30, scope: !5463)
!5480 = !DILocation(line: 897, column: 11, scope: !5463)
!5481 = !DILocation(line: 897, column: 9, scope: !5463)
!5482 = !DILocation(line: 898, column: 6, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 898, column: 6)
!5484 = !DILocation(line: 898, column: 13, scope: !5483)
!5485 = !DILocation(line: 898, column: 6, scope: !5463)
!5486 = !DILocation(line: 899, column: 3, scope: !5483)
!5487 = !DILocation(line: 902, column: 8, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 902, column: 6)
!5489 = !DILocation(line: 902, column: 15, scope: !5488)
!5490 = !DILocation(line: 902, column: 6, scope: !5463)
!5491 = !DILocation(line: 903, column: 3, scope: !5488)
!5492 = !DILocation(line: 906, column: 2, scope: !5463)
!5493 = !DILocation(line: 906, column: 13, scope: !5463)
!5494 = !DILocation(line: 906, column: 23, scope: !5463)
!5495 = !DILocation(line: 907, column: 25, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 907, column: 6)
!5497 = !DILocation(line: 907, column: 6, scope: !5496)
!5498 = !DILocation(line: 907, column: 49, scope: !5496)
!5499 = !DILocation(line: 907, column: 6, scope: !5463)
!5500 = !DILocation(line: 908, column: 3, scope: !5496)
!5501 = !DILocation(line: 908, column: 14, scope: !5496)
!5502 = !DILocation(line: 908, column: 24, scope: !5496)
!5503 = !DILocation(line: 909, column: 6, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 909, column: 6)
!5505 = !DILocation(line: 909, column: 13, scope: !5504)
!5506 = !DILocation(line: 909, column: 21, scope: !5504)
!5507 = !DILocation(line: 909, column: 6, scope: !5463)
!5508 = !DILocation(line: 910, column: 26, scope: !5504)
!5509 = !DILocation(line: 910, column: 37, scope: !5504)
!5510 = !DILocation(line: 910, column: 3, scope: !5504)
!5511 = !DILocation(line: 910, column: 14, scope: !5504)
!5512 = !DILocation(line: 910, column: 24, scope: !5504)
!5513 = !DILocation(line: 913, column: 10, scope: !5463)
!5514 = !DILocation(line: 913, column: 17, scope: !5463)
!5515 = !DILocation(line: 913, column: 2, scope: !5463)
!5516 = !DILocation(line: 915, column: 30, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 913, column: 29)
!5518 = !DILocation(line: 915, column: 11, scope: !5517)
!5519 = !DILocation(line: 915, column: 3, scope: !5517)
!5520 = !DILocation(line: 917, column: 4, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 915, column: 58)
!5522 = !DILocation(line: 917, column: 15, scope: !5521)
!5523 = !DILocation(line: 917, column: 28, scope: !5521)
!5524 = !DILocation(line: 918, column: 4, scope: !5521)
!5525 = !DILocation(line: 920, column: 4, scope: !5521)
!5526 = !DILocation(line: 920, column: 15, scope: !5521)
!5527 = !DILocation(line: 920, column: 28, scope: !5521)
!5528 = !DILocation(line: 921, column: 4, scope: !5521)
!5529 = !DILocation(line: 923, column: 4, scope: !5521)
!5530 = !DILocation(line: 923, column: 15, scope: !5521)
!5531 = !DILocation(line: 923, column: 28, scope: !5521)
!5532 = !DILocation(line: 924, column: 4, scope: !5521)
!5533 = !DILocation(line: 926, column: 3, scope: !5517)
!5534 = !DILocation(line: 928, column: 30, scope: !5517)
!5535 = !DILocation(line: 928, column: 11, scope: !5517)
!5536 = !DILocation(line: 928, column: 3, scope: !5517)
!5537 = !DILocation(line: 931, column: 4, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 928, column: 60)
!5539 = !DILocation(line: 931, column: 15, scope: !5538)
!5540 = !DILocation(line: 931, column: 28, scope: !5538)
!5541 = !DILocation(line: 932, column: 4, scope: !5538)
!5542 = !DILocation(line: 935, column: 4, scope: !5538)
!5543 = !DILocation(line: 935, column: 15, scope: !5538)
!5544 = !DILocation(line: 935, column: 28, scope: !5538)
!5545 = !DILocation(line: 936, column: 4, scope: !5538)
!5546 = !DILocation(line: 939, column: 4, scope: !5538)
!5547 = !DILocation(line: 939, column: 15, scope: !5538)
!5548 = !DILocation(line: 939, column: 28, scope: !5538)
!5549 = !DILocation(line: 940, column: 4, scope: !5538)
!5550 = !DILocation(line: 942, column: 3, scope: !5517)
!5551 = !DILocation(line: 947, column: 45, scope: !5463)
!5552 = !DILocation(line: 947, column: 26, scope: !5463)
!5553 = !DILocation(line: 947, column: 72, scope: !5463)
!5554 = !DILocation(line: 947, column: 6, scope: !5463)
!5555 = !DILocation(line: 946, column: 2, scope: !5463)
!5556 = !DILocation(line: 946, column: 13, scope: !5463)
!5557 = !DILocation(line: 946, column: 26, scope: !5463)
!5558 = !DILocation(line: 949, column: 46, scope: !5463)
!5559 = !DILocation(line: 949, column: 27, scope: !5463)
!5560 = !DILocation(line: 949, column: 73, scope: !5463)
!5561 = !DILocation(line: 949, column: 79, scope: !5463)
!5562 = !DILocation(line: 949, column: 6, scope: !5463)
!5563 = !DILocation(line: 948, column: 2, scope: !5463)
!5564 = !DILocation(line: 948, column: 13, scope: !5463)
!5565 = !DILocation(line: 948, column: 26, scope: !5463)
!5566 = !DILocation(line: 952, column: 29, scope: !5463)
!5567 = !DILocation(line: 952, column: 10, scope: !5463)
!5568 = !DILocation(line: 952, column: 56, scope: !5463)
!5569 = !DILocation(line: 952, column: 2, scope: !5463)
!5570 = !DILocation(line: 954, column: 3, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 952, column: 61)
!5572 = !DILocation(line: 954, column: 14, scope: !5571)
!5573 = !DILocation(line: 954, column: 25, scope: !5571)
!5574 = !DILocation(line: 955, column: 3, scope: !5571)
!5575 = !DILocation(line: 957, column: 3, scope: !5571)
!5576 = !DILocation(line: 957, column: 14, scope: !5571)
!5577 = !DILocation(line: 957, column: 25, scope: !5571)
!5578 = !DILocation(line: 958, column: 3, scope: !5571)
!5579 = !DILocation(line: 960, column: 3, scope: !5571)
!5580 = !DILocation(line: 960, column: 14, scope: !5571)
!5581 = !DILocation(line: 960, column: 25, scope: !5571)
!5582 = !DILocation(line: 961, column: 3, scope: !5571)
!5583 = !DILocation(line: 965, column: 2, scope: !5463)
!5584 = !DILocation(line: 965, column: 13, scope: !5463)
!5585 = !DILocation(line: 965, column: 31, scope: !5463)
!5586 = !DILocation(line: 966, column: 25, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 966, column: 6)
!5588 = !DILocation(line: 966, column: 6, scope: !5587)
!5589 = !DILocation(line: 966, column: 52, scope: !5587)
!5590 = !DILocation(line: 966, column: 6, scope: !5463)
!5591 = !DILocation(line: 967, column: 3, scope: !5587)
!5592 = !DILocation(line: 967, column: 14, scope: !5587)
!5593 = !DILocation(line: 967, column: 32, scope: !5587)
!5594 = !DILocation(line: 970, column: 30, scope: !5463)
!5595 = !DILocation(line: 970, column: 11, scope: !5463)
!5596 = !DILocation(line: 970, column: 57, scope: !5463)
!5597 = !DILocation(line: 970, column: 65, scope: !5463)
!5598 = !DILocation(line: 970, column: 2, scope: !5463)
!5599 = !DILocation(line: 972, column: 3, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 970, column: 71)
!5601 = !DILocation(line: 972, column: 14, scope: !5600)
!5602 = !DILocation(line: 972, column: 29, scope: !5600)
!5603 = !DILocation(line: 973, column: 3, scope: !5600)
!5604 = !DILocation(line: 975, column: 3, scope: !5600)
!5605 = !DILocation(line: 975, column: 14, scope: !5600)
!5606 = !DILocation(line: 975, column: 29, scope: !5600)
!5607 = !DILocation(line: 976, column: 3, scope: !5600)
!5608 = !DILocation(line: 978, column: 3, scope: !5600)
!5609 = !DILocation(line: 978, column: 14, scope: !5600)
!5610 = !DILocation(line: 978, column: 29, scope: !5600)
!5611 = !DILocation(line: 979, column: 3, scope: !5600)
!5612 = !DILocation(line: 981, column: 3, scope: !5600)
!5613 = !DILocation(line: 981, column: 14, scope: !5600)
!5614 = !DILocation(line: 981, column: 29, scope: !5600)
!5615 = !DILocation(line: 982, column: 3, scope: !5600)
!5616 = !DILocation(line: 986, column: 30, scope: !5463)
!5617 = !DILocation(line: 986, column: 11, scope: !5463)
!5618 = !DILocation(line: 986, column: 57, scope: !5463)
!5619 = !DILocation(line: 986, column: 65, scope: !5463)
!5620 = !DILocation(line: 986, column: 2, scope: !5463)
!5621 = !DILocation(line: 988, column: 3, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 986, column: 71)
!5623 = !DILocation(line: 988, column: 14, scope: !5622)
!5624 = !DILocation(line: 988, column: 24, scope: !5622)
!5625 = !DILocation(line: 989, column: 3, scope: !5622)
!5626 = !DILocation(line: 991, column: 3, scope: !5622)
!5627 = !DILocation(line: 991, column: 14, scope: !5622)
!5628 = !DILocation(line: 991, column: 24, scope: !5622)
!5629 = !DILocation(line: 992, column: 3, scope: !5622)
!5630 = !DILocation(line: 994, column: 3, scope: !5622)
!5631 = !DILocation(line: 994, column: 14, scope: !5622)
!5632 = !DILocation(line: 994, column: 24, scope: !5622)
!5633 = !DILocation(line: 995, column: 3, scope: !5622)
!5634 = !DILocation(line: 997, column: 3, scope: !5622)
!5635 = !DILocation(line: 997, column: 14, scope: !5622)
!5636 = !DILocation(line: 997, column: 24, scope: !5622)
!5637 = !DILocation(line: 998, column: 3, scope: !5622)
!5638 = !DILocation(line: 1001, column: 2, scope: !5463)
!5639 = !DILocation(line: 1002, column: 1, scope: !5463)
!5640 = distinct !DISubprogram(name: "tda1004x_read_status", scope: !3, file: !3, line: 1004, type: !4299, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5641 = !DILocalVariable(name: "fe", arg: 1, scope: !5640, file: !3, line: 1004, type: !4162)
!5642 = !DILocation(line: 1004, column: 54, scope: !5640)
!5643 = !DILocalVariable(name: "fe_status", arg: 2, scope: !5640, file: !3, line: 1005, type: !4204)
!5644 = !DILocation(line: 1005, column: 21, scope: !5640)
!5645 = !DILocalVariable(name: "state", scope: !5640, file: !3, line: 1007, type: !441)
!5646 = !DILocation(line: 1007, column: 25, scope: !5640)
!5647 = !DILocation(line: 1007, column: 33, scope: !5640)
!5648 = !DILocation(line: 1007, column: 37, scope: !5640)
!5649 = !DILocalVariable(name: "status", scope: !5640, file: !3, line: 1008, type: !356)
!5650 = !DILocation(line: 1008, column: 6, scope: !5640)
!5651 = !DILocalVariable(name: "cber", scope: !5640, file: !3, line: 1009, type: !356)
!5652 = !DILocation(line: 1009, column: 6, scope: !5640)
!5653 = !DILocalVariable(name: "vber", scope: !5640, file: !3, line: 1010, type: !356)
!5654 = !DILocation(line: 1010, column: 6, scope: !5640)
!5655 = !DILocation(line: 1012, column: 2, scope: !5640)
!5656 = !DILocation(line: 1012, column: 2, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 1012, column: 2)
!5658 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 1012, column: 2)
!5659 = !DILocation(line: 1012, column: 2, scope: !5658)
!5660 = !DILocation(line: 1015, column: 30, scope: !5640)
!5661 = !DILocation(line: 1015, column: 11, scope: !5640)
!5662 = !DILocation(line: 1015, column: 9, scope: !5640)
!5663 = !DILocation(line: 1016, column: 6, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 1016, column: 6)
!5665 = !DILocation(line: 1016, column: 13, scope: !5664)
!5666 = !DILocation(line: 1016, column: 6, scope: !5640)
!5667 = !DILocation(line: 1017, column: 3, scope: !5664)
!5668 = !DILocation(line: 1020, column: 3, scope: !5640)
!5669 = !DILocation(line: 1020, column: 13, scope: !5640)
!5670 = !DILocation(line: 1021, column: 6, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 1021, column: 6)
!5672 = !DILocation(line: 1021, column: 13, scope: !5671)
!5673 = !DILocation(line: 1021, column: 6, scope: !5640)
!5674 = !DILocation(line: 1022, column: 4, scope: !5671)
!5675 = !DILocation(line: 1022, column: 14, scope: !5671)
!5676 = !DILocation(line: 1022, column: 3, scope: !5671)
!5677 = !DILocation(line: 1023, column: 6, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 1023, column: 6)
!5679 = !DILocation(line: 1023, column: 13, scope: !5678)
!5680 = !DILocation(line: 1023, column: 6, scope: !5640)
!5681 = !DILocation(line: 1024, column: 4, scope: !5678)
!5682 = !DILocation(line: 1024, column: 14, scope: !5678)
!5683 = !DILocation(line: 1024, column: 3, scope: !5678)
!5684 = !DILocation(line: 1025, column: 6, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 1025, column: 6)
!5686 = !DILocation(line: 1025, column: 13, scope: !5685)
!5687 = !DILocation(line: 1025, column: 6, scope: !5640)
!5688 = !DILocation(line: 1026, column: 4, scope: !5685)
!5689 = !DILocation(line: 1026, column: 14, scope: !5685)
!5690 = !DILocation(line: 1026, column: 3, scope: !5685)
!5691 = !DILocation(line: 1030, column: 9, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 1030, column: 6)
!5693 = !DILocation(line: 1030, column: 8, scope: !5692)
!5694 = !DILocation(line: 1030, column: 19, scope: !5692)
!5695 = !DILocation(line: 1030, column: 6, scope: !5640)
!5696 = !DILocation(line: 1032, column: 29, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 1030, column: 38)
!5698 = !DILocation(line: 1032, column: 10, scope: !5697)
!5699 = !DILocation(line: 1032, column: 8, scope: !5697)
!5700 = !DILocation(line: 1033, column: 7, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 1033, column: 7)
!5702 = !DILocation(line: 1033, column: 12, scope: !5701)
!5703 = !DILocation(line: 1033, column: 7, scope: !5697)
!5704 = !DILocation(line: 1034, column: 4, scope: !5701)
!5705 = !DILocation(line: 1035, column: 31, scope: !5697)
!5706 = !DILocation(line: 1035, column: 12, scope: !5697)
!5707 = !DILocation(line: 1035, column: 10, scope: !5697)
!5708 = !DILocation(line: 1036, column: 7, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 1036, column: 7)
!5710 = !DILocation(line: 1036, column: 14, scope: !5709)
!5711 = !DILocation(line: 1036, column: 7, scope: !5697)
!5712 = !DILocation(line: 1037, column: 4, scope: !5709)
!5713 = !DILocation(line: 1038, column: 12, scope: !5697)
!5714 = !DILocation(line: 1038, column: 19, scope: !5697)
!5715 = !DILocation(line: 1038, column: 8, scope: !5697)
!5716 = !DILocation(line: 1040, column: 22, scope: !5697)
!5717 = !DILocation(line: 1040, column: 3, scope: !5697)
!5718 = !DILocation(line: 1042, column: 7, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 1042, column: 7)
!5720 = !DILocation(line: 1042, column: 12, scope: !5719)
!5721 = !DILocation(line: 1042, column: 7, scope: !5697)
!5722 = !DILocation(line: 1043, column: 5, scope: !5719)
!5723 = !DILocation(line: 1043, column: 15, scope: !5719)
!5724 = !DILocation(line: 1043, column: 4, scope: !5719)
!5725 = !DILocation(line: 1044, column: 2, scope: !5697)
!5726 = !DILocation(line: 1048, column: 8, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 1048, column: 6)
!5728 = !DILocation(line: 1048, column: 7, scope: !5727)
!5729 = !DILocation(line: 1048, column: 18, scope: !5727)
!5730 = !DILocation(line: 1048, column: 36, scope: !5727)
!5731 = !DILocation(line: 1048, column: 43, scope: !5727)
!5732 = !DILocation(line: 1048, column: 42, scope: !5727)
!5733 = !DILocation(line: 1048, column: 53, scope: !5727)
!5734 = !DILocation(line: 1048, column: 6, scope: !5640)
!5735 = !DILocation(line: 1050, column: 29, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 1048, column: 70)
!5737 = !DILocation(line: 1050, column: 10, scope: !5736)
!5738 = !DILocation(line: 1050, column: 8, scope: !5736)
!5739 = !DILocation(line: 1051, column: 7, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 1051, column: 7)
!5741 = !DILocation(line: 1051, column: 12, scope: !5740)
!5742 = !DILocation(line: 1051, column: 7, scope: !5736)
!5743 = !DILocation(line: 1052, column: 4, scope: !5740)
!5744 = !DILocation(line: 1053, column: 31, scope: !5736)
!5745 = !DILocation(line: 1053, column: 12, scope: !5736)
!5746 = !DILocation(line: 1053, column: 10, scope: !5736)
!5747 = !DILocation(line: 1054, column: 7, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 1054, column: 7)
!5749 = !DILocation(line: 1054, column: 14, scope: !5748)
!5750 = !DILocation(line: 1054, column: 7, scope: !5736)
!5751 = !DILocation(line: 1055, column: 4, scope: !5748)
!5752 = !DILocation(line: 1056, column: 12, scope: !5736)
!5753 = !DILocation(line: 1056, column: 19, scope: !5736)
!5754 = !DILocation(line: 1056, column: 8, scope: !5736)
!5755 = !DILocation(line: 1057, column: 31, scope: !5736)
!5756 = !DILocation(line: 1057, column: 12, scope: !5736)
!5757 = !DILocation(line: 1057, column: 10, scope: !5736)
!5758 = !DILocation(line: 1058, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 1058, column: 7)
!5760 = !DILocation(line: 1058, column: 14, scope: !5759)
!5761 = !DILocation(line: 1058, column: 7, scope: !5736)
!5762 = !DILocation(line: 1059, column: 4, scope: !5759)
!5763 = !DILocation(line: 1060, column: 12, scope: !5736)
!5764 = !DILocation(line: 1060, column: 19, scope: !5736)
!5765 = !DILocation(line: 1060, column: 27, scope: !5736)
!5766 = !DILocation(line: 1060, column: 8, scope: !5736)
!5767 = !DILocation(line: 1062, column: 22, scope: !5736)
!5768 = !DILocation(line: 1062, column: 3, scope: !5736)
!5769 = !DILocation(line: 1066, column: 7, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 1066, column: 7)
!5771 = !DILocation(line: 1066, column: 12, scope: !5770)
!5772 = !DILocation(line: 1066, column: 7, scope: !5736)
!5773 = !DILocation(line: 1067, column: 5, scope: !5770)
!5774 = !DILocation(line: 1067, column: 15, scope: !5770)
!5775 = !DILocation(line: 1067, column: 4, scope: !5770)
!5776 = !DILocation(line: 1068, column: 2, scope: !5736)
!5777 = !DILocation(line: 1071, column: 2, scope: !5640)
!5778 = !DILocation(line: 1071, column: 2, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 1071, column: 2)
!5780 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 1071, column: 2)
!5781 = !DILocation(line: 1071, column: 2, scope: !5780)
!5782 = !DILocation(line: 1072, column: 2, scope: !5640)
!5783 = !DILocation(line: 1073, column: 1, scope: !5640)
!5784 = distinct !DISubprogram(name: "tda1004x_read_ber", scope: !3, file: !3, line: 1159, type: !4303, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5785 = !DILocalVariable(name: "fe", arg: 1, scope: !5784, file: !3, line: 1159, type: !4162)
!5786 = !DILocation(line: 1159, column: 51, scope: !5784)
!5787 = !DILocalVariable(name: "ber", arg: 2, scope: !5784, file: !3, line: 1159, type: !2874)
!5788 = !DILocation(line: 1159, column: 60, scope: !5784)
!5789 = !DILocalVariable(name: "state", scope: !5784, file: !3, line: 1161, type: !441)
!5790 = !DILocation(line: 1161, column: 25, scope: !5784)
!5791 = !DILocation(line: 1161, column: 33, scope: !5784)
!5792 = !DILocation(line: 1161, column: 37, scope: !5784)
!5793 = !DILocalVariable(name: "tmp", scope: !5784, file: !3, line: 1162, type: !356)
!5794 = !DILocation(line: 1162, column: 6, scope: !5784)
!5795 = !DILocation(line: 1164, column: 2, scope: !5784)
!5796 = !DILocation(line: 1164, column: 2, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 1164, column: 2)
!5798 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 1164, column: 2)
!5799 = !DILocation(line: 1164, column: 2, scope: !5798)
!5800 = !DILocation(line: 1167, column: 27, scope: !5784)
!5801 = !DILocation(line: 1167, column: 8, scope: !5784)
!5802 = !DILocation(line: 1167, column: 6, scope: !5784)
!5803 = !DILocation(line: 1168, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 1168, column: 6)
!5805 = !DILocation(line: 1168, column: 10, scope: !5804)
!5806 = !DILocation(line: 1168, column: 6, scope: !5784)
!5807 = !DILocation(line: 1169, column: 3, scope: !5804)
!5808 = !DILocation(line: 1170, column: 9, scope: !5784)
!5809 = !DILocation(line: 1170, column: 13, scope: !5784)
!5810 = !DILocation(line: 1170, column: 3, scope: !5784)
!5811 = !DILocation(line: 1170, column: 7, scope: !5784)
!5812 = !DILocation(line: 1171, column: 27, scope: !5784)
!5813 = !DILocation(line: 1171, column: 8, scope: !5784)
!5814 = !DILocation(line: 1171, column: 6, scope: !5784)
!5815 = !DILocation(line: 1172, column: 6, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 1172, column: 6)
!5817 = !DILocation(line: 1172, column: 10, scope: !5816)
!5818 = !DILocation(line: 1172, column: 6, scope: !5784)
!5819 = !DILocation(line: 1173, column: 3, scope: !5816)
!5820 = !DILocation(line: 1174, column: 11, scope: !5784)
!5821 = !DILocation(line: 1174, column: 15, scope: !5784)
!5822 = !DILocation(line: 1174, column: 3, scope: !5784)
!5823 = !DILocation(line: 1174, column: 7, scope: !5784)
!5824 = !DILocation(line: 1176, column: 21, scope: !5784)
!5825 = !DILocation(line: 1176, column: 2, scope: !5784)
!5826 = !DILocation(line: 1178, column: 2, scope: !5784)
!5827 = !DILocation(line: 1178, column: 2, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 1178, column: 2)
!5829 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 1178, column: 2)
!5830 = !DILocation(line: 1178, column: 2, scope: !5829)
!5831 = !DILocation(line: 1179, column: 2, scope: !5784)
!5832 = !DILocation(line: 1180, column: 1, scope: !5784)
!5833 = distinct !DISubprogram(name: "tda1004x_read_signal_strength", scope: !3, file: !3, line: 1075, type: !4307, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5834 = !DILocalVariable(name: "fe", arg: 1, scope: !5833, file: !3, line: 1075, type: !4162)
!5835 = !DILocation(line: 1075, column: 63, scope: !5833)
!5836 = !DILocalVariable(name: "signal", arg: 2, scope: !5833, file: !3, line: 1075, type: !4309)
!5837 = !DILocation(line: 1075, column: 73, scope: !5833)
!5838 = !DILocalVariable(name: "state", scope: !5833, file: !3, line: 1077, type: !441)
!5839 = !DILocation(line: 1077, column: 25, scope: !5833)
!5840 = !DILocation(line: 1077, column: 33, scope: !5833)
!5841 = !DILocation(line: 1077, column: 37, scope: !5833)
!5842 = !DILocalVariable(name: "tmp", scope: !5833, file: !3, line: 1078, type: !356)
!5843 = !DILocation(line: 1078, column: 6, scope: !5833)
!5844 = !DILocalVariable(name: "reg", scope: !5833, file: !3, line: 1079, type: !356)
!5845 = !DILocation(line: 1079, column: 6, scope: !5833)
!5846 = !DILocation(line: 1081, column: 2, scope: !5833)
!5847 = !DILocation(line: 1081, column: 2, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 1081, column: 2)
!5849 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 1081, column: 2)
!5850 = !DILocation(line: 1081, column: 2, scope: !5849)
!5851 = !DILocation(line: 1084, column: 10, scope: !5833)
!5852 = !DILocation(line: 1084, column: 17, scope: !5833)
!5853 = !DILocation(line: 1084, column: 2, scope: !5833)
!5854 = !DILocation(line: 1086, column: 7, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 1084, column: 29)
!5856 = !DILocation(line: 1087, column: 3, scope: !5855)
!5857 = !DILocation(line: 1090, column: 7, scope: !5855)
!5858 = !DILocation(line: 1091, column: 3, scope: !5855)
!5859 = !DILocation(line: 1095, column: 27, scope: !5833)
!5860 = !DILocation(line: 1095, column: 34, scope: !5833)
!5861 = !DILocation(line: 1095, column: 8, scope: !5833)
!5862 = !DILocation(line: 1095, column: 6, scope: !5833)
!5863 = !DILocation(line: 1096, column: 6, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 1096, column: 6)
!5865 = !DILocation(line: 1096, column: 10, scope: !5864)
!5866 = !DILocation(line: 1096, column: 6, scope: !5833)
!5867 = !DILocation(line: 1097, column: 3, scope: !5864)
!5868 = !DILocation(line: 1099, column: 13, scope: !5833)
!5869 = !DILocation(line: 1099, column: 17, scope: !5833)
!5870 = !DILocation(line: 1099, column: 25, scope: !5833)
!5871 = !DILocation(line: 1099, column: 23, scope: !5833)
!5872 = !DILocation(line: 1099, column: 12, scope: !5833)
!5873 = !DILocation(line: 1099, column: 3, scope: !5833)
!5874 = !DILocation(line: 1099, column: 10, scope: !5833)
!5875 = !DILocation(line: 1100, column: 2, scope: !5833)
!5876 = !DILocation(line: 1100, column: 2, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 1100, column: 2)
!5878 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 1100, column: 2)
!5879 = !DILocation(line: 1100, column: 2, scope: !5878)
!5880 = !DILocation(line: 1101, column: 2, scope: !5833)
!5881 = !DILocation(line: 1102, column: 1, scope: !5833)
!5882 = distinct !DISubprogram(name: "tda1004x_read_snr", scope: !3, file: !3, line: 1104, type: !4307, scopeLine: 1105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5883 = !DILocalVariable(name: "fe", arg: 1, scope: !5882, file: !3, line: 1104, type: !4162)
!5884 = !DILocation(line: 1104, column: 51, scope: !5882)
!5885 = !DILocalVariable(name: "snr", arg: 2, scope: !5882, file: !3, line: 1104, type: !4309)
!5886 = !DILocation(line: 1104, column: 61, scope: !5882)
!5887 = !DILocalVariable(name: "state", scope: !5882, file: !3, line: 1106, type: !441)
!5888 = !DILocation(line: 1106, column: 25, scope: !5882)
!5889 = !DILocation(line: 1106, column: 33, scope: !5882)
!5890 = !DILocation(line: 1106, column: 37, scope: !5882)
!5891 = !DILocalVariable(name: "tmp", scope: !5882, file: !3, line: 1107, type: !356)
!5892 = !DILocation(line: 1107, column: 6, scope: !5882)
!5893 = !DILocation(line: 1109, column: 2, scope: !5882)
!5894 = !DILocation(line: 1109, column: 2, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 1109, column: 2)
!5896 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 1109, column: 2)
!5897 = !DILocation(line: 1109, column: 2, scope: !5896)
!5898 = !DILocation(line: 1112, column: 27, scope: !5882)
!5899 = !DILocation(line: 1112, column: 8, scope: !5882)
!5900 = !DILocation(line: 1112, column: 6, scope: !5882)
!5901 = !DILocation(line: 1113, column: 6, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 1113, column: 6)
!5903 = !DILocation(line: 1113, column: 10, scope: !5902)
!5904 = !DILocation(line: 1113, column: 6, scope: !5882)
!5905 = !DILocation(line: 1114, column: 3, scope: !5902)
!5906 = !DILocation(line: 1115, column: 14, scope: !5882)
!5907 = !DILocation(line: 1115, column: 12, scope: !5882)
!5908 = !DILocation(line: 1115, column: 6, scope: !5882)
!5909 = !DILocation(line: 1117, column: 11, scope: !5882)
!5910 = !DILocation(line: 1117, column: 15, scope: !5882)
!5911 = !DILocation(line: 1117, column: 23, scope: !5882)
!5912 = !DILocation(line: 1117, column: 21, scope: !5882)
!5913 = !DILocation(line: 1117, column: 9, scope: !5882)
!5914 = !DILocation(line: 1117, column: 3, scope: !5882)
!5915 = !DILocation(line: 1117, column: 7, scope: !5882)
!5916 = !DILocation(line: 1118, column: 2, scope: !5882)
!5917 = !DILocation(line: 1118, column: 2, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 1118, column: 2)
!5919 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 1118, column: 2)
!5920 = !DILocation(line: 1118, column: 2, scope: !5919)
!5921 = !DILocation(line: 1119, column: 2, scope: !5882)
!5922 = !DILocation(line: 1120, column: 1, scope: !5882)
!5923 = distinct !DISubprogram(name: "tda1004x_read_ucblocks", scope: !3, file: !3, line: 1122, type: !4303, scopeLine: 1123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!5924 = !DILocalVariable(name: "fe", arg: 1, scope: !5923, file: !3, line: 1122, type: !4162)
!5925 = !DILocation(line: 1122, column: 56, scope: !5923)
!5926 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5923, file: !3, line: 1122, type: !2874)
!5927 = !DILocation(line: 1122, column: 65, scope: !5923)
!5928 = !DILocalVariable(name: "state", scope: !5923, file: !3, line: 1124, type: !441)
!5929 = !DILocation(line: 1124, column: 25, scope: !5923)
!5930 = !DILocation(line: 1124, column: 33, scope: !5923)
!5931 = !DILocation(line: 1124, column: 37, scope: !5923)
!5932 = !DILocalVariable(name: "tmp", scope: !5923, file: !3, line: 1125, type: !356)
!5933 = !DILocation(line: 1125, column: 6, scope: !5923)
!5934 = !DILocalVariable(name: "tmp2", scope: !5923, file: !3, line: 1126, type: !356)
!5935 = !DILocation(line: 1126, column: 6, scope: !5923)
!5936 = !DILocalVariable(name: "counter", scope: !5923, file: !3, line: 1127, type: !356)
!5937 = !DILocation(line: 1127, column: 6, scope: !5923)
!5938 = !DILocation(line: 1129, column: 2, scope: !5923)
!5939 = !DILocation(line: 1129, column: 2, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 1129, column: 2)
!5941 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 1129, column: 2)
!5942 = !DILocation(line: 1129, column: 2, scope: !5941)
!5943 = !DILocation(line: 1132, column: 10, scope: !5923)
!5944 = !DILocation(line: 1133, column: 27, scope: !5923)
!5945 = !DILocation(line: 1133, column: 8, scope: !5923)
!5946 = !DILocation(line: 1133, column: 6, scope: !5923)
!5947 = !DILocation(line: 1134, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 1134, column: 6)
!5949 = !DILocation(line: 1134, column: 10, scope: !5948)
!5950 = !DILocation(line: 1134, column: 6, scope: !5923)
!5951 = !DILocation(line: 1135, column: 3, scope: !5948)
!5952 = !DILocation(line: 1136, column: 6, scope: !5923)
!5953 = !DILocation(line: 1137, column: 2, scope: !5923)
!5954 = !DILocation(line: 1137, column: 16, scope: !5923)
!5955 = !DILocation(line: 1137, column: 19, scope: !5923)
!5956 = !DILocation(line: 1138, column: 23, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 1137, column: 24)
!5958 = !DILocation(line: 1138, column: 3, scope: !5957)
!5959 = !DILocation(line: 1139, column: 23, scope: !5957)
!5960 = !DILocation(line: 1139, column: 3, scope: !5957)
!5961 = !DILocation(line: 1140, column: 23, scope: !5957)
!5962 = !DILocation(line: 1140, column: 3, scope: !5957)
!5963 = !DILocation(line: 1142, column: 29, scope: !5957)
!5964 = !DILocation(line: 1142, column: 10, scope: !5957)
!5965 = !DILocation(line: 1142, column: 8, scope: !5957)
!5966 = !DILocation(line: 1143, column: 7, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 1143, column: 7)
!5968 = !DILocation(line: 1143, column: 12, scope: !5967)
!5969 = !DILocation(line: 1143, column: 7, scope: !5957)
!5970 = !DILocation(line: 1144, column: 4, scope: !5967)
!5971 = !DILocation(line: 1145, column: 8, scope: !5957)
!5972 = !DILocation(line: 1146, column: 8, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 1146, column: 7)
!5974 = !DILocation(line: 1146, column: 15, scope: !5973)
!5975 = !DILocation(line: 1146, column: 13, scope: !5973)
!5976 = !DILocation(line: 1146, column: 20, scope: !5973)
!5977 = !DILocation(line: 1146, column: 24, scope: !5973)
!5978 = !DILocation(line: 1146, column: 29, scope: !5973)
!5979 = !DILocation(line: 1146, column: 7, scope: !5957)
!5980 = !DILocation(line: 1147, column: 4, scope: !5973)
!5981 = distinct !{!5981, !5953, !5982}
!5982 = !DILocation(line: 1148, column: 2, scope: !5923)
!5983 = !DILocation(line: 1150, column: 6, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 1150, column: 6)
!5985 = !DILocation(line: 1150, column: 10, scope: !5984)
!5986 = !DILocation(line: 1150, column: 6, scope: !5923)
!5987 = !DILocation(line: 1151, column: 15, scope: !5984)
!5988 = !DILocation(line: 1151, column: 4, scope: !5984)
!5989 = !DILocation(line: 1151, column: 13, scope: !5984)
!5990 = !DILocation(line: 1151, column: 3, scope: !5984)
!5991 = !DILocation(line: 1153, column: 4, scope: !5984)
!5992 = !DILocation(line: 1153, column: 13, scope: !5984)
!5993 = !DILocation(line: 1155, column: 2, scope: !5923)
!5994 = !DILocation(line: 1155, column: 2, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 1155, column: 2)
!5996 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 1155, column: 2)
!5997 = !DILocation(line: 1155, column: 2, scope: !5996)
!5998 = !DILocation(line: 1156, column: 2, scope: !5923)
!5999 = !DILocation(line: 1157, column: 1, scope: !5923)
!6000 = distinct !DISubprogram(name: "tda1004x_i2c_gate_ctrl", scope: !3, file: !3, line: 1209, type: !4356, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6001 = !DILocalVariable(name: "fe", arg: 1, scope: !6000, file: !3, line: 1209, type: !4162)
!6002 = !DILocation(line: 1209, column: 56, scope: !6000)
!6003 = !DILocalVariable(name: "enable", arg: 2, scope: !6000, file: !3, line: 1209, type: !356)
!6004 = !DILocation(line: 1209, column: 64, scope: !6000)
!6005 = !DILocalVariable(name: "state", scope: !6000, file: !3, line: 1211, type: !441)
!6006 = !DILocation(line: 1211, column: 25, scope: !6000)
!6007 = !DILocation(line: 1211, column: 33, scope: !6000)
!6008 = !DILocation(line: 1211, column: 37, scope: !6000)
!6009 = !DILocation(line: 1213, column: 6, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 1213, column: 6)
!6011 = !DILocation(line: 1213, column: 6, scope: !6000)
!6012 = !DILocation(line: 1214, column: 36, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 1213, column: 14)
!6014 = !DILocation(line: 1214, column: 10, scope: !6013)
!6015 = !DILocation(line: 1214, column: 3, scope: !6013)
!6016 = !DILocation(line: 1216, column: 37, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 1215, column: 9)
!6018 = !DILocation(line: 1216, column: 10, scope: !6017)
!6019 = !DILocation(line: 1216, column: 3, scope: !6017)
!6020 = !DILocation(line: 1218, column: 1, scope: !6000)
!6021 = distinct !DISubprogram(name: "tda10045_fwupload", scope: !3, file: !3, line: 378, type: !4191, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6022 = !DILocalVariable(name: "fe", arg: 1, scope: !6021, file: !3, line: 378, type: !4162)
!6023 = !DILocation(line: 378, column: 51, scope: !6021)
!6024 = !DILocalVariable(name: "state", scope: !6021, file: !3, line: 380, type: !441)
!6025 = !DILocation(line: 380, column: 25, scope: !6021)
!6026 = !DILocation(line: 380, column: 33, scope: !6021)
!6027 = !DILocation(line: 380, column: 37, scope: !6021)
!6028 = !DILocalVariable(name: "ret", scope: !6021, file: !3, line: 381, type: !356)
!6029 = !DILocation(line: 381, column: 6, scope: !6021)
!6030 = !DILocalVariable(name: "fw", scope: !6021, file: !3, line: 382, type: !4483)
!6031 = !DILocation(line: 382, column: 25, scope: !6021)
!6032 = !DILocation(line: 385, column: 31, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 385, column: 6)
!6034 = !DILocation(line: 385, column: 6, scope: !6033)
!6035 = !DILocation(line: 385, column: 38, scope: !6033)
!6036 = !DILocation(line: 385, column: 6, scope: !6021)
!6037 = !DILocation(line: 386, column: 3, scope: !6033)
!6038 = !DILocation(line: 389, column: 2, scope: !6021)
!6039 = !DILocation(line: 390, column: 8, scope: !6021)
!6040 = !DILocation(line: 390, column: 15, scope: !6021)
!6041 = !DILocation(line: 390, column: 23, scope: !6021)
!6042 = !DILocation(line: 390, column: 40, scope: !6021)
!6043 = !DILocation(line: 390, column: 6, scope: !6021)
!6044 = !DILocation(line: 391, column: 6, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 391, column: 6)
!6046 = !DILocation(line: 391, column: 6, scope: !6021)
!6047 = !DILocation(line: 392, column: 3, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 391, column: 11)
!6049 = !DILocation(line: 393, column: 10, scope: !6048)
!6050 = !DILocation(line: 393, column: 3, scope: !6048)
!6051 = !DILocation(line: 397, column: 22, scope: !6021)
!6052 = !DILocation(line: 397, column: 2, scope: !6021)
!6053 = !DILocation(line: 398, column: 22, scope: !6021)
!6054 = !DILocation(line: 398, column: 2, scope: !6021)
!6055 = !DILocation(line: 399, column: 22, scope: !6021)
!6056 = !DILocation(line: 399, column: 2, scope: !6021)
!6057 = !DILocation(line: 400, column: 2, scope: !6021)
!6058 = !DILocation(line: 403, column: 26, scope: !6021)
!6059 = !DILocation(line: 403, column: 2, scope: !6021)
!6060 = !DILocation(line: 405, column: 27, scope: !6021)
!6061 = !DILocation(line: 405, column: 34, scope: !6021)
!6062 = !DILocation(line: 405, column: 38, scope: !6021)
!6063 = !DILocation(line: 405, column: 44, scope: !6021)
!6064 = !DILocation(line: 405, column: 48, scope: !6021)
!6065 = !DILocation(line: 405, column: 8, scope: !6021)
!6066 = !DILocation(line: 405, column: 6, scope: !6021)
!6067 = !DILocation(line: 406, column: 19, scope: !6021)
!6068 = !DILocation(line: 406, column: 2, scope: !6021)
!6069 = !DILocation(line: 407, column: 6, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 407, column: 6)
!6071 = !DILocation(line: 407, column: 6, scope: !6021)
!6072 = !DILocation(line: 408, column: 10, scope: !6070)
!6073 = !DILocation(line: 408, column: 3, scope: !6070)
!6074 = !DILocation(line: 409, column: 2, scope: !6021)
!6075 = !DILocation(line: 413, column: 2, scope: !6021)
!6076 = !DILocation(line: 415, column: 34, scope: !6021)
!6077 = !DILocation(line: 415, column: 9, scope: !6021)
!6078 = !DILocation(line: 415, column: 2, scope: !6021)
!6079 = !DILocation(line: 416, column: 1, scope: !6021)
!6080 = distinct !DISubprogram(name: "tda1004x_write_mask", scope: !3, file: !3, line: 160, type: !6081, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6081 = !DISubroutineType(types: !6082)
!6082 = !{!356, !441, !356, !356, !356}
!6083 = !DILocalVariable(name: "state", arg: 1, scope: !6080, file: !3, line: 160, type: !441)
!6084 = !DILocation(line: 160, column: 55, scope: !6080)
!6085 = !DILocalVariable(name: "reg", arg: 2, scope: !6080, file: !3, line: 160, type: !356)
!6086 = !DILocation(line: 160, column: 66, scope: !6080)
!6087 = !DILocalVariable(name: "mask", arg: 3, scope: !6080, file: !3, line: 160, type: !356)
!6088 = !DILocation(line: 160, column: 75, scope: !6080)
!6089 = !DILocalVariable(name: "data", arg: 4, scope: !6080, file: !3, line: 160, type: !356)
!6090 = !DILocation(line: 160, column: 85, scope: !6080)
!6091 = !DILocalVariable(name: "val", scope: !6080, file: !3, line: 162, type: !356)
!6092 = !DILocation(line: 162, column: 6, scope: !6080)
!6093 = !DILocation(line: 163, column: 2, scope: !6080)
!6094 = !DILocation(line: 163, column: 2, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 163, column: 2)
!6096 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 163, column: 2)
!6097 = !DILocation(line: 163, column: 2, scope: !6096)
!6098 = !DILocation(line: 167, column: 27, scope: !6080)
!6099 = !DILocation(line: 167, column: 34, scope: !6080)
!6100 = !DILocation(line: 167, column: 8, scope: !6080)
!6101 = !DILocation(line: 167, column: 6, scope: !6080)
!6102 = !DILocation(line: 168, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 168, column: 6)
!6104 = !DILocation(line: 168, column: 10, scope: !6103)
!6105 = !DILocation(line: 168, column: 6, scope: !6080)
!6106 = !DILocation(line: 169, column: 10, scope: !6103)
!6107 = !DILocation(line: 169, column: 3, scope: !6103)
!6108 = !DILocation(line: 172, column: 8, scope: !6080)
!6109 = !DILocation(line: 172, column: 15, scope: !6080)
!6110 = !DILocation(line: 172, column: 14, scope: !6080)
!6111 = !DILocation(line: 172, column: 12, scope: !6080)
!6112 = !DILocation(line: 172, column: 6, scope: !6080)
!6113 = !DILocation(line: 173, column: 9, scope: !6080)
!6114 = !DILocation(line: 173, column: 14, scope: !6080)
!6115 = !DILocation(line: 173, column: 6, scope: !6080)
!6116 = !DILocation(line: 176, column: 30, scope: !6080)
!6117 = !DILocation(line: 176, column: 37, scope: !6080)
!6118 = !DILocation(line: 176, column: 42, scope: !6080)
!6119 = !DILocation(line: 176, column: 9, scope: !6080)
!6120 = !DILocation(line: 176, column: 2, scope: !6080)
!6121 = !DILocation(line: 177, column: 1, scope: !6080)
!6122 = distinct !DISubprogram(name: "tda1004x_write_byteI", scope: !3, file: !3, line: 115, type: !6123, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6123 = !DISubroutineType(types: !6124)
!6124 = !{!356, !441, !356, !356}
!6125 = !DILocalVariable(name: "state", arg: 1, scope: !6122, file: !3, line: 115, type: !441)
!6126 = !DILocation(line: 115, column: 56, scope: !6122)
!6127 = !DILocalVariable(name: "reg", arg: 2, scope: !6122, file: !3, line: 115, type: !356)
!6128 = !DILocation(line: 115, column: 67, scope: !6122)
!6129 = !DILocalVariable(name: "data", arg: 3, scope: !6122, file: !3, line: 115, type: !356)
!6130 = !DILocation(line: 115, column: 76, scope: !6122)
!6131 = !DILocalVariable(name: "ret", scope: !6122, file: !3, line: 117, type: !356)
!6132 = !DILocation(line: 117, column: 6, scope: !6122)
!6133 = !DILocalVariable(name: "buf", scope: !6122, file: !3, line: 118, type: !6134)
!6134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 16, elements: !2516)
!6135 = !DILocation(line: 118, column: 5, scope: !6122)
!6136 = !DILocation(line: 118, column: 13, scope: !6122)
!6137 = !DILocation(line: 118, column: 15, scope: !6122)
!6138 = !DILocation(line: 118, column: 20, scope: !6122)
!6139 = !DILocalVariable(name: "msg", scope: !6122, file: !3, line: 119, type: !461)
!6140 = !DILocation(line: 119, column: 17, scope: !6122)
!6141 = !DILocation(line: 119, column: 23, scope: !6122)
!6142 = !DILocation(line: 119, column: 44, scope: !6122)
!6143 = !DILocation(line: 121, column: 2, scope: !6122)
!6144 = !DILocation(line: 121, column: 2, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 121, column: 2)
!6146 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 121, column: 2)
!6147 = !DILocation(line: 121, column: 2, scope: !6146)
!6148 = !DILocation(line: 123, column: 13, scope: !6122)
!6149 = !DILocation(line: 123, column: 20, scope: !6122)
!6150 = !DILocation(line: 123, column: 28, scope: !6122)
!6151 = !DILocation(line: 123, column: 6, scope: !6122)
!6152 = !DILocation(line: 123, column: 11, scope: !6122)
!6153 = !DILocation(line: 124, column: 21, scope: !6122)
!6154 = !DILocation(line: 124, column: 28, scope: !6122)
!6155 = !DILocation(line: 124, column: 8, scope: !6122)
!6156 = !DILocation(line: 124, column: 6, scope: !6122)
!6157 = !DILocation(line: 126, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 126, column: 6)
!6159 = !DILocation(line: 126, column: 10, scope: !6158)
!6160 = !DILocation(line: 126, column: 6, scope: !6122)
!6161 = !DILocation(line: 127, column: 3, scope: !6158)
!6162 = !DILocation(line: 127, column: 3, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6164, file: !3, line: 127, column: 3)
!6164 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 127, column: 3)
!6165 = !DILocation(line: 127, column: 3, scope: !6164)
!6166 = !DILocation(line: 130, column: 2, scope: !6122)
!6167 = !DILocation(line: 130, column: 2, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 130, column: 2)
!6169 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 130, column: 2)
!6170 = !DILocation(line: 130, column: 2, scope: !6169)
!6171 = !DILocation(line: 132, column: 10, scope: !6122)
!6172 = !DILocation(line: 132, column: 14, scope: !6122)
!6173 = !DILocation(line: 132, column: 9, scope: !6122)
!6174 = !DILocation(line: 132, column: 2, scope: !6122)
!6175 = distinct !DISubprogram(name: "tda1004x_check_upload_ok", scope: !3, file: !3, line: 347, type: !6176, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6176 = !DISubroutineType(types: !6177)
!6177 = !{!356, !441}
!6178 = !DILocalVariable(name: "state", arg: 1, scope: !6175, file: !3, line: 347, type: !441)
!6179 = !DILocation(line: 347, column: 60, scope: !6175)
!6180 = !DILocalVariable(name: "data1", scope: !6175, file: !3, line: 349, type: !379)
!6181 = !DILocation(line: 349, column: 5, scope: !6175)
!6182 = !DILocalVariable(name: "data2", scope: !6175, file: !3, line: 349, type: !379)
!6183 = !DILocation(line: 349, column: 12, scope: !6175)
!6184 = !DILocalVariable(name: "timeout", scope: !6175, file: !3, line: 350, type: !531)
!6185 = !DILocation(line: 350, column: 16, scope: !6175)
!6186 = !DILocation(line: 352, column: 6, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 352, column: 6)
!6188 = !DILocation(line: 352, column: 13, scope: !6187)
!6189 = !DILocation(line: 352, column: 24, scope: !6187)
!6190 = !DILocation(line: 352, column: 6, scope: !6175)
!6191 = !DILocation(line: 353, column: 13, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 352, column: 52)
!6193 = !DILocation(line: 353, column: 21, scope: !6192)
!6194 = !DILocation(line: 353, column: 11, scope: !6192)
!6195 = !DILocation(line: 354, column: 3, scope: !6192)
!6196 = !DILocation(line: 354, column: 30, scope: !6192)
!6197 = !DILocation(line: 354, column: 11, scope: !6192)
!6198 = !DILocation(line: 354, column: 57, scope: !6192)
!6199 = !DILocation(line: 354, column: 9, scope: !6192)
!6200 = !DILocation(line: 355, column: 8, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6202, file: !3, line: 355, column: 8)
!6202 = distinct !DILexicalBlock(scope: !6192, file: !3, line: 354, column: 66)
!6203 = !DILocation(line: 355, column: 8, scope: !6202)
!6204 = !DILocation(line: 356, column: 5, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 355, column: 38)
!6206 = !DILocation(line: 357, column: 5, scope: !6205)
!6207 = !DILocation(line: 359, column: 4, scope: !6202)
!6208 = distinct !{!6208, !6195, !6209}
!6209 = !DILocation(line: 360, column: 3, scope: !6192)
!6210 = !DILocation(line: 361, column: 2, scope: !6192)
!6211 = !DILocation(line: 362, column: 3, scope: !6187)
!6212 = !DILocation(line: 365, column: 22, scope: !6175)
!6213 = !DILocation(line: 365, column: 2, scope: !6175)
!6214 = !DILocation(line: 366, column: 23, scope: !6175)
!6215 = !DILocation(line: 366, column: 2, scope: !6175)
!6216 = !DILocation(line: 368, column: 29, scope: !6175)
!6217 = !DILocation(line: 368, column: 10, scope: !6175)
!6218 = !DILocation(line: 368, column: 8, scope: !6175)
!6219 = !DILocation(line: 369, column: 29, scope: !6175)
!6220 = !DILocation(line: 369, column: 10, scope: !6175)
!6221 = !DILocation(line: 369, column: 8, scope: !6175)
!6222 = !DILocation(line: 370, column: 6, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 370, column: 6)
!6224 = !DILocation(line: 370, column: 12, scope: !6223)
!6225 = !DILocation(line: 370, column: 20, scope: !6223)
!6226 = !DILocation(line: 370, column: 23, scope: !6223)
!6227 = !DILocation(line: 370, column: 29, scope: !6223)
!6228 = !DILocation(line: 370, column: 36, scope: !6223)
!6229 = !DILocation(line: 370, column: 39, scope: !6223)
!6230 = !DILocation(line: 370, column: 45, scope: !6223)
!6231 = !DILocation(line: 370, column: 6, scope: !6175)
!6232 = !DILocation(line: 371, column: 73, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 370, column: 53)
!6234 = !DILocation(line: 371, column: 3, scope: !6233)
!6235 = !DILocation(line: 372, column: 3, scope: !6233)
!6236 = !DILocation(line: 374, column: 67, scope: !6175)
!6237 = !DILocation(line: 374, column: 2, scope: !6175)
!6238 = !DILocation(line: 375, column: 2, scope: !6175)
!6239 = !DILocation(line: 376, column: 1, scope: !6175)
!6240 = !DILocalVariable(name: "state", arg: 1, scope: !438, file: !3, line: 213, type: !441)
!6241 = !DILocation(line: 213, column: 59, scope: !438)
!6242 = !DILocalVariable(name: "bandwidth", arg: 2, scope: !438, file: !3, line: 214, type: !488)
!6243 = !DILocation(line: 214, column: 12, scope: !438)
!6244 = !DILocation(line: 220, column: 10, scope: !438)
!6245 = !DILocation(line: 220, column: 2, scope: !438)
!6246 = !DILocation(line: 222, column: 22, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !438, file: !3, line: 220, column: 21)
!6248 = !DILocation(line: 222, column: 3, scope: !6247)
!6249 = !DILocation(line: 223, column: 3, scope: !6247)
!6250 = !DILocation(line: 226, column: 22, scope: !6247)
!6251 = !DILocation(line: 226, column: 3, scope: !6247)
!6252 = !DILocation(line: 227, column: 3, scope: !6247)
!6253 = !DILocation(line: 230, column: 22, scope: !6247)
!6254 = !DILocation(line: 230, column: 3, scope: !6247)
!6255 = !DILocation(line: 231, column: 3, scope: !6247)
!6256 = !DILocation(line: 234, column: 3, scope: !6247)
!6257 = !DILocation(line: 237, column: 23, scope: !438)
!6258 = !DILocation(line: 237, column: 2, scope: !438)
!6259 = !DILocation(line: 239, column: 2, scope: !438)
!6260 = !DILocation(line: 240, column: 1, scope: !438)
!6261 = distinct !DISubprogram(name: "tda1004x_do_upload", scope: !3, file: !3, line: 306, type: !6262, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6262 = !DISubroutineType(types: !6263)
!6263 = !{!356, !441, !820, !7, !379, !379}
!6264 = !DILocalVariable(name: "state", arg: 1, scope: !6261, file: !3, line: 306, type: !441)
!6265 = !DILocation(line: 306, column: 54, scope: !6261)
!6266 = !DILocalVariable(name: "mem", arg: 2, scope: !6261, file: !3, line: 307, type: !820)
!6267 = !DILocation(line: 307, column: 31, scope: !6261)
!6268 = !DILocalVariable(name: "len", arg: 3, scope: !6261, file: !3, line: 307, type: !7)
!6269 = !DILocation(line: 307, column: 49, scope: !6261)
!6270 = !DILocalVariable(name: "dspCodeCounterReg", arg: 4, scope: !6261, file: !3, line: 308, type: !379)
!6271 = !DILocation(line: 308, column: 13, scope: !6261)
!6272 = !DILocalVariable(name: "dspCodeInReg", arg: 5, scope: !6261, file: !3, line: 308, type: !379)
!6273 = !DILocation(line: 308, column: 35, scope: !6261)
!6274 = !DILocalVariable(name: "buf", scope: !6261, file: !3, line: 310, type: !6275)
!6275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 520, elements: !6276)
!6276 = !{!6277}
!6277 = !DISubrange(count: 65)
!6278 = !DILocation(line: 310, column: 5, scope: !6261)
!6279 = !DILocalVariable(name: "fw_msg", scope: !6261, file: !3, line: 311, type: !461)
!6280 = !DILocation(line: 311, column: 17, scope: !6261)
!6281 = !DILocation(line: 311, column: 26, scope: !6261)
!6282 = !DILocation(line: 311, column: 47, scope: !6261)
!6283 = !DILocalVariable(name: "tx_size", scope: !6261, file: !3, line: 312, type: !356)
!6284 = !DILocation(line: 312, column: 6, scope: !6261)
!6285 = !DILocalVariable(name: "pos", scope: !6261, file: !3, line: 313, type: !356)
!6286 = !DILocation(line: 313, column: 6, scope: !6261)
!6287 = !DILocation(line: 316, column: 23, scope: !6261)
!6288 = !DILocation(line: 316, column: 30, scope: !6261)
!6289 = !DILocation(line: 316, column: 2, scope: !6261)
!6290 = !DILocation(line: 317, column: 16, scope: !6261)
!6291 = !DILocation(line: 317, column: 23, scope: !6261)
!6292 = !DILocation(line: 317, column: 31, scope: !6261)
!6293 = !DILocation(line: 317, column: 9, scope: !6261)
!6294 = !DILocation(line: 317, column: 14, scope: !6261)
!6295 = !DILocation(line: 319, column: 15, scope: !6261)
!6296 = !DILocation(line: 319, column: 22, scope: !6261)
!6297 = !DILocation(line: 319, column: 2, scope: !6261)
!6298 = !DILocation(line: 320, column: 11, scope: !6261)
!6299 = !DILocation(line: 320, column: 2, scope: !6261)
!6300 = !DILocation(line: 320, column: 9, scope: !6261)
!6301 = !DILocation(line: 321, column: 2, scope: !6261)
!6302 = !DILocation(line: 321, column: 9, scope: !6261)
!6303 = !DILocation(line: 321, column: 16, scope: !6261)
!6304 = !DILocation(line: 321, column: 13, scope: !6261)
!6305 = !DILocation(line: 323, column: 13, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 321, column: 21)
!6307 = !DILocation(line: 323, column: 19, scope: !6306)
!6308 = !DILocation(line: 323, column: 17, scope: !6306)
!6309 = !DILocation(line: 323, column: 11, scope: !6306)
!6310 = !DILocation(line: 324, column: 7, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 324, column: 7)
!6312 = !DILocation(line: 324, column: 15, scope: !6311)
!6313 = !DILocation(line: 324, column: 7, scope: !6306)
!6314 = !DILocation(line: 325, column: 12, scope: !6311)
!6315 = !DILocation(line: 325, column: 4, scope: !6311)
!6316 = !DILocation(line: 328, column: 10, scope: !6306)
!6317 = !DILocation(line: 328, column: 14, scope: !6306)
!6318 = !DILocation(line: 328, column: 19, scope: !6306)
!6319 = !DILocation(line: 328, column: 25, scope: !6306)
!6320 = !DILocation(line: 328, column: 23, scope: !6306)
!6321 = !DILocation(line: 328, column: 30, scope: !6306)
!6322 = !DILocation(line: 328, column: 3, scope: !6306)
!6323 = !DILocation(line: 329, column: 16, scope: !6306)
!6324 = !DILocation(line: 329, column: 24, scope: !6306)
!6325 = !DILocation(line: 329, column: 10, scope: !6306)
!6326 = !DILocation(line: 329, column: 14, scope: !6306)
!6327 = !DILocation(line: 330, column: 22, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 330, column: 7)
!6329 = !DILocation(line: 330, column: 29, scope: !6328)
!6330 = !DILocation(line: 330, column: 7, scope: !6328)
!6331 = !DILocation(line: 330, column: 46, scope: !6328)
!6332 = !DILocation(line: 330, column: 7, scope: !6306)
!6333 = !DILocation(line: 331, column: 4, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 330, column: 52)
!6335 = !DILocation(line: 332, column: 19, scope: !6334)
!6336 = !DILocation(line: 332, column: 26, scope: !6334)
!6337 = !DILocation(line: 332, column: 4, scope: !6334)
!6338 = !DILocation(line: 333, column: 4, scope: !6334)
!6339 = !DILocation(line: 335, column: 10, scope: !6306)
!6340 = !DILocation(line: 335, column: 7, scope: !6306)
!6341 = !DILocation(line: 337, column: 3, scope: !6306)
!6342 = !DILocation(line: 337, column: 3, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6344, file: !3, line: 337, column: 3)
!6344 = distinct !DILexicalBlock(scope: !6306, file: !3, line: 337, column: 3)
!6345 = !DILocation(line: 337, column: 3, scope: !6344)
!6346 = distinct !{!6346, !6301, !6347}
!6347 = !DILocation(line: 338, column: 2, scope: !6261)
!6348 = !DILocation(line: 339, column: 17, scope: !6261)
!6349 = !DILocation(line: 339, column: 24, scope: !6261)
!6350 = !DILocation(line: 339, column: 2, scope: !6261)
!6351 = !DILocation(line: 342, column: 2, scope: !6261)
!6352 = !DILocation(line: 344, column: 2, scope: !6261)
!6353 = !DILocation(line: 345, column: 1, scope: !6261)
!6354 = distinct !DISubprogram(name: "tda1004x_write_buf", scope: !3, file: !3, line: 179, type: !6355, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6355 = !DISubroutineType(types: !6356)
!6356 = !{!356, !441, !356, !6357, !356}
!6357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!6358 = !DILocalVariable(name: "state", arg: 1, scope: !6354, file: !3, line: 179, type: !441)
!6359 = !DILocation(line: 179, column: 54, scope: !6354)
!6360 = !DILocalVariable(name: "reg", arg: 2, scope: !6354, file: !3, line: 179, type: !356)
!6361 = !DILocation(line: 179, column: 65, scope: !6354)
!6362 = !DILocalVariable(name: "buf", arg: 3, scope: !6354, file: !3, line: 179, type: !6357)
!6363 = !DILocation(line: 179, column: 85, scope: !6354)
!6364 = !DILocalVariable(name: "len", arg: 4, scope: !6354, file: !3, line: 179, type: !356)
!6365 = !DILocation(line: 179, column: 94, scope: !6354)
!6366 = !DILocalVariable(name: "i", scope: !6354, file: !3, line: 181, type: !356)
!6367 = !DILocation(line: 181, column: 6, scope: !6354)
!6368 = !DILocalVariable(name: "result", scope: !6354, file: !3, line: 182, type: !356)
!6369 = !DILocation(line: 182, column: 6, scope: !6354)
!6370 = !DILocation(line: 184, column: 2, scope: !6354)
!6371 = !DILocation(line: 184, column: 2, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 184, column: 2)
!6373 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 184, column: 2)
!6374 = !DILocation(line: 184, column: 2, scope: !6373)
!6375 = !DILocation(line: 186, column: 9, scope: !6354)
!6376 = !DILocation(line: 187, column: 9, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 187, column: 2)
!6378 = !DILocation(line: 187, column: 7, scope: !6377)
!6379 = !DILocation(line: 187, column: 14, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 187, column: 2)
!6381 = !DILocation(line: 187, column: 18, scope: !6380)
!6382 = !DILocation(line: 187, column: 16, scope: !6380)
!6383 = !DILocation(line: 187, column: 2, scope: !6377)
!6384 = !DILocation(line: 188, column: 33, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6380, file: !3, line: 187, column: 28)
!6386 = !DILocation(line: 188, column: 40, scope: !6385)
!6387 = !DILocation(line: 188, column: 46, scope: !6385)
!6388 = !DILocation(line: 188, column: 44, scope: !6385)
!6389 = !DILocation(line: 188, column: 49, scope: !6385)
!6390 = !DILocation(line: 188, column: 53, scope: !6385)
!6391 = !DILocation(line: 188, column: 12, scope: !6385)
!6392 = !DILocation(line: 188, column: 10, scope: !6385)
!6393 = !DILocation(line: 189, column: 7, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 189, column: 7)
!6395 = !DILocation(line: 189, column: 14, scope: !6394)
!6396 = !DILocation(line: 189, column: 7, scope: !6385)
!6397 = !DILocation(line: 190, column: 4, scope: !6394)
!6398 = !DILocation(line: 191, column: 2, scope: !6385)
!6399 = !DILocation(line: 187, column: 24, scope: !6380)
!6400 = !DILocation(line: 187, column: 2, scope: !6380)
!6401 = distinct !{!6401, !6383, !6402}
!6402 = !DILocation(line: 191, column: 2, scope: !6377)
!6403 = !DILocation(line: 193, column: 9, scope: !6354)
!6404 = !DILocation(line: 193, column: 2, scope: !6354)
!6405 = distinct !DISubprogram(name: "i2c_lock_bus", scope: !447, file: !447, line: 763, type: !498, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6406 = !DILocalVariable(name: "adapter", arg: 1, scope: !6405, file: !447, line: 763, type: !445)
!6407 = !DILocation(line: 763, column: 34, scope: !6405)
!6408 = !DILocalVariable(name: "flags", arg: 2, scope: !6405, file: !447, line: 763, type: !7)
!6409 = !DILocation(line: 763, column: 56, scope: !6405)
!6410 = !DILocation(line: 765, column: 2, scope: !6405)
!6411 = !DILocation(line: 765, column: 11, scope: !6405)
!6412 = !DILocation(line: 765, column: 21, scope: !6405)
!6413 = !DILocation(line: 765, column: 30, scope: !6405)
!6414 = !DILocation(line: 765, column: 39, scope: !6405)
!6415 = !DILocation(line: 766, column: 1, scope: !6405)
!6416 = distinct !DISubprogram(name: "i2c_unlock_bus", scope: !447, file: !447, line: 789, type: !498, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6417 = !DILocalVariable(name: "adapter", arg: 1, scope: !6416, file: !447, line: 789, type: !445)
!6418 = !DILocation(line: 789, column: 36, scope: !6416)
!6419 = !DILocalVariable(name: "flags", arg: 2, scope: !6416, file: !447, line: 789, type: !7)
!6420 = !DILocation(line: 789, column: 58, scope: !6416)
!6421 = !DILocation(line: 791, column: 2, scope: !6416)
!6422 = !DILocation(line: 791, column: 11, scope: !6416)
!6423 = !DILocation(line: 791, column: 21, scope: !6416)
!6424 = !DILocation(line: 791, column: 32, scope: !6416)
!6425 = !DILocation(line: 791, column: 41, scope: !6416)
!6426 = !DILocation(line: 792, column: 1, scope: !6416)
!6427 = distinct !DISubprogram(name: "tda1004x_encode_fec", scope: !3, file: !3, line: 552, type: !2055, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6428 = !DILocalVariable(name: "fec", arg: 1, scope: !6427, file: !3, line: 552, type: !356)
!6429 = !DILocation(line: 552, column: 36, scope: !6427)
!6430 = !DILocation(line: 555, column: 10, scope: !6427)
!6431 = !DILocation(line: 555, column: 2, scope: !6427)
!6432 = !DILocation(line: 557, column: 3, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 555, column: 15)
!6434 = !DILocation(line: 559, column: 3, scope: !6433)
!6435 = !DILocation(line: 561, column: 3, scope: !6433)
!6436 = !DILocation(line: 563, column: 3, scope: !6433)
!6437 = !DILocation(line: 565, column: 3, scope: !6433)
!6438 = !DILocation(line: 569, column: 2, scope: !6427)
!6439 = !DILocation(line: 570, column: 1, scope: !6427)
!6440 = !DILocalVariable(name: "state", arg: 1, scope: !4500, file: !3, line: 242, type: !441)
!6441 = !DILocation(line: 242, column: 59, scope: !4500)
!6442 = !DILocalVariable(name: "bandwidth", arg: 2, scope: !4500, file: !3, line: 243, type: !488)
!6443 = !DILocation(line: 243, column: 12, scope: !4500)
!6444 = !DILocalVariable(name: "tda10046_clk53m", scope: !4500, file: !3, line: 252, type: !356)
!6445 = !DILocation(line: 252, column: 6, scope: !4500)
!6446 = !DILocation(line: 254, column: 7, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 254, column: 6)
!6448 = !DILocation(line: 254, column: 14, scope: !6447)
!6449 = !DILocation(line: 254, column: 22, scope: !6447)
!6450 = !DILocation(line: 254, column: 30, scope: !6447)
!6451 = !DILocation(line: 254, column: 52, scope: !6447)
!6452 = !DILocation(line: 255, column: 7, scope: !6447)
!6453 = !DILocation(line: 255, column: 14, scope: !6447)
!6454 = !DILocation(line: 255, column: 22, scope: !6447)
!6455 = !DILocation(line: 255, column: 30, scope: !6447)
!6456 = !DILocation(line: 254, column: 6, scope: !4500)
!6457 = !DILocation(line: 256, column: 19, scope: !6447)
!6458 = !DILocation(line: 256, column: 3, scope: !6447)
!6459 = !DILocation(line: 258, column: 19, scope: !6447)
!6460 = !DILocation(line: 259, column: 10, scope: !4500)
!6461 = !DILocation(line: 259, column: 2, scope: !4500)
!6462 = !DILocation(line: 261, column: 7, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 261, column: 7)
!6464 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 259, column: 21)
!6465 = !DILocation(line: 261, column: 7, scope: !6464)
!6466 = !DILocation(line: 262, column: 23, scope: !6463)
!6467 = !DILocation(line: 262, column: 4, scope: !6463)
!6468 = !DILocation(line: 265, column: 23, scope: !6463)
!6469 = !DILocation(line: 265, column: 4, scope: !6463)
!6470 = !DILocation(line: 267, column: 7, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 267, column: 7)
!6472 = !DILocation(line: 267, column: 14, scope: !6471)
!6473 = !DILocation(line: 267, column: 22, scope: !6471)
!6474 = !DILocation(line: 267, column: 30, scope: !6471)
!6475 = !DILocation(line: 267, column: 7, scope: !6464)
!6476 = !DILocation(line: 268, column: 25, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 267, column: 52)
!6478 = !DILocation(line: 268, column: 4, scope: !6477)
!6479 = !DILocation(line: 269, column: 25, scope: !6477)
!6480 = !DILocation(line: 269, column: 4, scope: !6477)
!6481 = !DILocation(line: 270, column: 3, scope: !6477)
!6482 = !DILocation(line: 271, column: 3, scope: !6464)
!6483 = !DILocation(line: 274, column: 7, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 274, column: 7)
!6485 = !DILocation(line: 274, column: 7, scope: !6464)
!6486 = !DILocation(line: 275, column: 23, scope: !6484)
!6487 = !DILocation(line: 275, column: 4, scope: !6484)
!6488 = !DILocation(line: 278, column: 23, scope: !6484)
!6489 = !DILocation(line: 278, column: 4, scope: !6484)
!6490 = !DILocation(line: 280, column: 7, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 280, column: 7)
!6492 = !DILocation(line: 280, column: 14, scope: !6491)
!6493 = !DILocation(line: 280, column: 22, scope: !6491)
!6494 = !DILocation(line: 280, column: 30, scope: !6491)
!6495 = !DILocation(line: 280, column: 7, scope: !6464)
!6496 = !DILocation(line: 281, column: 25, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 280, column: 52)
!6498 = !DILocation(line: 281, column: 4, scope: !6497)
!6499 = !DILocation(line: 282, column: 25, scope: !6497)
!6500 = !DILocation(line: 282, column: 4, scope: !6497)
!6501 = !DILocation(line: 283, column: 3, scope: !6497)
!6502 = !DILocation(line: 284, column: 3, scope: !6464)
!6503 = !DILocation(line: 287, column: 7, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 287, column: 7)
!6505 = !DILocation(line: 287, column: 7, scope: !6464)
!6506 = !DILocation(line: 288, column: 23, scope: !6504)
!6507 = !DILocation(line: 288, column: 4, scope: !6504)
!6508 = !DILocation(line: 291, column: 23, scope: !6504)
!6509 = !DILocation(line: 291, column: 4, scope: !6504)
!6510 = !DILocation(line: 293, column: 7, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 293, column: 7)
!6512 = !DILocation(line: 293, column: 14, scope: !6511)
!6513 = !DILocation(line: 293, column: 22, scope: !6511)
!6514 = !DILocation(line: 293, column: 30, scope: !6511)
!6515 = !DILocation(line: 293, column: 7, scope: !6464)
!6516 = !DILocation(line: 294, column: 25, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 293, column: 52)
!6518 = !DILocation(line: 294, column: 4, scope: !6517)
!6519 = !DILocation(line: 295, column: 25, scope: !6517)
!6520 = !DILocation(line: 295, column: 4, scope: !6517)
!6521 = !DILocation(line: 296, column: 3, scope: !6517)
!6522 = !DILocation(line: 297, column: 3, scope: !6464)
!6523 = !DILocation(line: 300, column: 3, scope: !6464)
!6524 = !DILocation(line: 303, column: 2, scope: !4500)
!6525 = !DILocation(line: 304, column: 1, scope: !4500)
!6526 = distinct !DISubprogram(name: "tda1004x_decode_fec", scope: !3, file: !3, line: 572, type: !2055, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6527 = !DILocalVariable(name: "tdafec", arg: 1, scope: !6526, file: !3, line: 572, type: !356)
!6528 = !DILocation(line: 572, column: 36, scope: !6526)
!6529 = !DILocation(line: 575, column: 10, scope: !6526)
!6530 = !DILocation(line: 575, column: 2, scope: !6526)
!6531 = !DILocation(line: 577, column: 3, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 575, column: 18)
!6533 = !DILocation(line: 579, column: 3, scope: !6532)
!6534 = !DILocation(line: 581, column: 3, scope: !6532)
!6535 = !DILocation(line: 583, column: 3, scope: !6532)
!6536 = !DILocation(line: 585, column: 3, scope: !6532)
!6537 = !DILocation(line: 589, column: 2, scope: !6526)
!6538 = !DILocation(line: 590, column: 1, scope: !6526)
!6539 = distinct !DISubprogram(name: "tda1004x_enable_tuner_i2c", scope: !3, file: !3, line: 196, type: !6176, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6540 = !DILocalVariable(name: "state", arg: 1, scope: !6539, file: !3, line: 196, type: !441)
!6541 = !DILocation(line: 196, column: 61, scope: !6539)
!6542 = !DILocalVariable(name: "result", scope: !6539, file: !3, line: 198, type: !356)
!6543 = !DILocation(line: 198, column: 6, scope: !6539)
!6544 = !DILocation(line: 199, column: 2, scope: !6539)
!6545 = !DILocation(line: 199, column: 2, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6547, file: !3, line: 199, column: 2)
!6547 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 199, column: 2)
!6548 = !DILocation(line: 199, column: 2, scope: !6547)
!6549 = !DILocation(line: 201, column: 31, scope: !6539)
!6550 = !DILocation(line: 201, column: 11, scope: !6539)
!6551 = !DILocation(line: 201, column: 9, scope: !6539)
!6552 = !DILocation(line: 202, column: 2, scope: !6539)
!6553 = !DILocation(line: 203, column: 9, scope: !6539)
!6554 = !DILocation(line: 203, column: 2, scope: !6539)
!6555 = distinct !DISubprogram(name: "tda1004x_disable_tuner_i2c", scope: !3, file: !3, line: 206, type: !6176, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6556 = !DILocalVariable(name: "state", arg: 1, scope: !6555, file: !3, line: 206, type: !441)
!6557 = !DILocation(line: 206, column: 62, scope: !6555)
!6558 = !DILocation(line: 208, column: 2, scope: !6555)
!6559 = !DILocation(line: 208, column: 2, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 208, column: 2)
!6561 = distinct !DILexicalBlock(scope: !6555, file: !3, line: 208, column: 2)
!6562 = !DILocation(line: 208, column: 2, scope: !6561)
!6563 = !DILocation(line: 210, column: 29, scope: !6555)
!6564 = !DILocation(line: 210, column: 9, scope: !6555)
!6565 = !DILocation(line: 210, column: 2, scope: !6555)
!6566 = distinct !DISubprogram(name: "tda10046_init", scope: !3, file: !3, line: 633, type: !4191, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6567 = !DILocalVariable(name: "fe", arg: 1, scope: !6566, file: !3, line: 633, type: !4162)
!6568 = !DILocation(line: 633, column: 47, scope: !6566)
!6569 = !DILocalVariable(name: "state", scope: !6566, file: !3, line: 635, type: !441)
!6570 = !DILocation(line: 635, column: 25, scope: !6566)
!6571 = !DILocation(line: 635, column: 33, scope: !6566)
!6572 = !DILocation(line: 635, column: 37, scope: !6566)
!6573 = !DILocation(line: 636, column: 2, scope: !6566)
!6574 = !DILocation(line: 636, column: 2, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6576, file: !3, line: 636, column: 2)
!6576 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 636, column: 2)
!6577 = !DILocation(line: 636, column: 2, scope: !6576)
!6578 = !DILocation(line: 638, column: 24, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 638, column: 6)
!6580 = !DILocation(line: 638, column: 6, scope: !6579)
!6581 = !DILocation(line: 638, column: 6, scope: !6566)
!6582 = !DILocation(line: 639, column: 3, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 638, column: 29)
!6584 = !DILocation(line: 640, column: 3, scope: !6583)
!6585 = !DILocation(line: 644, column: 22, scope: !6566)
!6586 = !DILocation(line: 644, column: 2, scope: !6566)
!6587 = !DILocation(line: 645, column: 23, scope: !6566)
!6588 = !DILocation(line: 645, column: 2, scope: !6566)
!6589 = !DILocation(line: 646, column: 23, scope: !6566)
!6590 = !DILocation(line: 646, column: 2, scope: !6566)
!6591 = !DILocation(line: 648, column: 10, scope: !6566)
!6592 = !DILocation(line: 648, column: 17, scope: !6566)
!6593 = !DILocation(line: 648, column: 25, scope: !6566)
!6594 = !DILocation(line: 648, column: 2, scope: !6566)
!6595 = !DILocation(line: 650, column: 24, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 648, column: 37)
!6597 = !DILocation(line: 650, column: 3, scope: !6596)
!6598 = !DILocation(line: 651, column: 23, scope: !6596)
!6599 = !DILocation(line: 651, column: 3, scope: !6596)
!6600 = !DILocation(line: 652, column: 3, scope: !6596)
!6601 = !DILocation(line: 654, column: 24, scope: !6596)
!6602 = !DILocation(line: 654, column: 3, scope: !6596)
!6603 = !DILocation(line: 655, column: 23, scope: !6596)
!6604 = !DILocation(line: 655, column: 3, scope: !6596)
!6605 = !DILocation(line: 656, column: 3, scope: !6596)
!6606 = !DILocation(line: 658, column: 24, scope: !6596)
!6607 = !DILocation(line: 658, column: 3, scope: !6596)
!6608 = !DILocation(line: 659, column: 23, scope: !6596)
!6609 = !DILocation(line: 659, column: 3, scope: !6596)
!6610 = !DILocation(line: 660, column: 3, scope: !6596)
!6611 = !DILocation(line: 662, column: 24, scope: !6596)
!6612 = !DILocation(line: 662, column: 3, scope: !6596)
!6613 = !DILocation(line: 663, column: 24, scope: !6596)
!6614 = !DILocation(line: 663, column: 3, scope: !6596)
!6615 = !DILocation(line: 664, column: 24, scope: !6596)
!6616 = !DILocation(line: 664, column: 3, scope: !6596)
!6617 = !DILocation(line: 665, column: 23, scope: !6596)
!6618 = !DILocation(line: 665, column: 3, scope: !6596)
!6619 = !DILocation(line: 666, column: 3, scope: !6596)
!6620 = !DILocation(line: 668, column: 6, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 668, column: 6)
!6622 = !DILocation(line: 668, column: 13, scope: !6621)
!6623 = !DILocation(line: 668, column: 21, scope: !6621)
!6624 = !DILocation(line: 668, column: 29, scope: !6621)
!6625 = !DILocation(line: 668, column: 6, scope: !6566)
!6626 = !DILocation(line: 669, column: 23, scope: !6627)
!6627 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 668, column: 35)
!6628 = !DILocation(line: 669, column: 3, scope: !6627)
!6629 = !DILocation(line: 670, column: 23, scope: !6627)
!6630 = !DILocation(line: 670, column: 42, scope: !6627)
!6631 = !DILocation(line: 670, column: 49, scope: !6627)
!6632 = !DILocation(line: 670, column: 57, scope: !6627)
!6633 = !DILocation(line: 670, column: 69, scope: !6627)
!6634 = !DILocation(line: 670, column: 3, scope: !6627)
!6635 = !DILocation(line: 671, column: 2, scope: !6627)
!6636 = !DILocation(line: 672, column: 23, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6621, file: !3, line: 671, column: 9)
!6638 = !DILocation(line: 672, column: 3, scope: !6637)
!6639 = !DILocation(line: 673, column: 23, scope: !6637)
!6640 = !DILocation(line: 674, column: 8, scope: !6637)
!6641 = !DILocation(line: 674, column: 15, scope: !6637)
!6642 = !DILocation(line: 674, column: 23, scope: !6637)
!6643 = !DILocation(line: 674, column: 35, scope: !6637)
!6644 = !DILocation(line: 673, column: 3, scope: !6637)
!6645 = !DILocation(line: 676, column: 23, scope: !6566)
!6646 = !DILocation(line: 676, column: 2, scope: !6566)
!6647 = !DILocation(line: 677, column: 23, scope: !6566)
!6648 = !DILocation(line: 677, column: 2, scope: !6566)
!6649 = !DILocation(line: 678, column: 23, scope: !6566)
!6650 = !DILocation(line: 678, column: 2, scope: !6566)
!6651 = !DILocation(line: 679, column: 23, scope: !6566)
!6652 = !DILocation(line: 679, column: 2, scope: !6566)
!6653 = !DILocation(line: 680, column: 23, scope: !6566)
!6654 = !DILocation(line: 680, column: 2, scope: !6566)
!6655 = !DILocation(line: 681, column: 23, scope: !6566)
!6656 = !DILocation(line: 681, column: 2, scope: !6566)
!6657 = !DILocation(line: 682, column: 23, scope: !6566)
!6658 = !DILocation(line: 682, column: 2, scope: !6566)
!6659 = !DILocation(line: 683, column: 23, scope: !6566)
!6660 = !DILocation(line: 683, column: 2, scope: !6566)
!6661 = !DILocation(line: 684, column: 23, scope: !6566)
!6662 = !DILocation(line: 684, column: 2, scope: !6566)
!6663 = !DILocation(line: 685, column: 23, scope: !6566)
!6664 = !DILocation(line: 685, column: 2, scope: !6566)
!6665 = !DILocation(line: 688, column: 2, scope: !6566)
!6666 = !DILocation(line: 689, column: 1, scope: !6566)
!6667 = distinct !DISubprogram(name: "tda10046_fwupload", scope: !3, file: !3, line: 472, type: !4191, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6668 = !DILocalVariable(name: "fe", arg: 1, scope: !6667, file: !3, line: 472, type: !4162)
!6669 = !DILocation(line: 472, column: 51, scope: !6667)
!6670 = !DILocalVariable(name: "state", scope: !6667, file: !3, line: 474, type: !441)
!6671 = !DILocation(line: 474, column: 25, scope: !6667)
!6672 = !DILocation(line: 474, column: 33, scope: !6667)
!6673 = !DILocation(line: 474, column: 37, scope: !6667)
!6674 = !DILocalVariable(name: "ret", scope: !6667, file: !3, line: 475, type: !356)
!6675 = !DILocation(line: 475, column: 6, scope: !6667)
!6676 = !DILocalVariable(name: "confc4", scope: !6667, file: !3, line: 475, type: !356)
!6677 = !DILocation(line: 475, column: 11, scope: !6667)
!6678 = !DILocalVariable(name: "fw", scope: !6667, file: !3, line: 476, type: !4483)
!6679 = !DILocation(line: 476, column: 25, scope: !6667)
!6680 = !DILocation(line: 479, column: 6, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6667, file: !3, line: 479, column: 6)
!6682 = !DILocation(line: 479, column: 13, scope: !6681)
!6683 = !DILocation(line: 479, column: 21, scope: !6681)
!6684 = !DILocation(line: 479, column: 31, scope: !6681)
!6685 = !DILocation(line: 479, column: 6, scope: !6667)
!6686 = !DILocation(line: 480, column: 10, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 479, column: 52)
!6688 = !DILocation(line: 481, column: 2, scope: !6687)
!6689 = !DILocation(line: 482, column: 3, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6681, file: !3, line: 481, column: 9)
!6691 = !DILocation(line: 482, column: 3, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6693, file: !3, line: 482, column: 3)
!6693 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 482, column: 3)
!6694 = !DILocation(line: 482, column: 3, scope: !6693)
!6695 = !DILocation(line: 483, column: 10, scope: !6690)
!6696 = !DILocation(line: 485, column: 23, scope: !6667)
!6697 = !DILocation(line: 485, column: 47, scope: !6667)
!6698 = !DILocation(line: 485, column: 2, scope: !6667)
!6699 = !DILocation(line: 487, column: 22, scope: !6667)
!6700 = !DILocation(line: 487, column: 2, scope: !6667)
!6701 = !DILocation(line: 489, column: 6, scope: !6702)
!6702 = distinct !DILexicalBlock(scope: !6667, file: !3, line: 489, column: 6)
!6703 = !DILocation(line: 489, column: 13, scope: !6702)
!6704 = !DILocation(line: 489, column: 21, scope: !6702)
!6705 = !DILocation(line: 489, column: 33, scope: !6702)
!6706 = !DILocation(line: 489, column: 6, scope: !6667)
!6707 = !DILocation(line: 490, column: 24, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6702, file: !3, line: 489, column: 52)
!6709 = !DILocation(line: 490, column: 3, scope: !6708)
!6710 = !DILocation(line: 491, column: 23, scope: !6708)
!6711 = !DILocation(line: 491, column: 61, scope: !6708)
!6712 = !DILocation(line: 491, column: 68, scope: !6708)
!6713 = !DILocation(line: 491, column: 76, scope: !6708)
!6714 = !DILocation(line: 491, column: 88, scope: !6708)
!6715 = !DILocation(line: 491, column: 3, scope: !6708)
!6716 = !DILocation(line: 492, column: 2, scope: !6708)
!6717 = !DILocation(line: 494, column: 2, scope: !6667)
!6718 = !DILocation(line: 497, column: 21, scope: !6667)
!6719 = !DILocation(line: 497, column: 2, scope: !6667)
!6720 = !DILocation(line: 498, column: 22, scope: !6667)
!6721 = !DILocation(line: 498, column: 2, scope: !6667)
!6722 = !DILocation(line: 501, column: 31, scope: !6723)
!6723 = distinct !DILexicalBlock(scope: !6667, file: !3, line: 501, column: 6)
!6724 = !DILocation(line: 501, column: 6, scope: !6723)
!6725 = !DILocation(line: 501, column: 38, scope: !6723)
!6726 = !DILocation(line: 501, column: 6, scope: !6667)
!6727 = !DILocation(line: 502, column: 3, scope: !6723)
!6728 = !DILocation(line: 516, column: 2, scope: !6667)
!6729 = !DILocation(line: 517, column: 23, scope: !6667)
!6730 = !DILocation(line: 517, column: 2, scope: !6667)
!6731 = !DILocation(line: 518, column: 2, scope: !6667)
!6732 = !DILocation(line: 519, column: 23, scope: !6667)
!6733 = !DILocation(line: 519, column: 47, scope: !6667)
!6734 = !DILocation(line: 519, column: 2, scope: !6667)
!6735 = !DILocation(line: 522, column: 31, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6667, file: !3, line: 522, column: 6)
!6737 = !DILocation(line: 522, column: 6, scope: !6736)
!6738 = !DILocation(line: 522, column: 38, scope: !6736)
!6739 = !DILocation(line: 522, column: 6, scope: !6667)
!6740 = !DILocation(line: 523, column: 3, scope: !6736)
!6741 = !DILocation(line: 527, column: 6, scope: !6742)
!6742 = distinct !DILexicalBlock(scope: !6667, file: !3, line: 527, column: 6)
!6743 = !DILocation(line: 527, column: 13, scope: !6742)
!6744 = !DILocation(line: 527, column: 21, scope: !6742)
!6745 = !DILocation(line: 527, column: 38, scope: !6742)
!6746 = !DILocation(line: 527, column: 6, scope: !6667)
!6747 = !DILocation(line: 529, column: 3, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6742, file: !3, line: 527, column: 47)
!6749 = !DILocation(line: 530, column: 9, scope: !6748)
!6750 = !DILocation(line: 530, column: 16, scope: !6748)
!6751 = !DILocation(line: 530, column: 24, scope: !6748)
!6752 = !DILocation(line: 530, column: 41, scope: !6748)
!6753 = !DILocation(line: 530, column: 7, scope: !6748)
!6754 = !DILocation(line: 531, column: 7, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6748, file: !3, line: 531, column: 7)
!6756 = !DILocation(line: 531, column: 7, scope: !6748)
!6757 = !DILocation(line: 533, column: 10, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6755, file: !3, line: 531, column: 12)
!6759 = !DILocation(line: 533, column: 17, scope: !6758)
!6760 = !DILocation(line: 533, column: 25, scope: !6758)
!6761 = !DILocation(line: 533, column: 42, scope: !6758)
!6762 = !DILocation(line: 533, column: 8, scope: !6758)
!6763 = !DILocation(line: 534, column: 8, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6758, file: !3, line: 534, column: 8)
!6765 = !DILocation(line: 534, column: 8, scope: !6758)
!6766 = !DILocation(line: 535, column: 5, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6764, file: !3, line: 534, column: 13)
!6768 = !DILocation(line: 536, column: 12, scope: !6767)
!6769 = !DILocation(line: 536, column: 5, scope: !6767)
!6770 = !DILocation(line: 538, column: 5, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6764, file: !3, line: 537, column: 11)
!6772 = !DILocation(line: 541, column: 3, scope: !6758)
!6773 = !DILocation(line: 542, column: 2, scope: !6748)
!6774 = !DILocation(line: 543, column: 3, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6742, file: !3, line: 542, column: 9)
!6776 = !DILocation(line: 544, column: 3, scope: !6775)
!6777 = !DILocation(line: 546, column: 22, scope: !6667)
!6778 = !DILocation(line: 546, column: 2, scope: !6667)
!6779 = !DILocation(line: 547, column: 27, scope: !6667)
!6780 = !DILocation(line: 547, column: 34, scope: !6667)
!6781 = !DILocation(line: 547, column: 38, scope: !6667)
!6782 = !DILocation(line: 547, column: 44, scope: !6667)
!6783 = !DILocation(line: 547, column: 48, scope: !6667)
!6784 = !DILocation(line: 547, column: 8, scope: !6667)
!6785 = !DILocation(line: 547, column: 6, scope: !6667)
!6786 = !DILocation(line: 548, column: 19, scope: !6667)
!6787 = !DILocation(line: 548, column: 2, scope: !6667)
!6788 = !DILocation(line: 549, column: 34, scope: !6667)
!6789 = !DILocation(line: 549, column: 9, scope: !6667)
!6790 = !DILocation(line: 549, column: 2, scope: !6667)
!6791 = !DILocation(line: 550, column: 1, scope: !6667)
!6792 = distinct !DISubprogram(name: "tda10046_init_plls", scope: !3, file: !3, line: 418, type: !4185, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !518)
!6793 = !DILocalVariable(name: "fe", arg: 1, scope: !6792, file: !3, line: 418, type: !4162)
!6794 = !DILocation(line: 418, column: 53, scope: !6792)
!6795 = !DILocalVariable(name: "state", scope: !6792, file: !3, line: 420, type: !441)
!6796 = !DILocation(line: 420, column: 25, scope: !6792)
!6797 = !DILocation(line: 420, column: 33, scope: !6792)
!6798 = !DILocation(line: 420, column: 37, scope: !6792)
!6799 = !DILocalVariable(name: "tda10046_clk53m", scope: !6792, file: !3, line: 421, type: !356)
!6800 = !DILocation(line: 421, column: 6, scope: !6792)
!6801 = !DILocation(line: 423, column: 7, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 423, column: 6)
!6803 = !DILocation(line: 423, column: 14, scope: !6802)
!6804 = !DILocation(line: 423, column: 22, scope: !6802)
!6805 = !DILocation(line: 423, column: 30, scope: !6802)
!6806 = !DILocation(line: 423, column: 52, scope: !6802)
!6807 = !DILocation(line: 424, column: 7, scope: !6802)
!6808 = !DILocation(line: 424, column: 14, scope: !6802)
!6809 = !DILocation(line: 424, column: 22, scope: !6802)
!6810 = !DILocation(line: 424, column: 30, scope: !6802)
!6811 = !DILocation(line: 423, column: 6, scope: !6792)
!6812 = !DILocation(line: 425, column: 19, scope: !6802)
!6813 = !DILocation(line: 425, column: 3, scope: !6802)
!6814 = !DILocation(line: 427, column: 19, scope: !6802)
!6815 = !DILocation(line: 429, column: 23, scope: !6792)
!6816 = !DILocation(line: 429, column: 2, scope: !6792)
!6817 = !DILocation(line: 430, column: 5, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 430, column: 5)
!6819 = !DILocation(line: 430, column: 5, scope: !6792)
!6820 = !DILocation(line: 431, column: 3, scope: !6821)
!6821 = distinct !DILexicalBlock(scope: !6818, file: !3, line: 430, column: 22)
!6822 = !DILocation(line: 432, column: 24, scope: !6821)
!6823 = !DILocation(line: 432, column: 3, scope: !6821)
!6824 = !DILocation(line: 433, column: 2, scope: !6821)
!6825 = !DILocation(line: 434, column: 3, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6818, file: !3, line: 433, column: 9)
!6827 = !DILocation(line: 435, column: 24, scope: !6826)
!6828 = !DILocation(line: 435, column: 3, scope: !6826)
!6829 = !DILocation(line: 437, column: 6, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 437, column: 6)
!6831 = !DILocation(line: 437, column: 13, scope: !6830)
!6832 = !DILocation(line: 437, column: 21, scope: !6830)
!6833 = !DILocation(line: 437, column: 31, scope: !6830)
!6834 = !DILocation(line: 437, column: 6, scope: !6792)
!6835 = !DILocation(line: 438, column: 3, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6830, file: !3, line: 437, column: 53)
!6837 = !DILocation(line: 438, column: 3, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6839, file: !3, line: 438, column: 3)
!6839 = distinct !DILexicalBlock(scope: !6836, file: !3, line: 438, column: 3)
!6840 = !DILocation(line: 438, column: 3, scope: !6839)
!6841 = !DILocation(line: 439, column: 24, scope: !6836)
!6842 = !DILocation(line: 439, column: 3, scope: !6836)
!6843 = !DILocation(line: 440, column: 2, scope: !6836)
!6844 = !DILocation(line: 441, column: 3, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6830, file: !3, line: 440, column: 9)
!6846 = !DILocation(line: 441, column: 3, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6848, file: !3, line: 441, column: 3)
!6848 = distinct !DILexicalBlock(scope: !6845, file: !3, line: 441, column: 3)
!6849 = !DILocation(line: 441, column: 3, scope: !6848)
!6850 = !DILocation(line: 442, column: 24, scope: !6845)
!6851 = !DILocation(line: 442, column: 3, scope: !6845)
!6852 = !DILocation(line: 444, column: 5, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 444, column: 5)
!6854 = !DILocation(line: 444, column: 5, scope: !6792)
!6855 = !DILocation(line: 445, column: 24, scope: !6853)
!6856 = !DILocation(line: 445, column: 3, scope: !6853)
!6857 = !DILocation(line: 447, column: 24, scope: !6853)
!6858 = !DILocation(line: 447, column: 3, scope: !6853)
!6859 = !DILocation(line: 449, column: 10, scope: !6792)
!6860 = !DILocation(line: 449, column: 17, scope: !6792)
!6861 = !DILocation(line: 449, column: 25, scope: !6792)
!6862 = !DILocation(line: 449, column: 2, scope: !6792)
!6863 = !DILocation(line: 451, column: 24, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6792, file: !3, line: 449, column: 34)
!6865 = !DILocation(line: 451, column: 3, scope: !6864)
!6866 = !DILocation(line: 452, column: 24, scope: !6864)
!6867 = !DILocation(line: 452, column: 3, scope: !6864)
!6868 = !DILocation(line: 453, column: 3, scope: !6864)
!6869 = !DILocation(line: 455, column: 24, scope: !6864)
!6870 = !DILocation(line: 455, column: 3, scope: !6864)
!6871 = !DILocation(line: 456, column: 24, scope: !6864)
!6872 = !DILocation(line: 456, column: 3, scope: !6864)
!6873 = !DILocation(line: 457, column: 3, scope: !6864)
!6874 = !DILocation(line: 459, column: 24, scope: !6864)
!6875 = !DILocation(line: 459, column: 3, scope: !6864)
!6876 = !DILocation(line: 460, column: 24, scope: !6864)
!6877 = !DILocation(line: 460, column: 3, scope: !6864)
!6878 = !DILocation(line: 461, column: 3, scope: !6864)
!6879 = !DILocation(line: 463, column: 24, scope: !6864)
!6880 = !DILocation(line: 463, column: 3, scope: !6864)
!6881 = !DILocation(line: 464, column: 24, scope: !6864)
!6882 = !DILocation(line: 464, column: 3, scope: !6864)
!6883 = !DILocation(line: 465, column: 3, scope: !6864)
!6884 = !DILocation(line: 467, column: 26, scope: !6792)
!6885 = !DILocation(line: 467, column: 2, scope: !6792)
!6886 = !DILocation(line: 469, column: 2, scope: !6792)
!6887 = !DILocation(line: 470, column: 1, scope: !6792)
